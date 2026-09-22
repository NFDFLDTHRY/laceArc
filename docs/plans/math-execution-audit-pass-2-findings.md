# Mathematical execution model audit — pass 2 findings: theorem register and proofs

**Status:** EXECUTED — CLOSED.  
**Plan:** [math-execution-audit-pass-2-plan.md](math-execution-audit-pass-2-plan.md) · board [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md) · findings MA-M02, MA-M03, MA-M04, MA-M05, MA-M13.  
**Proceed:** the human, 2026-09-22: *"Proceed with pass 2"*, then *"Try again"* after the session paused mid-pass; read as MA-H00 for pass 2 and nothing else. MA-H01–MA-H05 remain untaken.  
**Pre-pass baseline:** `5ffe01156047df01e8cd0823a286b53e89082905` (`origin/main`); maps claim `50e2a8b` on the campaign branch above the pass-1 commits.  
**Products:** eight dated blocks in [`docs/math-execution-model.md`](../math-execution-model.md) · [`docs/math-execution-model-theorems.md`](../math-execution-model-theorems.md) (new, docs root) · this receipt. One maps commit, then release.  
**No existing equation, box, table cell or sentence of the model changed: `git diff --numstat` reads 99 added, 0 removed. No law, manifest, pointer draft, graphic, fixture, register or satellite changed. No retain-when, arity, slot, G1, eventual-reference or C6 sentence written.**

## 1. Verdict

**EVERY PROOF OBLIGATION THE MODEL'S OWN PREMISES PERMIT IS DISCHARGED IN PLACE: 9 RESULTS STAMPED `PROVED_WITHIN_SCOPE` WITH PREMISES NAMED, 4 RESTATED AS `DERIVED` FROM CITED SOURCE READINGS, 1 AS A `REQUIREMENT`, 0 `UNESTABLISHED`.**

**FIVE SILENT LEMMAS ARE NOW WRITTEN (L1–L5) AND THE WHOLE-PREFIX CONSTRUCTION HAS ITS INDEX ARITHMETIC (LEMMA WP). THEOREM G IS RESTATED WITH ITS BASE CASE. "AT LEAST TWO" D1 PATHS IS NOW "EXACTLY TWO".**

**THE COMPANION INDEXES 14 RESULTS, 11 OTHER PROOF-SHAPED SENTENCES AND THE 3 PASS-4 FENCES. NEITHER FALSIFIER FIRED.**

## 2. What was written into the model, and where

Eight additions, each dated *Audit pass 2 — 2026-09-22*, each saying what it adds and that nothing above it is edited. Line numbers are of the model after the pass.

| Block | Where | Lines | What it discharges |
|---|---|---|---|
| Lemma L1 (Reach well-founded) + Lemma L2 (validity and prefix-freeze invariant) | end of S1.3 | 106–130 | MA-M05 (a), (b); the S8 steward tests *no old row rewritten*, *all refs backward* |
| Lemma L3 (root stability under any append) | end of S2 | 166–177 | MA-M05 (c); S2's two displayed equations now follow from the definitions |
| Lemma L4 = PATH-1 (membership ≠ multiplicity; exactly two D1 paths) | S3.4, under the box | 315–328 | MA-M05 (d); names PATH-1 in the model; corrects "at least two" |
| Lemma L5 (D1 replay) | end of S4.1 | 505–516 | MA-M05 (e); the S4.1 table as a checkable claim |
| Theorem G restated | S4.2, directly under the statement, before the original proof | 541–548 | MA-M03 (base case vs "later"); premises named; H5/H6 placed as the construction's warrant, not proof premises |
| Lemma WP (whole-prefix, index arithmetic) | end of S4.3 | 593–610 | MA-M04; `P_k` at `m + k − 2`, final `2m − 2`, coverage by induction |
| RD-1 premises note | S9.6, after the proof's scope sentence | 1006 | MA-M02 for RD-1: premises and scope named |
| OBS-1 premises note | S10.3, after the scope sentence | 1234 | MA-M02 for OBS-1: premises named; the S10.4 witnesses classed `DERIVED`; the S10.14 verdict handed to pass 3 |

