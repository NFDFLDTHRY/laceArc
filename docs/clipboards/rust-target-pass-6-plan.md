# The rustc toolchain → shelf 10 — Pass 6 PLAN · deep diagram audit (`P6-A` `P6-P` `P6-X` `P6-F` `P6-O` `P6-R`)

**Status:** **`EXECUTED`** · 2026-09-20 · agent `Grok-clipboards`. **Emission:** `[GAP]`. No `src/`.
**Completion sit:** [`rust-target-pass-6-sit.md`](rust-target-pass-6-sit.md).
**Receipt:** [`rust-target-clipboard.md`](rust-target-clipboard.md) `P6-R` · machinery Pass 6 section. **Verdict: DIAGRAM SOUND WITH OPENS.**
**Under test:** [`rust-target-ascii-machinery.md`](rust-target-ascii-machinery.md) — the ten-node spine, `P-R1`…`P-R18`, and the pass 5 mirror.
**Prior accuracy (baselines — pass 6 goes deeper, it does not repeat them):** `P4-X` 18 PASS · `P5-X` 5 audits re-run and matching, cross-table **0 of 270**, 18 of 18 reach ratios recomputed.
**Carriers the audit runs against:** [`rust-target-locators.md`](rust-target-locators.md) — 407 rows, 575 source lines · [`cargo-build-std-locators.md`](cargo-build-std-locators.md) — 38 rows.
**Authority:** `refs/local/The-rustc-book.txt` · `sha256 4a30e620…4e74d3` · `refs/local/The_Cargo_Book.txt` · `sha256 9d7048e1…63c0a5`.
**Shape mirrored (form only):** [`webnn-pass-6-plan.md`](webnn-pass-6-plan.md) — `P6-A / P / X / F / O / R`, distinctive product **DIAGRAM SOUND**.
**Ancestors:** [pass 4](rust-target-pass-4-plan.md) · [pass 5](rust-target-pass-5-plan.md), both EXECUTED.

```
pull/ff → claim clipboards → read the spine, the 18 fences, Page A/B/C/D/E/G
        → P6-A  audit the SPINE: every node label, and every EDGE
        → P6-P  audit all 208 factual fence lines, one at a time, four classes
        → P6-X  rigor matrix + the counts, published whatever they are
        → P6-F  surgical fixes only; a NOT-FOUND is fixed or recorded, never argued away
        → P6-O  overview count = 1
        → P6-R  receipt with a VERDICT · plan EXECUTED · door · commit · release · STOP
```

---

## 0. What pass 6 is for, and what passes 4 and 5 could not see

**Pass 4 drew the diagram. Pass 5 checked the diagram against the shelf's own tables.** The cross-table check compared panel captions to the cross-walk to `P4-X` and found them consistent — **and three tables can agree with each other perfectly while all three are wrong about the book.**

**Nobody has checked a single fence line against the source.**

Every panel cites locators in its field tables. **The fence paraphrases.** A line inside a fence can be plausible, table-consistent, stamped correctly, and still not be what stands at line 30617. That gap is what pass 6 closes, and it is the only pass that can: **shelf 10 is the one shelf whose source is carried in-repo**, so for the nine `FULL`-reach panels the check runs against [the extract](rust-target-locators.md), mechanically, by anyone.

## 1. `P6-A` — the spine, and the thing nobody has cited

**Ten nodes. Seventy-eight fence lines. Fifty-one of them carry an edge.**

**Every panel cites lines. No arrow on the spine cites anything.**

The order the spine draws — pin → target → std source → compile → codegen → link → artifact, with the receipt beside it and the checks below — is **conventional toolchain knowledge**. It is how compilers work. **It is not a sentence in the rustc book**, which is organised as a reference: a chapter per option, a page per target, and no end-to-end account of a build.

**So `P6-A` asks of every node and every edge: what is this, source or composition?**

| Class | Means |
|---|---|
| **SOURCE** | the books state it at a locator this shelf cites |
| **`[INFERENCE]`** | the editor composed it from sourced parts — true, useful, and **the editor's** |
| **NOT FOUND** | neither. A finding |

**The expected result is that the nodes are SOURCE and the edges are `[INFERENCE]`**, and if so **the spine is carrying an unstamped inference** — `[INFERENCE]` is [a registered boundary stamp](../law-why-these-documents.md) and the spine wears none. That is `F1`, and the fix is a stamp, not a redraw: **the composition is sound; it is the silence about its being a composition that is not.**

## 2. `P6-P` — 208 fence lines, four classes

**Every factual line inside the eighteen panel fences is classified.** Box art, arrows and `#` refusal lines are not factual lines and are audited by `P6-A` and by the `R-D3` audit instead.

