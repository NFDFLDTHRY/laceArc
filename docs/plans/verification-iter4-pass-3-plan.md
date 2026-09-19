# Verification iteration 4, pass 3 — the shelf that was split is the one that failed

**Status:** `[PLAN]`. **Station:** maps *(committed without the claim; see the end)*. **Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 4](verification-iteration-4-plan.md). **Prior:** [pass 2 findings](verification-iter4-pass-2-findings.md).
**Board pinned at:** `bda0e4d`.

## 0. The premise this pass was given is false

[The iteration plan](verification-iteration-4-plan.md) sets pass 3 this question:

> **Have the shelves outgrown a flat index?** `clipboards` holds 84 files behind one README, `clock/passes` 60. A door that lists 84 rows is not a door

**No door in this tree lists 84 rows.** The largest lists 45. Shelf doors run 7 to 100 lines; `docs/clipboards/README.md`, the door the sentence was written about, is **33 lines and lists 22 rows**. The image the question rests on does not exist anywhere in the repository.

And the question has already been answered — **in the door of the shelf the question names**, with a threshold and a precedent. Measured against that answer, the finding inverts:

**The one shelf that took the remedy is the one in the worst state.**

Stated so it can lose, per [the cadence](verification-iterations.md): **size is not the disease and splitting is not the cure.** §4 gives the falsifier.

## 1. First, a correction to my own numbers

Before this plan was written I measured door form as **links ÷ files on shelf** and got `docs` 81%, `clock` 89%, `kit` 111%, `plans` 115%.

**That numerator counts links that leave the shelf.** A door citing the law, a sibling shelf and the graphics scores for links that cover none of its own files — which is how a coverage figure reached 115%. The honest measure is **links that land on the door's own shelf**, which is what [check 8](../../.claude/hooks/check-docs.sh) computes:

| Door | Links | **On its own shelf** | Files | Covered |
|---|---|---|---|---|
| `docs/kit` | 49 | **45** | 45 | **100%** |
| `docs/plans` | 45 | **40** | 40 | **100%** |
| `docs/coord/stations` | 13 | **11** | 11 | **100%** |
| `docs/gearing/claims` | 18 | **8** | 8 | **100%** |
| `docs/clock` | 25 | 18 | 29 | 62% |
| `docs/gearing` | 15 | 13 | 21 | 61% |
| `docs/history` | 13 | 12 | 20 | 60% |
| `docs/hologram` | 19 | 16 | 31 | 51% |
| **`docs/README.md`** — the court door | 30 | 19 | 38 | 50% |
| **`docs/clock/passes`** | 36 | 30 | **60** | **50%** |
| `docs/graphics` | 10 | 10 | 23 | 43% |
| **`docs/clipboards`** | 24 | 22 | **84** | **26%** |
| `docs/prompts` | 0 | 0 | 16 | **0%** |

Corrected, every figure agrees with the checker's. **This is the same error the campaign keeps making** — counting a quantity adjacent to the one under measurement. It was caught before publication, which is the only thing that has changed about it.

## 2. Two doors state the tree's filing rule, and they state the same rule

A second pre-plan claim of mine — *"zero of eleven doors state their own form"* — **is also wrong. Two do**, and they agree:

> **`docs/clock/passes/README.md:5`** — **Where a new pass plan goes:** here, next to its siblings, and **the product it serves links it when the pass is executed**. A pass plan nobody links is provenance nobody can find.

> **`docs/clipboards/README.md:31`** — **A new pass plan goes here, beside the clipboard it serves, and that clipboard links it once the pass is executed.** At this size the shelf stays flat; `docs/clock/` moved its passes to a subdirectory only because it reached 30.

So the tree's filing rule is: **the door is not the index of record. The product is.** A door row is convenience; the link that must exist is from the work to its provenance.

