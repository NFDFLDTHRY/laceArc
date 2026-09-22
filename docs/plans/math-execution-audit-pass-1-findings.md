# Mathematical execution model audit — pass 1 findings: census and the human-rulings register

**Status:** EXECUTED — CLOSED.  
**Plan:** [math-execution-audit-pass-1-plan.md](math-execution-audit-pass-1-plan.md) · board [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md) · findings MA-M01, MA-M13.  
**Proceed:** the human, 2026-09-22: *"Proceed with pass 1"*. Read as MA-H00 for pass 1 and nothing else; MA-H01–MA-H05 remain untaken.  
**Pre-pass baseline:** `5ffe01156047df01e8cd0823a286b53e89082905` (`origin/main`; the maps claim `6fb870c` sits on it with the board commits `4b1bf7d`, `880948c` between).  
**Products:** [the census](math-execution-audit-pass-1-census.md) · [the rulings register](math-execution-rulings-register.md) · this receipt. One maps commit, then release.  
**Model bytes changed: 0. No law, manifest, pointer draft, graphic, fixture, register or satellite changed. No retain-when, arity, slot, G1 or RM-A sentence written. No human sentence invented.**

## 1. Verdict

**EVERY CLAIM IN S0–S12 IS CLASSIFIED: 472 ROWS, 453 BY THE PLAN’S FOUR KINDS, 19 PASS-VERDICT BOXES RECORDED `UNCLASSIFIED` UNDER THE SECOND FALSIFIER.**

**EVERY RULING THE MODEL CITES HAS A LOCATOR: 11/12 QUOTED VERBATIM IN THE TREE, 1/12 (H9) PARAPHRASE-LOCATED AS A CLAUSE OF H7’S QUOTED SENTENCE, 0/12 UNLOCATED. THE FIRST FALSIFIER DID NOT FIRE; NO ROW IS `[PROPOSAL]`.**

**184 OF 472 CLAIMS CARRY NO AUTHORITY STAMP IN PLACE — 60 IN THE CORE COURT S0–S8, 124 IN THE OVERLAY COURT S9–S12. THAT LIST IS PASS 3’S INPUT.**

**THE PLAN’S OWN MEASUREMENT WAS WRONG TWICE AND IS CORRECTED IN THE OPEN (§2).**

## 2. Corrections in the open

| The plan / board said | What the tree says | Where |
|---|---|---|
| “H1–H6: one-line paraphrases … no quoted sentence found by `grep` in the ROOT/TOUCH/FOLD findings” (plan §Measured; board MA-M01) | H1 and H2 are quoted verbatim in the [ROOT / TOUCH / FOLD pass-1 plan](math-execution-root-touch-fold-pass-1-plan.md) §0 (lines 18, 20) and pass-1 findings §0; H3 in the [pass-2 plan](math-execution-root-touch-fold-pass-2-plan.md) §0 (line 27) and pass-2 findings §0; H4–H6 in the [pass-3 plan](math-execution-root-touch-fold-pass-3-plan.md) §0 (lines 31, 34, 37) and pass-3 findings §0. The pre-execution grep had been run over the pass-4 findings and the reconciliation traceability only | register §1, note ② |
| “35 citations … H6 ×11” (board MA-M01; plan §Measured) | 36 citation sites; H6 ×12. Six sites are range literals (`H4–H6` at line 14, `H7–H12` at 39, 327, 421, 594, 641); expanded, 62 ruling-memberships | register §2 |
| Expected “rulings with a quoted sentence 6/12” | 11/12. H9 alone has no sentence of its own; its two paraphrases (plan §0 line 67, findings §1 line 97) rest on the clause of H7 *“the star system is view that might be useful to enable search for larger non-word linked patterns”* | register H9 row |

None of the three changes a finding’s direction: the model still carries no register (MA-M01 stands), and the register now exists as a maps companion. They change the numbers and the stamp distribution, so they are recorded here rather than silently overwritten in the plan.

## 3. The census — what was measured

