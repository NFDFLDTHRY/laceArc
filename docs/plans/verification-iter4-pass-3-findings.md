# Verification iteration 4, pass 3 — findings

**Status:** record. **Station:** maps *(claimed properly at `0509d5c`; `maps` was released at `129bfbe` as premature)*. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 3 plan](verification-iter4-pass-3-plan.md). **Read-only on every other station. One edit on maps' own shelf, named in §7.**

---

## 1. The precondition generalises completely — and costs almost nothing

[The plan's §5](verification-iter4-pass-3-plan.md) proposed that the tree's filing rule — *the product links its provenance* — has an unwritten precondition: the product must be a document. **3a tested it against every non-document product in the tree.**

| Product | Kind | Provenance naming it | Does it link any back? |
|---|---|---|---|
| `coord/coord.sh` | shell | **86** | **0** |
| `clock/lace-projection.html` | app | 31 | **0** |
| `clock/LATEST.json` | data | 13 | **0** |
| `shadow-clock-gearing.html` | app | 11 | **0** |
| `clock/sw.js` | worker | 8 | **0** |
| `gearing/resync.sh` | shell | 5 | **0** |
| `gearing/claim.sh` | shell | 4 | **0** |
| `clock/hcc-a-projection.html` | app | 3 | **0** |
| `hologram/nostd-pipeline.html` | app | 3 | **0** |
| `clock/projection-bake-worker.js` | worker | 2 | **0** |
| `gearing/contracts-axle.js` | shaft | 2 | **0** |
| `plans/tools/hologram-ir-validate.py` | tool | 1 | **0** |
| `graphics/*.png`, `hologram/*.png|jpg` | **binary** | 1–6 each | **cannot** |

**Twelve of twelve text products link none of their own provenance, and the binaries cannot hold a link at all.** The precondition is not a quirk of one viewer; **no non-document product in this repository has ever obeyed the rule.**

**And it almost never matters.** Asking whether that provenance is reachable *at all*:

| Product | Provenance | **Unlinked by anything** |
|---|---|---|
| `coord/coord.sh` | 86 | **0** |
| `shadow-clock-gearing.html` | 11 | **0** |
| `graphics/mechanisms-in-3d.png` | 6 | **0** |
| `gearing/resync.sh` | 5 | **0** |
| `hcc-a-projection.html`, `nostd-pipeline.html` | 3 each | **0** |
| **`clock/lace-projection.html`** | 31 | **8** |
| **`clock/sw.js`** | 8 | **5** |
| **`clock/LATEST.json`** | 13 | **13** |
| **`hologram/clockwork-view-lattice.jpg`** | 5 | **5** |

**Every stranded file is on `docs/clock/passes`. Everywhere else the rule is broken and nothing is stranded by it.**

**Two different measures, kept apart.** *Stranded* here means **linked by nothing at all**. [Pass 2's](verification-iter4-pass-2-findings.md) 36-file clipboards island is a different failure: every file in it is linked, densely, by its siblings — and the whole component has no route from either entrance. A shelf can have zero stranded files and still be unreachable, and `docs/clipboards` is exactly that. §9 gives each its own repair.

**So §5 of the plan was right about the rule and wrong about the cause.** A product failing to link its provenance is universal and harmless. Something else was carrying it, everywhere except one shelf.

## 2. What actually predicts stranding: document siblings

Every shelf holding pass plans, by composition:

| Shelf | `.md` files | Pass plans | **Non-plan documents** | **Stranded** |
|---|---|---|---|---|
| `docs/clipboards` | 85 | 50 | **35** | **0** |
| `docs/kit` | 46 | 30 | 16 | **0** |
| `docs` | 38 | 25 | 13 | **0** |
| `docs/plans` | 42 | 16 | 26 | **0** |
| `docs/graphics` | 20 | 13 | 7 | **0** |
| `docs/history` | 20 | 7 | 13 | **0** |
| `docs/gearing` | 12 | 7 | 5 | **0** |
| `docs/clock` | 22 | 6 | 16 | **0** |
| `docs/hologram` | 10 | 6 | 4 | **0** |
| **`docs/clock/passes`** | **61** | **60** | **1** — the door | **30** |

**One variable, no exceptions.** Where pass plans sit beside documents, nothing is stranded — at 50 plans, at 30, at any size. Where they sit beside only each other, 30 of 60 are stranded.

**Not size.** `docs/clipboards` is the largest shelf in the tree, flat, with 50 pass plans and zero stranded.
**Not the door.** Eight of these ten shelves fail check 8 and have zero stranded.
**Not the product's kind.** §1 settled that.

### The split did not sever anything. It built a room with nothing in it

Dating the 60 against the split at `47ec0f7`:

| | Added |
|---|---|
| The 30 that **are** linked | **all 30 before the split** |
| The 30 that are **not** | **all 30 after the split** |

Perfectly clean, and it corrects the plan's own reading. Nothing was disconnected by the move: the plans that came in arrived with their links and kept them. **Every plan that has arrived since has arrived into a shelf with no document to link it, and not one has acquired a link.**

Phase 5a landed complete — 30 of 30 — and [owed nothing](verification-iteration-3-receipt.md), as already on record. **What it created was a destination whose only document is a door, on a tree where doors are not what carries provenance.**

## 3. What carries provenance, measured

Who actually links pass plans, per shelf, top carrier:

| Shelf | Carrier | Links | Kind |
|---|---|---|---|
| `docs` | `systems-manifest-ascii.md` | 25 | product document |
| `docs/clipboards` | `webnn-clipboard.md`, `wgsl-clipboard.md`, … | 11, 8, 7 | product documents |
| `docs/graphics` | `ascii-iterations.md` | 6 | **campaign index** |
| `docs/clock` | `quiet-door-6-ascii.md` | 6 | **campaign index** |
| `docs/gearing` | `quiet-door-8-ascii.md` | 6 | **campaign index** |
| `docs/history` | `quiet-door-5-ascii.md` | 6 | **campaign index** |
| `docs/hologram` | `quiet-door-7-ascii.md` | 6 | **campaign index** |
| `docs/kit` | `README.md` | 30 | door |
| `docs/plans` | `README.md` | 16 | door |

**Only two shelves in the tree lean on their door.** Everywhere else a document on the shelf does it.

**And one pattern appears on five separate shelves.** The cold-doors campaign ships a `quiet-door-N-ascii.md` beside its plans, on whatever shelf the work lands, every time, carrying exactly six rows — one per pass. It is the same artefact `docs/graphics` uses as `ascii-iterations.md`. **Nobody wrote this down as a rule. Five shelves do it anyway, and all five have zero stranded provenance.**

## 4. Check 8 measures the thing that does not work

| Shelf | Door coverage | Stranded |
|---|---|---|
| `docs/kit` | **100%** | 0 |
| `docs/plans` | **100%** | 0 |
| `docs/clock` | 62% | 0 |
| `docs/gearing` | 61% | 0 |
| `docs/history` | 60% | 0 |
| `docs/hologram` | 51% | 0 |
| **`docs/README.md`** | **50%** | **0** |
| **`docs/clock/passes`** | **50%** | **30** |
| `docs/graphics` | 43% | 0 |
| `docs/clipboards` | 26% | 0 |

**The court door and `docs/clock/passes` have identical coverage and opposite realities.** Forty-five advisory findings fire every session, and the one shelf where a reader actually loses 1,898 lines of finished work is indistinguishable from the nine where nothing is lost at all.

**Check 8 is not wrong about what it measures. It measures doors, and doors are not what this tree uses.** That is evidence for pass 4's re-opening of `D1`/`D2` and it points the opposite way from the obvious reading: gating door coverage would have forced 140 rows onto nine shelves that were never broken, and would not have caught the one that was.

## 5. Read in place: the 30 are a chain, and pass 2 mischaracterised them

[Pass 2](verification-iter4-pass-2-findings.md) called them *"isolated singletons, each linked to nothing, not even each other."* **True of markdown links. False of the reference structure.**

All 30 are `EXECUTED`, 1,898 lines, and they carry **title stamps** on their status lines — `i1`, `i1p4`, `i3p4`, `i5p6`, `ixp1`. **27 distinct stamps over 30 files, no duplicates**, and **26 of the 27 are cited by at least one sibling.** Only `ixp2`, the most recent, is uncited — there is nothing after it yet.

They are a serial debugging record of one WebGPU/PWA viewer across five shader iterations plus interaction, each pass citing the previous pass's evidence by stamp: *"Evidence: `i5p5`, `f=6`, `n=5514`… The lace is invisible."*

**So the chain is intact and the reader cannot enter it.** The remedy is one bridge, not thirty rows — but the stamps are not links, so a reader inside the chain still has to grep to follow it.

### Two anomalies, both mine, caught by reading

My first stamp extraction reported a duplicate (`i1p4` twice) and a mis-numbering (`i2` pass 1 stamped `i1p5`). **Both were the instrument.** `projection-iter1-pass-5-plan.md` writes *Title i1p5* unbackticked, so a backtick-anchored pattern skipped it and took a later line; `projection-iter2-pass-1-plan.md`'s `` `i1p5` `` is a **quotation of the stale title that pass exists to fix**. Read in place: `i1p4`, `i1p5`, `i2p1`, all correct, all unique.

**That is the same use-versus-mention failure this campaign keeps making, and it would have published a false defect against another station's numbering.** It was caught before publication.

### One genuine defect, and it is not ours

`projection-iter2-pass-3-plan.md` carries **two `# H1` lines** — *"githack is not the install origin"* and *"install origin"* — and no `Title` on its status line. Read in history: `137b226` wrote *"Pages is the install origin"*; `5299528` retracted it and prepended the corrected title without removing the superseded one. The status line says **"EXECUTED then RETRACTED on origin."** The file records its own reversal correctly; the residue is cosmetic. **`docs/clock/passes` is hologram's. Reported, not touched.**

## 6. The three remedies, priced

| | What it is | Cost | Maintained by |
|---|---|---|---|
| **A** | 30 rows in `docs/clock/passes/README.md` | 30 now, 6 per campaign forever | **Nothing.** The door gained 0 rows while the shelf gained 30 files |
| **B** | `lace-projection.html` links its passes | One block in a 962-line app | **Nothing, and it would be the tree's first.** 0 of 12 non-document products do this, and 6 of them have fully-linked provenance regardless |
| **C** | **One campaign index document on the shelf**, in the shape the tree already uses — `quiet-door-N-ascii.md`, `ascii-iterations.md` | One file | **The pattern that produced zero stranded plans on five shelves independently** |

**C is the recommendation**, and the honest cost is stated with it: **C does not satisfy check 8.** An index document makes the 30 reachable and leaves the door at 30 of 60, so the advisory keeps firing. §4 is why that is the right trade and not a dodge — but it is a trade, and pass 4 should rule on it knowing that the recommended repair leaves the checker red.

## 7. The one edit this pass made

**The projection title stamps are not in [the namespace register](../namespace-register.md), and they collide.**

| Token | Owner | Owner |
|---|---|---|
| `i1` `i2` `i3` | **projection title stamps** — hologram, `docs/clock/passes` | **graphics ASCII iterations** — graphics, `docs/graphics` |
| `i4` `i5`, `iNpM`, `ixpN` | projection title stamps only | — |

`docs/kit/scanner.md` and `docs/kit/cold-doors.md` also carry `i1`/`i2`/`i3` — **read in place, both are citing the graphics family correctly**, so this is two owners, not three.

Registered on maps, which this campaign holds. **No door row was added and no other station's file was touched.**

### And the register was double-counting itself

Registering the family meant re-deriving the register's headline, which surfaced two defects in maps' own file:

- **`Manifest open question` was registered twice** — once as `1`–`12` *(bare numbers in the source)*, once as `Q1`–`Q12`. Both rows were factually right; together they counted one family as two and put the bare numerals into collision with `Manifest Piece` `1`–`15`. Merged into one row, with the source count verified in place: twelve, at `docs/systems-manifest.md:462`.
- **The published headline was not reproducible.** Running one derivation over the table immediately before and after this pass's edits gives **25 → 27 families and 71 → 72 two-owner tokens**. The file said **26 and 60**. The 26 was the duplicate; **the 60 could not be reproduced by any reading of the table.**

That is the third time this register has carried a headline derived by a method nobody wrote down — it says so itself about the earlier 241 and the earlier 16/33. **The method is now written into the file as arithmetic on its own table**, so the next pass can check it without guessing. No script was committed: that would be adding code, and [the standing order](../../CLAUDE.md) says ask first.

## 8. What pass 3 establishes

- **The filing rule's precondition is universal and nearly free.** No non-document product links its provenance; only one shelf pays for it.
- **Document siblings, not doors and not products, are what keep provenance reachable.** One variable, ten shelves, no exceptions.
- **The split built a room with no document in it.** All 30 stranded plans arrived after it; none arrived with it.
- **Check 8 is blind to the distinction that matters** — identical coverage, opposite realities — which is evidence pass 4 needs and which cuts against gating.
- **The 30 are a chain**, cross-referenced by an unregistered stamp family, needing one bridge rather than thirty rows.
- **Pass 2's "isolated singletons" is corrected**, and my own plan §5's causal claim with it.

**Unapplied and referred up:** remedy C is **hologram**'s (FREE) to write; the four-row clipboards bridge is **clipboards**' (FREE); the double-H1 residue is hologram's; the check 8 question is pass 4's and the human's in pass 5.


## 9. The proposals, written and unapplied

**Nothing below was applied.** Each belongs to a station this campaign does not hold, and iteration 4 §5 forbids adding door rows before a ruling.

### 9a. `docs/clock/passes` — 30 stranded plans — **hologram** (FREE)

**Remedy C.** One campaign index document on the shelf, in the shape hologram's own campaign already ships five times over as `quiet-door-N-ascii.md`, and graphics ships as `ascii-iterations.md`:

- One file, `docs/clock/passes/projection-iterations.md` or beside the product as `docs/clock/projection-iterations.md`.
- Six sections — interaction, iterations 1–5 — each listing its passes **by link and by title stamp**, since the stamps are how the chain already cites itself and a reader inside the chain currently has to grep to follow it.
- 27 stamps are distinct and 26 of them are already cited by a sibling; the index writes down a structure that exists rather than inventing one.

**Stated cost:** this makes all 30 reachable and **leaves check 8 at 30 of 60**, because check 8 measures the door. §4 is the argument that this is the right trade; it is a trade, not a free win.

**Also hologram's, separately:** `projection-iter2-pass-3-plan.md` carries a superseded `# H1` above its corrected one, residue of the retraction at `5299528`. Cosmetic, reported, untouched.

### 9b. `docs/clipboards` — the 36-file island — **clipboards** (FREE)

Not a stranding repair. **Zero files on that shelf are stranded** — the clipboards link their own pass plans, exactly as the door says. The island is unreachable from both entrances, and because its products sit *inside* the island, **the door is the only possible bridge.** This is the one shelf in the tree where a door row is the right instrument.

Measured against the door's own two tables:

| Table | Missing | Rows needed |
|---|---|---|
| `## Clipboards` | 18 documents — `wasm-spec-3`, `webgpu`, `webnn`, `wgsl` (3 each) plus the `agentscope`, `petersen-zech` and `xiao-zhu` machinery and mechanisms | **18** |
| `## Executed pass plans` | 44 plans across 8 campaigns | **7 new campaign rows, 1 amended** (`rowlands` gains passes 5–6) |

That takes the door from **22 of 84 to 84 of 84** and bridges the island in one edit.

### 9c. What is not proposed

- **No shelf is split.** §2 measured what the last split bought.
- **No 30 door rows on `docs/clock/passes`.** Remedy A is priced in §6 and maintained by nothing.
- **No bibliography in `lace-projection.html`.** Remedy B would be the tree's first instance of a practice 12 of 12 products decline.
- **The cross-shelf quiet-door island stays cold-doors'.** Untouched for the third pass running.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

We kept saying the door was the problem. **Ten shelves say otherwise: what makes a length of lace findable is another length of lace lying next to it, tied on.** The one shelf we tidied has sixty plans and nothing to tie them to. Emission remains `[GAP]`.