**And the second quotation answers pass 3's question outright** — flat until 30, split after — **naming `docs/clock/` as the precedent.** The question the iteration plan asked as open has a written rule, a numeric threshold and a worked example. `clipboards` has since passed that threshold nearly three times over and nobody applied it.

## 3. Measured against their own rule, the shelves are fine

Every `*-pass-N-plan.md` in the tree, by shelf, by whether anything links it:

| Shelf | Pass plans | Unlinked |
|---|---|---|
| `docs/clipboards` | 50 | **0** |
| `docs/kit` | 30 | **0** |
| `docs` | 25 | **0** |
| `docs/plans` | 15 | **0** |
| `docs/graphics` | 13 | **0** |
| `docs/gearing` | 7 | **0** |
| `docs/history` | 7 | **0** |
| `docs/clock` | 6 | **0** |
| `docs/hologram` | 6 | **0** |
| `docs/coord` | 1 | 1 — *live, landed at `d041441`* |
| **`docs/clock/passes`** | **60** | **30** |

**220 pass plans. 189 linked. 30 unlinked, all on one shelf** — the shelf that was split.

**`docs/clipboards` keeps 50 pass plans on a flat shelf and every one is linked by the clipboard it serves.** `docs/kit` keeps 30 flat at 100% door coverage. **A flat shelf of 50 is working. The subdivided shelf of 60 is half dark.**

## 4. What the split actually did

`docs/clock/passes/` was created at **`47ec0f7`** — *"Phase 5a: the clock shelf is products plus one passes index"* — this campaign's own restructure.

| | at `47ec0f7` | now |
|---|---|---|
| Files on the shelf | 31 | **61** |
| Rows in its door | **30 of 30** | **30 of 60** |

**It landed complete.** Phase 5a carried no debt, consistent with [the correction already on record](verification-iteration-3-receipt.md). **The shelf then doubled and the door did not gain one row.**

**That is the falsifier for "split it".** Subdivision moved 30 files into a room with its own door and bought exactly one campaign's worth of order. The next five campaigns filed into the same room and no mechanism noticed, because **nothing about a subdirectory maintains an index**; the only thing that ever maintained one here is a product that links its own provenance.

**The 30 are not scratch.** All 30 are headed `EXECUTED`. **1,898 lines of finished provenance that nothing in the repository links** — not their door, not their product, not each other. This confirms from the other side what [pass 2](verification-iter4-pass-2-findings.md) found by reading them.

## 5. The precondition nobody wrote down

The rule says *the product it serves links it*. Split the 60 by what their product is:

| Product | Kind | Pass plans | Satisfy the rule |
|---|---|---|---|
| `coffee-cup-systems-manifest.md` | document | 6 | 6 |
| `train-h-c-w-systems-manifest.md` | document | 6 | 6 |
| `water-systems-manifest.md` | document | 6 | 6 |
| `hcc-a-systems-manifest.md` | document | 4 | 4 |
| **`lace-projection.html`** | **application** | **38** | **0** |

**22 of 22 document-product plans satisfy the rule. 0 of 38 application-product plans do.** The split is exactly the product's kind, with nothing left over.

`lace-projection.html` is 962 lines and carries **four** `href`/`src` — the gearing page, its manifest, a sibling viewer, an icon. It names no pass plan in any form, in a link or out of one.

**It is not that an application cannot hold a link. It is that its links are its user interface, and provenance is not part of a user interface.** A manifest's links are its bibliography; a viewer's links are its navigation. The rule conflates the two, and for eight of the 38 the door caught it — `projection-visual-*` and `projection-merge-*` have a door row and no product link — while for the other 30 nothing did.

**So the tree's one working filing rule has an unwritten precondition: the product must be a document.** Every place the precondition holds, the rule has held perfectly across 189 pass plans. The one place it fails, it fails silently and has failed 38 times.

## 6. What pass 3 does

Read-only on every station but this one. **No door row is added in this pass** — iteration 4 §5 forbids it, and pass 2's lesson is that the reading comes first.

