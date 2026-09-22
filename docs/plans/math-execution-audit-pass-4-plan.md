# Mathematical execution model audit — pass 4 plan: the satellites and the update witness under current law

**Status:** EXECUTED — CLOSED · receipt [math-execution-audit-pass-4-findings.md](math-execution-audit-pass-4-findings.md). Five dated headers, 5 lines added and 0 removed per file; every body byte-identical.  
**Station:** maps.  
**Board:** [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md) · findings MA-X01, MA-X02.  
**Pinned:** `5ffe01156047df01e8cd0823a286b53e89082905`.  
**Editor (declared):** whoever holds `maps`.  
**Emission:** untouched. Dated headers only; every body stays byte-identical.

## Question (one act)

Can the four satellites at the `docs/` root and the update-campaign witness carry current law — binary `Join` CLOSED, RootTouch CLOSED, Q3 CLOSED, Q5 = WORD + RootTouch, Φ historical, RM-A the open — by one dated qualification header each, with their dated bodies left as written?

## Measured before proposing

| File | Current-law lines | Still says |
|---|---|---|
| `math-execution-model-pass-3-witness.md` | 0 | *"Pass 2 partial algebra"*; W2 *"Φ [GAP]"* on every POINTER row; W6 *"Q2 arity: No. Binary drawings are illustrative"*, *"Q5 … unanswered"* |
| `math-execution-model-pass-4-adversarial.md` | 2 (2026-09-20, Q4 only) | A0 *"open Q1–Q5"* (already flagged superseded on Q4); N09 *"declare arity is always 2 — must not infer"* (still right as a *D1 ⇒ law* refusal; wrong if read as *the constructor is not binary*) |
| `math-execution-model-pass-5-projections.md` | 0 | P6 *"Q2 … No. View chrome does not fix arity"*; *"Q5 … requirement stays open"* |
| `math-execution-model-pass-6-arrival.md` | 0 | R5 *"Q2 No"*, *"Q5 No"* |
| `plans/math-execution-update-pass-5-witness.md` | 0 | *"Q2 CONFLICT"*, *"H-PTR empty"*, *"required-shape still OPEN"*, *"Next: pass 6 readiness"* (closed) |

What is current, from the model and the pointer draft: the physical constructor is binary `Join(a,b)` (S1.3, S4.1; Q2 *CLOSED current constructor: 2*); seen arrival appends WORD and `Join(new, Root)` (S3.3; Q5 *WORD occurrence + RootTouch Join*); adjacency alone does not emit (Q3 CLOSED); refs backward on the same line, WORD or POINTER (Q4 CLOSED); Φ is historical notation for what `Join` now realizes; the general open is RM-A retain-when. The historical Q2 conflict and the Pass-7 SPOKEN lines are preserved as dated history in the pointer draft.

What stays true in the satellites and must not be qualified away: D1 is a witness, not a scheduler; a picture is not a store; Arrival keeps no store; N01–N15 refuse what they refuse; *"emitted because …"* is still not readable off D1 — because retain-when (RM-A) is still open, not because the constructor is.

## Thesis / falsifier

**Thesis.** One dated block per file — *Current-law qualification, 2026-09-22 (audit pass 4)* — placed under the existing header, stating the five current facts above, naming the exact rows/cells it supersedes (W6 Q2/Q5; A0; P6 Q2/Q5; R5 Q2/Q5; the update witness's Q2/H-PTR/required-shape cells) and the one reading that stands (emitted-because is still not derivable, for the RM-A reason). Bodies byte-identical.

**Falsifier.** A body line changes → reverted. A header says the constructor question is *open* or that RM-A is *closed* → struck. A header claims acceptance → struck.

## Steps

1. Pull ff-only · `claim maps "<Identity>"`.
2. For each file, copy the block, fill the superseded-cell list from a re-read of that file, name the model sections that now govern (`S1.3`, `S3.3`, `S4.5`) and the pointer draft's current table.
3. `git diff --numstat`: five files, additions only, 0 deletions.
4. `check-docs` · gate · commit · release · findings with the superseded-cell table per file.
5. Handoff row: `docs/README.md` rows 45–48 describe the satellites neutrally and need no change; if the human rules MA-H04 (shelving), that is a later filing pass.

## May write / must not

**May write (maps):** `docs/math-execution-model-pass-3-witness.md` · `-pass-4-adversarial.md` · `-pass-5-projections.md` · `-pass-6-arrival.md` · `docs/plans/math-execution-update-pass-5-witness.md` — headers only · `docs/plans/math-execution-audit-pass-4-findings.md` (new).  
**Must not:** rewrite W1–W8, A0–A7, P0–P8, R0–R7 or the update witness's tables · move a file · touch `docs/README.md` · claim acceptance · qualify away a refusal that still holds.

## Expected vs actual

| | Expected | Actual |
|---|---|---|
| Files with a current-law header | 5/5 (from 1 partial) | NOT_TESTED |
| Body lines changed | 0 | NOT_TESTED |
| Superseded cells named | every Q2/Q5 cell in the five files | NOT_TESTED |
| Human acceptance | ABSENT | — |

## Stop

Stop when the five headers are committed under one maps claim and released. Pass 5 needs its own claim.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Writing today's date on old notes about the lace, and saying which lines were later settled, is allowed; rewriting the notes is not. RM-A remains `[GAP]`.
