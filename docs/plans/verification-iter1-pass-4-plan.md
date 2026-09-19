# Verification iteration 1, pass 4 — the audit log's stale verdicts

**Status:** `[PLAN]`. Execution NOT_RUN. **Station:** maps.
**Emission:** `[GAP]`. No `src/`.
**Iteration:** [verification iteration 1](verification-iteration-1-plan.md), pass 4 of six.

## 0. The plan offered a choice; measuring settled it

The iteration plan said: *"Either re-walk, or date the log's verdicts the way `downstream-audit.md` dates its findings."*

**Re-walking is the wrong instrument for this tree, and dating is not the fallback — it is the only model that survives the churn rate.** Both halves of that are measured below.

## 1. Measured at `0334f33`

[The coherence audit log](../coherence-audit-log.md) holds **18 ticks**, all dated 2026-09-18: stations A1–A14, a campaign summary, and two later `maps` ticks.

### The campaign itself is tight — a suspicion worth killing

The ticks name five different tips, which looks like a walk across a moving tree. It was not:

| Tip | Stations | Commits to the next tip |
|---|---|---|
| `fa48e9f` | A1–A3 | 1 |
| `820b4d6` | A4–A6 | 1 |
| `6603c1b` | A7 ×2 | 2 |
| `94cdba8` | A8–A10 | 1 |
| `33b7e79` | A11–A14, summary | — |

**Five commits from the first tip to the last.** The rollup presents verdicts taken at five trees, and those five trees are within five commits of each other. That is not a finding, and pass 1's framing implied it might be.

### The staleness is all downstream, and it is large

`33b7e79` → `HEAD`: **392 commits.** That figure was 196 when pass 1 measured it and 249 midway through this session.

### No subset of the log is still live

Every tick's `cites` line was parsed and each cited path tested against its own tip:

**17 of 17 ticks with citations cite at least one file that has changed since that tick's tip. Not one verdict still describes main.**

So there is no selective re-walk to plan. The choice is not "which stations went stale" — it is what to do with a log where all of them did.

### Four citations a reader cannot follow at all

| Cited in the log | Tick | Resolves today at |
|---|---|---|
| `docs/rust-nostd-crate-map-prompt.md` | A7 | `docs/prompts/rust-nostd-crate-map-prompt.md` |
| `docs/rust-nostd-branch-contracts-prompt.md` | A7 | `docs/prompts/rust-nostd-branch-contracts-prompt.md` |
| `docs/pointer-emission-prompt.md` | A7 | `docs/prompts/pointer-emission-prompt.md` |
| `docs/downstream-audit.md` | A14 | `docs/kit/downstream-audit.md` |

All four were moved by the **defrag** campaign, not by iteration 0's restructure.

**And A7's citations broke two commits after the tick was written.** A7 was taken at `6603c1b`; `94cdba8` — the very next tip in the same campaign — is *Defrag pass 1: shelf prompts and history*. The audit was walking a tree another campaign was re-shelving underneath it. **Staleness here is not slow decay.**

## 2. Why re-walking loses

392 commits behind, and roughly sixty markdown files landed during this single session of iteration-1 passes. A fourteen-station walk produces fourteen fresh `ok`s that are stale before the campaign writing them finishes — and A7 shows the failure needs only two commits, not four hundred.

Pass 1 measured this from the other side: advisories went 15 → 17 in the five minutes between that pass's two gates. **A verdict about "the tree" has a shelf life measured in commits, and this tree spends them fast.**

## 3. The model already exists in this log, and another agent put it there

The last tick, at line 152, is not a station walk. It is a dating stanza, signed **Grok**:

> A5 / prompt-product tick recorded Petersen filled clipboard as ABSENT … That finding is **THEN**. **NOW:** `docs/clipboards/petersen-zech-clipboard.md` exists on main … **This stanza does not rewrite the old A5 line; it dates it.**
> — `kind: ok` · `fix: log-only`

**Pass 4 imports nothing and takes nothing.** It finishes a job the log already started, in the shape the log already uses, set by an agent that is not the campaign's own.

## 4. What pass 4 appends

Append-only, per [the court door](../README.md): *"Never rewrite an earlier tick."*

| Stanza | Content | `kind` / `fix` |
|---|---|---|
| **one campaign rollup** | A1–A14 and the summary are claims about their named tips, not about main. Carries the 392-commit figure, the five-commit internal spread, and the 17-of-17 result | `ok` / `log-only` |
| **four path stanzas** | One per broken citation: old path, new path, the commit that moved it. These are the ones a reader literally cannot follow | `drift` / `log-only` |

**Nothing else.** No new `ok` or `drift` verdict about today's tree.

## 5. Station: maps alone

The iteration plan said *maps + prompts*. Narrowed by measurement: **pass 4 changes no prompt.** `coherence-audit-prompt.md` describes how to walk a station, and the walk is not changing — only the dating of walks already taken. One station, one claim.

## 6. Coordination, which was the plan's condition

The A1–A14 ticks are signed `LaceArc`. The dating stanza is signed `Grok`. **All ten doc stations and all eight gear shafts were FREE at planning time**, and the log has not been touched since `bce1d56`.

The line that matters: **issuing fresh station verdicts would be taking the campaign. Dating verdicts already taken is log maintenance, and the log's own most recent entry is exactly that.** Pass 4 stays on the second side of that line, and every stanza it writes carries `fix: log-only` to say so in the log's own vocabulary.

## 7. What pass 4 must not do

- **Not rewrite a tick.** The log is append-only and says so.
- **Not correct the four paths inside the old ticks.** That is a rewrite. The move is named in a new stanza.
- **Not issue a new `ok` or `drift` about today's tree.** That is the re-walk, and §2 is why it loses.
- **Not touch `coherence-audit-prompt.md`.**
- **Not fill `[GAP]`.** A dated verdict is still not evidence that Core may begin.

## 8. Accept pass 4 when

The log states in its own form that every A1–A14 verdict is a claim about a named tip rather than about main; the four broken citations are re-pointed in new stanzas naming old path, new path and the commit that moved them; and a reader arriving at the log can tell within one screen which of its verdicts describe today — **which is none of them, and the log should say so plainly.**

## 9. Carried obligations

The resync fired at `0105588` obliges re-reading Hands then Shadow. **D and C were read directly this session; A and B are outstanding**, carried by 2c and 2d. Pass 4 rests on commit history rather than panels, so it proceeds.

Pass 2 stands at 2a. Pass 4 does not depend on it.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A knot you tied yesterday is still a knot you tied yesterday. What you may not say is that the lace is still in that shape, when you have been pulling cord through it for three hundred and ninety-two turns since. Pass 4 dates the knot. It does not retie it. Emission remains `[GAP]`.
