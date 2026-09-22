# Mathematical execution model audit — pass 2 plan: theorem register and proofs

**Status:** PLAN · not executed.  
**Station:** maps.  
**Board:** [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md) · findings MA-M02, MA-M03, MA-M04, MA-M05, MA-M13.  
**Pinned:** `5ffe01156047df01e8cd0823a286b53e89082905`.  
**Editor (declared):** whoever holds `maps`.  
**Emission:** RM-A `[GAP]` · G1 `[GAP]` · no `src/`. Proofs here are about what the model already states; none decides retain-when, arity beyond the stated constructor, slot order, or word equality.

## Question (one act)

Can every proof obligation the model's own premises permit be discharged in place — each theorem restated with its hypotheses, its proof written or checked, and stamped `PROVED_WITHIN_SCOPE` with the premises named — and every obligation that cannot be discharged reduced to its exact missing premise, with a companion index that says which is which?

## Measured before proposing

- **Ten named results, three proof marks.** Theorem G (S4.2, `∎`), RD-1 (S9.6, `∎`), OBS-1 (S10.3, `∎`); the whole-prefix construction (S4.3, argued, no mark); EP-1 (S10.6, a requirement, not a theorem); HOST-1 / ACCEL-1 / ML-1 / COPY-1 (S11, fences derived from source statements); PATH-1 (S3.4, boxed, witnessed, unnamed there).
- **Stamp vocabulary.** `PROVED` ×7, `proved` ×2, `constructively proved` ×1, `PROVED_WITHIN_SCOPE` ×0; C10 requires the scope token and C08 the premises.
- **Theorem G.** Statement says *one later Lace point*; base case n = 1 is the point itself. The inductive step is sound: `Reach(P_{n+1}) = {P_{n+1}} ∪ Reach(P_n) ∪ Reach(s_{n+1})` follows from the Reach definition.
- **Whole-prefix.** Verified by script on D1: grounding rows 0…10 in index order appends 10 joins, the final point is index 20 = 2m−2, and its Reach is {0…20}. The model asserts the conclusion without the arithmetic. D1 0010's Reach is {0000…0010} (verified) — a bounded witness only.
- **Silent lemmas** the model uses without stating: (L1) `Reach` is well-defined — every POINTER's refs are strictly smaller, so the recursion is well-founded; (L2) validity is invariant — `Arrive` and `Join` (with `a, b < |L|`) preserve *every POINTER references lower indices* and prefix-freeze; (L3) root stability — for seen `v`, any append leaves `min StarWords(v)` unchanged; unseen→root is then the new row by definition (S2 asserts both as H1/H4 consequences); (L4) PATH-1 — Reach membership is not path multiplicity; D1 witness: exactly two paths 0010→0000, `[10,9,7,4,0]` and `[10,2,0]` (verified; the model says "at least two"); (L5) D1 replay — the six Join readings in S4.1 are consistent with the fixture rows (verified, all backward).
- **Not provable from stated premises, and must stay so:** any retain-when; universal arity beyond the constructor the model adopts; slot assignment; G1 equality; that every row is eventually referenced; C6 discriminator.

## Thesis / falsifier

**Thesis.** The following can be written into the model as dated lemma blocks (*Audit pass 2 — lemma*), each with statement · premises · proof · stamp, without changing any existing equation: L1–L5 above; Theorem G restated as *"one addressable Lace point, later than every sample point when n ≥ 2"*; the whole-prefix construction as a lemma with index arithmetic (`P_k` at index `m+k−2` for `k ≥ 2`; final `2m−2`; coverage by induction on `k`). RD-1 and OBS-1 keep their proofs and gain the premises line. EP-1, HOST-1, ACCEL-1, ML-1, COPY-1 are restated as what they are (a requirement; four fences derived from cited source sentences), stamped `DERIVED` not `PROVED`. A companion `docs/math-execution-model-theorems.md` indexes every result: label · section · statement · premises · stamp · what would refute it.

**Falsifier.** A proof attempt fails or needs a premise the model does not state → the result is stamped `UNESTABLISHED` in the companion with the missing premise named; the model's existing stamp is downgraded in pass 3, not patched by quietly adding the premise. Second falsifier: any lemma whose statement decides an open (retain-when, arity as law, slot rule, G1) → struck before commit.

## Steps

1. Pull ff-only · `claim maps "<Identity>"`.
2. Write each lemma on paper first (statement, premises, proof); check L1–L5 and the whole-prefix arithmetic against the D1 fixture by script; keep the script output in the findings.
3. Insert dated lemma blocks in the model beside the claims they discharge: L1/L2 under S1.3–S2; L3 under S2; L4 under S3.4 (naming PATH-1 there); L5 under S4.1; the whole-prefix lemma under S4.3; Theorem G's restatement as an *Audit pass 2 note* directly under its statement, original wording kept and quoted. No formula above the block is edited; the block says what it adds.
4. Write `docs/math-execution-model-theorems.md` (docs root, maps catch-all): the register table; a *proved / derived / requirement / open* legend; a line per result naming its refuter; a pointer back to each block.
5. Findings: results `n/10` stamped `PROVED_WITHIN_SCOPE`, `n` stamped `DERIVED`, `n` `UNESTABLISHED`; lemmas written `n/5`; script receipt; the equation-diff proof (`git diff` shows additions only inside S1–S4 apart from the added blocks).
6. `check-docs` · gate · commit · release. The companion is linked from the model in pass 3 and from the court table by a law handoff (MA-H03).

## May write / must not

**May write (maps):** `docs/math-execution-model.md` (dated lemma blocks only) · `docs/math-execution-model-theorems.md` (new) · `docs/plans/math-execution-audit-pass-2-findings.md` (new).  
**Must not:** change an existing equation, box or table cell (stamps are pass 3's) · add a section number · prove anything about retain-when, arity as law, slot order, G1, eventual reference, C6 · import a premise from a satellite, the reduction model or a clipboard without naming it as a premise · touch law-owned files.

## Expected vs actual

| | Expected | Actual |
|---|---|---|
| Results in the register | 10 + 5 lemmas | NOT_TESTED |
| `PROVED_WITHIN_SCOPE` | G, whole-prefix, RD-1, OBS-1, PATH-1, L1–L3, L5 | NOT_TESTED |
| `DERIVED` / requirement | EP-1, HOST-1, ACCEL-1, ML-1, COPY-1 | NOT_TESTED |
| `UNESTABLISHED` | 0 expected; any is the finding | NOT_TESTED |
| Existing equations changed | 0 | NOT_TESTED |
| Script re-check of D1 claims | all pass | NOT_TESTED |
| Human acceptance | ABSENT | — |

## Stop

Stop when the lemma blocks, the companion and the findings are committed under one maps claim and released. Pass 3 needs its own claim.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Every lemma here is a knot you can tie on the cord: tie two earlier points, tie the result to a third, count where the new tie sits. RM-A remains `[GAP]`.
