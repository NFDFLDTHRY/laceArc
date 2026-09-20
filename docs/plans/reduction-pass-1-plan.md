# The reduction — pass 1 plan: what a builder must read, and whether that set is closed

**Status:** **`PLAN`. Not executed.** The human added budget and said plan all six (22:11 PT); passes 2–6 have their own plan files. **Budget weighting:** the mathematical model of execution (pass 2) is the #1 result; the companion (pass 3) and the agentic apparatus (pass 4) the other two. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Campaign:** *the reduction* — the human's name for it, 2026-09-19 21:58 PT: *"claiming the door of repo reducer / future downstream shape architect of global systems cohesion."* **Board pinned at:** `e2e8155` (origin/main) + branch `lace-context-iteration-6` tip. **Editor:** Claude Fable 5.1 (cloud; bundles, not pushes). **Inherits:** [iteration 7 receipt](lace-context-iteration-7-receipt.md).
**Cadence:** this file first; *Proceed* only on the human's word; findings to `reduction-pass-1-findings.md`; then this status line flips to `EXECUTED` with the link and says whether the falsifier fired.

---

## 0. What "claiming the door" is, and is not

In this tree a **door** is a shelf's index — the page a reader enters through (`docs/README.md` is the court door; each shelf has one). A **claim** is a station lock. The human's sentence asks for both a role and a door:

| Asked | Read as | Who grants it |
|---|---|---|
| *repo reducer* | a campaign that produces a **reduced view** of the tree: the smallest set of documents from which the downstream shape can be built under the law, each cited to the tree it is reduced from | this plan, if the human says proceed |
| *future downstream shape architect* | the editor of the shape (iteration 6 pass 5) and the environment (pass 4) carries them forward as the reduction's spine | already held (maps) |
| *of global systems cohesion* | the reduced set is one coherent system, not a reading list: every component in the [inventory](lace-context-iter7-pass-2-compute-and-inventory.md) §6 traces to exactly one document in the set | pass 1 measures; pass 2 tests |
| *the door* itself — a new shelf with an index | a **coord-station act** (a new `OWNS` line) and therefore **a human ruling**, not this plan's to take | the human, pass 5 |

**Reduction is a view, never a deletion.** The tree applies Rule Zero to itself — *correct in the open; a wrong number is replaced with the correction attached, never deleted* ([verification-iterations §3](verification-iterations.md)). Nothing this campaign produces removes, moves or rewrites a file. What it produces is a door that says *read these, in this order, and here is what each settles and leaves open* — and, for everything else, *provenance: needed to check, not to build.*

---

## 1. Measured at the pin, before this plan proposes anything

| Measure | Value | Method |
|---|---|---|
| Tracked files | **535** (461 markdown) | `git ls-files` |
| Pass-plan files | **252** — 55% of all markdown | name pattern `-pass-N-plan.md` |
| Headers saying `EXECUTED` / `HELD` / `CLOSED` | 289 / **128** / 40 | first six lines of each `.md` |
| The nine reference shelves | **83 files** | `docs/clipboards/` by shelf name |
| What those 83 files yield to the environment | **13 fences** (E3) and 9 cite-cards (G-III) | [pass 4](lace-context-iter6-pass-4-environment.md) E3 |
| The global companion | **2,795 lines**: Core region (passes 1–6) **553** · Layer III + steward (passes 7–27) **2,242** | section offsets |
| Citation closure from the shape, depth 1 | **11 files** | follow relative links once from [the crate proposal](lace-context-iter6-pass-5-crate-proposal.md) |
| depth 2 / depth 3 | 70 / 131 | same, transitively |

**Two readings of those numbers, both premature until pass 1 runs:**

- The depth-1 set is 11 documents. With the four PNGs, the manifest, `AGENTS.md`, the law and the emission draft, that is **≤ 19 documents** a builder would open. The other **≥ 516 files** would be provenance.
- Link-closure over-counts (a link is not a dependency) *and* under-counts (a fact used without a link is missed). **The real set must be computed by walking claims, not links.** That is the work of this pass.

---

## 2. One question

**Is there a set S of documents, small and enumerable, such that every claim the shape and the environment make is sourced inside S ∪ {the four PNGs, the manifest, the law}, and S is derivable from the tree by citation — so that a builder who reads only S can build under the law and a checker who reads the rest can check?**

## 3. Thesis, stated so it can lose

**S exists and has fewer than twenty members; the nine reference shelves contribute at most three of them; the companion contributes only its Core region and the Pass 26/27 boxes; everything else in the tree is provenance.**

**Falsifier:** a claim in the shape or the environment whose nearest source is a file outside S — and adding that file to S drags in more than five others. If that happens twice, the reduction is not small, and the receipt says so instead of hiding the growth. **Pass 1 has been written twice in every prior iteration; expect S to grow on the Proceed turn and record the growth.**

## 4. The work