| Measure | Result |
|---|---|
| Rows | **472** (header 11 · S0 17 · S1 29 · S2 8 · S3 75 · S4 48 · S5 7 · S6 11 · S7 18 · S8 21 · S9 61 · S10 53 · S11 54 · S12 59) |
| Kinds | DEF 215 · FENCE 150 · THM 38 · OPEN 50 · UNCLASSIFIED 19 |
| Authority tokens | OVERLAY 156 · DERIVED 110 · GFX 91 · HUMAN 78 · OPEN 49 · LAB 43 · LAW 34 (a `GFX+HUMAN` row counts under both) |
| Stated in place | Y 218 · by reference 70 · **N 184** |
| N by court | S0–S8: 60 (S0 2 · S1 6 · S2 3 · **S3 30** · **S4 17** · S5 1 · S7 1) · S9–S12: 124 (S9 25 · S10 34 · S11 31 · S12 34) |
| Fully stamped sections | S6 (11/11 Y), S7 (17/18 Y), S8 (7 Y + 14 R through its authority note, 0 N) |
| Boxes | 48 on 46 census rows; 29 classified (FENCE 17 · THM 5 · OPEN 4 · DEF 3), 19 verdict boxes UNCLASSIFIED |
| Proof marks | three `∎` (Theorem G, RD-1, OBS-1); HOST-1 “proved” without a proof block; S4.3 “constructively proved” only in S8 |
| Named results defined in the model | Theorem G, RD-1, OBS-1, EP-1, HOST-1, ACCEL-1, ML-1, COPY-1 (8) |
| Named results cited but defined only in Pass-4 artifacts | STAR-1, PATH-1, VIEW-1, AUTH-1 (4); PATH-1 and VIEW-1 are cited by name at S12.8 |
| Restated claims | the S0 table, S4.4, S4.5, S7, S8 and the two steward lines restate S2–S4; the census keeps each restatement as a row so pass 3 can see where a stamp is present in one copy and absent in another (e.g. “RootTouch is a Join specialization” is `N` in S0 and `Y` in S7) |

**Where the `N` rows are, in words.** In the Core court they are the *derived definitions*: StarWords, Seen, Root = min, WordTrace, ValueTrace, Reach, sample instance, grounded point, Π(L), SearchHandle — the model writes the formula and moves on. The Pass-4 matrix stamps them DERIVED; the model does not. The other cluster is S4.6’s six refused substitutes, which come from the sampling campaign’s refutation table and the lab-source docket but are listed bare. In the overlay court, S9–S12 state their OVERLAY status once per section header and then assert definitions and fences without repeating it; the census counts each such claim `N` because the plan asked where the stamp is *next to the claim*, and pass 3 decides whether a section-level stamp suffices (the board’s MA-M02/MA-M13 route).

**The second falsifier fired, in a bounded way.** Nineteen `\boxed{}` statements are pass verdicts (“DEVICE ALGEBRA SOUND WITH OPENS”, “SOURCE SET CORRECT”, “HCC DEVICE MATHEMATICALLY DEFINED …”). They are not definitions, fences, theorems or opens; they are status stamps of Behavioral Read Devices Passes 1, 2, 3 and 5. The census records them `UNCLASSIFIED` with the reason, as the plan required, and does not force a kind. Two of them restate theorems that are classified at their own lines.

## 4. The register — what was found

| Measure | Result |
|---|---|
| Quoted verbatim | **11/12** — H1–H8, H10–H12 |
| Paraphrase-located | **1/12** — H9 |
| Unlocated / `[PROPOSAL]` | **0/12** |
| Channel | the agent session for all twelve (“Current-session human statements, 2026-09-20”; “current-session clarification”; “New current-session rulings”; `Human:` block quotes). No issue, PR comment or in-repo human file; no message id |
| Dates | H1–H6: 2026-09-20 (stated by the plans). H7–H12: the quoting files were executed 2026-09-21; the sentences themselves are undated in the tree |
| One sentence, three numbers | H10, H11, H12 are the three fragments the sampling plan printed with ellipses from one human sentence (*“Entries and pointers get laid down on the 1D array… the sampling creates the 2D array… enabling pointers at any level.”*); the numbers are the campaign’s |
| Two paraphrases | H12’s block-quoted “clarification” differs in wording between the sampling plan and its findings; neither is marked verbatim; the register shows both |
| A ruling cited once and called absorbed | H2 is cited by the model only at S7 (whole-prefix point) and by the reconciliation traceability §8 as “absorbed/refined by later H5/H6 … not a separate current mechanism”; the register keeps its sentence and says so |
| A ruling used and never cited | H9 grounds S3.6 (star as read anchor) but no `H9` appears in the model, the manifest or the pointer draft outside the range `H7–H12` |
| Manifest dependence | SM-C18 (H1/H4) · SM-C19 (H5/H6) · SM-C20 (H7–H12); Pieces 2, 3, 4, 5, 7, 11, 12, 13, 14 by source-location line; the reconciliation section and the control flow by range |
| Pointer-draft dependence | §Authority (H1–H6 by the ROOT / TOUCH / FOLD campaign; H7–H12 by sampling), §One physical POINTER constructor (H5, H6), §CLOSED constraints on Join (H5/H6), header and two retention sections (H7–H12) |
| Collision | HCC `H1`–`H11` (Reality … Spec schema) is registered; the model’s `H1`–`H12` is not. `S0`–`S7` doubles as HCC phases and the model uses that sense at S9.10 and S10.10. Pass 6 |