**Equation-diff proof.** The diff of the model is 99 added lines and 0 removed lines; every added line is inside one of the eight blocks; all blocks are `####` headings without a section number or italic notes, in the model's own existing style (S3.4 and S4.2 already use unnumbered `####` headings). MA-H05 (no renumbering, no new section number) is respected.

## 3. Script receipt

Run 2026-09-22 over [`docs/plans/fixtures/d1-golden-v0.1.0.json`](fixtures/d1-golden-v0.1.0.json) and 500 random valid states. The script is not tracked.

```
D1 rows: 11
L1/L2 validity on D1 (every POINTER ref strictly lower): True
L1 Reach(0010): [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
L3 Root(PIE) after each prefix of length 1..11: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
L3 Root(DESSERT): [None, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
L4 PATH-1 paths 0010->0000: [[10, 9, 7, 4, 0], [10, 2, 0]] count 2
L5 D1 replay (six S4.1 Join readings == fixture rows): True
WP on D1: m=11 joins appended=10 final index=20 (2m-2=20) Reach(final)==range(21):True
WP ladder indices P_1..P_m: [0, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20] formula m+k-2 for k>=2: True
WP Reach(P_k) == {0..k-1} U {m..m+k-2} for k>=2: True
WP prefix frozen: True
random laces (500): failures = 0
```

The random check covers, per state: validity of the generated state; the full-prefix ladder's final index `2m − 2`, its Reach `= {0…2m−2}`, the index formula for every `P_k`, validity of the result and prefix-freeze; Theorem G on a random sample of size `k` (containment, `k − 1` rows appended, lateness for `k ≥ 2`); and root stability for every value across every prefix of the result.

## 4. The register — what was found

| Measure | Result |
|---|---|
| Results indexed | **14** distinct (10 named in the model or the Pass-4 artifacts + L1, L2, L3, L5; L4 is PATH-1) |
| `PROVED_WITHIN_SCOPE` | **9** — L1, L2, L3, L4/PATH-1, L5, Theorem G, Lemma WP, RD-1, OBS-1 |
| `DERIVED` | **4** — HOST-1, ACCEL-1, ML-1, COPY-1: sound inferences whose premises are source readings at rung `T_0`; the model's boxes *"host dependence proved"* and *"ACCELERATOR NON-AUTHORITY PROVED"* overstate by one rung |
| `REQUIREMENT` | **1** — EP-1 |
| `UNESTABLISHED` | **0** — no proof needed a premise the model does not state |
| Other `THM` sentences disposed | 11 (companion §2), including the S10.2 fiber equivalence (`PROVED_WITHIN_SCOPE`, standard) and the S10.4 witnesses (`DERIVED` from source readings) |
| Pass-4 fences | STAR-1, VIEW-1: fences over reads the model does not define formally (`FullStar`, `FullLaceStructure`); not theorems, `DERIVED` from the panels; AUTH-1 a `REQUIREMENT`. Pass 3 labels them |

**One stamp the audit could not leave alone but did not touch.** S10.14's box *OBS-1 PROVED WITH SOURCE WITNESSES* joins a proved conditional to three derived witnesses. The OBS-1 note says so in place; the box is a verdict and pass 3's to retie (MA-M02, MA-M13).

## 5. The two falsifiers

**First (a proof needs an unstated premise).** Did not fire. Each proof was written from premises the model already states; where a definition was needed that the model uses without writing (validity; reference path), the block writes it as a definition, not as a premise smuggled from a satellite. Lemma L3 names G1 as *a fixed relation, whichever it is* rather than assuming one.

**Second (a lemma decides an open).** Did not fire; checked lemma by lemma before commit:

| Lemma | What it does not decide |
|---|---|
| L1, L2 | which operands are selected; slot order; word equality |
| L3 | which values are equal (G1); whether the touch is appended (H1 decides; S3.3 encodes) |
| L4 | anything about a source beyond the rows D1 draws |
| L5 | why D1's operands were chosen (the Authority boundary; RM-A) |
| Theorem G | which samples are chosen; H5/H6 are the warrant for adopting the ladder, not proof premises |
| Lemma WP | whether a full-prefix grounding is ever selected |
| RD-1 note | anything about code |
| OBS-1 note | whether any given source quantity's hypothesis holds; that stays `DERIVED` |

