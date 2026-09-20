#!/usr/bin/env bash
# Actual coordination scripts, disposable state, no live claims or remote.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../../.." && pwd -P)"
TEST_ROOT="$(mktemp -d "${TMPDIR:-/tmp}/lace-controls.XXXXXX")"
trap 'rm -rf -- "$TEST_ROOT"' EXIT
FIXTURE="$TEST_ROOT/tree"
BEFORE="$TEST_ROOT/before"
mkdir -p "$FIXTURE/docs/coord/stations" "$FIXTURE/docs/gearing/claims" "$TEST_ROOT/bin"
# Keep Git discovery inside the disposable tree even with TMPDIR in a checkout.
git init --quiet "$FIXTURE"
for rel in docs/coord/coord.sh docs/gearing/claim.sh docs/gearing/resync.sh; do
  if [[ -n "${LACE_SOURCE_REV:-}" ]]; then
    git -C "$ROOT" show "$LACE_SOURCE_REV:$rel" >"$FIXTURE/$rel"
  else
    cp "$ROOT/$rel" "$FIXTURE/$rel"
  fi
  chmod +x "$FIXTURE/$rel"
done
COORD="$FIXTURE/docs/coord/coord.sh"
export CONTROL_FIXTURE_ROOT="$FIXTURE" CONTROL_GIT_LOG="$TEST_ROOT/git-calls"
cat >"$TEST_ROOT/bin/git" <<'STUB'
#!/usr/bin/env bash
set -euo pipefail
[[ $# -ge 3 && "$1" == -C && "$2" == "$CONTROL_FIXTURE_ROOT" ]] || exit 99
shift 2
printf '%s\n' "$*" >>"$CONTROL_GIT_LOG"
case "$*" in
  'fetch origin main'|'fetch origin main -q') exit 0 ;;
  'rev-parse origin/main') printf '%s\n' aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa ;;
  *) echo "unexpected fixture Git call: $*" >&2; exit 99 ;;
esac
STUB
chmod +x "$TEST_ROOT/bin/git"
export PATH="$TEST_ROOT/bin:$PATH"
passed=0 failed=0

fail() { echo "FAIL: $*" >&2; exit 1; }
reset_state() {
  local name
  for name in clipboards prompts maps history hologram renderer kit law graphics gearing-meta coord; do
    printf '%s\n' 'STATUS: FREE' "STATION: $name" 'OWNS: synthetic fixture' \
      'AGENT: -' 'BASE: -' 'SINCE: -' "NOTE: doc sentinel $name" \
      >"$FIXTURE/docs/coord/stations/$name.station"
  done
  for name in axle gears trainA trainB trainC cells escape audits; do
    printf '%s\n' 'STATUS: FREE' "SHAFT: $name" "FILE: docs/gearing/contracts-$name.js" \
      'AGENT: ' 'BASE: ' 'SINCE: ' "NOTE: gear sentinel $name" \
      >"$FIXTURE/docs/gearing/claims/$name.claim"
  done
  printf '%s\n' '# Synthetic signal' '' '```' 'STATUS: FIRED' \
    'TIP_AT_FIRE: aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' '```' '' \
    'Historical prose sentinel: keep this exact line.' >"$FIXTURE/docs/gearing/RESYNC.md"
  : >"$CONTROL_GIT_LOG"
}
snapshot() {
  rm -rf -- "$BEFORE"
  mkdir -p "$BEFORE"
  cp -R "$FIXTURE/docs" "$BEFORE/docs"
}
unchanged() {
  # Only the specifically expected synthetic signal may differ.
  if [[ "${1:-}" == signal ]]; then
    cp "$FIXTURE/docs/gearing/RESYNC.md" "$BEFORE/docs/gearing/RESYNC.md"
  fi
  diff -r --no-dereference "$BEFORE/docs" "$FIXTURE/docs" || fail 'unexpected script/claim/sentinel mutation'
  [[ "$(cat "$TEST_ROOT/outside/sentinel")" == 'outside sentinel' ]] || fail 'outside target changed'
}
run_cmd() {
  local expected="$1" result=0; shift
  (cd "$FIXTURE" && bash "$COORD" "$@") >"$TEST_ROOT/command-output" 2>&1 || result=$?
  [[ "$result" -eq "$expected" ]] || {
    cat "$TEST_ROOT/command-output"
    fail "expected exit $expected, got $result"
  }
}
run_case() {
  local name="$1"; shift
  if ( "$@" ) >"$TEST_ROOT/case-output" 2>&1; then
    passed=$((passed + 1)); echo "PASS: $name"
  else
    failed=$((failed + 1)); echo "FAIL: $name"
    cat "$TEST_ROOT/case-output"
  fi
}
which_case() {
  reset_state; snapshot
  run_cmd "$1" which "$2"
  if [[ "$1" -eq 0 ]]; then
    [[ "$(cat "$TEST_ROOT/command-output")" == "$3" ]] || fail "wrong owner for $2"
  fi
  unchanged
}

