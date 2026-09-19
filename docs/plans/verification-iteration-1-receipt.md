# Verification iteration 1 — receipt

**Status:** receipt. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Pinned at `b6170bf`.** Every number below was produced by a command recorded in §5.
**Iteration:** [verification iteration 1](verification-iteration-1-plan.md). Iteration 0 was [the restructure](restructure-plan.md).

> **Iteration 0 made the repository legible. Iteration 1 asked whether what the documents say is true.**

---

## 1. Coverage — fractions, not impressions

| Pass | Scope | Read | Coverage |
|---|---|---|---|
| **1** — the board | the mechanical surface | complete | measured, then **overturned its own headline** |
| **2** — citations | 240 cite-bearing lines, four graphics | 2a 79 · 2b 58 · 2c 57 · 2d 46 | **240 / 240** |
| **3** — evidence strength | 173 claim-bearing lines | 3a census · 3b 4 receipts + the template · 3c 61 lines | **61 / 173 verdicted** — see the limit below |
| **4** — audit verdicts | 18 ticks | all | **17 / 17** with citations, dated |
| **5** — enforcement | 13 decisions | — | **0 / 13.** Human; not this pass's to close |

**Pass 3's limit, repeated rather than buried:** 112 of the 173 `proved`/`verified` lines were **not** individually verdicted. They sit outside C10's field system — prose, not records — and grading them would have measured writing style, not evidence strength. That is a stated limit, not coverage.

## 2. What iteration 1 established

**The source of record is sound, and the documents read it accurately.**

- **Both independent transcriptions of panel D1 are byte-identical to the panel** (`graphics-close-reading.md:24`, `atomic-primitives-map.md:74`), and so is the manifest's separate reading of D6's chain. The only numeric evidence in the project is right in every copy.
- **Every derived count off those eleven rows holds**: arity 2 in six of six, slot order two ascending and four descending, `ref_A` the subject of the panel's gloss in all six, four adjacent WORD pairs with two unlinked, pointers-per-arrival `0,1,1,2,2`, every entry but the newest referenced later.
- **Across 240 cite-bearing lines, not one wrong-panel citation.** The `B10`/`B11` class this iteration was convened to hunt did not appear.
- **Three defects, all in one document, all about wording rather than which panel was named:** a D4 quotation with "in the main data structure" dropped and no ellipsis; "panel labels … are not printed in the graphics", when D, C and B all print their numbering; and "indices are permanent" stamped as source when the D1 footer does not take that step.
- **No document in this tree has ever recorded that something was established.** `PROVED_WITHIN_SCOPE`, `VERIFIED_FOR_NAMED_PATH`, `HUMAN_REPORTED` and `PRESENT_FOR_EXACT_REVISION` occur **zero** times outside the clause defining them and the template shipping them, against `ABSENT` in 15 files and `NOT_PERFORMED` in 12. **That is an accurate self-report**, and the strongest evidence in the tree that the emission `[GAP]` is real rather than procedural.
- **Adoption tracks the task template, not the law.** Every token the template omits has zero adoption. One line in one kit file is what would change practice.
- **Not one audit verdict still describes main.** 17 of 17 ticks cite at least one path that has moved or changed. The log now says so in its own append-only form.

## 3. What iteration 1 could not do

- **Close pass 5.** Thirteen enforcement decisions are the human's. They are recorded, not decided.
- **Verdict the 112 prose lines.** §1.
- **Reconcile C01 and C10.** Two evidence vocabularies, twelve clauses apart, neither citing the other. Kit and the human.
- **Repair anything it found.** Every source document was read-only across every pass. The three close-reading defects are proposals for the law station and remain unapplied.
- **Keep up.** 66 commits landed in the last hour. The tree is 421 commits past the audit tick this iteration set out to date, up from 196 when pass 1 measured it.

## 4. The finding under the findings

**Four times, a count dissolved when someone read it.**

| Count | By script | After reading |
|---|---|---|
| Out-of-range panel cites | 1 | **0** — `D7` is a Rowlands section |
| "Panel cites in unambiguous context" | 241 | **unreproducible**; the near-miss at 240 is coincidence |
| Modal vs assertive proof claims | — | **grep explains 21%**; the rest needs reading |
| Graphic A cites in the reason model | 19 | **1** — eighteen are the AgentScope paper's sections |

**Every one was the instrument's error, and every one was found by reading.** Not one was a document being wrong.

The register grew from sixteen claimed families to twenty-one, and a **four-owner** token band appeared for the first time. `A1`–`A5` is now a Graphic A panel, a `trainA` tooth, an audit station, and an AgentScope section.

And the smaller one worth keeping: **the source of record contains four typographical errors** — `occurrecos`, `obiect`, `Continure.` in Graphic A, `Itt` in B10. A13's `Continure.` is a typo rather than a variant because B12 and C12 both print `Continue.` **"Transcribed exactly" carries a decision**, ruled in 2c: reproduce, mark where confusing, never silently correct.

## 5. The board for iteration 2, measured at `b6170bf`

```bash
git ls-files | wc -l ; git ls-files '*.md' | wc -l
git log --since='24 hours ago' --oneline | wc -l
git log --since='1 hour ago' --oneline | wc -l
git rev-list --count 33b7e79..HEAD
.claude/hooks/check-docs.sh
```

| | at `810d200` (pass 1) | at `b6170bf` (now) |
|---|---|---|
| Tracked files / markdown | 228 / 156 | **301 / 228** |
| Commits in 24 hours | 331 | **508** |
| Commits in the **last hour** | — | **66** |
| Commits since the last audit tick | 196 | **421** |
| Orphans | 9 | **34** |
| Advisory findings | 17 | **39** |
| Cite-bearing lines verified against a panel | 0 | **240** |
| Wrong-panel citations found | — | **0** |
| Instrument errors found by reading | 1 | **4** |

**Iteration 2 should not lead with what a script can see.** Pass 1 found the mechanical surface near its limit and every pass since confirmed it: the checker now produces more false positives than the tree produces errors. Candidate rows, argued rather than assumed:

- **Quotations checked against their panel.** Every defect this iteration found was of this kind, and 2c's was found *outside* its own coverage metric — the 240 counts numbered panel tokens, so `A header`, `D footer` and `D Key properties` cites fall outside it. **Iteration 2 should count regions, not just numbers.**
- **Claims carrying a scope**, against claims asserting without one. Currently zero of the former.
- **Receipts whose citations still resolve.** Pass 4's measure. 17 of 17 failing.
- **Doors covering their shelf**, if pass 5 rules it gates.
- **The churn rate.** 66 commits an hour is not context. It is the denominator every other number is divided by, and the reason a re-walk loses to a dated pin.

## 6. What is queued

| Item | Owner |
|---|---|
| Pass 5's thirteen rulings | **human** |
| The three close-reading defects (2a-1, 2a-3, 2c-1) | law station, after a ruling |
| Register rows are current: C5 planes and AgentScope sections added | done |
| Iteration 2's board | this document, §5 |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Iteration 1 opened by finding its own first measurement wrong and closes having found three more of the same. The documents were reading the lace correctly the whole time; it was the ruler that kept slipping. **Two hundred and forty citations were checked against the picture and none named the wrong panel.** Emission remains `[GAP]`, and nothing in this receipt moves it.
