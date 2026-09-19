# Verification iteration 4, pass 6 — the receipt

**Status:** `[PLAN]`. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 4](verification-iteration-4-plan.md). **Prior:** [pass 5 record](verification-iter4-pass-5-findings.md).
**Board pinned at:** `a927668` — **497 tracked files, 423 markdown, 977 commits.**

## 0. What pass 6 is

[The iteration plan](verification-iteration-4-plan.md) sets it: *"Receipt, and whether the coherence brief is discharged or continuing."*

**The receipt is the deliverable. The brief question is the ruling.** §4 states it so it can lose.

## 1. Probing first: the number the whole iteration turns on

[Iteration 4 §6](verification-iteration-4-plan.md) accepts the iteration only when *"the receipt says whether a reader entering at the court door can now reach what the law says they should."* **That walk was re-run at `a927668` before this plan was written.**

| | Pass 1 | **Now** |
|---|---|---|
| Markdown files | 379 | **423** |
| **Unreachable from the entrances** | **97 — 26%** | **39 — 9%** |

**And the remaining 39 are one thing.**

| | Pass 1's three structures | Now |
|---|---|---|
| The clipboards island | 36 | **0** — bridged in pass 5 |
| The `clock/passes` singletons | 30 | **0** — indexed in pass 5 |
| **The cross-shelf quiet-door island** | 32 | **39** |

**Every one of the 39 is a quiet-door file. Zero exceptions, measured not assumed.** They sit on `docs/clock` (8), `docs/gearing` (8), `docs/history` (8), `docs/hologram` (8) and `docs/coord` (7) — **five shelves that campaign does not own.** Its 24 files on `kit`, which it does own, are all reachable.

**So the one structure this campaign declined to touch, three passes running, is now the entire remaining problem** — and [pass 2](verification-iter4-pass-2-findings.md) predicted exactly that: *"A campaign whose output lands on four shelves it does not own has no single door to add a row to."* It is five shelves now.

**This is not that campaign's carelessness. It is a hole in the station model**, and no door row can close it.

## 2. The acceptance criteria, answered

| [§6](verification-iteration-4-plan.md) requires | Verdict |
|---|---|
| *The 106 are read and each is stranded, internal-by-design or superseded* | **Met, and the count was wrong.** [Pass 2](verification-iter4-pass-2-findings.md) read 98 and found three structures, not one |
| *The two oversized shelves have a proposal or a reason to stay flat* | **Met, and the question was wrong.** [Pass 3](verification-iter4-pass-3-findings.md): no door in this tree lists 84 rows, size predicts nothing, and a 50-plan flat shelf strands nothing |
| *`D1`/`D2` are re-ruled against evidence rather than the corrected premise* | **Met. They hold** — [pass 4](verification-iter4-pass-4-findings.md), on a replay neither earlier iteration had run |
| *The receipt says whether a reader can reach what the law says they should* | **§1. 26% → 9%, and the 9% is one campaign's** |

## 3. Did the thesis hold?

> [Iteration 4 §3](verification-iteration-4-plan.md): **This tree is coherent at the station level and incoherent at the reader level.**

**Both halves held, and the second was fixable in an afternoon.**

| | Pass 1 | Now |
|---|---|---|
| **Unowned paths** | **0** at 451 files | **0** at 497 |
| Unreachable | 97 | 39 |
| Advisory findings | 44 | **11** |

**Station ownership is still the only structural property that has never regressed.** It has survived from 220 files to 497.

## 4. The brief question, stated so it can lose

**Thesis: the coherence brief is discharged as work and not discharged as a property, and those are different answers to different questions.**

**The case for discharged:**

- Reachability 26% → 9%, and **every remaining file belongs to one campaign, named and handed over.**
- Advisories 45 → 11; orphans 35 → 2, both of those a live campaign's current plans.
- **Every instrument with a measured defect is fixed or honestly named** — four checks in iteration 2, check 6's four false positives and `F7` in pass 5.
- What is left is **six human rulings**, and no iteration can do those.

**The case for continuing:**

- **The 39 are a coord-protocol finding nobody has ruled.** A campaign that lands work on shelves it does not own has no door. That is not a door problem and not fixable by this campaign.
- **Nothing maintains any of it.** [Pass 4](verification-iter4-pass-4-findings.md) measured the tree's only two working mechanisms — a habit at 58% and a campaign on demand — and **pass 5 was the campaign.** [Pass 3](verification-iter4-pass-3-findings.md) measured what happens next: `docs/clock/passes` landed **complete** at `47ec0f7` and was half dark within one campaign's work.
- **So pass 5's repairs will decay exactly as the originals did, and this iteration has now demonstrated both halves of that.**

**Falsifier, and it must be made measurable rather than argued:** if the numbers in §1 and §3 hold at a future pin without another campaign being convened, then the brief is discharged as a property too and the habit is stronger than pass 4 measured. **6c exists to make that check possible.**

## 5. What pass 6 does

| | Work |
|---|---|
| **6a** | **The receipt in fractions.** Every pass: what it established, what it could not, what it corrected. No pass reported as a success that was a correction |
| **6b** | **The corrections ledger.** Every claim this iteration published and then withdrew, **including the ones nobody else would have caught.** Iteration 4 has at least nine, and the largest — pass 4's thesis — lost to a falsifier this campaign wrote for it |
| **6c** | **Set the decay baseline.** Record today's numbers as a dated pin so a later reader can measure whether pass 5's repairs held **without re-deriving the method.** This is the one piece of new work the receipt does, and it is what §4's falsifier needs |
| **6d** | **Answer §4**, and if the answer is *continuing*, say what iteration 5 is for — **or say plainly that it should not exist.** A campaign that cannot name its next question should stop |

**Carried forward, and the receipt must list them rather than bury them:** `D10`, `D11` — **the `src/` gate** — `D12`, `D13`, the twelve remaining branch commits, and the quiet-door structural finding from §1.

## 6. What pass 6 must not do

- **Not repair the 39.** Another campaign's, on five shelves it does not own, and the finding is structural. **Naming it is the work; fixing it is not this campaign's to do.**
- **Not claim the brief is discharged because the numbers moved.** §4 is two questions and they have different answers.
- **Not report a corrected finding as an original one.** 6b exists because that is the easiest lie to tell in a receipt.
- **Not open iteration 5 in this document.** 6d says whether there should be one and what it would ask. That is all.
- **Not rule the six human items**, and not re-open `E1`, `E2`, `E5`, `D1`, `D2`.
- **Not fill `[GAP]`.**

## 7. Accept pass 6 when

Every pass is reported in fractions with its corrections attached; the ledger is complete enough that a reader can see what this campaign got wrong without reading six documents; today's numbers are pinned in a form a later reader can re-measure against; and §4 is answered with the case that lost written down beside the case that won.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

The tree came in with a quarter of itself unreachable and leaves with a tenth, and the tenth is one campaign's work lying across five shelves with nothing to tie it to. **We did not tighten anything. We tied two ends on, and the third end is not ours to hold.** Emission remains `[GAP]`.
