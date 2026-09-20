# Verification iteration 2, pass 4 — the templates and prompts

**Status:** `[PLAN]`. **EXECUTED** — [the record](verification-iter2-pass-4-findings.md). 4a: a broken form, not broken practice. 4b: commits survive, paths do not. 4c: the prompts door is a filing gap. **Station:** maps for this plan and its record. Read-only on kit and prompts.
**Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 2](verification-iteration-2-plan.md), pass 4 of six. Passes 1–3 EXECUTED.

## 0. The question

[Iteration 1's pass 3](verification-iter1-pass-3-findings.md) found that **adoption tracks the task template, not the law** — every evidence token the template ships is used somewhere, every token it omits has zero uses.

Pass 4 asks the next question: **does a receipt establish what it claims?**

## 1. Probed first: the form has never once been used

The template prints a receipt block — `TASK:`, `REPOSITORY / COMMIT:`, `LAW SOURCE / REVISION:`, `GRAPHICS ACTUALLY VIEWED:`, and ten more lines.

**Across 226 markdown files, exactly one carries that block: the template itself.**

What exists instead is **seven documents carrying receipt-shaped tables**. Three sampled, and their field sets are not variations on a theme:

| Document | Fields |
|---|---|
| `rust-nostd-crate-map.md` | Prior map identity · Existing work · Source coverage · Physical / visual evidence · Adjacent sources · Repository inspection · Permission / proof / enforcement · Open differences retained · **Completion boundary** |
| `agentscope-clipboard.md` | Primary-source coverage · Implementation gate · Known source conflict · Evidence / trust · Completion checks · Pass · PROPOSE · ATTACK · RESOLVE |
| `atomic-primitives-map.md` | Original holder texts · Unread / unperformed · Known source limitations · Allowed file / effects · Expected check · Actual evidence · Acceptance · Enforcement · **Completion boundary** |

**Three receipts, three field sets, one field in common.** There is no template in use; each document invents its own receipt.

**So iteration 1's finding narrows.** The template's *vocabulary* was adopted — `NOT_PERFORMED`, `VISUALLY_OBSERVED`, `ABSENT`, `NOT_RUN`. Its *form* never was. Agents took the word list off the page and left the page.

## 2. And an anchor that survived the churn

28 commit identities sampled across the four receipt-carrying documents that cite them:

| Document | SHAs sampled | Unresolvable |
|---|---|---|
| `atomic-construction-pass-1-plan.md` | 9 | **0** |
| `gearing-code-1to1.md` | 10 | **0** |
| `rust-nostd-crate-map.md` | 5 | **0** |
| `atomic-primitives-map.md` | 4 | **0** |

Set that beside [iteration 1's pass 4](verification-iter1-pass-4-plan.md): **17 of 17 audit ticks cite a path that has since moved or changed.**

**Same tree, same 400-commit churn, opposite outcome. A receipt pinned to a commit survives; a receipt pinned to a path does not.** That is the most useful thing measured in this pass's planning, and it is a recommendation the receipt question should be decided around.

## 3. Three sub-passes

| Sub-pass | Scope | Question |
|---|---|---|
| **4a** | all 7 receipt-carrying documents | Inventory every field set. **Is there a common core**, or seven private forms? Three samples share one field; four documents remain unread |
| **4b** | the claims inside them | Test what is testable: commit identities (begun, §2), cited paths, and **visual claims corroborated against [iteration 1 pass 2](verification-iter1-pass-2-findings.md)**, which read all four graphics directly and verified 240 citations |
| **4c** | `docs/prompts/` — 16 files | A door that links **none** of them since the commit that created it. And the audit prompt, whose verdicts [went unfollowable two commits after they were written](verification-iter1-pass-4-plan.md) |

**4b has real ground truth available**, which is rare. `atomic-primitives-map.md` claims `Graphics | A, B, C, D visually inspected. D1 transcription checked against the image.` Iteration 1 pass 2 checked that transcription against the image and found it **byte-identical**. **A receipt's visual claim can be corroborated by work already done**, and that is the only claim class in this tree where that is true.

## 4. The fork pass 4 names and does not resolve

**Zero adoption of a form is either a broken form or broken practice**, and the evidence does not yet say which:

- **The form is wrong.** Agents write tables because tables are what a document wants; the template prints a text block nobody has ever wanted. Then the template should be re-cut from what the seven receipts actually share.
- **The practice is wrong.** Seven private forms means seven documents that cannot be compared, and the template exists precisely to make them comparable. Then the template stands and the receipts are the defect.

4a decides which by measuring whether a common core exists. **The ruling is kit's and the human's — [D6](verification-iter1-pass-5-plan.md)'s immediate neighbour**, and pass 4 hands it up with the measurement attached rather than choosing.

## 5. What pass 4 must not do

- **Not rewrite the template.** It is kit, and its Evidence-state gap is already an open ruling.
- **Not invent a receipt standard from three samples.** 4a reads all seven first.
- **Not take the audit prompt.** That is the coherence campaign's.
- **Not read "the SHAs resolve" as "the receipt is true".** A resolvable pin proves the anchor holds, not that the claim anchored to it does. The template says this about itself: *"A receipt is not an authentication mechanism."*
- **Not fill `[GAP]`.**

## 6. Accept pass 4 when

All seven receipts' field sets are inventoried and the common core is named or its absence is; every testable claim inside them has a verdict, with the untestable ones marked untestable rather than passed; `docs/prompts/` has a measured account of its door and its 16 files; and the fork in §4 is handed up with evidence rather than decided.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A receipt is the note you write about the knot so the next person does not have to untie it. This tree has seven notes in seven hands, a printed form nobody has ever filled, and — the one good result — **every commit it ever pinned still resolves.** Pass 4 reads the notes. Emission remains `[GAP]`.
