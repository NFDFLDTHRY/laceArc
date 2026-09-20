#!/usr/bin/env bash
# Run the actual checker against disposable Git histories, with no remotes.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
TEST_ROOT="$(mktemp -d "${TMPDIR:-/tmp}/lace-actor-attribution.XXXXXX")"
trap 'rm -rf -- "$TEST_ROOT"' EXIT
CHECKER="$TEST_ROOT/check-docs.sh"
if [[ -n "${LACE_SOURCE_REV:-}" ]]; then
  git -C "$ROOT" show "$LACE_SOURCE_REV:.claude/hooks/check-docs.sh" >"$CHECKER"
else
  cp "$ROOT/.claude/hooks/check-docs.sh" "$CHECKER"
fi

# Fixture commits must not use the caller's hooks, signing or identity settings.
export GIT_CONFIG_NOSYSTEM=1 GIT_CONFIG_GLOBAL=/dev/null
passed=0
failed=0

new_fixture() {
  case_name="$1"
  FIXTURE="$TEST_ROOT/$case_name"
  mkdir -p "$FIXTURE/.claude/hooks" "$FIXTURE/docs/graphics"
  git init --quiet "$FIXTURE"
  git -C "$FIXTURE" config user.name Fixture
  git -C "$FIXTURE" config user.email fixture@example.invalid
  cp "$CHECKER" "$FIXTURE/.claude/hooks/check-docs.sh"
  printf '# Fixture\n\n[Checker](.claude/hooks/check-docs.sh)\n' >"$FIXTURE/README.md"
  for png in from-words-to-worlds mechanisms-in-3d n-dimensional-relationships data-structure-1d-array; do
    # The checker tests nonempty files, not PNG decoding or visual fidelity.
    printf 'fixture\n' >"$FIXTURE/docs/graphics/$png.png"
    printf '[%s](docs/graphics/%s.png)\n' "$png" "$png" >>"$FIXTURE/README.md"
  done
  git -C "$FIXTURE" add .
}

add_commit() {
  printf '%s\n' "$1" | git -C "$FIXTURE" -c core.hooksPath=/dev/null \
    -c commit.gpgSign=false commit --quiet --allow-empty --cleanup=verbatim -F -
}

check_report() {
  local total="$1" unsigned="$2" result=0 expected actor_lines
  (cd "$FIXTURE" && CLAUDE_PROJECT_DIR="$FIXTURE" bash .claude/hooks/check-docs.sh) \
    >"$TEST_ROOT/output" 2>&1 || result=$?
  actor_lines=$(grep 'actor attribution:' "$TEST_ROOT/output" || true)
  if [[ "$total" -eq 0 ]]; then
    expected=''
  elif [[ "$unsigned" -eq 0 ]]; then
    expected="actor attribution: last $total commits all carry an actor trailer"
  else
    expected="actor attribution: $unsigned of the last $total commits carry no actor trailer (advisory; docs/kit/roles.md)"
  fi
  if [[ "$result" -ne 0 ]] ||
    { [[ -z "$expected" ]] && [[ -n "$actor_lines" ]]; } ||
    { [[ -n "$expected" ]] && [[ "$actor_lines" != *"$expected" ]]; }; then
    printf 'FAIL: %s (expected %s unsigned of %s; checker exit %s)\n' \
      "$case_name" "$unsigned" "$total" "$result" >&2
    cat "$TEST_ROOT/output" >&2
    failed=$((failed + 1))
    return
  fi
  # With the other checks satisfied, only unsigned commits may be advisory.
  if [[ "$unsigned" -eq 0 ]]; then
    expected='All checks passed.'
  else
    expected="Invariants hold. $unsigned advisory finding(s) above — voids, not breaches."
  fi
  if ! grep -Fxq "$expected" "$TEST_ROOT/output"; then
    printf 'FAIL: %s (unexpected overall checker report)\n' "$case_name" >&2
    cat "$TEST_ROOT/output" >&2
    failed=$((failed + 1))
    return
  fi
  passed=$((passed + 1))
  printf 'PASS: %s (%s unsigned of %s; advisory exit 0)\n' "$case_name" "$unsigned" "$total"
}

new_fixture two-commits-multiple-coauthors
add_commit $'Attributed\n\nCo-Authored-By: First <first@example.invalid>\nCo-Authored-By: Second <second@example.invalid>'
add_commit 'No actor'
check_report 2 1

new_fixture mixed-and-repeated-supported-trailers
add_commit $'Agent only\n\nAgent: Fixture'
add_commit $'Coauthor only\n\nCo-Authored-By: First <first@example.invalid>'
add_commit $'Both forms and repeated actor\n\nAgent: Fixture\nAgent: Second\nCo-Authored-By: Third <third@example.invalid>'
check_report 3 0

new_fixture empty-trailer-values
add_commit $'Empty agent\n\nAgent:'
add_commit $'Whitespace and empty values\n\nAgent:   \nCo-Authored-By: \t'
check_report 2 2

new_fixture no-trailers
add_commit 'First without actor'
add_commit 'Second without actor'
check_report 2 2

new_fixture unborn-history
check_report 0 0

new_fixture bounded-window
add_commit 'Old unsigned commit outside the last 200'
add_commit 'Unsigned commit inside the last 200'
for ((i = 1; i <= 199; i++)); do
  add_commit "Signed $i"$'\n\nAgent: Fixture\nCo-Authored-By: Other <other@example.invalid>'
done
check_report 200 1

printf '%s actor-attribution checks passed; %s failed. No live history or network changed.\n' "$passed" "$failed"
[[ "$failed" -eq 0 ]]
