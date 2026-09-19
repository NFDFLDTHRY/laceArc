# Verification iteration 2, pass 5 — the coordination instruments

**Status:** `[PLAN]`. Execution **NOT_RUN and not mine.** Every item is a **human ruling**.
**Station:** coord + gearing-meta, claimed only after a ruling names the edit. **Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 2](verification-iteration-2-plan.md), pass 5 of six. Passes 1–4 EXECUTED.

**Items are numbered `E1`–`E6`, not `D14`–`D19`.** [Iteration 1's thirteen](verification-iter1-pass-5-plan.md) are `D1`–`D13` and remain open; a second series is cheaper than one range with two owners, in an iteration that just spent a pass on exactly that.

## 0. The measurement reframes the question

The iteration plan set pass 5 as two items: `coord.sh` has no claim expiry, `resync.sh` signs every tick with one hardcoded name. Probing first found the prior question.

### There is no enforcement path in this repository

The complete inventory:

| Mechanism | Present | Effect |
|---|---|---|
| `.claude/settings.json` hooks | **one** — `SessionStart` → `session-start.sh` | **always exits 0** |
| `.github/workflows` | **none** | — |
| git hooks | **none installed** | — |

**Nothing in this repository can refuse a commit.** `check-docs.sh` sorts its eight checks into four *invariants* and four *advisories*, prints "Invariants hold" or "Checks failed", and **neither outcome blocks anything.** The distinction is real in the checker's vocabulary and nowhere else.

`CLAUDE.md` says the wrapper "is advisory, not a publishing gate", so this is documented, not hidden. **What is not documented is that the four invariants are advisory in exactly the same way the four advisories are.**

### And `main` has been red for twelve commits

| | |
|---|---|
| Breaking commit | `e6dd515` *Execute WGSL Pass 3* |
| Failure | `broken link in docs/clipboards/wgsl-mechanisms.md -> wgsl-ascii-machinery.md` |
| **Commits landed since, by four campaigns** | **12** |
| Target file created yet | no |

**A gating check has been failing for twelve commits and no campaign stopped, because nothing can stop them.**

### So `D1` and `D2` are asking after something that does not exist

[Iteration 1's D1 and D2](verification-iter1-pass-5-plan.md) ask whether the door and orphan checks should *gate*. **On this measurement, gating is not a property any check in this tree currently has.** Ruling them "gate" would change a word in a script and nothing else.

## 1. The decisions

| | Decision | What is measured | Recommendation |
|---|---|---|---|
| **E1** | **Does anything enforce?** This is prior to `D1` and `D2` | One hook that exits 0; no CI; no git hooks; red for 12 commits | **Answer E1 before D1/D2.** A ruling on which checks gate is empty until something can act on one. The cheapest real mechanism is a pre-push git hook; the most visible is CI; the current state is neither |
| **E2** | Does `coord.sh` get a **claim expiry** rule? | None exists. A claim is held until its holder releases it or a human edits the file — which is what happened by hand on the human's instruction | Worth ruling, but **E3 may make it unnecessary** |
| **E3** | Does `coord.sh` gain **`force-free`**? | `claim.sh` has had it all along. The umbrella wrapping that protocol dropped it | **Yes, and first.** It is a command the tree already has, in the file that lacks it, and it is what the manual clear was doing |
| **E4** | Does `resync.sh` stop **hardcoding the agent name**? | It signs every `FIRED_BY` and `CLEARED_BY` as `LaceArc (steward)` regardless of caller. Today's tick was corrected by hand | Small, factual, no trade-off |
| **E5** | **Who re-points a citation when a file moves?** | Nobody. Defrag passes 1 and 2 broke the audit log's citations ([iteration 1 pass 4](verification-iter1-pass-4-plan.md)) and the receipts' paths ([pass 4](verification-iter2-pass-4-findings.md)) — **two unrelated instrument families, same shape, same two commits** | The largest of the six and the only one with no obvious owner |
| **E6** | Should check 4 distinguish **a forward reference from a dead link**? | It cannot, and that is what is holding `main` red right now: a link to a file the campaign's next pass will create | Pairs with `D3`, which now covers checks 4, 5, 6 and 8 |

## 2. Cross-reference, not duplicate

Iteration 1's thirteen are **open and unchanged**. Pass 5 adds evidence to three of them rather than re-opening them:

- **`D1`/`D2`** — see E1. Also [pass 4](verification-iter2-pass-4-findings.md): the prompts door reads 0/16 while all 16 files are reachable, so gating door coverage would block the tree on a cosmetic gap — **and [pass 2](verification-iter2-pass-2-findings.md) showed the same check is satisfied by a mention inside a code fence.** It punishes an honest empty index and accepts a dishonest full one.
- **`D3`** — pass 2 confirmed by construction that checks 4, 5, 6 and 8 all fail their own label. **The patch is written and unapplied.** D3's scope is now four checks, not one.
- **`D6`** — pass 4 found the seven receipts share six slots under seven names. **The template can be re-cut from practice**, and that is a broken form rather than broken practice.

## 3. If you want one ruling

**E3**, then **E1**.

`force-free` is a command the repository already contains, missing from one file, and it is exactly what was done by hand today. It costs one function.

**E1 is the one that matters.** Every enforcement question in both iterations — `D1`, `D2`, `D3`, `E6` — is downstream of whether anything can refuse a commit. Twelve red commits say nothing can. **Until E1 is answered, "does this check gate?" has the same answer for all eight checks: no.**

## 4. What pass 5 must not do

- **Not rule.** Measurement is this pass's; the ruling is the human's.
- **Not install an enforcement mechanism to find out what happens.** Four campaigns are committing every few minutes and a pre-push hook would land on all of them at once.
- **Not repair another campaign's red.** The WGSL link is clipboards' and its next pass creates the target.
- **Not edit `coord.sh` or `resync.sh` before a ruling names the edit.**
- **Not fill `[GAP]`.**

## 5. Accept pass 5 when

`E1`–`E6` each carry a ruling or an explicit deferral; any ruling that becomes an edit names its station, its file and its mechanism; and `D1`, `D2`, `D3` and `D6` are either answered with this pass's evidence attached or explicitly left for later.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

This repository has eight checks, four of them called invariants, and **no way to refuse anything.** It has been publishing a broken link for twelve commits while printing "Checks failed" to nobody who had to care. **The question was never which checks should gate. It is whether there is a gate.** Emission remains `[GAP]`.
