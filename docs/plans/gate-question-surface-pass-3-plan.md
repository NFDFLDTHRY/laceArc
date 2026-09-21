# The gate's question surface — Pass 3 PLAN · the evidence reach of the closed rows

**Status:** **`EXECUTED`** 2026-09-21 → [`gate-question-surface-pass-3-findings.md`](gate-question-surface-pass-3-findings.md). **`F1` FIRED and took the thesis with it: Graphic D *is* carried** — the exact D1 tape and the D-panel summaries are in [`systems-manifest-ascii.md`](../systems-manifest-ascii.md), under a name this plan never searched for and behind a pointer in `graphic-a-ascii.md`'s own header that the campaign had already read past. The reach audit, re-run on the corrected premise, **inverts**: every closure on the gate is reachable by a text-only reader. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Under test:** the nine rows [`pointer-emission.md`](../pointer-emission.md) marks `CLOSED`, and the evidence each one rests on.
**Prior:** [pass 1 census](gate-question-surface-pass-1-census.md) · [pass 2 findings](gate-question-surface-pass-2-findings.md), both EXECUTED.
**Product (execute only):** `gate-question-surface-pass-3-findings.md`.

---

## 0. What passes 1 and 2 leave on the table

Pass 1 asked **what questions exist** — and found nine of the manifest's eleven open questions absent from the law file's table, one status disagreement, and **six `CLOSED` rows that do not say what closed them**.

Pass 2 asked **whether the picture settles one of them** — and found it does not, but that the picture *refutes* fourteen candidate rules, which is the other thing the file's rules admit.

**Neither asked the question that decides whether any of it can be checked by anyone else: for each closed row, what is the evidence, and can a second reader reach it?**

## 1. Why this is measurable, and why the measure is borrowed

[Shelf 10 built a fail-closed measure for exactly this](../clipboards/rust-target-clipboard.md#f2--the-coverage-map-what-is-reachable-in-repo-and-what-still-needs-the-book): a claim is **reachable** only when *every* source it cites is carried in the repository. Its pass 5 concluded the measure was **shelf-local** — a PDF cannot be carried, because the tree forbids tracked PDFs.

**The graphics are the opposite case, and that is what makes this worth running.** The four PNGs **are** tracked — presence is one of the four invariants. But [the roles card](../kit/roles.md) contemplates a reader who cannot open them:

> *"If you cannot see the PNGs, every structural judgment is `[BLOCKED]`; say so in the receipt."*

**And the graphics shelf already built the carry for that reader** — `graphic-a-ascii.md`, `graphic-b-ascii.md`, `graphic-c-ascii.md`, each headed *"**Not Graphic A.** … This is an ASCII reading … and settles nothing the PNG does not"* — the same form as shelf 10's locator extracts, arrived at independently.

**`graphic-d-ascii.md` does not exist.** A, B and C are carried. **D is not** — and D is where every emission question is decided.

## 2. Scope

For each of the nine `CLOSED` rows, plus the constructor's stated basis (`D2` · `D1` 6/6 · `D6` · `H5` · `H6`):

| Column | Meaning |
|---|---|
| **Evidence** | the panels and rulings the row actually rests on |
| **Kind** | `picture-closed` · `ruling-closed` · `inference-closed` — [pass 1's vocabulary](gate-question-surface-pass-1-census.md#4-the-three-kinds-of-closure-this-census-had-to-invent-to-describe-what-it-found) |
| **Reach** | can a reader who cannot open the PNGs check it? **`CARRIED`** (ASCII companion exists) · **`PNG-ONLY`** · **`TEXT`** (a ruling, written in-repo) |

**Counts published whatever they are.**

## 3. Thesis, stated so it can lose

**The gate's picture-closures are its least checkable evidence, and its ruling-closures are its most — which inverts the source-of-record order.**

`CLAUDE.md` puts the graphics first and the manifest second. **If every picture-closure is `PNG-ONLY` and every ruling-closure is `TEXT`, then the authority that outranks is the one a text-only reader cannot verify**, and the campaign's own pass-2 result — fourteen refutations off one hand's transcription — is an instance of the problem, not an exception to it.

## 4. Falsifiers

| | If it fires |
|---|---|
| **F1** | **A D companion exists** under another name, or D's content is carried somewhere I have not looked (`systems-manifest-ascii.md` is the obvious candidate and must be checked before anything else). **Then the finding is wrong and the pass shrinks to saying so** |
| **F2** | The picture-closures do not actually cite D — they cite B or C, which are carried → the inversion does not hold and the thesis fails |
| **F3** | A/B/C companions turn out not to be transcriptions but something else → **the carry precedent does not exist** and there is nothing for D to be missing |
| **F4** | **Reach is the wrong measure here.** Unlike a gitignored PDF, the PNGs *are* in the repo; a session with image access reads D directly. **If the only affected reader is a hypothetical one, say so and shrink the claim** — this pass must not inflate a narrow limit into a breach |

**`F4` is the honest risk and is stated first among equals.** The finding available here is *"D is untranscribed"*, **not** *"D is missing"* — D is present and tracked. The claim must stay that narrow.

## 5. This pass must not

- **Not write a D transcription.** That is graphics-station work, a campaign of its own, and it needs a reader who can see the panel. **This pass measures; it does not carry.**
- **Not edit `pointer-emission.md` or `systems-manifest.md`.**
- **Not reclassify a closed row.** Pass 1 named the three kinds; pass 3 applies them and proposes nothing.
- **Not treat `PNG-ONLY` as a defect.** It is a reach measurement. Whether it matters is the human's.
- Not fill a `[GAP]`, take a ruling, add code or `src/`.

## 6. Accept when

All nine `CLOSED` rows plus the constructor basis carry an Evidence, Kind and Reach value; the counts are published whatever they are; **`F1`'s check against `systems-manifest-ascii.md` and the whole graphics shelf is run and reported before any finding is claimed**; all four falsifiers are reported; `pointer-emission.md` and `systems-manifest.md` are byte-unchanged.

## 7. Not this pass

Writing `graphic-d-ascii.md`. The `F2`/`F3` findings from pass 1 (pass 4). The proposal to the human (pass 5). `Astra-selection`'s and `Astra-graphics`' live work — **both stations are shared and this pass reads only.**

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

**This campaign has spent two passes reading one panel and has never asked whether anyone else can read it.** Three of four graphics were transcribed so a blind session could check them. The fourth is the one the gate stands on.
