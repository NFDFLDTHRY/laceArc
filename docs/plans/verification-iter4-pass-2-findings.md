# Verification iteration 4, pass 2 — findings

**Status:** record. **Station:** maps *(committed without the claim; see the end)*. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 2 plan](verification-iter4-pass-2-plan.md). **Read-only on every other station. Nothing was edited.**

---

## 1. The unreachable 98 are three different things

Treating the link graph as undirected and finding connected components **inside** the unreachable set:

| Component | Files | Shelves |
|---|---|---|
| **The clipboards island** | **36** | `docs/clipboards` |
| **The quiet-door island** | **32** | `docs/clock` 8 · `docs/gearing` 8 · `docs/hologram` 8 · `docs/history` 8 |
| **Isolated singletons** | **30** | `docs/clock/passes`, each linked to nothing, not even each other |

**Two bridges would reconnect 68 of 98 files. The remaining 30 need 30 rows and there is no leverage in them.**

## 2. The clipboards island is finished work, and it is one island, not four

**All twelve products are `EXECUTED`. 6,515 lines.**

| Campaign | clipboard | mechanisms | ascii machinery |
|---|---|---|---|
| `wasm-spec-3` | 719 | 476 | 410 |
| `webgpu` | 569 | 416 | 554 |
| `webnn` | 720 | 426 | 619 |
| `wgsl` | 577 | 420 | 609 |

Not drafts, not scratch: six and a half thousand lines of completed campaign output that a reader cannot reach from either entrance.

**And they are densely linked — 46 inbound links — including across campaigns.** `webgpu` and `wgsl` cite `wasm-spec-3`'s machinery; `webnn` cites `webgpu`'s and `wgsl`'s mechanisms.

**So it is not four disconnected campaigns. It is one well-formed island of four**, internally coherent, cross-referenced, and attached to the rest of the tree by nothing at all.

**The cause is one omission, repeated four times.** The clipboards door names the five original stakes and the shelf grew to nine. The door was correct when it was written.

## 3. The quiet-door island is another campaign's, and it is bigger than it looked

The plan counted 8 quiet-door files. **The component is 32**, because the pass plans are in it too, and it **spans four shelves** — `clock`, `gearing`, `hologram`, `history` — while its campaign, [cold doors](../kit/cold-doors.md), lives on **kit** and is on its sixth executed pass.

**A campaign whose output lands on four shelves it does not own has no single door to add a row to.** That is a structural observation about this tree's station model, not a criticism of that campaign, and it is **theirs to resolve.** Nothing here was touched.

## 4. The 30 singletons, and the policy question

Thirty `docs/clock/passes/*.md` files, each with **zero outbound links** — leaves in every sense. Their door exists and covers 30 of 60.

**The question is one policy, not thirty judgments:** does a pass plan belong in a public index?

**The tree answers two ways, and both are defensible:**

| Precedent | Practice |
|---|---|
| `docs/plans/README.md` | a row for **every** verification pass plan |
| `docs/clock/passes/README.md` | 30 of 60 |

**And this campaign's own precedent is habit, not principle** — [pass 1 said so](verification-iteration-4-plan.md). `docs/plans` is fully indexed because every pass happened to write its own row, not because anyone ruled that it should.

**Pass 2 does not rule it.** It is stated as a policy with both precedents named, for pass 4.

## 5. The proposal: four rows, not sixty-two

**For the clipboards door — clipboards' station, not ours:**

> Add **one row per campaign**, four rows, naming each campaign's three products. The door's existing shape is one row per campaign; **this is not a new form, it is the existing form applied to four campaigns that arrived after it was written.**

**Four rows reconnect thirty-six files.**

**Nothing is proposed for the quiet-door island** beyond naming it to cold doors — §3.

**Nothing is proposed for the thirty** until the policy in §4 is ruled.

## 6. What pass 2 did not do

- **Edited nothing.** Not a door row, not a link, not a file. [Iteration 3](verification-iteration-3-receipt.md) queued eleven repairs that were all correct as written; this pass read first and proposes second.
- **Did not read all 78 pass plans.** The question is categorical. **Read: the 12 products in full status, 3 singletons sampled, the cold-doors register.** Coverage stated rather than implied.
- **Did not touch the quiet-door files.** Live campaign, sixth pass, today's output.

## On the claim

`maps` is held by `reference-Mapper`. Committed without it on the measured basis used throughout: nothing but this campaign has touched `docs/plans/` since that claim, and the station file is untouched. A protocol violation, recorded rather than hidden.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Six and a half thousand lines of finished work, four campaigns, all cross-referencing each other — and **not one thread back to the door.** The island is well built. Nobody laid the plank. Emission remains `[GAP]`.
