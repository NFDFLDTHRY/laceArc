# Mathematical execution model audit — pass 3 plan: internal coherence repair

**Status:** PLAN · not executed.  
**Station:** maps.  
**Board:** [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md) · findings MA-M02, MA-M06, MA-M07, MA-M08, MA-M09, MA-M10, MA-X05.  
**Pinned:** `5ffe01156047df01e8cd0823a286b53e89082905`.  
**Editor (declared):** whoever holds `maps`.  
**Emission:** untouched. Every edit here is a label, a qualifier, a pointer, a stamp, or a dated addition. No equation, no boxed content, no table cell's meaning changes.

## Question (one act)

Can the model's text be made internally coherent — theorem labels attached where the boxed statements sit, section-number collisions qualified, proof stamps retied to the C10 vocabulary with premises, the undefined identifier defined or pointed, the refusal path and the whole-app model cross-referenced, the rulings register and theorem companion linked, and a dated current receipt added — without changing one equation and without touching S8's bytes?

## Measured before proposing

| Surface | Line(s) | Says | Should |
|---|---|---|---|
| S12.8 | 1972 | *"Pass-4 PATH-1 and VIEW-1 remain binding."* | VIEW-1 defined only in `behavioral-read-devices-pass-4-findings.md` §9; needs a pointer or a definition beside S3.7's box |
| S3.1 / S3.4 / S3.7 | boxes | `Root ≠ FullStar`, `ReachMembership ≠ PathMultiplicity`, `FlatGraphView ≠ FullLaceStructure` | these are STAR-1, PATH-1, VIEW-1 in the Pass-4 artifacts; the labels belong on the boxes |
| S9.10 | 993, 996 | *"HCC … S0–S7 source mechanisms"*, *"Water S0–S4 and F1–F5"* | *HCC phases S0–S7*, *Water states S0–S4* — in this file S-numbers are sections |
| S10.10 | ~1327 | *"Six-Act diagnostic ≠ S0–S7 runtime flow"* | *≠ HCC S0–S7 runtime flow* |
| S4.5, S8 and header | 10 hits | `PROVED`, `proved`, `constructively proved` | `PROVED_WITHIN_SCOPE (premises: …)` per C10/C08, pointing at the pass-2 block |
| S3.2 | ~200 | *"Adjacency does not fire Φ (emission Q3 CLOSED) …"* | one clause: Φ is the historical emission notation; the current constructor is `Join`; Q3 CLOSED stands |
| S2, S5 | *"every successful word arrival"* | no definition of unsuccessful | one pointer: refusal is REFUSE / R4 in the reduction model and the Pass-6 finite refusal boundary; not a Core row |
| S5 | contracts table | no pointer to Σ = (L, h, K) | one sentence: the whole-app model and its Pass-5 qualification live in `reduction-pass-2-execution-model.md`; hopper `h` and carrier `K` are not Core state |
| S0 | table | no route to the rulings register or the theorem companion | one line each (pass 1 and pass 2 products) |
| S8 | receipt | *"Current campaign: SAMPLING … Pass 6 reconciliation current"* | untouched; a dated **Current steward receipt (audit pass 3)** appended after S12, unnumbered, covering S0–S12 and the Pass-39 overlay |

## Thesis / falsifier

**Thesis.** Nine bounded edits and one appended receipt close every internal-coherence finding. The receipt names: current campaign; what each of S0–S12 is (Core S0–S8 · overlays S9–S12); the open gates; the theorem companion; the rulings register; that no equation changed.

**Falsifier.** `git diff` shows a change to any line containing `\[`, `\]`, `\boxed`, `\mathsf`, `=`, or a table cell whose meaning is not a stamp/label/pointer → the edit is reverted and recorded. Second falsifier: S8's bytes differ → reverted. Third: a new section number appears → reverted (MA-H05 assumes no).

## Steps

1. Pull ff-only · `claim maps "<Identity>"`.
2. Attach labels: *(STAR-1)*, *(PATH-1)*, *(VIEW-1)* beside the three boxes, each with a pointer to its Pass-4 definition; S12.8 gains the same pointer.
3. Qualify the three S-collision phrases in place; add *(sections of this file are `S0`–`S12`; HCC phases and Water states share the letter — see the namespace register)* once, in S9.10.
4. Retie the ten proof stamps to C10 vocabulary with a premises parenthesis pointing at the pass-2 block or companion row; where pass 2 stamped a result `UNESTABLISHED`, write that.
5. The Φ clause in S3.2; the refusal pointer in S2 and S5; the Σ pointer in S5; the S0 routes.
6. Append the current receipt after S12 as an unnumbered `## Current steward receipt — 2026-09-22 (audit pass 3)`.
7. Verify: equation-line diff empty; S8 blob identical; `S0`–`S12` heading set unchanged; `check-docs` links resolve; gate; commit; release; findings with the per-edit table and blob receipts.

## May write / must not

**May write (maps):** `docs/math-execution-model.md` (labels, qualifiers, pointers, stamps, one appended receipt) · `docs/plans/math-execution-audit-pass-3-findings.md` (new).  
**Must not:** change any equation or boxed content · edit S8 · add a section number · touch the satellites (pass 4), the manifest, the pointer draft, `docs/README.md` (handoffs) · write a retain-when.

## Expected vs actual

| | Expected | Actual |
|---|---|---|
| Undefined identifiers | 0 (from 1) | NOT_TESTED |
| Unlabeled Pass-4 theorems in the model | 0 (from 3) | NOT_TESTED |
| Unqualified S-collisions | 0 (from 3) | NOT_TESTED |
| Off-vocabulary stamps | 0 (from 10) | NOT_TESTED |
| Equation lines changed | 0 | NOT_TESTED |
| S8 blob | identical | NOT_TESTED |
| Receipts covering S0–S12 | 1 | NOT_TESTED |
| Human acceptance | ABSENT | — |

## Stop

Stop when the edits and the receipt are committed under one maps claim and released. Pass 4 needs its own claim.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Relabelling the tags on the knots does not move the knots. RM-A remains `[GAP]`.
