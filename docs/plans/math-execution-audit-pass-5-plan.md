# Mathematical execution model audit — pass 5 plan: the bounded closures as lemmas, and the RM-A socket reduced

**Status:** EXECUTED — CLOSED · receipt [math-execution-audit-pass-5-findings.md](math-execution-audit-pass-5-findings.md). Dated S4.7 in the model, 78 lines added and 0 removed: Lemma RM-B(contig), Lemmas RM-C(RootTouch) and RM-C(contig), the sixteen refused families with citations, the docket's five questions verbatim; struck-sentence list empty.  
**Station:** maps.  
**Board:** [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md) · findings MA-M11, MA-M12, MA-X04.  
**Pinned:** `5ffe01156047df01e8cd0823a286b53e89082905`.  
**Editor (declared):** whoever holds `maps`.  
**Emission:** RM-A `[GAP]` and it stays so. This pass writes lemmas about materialization and order that the Lab already closed at bounded scope, cites the refutations of the refused universal families, and reduces the remaining open to the five questions the docket prepared. **It contains no sentence that decides retain-when.**

## Question (one act)

Can the bounded RM-B and RM-C closures enter the model as lemmas with their premises, the refused Retain/Materialize families gain their cited refutations, and RM-A be stated as exactly the docket's five questions with the model's own inputs and outputs named — without one sentence that fires retention, ranks a candidate, or names a threshold?

## Measured before proposing

- **What the model says now.** Header and S0: RM-B *partially closed for selected finite contiguous samples*; RM-C *closed for RootTouch and contiguous grounding, candidate-specific elsewhere*. S3.5 boxes the open transition. S4.5: *[GAP] — sampling discovers structure, but the universal retain-when/materialize-operand condition is not established*. S4.6 refuses six universal substitutes with no citations. S9.8 fences device output from retention.
- **What the Lab closed** (`lab-source-architecture-pass-6-findings.md`): §3 RM-B — for a selected contiguous cell `S[n,t] = (r_{t−n+1}, …, r_t)`, the named prefix deterministically yields the ordered WORD-row addresses (interleaved POINTER rows skipped), which are already valid SM-C19 inputs, so repeated `Join` supplies one addressable representative; §4 — materialization is representability, not topology identification (a left fold over D1's five WORD rows covers the same words as row 0010 by a different topology); §5 RM-C — RootTouch's order is `(new occurrence, root)` by H1/H4; contiguous grounding's order is the cell's own; generic role/order stays open; §9 — RM-A evidence-insufficiency certificate, eight steps.
- **What the docket holds** (`lab-source-architecture-pass-6-design-docket.md`): §2 the obligation (input: sampling-derived evidence from the prefix; output: a decision that a specific structure warrants retention); §3 legal input classes and the silently-forbidden ones; §4 minimum output (`retain? · selected object · evidence`); §5 sixteen forbidden answer families (the model's six plus ten); §7 the five questions; §8 the evidence a design must survive.
- **What the sampling campaign refuted** (`sampling-density-emergence-pass-*-findings.md`): every-cell, every-adjacent-pair, exact-repeat-only, first-seen-every-cell, cheapest-contiguous — each with its counterexample; pass 5 §0 fixed `SearchHandle = (through, anchor, item)` as disposable.

## Thesis / falsifier

**Thesis.** One dated subsection, `S4.7 — Bounded closures and the remaining socket (audit pass 5)`, can carry:

1. **Lemma RM-B(contig).** Premises: the current constructor; SM-C19; deterministic WORD-row reconstruction from a named prefix; a contiguous cell already selected by *some* RM-A decision. Conclusion: one addressable representative exists and is constructible by `n−1` joins. Stamp `PROVED_WITHIN_SCOPE` with the *already selected* premise in bold, and the §4 caveat that representability ≠ topology identification.
2. **Lemma RM-C(RootTouch)** and **Lemma RM-C(contig).** Premises: H1/H4; the cell's intrinsic order; SM-C19 preserves order. Conclusion: the ordered operand roles are determined. Stamp `PROVED_WITHIN_SCOPE`; generic RM-C stated OPEN.
3. **The refused-families table**: the docket's sixteen, each with the file and section holding its refutation or the fence forbidding it.
4. **The socket**: the docket's §2 obligation and §7 five questions quoted, with the model's names filled in (input = S3.5 / S3.6 reads over `L_n`; output = a selected object precise enough for Lemma RM-B or a declared constituent-point description; evidence = S10 `SEE-L` support under EP-1); and the sentence *"this model supplies no candidate answer; the next step is the human-facing design/ruling the Pass-6 docket prepared (MA-H01)"*.

**Falsifier.** Any sentence in S4.7 that (a) says when to retain, (b) orders or ranks candidates, (c) names a scalar or threshold, (d) introduces an input the docket §3 forbids, or (e) treats a bounded lemma as universal → struck before commit; the findings record the struck sentence. A lemma whose premise list omits *already selected* → falsifier fires.

## Steps

1. Pull ff-only · `claim maps "<Identity>"`.
2. Re-read lab-source Pass-6 §3–§5 and the docket §2–§8; write the two lemma families and the table on paper; check RM-B(contig) on D1 by script (select the cell of the five WORD rows; reconstruct addresses `0,1,3,5,8`; ground; confirm the representative's Reach covers them and that its topology differs from row 0010's).
3. Insert S4.7 after S4.6; nothing above it edited (pass 3's stamps excepted, already landed).
4. Adversarial read of S4.7 by the falsifier list; strike and record.
5. `check-docs` · gate · commit · release · findings with the script receipt, the struck-sentence list (expected empty, reported either way), and the handoff: the manifest's SM-GAP-RM text may cite S4.7 (law, MA-H02/H03).

## May write / must not

**May write (maps):** `docs/math-execution-model.md` (S4.7 only) · `docs/plans/math-execution-audit-pass-5-findings.md` (new).  
**Must not:** decide retain-when · rank or score · add an input the docket forbids · universalize a bounded lemma · edit the docket, the lab-source findings, the sampling findings, the manifest or the pointer draft · add a Core row, a query interface, or `src/`.

## Expected vs actual

| | Expected | Actual |
|---|---|---|
| Lemmas stated with premises | 3/3 | NOT_TESTED |
| Refused families with a cited refutation or fence | 16/16 | NOT_TESTED |
| Docket questions carried verbatim | 5/5 | NOT_TESTED |
| Sentences deciding retain-when | 0 | NOT_TESTED |
| Script check of RM-B(contig) on D1 | pass; topology differs from 0010 | NOT_TESTED |
| Human acceptance | ABSENT | — |

## Stop

Stop when S4.7 and the findings are committed under one maps claim and released. Pass 6 needs its own claim.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Given five marked points on the cord already chosen by someone else, you can tie them into one point and say where it sits; you cannot say which five to choose. RM-A remains `[GAP]`.
