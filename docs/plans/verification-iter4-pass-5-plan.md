# Verification iteration 4, pass 5 — the docket

**Status:** `[PLAN]`. **Station:** maps writes the docket; **the rulings are the human's.** **Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 4](verification-iteration-4-plan.md). **Prior:** [pass 4 findings](verification-iter4-pass-4-findings.md).
**Board pinned at:** `a36acfc`.

## 0. What pass 5 is

[The iteration plan](verification-iteration-4-plan.md) gives pass 5 to the human: *"The five law items still open from iteration 1, plus whatever pass 4 refers up."*

**This document measures nothing new. It assembles what is waiting, with the evidence attached and the cost of leaving each alone.** Where an item has a recommendation it is labelled as one, and every recommendation is a proposal the human may reject without argument.

**Twelve items, four groups — five law, five referred up, one instrument, one branch.** A thirteenth was removed before the human sees it — §1.

## 1. One item is already done, and it did not need doing

**`Q4` — re-point `rust-nostd-branch-contracts.md` → `docs/prompts/pointer-emission-prompt.md`** — carried as *blocked on maps* since [iteration 3's receipt](verification-iteration-3-receipt.md). Read in place at `a36acfc`:

| Line | What it is |
|---|---|
| **789** | `[docs/prompts/pointer-emission-prompt.md](../prompts/pointer-emission-prompt.md)` — **a working link, already correct** |
| 96–97 | A dated source difference: *"At the inspected baseline tip the file was absent. On live `origin/main` it now exists at …"* — the frozen-claim-live-status model this campaign endorses |
| 719 | **Inside a fenced block.** A prompt body, a mention, not a citation |

**Nothing to repair. Struck from the docket.**

**That is the third time a queued repair has proved correct as written** — [iteration 3](verification-iteration-3-receipt.md) classified 33 references and repaired none; [iteration 4 pass 3](verification-iter4-pass-3-findings.md) found the clipboards filing rule already obeyed. **A queue entry is a hypothesis, and this tree's queues have a poor record.** Every remaining item below was re-checked in place before being listed.

## 2. Group A — the five law items, open since iteration 1

Law station. **All five are the human's by original ruling**, not by escalation.

| | Item | State at `a36acfc` | Cost of leaving it |
|---|---|---|---|
| **A1** | **`D10`** — three defects in `graphics-close-reading.md`: a D4 quotation truncated without an ellipsis, *"panel labels … are not printed in the graphics"* (false for Graphic D **and** C), and *"indices are permanent"* carrying no stamp | **Open.** `:226` still unstamped. All three verified against the PNGs in [pass 2a](verification-iter1-pass-2-findings.md) | The close reading is cited as evidence by documents that cannot check it |
| **A2** | **`D11`** — `law-why-these-documents.md` line 10 *"until `docs/pointer-emission.md` **exists**"* against its own IMPLEMENTATION LAW block *"when the human has **accepted**"* | **Open.** The flag at `:5` is intact and unedited. Found independently a second time by [cold doors](../kit/cold-doors.md) row 4 | **Two human-authored sentences disagree about what opens the `src/` gate.** This is the one item on the docket that touches the permanent prohibition |
| **A3** | **`2c-1` revised** — the centimetre/centimeter wording and the conversion table as `UNSUPPORTED` | **Ruled already, in session:** *"Should be index unit as lace is a 1D array; both wordings are confusing."* **Not open for a ruling — open for application**, and the file is law's | A ruling exists and the tree does not carry it |
| **A4** | **`D12`** — renderer station scope. `CLAIMS.md` shows renderer covering one *frozen* artifact; phase 0 widened it to three viewers and that widening caused the incoherence | **Open.** `renderer` has been **FREE** this whole time and owns nothing anybody has claimed | A station that owns three live viewers and is never claimed is a fail-open hole in a fail-closed protocol |
| **A5** | **`D13`** — restructure **phase 7** (coord protocol: claim/release stop being their own commits) and **phase 8** (one law sentence: *Core is Rust `no_std` only; steward tooling may be any language, is never a Core dependency, never lives under `src/`*) | **Open, and phase 7's premise has moved.** It targeted *"claim/release share of commits from 31% to under 5%"*. Measured now by commit-subject pattern — an estimate, not exact: **25.5% lifetime, 16.5% over the last 200 commits.** The share halved with no protocol change | Phase 8 is the sentence that settles whether `hologram-ir-validate.py` is legitimate at all — **so A5 and Group C are one question, not two** |

## 3. Group B — referred up by passes 3 and 4

| | Item | Station | Recommendation |
|---|---|---|---|
| **B1** | **Option E** — teach check 6 to read references from HTML, a web manifest, a service worker and shell scripts | **kit** (FREE) | **Take it.** [Pass 4](verification-iter4-pass-4-findings.md) proved 4 of check 6's 34 findings false — `LATEST.json`, both icons, `.gitignore` — each wired into running code by the only mechanism its file type has. Small, local, and **a precondition for any gate ever**: nothing should be blocked by a false positive |
| **B2** | **Option F** — print check 6 and check 8 under separate headings | **kit** (FREE) | **Take it.** Costs a heading. Check 6 is a work list; check 8 is nine shelves that are fine and one that is not, printed identically inside one block of 44 |
| **B3** | **A campaign index for the stranded 30** — `docs/clock/passes`, in the shape hologram's own campaign already ships five times as `quiet-door-N-ascii.md` | **hologram** (FREE) | **Take it, knowing the cost:** it makes 1,898 lines of `EXECUTED` provenance reachable and **leaves check 8 at 30 of 60**, because check 8 measures the door |
| **B4** | **The clipboards bridge** — 18 document rows plus 7 new campaign rows and one amended | **clipboards** (FREE) | **Take it.** Zero files on that shelf are stranded, but the whole 36-file island is unreachable from both entrances and **its products sit inside the island, so the door is the only possible bridge.** Takes the door from 22 of 84 to 84 of 84 |
| **B5** | **The double `# H1`** in `projection-iter2-pass-3-plan.md`, residue of the retraction at `5299528` | **hologram** | Cosmetic. **Leave or fix; it records its own reversal correctly either way** |

## 4. Group C — `F7` / `Q5`, no longer blocked

**`maps` is FREE.** It was held by `reference-Mapper` when iteration 3 named this blocked, and released at `129bfbe` as premature. **The block is gone and the item has not moved.**

> [Iteration 3's ruling](verification-iter3-pass-5-plan.md): *"**Rename the tool and its output to say what it checks** — shape, ids, endpoints, one honesty flag — and record in `hologram-ast-ir.md` that no tool currently checks the graph against the plan. **Not repaired**, and the reason is not cost."*

**Two things the human must decide, and only the first is new:**

1. **`CLAUDE.md` says ask before a commit that adds code.** A rename plus edited output strings modifies a tracked `.py`. **This pass will not touch it without an explicit go-ahead**, and records here that the permission was not assumed.
2. **It is downstream of A5's phase 8.** If Core-is-Rust-only-and-tooling-is-anything becomes law, the validator is legitimate tooling with an honest name. If it does not, the rename is cosmetics on a file whose right to exist is unsettled. **Rule phase 8 first.**

**Cost of leaving it:** the validator still passes **five of six deliberately wrong plans** and returns a summary byte-identical to the golden's. It has been the tree's only instrument with a measured live defect for three iterations.

## 5. Group D — thirteen commits on a branch nobody merged

`origin/claude/recovered-mdj1wo-2026-09-19`, **13 commits, 19 hours old, never merged.** Two of them are the centimetre work: `1f87acc` *"Fix a misquote I introduced. The header says centimeter"* and `3c73190` *"Withdraw the centimeter arithmetic. It was reasoning, not a unit"* — **both in `graphics-close-reading.md`, which is also A1's and A3's file.**

**Merging it is not safe and this pass does not recommend it:**

| | |
|---|---|
| Files the branch changes | 8 |
| **Changed on `main` since the branch diverged** | **6 of 8** — `shadow-clock-gearing.html` by 13 commits, `README.md` by 8, the hook by 6 |
| **Relocated to another shelf** | `docs/gearing-code-1to1.md` → **`docs/clock/gearing-code-1to1.md`** |

**A 19-hour-old branch in a tree running 829 commits a day is not a stale branch, it is a different tree.**

**The question for the human is not *merge or not*. It is: is any of that content still wanted?** If yes, it is cherry-picked line by line into the current files by the owning station — which for `graphics-close-reading.md` means it is **the same edit A1 and A3 are waiting on**, and should be made once, not three times.

## 6. What is not on this docket, and why

- **`E1` (no gate), `E2` (no expiry), `E5` (no list)** — ruled in iteration 3 on evidence that has not moved. [Iteration 4 §5](verification-iteration-4-plan.md) holds them closed.
- **`D1`/`D2`** — re-opened by [iteration 4 §2](verification-iteration-4-plan.md) because their premise fell, and **re-confirmed by [pass 4](verification-iter4-pass-4-findings.md) on a replay neither earlier iteration had run.** They stay advisory. Nothing here asks the human to revisit them.
- **A gate of any kind.** Pass 4 priced the only installable one — no-new-orphan — at 162 of 670 commits blocked, 21 of them for 21+ commits. Not proposed.

## 7. What pass 5 must not do

- **Not rule on the human's behalf.** Group A is theirs by original ruling; Group C item 1 is a standing-order permission this pass will not assume.
- **Not merge the recovered branch**, and not cherry-pick from it before A1 and A3 are settled — the same file would be edited twice.
- **Not apply B3 or B4 while their stations are unruled.** Both are FREE, which makes them claimable, not decided.
- **Not re-open what §6 closes.**
- **Not queue anything without re-checking it in place first.** §1 is why.
- **Not fill `[GAP]`.**

## 8. Accept pass 5 when

Each of the five law items has a ruling or an explicit deferral with a reason; B1–B4 are taken, declined or assigned; `F7` has a go-ahead or a refusal, and phase 8 is ruled before it; and the recovered branch is either named as content to cherry-pick into A1's edit or abandoned on the record rather than left to age further.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Twelve things are waiting and none of them is a measurement. **The campaign has spent four iterations proving the tree is sounder than its instruments; what is left is the part only hands can do — deciding.** Emission remains `[GAP]`.