| Class | Means | How it is checked |
|---|---|---|
| **CARRIED** | the line restates book text that is **in the repository** | grep the locator file; any session can repeat it |
| **BOOK-ONLY** | the line restates book text that exists **only in the gitignored source** | this session reads the SHA-verified file. **Verified by one hand, and the class says so** |
| **SHELF** | the line states a **project** fact — a gate, a `NOT_RUN`, a ruling, a refusal — whose support is Page C/D/E/G, not the books | cite the page |
| **NOT FOUND** | none of the three | **a finding.** `P6-F` |

**Counts are published whatever they are.** A pass 6 that reports 208 CARRIED has not audited anything — most of node 9 is `SHELF` by construction, and three panels are `Reach: NONE` and cannot be CARRIED at all.

**The `BOOK-ONLY` count is the number this shelf most needs to know**: it is exactly how much of the drawing rests on a file only this session can open. [Pass 5's narrower claim](rust-target-clipboard.md#p5-p--the-order-proposal-reading-a-source-you-may-not-commit) said a text shelf *can* be made checkable in-repo; `P6-P` measures how far this one actually is.

## 3. Thesis, stated so it can lose

**The diagram adds no claim the books and the shelf do not already make; what it adds is composition, and the composition is unstamped.**

| | Falsifier | If it fires |
|---|---|---|
| **F1** | **An unsourced structure.** The spine's edges are the editor's and say so nowhere | **expected.** Stamp the composition `[INFERENCE]`. **Do not redraw, and do not invent a sentence to source it** |
| **F2** | **A fence line the cited lines do not support.** The drawing drifted from the source | the correctness failure this pass exists to find. `P6-F` fixes the **line**, toward the source, and the receipt names it |
| **F3** | **A fence line that is right but mis-attributed** — support exists on the shelf, at a locator this panel does not cite | fix the citation, not the line. Pass 5 already found one of these (`C7` under `P-R3`), so the class is live |
| **F4** | **A label that is not the books' vocabulary** — an editor's word presented as the source's | rename to the books' word, or mark the label `[INFERENCE]` with the node |

**`F2` is the one that decides the verdict.** `F1` firing means the diagram is honest about its parts and quiet about its composition — repairable with a stamp. **`F2` firing means a fence says something the source does not**, and a diagram that does that is not sound until the line is gone.

## 4. The verdict `P6-R` must state

One of three, with its qualification written out:

| Verdict | Conditions |
|---|---|
| **DIAGRAM SOUND** | 0 NOT-FOUND · 0 `F2` · every inference stamped |
| **DIAGRAM SOUND WITH OPENS** | 0 `F2` · inferences stamped · NOT-FOUNDs all resolved to `SHELF` or recorded as named OPENS with their disposition |
| **NOT SOUND** | any `F2` left unfixed, or any NOT-FOUND argued away instead of fixed or recorded |

**The verdict is not a mood.** It follows from the counts, and the counts are published first.

## 5. This pass must not

- **Not redraw the diagram.** Fixes are surgical: a line, a label, a citation, a stamp. A redraw is a new pass and needs the human.
- **Not invent support.** If a line has none, **the line goes** — the fence is not made true by adding a sentence the book does not contain.
- **Not carry new book lines.** The extract job's [25 ranges, 150 lines](rust-target-clipboard.md#f3--what-remains-is-finite-and-here-it-is) are its own pass. A `BOOK-ONLY` line **stays** `BOOK-ONLY` and is counted, not carried.
- **Not re-run pass 5's checks and call it pass 6.** Those are baselines; this pass goes at the fences.
- **Not reopen `P5-P`,** not decide `O1` (the human's), not close a `[GAP]`, not take a ruling, not run a build.
- **Not add a script or `src/`.** The audit runs in the scratchpad and publishes its numbers.
- **Not mint `FM-Rust*`.**

## 6. Accept pass 6 when

`P6-A` classifies **every** one of the ten nodes and the spine's edges as SOURCE, `[INFERENCE]` or NOT FOUND, and the result is acted on; `P6-P` classifies **all 208** factual fence lines into the four classes with the counts published **whatever they are**, including a `BOOK-ONLY` count stated as *"verified by one hand"*; every NOT-FOUND is fixed, reclassified with its citation, or recorded as a named OPEN with a disposition — **none is argued away**; all four falsifiers are reported fired or not fired with evidence; `P6-F` lists exactly what changed; `P6-O` confirms count = 1; `P6-R` states one of the three verdicts **with its qualification**; and emission reads `[GAP]` with nothing closed.

## 7. Not this pass

**Wave B** — the recipe spine `B0`–`B8` and the gate lattice as machinery, still blocked on `R12`, A4's two `[GAP]`s and the checker's identity. **The extract job's five clusters.** **`O1`** — what *"cut it"* meant, which is the human's. **Any change to `P5-P`.**

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

**Five passes have checked this shelf against itself.** The tables agree, the stamps are in place, the audits re-run clean — and **not one line inside a fence has ever been held up against the book.** Two hundred and eight lines and fifty-one edges, one at a time, against a source most of which sits in a file nobody else can open. **The number that matters is how many of them a stranger could check.** Emission remains `[GAP]`.
