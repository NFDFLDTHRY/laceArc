# Mathematical execution model audit — pass 5 findings: the bounded closures as lemmas, and the RM-A socket reduced

**Status:** EXECUTED — CLOSED.  
**Plan:** [math-execution-audit-pass-5-plan.md](math-execution-audit-pass-5-plan.md) · board [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md) · findings MA-M11, MA-M12, MA-X04.  
**Proceed:** the human, 2026-09-22: *"Proceed with pass 5"*. Read as MA-H00 for pass 5 and nothing else. MA-H01 — whether an RM-A design or ruling is convened — remains the human's and is **not** taken here.  
**Pre-pass baseline:** `5ffe01156047df01e8cd0823a286b53e89082905` (`origin/main`); maps claim `8c894a3` above the pass-1 to pass-4 commits.  
**Products:** one dated subsection `S4.7` in [`docs/math-execution-model.md`](../math-execution-model.md) · this receipt. One maps commit, then release.  
**`git diff --numstat` on the model: 78 added, 0 removed. Nothing above S4.7 edited. The docket, the lab-source findings, the sampling findings, the manifest and the pointer draft are untouched. No Core row, query interface or `src/`. RM-A is `[GAP]` before and after.**

## 1. Verdict

**THE TWO LAB CLOSURES ARE IN THE MODEL AS LEMMAS WITH THEIR PREMISES — RM-B(contig) AND RM-C(RootTouch), RM-C(contig), EACH `PROVED_WITHIN_SCOPE` WITH "ALREADY SELECTED" IN BOLD WHERE IT BELONGS; THE SIXTEEN REFUSED FAMILIES CARRY THEIR CITED REFUTATION OR FENCE; RM-A IS STATED AS EXACTLY THE DOCKET'S FIVE QUESTIONS, VERBATIM, WITH THE MODEL'S OWN INPUT, OUTPUT AND WRITE NAMED.**

**NO SENTENCE IN S4.7 DECIDES WHEN TO RETAIN, RANKS A CANDIDATE, NAMES A SCALAR OR THRESHOLD, ADMITS A FORBIDDEN INPUT, OR UNIVERSALIZES A BOUNDED LEMMA. THE STRUCK-SENTENCE LIST IS EMPTY.**

## 2. What S4.7 carries

| Part | Content | Source carried | Stamp |
|---|---|---|---|
| S4.7.1 Lemma RM-B(contig) | for a contiguous cell **already selected** by an RM-A decision the model does not supply, the WORD-row addresses are determined by the prefix, and the S4.2 ladder yields one representative in n−1 rows; representability ≠ topology identification; capability ≠ trigger (the unretained D1 cell S[2,2]) | lab-source Pass 6 §3 (chain and D1 controls), §4 | `PROVED_WITHIN_SCOPE`, premises (i)–(iv), (iv) = *already selected* |
| S4.7.2 Lemma RM-C(RootTouch) | operand order (new occurrence, root) fixed by the rule that mandates the row | H1/H4, S3.3; lab-source §5 | `PROVED_WITHIN_SCOPE` (definitional) |
| S4.7.2 Lemma RM-C(contig) | ladder operand order is the cell's own source-position order | lab-source §5; SM-C19 | `PROVED_WITHIN_SCOPE`, this class only |
| S4.7.2 generic RM-C | ref_A/ref_B semantics, subject/object roles, relation-between-relations order, unordered classes | lab-source §5 result block | OPEN |
| S4.7.3 refused families | 16 rows, each with its refuting file/section or forbidding fence | docket §5; sampling Pass 1 C-C, F1-5, F1-6, recurrence table; sampling Pass 2 T-R1, T-R2, T-R5, F2-12; lab-source §6, §8, §9; BRD Pass 4 §14; the fixture's *ruled out by these rows*; model S1.3, S3.3, S4.1, S6, S9.8, S11.9, S11.12, S12.5 | pointers, not arguments |
| S4.7.4 the socket | docket §2 obligation quoted; §3 inputs and forbidden inputs with model names; §4 output with model names; the five §7 questions verbatim and the two riders; §8 evidence list; §9 certificate pointer; *this model supplies no candidate answer*; MA-H01 named | docket §2–§9 | OPEN, stated |

## 3. Script receipt

Run 2026-09-22 over [`d1-golden-v0.1.0.json`](fixtures/d1-golden-v0.1.0.json):

```
WORD-row addresses (deterministic from the prefix): [0, 1, 3, 5, 8]
root keys of the cell: ['PIE', 'DESSERT', 'PIE', 'WHOLE', 'CUSTOMER']
joins appended: 4 (n-1 = 4 ) representative index: 14
Reach(rep): [0, 1, 3, 5, 8, 11, 12, 13, 14] covers cell: True
Reach(0010): [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
same words covered as 0010? True ; topology differs (operand pairs): [(0, 1), (11, 3), (12, 5), (13, 8)] vs D1's [(0, 1), (3, 0), (3, 5), (6, 4), (8, 7), (9, 2)]
rep's Reach == Reach(0010)? False
RM-C(contig) operand order = cell order: True
RM-C(RootTouch) 0004 == (3, 0): True
```

The Lab's D1 controls (S[2,1] → 0002, S[2,3] → 0006, S[2,2] derivable and unretained) are the same computation at n = 2 and were re-read, not re-run.

## 4. The falsifier list, sentence by sentence