| | Step | Reads | Writes |
|---|---|---|---|
| **1a** | **Claim walk.** Every stamped claim in [the shape](lace-context-iter6-pass-5-crate-proposal.md) (sheets T, R, H, C, S, E; coherence table; R1–R8), [the environment](lace-context-iter6-pass-4-environment.md) (E1–E7), [the compute model](lace-context-iter7-pass-2-compute-and-inventory.md) (§1–§7) and [the distribution amendment](../kit/distribution-model.md) — for each, the **nearest source** that settles it, by file and section | those four + whatever they cite | a claim → source table |
| **1b** | **Compute S.** The set of nearest sources. Then the closure question: does any member of S depend on a file outside S for a claim a builder needs? | S | S with a *why* per member |
| **1c** | **Classify the remainder.** Every other tracked file into one of: **provenance** (how a member of S was arrived at — pass plans, receipts, audits), **dated** (headers `HELD` / `CLOSED` / superseded), **duplicate under another name** (the companion's own finding pattern), **steward apparatus** (stations, kit, prompts). Counted, not judged | all 535 | a classification table with counts |
| **1d** | **The reduced companion, as a view.** Which lines of `systems-manifest-ascii.md` a builder needs: expected to be the Core region plus the P27-D boxes and the Open board. Measured in lines; the full companion is untouched | the companion | a line-range proposal |
| **1e** | **The door, proposed.** A draft `README` for a shelf that does not yet exist, listing S in reading order with one line per file — *what it settles · what it leaves open · what it must not be read as*. Delivered as a section of the findings, **not as a file on a new shelf** (coord ruling) | S | the draft door |
| **1f** | **The board for passes 2–6** | — | see §5 |
| **1g** | **The generator.** On the human's word (22:02 PT: *"the 6 pass proposal generator I am asking for"*): a paste-ready prompts-station file that turns one convening sentence into six pass plans in this cadence — measured premise · one question · thesis with falsifier · steps · may-write / must-not · expected vs actual · stop | `verification-iterations.md`; the template §1; this plan as the worked instance | `docs/prompts/six-pass-proposal-generator.md` |

## 5. Passes 2–6, scoped now, planned each in its own file when reached

| Pass | Question | Product |
|---|---|---|
| **2** | **Cold-reader test.** An agent that has never seen the tree reads only S (and the PNGs) and answers twenty questions drawn from the shape — can it? Every wrong or unanswerable question names the missing document | the test and its score, as fractions |
| **3** | **The reduced companion view** — written out, cite-only, pointing at the full companion by line | a maps record |
| **4** | **The checker** — the reduction's executable form: E7 STEP 4 on the D1 witness and on any candidate σ, plus G2/G3 (import/export sections) on a `.wasm`, as a Layer III page; the *simulation* the human named as #1 | a specification, then a page on renderer |
| **5** | **Rulings** (the human): the door as a shelf (coord `OWNS` line); R1–R11; #14, #15; the reference queue | a brief; nothing taken by the agent |
| **6** | **Receipt** | coverage as fractions; what grew; the next board |

## 6. What execute may write

- `docs/plans/reduction-pass-1-findings.md` (new; maps).
- `docs/prompts/six-pass-proposal-generator.md` (new; prompts) — step 1g.
- One row in `docs/plans/README.md`.
- This file's status line, flipped to `EXECUTED` with the link and the falsifier's result.

Nothing else. One station. One commit per station.

## 7. What execute must not do

- Delete, move, rename or rewrite any file. The reduction is a door, not a broom.
- Create `docs/shape/` or any new shelf, or edit any `.station` `OWNS` line — coord's, by human ruling.
- Edit the law, the graphics, the manifest, the emission draft, any clipboard, or the companion (pass 3 is a *view*).
- Treat *dated* as *wrong*, or *provenance* as *disposable*. A file outside S is still the reason a file inside S can be trusted.
- Fill Φ. Take a ruling. Import an older-lineage term.

## 8. Expected observation vs actual

| | |
|---|---|
| **Expected** | S between 11 and 20 files; the nine shelves contribute ≤ 3 (wasm-spec-3 certainly; webgpu and wgsl possibly, for the renderer); the companion contributes ≤ 700 lines as a view; ≥ 500 files classify as provenance / dated / steward; the falsifier fires at most once |
| **Actual** | `NOT_TESTED` |
| **Physical evidence** | `NOT_PERFORMED` — a document walk; the four PNGs will be re-opened for any claim that cites a panel |
| **Human acceptance** | `ABSENT` — a plan |

## 9. Stop condition

The findings enumerate S with a *why* per member; every other file is classified with a count; the reduced companion is a line range; the draft door exists as a section; the falsifier's result is stated in this file's status line. Then stop. Pass 2 gets its own plan.

## 10. Permission scope

Documentation on maps, under the human's convening words and the freeze. No push credential; bundle. No enforcement claimed.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

You can hand someone the one page that says how to tie the knot, and keep the shelf of every attempt behind you. Emission remains `[GAP]`.
