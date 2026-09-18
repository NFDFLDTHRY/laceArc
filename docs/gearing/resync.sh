#!/usr/bin/env bash
# Full-repo resync fire/status/clear for laceArc Shadow gearing (Layer III).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
RESYNC="$ROOT/docs/gearing/RESYNC.md"

die() { echo "ERROR: $*" >&2; exit 1; }

read_meta() {
  local key="$1"
  awk -F': ' -v k="$key" '
    $0 ~ /^```$/ { inblock=!inblock; next }
    inblock && $1==k { sub(/^[^:]+: /,""); print; exit }
  ' "$RESYNC" 2>/dev/null || true
}

cmd_status() {
  git -C "$ROOT" fetch origin main -q
  local tip status fired
  tip="$(git -C "$ROOT" rev-parse origin/main)"
  status="$(read_meta STATUS)"
  fired="$(read_meta FIRED_AT)"
  echo "RESYNC STATUS: ${status:-UNKNOWN}"
  echo "RESYNC TIP:    $(read_meta TIP)"
  echo "FIRED_AT:      ${fired:--}"
  echo "origin/main:   $tip"
  echo "HEAD:          $(git -C "$ROOT" rev-parse HEAD)"
  if [[ "${status:-}" == "FIRED" ]]; then
    local rtip
    rtip="$(read_meta TIP)"
    if [[ "$rtip" == "$tip" ]]; then
      echo "LIVE: FIRED and TIP matches origin/main — no drops unless BASE==TIP"
    else
      echo "WARN: FIRED but TIP != origin/main — treat as live; re-fire recommended"
    fi
  fi
  echo
  "$ROOT/docs/gearing/claim.sh" status
}

cmd_fire() {
  git -C "$ROOT" fetch origin main -q
  local tip since
  tip="$(git -C "$ROOT" rev-parse origin/main)"
  since="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
  # rewrite STATUS block fields via python for safety
  python3 - "$RESYNC" "$tip" "$since" <<'PY'
import sys, re, pathlib
path, tip, since = pathlib.Path(sys.argv[1]), sys.argv[2], sys.argv[3]
t = path.read_text()
# replace STATUS block inside first fenced meta if present
meta = f"""```
STATUS: FIRED
TIP: {tip}
FIRED_AT: {since}
FIRED_BY: LaceArc (steward)
NOTE: Human/steward signal. All BASE values are STALE until refresh or new claim on this tip.
```"""
if "STATUS:" in t and "TIP:" in t:
    t2, n = re.subn(r"```\nSTATUS:.*?\n```", meta, t, count=1, flags=re.S)
    if n == 0:
        # insert after title
        t2 = t.replace("# FULL REPO RESYNC\n", "# FULL REPO RESYNC\n\n" + meta + "\n", 1)
    path.write_text(t2)
else:
    path.write_text("# FULL REPO RESYNC\n\n" + meta + "\n" + t)
print(f"FIRED tip={tip} at {since}")
PY
}

cmd_clear() {
  local tip since
  tip="$(git -C "$ROOT" rev-parse origin/main)"
  since="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
  python3 - "$RESYNC" "$tip" "$since" <<'PY'
import sys, re, pathlib
path, tip, since = pathlib.Path(sys.argv[1]), sys.argv[2], sys.argv[3]
t = path.read_text()
meta = f"""```
STATUS: CLEAR
TIP: {tip}
CLEARED_AT: {since}
CLEARED_BY: LaceArc (steward)
NOTE: Resync complete. Normal claim/release resumes. BASE must still equal origin/main on check.
```"""
t2, n = re.subn(r"```\nSTATUS:.*?\n```", meta, t, count=1, flags=re.S)
if n == 0:
    sys.exit("no STATUS block to clear")
path.write_text(t2)
print(f"CLEARED tip={tip} at {since}")
PY
}

case "${1:-}" in
  status) cmd_status ;;
  fire) cmd_fire ;;
  clear) cmd_clear ;;
  *) echo "Usage: $0 status|fire|clear"; exit 1 ;;
esac
