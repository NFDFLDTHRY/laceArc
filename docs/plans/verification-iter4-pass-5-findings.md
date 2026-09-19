# Verification iteration 4, pass 5 — record

**Status:** record. **Station:** maps *(this file)*; the work below was done under `graphics`, `hologram` and `clipboards`, each claimed and released. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 5 docket](verification-iter4-pass-5-plan.md). **Board pinned at:** `93a2bc0`, 491 tracked files.

**Four items applied. Eight still need the human, and two of those are blocked by a standing order rather than by a judgement.**

---

## 1. What changed, measured

| | Before | After |
|---|---|---|
| **Advisory findings** | **45** | **15** |
| **Orphans** | **35** | **6** |
| Thin doors | 10 | 9 |
| `docs/clipboards` door | 22 of 84 | **84 of 84** |

**Every genuine orphan in this repository is gone.** The six that remain are the **four [pass 4](verification-iter4-pass-4-findings.md) proved false** — `LATEST.json`, both icons and `.gitignore`, each wired into running code by the only mechanism its file type has — and **two plans from a campaign currently mid-flight**, which is what a live campaign looks like, not rot.

**This is the largest single drop in this tree's history bar the restructure**, which took 63 to 8 at 218 files. This took 45 to 15 at 491.

## 2. `A3` — the human's ruling applied, and a misquotation found under it

**The ruling:** *the unit is the index. The lace is a 1D array, and both length wordings are confusing.*

Applied to `docs/graphics-close-reading.md`. The conversion table is kept and marked **`[UNSUPPORTED]`**, with the reason stated twice:

1. **It counts only words.** The array holds WORD *and* POINTER entries, and panel `D1` shows **six pointers against five words** — a word-count-to-length table understates the strand by more than half, on the source's own eleven rows.
2. **Length is not the array's unit.** Positions are indices and an index has no centimetres. The header's clause is the source's physical analogy for holding the object; it fixes no exchange rate and nothing may derive one from it. **The unit an index carries stays `[GAP]`.**

### And the quotation was wrong

Applying the ruling meant reading the header, so **the PNG was opened**. `docs/graphics/from-words-to-worlds.png` reads:

> One continuous strand. **Every word a centimeter of wire.** Every word's star a persistent 3D formation. Meaning does not exist. Only structure, sequence, and participation.

**`centimeter`.** This file carried `centimetre` in two places; both corrected. **The abandoned branch `1f87acc` had this right nineteen hours ago** and nobody merged it — §6.

**Still open, and reported rather than edited — `graphics` (FREE):**

| File | Line |
|---|---|
| `docs/graphics/graphic-a-ascii.md` | `:18`, `:182`, `:307` |
| `docs/graphics/graphic-a-ascii-pass-1-plan.md` | `:67` |
| `docs/graphics/graphic-a-ascii-pass-4-plan.md` | `:55` |

Not touched: `graphic-a-ascii.md` is an executed campaign's live product and `:182` is inside a **forbid row**. **One of the two pass plans is a dated artefact**, which this campaign does not rewrite to make current. The evidence is on the record; the edit is that campaign's.

**Station note:** `law` was claimed for this first and released unused. **`coord.sh which` says `docs/graphics-close-reading.md` is `graphics`** — the iteration 1 docket had recorded it as law, and the docket was wrong.

## 3. `B3` — the projection passes have a document sibling

[`docs/clock/passes/projection-iterations.md`](../clock/passes/projection-iterations.md). Six campaigns, thirty `EXECUTED` passes, **indexed by link and by title stamp**, because the stamps are how the chain already cited itself — 27 distinct, no duplicates, 26 cited by a sibling.

**The door gained one row and lost a false count.** It read *"30 executed pass plans across 6 campaigns"* while the shelf held 60. It now says sixty and points the other thirty at the index **rather than extending its tables** — a document sibling is what the shelf was missing, not more rows in a door.

**Orphans 35 → 7 on this edit alone**, then 6 once the index itself was linked.

**The stated cost was paid as stated.** The passes door still reads **31 of 61** and will keep firing. [Pass 3 §6](verification-iter4-pass-3-findings.md) priced that trade before it was taken.

