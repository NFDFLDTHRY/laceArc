# Kauffman pass 2 (PDF-sighted) — deepen clip against live scan

**Status:** EXECUTED — D5 rewrite + FM pins landed. Emission `[GAP]`.  
**Station:** clipboards (released after execute · was `reference-Mapper`)  
**Base at execute:** `9ee138e` (refresh if main moves before execute)  
**Source slug:** `dokumen.pub_knots-and-physics-4ed-9814383007`  
**Book:** L.H. Kauffman, *Knots and Physics*, 4ed · ISBN family `9814383007`  
**Clipboard:** `docs/clipboards/kauffman-4ed-clipboard.md`  
**Ancestor:** [kauffman-pass-1-pdf-plan.md](kauffman-pass-1-pdf-plan.md) (EXECUTED · `40ff96a`)  
**Earlier pass 2 (no PDF):** [kauffman-pass-2-plan.md](kauffman-pass-2-plan.md) (EXECUTED · D1–D6 under missing-PDF D5)  
**Sibling (default read-only):** `docs/clipboards/clipboard-five-stakes.md` PAGE 1/5  
**PDF:** `refs/local/kauffman-knots-and-physics-4ed.pdf` (865 pp., image-only, gitignored). Never `git add`.

Law: diagram ≠ rope · hitch kin · grab ≠ emission · `[GAP]` sealed.

```
pull/ff → claim → Hands skim
      → open PDF (refs/local)
      → do NOT redo A–X fill or invent emission
      → Pass 2 (PDF) deltas only: D5 rewrite + FM locus bridges + appendix pin
      → check · commit · release · STOP
```

---

## Already done (do not redo)

| Layer | State |
|---|---|
| Prior OCR pass 1 | A–X filled without PDF |
| Prior pass 2 | D1–D6 landed; D5 said PDF **absent** |
| PDF pass 1 | Seed bridges A–E; **T2 ≤ κ T1**; stamps CONFIRM; PDF present |

Pass 2 (PDF) is **leftovers against the live scan**, not a third greenfield.

---

## What is still flat / stale

1. **D5 is stale** — still narrates “PDF absent.” Must rewrite to PDF-present gate + pointer to `refs/local/…`.  
2. **FM-K5 / FM-K6 lack PDF page pins** — Jones/Gauss and DNA false friends are named, not bridged.  
3. **PAGE E appendix start is approximate** — “~PDF p.800+”; pin the article title page.  
4. **PAGE F false-friend table** — can gain printed↔PDF lines where sighted; stay SILENT on emission.  
5. **Five-stakes PAGE 1/5** — still carries the old `<` vs `≤` conflict note vs book clipboard; optional one-line “book clipboard now follows ≤ (PDF p.342)” **only if T4 opens five-stakes** (same station, but separate ticket).  
6. **No full-OCR pass** — image-only; denser walk stays visual/`pdftoppm` unless human installs OCR tooling.

---

## Pass 2 (PDF) product

Edit **only** `docs/clipboards/kauffman-4ed-clipboard.md` unless T4 opens five-stakes:

### P2-D5 — Source gate rewrite

Replace the Pass 2 “PDF absent” D5 block with:

- PDF **present** at `refs/local/kauffman-knots-and-physics-4ed.pdf` (865 pp., `tiff2pdf`, no text layer)  
- Bridges already on A–E from PDF pass 1  
- Still never git-add PDF  
- Method: visual / `pdftoppm` (OCR optional later)

Add a **Pass 2 (PDF-sighted) receipt** above or beside existing receipts.

### P2-FM — Failure-mode locus bridges

Keep FM-K1–K9 rows. Add a PDF/printed locus column (or footnote lines) for at least:

| FM | Target to sight |
|---|---|
| FM-K5 | One Jones/bracket or Gauss-code region in Part I (find PDF p. at execute) |
| FM-K6 | DNA / enzyme passage locus if present (else mark SILENT / not in seed) |
| FM-K7 | Already pinned p.342–343 — cite only |
| FM-K8 | Already pinned p.355 — cite only |
| FM-K9 | Preface p.16 + **exact** appendix title-page PDF p. |

FM-K1–K4 already covered by A–C seeds — cite existing bridges, do not rewrite morals.

### P2-E — Appendix pin

Locate Virtual Knot Theory appendix (or 4ed article) **title page** PDF number; update PAGE E locus from “~800+” to exact printed↔PDF pair.

### P2-F — False friends (optional deepen)

If found in ≤15 rendered pages of search neighborhood, add PDF p. to PAGE F false-friend bullets. If not found quickly: leave SILENT, note “not re-hunted.”

### Sealed

- Invent POINTER when / arity / adjacency  
- Redo A–X narrative fill  
- Delete prior Pass 2 D1–D4/D6 history  
- Amend reason-model-map / law / graphics  
- `git add` PDF  
- Push unless human says push  

---

## Tickets

### T0 — Claim / base

Held at plan: `reference-Mapper` @ `40ff96a`. Before execute: `git pull --ff-only` · `refresh` if clock turned.

### T1 — Hands + sibling skim

Shoe → A–D → manifest → law → reason-model-map §1 → clipboard (PDF pass 1 + prior D1–D6) → five-stakes PAGE 1/5.

### T2 — PDF gate

Confirm `refs/local/kauffman-knots-and-physics-4ed.pdf` resolves; `git check-ignore` clean.

### T3 — Write P2-D5 + receipt

### T4 — FM locus hunt (K5, K6, K9 appendix title)

`pdftoppm` neighborhoods; visual read; record PDF p. + printed p. + ≤2-line eye quote.

### T5 — Optional five-stakes one-liner

Default **skip**. Only if human says “include five-stakes”: add one sentence that book clipboard now follows ≤ per PDF p.342; do not rewrite KEEP/FORBID.

### T6 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "reference-Mapper"
# commit
./docs/coord/coord.sh release clipboards "reference-Mapper"
```

STOP.

---

## Execution (when you say go pass 2 PDF)

1. Refresh claim if needed.  
2. T1–T4 (T5 only if asked).  
3. Patch clipboard + mark this plan EXECUTED.  
4. Check · commit · release.  
5. Ask before push.

---

## Steward test

If you cannot point at a rendered PDF page, it is not a new FM locus.  
D5 must not keep saying the PDF is missing.  
Emission stays `[GAP]`. Shoe in hands, or no.


---

## Execution result

- Claim refreshed @ `9ee138e`; check OK.
- PDF present at `refs/local/kauffman-knots-and-physics-4ed.pdf`.
- TOC offset: PDF ≈ printed + 19.
- Pins: Jones PDF p.68 / p.49; bracket PDF p.44 / p.25; DNA PDF p.507 / p.488; virtual appendix title PDF p.782 / p.763.
- Patched `kauffman-4ed-clipboard.md` only (receipt, D3 loci, D5, PAGE E, steward notes).
- five-stakes skipped (T5 default).
- Emission still `[GAP]`.
