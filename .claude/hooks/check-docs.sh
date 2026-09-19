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

# _prose <file>: the file with fenced blocks and inline `code` spans blanked,
# line numbers preserved. A token inside a fence or backticks is a MENTION,
# not a USE. Checks 4, 5, 6 and 8 read prose through this; check 7 parses
# fences itself and does not. Measured in
# docs/plans/verification-iter2-pass-2-findings.md: without it, a dead link
# inside a fence trips check 4, an absence claim inside a quotation trips
# check 5, and a path mentioned inside a fence makes check 6 call a file
# reachable and check 8 call a door covered when neither is true.
_prose() {
  awk '
    /^[[:space:]]*```/ { inf = !inf; print ""; next }
    inf { print ""; next }
    { gsub(/`[^`]*`/, ""); print }
  ' "$1"
}

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

# Documents under check: tracked, plus untracked files git would not ignore.
# A file being written right now must meet the gate before it is committed,
# not after; enumerating only the index made a new file invisible to it.
_docs=$(git ls-files --cached --others --exclude-standard -- '*.md')
_all=$(git ls-files --cached --others --exclude-standard)

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
  done < <(_prose "$md" | grep -oE '\]\([^)]+\)' | sed -E 's/^\]\(//; s/\)$//; s/ .*$//')
done < <(printf '%s\n' "$_docs")
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
# "X is missing from main" claims X is absent. "X is missing two sections"
# claims something is absent from X -- the opposite. Require the phrase to end
# its clause, or to be followed by from/at/on.
_PHR='is absent|is missing (from|at|on)|is missing[.,;)]|does not exist|untracked|currently ABSENT'
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
    # A dated receipt ("absent at 6fb2dac", "THEN untracked ... NOW at ...")
    # is a true statement about a revision, not live drift. A commit SHA on
    # the line or its neighbours marks it: receipts here are tables whose
    # SHA sits one row above the claim. Whole-word hex runs only; a word
    # like "acceded" is hex-only and would be skipped too, which costs a
    # missed advisory, not a false one.
    sed -n "$(( lineno > 1 ? lineno - 1 : 1 )),$(( lineno + 1 ))p" "$md" \
      | grep -qE '\b[0-9a-f]{7,40}\b' && continue
    for tok in $(printf '%s\n' "$text" | grep -oE "($_TOK).{0,30}($_PHR)" | grep -oE "^($_TOK)" | sort -u); do
      case " $seen " in *" $tok "*) continue ;; esac
      path=$(printf '%s\n' "$_tracked" | grep -ixF -- "$tok" | head -1)
      [ -n "$path" ] || path=$(printf '%s\n' "$_tracked" \
        | grep -iE -- "(^|/)$(basename -- "$tok")$" | head -1)
      [ -n "$path" ] || continue
      seen="$seen $tok"
      note_warn "stale absence claim: $md:$lineno calls $tok absent — tracked at $path"
      stale=$((stale + 1))
    done
  done < <(_prose "$md" | awk '{if (NR > 1) print prev " " $0; prev = $0} END {print prev}' \
           | grep -nE "($_TOK).{0,30}($_PHR)")
done < <(printf '%s\n' "$_docs")
[ "$stale" -eq 0 ] && note_ok "no stale absence claims (nothing called absent that is tracked)"

# 6. Orphan documents. A tracked file no document links to is unreachable by
#    reading: written, committed, and invisible. Links are resolved to paths,
#    not basenames -- a basename test silently exempts every README.md and
#    conflates two files that share a name in different directories.
linked=$(printf '%s\n' "$_docs" | tr '\n' '\0' | xargs -0 -r awk '
  function norm(p,   n, a, i, st, k, out) {
    n = split(p, a, "/"); k = 0
    for (i = 1; i <= n; i++) {
      if (a[i] == "." || a[i] == "") continue
      if (a[i] == "..") { if (k > 0) k--; continue }
      st[++k] = a[i]
    }
    out = ""
    for (i = 1; i <= k; i++) out = out (i > 1 ? "/" : "") st[i]
    return out
  }
  FNR == 1 { inf = 0 }
  /^[[:space:]]*```/ { inf = !inf; next }
  inf { next }
  {
    line = $0
    gsub(/`[^`]*`/, "", line)
    while (match(line, /\]\([^)]+\)/)) {
      t = substr(line, RSTART + 2, RLENGTH - 3)
      line = substr(line, RSTART + RLENGTH)
      sub(/[ \t].*$/, "", t); sub(/#.*$/, "", t)
      if (t == "" || t ~ /^(https?:|mailto:|tel:)/) continue
      d = FILENAME
      if (sub("/[^/]*$", "", d) == 0) d = "."
      print norm(d "/" t)
    }
  }' 2>/dev/null | sort -u)

