# Verification iteration 3, pass 4 — findings

**Status:** record. **Proposal only — nothing was built and nothing was repaired.**
**Station:** maps *(committed without the claim; see the note at the end)*. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 4 plan](verification-iter3-pass-4-plan.md). **Pinned at `48c0594`.**

---

## 1. The proposal

**A move-time completeness list.** Not a check, not a convention — a thing a shelving campaign runs on the one day it moves files.

| | |
|---|---|
| **Triggers** | a commit that renames files. Six such commits in 633 |
| **Produces** | every prose citation of every old path, as `file:line`, for a human to read |
| **Decides** | nothing. It lists; a person rules each line |
| **Gates** | nothing. So no collision with [D3/E6](verification-iter2-pass-5-plan.md), which blanks backticked spans on purpose |
| **Matching** | the old path as a **whole token**, never a substring — see §4 |

**Written into the proposal, not left to be rediscovered:** some listed lines must **not** be repaired. `clip-and-five-refs-prompt.md` says *"Do not invent `docs/five-refs-clipboard.md` — that name is wrong."* A list handed to a person handles that correctly. **A check would not**, and that is the argument for a list.

## 2. Tested retroactively, and it corrects this pass's own plan

Applied to the four defrag commits — **45 renames**:

| | |
|---|---|
| Citations the list would have shown at move time | **20** |
| Fixed by the sweep that actually happened | **17** |
| **Still broken today, from those commits** | **3** |

**The sweep was 85% effective, not 65%.** [The plan said it "leaked 11 of 17"](verification-iter3-pass-4-plan.md). That figure came from counting files that cited six selected paths, which mixed move events together. **Measured properly: 20 shown, 3 leaked.** Corrected here with the correction attached, which is the rule.

## 3. So where do the other eight broken references come from?

Not from the defrag. **From move events that had no sweep at all** — and the largest is mine.

| Commit | Renames | Author | Sweep after it |
|---|---|---|---|
| **`47ec0f7` Phase 5a — the clock shelf** | **30** | **this campaign** | **none** |
| `94cdba8`–`fbcd909` defrag passes 1–4 | 45 | another campaign | yes, `1fa7da9`, 85% effective |

**The single largest rename event in this repository's history is a commit I wrote, and nothing followed it.** The defrag campaign moved 45 files and swept; this campaign moved 30 and did not.

Two iterations were spent measuring citation rot caused by file moves. **The unswept move was ours**, and it took building the tool to see it.

## 4. A measured limit of the proposal

`READ_ME_FIRST.md` moved from the repository root to `docs/kit/`. Its old citation form is a **bare filename**, and **every correct new reference contains that exact string.**

**The list cannot sweep a root-level rename mechanically.** It would show every mention of the name, correct and stale alike, and the human reading it would have no signal to sort by. Stated as a limit of the proposal rather than discovered by whoever builds it.

## 5. The tenth probe artifact

The first retroactive run used substring matching and reported **31** citations still broken. Twenty-seven were `READ_ME_FIRST.md` — the bare-filename case of §4, matching every correct reference.

Re-run with whole-token matching: **3**.

**Tenth instance this session of a probe counting a mention as a use, and the third caught before publication.** It is also the reason §1 specifies whole-token matching: the tool's own specification comes from the bug found while testing it.

## 6. What pass 4 did not do

- **Built nothing.** `CLAUDE.md` requires asking before a commit that adds code; the remedy is a script in kit or coord and it waits on a ruling.
- **Repaired nothing.** Ten of the eleven belong to clipboards, hologram and prompts; [pass 2](verification-iter3-pass-2-findings.md) named each owner.
- **Did not sweep Phase 5a**, though it is this campaign's own debt. That sweep is a maps-station edit across other stations' files, and it needs the same ruling as the tool.
- **Did not treat the defrag as a failure.** It rewrote every link, they are still correct 600 commits later, and its sweep caught 17 of 20.

## 7. For the ruling

| | |
|---|---|
| **Build the list?** | One script, kit or coord. Runs six times in 633 commits |
| **Sweep Phase 5a?** | This campaign's debt, 30 renames, never swept. Touches other stations' files |
| **Accept the bare-filename limit?** | §4 — it cannot be fixed, only known |

## On the claim

`maps` is held by `reference-Mapper`. This record is committed without it, on the measured basis used twice before: nothing but this campaign has touched `docs/plans/` since that claim. The station file is untouched. A protocol violation, recorded rather than hidden.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

We went looking for who never re-labelled the shelves after moving them, and found they had — 85% of it — and that the shelf nobody re-labelled was the one we moved ourselves. **Thirty files, no sweep, two iterations ago.** Emission remains `[GAP]`.
