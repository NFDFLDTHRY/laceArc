# Verification iteration 3 — what rots, and what does not

**Status:** **CLOSED** — [the receipt](verification-iteration-3-receipt.md). Passes 1–6 EXECUTED. **Pass 1 EXECUTED** at `6be7d27`; passes 2–6 NOT_RUN.
**Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Previous:** [iteration 2](verification-iteration-2-receipt.md), CLOSED. Before it, [iteration 1](verification-iteration-1-receipt.md) and [the restructure](restructure-plan.md).

## 0. Where iteration 3 comes from

Iteration 2's receipt named **E5** — *nobody re-points a citation when a file moves* — as the largest unowned thing in the tree, and the only decay measured doing real damage.

**Probing widened it.** E5 is one member of a class, and the class is the iteration.

## 1. The board, measured at `6be7d27` — 264 markdown files

### 1.1 Nine broken path citations, and four different causes

Tree-wide, **285** distinct (document, cited `docs/…` path) pairs. **Nine do not resolve — 3.2%.** They are not one problem:

| Kind | Instance | What it needs |
|---|---|---|
| **Moved** | `gearing-code-1to1.md` cites `docs/gearing-code-1to1.md` — **a document that cannot find itself** | re-point; mechanical |
| **Moved, and already dated** | 5 in `coherence-audit-log.md`, preserved on purpose by the append-only rule and re-pointed in [pass 4's dating stanzas](verification-iter1-pass-4-plan.md) | nothing — this is the model working |
| **Never arrived** | `clip-and-five-refs-prompt.md` → `docs/five-refs-clipboard.md`; `gearing-html-iterate-prompt.md` → `docs/gearing/ITERATE-LOG.md` | withdraw the citation, or make the product |
| **Never intended** | my own `verification-iter2-pass-2-plan.md` cites `docs/plans/case-fence-link.md` — an adversarial case that only ever existed in a disposable copy | do not cite what you did not commit |

And a fifth, from iteration 2 and now resolved: **not yet** — WGSL's link to a file its next pass created **21 commits later**.

**The checker reports all of these identically.** So does every probe in this session.

### 1.2 The first number this pass produced was wrong, and was caught before it left the probe

A tree-wide sweep said **76.4% of hex pins are not commits in this repository.** Classified before publication:

| | |
|---|---|
| PDF attachment hashes | 134 |
| Commits in a **different repository** (`NFDFLDTHRY/ShoeLacey`) | most of the rest |
| Image and lookref hashes | 10 |

**Most "unresolvable pins" are not pins into this repository at all**, and the 76.4% means nothing as stated.

This is the sixth time this session a probe has counted a mention as a use. **It is the first time it was caught before it reached a document.** Recorded because it is the only measurable change iteration 2's work produced in the author rather than in the tree — and because "is this hex string a claim about *this* repository?" is itself a use-versus-mention question, which means **pass 2 cannot settle it by grep.**

### 1.2a Rot lives exactly where the checker does not look

None of the nine broken citations is a markdown link. **Check 4 sees zero of them**, and reports the tree clean.

| Broken citation | Written as |
|---|---|
| `gearing-code-1to1.md` → its own old path | bare prose |
| `clip-and-five-refs-prompt.md` → `five-refs-clipboard.md` | **backticked** |
| `gearing-html-iterate-prompt.md` → `ITERATE-LOG.md` | **backticked** |
| my `pass-2-plan.md` → `case-fence-link.md` | **backticked** |

**The checker validates link syntax and never reads a prose citation**, so rot accumulates in precisely the form nothing inspects.

**And there is a tension in my own fix.** [D3/E6](verification-iter2-pass-5-plan.md) made four checks blank backticked spans, because a backticked token is a mention. **Three of these four broken citations are backticked** — so any future "check prose citations too" proposal collides head-on with the repair that just landed. That is not a regression, since check 4 never read prose. **It is a constraint on E5's remedy space, and pass 4 inherits it.**

### 1.2b The pin census cannot be taken by regex, and that is the result

Classifying every `[0-9a-f]{8,40}` in the tree, with an explicit residual rather than a tidy total:

| | Count | Share |
|---|---|---|
| Resolves as a commit here | **114** | 22.3% |
| PDF attachment hash | 151 | 29.5% |
| Commit in `NFDFLDTHRY/ShoeLacey` | 34 | 6.6% |
| Image / lookref hash | 10 | 2.0% |
| **Unclassified residual** | **203** | **39.6%** |

Reading the residual: it is dominated by **ISBN and URL-slug fragments** — `dokumen.pub_knots-and-physics-4ed-9814383007` — hex-shaped substrings inside a book reference.

**So a hex regex cannot find commit pins in this tree**, because the tree is full of hex-shaped things that are not commits: ISBNs, attachment hashes, image hashes, slugs, and another repository's history. The seventh instance this session, and the honest report is **not a percentage but an unavailability**.

The clone is **not shallow** — 633 commits, full history — so `114 resolves` is a floor with no excuse behind it.

### How each number is got

```bash
git ls-files '*.md' | wc -l
git rev-list --count HEAD ; [ -f .git/shallow ] && echo shallow
.claude/hooks/check-docs.sh | grep -c 'broken link'
```

The two python probes — the path census and the pin classification — are in this commit's diff rather than pasted here, for the reason [iteration 2 pass 1 §1.1a](verification-iteration-2-plan.md) gives: **a document about patterns cannot print them without tripping the checks it is about.**

**Scope of §1.1, stated:** the path census counts unbackticked `docs/…` prose citations only. Relative markdown links are check 4's domain and read clean; backticked paths were excluded by the probe and §1.2a shows three of the nine are backticked anyway. **The nine is a floor, not a total**, and pass 2 widens it by reading.

### 1.3 Dating conventions exist, in about fourteen documents of 264

| Convention | Documents |
|---|---|
| `THEN` | 14 |
| `NOW:` | 5 |
| `STALE pin` | 3 |
| `at tip` | 4 |
| `as of` | 2 |

**The tree already knows how to stop a claim rotting.** It does it in roughly five percent of its documents, and pass 3 asks whether those five percent are doing the same thing.

## 2. The thesis, stated so it can lose

**A reference can be wrong in several ways, and this tree treats them as one.**

That is iteration 2's use-versus-mention finding one level up: the instrument cannot distinguish **kinds** of failure, so one remedy gets applied to every case — or, more often, none does.

| Kind | Remedy | Applying the wrong one costs |
|---|---|---|
| Moved | re-point | nothing; it is mechanical |
| Not yet | **wait** | [21 commits of four campaigns blocked](verification-iter2-pass-5-plan.md) |
| Never arrived | withdraw or produce | a citation that promises a file forever |
| Never intended | do not cite it | a plan that points outside its own tree |

**Falsifier:** a fifth kind, or a case that resists all four. The receipt names it either way — and iteration 2's thesis lost exactly this way, in its own pass 1, which is the standard.

## 3. The six passes

| Pass | Station | Question |
|---|---|---|
| **1** | maps | What rots, how much, and in how many ways? **This document. EXECUTED.** |
| **2** | maps | Classify **every** unresolvable reference in the tree by kind — paths and pins both. §1.2 says this is a reading pass, not a grep pass |
| **3** | maps | The fourteen dating conventions: are they one convention or fourteen? `downstream-audit.md` and the audit log's stanzas are the working models |
| **4** | kit + coord — **proposal only** | **E5 proper.** What would re-point a citation when a file moves, and what would it cost? A check, a convention, or nothing |
| **5** | — **human** | The outstanding rulings, consolidated rather than re-opened: `E1`, `E2`, `E5`, iteration 1's `D1`–`D13`, and **F7**, the last instrument with a measured live defect |
| **6** | maps | Receipt, and the board for iteration 4 |

## 4. What iteration 3 must not do

- **Not repair a citation in another station's file.** Two of the nine are prompts, one is hologram's.
- **Not treat a *not yet* as a *never*.** The WGSL case resolved itself after 21 commits, and it is the most expensive mistake available in this iteration.
- **Not add a gate.** `E1` stays deferred to a human ruling, with iteration 2's price attached.
- **Not repair my own broken citation quietly.** §1.1 names it; pass 2 fixes it in the open.
- **Not fill `[GAP]`.** A tree with no rot is still silent on pointer emission.

## 5. Accept iteration 3 when

Every unresolvable reference in the tree carries a kind and a remedy; the dating conventions are shown to be one convention or reconciled into one; E5 has a written proposal with a cost; the standing rulings are in one place for the human; and the receipt says whether the four kinds held, grew, or collapsed.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A knot that was tied right and then had the lace pulled out from under it is not a badly tied knot. **This tree has nine of those and calls them all the same thing.** Iteration 3 learns to tell them apart. Emission remains `[GAP]`.
