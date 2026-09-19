#!/usr/bin/env bash
# Multi-agent coordination umbrella for laceArc (Layer III).
# Doc stations + gear shafts (gear:* delegates to claim.sh).
# Usage: ./docs/coord/coord.sh <status|which|claim|release|check|refresh|doctor|gate> ...
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
STATIONS_DIR="$ROOT/docs/coord/stations"
CLAIM_SH="$ROOT/docs/gearing/claim.sh"
RESYNC_SH="$ROOT/docs/gearing/resync.sh"
RESYNC_MD="$ROOT/docs/gearing/RESYNC.md"

DOC_STATIONS=(clipboards prompts maps history hologram renderer kit law graphics gearing-meta coord)
GEAR_SHAFTS=(axle gears trainA trainB trainC cells escape audits)

die() { echo "ERROR: $*" >&2; exit 1; }

iso_now() { date -u +"%Y-%m-%dT%H:%M:%SZ"; }

fetch_origin_main() {
  git -C "$ROOT" fetch origin main >/dev/null 2>&1 || die "git fetch origin main failed"
}

origin_main_sha() {
  git -C "$ROOT" rev-parse origin/main
}

read_field() {
  local file="$1" key="$2"
  awk -F': ' -v k="$key" '$1==k {sub(/^[^:]+: /,""); print; exit}' "$file"
}

station_path() { echo "$STATIONS_DIR/$1.station"; }

is_doc_station() {
  local s="$1"
  [[ " ${DOC_STATIONS[*]} " == *" $s "* ]]
}

is_gear_station() {
  local s="$1"
  [[ "$s" == gear:* ]] || return 1
  local shaft="${s#gear:}"
  [[ " ${GEAR_SHAFTS[*]} " == *" $shaft "* ]]
}

need_station() {
  local s="$1"
  if is_doc_station "$s"; then
    local f
    f="$(station_path "$s")"
    [[ -f "$f" ]] || die "missing station file $f"
    return 0
  fi
  if is_gear_station "$s"; then
    return 0
  fi
  die "unknown station '$s' (doc: ${DOC_STATIONS[*]}; gear: gear:<${GEAR_SHAFTS[*]// /|}>)"
}

write_station() {
  local station="$1" status="$2" agent="$3" base="$4" since="$5" note="$6"
  local f owns
  f="$(station_path "$station")"
  [[ -f "$f" ]] || die "missing station file $f"
  owns="$(read_field "$f" OWNS)"
  [[ -n "$owns" ]] || owns="-"
  # NOTE is the station's standing description. claim and release pass "",
  # which erased it on every cycle; keep whatever the file already says.
  [[ -n "$note" ]] || note="$(read_field "$f" NOTE)"
  # Normalize empty agent/base/since to "-"
  [[ -n "$agent" ]] || agent="-"
  [[ -n "$base" ]] || base="-"
  [[ -n "$since" ]] || since="-"
  cat >"$f" <<EOF
STATUS: $status
STATION: $station
OWNS: $owns
AGENT: $agent
BASE: $base
SINCE: $since
NOTE: $note
EOF
}

# Normalize dash/empty placeholders
norm_agent() {
  local a="${1:-}"
  if [[ -z "$a" || "$a" == "-" ]]; then
    echo ""
  else
    echo "$a"
  fi
}

# --- path → station mapping -------------------------------------------------