## 6. Corrections made in the open

| The model said | Now | Where |
|---|---|---|
| Theorem G: *"one later Lace point"*; base case *"already one addressable point"* | restated: later for `n ≥ 2`; the point itself for `n = 1`; original kept and quoted | S4.2 note |
| S3.4: *"at least two distinct recursive reference paths"* | **exactly two**; enumeration written | Lemma L4 |
| S4.3: conclusion without arithmetic | `P_k` at `m + k − 2`; final `2m − 2`; `Reach(P_k)` formula; coverage by induction | Lemma WP |
| S2: root stability *as a consequence of H1* | proved from `Root = min` and prefix-freeze; H1/H4 remain premises for what is appended | Lemma L3 |
| S8 steward tests listed | two of them proved (L2), one identified with Theorem G | L2 consequence; companion §2 |

## 7. Expected vs actual

| | Expected | Actual |
|---|---|---|
| Results in the register | 10 + 5 lemmas | **14 distinct** (L4 = PATH-1), plus 11 disposed sentences and 3 Pass-4 fences |
| `PROVED_WITHIN_SCOPE` | G, whole-prefix, RD-1, OBS-1, PATH-1, L1–L3, L5 | **the same nine** |
| `DERIVED` / requirement | EP-1, HOST-1, ACCEL-1, ML-1, COPY-1 | **the same five** (EP-1 as `REQUIREMENT`) |
| `UNESTABLISHED` | 0 | **0** |
| Existing equations changed | 0 | **0** (99 added, 0 removed) |
| Script re-check of D1 claims | all pass | **all pass**; 500 random states, 0 failures |
| Lemmas written | 5 | **5 + WP** |
| Human acceptance | ABSENT | ABSENT |

## 8. Evidence at its strength

| Claim | State |
|---|---|
| The nine proofs | `PROVED_WITHIN_SCOPE` as written in the blocks; one author wrote and checked them — not independent review |
| The D1 clauses and the arithmetic | OBSERVED by script (§3) |
| The four `DERIVED` rows | the inferences are read from the model; their source premises were **not** re-read against the specifications in this pass (the platform clipboards were not opened) — the stamp says exactly that |
| Diff additions-only | OBSERVED (`git diff --numstat`) |
| Graphics | NOT_PERFORMED — no PNG re-sighted; D1 rows are the fixture's |

## 9. Handoffs

- **Pass 3:** retie the `PROVED` stamps (S0, S4.5, S8, S9.12, S10.14, S11.4, S11.14) to the companion's vocabulary; label STAR-1/PATH-1/VIEW-1 on their boxes (PATH-1 is now named in S3.4 by the block; the box itself is untouched); link the companion from the model's header or S8.
- **Pass 6:** namespace — new labels `Lemma L1`–`L5`, `Lemma WP`; `L1`…`L5` collide with the model's own state notation `L_0`, `L_1`, `L_n` (every block therefore writes *Lemma L1*, never bare `L1`); the companion needs a court-index row (MA-H04/MA-H03 territory) and is presently reached from this receipt and the plans index only, so the docs-root door count moves from 24/43 to 24/44.
- **The human (MA-H03):** whether the manifest may cite the companion as the proof surface for Pieces 5 and 11.

## 10. Beyond the plan's *May write*, and why

The pass-2 plan's Status line was flipped to executed and one row was added to [`docs/plans/README.md`](README.md), as pass 1 did and every executed pass in this tree does. Nothing else outside the three named files was touched.

## 11. Stop

Blocks, companion and receipt committed under one maps claim; maps released. Pass 3 needs its own claim and the human's *proceed*.

## 12. Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Every lemma here is a knot you can tie on the cord: tie two earlier points, tie the result to a third, count where the new tie sits. RM-A remains `[GAP]`.