# Every symlink and target, including the target outside the fixture repo,
# remains inside this temporary directory. Never traverse a live repo link.
mkdir -p "$FIXTURE/docs/clock" "$FIXTURE/docs/new-shelf" "$TEST_ROOT/outside"
printf '%s\n' 'outside sentinel' >"$TEST_ROOT/outside/sentinel"
printf '%s\n' 'law sentinel' >"$FIXTURE/docs/pointer-emission.md"
ln -s ../pointer-emission.md "$FIXTURE/docs/clock/law-alias.md"
ln -s .. "$FIXTURE/docs/clock/parent-alias"
ln -s "$TEST_ROOT/outside" "$FIXTURE/docs/clock/outside-alias"
ln -s ../missing-target "$FIXTURE/docs/clock/dangling-alias"

run_case 'canonical law path' which_case 0 docs/pointer-emission.md law
run_case 'dot-segment law alias' which_case 0 docs/clock/../pointer-emission.md law
run_case 'dot-segment gear alias' which_case 0 docs/coord/../gearing/contracts-gears.js gear:gears
run_case 'dots and repeated separators' which_case 0 ./docs//clock/./../pointer-emission.md law
run_case 'repository-absolute alias' which_case 0 "$FIXTURE/docs/clock/../pointer-emission.md" law
run_case 'new root Markdown' which_case 0 docs/future.md maps
run_case 'new file in known recursive shelf' which_case 0 docs/plans/new/topic.md maps
run_case 'unknown nested Markdown is not maps' which_case 1 docs/new-shelf/future.md
run_case 'unknown nested gearing Markdown' which_case 1 docs/gearing/new/future.md
run_case 'unknown nested gearing shell' which_case 1 docs/gearing/new/future.sh
run_case 'explicit claims README exception' which_case 0 docs/gearing/claims/README.md gearing-meta
run_case 'exact renderer exception' which_case 0 docs/clock/hcc-a-projection.html renderer
run_case 'unknown contract shaft' which_case 1 docs/gearing/contracts-unknown.js
run_case 'unknown claim shaft' which_case 1 docs/gearing/claims/unknown.claim
run_case 'symlinked file rejects' which_case 1 docs/clock/law-alias.md
run_case 'symlinked parent rejects' which_case 1 docs/clock/parent-alias/pointer-emission.md
run_case 'later dot-dot cannot hide symlink traversal' which_case 1 docs/clock/parent-alias/../pointer-emission.md
run_case 'escaping symlink rejects' which_case 1 docs/clock/outside-alias/sentinel
run_case 'dangling symlink rejects' which_case 1 docs/clock/dangling-alias/future.md
run_case 'relative escape rejects even if it reenters' which_case 1 ../tree/docs/pointer-emission.md
run_case 'outside absolute path rejects' which_case 1 "$TEST_ROOT/outside/sentinel"
run_case 'existing file cannot be a traversed parent' which_case 1 docs/pointer-emission.md/../future.md

gate_case() {
  local path="$1" expected="$2"
  reset_state
  printf '%s\n' 'STATUS: HELD' 'STATION: hologram' 'AGENT: Fixture' \
    'BASE: aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' 'NOTE: held sentinel' \
    >"$FIXTURE/docs/coord/stations/hologram.station"
  snapshot
  run_cmd "$expected" gate hologram Fixture "$path"
  unchanged
}
run_case 'gate rejects wrong owner hidden by alias' gate_case docs/clock/../pointer-emission.md 1
run_case 'ordinary gate still accepts matching holder/base' gate_case docs/clock/lace-projection.html 0