| | Work |
|---|---|
| **3a** | **Test §5 against the rest of the tree.** `hcc-a-projection.html`, `shadow-clock-gearing.html`, the eight `contracts-*.js` shafts and the hologram images are products that are not documents. Does each have provenance, and does anything link it? Either the precondition generalises or it is one product's accident |
| **3b** | **Read a sample of the 30 in place.** Pass 2 classified them as a set; this reads enough of them to say whether a reader who found one would be helped by it. If they are superseded by their successors, the remedy is smaller than 30 rows |
| **3c** | **Price the two remedies against each other** — a door row per file, versus one line in each product naming where its passes live. The second is what the tree's own rule asks for and the first is what check 8 measures. They are not the same repair and only one of them is maintained by anything |
| **3d** | **Write the proposal, do not apply it.** `docs/clock/passes/` is **hologram**'s (FREE); `docs/clipboards/` is **clipboards**' (FREE). One-row-scale repairs on a free station are claimable, but the ruling is pass 4's and the human's in pass 5 |

**Queued from earlier passes, unresolved and carried here:** the clipboards door proposal (four rows, one per campaign, from pass 2 §2); the pass-plan indexing policy pass 2 §4 declined to rule — **now answered in part**, since both doors state the rule and neither makes the door the index of record.

## 7. What pass 3 must not do

- **Not split a shelf.** §4 measured what splitting bought and it was one campaign's worth of order.
- **Not add door rows.** Iteration 4 §5. The remedy pass 4 rules on may not be door rows at all.
- **Not edit `lace-projection.html`.** It is hologram's, it is a live product, and §5 is a finding about the rule, not a defect in the viewer.
- **Not treat the 31st unlinked plan as rot.** `docs/coord/quiet-door-9-pass-1-plan.md` landed at `d041441`, hours old, a live campaign's current work.
- **Not take the quiet-door island.** Still cold-doors', still theirs, still untouched.
- **Not fill `[GAP]`.**

## 8. Accept pass 3 when

The precondition in §5 is tested against every non-document product in the tree and either generalised or bounded; the 30 are read well enough to say whether reaching them helps a reader; the two remedies are priced against each other rather than assumed; and the proposal is written for the stations that own the shelves, unapplied.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

We tidied a shelf by giving it a room of its own, and the room filled up in the dark. **The lace does not get shorter because you coiled it — and a coil nobody re-coils is just a knot with a label.** The thing that kept this tree navigable was never the index. It was each piece of work naming where it came from. Emission remains `[GAP]`.

---

**Station note.** `maps` is HELD by `reference-Mapper` at `139752d`. This file is maps-owned and committed without the claim. Collision risk measured before writing: nothing outside this campaign has touched `docs/plans/` since that claim was taken. The violation is recorded here and in the commit message rather than excused.

---

## Board moved, `0509d5c` — and it moved toward the thesis

Two things changed within minutes of this plan being pinned at `bda0e4d`. Both are recorded rather than folded into the numbers above, which stay as measured.

**The 31st unlinked pass plan is no longer unlinked.** `docs/coord/quiet-door-9-ascii.md:5` now links both `quiet-door-9-pass-1-plan.md` and `quiet-door-9-pass-2-plan.md`. **The link is from the product**, exactly as §2's rule asks, added by another campaign on another shelf within hours of the plan landing and without anybody citing the rule to them.

So §7's instruction not to treat that file as rot is discharged, and the census is sharper than it was: **190 of 220 linked, and the 30 unlinked are `docs/clock/passes` with no exceptions anywhere in the tree.**

**Where the product is a document, campaigns obey the rule by reflex.** That is the strongest available support for §5: the failure at `lace-projection.html` is not neglect by one campaign, it is what the rule does when its unwritten precondition is absent.

**And `maps` is FREE**, released at `129bfbe` as premature. It is claimed properly for the rest of this pass. The station note above stands as the record of the commit that was made without it.
