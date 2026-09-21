# The gate's question surface — Pass 2 findings · does the picture settle slot assignment?

**Status:** **EXECUTED** 2026-09-21. **Station:** maps. **Plan:** [`gate-question-surface-pass-2-plan.md`](gate-question-surface-pass-2-plan.md) *(held in session; this file carries its content and result)*.
**Emission:** `[GAP]`. No `src/`. **Law station untouched** — [`pointer-emission.md`](../pointer-emission.md) and [`systems-manifest.md`](../systems-manifest.md) byte-unchanged.
**Evidence:** panel D1 as transcribed in [`graphics-close-reading.md`](../graphics-close-reading.md) — six pointers, `0002` `0004` `0006` `0007` `0009` `0010`.

**This pass closes nothing and proposes nothing.** It reports which candidate rules the picture **refutes**.

## 0. The trap walked past first

[Pass 1](gate-question-surface-pass-1-census.md) found arity **inference-closed** — `CLOSED current constructor: 2` on a six-of-six sample, while the close reading says *"the source never fixes it"* — and named that the only kind of closure **that can be wrong without anyone lying**.

**So six-of-six must not close slot assignment either.** But the law file's own rule admits something else:

> **CLOSED** — picture or D1 already settles it (**including a ruled-out candidate**). Cite the panel.

**Ruling a candidate out is `CLOSED`-eligible by the file's own words.** A six-sample of binary pointers refutes nothing about arity; the six rows **do** refute slot rules, by counterexample. **This pass went after refutations.**

## 1. Fourteen candidates, fourteen refuted

| Candidate rule for `ref_A` vs `ref_B` | Verdict | Counterexamples |
|---|---|---|
| `ref_A < ref_B` — ascending index | **REFUTED** | 4/6 — `0004 {0003,0000}` · `0007 {0006,0004}` · `0009` · `0010` |
| `ref_A > ref_B` — descending index | **REFUTED** | 2/6 — `0002 {0000,0001}` · `0006 {0003,0005}` |
| `ref_A` is the row immediately before the append | **REFUTED** | 2/6 |
| `ref_B` is the row immediately before the append | **REFUTED** | 4/6 |
| `ref_A` is the nearer operand | **REFUTED** | 2/6 |
| `ref_B` is the nearer operand | **REFUTED** | 4/6 |
| `ref_A` is always WORD | **REFUTED** | 2/6 — `0007` · `0010` |
| `ref_A` is always POINTER | **REFUTED** | 4/6 |
| `ref_B` is always WORD | **REFUTED** | 3/6 |
| `ref_B` is always POINTER | **REFUTED** | 3/6 |
| operands share a type | **REFUTED** | 1/6 — `0009 {0008,0007}` |
| `ref_A` is a repeated occurrence | **REFUTED** | 4/6 |
| `ref_A` is the farther operand | **REFUTED** | 4/6 |
| operands are adjacent (`\|a−b\| = 1`) | **REFUTED** | 4/6 |

**Both index orderings are refuted.** Slot order carries information **not recoverable from the indices in either direction** — and that is a `CLOSED`-eligible ruled-out candidate under the file's own rule, for the human to take or leave.

## 2. Why fitting the six proves nothing — the part that matters more than the table

The six rows occupy only **four structural signatures**, and **no signature's rows disagree on order**:

| Signature | Rows | Order |
|---|---|---|
| (WORD, WORD, distinct values) | `0002` `0006` | `A < B` |
| (WORD, WORD, same value) | `0004` | `A > B` |
| (POINTER, POINTER) | `0007` `0010` | `A > B` |
| (WORD, POINTER) | `0009` | `A > B` |

**Four free binary choices ⇒ 2⁴ = 16 rules of that family, and at least one fits all six by construction.**

One was built to demonstrate it: ***"`ref_A < ref_B` iff both operands are WORDs with distinct values."*** It fits perfectly. **It means nothing** — four parameters fitted to six points, with no independent motivation.

**`CONSISTENT`, and therefore NOT closed.** This is the arity trap in a new costume, and naming it is the point: **a rule that fits the sample is the expected outcome of a sample this small, not evidence about the law.**

## 3. The only motivated pattern is not mechanical

`ref_A` is the **grammatical subject of the panel's own Explanation column**, in **6 of 6**:

| Pointer | `ref_A` | subject of the Explanation |
|---|---|---|
| `0002` | `0000` | *"**PIE** relates to DESSERT"* |
| `0004` | `0003` | *"**New PIE** relates to first PIE"* |
| `0006` | `0003` | *"**This PIE** relates to WHOLE"* |
| `0007` | `0006` | *"**A relationship** participates in another relationship"* |
| `0009` | `0008` | *"**CUSTOMER** relates to that relationship"* |
| `0010` | `0009` | *"**This relationship** relates to an earlier relationship"* |

**No counterexample.** And the subject lives in the **caption**, which is documentation of the panel — **not data in `L`**. A machine reading the array cannot recover it.

## 4. What follows — and it corrects this campaign's own pass 1

[Pass 1's hand-off](gate-question-surface-pass-1-census.md) said operand ordering *"looks like two questions fused — split them and the gate narrows to one."*

**That was wrong, and the plan predicted it would be.** No motivated mechanical rule survives; the only pattern that does is semantic and unrecoverable from the array; and the sample is too small to distinguish rules anyway.

**Slot assignment is not separable from the chooser.** The manifest's open question #9 is right to hold them together. **The gate does not narrow to one question.** The correct placement is the one the law file already uses: the ordered operands are *inputs / preconditions to Join*, not something Core derives.

## 5. Falsifiers

| | Result |
|---|---|
| **F1** a mechanical rule fits all six | **half-fired.** No *independently motivated* rule survives; a constructed composite does, and §2 shows that was guaranteed rather than informative |
| **F2** a counterexample to the subject pattern | **did not fire** — 6/6 |
| **F3** the test needs data D1 does not show | **did not fire.** The Explanation column is part of the panel the close reading says it *"transcribed exactly"*, not a reader's gloss — checked before publishing |
| **F4** the refutations are already recorded | **partly fired.** The close reading already records that chronology is refuted, and manifest #9 already records the 6/6 subject pattern. **Twelve of the fourteen refutations and the signature argument are new** |

## 6. One thing this pass did not go looking for

Everything above rests on **one hand's transcription of a PNG**. `graphic-a-ascii.md`, `graphic-b-ascii.md` and `graphic-c-ascii.md` exist; **`graphic-d-ascii.md` does not.**

Graphic D is where every emission question is decided, and it is the one panel a session that cannot see images cannot read — [the roles card](../kit/roles.md) contemplates exactly that session: *"If you cannot see the PNGs, every structural judgment is `[BLOCKED]`."*

**Recorded, not acted on.** It is the subject of [pass 3](gate-question-surface-pass-3-plan.md).

**Pass-2 receipt:** fourteen candidates run against all six pointers with counterexample rows published; the signature count computed and the fitting argument stated quantitatively; the semantic pattern confirmed 6/6 and classified **not mechanical**; the caption's provenance checked before relying on it; four falsifiers reported, two fired; **this campaign's own pass-1 hand-off corrected**. No `[GAP]` closed, no ruling taken, no law file touched. Emission `[GAP]`. Shoe in hands, or no.
