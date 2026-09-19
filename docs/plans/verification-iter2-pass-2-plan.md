# Verification iteration 2, pass 2 — the checker, tested against its own labels

**Status:** `[PLAN]`. **EXECUTED** — [the record](verification-iter2-pass-2-findings.md). 12 cases, 4 of 8 checks fail their own label; 2v reproduced F7. **Station:** maps for this plan and its record; **kit** only if a ruling authorises a patch.
**Emission:** `[GAP]`. No `src/`.
**Iteration:** [iteration 2](verification-iteration-2-plan.md), pass 2 of six. Pass 1 EXECUTED and completed.

## 0. The question

Pass 1 read the checker's code and classified its eight checks. **Reading code is not testing it.** Every claim in §1.1 of that board — four blind to use/mention, three immune, one fence-aware — is an inference from source, and pass 1's own lesson is that inferences about instruments do not survive contact.

**Pass 2 builds a case designed to fool each check, runs it, and records expected against actual.**

## 1. The method, probed before it was scoped

### The disposable work tree

Adversarial cases cannot be planted in the authoritative checkout. They would trip the gate, land as orphans, and four campaigns would see a red `main`.

**There is precedent in the tree for the alternative.** `downstream-audit.md` §187 records its own condition: *"the pinned tree was copied to a disposable work tree outside the authoritative checkout."* Pass 2 uses the same shape.

**Probed at `8840f08`:** `git archive HEAD` into a scratch directory, `git init`, one commit, then run the hook. The copy holds 307 files and the checker runs against it unmodified.

**Fidelity, stated:** the copy reported **40** advisories where the live tree reported **39**. One finding of difference, not yet explained — plausibly the fresh `git init` treating an ignored path differently, or a commit landing between the two runs. **Pass 2 explains it before trusting any negative result**, because a harness that differs from the live tree by one finding could differ by the one that matters.

### The first case already ran

Planted: a markdown file whose only link sits inside a code fence, pointing at a path that is nowhere in the tree.

| | |
|---|---|
| **Expected** | PASS — a code sample is not a link |
| **Actual** | `broken link in docs/plans/case-fence-link.md -> no-such-file-anywhere.md` |

**Check 4's false positive is now confirmed by construction rather than by anecdote.** Pass 1 could only cite it having fired twice in the wild; this reproduces it on demand.

## 2. The eight cases

| # | Check | Case planted | Expected | Pass 1's prediction |
|---|---|---|---|---|
| 1 | graphics present | remove one canonical PNG | **FAIL** | fires correctly |
| 2 | no `src/` | create `src/lib.rs` | **FAIL** | fires correctly |
| 3 | no tracked PDFs | add a `.pdf` | **FAIL** | fires correctly |
| 4 | links resolve | a dead link **inside a fence** | PASS | **false positive — confirmed above** |
| 5 | stale absence | "is absent" **inside a quotation** about a file that is tracked | PASS | **false positive — fired 3× in the wild** |
| 6 | orphans | a file linked **only from inside a fence** | **FAIL** (still an orphan) | **false negative — latent** |
| 7 | law-copy parity | alter one word of a law copy | **FAIL** | fires correctly — it parses fences by design |
| 8 | door coverage | a shelf file linked **only from inside a fence** in its README | **FAIL** (door does not cover it) | **false negative — latent** |

**Cases 6 and 8 test the direction that matters.** A false positive is noisy and someone notices. **A false negative is silent**: the check reports a door covered, or a file reachable, when it is not — which is pass 1's third failure mode wearing the checker's clothes.

Each case also gets its **inverse**: the same content *outside* a fence, which must produce the opposite result. A check that fires on both is not fence-blind, it is broken differently, and the record should be able to tell those apart.

## 3. What pass 2 may and may not change

**May:** build cases, run them, record expected against actual, and **write** a patch for any check that fails its own label.

**May not:** apply that patch. Closing check 5's quotation gap is **[iteration 1's D3](verification-iter1-pass-5-plan.md)**, an open human ruling, and this pass does not get to reverse a decision it referred upward two passes ago. **A ready patch makes the ruling cheap; taking the ruling makes the brief a lie.**

**Never:** plant a case in the authoritative checkout. Every case lives and dies in the scratch copy, and the record carries the command that reproduces it.

## 4. F7's validator — named, and given a home

Pass 1 found the tree's worst instrument already measured and unscheduled: `hologram-ir-validate.py` **passes five of six deliberately-wrong plans**.

It belongs to this pass's *job* — an instrument tested against its own claim — but not to its *scope*: different file, different station (maps, not kit), and a finding that already supplies six mutations to re-run.

**So it runs as `2v`, pass 2's second half, after the eight cases.** Its question is narrower and harder: F7 recorded *that* five mutations passed; 2v asks **why**, since the validator contains seventeen references to order, edge and cycle and therefore is not missing the code.

Iteration 2 stays at six passes. **2v is scope added to pass 2, stated here rather than discovered later.**

## 5. What pass 2 must not do

- **Not reword a document to satisfy a check.** The count stands at five and pass 2 exists to end that pattern, not extend it.
- **Not push a red gate.** Cases run in the copy.
- **Not trust a negative result before §1's one-finding delta is explained.**
- **Not rewrite a check that passes its label** because a different behaviour would be tidier.
- **Not fill `[GAP]`.** A checker that tells use from mention still measures nothing about pointer emission.

## 6. Accept pass 2 when

All eight checks have a planted case and its inverse, run in the disposable tree, with expected and actual recorded and the reproducing command written down; the 40-against-39 delta is explained or named as unexplained; `2v` reports why the validator accepts five of six; and every check that fails its own label has a patch written and **unapplied**, waiting on its ruling.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

You do not learn whether a knot holds by reading the diagram. You pull it. **Pass 1 read the checker; pass 2 pulls on it** — in a copy, so that when something gives way it is not the shoe everyone else is wearing. Emission remains `[GAP]`.