doctor_missing_actor() {
  reset_state; snapshot
  run_cmd 1 doctor --auto-clear
  [[ ! -s "$CONTROL_GIT_LOG" ]] || fail 'missing actor reached Git'
  unchanged
}
doctor_clear() {
  local actor="Fixture O'Brien · Controls"
  reset_state; snapshot
  run_cmd 0 doctor --auto-clear "$actor"
  grep -qx 'STATUS: CLEAR' "$FIXTURE/docs/gearing/RESYNC.md" || fail 'signal not cleared'
  grep -qxF "CLEARED_BY: $actor" "$FIXTURE/docs/gearing/RESYNC.md" || fail 'actor changed'
  grep -qxF 'Historical prose sentinel: keep this exact line.' "$FIXTURE/docs/gearing/RESYNC.md" || fail 'signal prose changed'
  unchanged signal
}
doctor_no_write() {
  local scenario="$1" state
  reset_state
  case "$scenario" in
    readonly) ;;
    CLEAR|UNKNOWN) sed -i "s/STATUS: FIRED/STATUS: $scenario/" "$FIXTURE/docs/gearing/RESYNC.md" ;;
    missing-signal) rm "$FIXTURE/docs/gearing/RESYNC.md" ;;
    doc-held|doc-unknown) state="${scenario#doc-}"; printf 'STATUS: %s\n' "${state^^}" >"$FIXTURE/docs/coord/stations/history.station" ;;
    gear-held|gear-unknown) state="${scenario#gear-}"; printf 'STATUS: %s\n' "${state^^}" >"$FIXTURE/docs/gearing/claims/axle.claim" ;;
    missing-doc) rm "$FIXTURE/docs/coord/stations/history.station" ;;
    missing-gear) rm "$FIXTURE/docs/gearing/claims/axle.claim" ;;
  esac
  snapshot
  if [[ "$scenario" == readonly ]]; then run_cmd 0 doctor
  else run_cmd 0 doctor --auto-clear Fixture; fi
  unchanged
}
run_case 'doctor requires actor before Git or mutation' doctor_missing_actor
run_case 'doctor forwards actor and only clears eligible signal' doctor_clear
for scenario in readonly CLEAR UNKNOWN missing-signal doc-held gear-held doc-unknown gear-unknown missing-doc missing-gear; do
  run_case "doctor preserves state: $scenario" doctor_no_write "$scenario"
done

# Pass 4: exercise the actual claim and RESYNC backends as well as delegation.
run_script() {
  local expected="$1" script="$2" result=0; shift 2
  (cd "$FIXTURE" && bash "$FIXTURE/$script" "$@") >"$TEST_ROOT/command-output" 2>&1 || result=$?
  [[ "$result" -eq "$expected" ]] || {
    cat "$TEST_ROOT/command-output"
    fail "expected exit $expected, got $result"
  }
}
claim_admission() {
  local route="$1" scenario="$2" target script station expected=1
  reset_state
  case "$route" in
    doc) target=docs/coord/stations/kit.station; script=docs/coord/coord.sh; station=kit ;;
    gear) target=docs/gearing/claims/gears.claim; script=docs/gearing/claim.sh; station=gears ;;
    umbrella-gear) target=docs/gearing/claims/gears.claim; script=docs/coord/coord.sh; station=gear:gears ;;
  esac
  case "$scenario" in
    FREE) expected=0 ;;
    same) printf '%s\n' 'STATUS: HELD' 'AGENT: Fixture' 'NOTE: claim sentinel' >"$FIXTURE/$target"; expected=0 ;;
    other) printf '%s\n' 'STATUS: HELD' 'AGENT: Another' 'NOTE: claim sentinel' >"$FIXTURE/$target" ;;
    unknown) printf '%s\n' 'STATUS: UNKNOWN' 'AGENT: Previous' 'NOTE: claim sentinel' >"$FIXTURE/$target" ;;
    missing-status) printf '%s\n' 'AGENT: Previous' 'NOTE: claim sentinel' >"$FIXTURE/$target" ;;
    empty-holder) printf '%s\n' 'STATUS: HELD' 'AGENT: ' 'NOTE: claim sentinel' >"$FIXTURE/$target" ;;
  esac
  snapshot
  run_script "$expected" "$script" claim "$station" Fixture
  if [[ "$expected" -eq 0 ]]; then
    grep -qxF 'STATUS: HELD' "$FIXTURE/$target" || fail 'claim not HELD'
    grep -qxF 'AGENT: Fixture' "$FIXTURE/$target" || fail 'claim actor changed'
    grep -qxF 'BASE: aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' "$FIXTURE/$target" || fail 'claim did not use live tip'
    grep -qE '^SINCE: [0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z$' "$FIXTURE/$target" || fail 'claim timestamp missing'
    cp "$FIXTURE/$target" "$BEFORE/$target"
  fi
  unchanged
}
for route in doc gear umbrella-gear; do
  for scenario in FREE same other unknown missing-status empty-holder; do
    run_case "claim admission: $route $scenario" claim_admission "$route" "$scenario"
  done
done

resync_shape() {
  local operation="$1" shape="$2" expected=0
  reset_state
  case "$shape" in
    block) ;;
    heading) printf '%s\n' '# FULL REPO RESYNC' '' 'Historical prose sentinel: keep this exact line.' >"$FIXTURE/docs/gearing/RESYNC.md" ;;
    absent) printf '%s\n' '# Unexpected heading' '' 'Historical prose sentinel: keep this exact line.' >"$FIXTURE/docs/gearing/RESYNC.md"; expected=1 ;;
  esac
  snapshot
  run_script "$expected" docs/gearing/resync.sh "$operation" Fixture
  if [[ "$expected" -eq 0 ]]; then
    python3 - "$BEFORE/docs/gearing/RESYNC.md" "$FIXTURE/docs/gearing/RESYNC.md" "$operation" "$shape" <<'PY' || fail 'signal metadata/history assertion failed'
