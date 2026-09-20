#!/usr/bin/env bash
# Shaft claim/release for laceArc Shadow gearing (Layer III).
# Usage: ./docs/gearing/claim.sh <status|claim|release|check|refresh|force-free> ...
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
CLAIMS="$ROOT/docs/gearing/claims"
SHAFTS=(axle gears trainA trainB trainC cells escape audits)

die() { echo "ERROR: $*" >&2; exit 1; }

need_shaft() {
  local s="$1"
  [[ " ${SHAFTS[*]} " == *" $s "* ]] || die "unknown shaft '$s' (want: ${SHAFTS[*]})"
}

claim_path() { echo "$CLAIMS/$1.claim"; }

read_field() {
  local file="$1" key="$2"
  awk -F': ' -v k="$key" '$1==k {sub(/^[^:]+: /,""); print; exit}' "$file"
}

write_claim() {
  local shaft="$1" status="$2" agent="$3" base="$4" since="$5" note="$6"
  local f
  f="$(claim_path "$shaft")"
  cat >"$f" <<EOF
STATUS: $status
SHAFT: $shaft
FILE: docs/gearing/contracts-${shaft}.js
AGENT: $agent
BASE: $base
SINCE: $since
NOTE: $note
EOF
}

fetch_origin_main() {
  git -C "$ROOT" fetch origin main >/dev/null 2>&1 || die "git fetch origin main failed"
}

origin_main_sha() {
  git -C "$ROOT" rev-parse origin/main
}

iso_now() {
  date -u +"%Y-%m-%dT%H:%M:%SZ"
}

cmd_status() {
  printf "%-10s %-6s %-20s %-12s %-20s %s\n" "SHAFT" "STATUS" "AGENT" "BASE" "SINCE" "NOTE"
  printf "%-10s %-6s %-20s %-12s %-20s %s\n" "----------" "------" "--------------------" "------------" "--------------------" "----"
  local s f status agent base since note short
  for s in "${SHAFTS[@]}"; do
    f="$(claim_path "$s")"
    [[ -f "$f" ]] || die "missing claim file $f"
    status="$(read_field "$f" STATUS)"
    agent="$(read_field "$f" AGENT)"
    base="$(read_field "$f" BASE)"
    since="$(read_field "$f" SINCE)"
    note="$(read_field "$f" NOTE)"
    if [[ -n "$base" ]]; then
      short="${base:0:12}"
    else
      short=""
    fi
    printf "%-10s %-6s %-20s %-12s %-20s %s\n" "$s" "${status:-?}" "${agent:--}" "${short:--}" "${since:--}" "${note:--}"
  done
}

cmd_claim() {
  local shaft="${1:-}" agent="${2:-}"
  [[ -n "$shaft" ]] || die "usage: claim <shaft> \"<agent>\""
  [[ -n "$agent" ]] || die "usage: claim <shaft> \"<agent>\""
  need_shaft "$shaft"
  local f status holder
  f="$(claim_path "$shaft")"
  [[ -f "$f" ]] || die "missing claim file $f"

  fetch_origin_main
  local sha
  sha="$(origin_main_sha)"

  status="$(read_field "$f" STATUS)"
  holder="$(read_field "$f" AGENT)"

  if [[ "$status" == "HELD" && -n "$holder" && "$holder" != "$agent" ]]; then
    die "shaft '$shaft' is HELD by '$holder' — pick another FREE shaft or wait"
  fi

  local since
  since="$(iso_now)"
  write_claim "$shaft" "HELD" "$agent" "$sha" "$since" ""
  echo "CLAIMED $shaft by $agent BASE=$sha SINCE=$since"
}

cmd_release() {
  local shaft="${1:-}" agent="${2:-}"
  [[ -n "$shaft" ]] || die "usage: release <shaft> \"<agent>\""
  [[ -n "$agent" ]] || die "usage: release <shaft> \"<agent>\""
  need_shaft "$shaft"
  local f status holder
  f="$(claim_path "$shaft")"
  [[ -f "$f" ]] || die "missing claim file $f"

  status="$(read_field "$f" STATUS)"
  holder="$(read_field "$f" AGENT)"

  if [[ "$status" != "HELD" ]]; then
    die "shaft '$shaft' is not HELD (STATUS=$status)"
  fi
  if [[ "$holder" != "$agent" ]]; then
    die "shaft '$shaft' is HELD by '$holder', not '$agent'"
  fi

  write_claim "$shaft" "FREE" "" "" "" ""
  echo "RELEASED $shaft (was held by $agent)"
}