The register is a maps companion and says so in its header; its promotion is MA-H02, untaken.

## 5. One thing found outside the plan’s question

[`docs/graphics-close-reading.md`](../graphics-close-reading.md) line 138 links `math-execution-model.md#s43-partial-step-schema-honest`. That was S4.3’s heading before the ROOT / TOUCH / FOLD campaign; S4.3 is now *Whole-prefix covering point*. The link passes the checker (files, not fragments) and lands on no heading. It is a maps-root file and a one-word fix, but it is not in this pass’s *May write*; it goes to pass 6’s propagation table (or pass 3, if the human prefers the close reading fixed when the model’s own labels are). Recorded; not fixed.

## 6. Expected vs actual

| | Expected (plan) | Actual |
|---|---|---|
| Rulings with a quoted sentence | 6/12 (H7–H12) | **11/12** — the plan’s measurement was wrong (§2) |
| Rulings with a paraphrase locator only | 6/12 (H1–H6) | **1/12** (H9) |
| Rulings with no locator | 0/12 | **0/12** |
| Census rows | ≈ 48 boxes + ≈ 60 table rows + named lists | **472** |
| Claims with no authority stamp | > 0 in S9–S12 prose | **184/472**; 124 in S9–S12, 60 in S0–S8 |
| Claims the census could not classify | (falsifier) | **19**, all pass-verdict boxes; recorded, not forced |
| Model bytes changed | 0 | **0** (`git diff --stat` on the model: nothing) |
| Human acceptance | ABSENT | ABSENT |

## 7. Evidence at its strength

| Claim | State |
|---|---|
| The 472 rows exist and their counts | OBSERVED — every row was located in the pinned model by its own substring; a row that failed to locate stopped the build |
| The stamps (GFX/HUMAN/DERIVED/OVERLAY/OPEN/LAW/LAB) | the auditor’s classification, checked against the Pass-4 matrix where it has a row; not independent review |
| “Stated in place” Y/R/N | OBSERVED per row; the rule is in the census legend and is the auditor’s |
| The twelve sentences | OBSERVED byte-for-byte at the locators given; copied, not retyped |
| The citation counts (36 sites, 62 memberships) | OBSERVED by script over the pinned blob |
| Graphics | NOT_PERFORMED — no PNG was re-sighted; D1 rows named in the census are the model’s and the fixture’s |
| No model edit | OBSERVED — the model is not in the commit |

## 8. Rulings

None taken. MA-H00 for pass 1 was answered by *"Proceed with pass 1"*. MA-H01 (what “solve” means beyond (a)–(d)), MA-H02 (promote the register?), MA-H03, MA-H04, MA-H05 wait on the human.

## 9. What pass 2 inherits

- The 38 `THM` rows are the theorem register’s input: Theorem G (statement, base, step), the whole-prefix construction (two “therefore”s, no `∎`), root stability (S2, `N`), backwardness of Join (S4.1, `N`), TOUCH/GROUND same constructor (S3.3), PATH-1 (S3.4), RD-1, OBS-1 and the three source witnesses, HOST-1, the S8 steward tests, `no terminal bound ≠ infinite capacity` (S1.2), `append is mechanically determined` (S4.5, `N`), the fiber equivalence (S10.2, `N`), Δ sufficiency (S10.9, `N`), `feedback ≠ rewrite` (S9.7).
- The `N` list (census §4) is pass 3’s input; the `UNCLASSIFIED` list (census §5) is pass 3’s labelling decision.
- The stale anchor (§5) and the `H`/`S` collisions (register §3) are pass 6’s.

## 10. Beyond the plan’s *May write*, and why

The plan listed three new files. This pass also (a) flipped the pass-1 plan’s Status line to `EXECUTED — CLOSED · receipt …`, and (b) added three rows to [`docs/plans/README.md`](README.md) for the receipt and its two companions. Both follow the convention every executed pass in this tree uses (ROOT / TOUCH / FOLD, sampling, the reference audit) and keep `check-docs` at zero orphans between passes; the plan’s step 6 had deferred the README rows to pass 6, which would have left three orphans for five passes. No other file was touched.

## 11. Stop

Census, register and receipt committed under one maps claim; maps released. Pass 2 needs its own claim and the human’s *proceed*.

## 12. Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Writing down every rule about the lace, who said it and where, before checking the rules, is allowed; it changes no knot. RM-A remains `[GAP]`.