Every sentence of S4.7 was read against the five conditions. A mechanical scan for the words *retain when / retain if / should retain / must retain / threshold / score / rank / similar / embedding / prefer / best / cheapest / most* found seven lines; each is listed with why it is not a decision.

| Line in S4.7 | Hit | Why it is not a firing |
|---|---|---|
| preface | *names a threshold* | the sentence says the subsection does **not** |
| RM-B premise (ii) | *rank in WordTrace* | a position index, not a ranking of candidates |
| table row 5 | *cheapest-contiguous* | the refuted family's name, with its refutation |
| table row 6 | *semantic similarity / embedding threshold* | the refuted family's name, with its fence |
| after the table | *a recurrence threshold is not refuted; it is open / not admitted* | reports the Lab's T-R3 status; names no value |
| socket, input | *meanings or similarity scores* | listed as **not** consumable |
| socket, riders | *a scalar threshold must also name the authority* | the docket's rider, quoted and attributed |

(a) when to retain: no sentence. (b) ordering or ranking candidates: none; the only orders stated are RootTouch's and a selected cell's own. (c) a scalar or threshold: none named. (d) an input the docket §3 forbids: none admitted; the forbidden list is repeated as forbidden. (e) a bounded lemma treated as universal: none — RM-B(contig) carries its class-specific scope and the four exclusions; RM-C(contig) says *this class only*; generic RM-C is stated OPEN. The premise-list check: RM-B(contig)'s list has *already selected* as premise (iv), in bold, twice.

**Struck sentences: none; reworded sentences: none.** The scope line of S4.7.1 was written in the Lab's own wording — *a selected finite contiguous sample occurrence whose constituent WORD rows are in the named prefix* — on the first draft, so the adversarial read had nothing to strike.

## 5. Corrections and additions made in the open

| Before | After |
|---|---|
| Header and S0 *mention* RM-B and RM-C closures the model does not carry (MA-M11) | S4.7.1–S4.7.2 carry them as lemmas with premises |
| S4.6 lists six refused substitutes with no citation (MA-M12) | S4.7.3 cites each, and the docket's ten more |
| The model does not link the RM-A docket; S4.5/S4.6 say only `[GAP]` (MA-X04) | S4.7 links the docket six times and quotes §2 and §7 verbatim |
| S3.5 asks *is exact recurrence the universal retention rule?* without its answer's locator | S4.7.3 row 3 points at T-R1 and T-R3 |

## 6. Expected vs actual

| | Expected | Actual |
|---|---|---|
| Lemmas stated with premises | 3/3 | **3/3** — RM-B(contig), RM-C(RootTouch), RM-C(contig) |
| Refused families with a cited refutation or fence | 16/16 | **16/16** |
| Docket questions carried verbatim | 5/5 | **5/5**, plus the two riders and the §2 obligation |
| Sentences deciding retain-when | 0 | **0** (§4) |
| Script check of RM-B(contig) on D1 | pass; topology differs from 0010 | **pass**; representative at 14, Reach ≠ Reach(0010) |
| Existing lines changed | 0 | **0** (78 added) |
| Human acceptance | ABSENT | ABSENT |

## 7. One numbered heading, by the board's own plan

The numbered heading set gains exactly `### S4.7` and its four `####` parts. MA-H05 assumes no renumbering and no new *section* number; the board's pass-5 row and this plan's title both name a dated **subsection** `S4.7`, and the human's *proceed* was on that plan. `S0`–`S12` are unchanged; `S4.7` sits inside the registered family. Recorded so pass 6's namespace row can say so.

## 8. Evidence at its strength

| Claim | State |
|---|---|
| The three lemmas | `PROVED_WITHIN_SCOPE` as written; one author; the fourth premise of RM-B(contig) is assumed, not supplied |
| The D1 clauses | OBSERVED by script (§3) |
| The sixteen citations | OBSERVED — each cited section was opened this pass and its refuting sentence read (T-R1, T-R2, T-R5, T-R3, F1-5, F1-6, C-C, the recurrence table, lab-source §3–§6, §8, §9, BRD Pass 4 §14, the fixture's *ruled out* lines) |
| The docket quotations | OBSERVED byte-for-byte against docket §2, §7 |
| Graphics | NOT_PERFORMED |

## 9. Handoffs

- **Law (MA-H02 / MA-H03):** the manifest's `SM-GAP-RM` text and the pointer draft's *Sampling-derived retention boundary* may cite S4.7 for the two bounded lemmas; whether they do is the law station's and the human's.
- **The human (MA-H01):** the RM-A design or ruling the docket prepared. S4.7.4 ends by saying the model supplies no candidate answer and that convening the ruling is the human's.
- **Pass 6:** the namespace row for `S4.7` and the lemma labels `RM-B(contig)`, `RM-C(RootTouch)`, `RM-C(contig)`; the propagation table gains the header/S0 sentences that now have a body behind them; the theorem register (pass 2) gains three rows in pass 6 or at the next companion refresh — it was not edited this pass because the plan's *May write* names only the model and this receipt.

## 10. Beyond the plan's *May write*, and why

The pass-5 plan's Status line was flipped to executed and one row was added to [`docs/plans/README.md`](README.md), as passes 1–4 did.

## 11. Stop

S4.7 and this receipt committed under one maps claim; maps released. Pass 6 needs its own claim and the human's *proceed*.

## 12. Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Given five marked points on the cord already chosen by someone else, you can tie them into one point and say where it sits and in what order you took them; you cannot say which five to choose. RM-A remains `[GAP]`.
