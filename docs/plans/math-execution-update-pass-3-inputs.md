# Mathematical execution model — UPDATE pass 3 · calculation interface

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`math-execution-update-pass-3-plan.md`](math-execution-update-pass-3-plan.md).
**Depends on:** pass 1 drift · pass 2 labels (`83b66b9`).
**Emission:** `[GAP]`. No `src/`. Not an emitter. Does not accept `pointer-emission.md`.

This file names what a future calculation of emit-when / arity / leftover may see. **It is not that calculation.**

Governing MUST-NOT (U6): campaign SPOKEN is a *label*, not a function body.

---

## May take

Already in the partial model. A later function that uses anything else is a different model.

| Input | Cite | Note |
|---|---|---|
| Current \(L = (e_0,\ldots,e_{n-1})\) | model S1.2 | sole store |
| Kind of each \(e_i \in \{\mathsf{WORD},\mathsf{POINTER}\}\) | S1.3 | no third kind |
| Arriving value \(v \in V\) | S2 \(\mathsf{Arrive}\) | identity G1 still OPEN |
| Membership view \(\mathrm{Star}(v)\) | S3.1 | view, not a table beside \(L\) |
| Existing POINTER rows and their backward refs | S4.1 · emission Q4 CLOSED | refs name earlier indices on this line |
| Prefix freeze: any \(r\) satisfies \(0 \le r < n\) | S4.1 | forward / off-line out of model |

## Must not take

| Forbidden | Cite | Why |
|---|---|---|
| Campaign SPOKEN Q0 / Q1 / Q5 *as the function* | U6 · emission L15–L17 | known, not calculated |
| Shadow \(\{A,B,C\}\), OBS, Anchor, “touch grows lace” | model S6 #8 | wall is pass 4; not Core input |
| rustc / Cargo / wasm64 receipts, `--print`, G-gates | drift U12 | toolchain Shadow |
| Adjacency of WORD rows as an emit trigger | emission Q3 CLOSED | DESSERT–PIE does not fire Φ |
| Intern / collapse of later occurrence into one row | emission Q0/Q5 CLOSED intern | Hands still draws `0003` |
| Projection \(\pi(L)\) write-back | S3.4 · S6 #6 | view is not a store |
| Habit, “helpful” default, fixed one-pointer-per-word fan-out | emission Q1 CLOSED refusals | D1 fan-out is not constant |
| A second store of meaning, stars, or documents | S3 · S6 #3–#5 | only \(L\) |

## Shaped holes (named, empty)

| Hole | Emission stamp | What a calculation would answer | This pass writes |
|---|---|---|---|
| H-WORD | Q0 SPOKEN + HANDS CONFLICT on `0003` | given \(L,v,\mathrm{Star}(v)\), does this arrival append a WORD? | the question |
| H-PTR | Q1 SPOKEN ≠ calculated | given \(L,v\) and existing refs, does this arrival append a POINTER, and which \(R\)? | the question |
| H-k | Q2 CONFLICT | what is \(k\) for that POINTER? | the question; **not 2** |
| H-left | Q3 SPOKEN leftover = B5 arrival order | what is leftover adjacency, if it is not a stored relation? | the question |

\[
\Phi_{\mathrm{schedule}} \;\text{is not defined here.}
\]

An empty hole is the product. Filling any hole this pass is a breach.

---

## Hygiene done this pass

Model S2 / S3 restatements that still said “Q1 OPEN” / leftover OPEN after pass 2 are retied to the pass-2 stamps. S4.1 “required POINTER→POINTER shape remains OPEN” is Q4 and was left standing.

## `P3-R`

| | |
|---|---|
| May-take rows | 6, each cited |
| Must-not rows | 8, each cited |
| Holes | 4, all empty |
| Function body | **none** |
| \(k\) picked | **no** |
| Model equations S1–S6 | unchanged except S2/S3 residue labels |
| U6 | held |
| Next | pass 4 = dual-universe align; **not opened** |

**Emission `[GAP]`. Shoe in hands. An interface is not an answer.**
