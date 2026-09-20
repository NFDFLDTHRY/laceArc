#!/usr/bin/env bash
# Exercise copied coordination scripts against synthetic claims only.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
TEST_ROOT="$(mktemp -d "${TMPDIR:-/tmp}/lace-force-free.XXXXXX")"
trap 'rm -rf -- "$TEST_ROOT"' EXIT
FIXTURE="$TEST_ROOT/tree"
BEFORE="$TEST_ROOT/before"
mkdir -p "$FIXTURE/docs/coord/stations" "$FIXTURE/docs/gearing/claims"
# Never let a future Git call discover the checkout above a custom TMPDIR.
# This private repository has no remote or live claim history.
git init --quiet "$FIXTURE"
cp "$ROOT/docs/coord/coord.sh" "$FIXTURE/docs/coord/coord.sh"
cp "$ROOT/docs/gearing/claim.sh" "$FIXTURE/docs/gearing/claim.sh"
chmod +x "$FIXTURE/docs/gearing/claim.sh"
COORD="$FIXTURE/docs/coord/coord.sh"
GEAR="$FIXTURE/docs/gearing/claim.sh"
DOC_CLAIM=coord/stations/kit.station
GEAR_CLAIM=gearing/claims/gears.claim
passed=0

fail() { echo "FAIL: $*" >&2; exit 1; }
field() { sed -n "s/^$2: //p" "$1"; }
assert_field() {
  [[ "$(field "$FIXTURE/docs/$1" "$2")" == "$3" ]] || fail "$case_name: $1 $2"
}

reset_claims() {
  local doc_status="${1:-HELD}" gear_status="${2:-HELD}"
  cat >"$FIXTURE/docs/$DOC_CLAIM" <<STATE
STATUS: $doc_status
STATION: kit
OWNS: docs/kit/** .claude/**
AGENT: Doc-holder
BASE: fixture-base
SINCE: 2000-01-01T00:00:00Z
NOTE: old doc note
STATE
  cat >"$FIXTURE/docs/$GEAR_CLAIM" <<STATE
STATUS: $gear_status
SHAFT: gears
FILE: docs/gearing/contracts-gears.js
AGENT: Gear-holder
BASE: fixture-base
SINCE: 2000-01-01T00:00:00Z
NOTE: old gear note
STATE
  printf '%s\n' 'STATUS: HELD' 'STATION: history' 'AGENT: Sentinel-doc' 'NOTE: untouched doc' >"$FIXTURE/docs/coord/stations/history.station"
  printf '%s\n' 'STATUS: HELD' 'SHAFT: trainA' 'AGENT: Sentinel-gear' 'NOTE: untouched gear' >"$FIXTURE/docs/gearing/claims/trainA.claim"
  rm -rf -- "$BEFORE"
  mkdir -p "$BEFORE"
  cp -R "$FIXTURE/docs/coord" "$FIXTURE/docs/gearing" "$BEFORE/"
}

run() {
  local expected="$1"; shift
  local result=0
  (cd "$FIXTURE" && bash "$@") >"$TEST_ROOT/output" 2>&1 || result=$?
  if [[ "$result" != "$expected" ]]; then
    cat "$TEST_ROOT/output" >&2
    fail "$case_name: expected exit $expected, got $result"
  fi
}

unchanged_except() {
  local allowed="${1:-}"
  if [[ -n "$allowed" ]]; then
    cp "$FIXTURE/docs/$allowed" "$BEFORE/$allowed"
  fi
  diff -ru "$BEFORE/coord" "$FIXTURE/docs/coord" || fail "$case_name: unexpected doc/script change"
  diff -ru "$BEFORE/gearing" "$FIXTURE/docs/gearing" || fail "$case_name: unexpected gear/script change"
  [[ ! -e "$FIXTURE/reason-evaluated" && ! -e "$FIXTURE/backtick-evaluated" ]] || fail "$case_name: reason evaluated as shell"
  passed=$((passed + 1))
  echo "PASS: $case_name"
}

assert_gear_free() {
  assert_field "$GEAR_CLAIM" STATUS FREE
  assert_field "$GEAR_CLAIM" SHAFT gears
  assert_field "$GEAR_CLAIM" FILE docs/gearing/contracts-gears.js
  for key in AGENT BASE SINCE; do assert_field "$GEAR_CLAIM" "$key" ''; done
  assert_field "$GEAR_CLAIM" NOTE "$1"
}

reason=$(cat <<'REASON'
fixture O'Brien: "quoted"; $HOME $(touch reason-evaluated) `touch backtick-evaluated` \path * ? [x] & | < > done
REASON
)

case_name='doc HELD override retains full reason and prior holder'
reset_claims
run 0 "$COORD" force-free kit "$reason"
assert_field "$DOC_CLAIM" STATUS FREE
assert_field "$DOC_CLAIM" STATION kit
assert_field "$DOC_CLAIM" OWNS 'docs/kit/** .claude/**'
for key in AGENT BASE SINCE; do assert_field "$DOC_CLAIM" "$key" -; done
note=$(field "$FIXTURE/docs/$DOC_CLAIM" NOTE)
prefix=${note%%: was held by*}
[[ "$prefix" =~ ^force-freed\ [0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}Z$ ]] || fail "$case_name: missing timestamp"
[[ "$note" == "$prefix: was held by Doc-holder since 2000-01-01T00:00:00Z. $reason" ]] || fail "$case_name: reason changed"
unchanged_except "$DOC_CLAIM"

for state in HELD FREE; do
  case_name="umbrella gear $state override retains full reason"
  reset_claims HELD "$state"
  run 0 "$COORD" force-free gear:gears "$reason"
  assert_gear_free "$reason"
  unchanged_except "$GEAR_CLAIM"
done

for state in HELD FREE; do
  case_name="direct gear $state no-reason override preserves legacy clearing"
  reset_claims HELD "$state"
  run 0 "$GEAR" force-free gears
  assert_gear_free ''
  unchanged_except "$GEAR_CLAIM"
done

case_name='direct gear optional reason is retained'
reset_claims
run 0 "$GEAR" force-free gears "$reason"
assert_gear_free "$reason"
unchanged_except "$GEAR_CLAIM"

case_name='doc FREE override rejects without writes'
reset_claims FREE
run 1 "$COORD" force-free kit "$reason"
unchanged_except

for station in kit gear:gears; do
  case_name="umbrella $station requires a reason"
  reset_claims
  run 1 "$COORD" force-free "$station"
  unchanged_except
done

for station in unknown gear:unknown; do
  case_name="unknown station $station rejects without writes"
  reset_claims
  run 1 "$COORD" force-free "$station" "$reason"
  unchanged_except
done

case_name='direct unknown shaft rejects without writes'
reset_claims
run 1 "$GEAR" force-free unknown
unchanged_except

case_name='unknown owned path rejects without writes'
reset_claims
run 1 "$COORD" which unknown/file.bin
unchanged_except

for station in kit gear:gears; do
  case_name="ordinary $station release rejects wrong holder without writes"
  reset_claims
  run 1 "$COORD" release "$station" Wrong-holder
  unchanged_except
done

echo "$passed isolated coordination regressions passed; no live claims or network used."