# Entry points are reached from outside the tree, not by an inbound link.
orph_list=$(awk '
  NR == FNR { seen[$0]; next }
  $0 == "README.md" || $0 == "AGENTS.md" || $0 == "CLAUDE.md" || $0 == "CONTRIBUTING.md" { next }
  !($0 in seen)
' <(printf '%s\n' "$linked") <(printf '%s\n' "$_all"))
orphans=$(printf '%s' "$orph_list" | grep -c . || true)

if [ "$orphans" -gt 0 ]; then
  note_warn "orphans: $orphans file(s) no document links to"
  printf '%s\n' "$orph_list" | awk -F/ '
    NF > 1 { d = ""; for (i = 1; i < NF; i++) d = d $i "/"; c[d]++; if (!(d in e)) e[d] = $NF; next }
    { c["(repo root)"]++; if (!("(repo root)" in e)) e["(repo root)"] = $0 }
    END { for (k in c) printf "%5d  %-24s e.g. %s\n", c[k], k, e[k] }
  ' | sort -rn | sed 's/^/       /'
fi
[ "$orphans" -eq 0 ] && note_ok "no orphan documents (every document is reachable by a link)"

# 7. Law-copy parity. The law's ASCII lives in more than one file so that a
#    portable prompt can carry it to an agent that cannot read this repository.
#    A copy that has fallen behind understates the law while looking complete:
#    agent-control.md once carried 166 lines of a 396-line law, missing 20 of
#    28 prohibitions, under the words "preserved verbatim".
#    staking-the-workspace.md is exempt -- its text is unfenced and frozen.
_LAW=docs/law-why-these-documents.md
_lawblock() {
  awk '
    /^```/ { if (inb) { if (buf ~ /STILL FORBIDDEN/) { printf "%s", buf; exit } ; buf=""; inb=0 } else inb=1; next }
    inb { buf = buf $0 "\n" }
  ' "$1"
}
drift=0
if [ -f "$_LAW" ]; then
  live_sum=$(_lawblock "$_LAW" | sha256sum | cut -d' ' -f1)
  while IFS= read -r md; do
    case "$md" in "$_LAW"|docs/staking-the-workspace.md) continue ;; esac
    grep -q 'STILL FORBIDDEN' "$md" 2>/dev/null || continue
    # Compare both sides through a pipe. Capturing a block with $(...) strips
    # its trailing newlines, and this block ends on a blank line -- a captured
    # copy would never equal an uncaptured live sum, and the check would warn
    # forever about files that are byte-identical.
    copy_lines=$(_lawblock "$md" | grep -c '')
    [ "$copy_lines" -gt 0 ] || continue
    [ "$(_lawblock "$md" | sha256sum | cut -d' ' -f1)" = "$live_sum" ] && continue
    if head -30 "$md" | grep -q 'STALE'; then continue; fi
    note_warn "law copy drifted: $md carries $copy_lines lines against $(_lawblock "$_LAW" | grep -c '') live; mark it STALE or regenerate"
    drift=$((drift + 1))
  done < <(printf '%s\n' "$_docs")
  [ "$drift" -eq 0 ] && note_ok "law copies match $_LAW (or declare themselves STALE)"
fi

# 8. Door coverage. How many of a shelf's files its OWN README links. Distinct
#    from check 6: a file can be reachable from elsewhere and still missing
#    from its shelf's door. This is also the restructure plan's phase-2 gate --
#    a root-README row is safe to drop exactly when that file's door links it.
_links_of() {
  awk '
    function norm(p,   n, a, i, st, k, out) {
      n = split(p, a, "/"); k = 0
      for (i = 1; i <= n; i++) {
        if (a[i] == "." || a[i] == "") continue
        if (a[i] == "..") { if (k > 0) k--; continue }
        st[++k] = a[i]
      }
      out = ""
      for (i = 1; i <= k; i++) out = out (i > 1 ? "/" : "") st[i]
      return out
    }
    FNR == 1 { inf = 0 }
    /^[[:space:]]*```/ { inf = !inf; next }
    inf { next }
    {
      line = $0
      gsub(/`[^`]*`/, "", line)
      while (match(line, /\]\([^)]+\)/)) {
        t = substr(line, RSTART + 2, RLENGTH - 3)
        line = substr(line, RSTART + RLENGTH)
        sub(/[ \t].*$/, "", t); sub(/#.*$/, "", t)
        if (t == "" || t ~ /^(https?:|mailto:|tel:)/) continue
        d = FILENAME
        if (sub("/[^/]*$", "", d) == 0) d = "."
        print norm(d "/" t)
      }
    }' "$1" | sort -u
}
thin=0
while IFS= read -r rp; do
  d=$(dirname "$rp")
  here=$(printf '%s\n' "$_all" | awk -v d="$d" -v rp="$rp" -F/ '{ p=$0; sub("/[^/]*$","",p); if (p==d && $0!=rp) print }')
  [ -n "$here" ] || continue
  total=$(printf '%s\n' "$here" | grep -c .)
  covered=$(comm -12 <(printf '%s\n' "$here" | sort -u) <(_links_of "$rp") | grep -c . || true)
  [ "$covered" -eq "$total" ] && continue
  note_warn "door covers $covered/$total: $rp does not link $((total - covered)) file(s) on its own shelf"
  thin=$((thin + 1))
done < <(printf '%s\n' "$_all" | grep -E '(^|/)README\.md$' | sort -u)
[ "$thin" -eq 0 ] && note_ok "every shelf door links every file on its shelf"

if [ "$fail" -eq 0 ]; then
  if [ $((stale + orphans + drift + thin)) -eq 0 ]; then
    echo "All checks passed."
  else
    echo "Invariants hold. $((stale + orphans + drift + thin)) advisory finding(s) above — voids, not breaches."
  fi
else
  echo "Checks failed."
fi
exit "$fail"
