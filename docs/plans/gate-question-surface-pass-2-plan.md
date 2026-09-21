# The gate's question surface — Pass 2 PLAN · does the picture settle slot assignment?

**Status:** **`EXECUTED`** 2026-09-21 → [`gate-question-surface-pass-2-findings.md`](gate-question-surface-pass-2-findings.md).
**`F1` half-fired · `F4` partly fired · `F2` and `F3` did not.** **Station:** maps. **Law station untouched.** Emission `[GAP]`. No `src/`.

## 0. The trap this pass had to walk past first

[Pass 1](gate-question-surface-pass-1-census.md) found arity **inference-closed** and named that the only kind of closure that can be wrong without anyone lying. **So a six-of-six pattern must not close slot assignment either.** But the law file's own rule admits another route:

> **CLOSED** — picture or D1 already settles it (**including a ruled-out candidate**).

**Refutation is `CLOSED`-eligible by the file's own words. Pass 2 goes after refutations, not confirmations.**

## 1. Method

Every slot rule statable mechanically over D1's six pointers — index order, row type, recency, adjacency, value identity — run against all six. Three outcomes: **REFUTED** (counterexample; `CLOSED`-eligible) · **CONSISTENT** (fits all six, and therefore **not** closed — the arity trap, named on the row) · **NOT MECHANICAL** (cannot be evaluated from the array).

## 2. Thesis

*No mechanical rule over the array fits all six rows. The only pattern that does is **semantic** — a property of the caption, not data in `L` — so a machine reading the array cannot recover it. Slot assignment is therefore **not separable** from the chooser, the manifest's #9 is right to fuse them, and the gate does **not** narrow to one question.*

**This contradicts [pass 1's own hand-off](gate-question-surface-pass-1-census.md), which guessed the opposite.**

## 3. Falsifiers

| | Fired? |
|---|---|
| **F1** a mechanical rule fits all six → slot order *is* derivable; thesis wrong. **The one worth hoping for** | **half** — see findings §2 |
| **F2** a counterexample to *"`ref_A` is the described subject"* → the manifest's #9 observation is false | **no** |
| **F3** the test needs data D1 does not show → reading in; drop the candidate | **no** |
| **F4** the refutations are already recorded → the pass adds nothing; shrink it | **partly** — 2 of 14 were known |

## 4. Must not

Promote a `CONSISTENT` candidate to a rule — **the arity trap, and the reason this plan opens with it**; edit the law file or the manifest; pre-empt `Astra-selection`'s selection pass; fill a `[GAP]`; take a ruling; add code or `src/`. **All held.**

## 5. Accept when

Every candidate run against all six with its verdict and counterexample rows; `CONSISTENT` rows marked **not closed** with the arity precedent cited; four falsifiers reported; law file byte-unchanged. **All met.**

## Steward test

**Six pointers, drawn by the author, and everything this pass can honestly say comes from what they refuse to show — not from what they show six times.**
