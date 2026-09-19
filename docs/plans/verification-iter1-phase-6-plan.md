# Verification iteration 1, phase 6 — the queued sub-passes, then the receipt

**Status:** `[PLAN]`. Execution NOT_RUN. **Station:** maps.
**Emission:** `[GAP]`. No `src/`.
**Iteration:** [verification iteration 1](verification-iteration-1-plan.md). Passes 1, 3, 4 EXECUTED; pass 2 at 2a; [pass 5](verification-iter1-pass-5-plan.md) awaiting human rulings.

## 0. Two jobs, in that order

Phase 6 runs [the queue pass 5 placed](verification-iter1-pass-5-plan.md) — **2b, 2c, 2d** — and then writes the receipt.

**The receipt cannot be written first.** It has to report coverage as a fraction, and pass 2 stands at **79 of 240** cite-bearing lines. A receipt written now would report a number the iteration has not earned.

## 1. Feasibility probed: Graphic A opened during planning

Pass 1's rule, held since: probe the method before scoping it. Graphic A was opened directly. **All thirteen panels legible**, and the declared range `A1`–`A13` is confirmed against the printed numbering — the numbers are on the panels, as 2a established for D and C.

The probe paid for itself three times.

### 1.1 A second `MISQUOTE`, and the class generalises

`graphics-close-reading.md:187` quotes Graphic A's header:

> "One continuous strand. **Every word a centimetre of wire.** …"

**The image prints `centimeter`.** Inside quotation marks presented as the header verbatim — and the file then builds a conversion table on that clause at line 197 and indexes it at line 384.

Across the whole tree: **`centimetre` 3 times, `centimeter` 0.** Every instance in the repository is the altered spelling.

2a found one truncated quotation and called it a shape the verdict vocabulary had not anticipated. **This is the second, in the same document, again quoting a panel verbatim and changing a word.** One is an accident; two is a pattern, and 2c should expect more rather than be surprised by them.

### 1.2 The source of record contains typographical errors

Graphic A prints `The first occurrecos of a word` (A2), `3D obiect` (A11), and `Continure.` (A13).

The last is **confirmed a typo by another graphic**: C12's governing rule prints the same sentence ending `Continue.`

**So "transcribed exactly" carries a buried decision.** D1's eleven-row table has no typos, so 2a never met the question. Graphic A's prose does. **2c must rule once — reproduce the error, or correct it and say so — and apply that ruling to all 57 lines.** Deciding per-quotation is how a transcription stops being one.

### 1.3 One absence claim re-verified, and it holds

The close reading's §5 states the scale clause appears in none of `README.md`, `AGENTS.md`, `systems-manifest.md`, `reason-model-map.md`. Checked at `d6050c5`: **still true**, 396 commits after the claim was written.

It is the only claim in the four documents that names *files* rather than panels, and it is the only one measured so far that has survived the tree moving under it.

## 2. The queue

| Sub-pass | Graphic | Lines | Also discharges |
|---|---|---|---|
| **2b** | C — n-dimensional relationships | 58 | the namespace-register row for **C5's dimension planes `D1`–`Dn`**, the third owner 2a confirmed |
| **2c** | A — from words to worlds | 57 | the resync's Hands re-read for A — **taken in this planning probe**; 2c records it |
| **2d** | B — mechanisms in 3D | 46 | the resync's Hands re-read for B, the last one outstanding |
| **receipt** | — | — | blocked on all three |

One commit per sub-pass, the shape 2a set. Findings append to [the pass 2 record](verification-iter1-pass-2-findings.md).

**On the numbering:** these keep their pass-2 names. They are 2b, 2c and 2d in the record and in every commit — not "6a, 6b, 6c". Inventing a second label for one piece of work is precisely what [the namespace register](../namespace-register.md) exists to warn about, and this iteration has already spent a pass on a token collision.

## 3. What the receipt must contain

| Section | Standard |
|---|---|
| **Coverage** | Fractions, never implied whole. Pass 2 at *n*/240 with the per-graphic split; pass 3 at 61 of 173 verdicted **with its stated limit repeated, not buried**; pass 4 at 17/17 dated |
| **What iteration 1 established** | Claims that survived reading, each with where it was measured |
| **What it could not** | The limits, named — including the 112 prose lines pass 3 declined to grade and why |
| **The board for iteration 2** | Measured at a pin, with the commands recorded. Pass 1's lesson, applied to its own successor |
| **Pass 5's thirteen** | Their state at writing time. **Recorded, not decided** |

## 4. What iteration 2's board must measure differently

Pass 1's board measured the mechanical surface and found it near its limit. Then **three separate counts dissolved on contact with reading**: out-of-range cites went 1 → 0, the 241 figure turned out to be unreproducible and its near-miss a coincidence, and pass 3's modal/assertive split would not mechanise past 21%.

So iteration 2's board should not lead with what a script can see. Candidate rows, to be argued in the receipt rather than assumed here:

- **Quotations checked against their panel** — 2a and this probe both found defects there and nowhere else
- **Claims carrying a scope**, against claims asserting without one
- **Receipts whose citations still resolve** — pass 4's measure, which found 17 of 17 failing
- **Doors covering their shelf**, if pass 5 rules it gates
- **The churn rate itself**: 54 commits an hour is not context, it is the variable every other number is divided by

## 5. What phase 6 must not do

- **Not write the receipt before the coverage exists.** That is the whole reason for the ordering.
- **Not report a fraction as a whole**, in any section.
- **Not rule on pass 5's thirteen.** The receipt records their state; the human decides them.
- **Not edit the four source documents.** Read-only, as every pass of this iteration has been.
- **Not touch RESYNC** — Grok's campaign — **or `atomic-primitives-map.md`** — Codex's.
- **Not fill `[GAP]`.** A completed iteration is not evidence that Core may begin, and a tidy receipt least of all.

## 6. Accept phase 6 when

2b, 2c and 2d are committed one per sub-pass with every cite-bearing line verdicted against its panel; the transcription ruling from §1.2 is stated once and applied throughout 2c; the namespace register carries the C5 row; and the receipt reports iteration 1 in fractions with its limits named, carrying a board for iteration 2 that was measured rather than recalled.

If a sub-pass cannot finish, it says which lines were read and which were not. **240 is the denominator and it does not move because a pass got tired.**

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

The receipt is where an iteration is most tempted to round up. Iteration 1 opened by finding that its own first measurement was wrong; it should close by reporting exactly how much of the lace it actually looked at, and no more. Emission remains `[GAP]`.
