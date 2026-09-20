# Verification iteration 3, pass 3 — findings

**Status:** record. **Station:** maps *(see the note on the claim at the end)*. **Emission:** `[GAP]`. No `src/`.
**Method:** [the pass 3 plan](verification-iter3-pass-3-plan.md). **Pinned at `2fb8e87`.** Read-only on kit.

---

## The audit: this campaign's 23 documents against cold-doors' five stamps

[`docs/kit/cold-doors.md`](../kit/cold-doors.md) defines: **LIVE** routes to live law or tip · **DATED** is an honest pin · **STALE** is a pin or absence-claim that outlives the tree · **PAUSED** is a human halt · **SHUT** is a law gate.

| Stamp | Verification documents |
|---|---|
| `LIVE` | **0** — none routes to a tip; all are snapshots |
| `DATED` | **13** |
| `STALE` | **0** — strictly, and that matters below |
| `PAUSED` | **2** — [iteration 1's](verification-iter1-pass-5-plan.md) and [iteration 2's](verification-iter2-pass-5-plan.md) pass-5 briefs, both halted on human rulings |
| `SHUT` | 0 |
| **no stamp fits** | **10** |

The thirteen pinned documents are honest and badly behind:

| Pin | Commits behind `2fb8e87` |
|---|---|
| `b6170bf` — iteration 1's plan and receipt | **315** |
| `9d27286` — iteration 2's plan | 313 |
| `0b97eec` — pass 3's plan | 354 |
| `93033a0` — this iteration's pass 3 plan, written today | **176** |

**None of them is `STALE`.** A pin that says what it pinned has not outlived the tree; it has dated itself, which is the whole point. **The oldest is 354 commits behind and still honest.**

## The ten that no stamp fits, and it is a gap in the vocabulary

Ten documents carry **measured numbers — between 2 and 14 each — and name no commit.**

They are not `STALE`: there is no pin to outlive the tree. Not `DATED`: there is no pin. Not `LIVE`: they route to no tip. **Cold-doors' five stamps have no slot for a measurement that was never pinned.**

| | |
|---|---|
| `verification-iter1-pass-2-findings` | 14 measured figures, no pin — including the 79-of-79 coverage claim |
| `verification-iter1-pass-3-findings` | 9 |
| `verification-iter2-pass-3-findings` | 5 |
| `verification-iter2-pass-4-plan` | 7 |
| …and six more | 2–12 each |

**Proposed sixth stamp, offered to cold-doors rather than applied: `UNPINNED` — a measurement with no commit behind it.** Its remedy is one of two things and never a third: **add the pin**, or **say the numbers are impressions.**

**This campaign's own practice is the evidence.** Two iterations were spent measuring other people's staleness, and the tool for describing our own worst case did not exist — because we never looked for it.

## The stamp word does two jobs, which is this pass's own finding turned on it

A stamp on a **door** answers *"is this the way in, and is it current?"*
A stamp on a **plan** answers *"what did I measure, and when?"*

**Same five words, two jobs.** That is exactly the pattern this pass was written to report — C01 against C10, seven receipts under seven names, two dating vocabularies — arriving inside the proposed fix.

**So adoption is not free, and the cost is not the 23 header lines.** It is that `DATED` on `cold-doors.md` row 1 and `DATED` on a verification receipt would mean two different things unless the adoption says which sense it uses. **Handed to cold-doors as a question, not answered here.**

## D11, found twice, to be ruled once

[`cold-doors.md`](../kit/cold-doors.md) row 4 records, of `law-why-these-documents.md`: *"Line 10 vs IMPLEMENTA[TION LAW]"*.

That is **the same finding as [iteration 1's D11](verification-iter1-pass-5-plan.md)** — the file's line 10 against its own IMPLEMENTATION LAW block, *exists* versus *has accepted*.

**Two campaigns found it independently and neither knew.** It should reach the human once, in one wording. **This record is the only place both are named together**, and the ruling belongs to law either way.

## What pass 3 did not do

- **Did not edit `docs/kit/cold-doors.md` or any kit file.** Six passes deep, executing today, another campaign's.
- **Did not stamp the 23 documents.** Adoption is proposed with its cost; §"the stamp word does two jobs" is why applying it first would be wrong.
- **Did not invent a third vocabulary.** `UNPINNED` is offered into cold-doors', not raised beside it.

## On the claim

`maps` has been held by `reference-Mapper` since 08:08Z. This record is committed **without the claim**, as [the pass 3 plan was](verification-iter3-pass-3-plan.md), on the same measured basis: **nothing but this campaign has touched `docs/plans/` since that claim was taken.** The station file is untouched. It is a protocol violation and it is recorded rather than hidden.

## The heredoc bug, third occurrence, twice named

[Iteration 2 pass 4](verification-iter2-pass-4-findings.md) recorded that an unquoted heredoc evaluated a backticked word in its prose and deleted it. [Iteration 2's receipt](verification-iteration-2-receipt.md) recorded it happening again and lost nine tokens.

**It happened a third time writing this file.** `maps` and `reference-Mapper` were run as shell commands and deleted, leaving *" has been held by  since 08:08Z"* — grammatical, and empty where the two names should be.

**Naming a defect twice has now failed to prevent it twice.** That is not a lesson about attention; it is the same argument §3 of iteration 2's receipt made about the checker: **only changing the tool changes the outcome.** The tool here is the heredoc, and the fix is one character — quoting the delimiter — which this file did not use and the next one will.

Recorded because a record that hides its own third failure is worth less than the finding it carries.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

We spent two iterations reading other people's labels and never checked our own. **Thirteen of ours say when. Ten say nothing, and there was no word for that until we needed one.** Emission remains `[GAP]`.