# Score how well a pattern matches path. Higher = more specific. -1 = no match.
# Patterns: exact file, glob with **, glob with *, prefix dirs.
match_score() {
  local path="$1" pat="$2"
  # Strip trailing parenthetical notes in OWNS lines
  pat="${pat%% (*}"
  pat="${pat%%(not*}"
  pat="$(echo "$pat" | sed 's/[[:space:]]*$//')"

  # Exact file match
  if [[ "$pat" == "$path" ]]; then
    echo 10000
    return
  fi

  # contracts-*.js special-cased elsewhere

  # docs/foo/** → prefix docs/foo/
  if [[ "$pat" == *'/**' ]]; then
    local prefix="${pat%/**}/"
    if [[ "$path" == "$prefix"* ]]; then
      # longer prefix wins
      echo $((5000 + ${#prefix}))
      return
    fi
    echo -1
    return
  fi

  # shell-style globs: * and ?
  # Convert simple globs: if pat has * but not **/
  case "$pat" in
    *'*'*|*'?'*)
      # Use bash pathname matching against the path string
      if [[ "$path" == $pat ]]; then
        # Prefer longer literal prefix before first wildcard
        local lit="${pat%%[*?]*}"
        echo $((3000 + ${#lit}))
        return
      fi
      echo -1
      return
      ;;
  esac

  # Plain path prefix (directory without **)
  if [[ "$path" == "$pat"/* || "$path" == "$pat" ]]; then
    echo $((4000 + ${#pat}))
    return
  fi

  echo -1
}

# Built-in OWNS rules (authoritative mapping; station files carry description)
# Returns station name or empty
path_to_station() {
  local raw="$1"
  local path="${raw#./}"
  # Strip leading repo-relative noise
  path="${path#$ROOT/}"

  # Gear contracts → gear:<shaft>
  if [[ "$path" =~ ^docs/gearing/contracts-([a-zA-Z0-9]+)\.js$ ]]; then
    local shaft="${BASH_REMATCH[1]}"
    if [[ " ${GEAR_SHAFTS[*]} " == *" $shaft "* ]]; then
      echo "gear:$shaft"
      return 0
    fi
    die "cannot tell station for '$raw' (unknown gearing contract shaft)"
  fi

  # Gear claim state → the same gear:<shaft>. claim.sh writes these files on
  # behalf of the shaft's holder, so the holder owns them.
  if [[ "$path" =~ ^docs/gearing/claims/([a-zA-Z0-9]+)\.claim$ ]]; then
    local shaft="${BASH_REMATCH[1]}"
    if [[ " ${GEAR_SHAFTS[*]} " == *" $shaft "* ]]; then
      echo "gear:$shaft"
      return 0
    fi
    die "cannot tell station for '$raw' (unknown gearing claim shaft)"
  fi

  # Explicit rule table: station → space-separated patterns
  local best_station="" best_score=-1 score pat station patterns
  local -A RULES=(
    [clipboards]="docs/clipboards/**"
    [prompts]="docs/prompts/**"
    [maps]="docs/reason-model-map.md docs/rust-nostd-*.md docs/atomic-primitives-map.md docs/gearing-code-1to1.md docs/clock/gearing-code-1to1.md docs/coherence-audit*.md docs/system-mathematical-model.md docs/clock/system-mathematical-model.md docs/defrag-plan.md docs/plans/** docs/namespace-register.md"
    [history]="docs/history-recovered* docs/history/**"
    [hologram]="docs/hologram/** docs/clock/** docs/shadow-clock-hologram.md docs/shadow-clock-agent-brief.md docs/shadow-clock-gear-contracts.md docs/philosophy-map.md docs/agent-interaction-model.md"
    [renderer]="docs/shadow-clock-gearing.html docs/hologram/nostd-pipeline.html docs/clock/hcc-a-projection.html"
    [kit]="docs/kit/** .claude/**"
    [graphics]="docs/graphics/** docs/graphics-close-reading.md"
    [law]="AGENTS.md CLAUDE.md docs/staking-the-workspace.md docs/law-why-these-documents.md docs/systems-manifest.md docs/pointer-emission.md docs/references.md CONTRIBUTING.md README.md .gitignore LICENSE docs/README.md"
    [gearing-meta]="docs/gearing/*.md docs/gearing/*.sh docs/gearing/RESYNC.md"
    [coord]="docs/coord/**"
  )

  # Catch-all for the court root. Every rule above is exact or a directory
  # prefix, so a NEW file at docs/ root matched nothing and failed closed --
  # docs/systems-manifest-ascii.md and six pass plans arrived that way, and the
  # agent writing them could not gate its own paths. A glob scores 3005 here
  # against 10000 for an exact match and 5000+ for a directory, so this fires
  # only where nothing else does. Derivative maps of the manifest are maps work.
  RULES[maps]="${RULES[maps]} docs/*.md"

  # noglob: patterns contain * and ** which must not expand on disk
  set -f
  for station in "${DOC_STATIONS[@]}"; do
    patterns="${RULES[$station]}"
    for pat in $patterns; do
      score="$(match_score "$path" "$pat")"
      if (( score > best_score )); then
        best_score=$score
        best_station="$station"
      fi
    done
  done
  set +f

  if [[ -n "$best_station" && "$best_score" -ge 0 ]]; then
    echo "$best_station"
    return 0
  fi

  die "cannot tell station for '$raw' (fail closed)"
}

# --- commands ---------------------------------------------------------------

cmd_status() {
  printf "%-14s %-6s %-20s %-12s %-20s %s\n" "STATION" "STATUS" "AGENT" "BASE" "SINCE" "NOTE"
  printf "%-14s %-6s %-20s %-12s %-20s %s\n" "--------------" "------" "--------------------" "------------" "--------------------" "----"
  local s f status agent base since note short
  for s in "${DOC_STATIONS[@]}"; do
    f="$(station_path "$s")"
    [[ -f "$f" ]] || die "missing station file $f"
    status="$(read_field "$f" STATUS)"
    agent="$(read_field "$f" AGENT)"
    base="$(read_field "$f" BASE)"
    since="$(read_field "$f" SINCE)"
    note="$(read_field "$f" NOTE)"
    [[ "$agent" == "-" ]] && agent=""
    [[ "$base" == "-" ]] && base=""
    [[ "$since" == "-" ]] && since=""
    if [[ -n "$base" ]]; then short="${base:0:12}"; else short=""; fi
    printf "%-14s %-6s %-20s %-12s %-20s %s\n" "$s" "${status:-?}" "${agent:--}" "${short:--}" "${since:--}" "${note:--}"
  done
  echo
  echo "--- gear shafts (via claim.sh) ---"
  "$CLAIM_SH" status
}

cmd_which() {
  local path="${1:-}"
  [[ -n "$path" ]] || die "usage: which <path>"
  path_to_station "$path"
}

delegate_gear() {
  local op="$1" station="$2" agent="${3:-}"
  local shaft="${station#gear:}"
  case "$op" in
    claim|release|check|refresh)
      "$CLAIM_SH" "$op" "$shaft" "$agent"
      ;;
    *) die "internal: bad gear op $op" ;;
  esac
}

cmd_claim() {
  local station="${1:-}" agent="${2:-}"
  [[ -n "$station" ]] || die "usage: claim <station> \"<agent>\""
  [[ -n "$agent" ]] || die "usage: claim <station> \"<agent>\""
  need_station "$station"

  if is_gear_station "$station"; then
    fetch_origin_main
    delegate_gear claim "$station" "$agent"
    return
  fi

  fetch_origin_main
  local sha f status holder
  sha="$(origin_main_sha)"
  f="$(station_path "$station")"
  status="$(read_field "$f" STATUS)"
  holder="$(norm_agent "$(read_field "$f" AGENT)")"

  if [[ "$status" == "HELD" && -n "$holder" && "$holder" != "$agent" ]]; then
    die "station '$station' is HELD by '$holder' — pick another FREE station or wait"
  fi

  local since
  since="$(iso_now)"
  write_station "$station" "HELD" "$agent" "$sha" "$since" ""
  echo "CLAIMED $station by $agent BASE=$sha SINCE=$since"
}

cmd_release() {
  local station="${1:-}" agent="${2:-}"
  [[ -n "$station" ]] || die "usage: release <station> \"<agent>\""
  [[ -n "$agent" ]] || die "usage: release <station> \"<agent>\""
  need_station "$station"

  if is_gear_station "$station"; then
    delegate_gear release "$station" "$agent"
    return
  fi

  local f status holder
  f="$(station_path "$station")"
  status="$(read_field "$f" STATUS)"
  holder="$(norm_agent "$(read_field "$f" AGENT)")"

  if [[ "$status" != "HELD" ]]; then
    die "station '$station' is not HELD (STATUS=$status)"
  fi
  if [[ "$holder" != "$agent" ]]; then
    die "station '$station' is HELD by '$holder', not '$agent'"
  fi

  write_station "$station" "FREE" "-" "-" "-" ""
  echo "RELEASED $station (was held by $agent)"
}

cmd_check() {
  local station="${1:-}" agent="${2:-}"
  [[ -n "$station" ]] || die "usage: check <station> \"<agent>\""
  [[ -n "$agent" ]] || die "usage: check <station> \"<agent>\""
  need_station "$station"

  if is_gear_station "$station"; then
    fetch_origin_main
    delegate_gear check "$station" "$agent"
    return
  fi

  fetch_origin_main
  local tip f status holder base
  tip="$(origin_main_sha)"
  f="$(station_path "$station")"
  status="$(read_field "$f" STATUS)"
  holder="$(norm_agent "$(read_field "$f" AGENT)")"
  base="$(read_field "$f" BASE)"
  [[ "$base" == "-" ]] && base=""

  if [[ "$status" != "HELD" || "$holder" != "$agent" ]]; then
    die "check failed: station '$station' must be HELD by '$agent' (STATUS=$status AGENT=${holder:--})"
  fi
  if [[ "$base" != "$tip" ]]; then
    die "check failed: BASE ($base) != origin/main ($tip) — clock turned. pull --ff-only, re-read, then: ./docs/coord/coord.sh refresh $station \"$agent\""
  fi
  echo "CHECK OK $station held by $agent BASE=$base (== origin/main)"
}

cmd_refresh() {
  local station="${1:-}" agent="${2:-}"
  [[ -n "$station" ]] || die "usage: refresh <station> \"<agent>\""
  [[ -n "$agent" ]] || die "usage: refresh <station> \"<agent>\""
  need_station "$station"

  if is_gear_station "$station"; then
    fetch_origin_main
    delegate_gear refresh "$station" "$agent"
    return
  fi

  fetch_origin_main
  local sha f status holder note since
  sha="$(origin_main_sha)"
  f="$(station_path "$station")"
  status="$(read_field "$f" STATUS)"
  holder="$(norm_agent "$(read_field "$f" AGENT)")"
  note="$(read_field "$f" NOTE)"

  if [[ "$status" != "HELD" || "$holder" != "$agent" ]]; then
    die "refresh failed: station '$station' must be HELD by '$agent' (STATUS=$status AGENT=${holder:--})"
  fi

  since="$(iso_now)"
  write_station "$station" "HELD" "$agent" "$sha" "$since" "$note"
  echo "REFRESHED $station BASE=$sha SINCE=$since (holder $agent)"
}

resync_status() {
  awk -F': ' '
    $0 ~ /^```$/ { inblock=!inblock; next }
    inblock && $1=="STATUS" { sub(/^[^:]+: /,""); print; exit }
  ' "$RESYNC_MD" 2>/dev/null || true
}

all_gear_free() {
  local s f status
  for s in "${GEAR_SHAFTS[@]}"; do
    f="$ROOT/docs/gearing/claims/$s.claim"
    [[ -f "$f" ]] || return 1
    status="$(read_field "$f" STATUS)"
    [[ "$status" == "FREE" ]] || return 1
  done
  return 0
}

all_doc_free() {
  local s f status
  for s in "${DOC_STATIONS[@]}"; do
    f="$(station_path "$s")"
    [[ -f "$f" ]] || return 1
    status="$(read_field "$f" STATUS)"
    [[ "$status" == "FREE" ]] || return 1
  done
  return 0
}

cmd_doctor() {
  local auto=0
  if [[ "${1:-}" == "--auto-clear" ]]; then
    auto=1
  elif [[ -n "${1:-}" ]]; then
    die "usage: doctor [--auto-clear]"
  fi

  fetch_origin_main
  local tip rstatus
  tip="$(origin_main_sha)"
  rstatus="$(resync_status)"

  echo "doctor: origin/main=$tip"
  echo "doctor: RESYNC STATUS=${rstatus:-UNKNOWN}"

  local gear_ok=0 doc_ok=0
  if all_gear_free; then gear_ok=1; echo "doctor: all gear claims FREE"; else echo "doctor: some gear claims HELD"; fi
  if all_doc_free; then doc_ok=1; echo "doctor: all doc stations FREE"; else echo "doctor: some doc stations HELD"; fi

  if [[ "$rstatus" == "FIRED" ]]; then
    if (( gear_ok && doc_ok )); then
      if (( auto )); then
        echo "doctor: RESYNC FIRED and all FREE — clearing"
        "$RESYNC_SH" clear
      else
        echo "doctor: RESYNC FIRED but all stations/claims FREE — safe to clear:"
        echo "  ./docs/coord/coord.sh doctor --auto-clear"
        echo "  or: ./docs/gearing/resync.sh clear"
      fi
    else
      echo "doctor: RESYNC FIRED — do NOT clear yet. Release held stations/shafts first."
      echo "  Advice: git pull --ff-only origin main; ./docs/coord/coord.sh status"
      echo "  Holders: release or refresh so BASE == tip; then doctor --auto-clear"
    fi
  elif [[ "$rstatus" == "CLEAR" ]]; then
    echo "doctor: RESYNC CLEAR — normal claim/release; check still requires BASE == origin/main"
  else
    echo "doctor: RESYNC status unknown — treat as live (fail closed advice)"
  fi
}

cmd_gate() {
  local station="${1:-}" agent="${2:-}"
  shift 2 || die "usage: gate <station> \"<agent>\" <path> [...]"
  [[ -n "$station" && -n "$agent" ]] || die "usage: gate <station> \"<agent>\" <path> [...]"
  [[ $# -ge 1 ]] || die "usage: gate <station> \"<agent>\" <path> [...]"
  need_station "$station"

  local path mapped
  for path in "$@"; do
    mapped="$(path_to_station "$path")"
    if [[ "$mapped" != "$station" ]]; then
      die "gate failed: path '$path' maps to '$mapped', not station '$station'"
    fi
  done

  cmd_check "$station" "$agent"
}

usage() {
  cat <<EOF
Usage: ./docs/coord/coord.sh <command> ...

  status
  which <path>
  claim <station> "<agent>"
  release <station> "<agent>"
  check <station> "<agent>"
  refresh <station> "<agent>"
  doctor [--auto-clear]
  gate <station> "<agent>" <path> [...]

Doc stations: ${DOC_STATIONS[*]}
Gear stations: gear:axle gear:gears gear:trainA gear:trainB gear:trainC gear:cells gear:escape gear:audits
See docs/coord/README.md
EOF
}

main() {
  local cmd="${1:-}"
  shift || true
  case "$cmd" in
    status) cmd_status "$@" ;;
    which) cmd_which "$@" ;;
    claim) cmd_claim "$@" ;;
    release) cmd_release "$@" ;;
    check) cmd_check "$@" ;;
    refresh) cmd_refresh "$@" ;;
    doctor) cmd_doctor "$@" ;;
    gate) cmd_gate "$@" ;;
    ""|-h|--help|help) usage ;;
    *) die "unknown command '$cmd' (try: status|which|claim|release|check|refresh|doctor|gate)" ;;
  esac
}

main "$@"
