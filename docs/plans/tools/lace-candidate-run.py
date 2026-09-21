#!/usr/bin/env python3
"""Run candidate POINTER-emission rules against the D1 golden fixture.

Host-side only. No network. No src/. Exit 0 if the run completes, 1 on a
fixture or candidate fault. This is not Core and cannot become Core: it
builds a throwaway list in memory, compares it to eleven transcribed rows,
and prints counts.

WHERE THIS SITS. Lab Source Architecture pass 1 draws

    source -> clipboard -> lab evidence -> candidate systems

and rules that all source-family arrows terminate at the lab, never at
Contract I. This is the instrument at the third arrow. Its critical rule --
"clipboard evidence may enter the lab; clipboard authority does not
automatically enter Lace" -- is enforced here mechanically: every candidate
declares its PROVENANCE, and provenance is printed in a column of its own,
never folded into the result. A rule sourced from a staked clipboard and a
rule guessed by an editor are reported the same way and judged only by
what they derive.

WHAT THIS MEASURES. Graphic D panel 1 draws five word arrivals and eleven
rows, six of them POINTERs. A candidate rule consumes the word stream and
emits rows. Where the rule cannot produce a pointer D1 has, an ORACLE
supplies it -- and the oracle call is counted. The headline number is
therefore:

    how many of D1's six pointers are derivable from the words alone,
    and how many require information the word stream does not carry.

Oracle assistance also keeps indices aligned with D1, so a rule that emits
fewer pointers can still be compared row for row instead of drifting.

WHAT THIS DOES NOT DO. It does not search for a rule, crown one, or close
any [GAP]. Eleven rows admit many wrong rules -- the same weakness that
makes six-of-six unable to fix arity (gate-question-surface pass 2). This
is a refutation engine. It kills candidates; it never elects one.
"""
import json, sys, pathlib

FIX = pathlib.Path(__file__).resolve().parents[1] / "fixtures" / "d1-golden-v0.1.0.json"


class Oracle:
    """Supplies the joins a rule could not derive. Every call is counted."""
    def __init__(self, rows):
        self.by_index = {r["index"]: r for r in rows if r["type"] == "POINTER"}
        self.calls, self.supplied = 0, []

    def join_at(self, index):
        self.calls += 1
        r = self.by_index.get(index)
        if r is None:
            return None
        self.supplied.append(index)
        return (r["ref_A"], r["ref_B"])


def run(rule, words, golden, oracle):
    """Append-only build. The rule proposes; the oracle fills what it cannot."""
    lace, roots, by_rule = [], {}, []
    gold_by_index = {r["index"]: r for r in golden}
    wi = 0
    while len(lace) < len(golden):
        i = len(lace)
        want = gold_by_index[i]
        if want["type"] == "WORD":
            v = words[wi]; wi += 1
            if v not in roots:
                roots[v] = i
            lace.append({"index": i, "type": "WORD", "value": v})
        else:
            j = rule(i, lace, roots)          # the candidate's own proposal
            if j is not None:
                by_rule.append(i)
            else:
                j = oracle.join_at(i)         # counted
            a, b = j
            lace.append({"index": i, "type": "POINTER", "ref_A": a, "ref_B": b})
    return lace, by_rule


def exact(lace, golden):
    for got, want in zip(lace, golden):
        for k in ("index", "type", "value", "ref_A", "ref_B"):
            if want.get(k) != got.get(k):
                return got["index"]
    return None


# ---- candidates -------------------------------------------------------
def words_only(i, lace, roots):
    """Null hypothesis. Proposes no pointer, ever."""
    return None


def root_touch(i, lace, roots):
    """H1: a repeat occurrence joins to its root. Operands fixed, no chooser."""
    prev = lace[i - 1]
    if prev["type"] == "WORD":
        r = roots.get(prev["value"])
        if r is not None and r != prev["index"]:
            return (prev["index"], r)
    return None


def pointability(i, lace, roots):
    """Water Specs I-A1: no claim enters unless it can be pointed at.

    Every operand in D1 already carries an index -- refs are backward-only
    by construction -- so this admits all six and selects none. That is the
    finding, not a failure: I-A1 is an ADMISSION test, not a selection rule.
    Clipboard evidence entering the lab and declining to become authority.
    """
    return None


def adjacent_pairs(i, lace, roots):
    """Ruled out by the panel itself. Included so the bench can kill it."""
    ws = [r for r in lace if r["type"] == "WORD"]
    if len(ws) >= 2:
        return (ws[-2]["index"], ws[-1]["index"])
    return None


# name, rule, provenance -- where the candidate came from. Printed, never weighed.
CANDIDATES = [
    ("words_only",     words_only,     "editor · null hypothesis"),
    ("pointability",   pointability,   "clipboard · Water Specs I-A1"),
    ("root_touch",     root_touch,     "ruling H1 · witnessed D1 row 0004"),
    ("adjacent_pairs", adjacent_pairs, "graphics · ruled out by D1 itself"),
]


def main():
    if not FIX.exists():
        print(f"FIXTURE MISSING: {FIX}", file=sys.stderr); return 1
    fx = json.loads(FIX.read_text())
    golden, words = fx["rows"], fx["word_stream"]
    npointers = sum(1 for r in golden if r["type"] == "POINTER")

    print(f"fixture   : {fx['fixture']} v{fx['version']}  ({fx['source']})")
    print(f"stream    : {' '.join(words)}")
    print(f"golden    : {len(golden)} rows, {npointers} pointers\n")
    print(f"{'candidate':<16}{'provenance':<34}{'by rule':>8}{'oracle':>8}{'exact':>7}  divergence")
    print("-" * 92)
    for name, rule, prov in CANDIDATES:
        o = Oracle(golden)
        lace, by_rule = run(rule, words, golden, o)
        d = exact(lace, golden)
        print(f"{name:<16}{prov:<34}{len(by_rule):>8}{len(o.supplied):>8}"
              f"{('yes' if d is None else 'no'):>7}  "
              f"{'-' if d is None else f'row {d:04d}'}"
              f"{'  rows ' + ','.join(f'{x:04d}' for x in by_rule) if by_rule else ''}")
    print("-" * 92)
    print(f"\nOf {npointers} pointers in D1, 'by rule' is how many a candidate derives")
    print("from the word stream. 'oracle' is how many require information the words")
    print("do not carry. Provenance is shown and not weighed: a rule from a staked")
    print("clipboard earns nothing here that an editor's guess does not.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
