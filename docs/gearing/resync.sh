#!/usr/bin/env bash
# Full-repo resync fire/status/clear for laceArc Shadow gearing (Layer III).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
RESYNC="$ROOT/docs/gearing/RESYNC.md"

read_meta() {
  local key="$1"
  awk -F': ' -v k="$key" '
    $0 ~ /^```$/ { inblock=!inblock; next }
    inblock && $1==k { sub(/^[^:]+: /,""); print; exit }
  ' "$RESYNC" 2>/dev/null || true
}

cmd_status() {
  git -C "$ROOT" fetch origin main -q
  local tip status
  tip="$(git -C "$ROOT" rev-parse origin/main)"
  status="$(read_meta STATUS)"
  echo "RESYNC STATUS: ${status:-UNKNOWN}"
  echo "TIP_AT_FIRE:   $(read_meta TIP_AT_FIRE)"
  echo "LIVE tip:      $tip   (origin/main — effective while FIRED)"
  echo "HEAD:          $(git -C "$ROOT" rev-parse HEAD)"
  echo "FIRED_AT:      $(read_meta FIRED_AT)"
  if [[ "${status:-}" == "FIRED" ]]; then
    echo "LIVE: FIRED — no drops unless claim BASE == origin/main"
  elif [[ "${status:-}" == "CLEAR" ]]; then
    echo "CLEAR: normal claim/release; check still requires BASE == origin/main"
  fi
  echo
  "$ROOT/docs/gearing/claim.sh" status
}

cmd_fire() {
  git -C "$ROOT" fetch origin main -q
  local tip since
  tip="$(git -C "$ROOT" rev-parse origin/main)"
  since="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
  python3 - "$RESYNC" "$tip" "$since" <<'PY'
import sys, re, pathlib
path, tip, since = pathlib.Path(sys.argv[1]), sys.argv[2], sys.argv[3]
t = path.read_text()
meta = f"""```
STATUS: FIRED
TIP_AT_FIRE: {tip}
LIVE_TIP_RULE: origin/main
FIRED_AT: {since}
FIRED_BY: LaceArc (steward)
NOTE: While FIRED, effective tip is always current origin/main. TIP_AT_FIRE is the signal commit. All BASE values are STALE until claim/refresh against live tip.
```"""
t2, n = re.subn(r"```\nSTATUS:.*?\n```", meta, t, count=1, flags=re.S)
if n == 0:
    t2 = t.replace("# FULL REPO RESYNC\n", "# FULL REPO RESYNC\n\n" + meta + "\n", 1)
path.write_text(t2)
print(f"FIRED TIP_AT_FIRE={tip} at {since} (live tip follows origin/main)")
PY
}

cmd_clear() {
  git -C "$ROOT" fetch origin main -q
  local tip since
  tip="$(git -C "$ROOT" rev-parse origin/main)"
  since="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
  python3 - "$RESYNC" "$tip" "$since" <<'PY'
import sys, re, pathlib
path, tip, since = pathlib.Path(sys.argv[1]), sys.argv[2], sys.argv[3]
t = path.read_text()
meta = f"""```
STATUS: CLEAR
TIP_AT_FIRE: (see git history of prior FIRED)
LIVE_TIP_RULE: origin/main
CLEARED_AT: {since}
CLEARED_BY: LaceArc (steward)
NOTE: Resync complete. Normal claim/release resumes. BASE must still equal origin/main on check.
```"""
t2, n = re.subn(r"```\nSTATUS:.*?\n```", meta, t, count=1, flags=re.S)
if n == 0:
    sys.exit("no STATUS block to clear")
path.write_text(t2)
print(f"CLEARED at {since}; live tip {tip}")
PY
}

case "${1:-}" in
  status) cmd_status ;;
  fire) cmd_fire ;;
  clear) cmd_clear ;;
  *) echo "Usage: $0 status|fire|clear"; exit 1 ;;
esac