import pathlib, re, sys
before, after = (pathlib.Path(p).read_bytes() for p in sys.argv[1:3])
operation, shape = sys.argv[3:]
pattern = rb'```\nSTATUS:.*?\n```'
blocks = re.findall(pattern, after, re.S)
assert len(blocks) == 1, 'expected exactly one signal metadata block'
state, field = (b'FIRED', b'FIRED_BY') if operation == 'fire' else (b'CLEAR', b'CLEARED_BY')
assert b'STATUS: ' + state + b'\n' in blocks[0], 'wrong signal state'
assert field + b': Fixture\n' in blocks[0], 'wrong signal actor'
if shape == 'block':
    assert re.sub(pattern, b'<metadata>', before, count=1, flags=re.S) == re.sub(pattern, b'<metadata>', after, count=1, flags=re.S), 'history outside metadata changed'
else:
    assert after.replace(b'\n' + blocks[0] + b'\n', b'', 1) == before, 'heading initialization changed history'
PY
    unchanged signal
  else
    ! grep -qE '^(FIRED|CLEARED)' "$TEST_ROOT/command-output" || fail 'rejected write reported success'
    unchanged
  fi
}
run_case 'RESYNC fire replaces existing block only' resync_shape fire block
run_case 'RESYNC fire initializes supported heading only' resync_shape fire heading
run_case 'RESYNC fire rejects absent block and heading' resync_shape fire absent
run_case 'RESYNC clear replaces existing block only' resync_shape clear block
run_case 'RESYNC clear rejects missing metadata' resync_shape clear absent

resync_actor() {
  local operation="$1" scenario="$2" actor expected=0 field
  reset_state
  case "$scenario" in
    literal-newline) actor='Fixture\nSecond' ;;
    literal-backreference) actor='Fixture\1Second' ;;
    ordinary-text) actor="Fixture O'Brien · Controls" ;;
    shell-text) actor='Fixture $(touch actor-command) `touch actor-backtick` \ path' ;;
    LF) actor=$'Fixture\nSecond'; expected=1 ;;
    CR) actor=$'Fixture\rSecond'; expected=1 ;;
  esac
  snapshot
  run_script "$expected" docs/gearing/resync.sh "$operation" "$actor"
  if [[ "$expected" -eq 0 ]]; then
    if [[ "$operation" == fire ]]; then field=FIRED_BY; else field=CLEARED_BY; fi
    grep -qxF "$field: $actor" "$FIXTURE/docs/gearing/RESYNC.md" || fail 'actor did not round-trip literally'
    grep -qxF 'Historical prose sentinel: keep this exact line.' "$FIXTURE/docs/gearing/RESYNC.md" || fail 'signal prose changed'
    [[ ! -e "$FIXTURE/actor-command" && ! -e "$FIXTURE/actor-backtick" ]] || fail 'actor text executed'
    unchanged signal
  else
    [[ ! -s "$CONTROL_GIT_LOG" ]] || fail 'invalid actor reached Git'
    unchanged
  fi
}
for operation in fire clear; do
  for scenario in literal-newline literal-backreference ordinary-text shell-text LF CR; do
    run_case "RESYNC actor: $operation $scenario" resync_actor "$operation" "$scenario"
  done
done

resync_usage() {
  local scenario="$1" cwd_agent="$2"
  reset_state
  rm -f -- "$FIXTURE/agent" "$FIXTURE/ | clear "
  if [[ "$cwd_agent" == present ]]; then printf '%s\n' 'cwd input sentinel' >"$FIXTURE/agent"; fi
  rm -rf -- "$TEST_ROOT/usage-before"
  cp -a "$FIXTURE" "$TEST_ROOT/usage-before"
  if [[ "$scenario" == no-arguments ]]; then run_script 1 docs/gearing/resync.sh
  else run_script 1 docs/gearing/resync.sh unknown; fi
  [[ ! -s "$CONTROL_GIT_LOG" ]] || fail 'usage reached Git'
  diff -r --no-dereference "$TEST_ROOT/usage-before" "$FIXTURE" || fail 'usage changed cwd, scripts or state'
  grep -q '^Usage: ' "$TEST_ROOT/command-output" || fail 'safe usage missing'
  rm -f -- "$FIXTURE/agent"
}
for scenario in no-arguments unknown; do
  for cwd_agent in present absent; do
    run_case "RESYNC usage: $scenario, agent file $cwd_agent" resync_usage "$scenario" "$cwd_agent"
  done
done

echo "$passed passed / $failed failed; copied sources, synthetic state, no live claims or network."
[[ "$failed" -eq 0 ]]