cmd_check() {
  local shaft="${1:-}" agent="${2:-}"
  [[ -n "$shaft" ]] || die "usage: check <shaft> \"<agent>\""
  [[ -n "$agent" ]] || die "usage: check <shaft> \"<agent>\""
  need_shaft "$shaft"
  local f status holder base
  f="$(claim_path "$shaft")"
  [[ -f "$f" ]] || die "missing claim file $f"

  fetch_origin_main
  local tip
  tip="$(origin_main_sha)"

  status="$(read_field "$f" STATUS)"
  holder="$(read_field "$f" AGENT)"
  base="$(read_field "$f" BASE)"

  if [[ "$status" != "HELD" || "$holder" != "$agent" ]]; then
    die "check failed: shaft '$shaft' must be HELD by '$agent' (STATUS=$status AGENT=${holder:--})"
  fi
  if [[ "$base" != "$tip" ]]; then
    die "check failed: BASE ($base) != origin/main ($tip) — clock turned. pull --ff-only, re-read, then: ./docs/gearing/claim.sh refresh $shaft \"$agent\""
  fi
  echo "CHECK OK $shaft held by $agent BASE=$base (== origin/main)"
}

cmd_refresh() {
  local shaft="${1:-}" agent="${2:-}"
  [[ -n "$shaft" ]] || die "usage: refresh <shaft> \"<agent>\""
  [[ -n "$agent" ]] || die "usage: refresh <shaft> \"<agent>\""
  need_shaft "$shaft"
  local f status holder note
  f="$(claim_path "$shaft")"
  [[ -f "$f" ]] || die "missing claim file $f"

  fetch_origin_main
  local sha
  sha="$(origin_main_sha)"

  status="$(read_field "$f" STATUS)"
  holder="$(read_field "$f" AGENT)"
  note="$(read_field "$f" NOTE)"

  if [[ "$status" != "HELD" || "$holder" != "$agent" ]]; then
    die "refresh failed: shaft '$shaft' must be HELD by '$agent' (STATUS=$status AGENT=${holder:--})"
  fi

  local since
  since="$(iso_now)"
  write_claim "$shaft" "HELD" "$agent" "$sha" "$since" "$note"
  echo "REFRESHED $shaft BASE=$sha SINCE=$since (holder $agent)"
}

cmd_force_free() {
  local shaft="${1:-}" reason="${2:-}"
  [[ -n "$shaft" ]] || die 'usage: force-free <shaft> ["<reason>"]'
  need_shaft "$shaft"
  local f
  f="$(claim_path "$shaft")"
  [[ -f "$f" ]] || die "missing claim file $f"
  # No reason preserves the direct command's existing NOTE clearing.
  write_claim "$shaft" "FREE" "" "" "" "$reason"
  echo "FORCE-FREED $shaft (human override)"
}

usage() {
  cat <<EOF
Usage: ./docs/gearing/claim.sh <command> ...

  status
  claim <shaft> "<agent>"
  release <shaft> "<agent>"
  check <shaft> "<agent>"
  refresh <shaft> "<agent>"
  force-free <shaft> ["<reason>"]

Shafts: ${SHAFTS[*]}
See docs/gearing/CLAIMS.md
EOF
}

main() {
  local cmd="${1:-}"
  shift || true
  case "$cmd" in
    status) cmd_status "$@" ;;
    claim) cmd_claim "$@" ;;
    release) cmd_release "$@" ;;
    check) cmd_check "$@" ;;
    refresh) cmd_refresh "$@" ;;
    force-free) cmd_force_free "$@" ;;
    ""|-h|--help|help) usage ;;
    *) die "unknown command '$cmd' (try: status|claim|release|check|refresh|force-free)" ;;
  esac
}

main "$@"
