#!/bin/bash
# Repository checks for laceArc.
#
# There is no build, no test suite, and no linter here: the repo is a model,
# not an implementation (see README.md "Status" and AGENTS.md "Job").
# What can still be checked is that the model tree holds its own invariants.
#
# Exit 0 = clean. Exit 1 = at least one check failed.
set -uo pipefail

cd "${CLAUDE_PROJECT_DIR:-$(git rev-parse --show-toplevel)}" || exit 1

fail=0
report() { printf '  %s %s\n' "$1" "$2"; }
note_fail() { report '‼️ ' "$1"; fail=1; }
note_ok() { report '✅' "$1"; }

echo "laceArc checks"

# 1. The four canonical graphics are the source of record (docs/graphics/README.md).
missing=()
for png in from-words-to-worlds mechanisms-in-3d n-dimensional-relationships data-structure-1d-array; do
  [ -s "docs/graphics/${png}.png" ] || missing+=("${png}.png")
done
if [ ${#missing[@]} -eq 0 ]; then
  note_ok "canonical graphics: all four present"
else
  note_fail "canonical graphics missing or empty: ${missing[*]}"
fi

# 2. No src/. AGENTS.md "Never": do not add src/ to get something running.
if git ls-files --error-unmatch src >/dev/null 2>&1; then
  note_fail "src/ is tracked — Core must not exist before docs/pointer-emission.md"
else
  note_ok "no src/ (Core stays unwritten until the pointer-emission rule is)"
fi

# 3. No PDFs. References are citations only (docs/references.md, .gitignore).
pdfs=$(git ls-files '*.pdf')
if [ -n "$pdfs" ]; then
  note_fail "tracked PDF(s) — references stay citation-only: $(echo "$pdfs" | tr '\n' ' ')"
else
  note_ok "no tracked PDFs (references stay citations)"
fi

# 4. Relative links in the markdown resolve. A dead link to a graphic is a
#    dead pointer to the source of record.
broken=0
while IFS= read -r md; do
  dir=$(dirname "$md")
  while IFS= read -r target; do
    [ -n "$target" ] || continue
    case "$target" in
      http://*|https://*|mailto:*|'#'*) continue ;;
    esac
    target=${target%%#*}
    [ -n "$target" ] || continue
    if [ ! -e "$dir/$target" ]; then
      report '‼️ ' "broken link in $md -> $target"
      broken=$((broken + 1))
    fi
  done < <(grep -oE '\]\([^)]+\)' "$md" | sed -E 's/^\]\(//; s/\)$//; s/ .*$//')
done < <(git ls-files '*.md')
if [ "$broken" -eq 0 ]; then
  note_ok "relative markdown links: all resolve"
else
  note_fail "$broken broken relative link(s)"
fi

if [ "$fail" -eq 0 ]; then
  echo "All checks passed."
else
  echo "Checks failed."
fi
exit "$fail"
