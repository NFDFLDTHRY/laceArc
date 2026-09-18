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

# ---------------------------------------------------------------------------
# Advisory checks. These find repo voids: places where the tree has drifted
# away from what a document says about it. They report and do not set `fail`,
# because the thing they find is usually another agent's station to close
# (docs/coherence-audit-prompt.md, PAGE A) and a red gate nobody may clear is
# noise. See docs/downstream-audit.md F06: this is not a compliance gate.
# ---------------------------------------------------------------------------
note_warn() { report '⚠️ ' "$1"; }

# 5. Stale absence claims. A document says a path is absent, missing or
#    untracked, and the path is tracked. The claim outlived the condition.
_TOK='[A-Za-z0-9_.-]+(/[A-Za-z0-9_.-]+)+|[A-Za-z0-9_-]+\.md'
_PHR='is absent|is missing|does not exist|untracked|currently ABSENT'
_tracked=$(git ls-files)          # read the index once, not per token
stale=0
while IFS= read -r md; do
  # An append-only log records past states on purpose: "X was ABSENT, now
  # fixed" is its job, not drift. Skip anything that declares itself so.
  head -20 "$md" | grep -qiE '(^|[[:space:]])append[- ]only' && continue
  seen=""
  # One awk + one grep per file. Each output line pairs an input line with the
  # next, so a claim split across two lines still binds; grep -n then reports
  # the first line of the pair.
  while IFS=: read -r lineno text; do
    for tok in $(printf '%s\n' "$text" | grep -oE "^($_TOK)" | sort -u); do
      case " $seen " in *" $tok "*) continue ;; esac
      path=$(printf '%s\n' "$_tracked" | grep -ixF -- "$tok" | head -1)
      [ -n "$path" ] || path=$(printf '%s\n' "$_tracked" \
        | grep -iE -- "(^|/)$(basename -- "$tok")$" | head -1)
      [ -n "$path" ] || continue
      seen="$seen $tok"
      note_warn "stale absence claim: $md:$lineno calls $tok absent — tracked at $path"
      stale=$((stale + 1))
    done
  done < <(awk '{if (NR > 1) print prev " " $0; prev = $0} END {print prev}' "$md" \
           | grep -nEo "($_TOK).{0,30}($_PHR)")
done < <(git ls-files '*.md')
[ "$stale" -eq 0 ] && note_ok "no stale absence claims (nothing called absent that is tracked)"

# 6. Orphan documents. A tracked document no other document links to is
#    unreachable by reading: written, committed, and invisible.
linked=$(git ls-files '*.md' | xargs grep -ohE '\]\([^)]+\)' 2>/dev/null \
  | sed -E 's/^\]\(//; s/\)$//; s/ .*$//; s/#.*$//; s#.*/##' | sort -u)
orphans=0
for f in $(git ls-files '*.md'); do
  # Entry points are reached from outside the tree, not by an inbound link.
  case "$f" in README.md|AGENTS.md|CLAUDE.md|READ_ME_FIRST.md|CONTRIBUTING.md) continue ;; esac
  if ! printf '%s\n' "$linked" | grep -qxF -- "$(basename -- "$f")"; then
    note_warn "orphan: $f — no document links to it"
    orphans=$((orphans + 1))
  fi
done
[ "$orphans" -eq 0 ] && note_ok "no orphan documents (every document is reachable by a link)"

if [ "$fail" -eq 0 ]; then
  if [ $((stale + orphans)) -eq 0 ]; then
    echo "All checks passed."
  else
    echo "Invariants hold. $((stale + orphans)) advisory finding(s) above — voids, not breaches."
  fi
else
  echo "Checks failed."
fi
exit "$fail"