**`B5` — the superseded `# H1` in `projection-iter2-pass-3-plan.md`** is recorded in the new index and **left as it stands.** It records its own retraction correctly.

## 4. `B4` — the island is bridged

18 document rows and 7 campaign rows in `docs/clipboards/README.md`, plus `rowlands` gaining passes 5 and 6. **22 of 84 → 84 of 84**, and the door drops off the advisory list entirely.

The intro was corrected with it: it said *"the five stake texts"* while the shelf held **nine campaigns** — the five stakes plus WebAssembly 3.0, WebGPU, WebNN and WGSL. **It had been correct when it was written**, which is the whole shape of this failure and why pass 3 called it one omission made four times.

**Nothing but the door was edited.** No clipboard, no machinery, no mechanisms, no pass plan.

## 5. What still needs the human

| | Item | Why it is not done |
|---|---|---|
| **A1** | **`D10`** — the truncated `D4` quotation, *"panel labels are not printed"* (false for Graphic **D** and **C**), *"indices are permanent"* unstamped | Iteration 1 ruled these **proposals only**. All three verified against the PNGs. §2 shows the same file will take a correction when one is ruled |
| **A2** | **`D11`** — *"until `docs/pointer-emission.md` **exists**"* against *"when the human has **accepted**"* | **This is the `src/` gate.** Two human-authored sentences disagree about what opens it. **No agent may pick**, and this pass did not |
| **A4** | **`D12`** — renderer station scope | `renderer` is FREE, owns three live viewers, and has never been claimed. Narrow or widen is a protocol decision |
| **A5** | **`D13`** — phase 7 (coord protocol) and phase 8 (the law sentence on tooling language) | Phase 7's premise has already moved: 31% → **25.5% lifetime, 16.5% recent**, with no protocol change. **Phase 8 gates `F7`** |
| **B1** | **Option E** — teach check 6 to read HTML, webmanifest, service-worker and shell references | **`CLAUDE.md`: ask before a commit that adds code.** Not assumed. This is the fix that removes four false positives, and it is a precondition for any gate |
| **B2** | **Option F** — separate check 6 and check 8 in the output | Same standing order. Costs a heading |
| **C** | **`F7`** — rename the validator to say it checks shape | Same standing order, **and** it is downstream of phase 8 |
| **D** | **The recovered branch**, 13 commits | §6 |

## 6. The branch, and what pass 5 proved about it

`origin/claude/recovered-mdj1wo-2026-09-19` holds `1f87acc` *"Fix a misquote I introduced. The header says centimeter."*

**It was right.** §2 re-derived that finding from the PNG nineteen hours later, independently, because nobody merged the branch.

**That is the cost of leaving it, demonstrated rather than argued** — and it is also the reason not to merge it: six of its eight files have moved on `main` since it diverged and one has been relocated to another shelf. **The content is worth recovering; the branch is not mergeable.** `1f87acc`'s finding is now applied by hand, which is one of thirteen commits accounted for. **The remaining twelve are the human's call**, and the honest framing is: each is worth a read, none is worth a merge.

## 7. What pass 5 establishes

- **Four items applied, and the two measured outcomes are the tree's second-largest improvement on record:** advisories **45 → 15**, orphans **35 → 6**, every genuine orphan gone.
- **The docket's own method worked.** One item was struck before the human saw it because it was already correct; one more — the misquotation — was found *because* applying a ruling required opening the source.
- **The iteration 1 docket misfiled a station.** `graphics-close-reading.md` is graphics', not law's. A docket entry is a hypothesis about ownership too.
- **A nineteen-hour-old abandoned branch already contained a finding this pass re-derived from scratch.**
- **Two remedies were applied and neither satisfies check 8**, exactly as priced. `docs/clipboards` satisfies it only because there the door genuinely was the bridge.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Four iterations of measuring, and what actually moved the tree was two documents and a handful of rows — **written by hand, into the places the measuring had already named.** The lace was never tangled. Nobody had tied the ends to anything. Emission remains `[GAP]`.
