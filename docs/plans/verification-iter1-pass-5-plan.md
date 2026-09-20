# Verification iteration 1, pass 5 — enforcement

**Status:** `[PLAN]`. Execution **NOT_RUN and not mine.** Every item below is a **human ruling**.
**Station:** kit + coord, claimed only after a ruling names the edit. **Emission:** `[GAP]`. No `src/`.
**Iteration:** [verification iteration 1](verification-iteration-1-plan.md), pass 5 of six.

## 0. What pass 5 is

The other five passes measure. **Pass 5 is the only one that changes what the repository refuses.** That is why the iteration plan marked it human from the start, and nothing here is executed without a ruling.

This document is a decision brief, not a work plan. It carries thirteen decisions and the measurement behind each.

## 1. The measurement that makes this urgent

Measured at `74881b1`:

| | |
|---|---|
| Commits in the last hour | **54** |
| Commits today | 195 |
| Commits in 24 hours | 488 |
| Files added today | **85** |
| Tracked files / markdown | 295 / 222 |
| Orphans | **34** |
| Doors short of their shelf | 5, covering **94** unlinked files |
| Advisory findings | **39** |

**The advisory series across this one session: 12 → 15 → 17 → 41 → 39.** Iteration 0 closed with orphans at 1.

Two facts sharpen it:

- **All 31 files in `docs/clock/passes/` landed today.** The door carries 37 rows against 60 files. A campaign is producing plans faster than it indexes them.
- **`docs/prompts/README.md` has linked 0 of its 16 files since `94cdba8` created it, and has never been edited since.** That door has never worked. It is seven lines of prose with no rows at all.

**The advisories are not drifting. They are being outrun.** Pass 1 measured 15 → 17 in five minutes and called it the rate; at 54 commits an hour, no pass can close faster than the tree opens.

## 2. The thirteen decisions

### A. What gates

| | Decision | Measured now | Options | Recommendation |
|---|---|---|---|---|
| **D1** | Does check 8 (door coverage) gate? | 5 doors short, 94 unlinked files | gate now · gate above a pin · **gate for new files only** · stay advisory | **New files only.** Gating today turns main red and blocks four campaigns behind 94 index rows. Gating only files added after a named commit costs nothing retroactive and stops the bleeding |
| **D2** | Does check 6 (orphans) gate? | 34 orphans, 30 of them from one campaign, all today | same four | Same shape as D1, same answer, same pin |
| **D3** | Close the check-5 quotation gap — skip backticked and blockquoted spans? | The gap was dodged **three times** by rewording prose rather than fixing the check | fix · leave | **Fix.** Small kit edit, and a check that punishes accurate quotation teaches agents to reword around it |

### B. What words count as evidence

Pass 3 measured all four of these. They are one decision wearing four hats.

| | Decision | Measured |
|---|---|---|
| **D4** | Which vocabulary governs — C01's or C10's? | Two lists for one job, twelve clauses apart, neither citing the other |
| **D5** | Does `NOT_RUN` get licensed, or replaced? | Live in 6 files, licensed by no clause |
| **D6** | Does [the task template](../kit/agent-task-template.md) gain C10's **Evidence state** line? | Every token the template ships is adopted; **every token it omits has zero adoption.** Evidence state is the omitted field |
| **D7** | Does a grounding stamp have a scope? | 2a found the close reading's `VISUALLY_OBSERVED` earned for its transcription and over-reaching by the end of the document |

### C. Who the coordination layer trusts

| | Decision | Measured |
|---|---|---|
| **D8** | Does `coord.sh` get a claim expiry rule? | It has none. A claim is held until its holder releases it or a human edits the file — which is what happened today, by hand, on your instruction |
| **D9** | Does `resync.sh` stop hardcoding the agent name? | It signs every `FIRED_BY` and `CLEARED_BY` as `LaceArc (steward)` regardless of who ran it. Today's tick had to be corrected by hand |

### D. Corrections waiting on a law holder

| | Decision | Measured |
|---|---|---|
| **D10** | Pass 2a's three findings in `graphics-close-reading.md` — the truncated D4 quotation, the "panel labels are not printed" overstatement, the unstamped "indices are permanent" | All three verified against the PNG. Law station; proposals only |
| **D11** | `law-why-these-documents.md` line 10 against its own IMPLEMENTATION LAW block — *exists* versus *has accepted* | Flagged in-file, unedited, since before this iteration |

### E. Carried from iteration 0

| | Decision |
|---|---|
| **D12** | `5-pre` — renderer station scope. I reversed my own recommendation once already: `CLAIMS.md` shows renderer existed for one *frozen* artifact, and my phase 0 widened it to three viewers, which caused the incoherence. Narrowing may beat widening |
| **D13** | Restructure phases 7 and 8, both unplanned, both protocol or law |

## 3. If you want one ruling instead of thirteen

**D6.** One line in one kit file.

Pass 3 established the mechanism: adoption tracks the template, not the law. Every token on the template is used somewhere; every token off it has zero uses across 222 files. Adding C10's Evidence-state line changes what every future receipt records, and costs a line.

**Then D1 and D2 as "new files only", sharing one pin.** They are the only options that bend the advisory curve without a 94-row catch-up campaign, and at 54 commits an hour a catch-up campaign loses.

Everything else can wait for a quieter tree. Those three cannot, because each hour they wait adds files that the ruling will then have to grandfather.

## 4. Queue for the next phase

Iteration 1's outstanding sub-passes, carried forward rather than left implied:

| Queued | Work | Lines | Station | Blocked on |
|---|---|---|---|---|
| **2b** | Graphic C, all cites across the four documents. Adds the namespace-register row for **C5's dimension planes `D1`–`Dn`**, the third owner 2a confirmed | 58 | maps | nothing |
| **2c** | Graphic A. Also **discharges the resync's Hands re-read for A** | 57 | maps | nothing |
| **2d** | Graphic B. **Discharges the re-read for B** | 46 | maps | nothing |

**None is blocked on pass 5.** They are queued as the next phase's run rather than as leftovers of pass 2, because pass 2's plan committed to one commit per sub-pass, and three commits is a phase's worth of work.

**Pass 6 is blocked on them.** The receipt has to report coverage as a fraction, and pass 2 currently stands at 79 of 240 cite-bearing lines. Writing the receipt first would report a number the iteration had not earned.

## 5. What pass 5 must not do

- **Not rule.** Measurement is mine; the ruling is yours.
- **Not turn a check into a gate to see what happens.** A red main blocks four live campaigns.
- **Not edit kit, coord or law before a ruling names the edit.**
- **Not touch RESYNC.** That campaign is Grok's. *(Noted as measured, not as assumed: `gearing-meta` reads **FREE** at `74881b1` — Grok claimed it, planned RESYNC Pass 1, and released. The campaign is live; the station is not currently held.)*
- **Not fill `[GAP]`.** An enforced door is still not evidence that Core may begin.

## 6. Accept pass 5 when

Each of the thirteen carries a ruling or an explicit deferral, and every ruling that becomes an edit names its station, its file, and — where it changes `check-docs.sh` — which of the eight checks moves between advisory and gating.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A warning nobody has to answer is a knot you keep meaning to tie. This repository has been meaning to tie thirty-four of them since iteration 0 closed, and has added eighty-five more cords today. Pass 5 does not tie them. It asks which ones the shoe will refuse to be laced without. Emission remains `[GAP]`.
