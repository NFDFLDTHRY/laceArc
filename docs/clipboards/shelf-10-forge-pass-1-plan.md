# Shelf 10 — the forge · PLAN

**Status:** **`EXECUTED`** 2026-09-20. **Station:** clipboards. **Emission:** `[GAP]`. No `src/`.
**Authorised by the human:** *"the clipboards for both rustc and cargo can be forged."*
**Products:** [`cargo-build-std-locators.md`](cargo-build-std-locators.md) (new) · [`rust-target-locators.md`](rust-target-locators.md) run 5 · a forge section attached to [each](rust-target-clipboard.md#shelf-10-forge--the-traceability-gate-and-the-coverage-map) [clipboard](cargo-build-std-clipboard.md#shelf-10-forge--the-locator-carry-and-the-traceability-gate--executed).
**Authority:** `refs/local/The-rustc-book.txt` · `sha256 4a30e620…4e74d3` · and `refs/local/The_Cargo_Book.txt` · `sha256 9d7048e1…63c0a5`. **Not authority:** anything in this repository.
**Prior:** locator passes [1](rust-target-locators-pass-1-plan.md) · [2](rust-target-locators-pass-2-plan.md) · [3](rust-target-locators-pass-3-plan.md), all EXECUTED, on A1 only.

---

## 0. What "forged" means here, and why it is not a synonym for "finished"

The word is the human's, and it carries their own meaning from work outside this tree: **forged documents as the single source of truth, fail-closed, with mechanical traceability to requirement IDs** ([the structural-alignment record](../plans/structural-alignment-pass-1-plan.md) §1).

Read against shelf 10, that is three demands, and the shelf met none of them before this pass:

| Demand | Shelf 10 before |
|---|---|
| **Single source of truth** | Both books are gitignored. Every eye entry and every mechanism was an assertion about a file no other session could open |
| **Mechanical traceability** | Locators were *verified by `grep -n`* at the time of writing, by the writer, once. No check survived into the repository |
| **Fail closed** | A claim whose evidence was unreachable looked exactly like a claim whose evidence was solid |

**So the forge is not more mapping.** It is the two questions nobody had asked of work already done: **are the quotes right**, and **how much of what these pages cite can anyone else actually reach?**

## 1. Scope — what this pass does

1. **Carry A4.** The cargo book had no extract at all. Three runs: the `build-std` chapter whole (8726–8772), the config form (8373–8379), the feature-list row (8411).
2. **Gate both clipboards.** Every `*"…"*` fragment re-read against **its own cited lines** — not the book at large, which would pass a wrong locator.
3. **Map A1's coverage fail-closed.** A mechanism counts as carried only when *every* range it cites is inside a carried run.
4. **Bound what is left.** Merge the uncarried ranges and count them, so the extract job stops being open-ended.
5. **Attach, never edit.** Executed pass bodies are dated records; findings go in attached sections, the way the repository-update carries already do.

**Not this pass:** the five uncarried clusters (that is the extract job's pass 4 and after); any ruling; any build; any `[GAP]` closure; any edit to an executed body.

## 2. Thesis, stated so it can lose

**The shelf's claims are sound and its reach is short — the defects are in what cannot be checked, not in what was written.**

**Falsifier.** If the gate finds a quote that does not stand at its cited lines, or a locator pointing at the wrong sentence, the thesis is wrong in the worse direction and the pass becomes a correction pass, not a carry.

**Second falsifier.** If A1's coverage comes out near-complete, the coverage map is busywork and the pass should shrink to the A4 carry alone.

## 3. This pass must not

- **Not repair the source silently.** A4's text lost its `fl`/`fi` ligatures; the rows carry the damage as it stands. A repaired quote inside a column headed *Verbatim* is the defect this pass exists to find.
- **Not carry a fragment that fails the first-line test.** Record it and say which.
- **Not edit an executed pass body**, not commit either book, not fill a `[GAP]`, not become authority.
- **Not commit a script.** The gates run in the scratchpad and publish their numbers; [the standing order](../../CLAUDE.md) requires the human's word before code enters the tree, and a gate is code.

## 4. Accept when

Both books' cited quotes are re-read against their own lines and the counts published including failures; A4's runs each record a first-line test, a novelty number taken **before** building, and an empty-cell count of zero; A1's coverage is computed fail-closed and the remainder merged and counted; every finding is attached rather than edited in; and no `[GAP]`, ruling or build moves.

## 5. What it found — receipt

| | |
|---|---|
| **A1 gate** | 32 locator-bearing rows · 44 quoted fragments · **44 byte-verbatim at their own cited lines · 0 failures · 0 repairs needed** |
| **A4 gate** | 10 rows · 9 italic quotes (14 with code strings) · **0 missing · 0 wrong locators · 3 standing only after a ligature repair pass 0 made silently** |
| **First falsifier** | **did not fire.** No quote is invented; no locator points at the wrong sentence |
| **Second falsifier** | **did not fire.** A1 is **9 of 18** mechanisms fully carried, **11 of 14** eyes, **49 of 79** ranges — short enough that the map earns its place |
| **A4 carry** | 3 runs · 55 source lines · 38 rows · 0 empty cells · 0 surviving `^M` · first-line test 3 of 3 · novelty 23 of 23 · **0.25%** of the book |
| **A1 run 5** | 14925–14934 · 9 rows · novelty 6 of 7 · carried because **this page's own `14926` citation fails the first-line rule** by one line |
| **Remainder** | **25 ranges · 150 lines · 5 clusters**, ordered; complete coverage would be **2.3%** of A1, inside pass 1's 3.8% ceiling |
| **New findings** | A4's **213 lone carriage returns** (two readers, 214 lines apart) · the **`panic-unwind` default** elided from `C8`, opening sub-question **d** · `M-R16` named as the least-checkable mechanism on a page that cites it everywhere |
| **Moved** | nothing. No `[GAP]` closed, no ruling taken, no build run, emission `[GAP]` |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

**A forge does not add material. It works what is already there until the flaws show.** This pass added 65 lines of carry and found four flaws in work that looked finished — three silent repairs, one dropped sentence, one uncitable citation, and a book whose line numbers change depending on who opens it. The lace is the same length. You can now see where it is thin.
