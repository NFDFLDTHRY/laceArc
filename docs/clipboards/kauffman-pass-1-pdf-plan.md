# Kauffman pass 1 (PDF-sighted) — clipboard vs attached 4ed scan

**Status:** EXECUTED — clipboard PDF-sighted. Emission `[GAP]`.  
**Station:** clipboards (released after execute · was `reference-Mapper`)  
**Base at execute:** `07c4fa0` (refresh if main moves before execute)  
**Source slug:** `dokumen.pub_knots-and-physics-4ed-9814383007`  
**Book:** L.H. Kauffman, *Knots and Physics*, 4ed · ISBN family `9814383007` · World Scientific K&E Vol. 53  
**Clipboard under test:** `docs/clipboards/kauffman-4ed-clipboard.md`  
**Sibling (read-only unless ticket says):** `docs/clipboards/clipboard-five-stakes.md` PAGE 1/5  
**Hands:** shoe → graphics A–D → systems-manifest → staking / law-why → reason-model-map §1  

**PDF (this machine):**

| Field | Value |
|---|---|
| Attachment | agent attachment `5bc24655…81697.pdf` (20.6 MB) |
| Working link (gitignored) | `refs/local/kauffman-knots-and-physics-4ed.pdf` |
| Also linked | `artifacts/refs/kauffman-knots-and-physics-4ed.pdf` (`*.pdf` gitignored) |
| Pages | **865** |
| Producer | `libtiff / tiff2pdf` — **image-only scan** |
| Text layer | **None** (`pdftotext` ≈ empty; no `pypdf` text) |
| Git | **Never `git add` the PDF** |

This is **not** a redo of the prior-OCR pass 1 (`kauffman-pass-1-plan.md`, pushed). That pass accepted missing PDF. This pass **sights the attached file** and checks the clipboard against it.

Law: diagram ≠ rope · hitch kin · grab ≠ emission · `[GAP]` sealed.

```
pull/ff → claim clipboards → Hands skim
        → open PDF (refs/local; no git add)
        → for each clipboard PAGE A–F, X: find locus on PDF
        → stamp CONFIRM / REFINE / CONFLICT / SILENT
        → patch clipboard receipt + loci only as needed
        → check · commit · release · STOP
```

---

## Spot-check already done at plan time (do not treat as full execute)

Visual render of selected PDF pages (no tesseract on box; image read):

| PDF p. | Printed (as seen) | Content | vs prior clipboard / five-stakes |
|---|---|---|---|
| 1 | cover | *Knots and Physics* · Fourth Edition · L.H. Kauffman · World Scientific | Identity CONFIRMED |
| 23 | p.4 | §1° Physical Knots · clove hitch Fig.1 · tension at A → C grabs B | PAGE A Part I locus CONFIRMED (five-stakes PDF p.23) |
| 342 | p.323 | Part II §1° Theory of Hitches · \(T_2 \leq \kappa T_1\) | PAGE A Part II locus CONFIRMED; **inclusive ≤** matches five-stakes conflict note; clipboard still often writes `<` |

Full A–X walk is still **TODO** at execute.

---

## Pass 1 (PDF) product

Edit **only** `docs/clipboards/kauffman-4ed-clipboard.md` unless a ticket explicitly opens five-stakes:

1. **New receipt block** — `Pass 1 (PDF-sighted)` with PDF path (attachment id or `refs/local/…`), 865 pages, image-only, gitignored.  
2. **Per-page locus bridges** — for A–F, X: printed §/p. **and** PDF one-based page (from sighting). Mark method: `visual` (required); `ocr` if tooling appears later.  
3. **Stamp each page** vs reason-model-map K1–K9: CONFIRM / REFINE / CONFLICT / SILENT.  
4. **Resolve or record** the `T2 ≤ κ T1` vs `<` transcription on the book clipboard (prefer quoting the page: inclusive ≤). Do **not** silently amend reason-model-map.  
5. **Leave Pass 2 deltas (D1–D6) intact** unless a sighting falsifies one — then note under a Pass-1-PDF errata line, do not delete Pass 2 history.  
6. Emission stays `[GAP]`. No when/arity/adjacency invent. No `src/`. No PDF in git.

Out of scope: rewriting reason-model-map, law, graphics; five-stakes rewrite (optional one-line “PDF re-sighted YYYY-MM-DD” only if ticket T4 opens it).

---

## Tickets

### T0 — Claim / base

Claimed at plan: `reference-Mapper` @ `07c4fa0`. Before execute: `git pull --ff-only` · `refresh` if clock turned.

### T1 — Hands skim

Shoe → A–D → manifest → law → reason-model-map §1 → current clipboard (incl. Pass 2 deltas) → five-stakes PAGE 1/5.

### T2 — PDF gate

Confirm `refs/local/kauffman-knots-and-physics-4ed.pdf` resolves to the attachment. Confirm `git check-ignore` on it. Abort if someone stages a PDF.

### T3 — Page walk (core)

For each clipboard page, open the cited PDF page(s), then neighbors if needed:

| Clipboard page | Seed PDF pp. (from five-stakes / spot-check) | Must verify |
|---|---|---|
| A Hitches | 23 (Part I clove); 342 (Part II hitches) | grab language; \(T_2 \leq \kappa T_1\); square/granny if on nearby pages |
| B Diagram ≠ rope / Move Zero | 28, 35–36 | Move Zero naming; abstraction fork if present |
| C Reidemeister / closed loop | 28, 35–36 | closed-loop definition; R I–III; not Lace write |
| D Slide | 355 | “RII/RIII consequences of slide” (or exact wording) |
| E Virtual / 1-handles | preface + appendix (find PDF pp. at execute) | thickened surfaces / 1-handles |
| F When-to-point | none expected | confirm still no emission sentence; list false friends with PDF pp. if sighted |
| X Cross-cut | derived | temptations vs Hands deadbolts unchanged unless sighting forces note |

Method per page: `pdftoppm` → visual read (or OCR if installed). Record PDF p. + printed p. + one eye-quote ≤ 3 lines.

### T4 — Transcription ≤ (required)

On PAGE A Part II: clipboard must show **inclusive ≤** as on PDF p.342 / printed p.323, or an explicit note that prior `<` was a transcription drift. Five-stakes already records the conflict — do not delete that history; align the book clipboard to the page.

### T5 — Sealed

- Invent POINTER when / arity / adjacency  
- Treat diagram as Hands authority  
- `git add` PDF or OCR image dumps  
- Amend reason-model-map from clipboard convenience  
- Push unless human says push  

### T6 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "reference-Mapper"
# commit clipboard ± this plan
./docs/coord/coord.sh release clipboards "reference-Mapper"
```

STOP.

---

## Execution (when you say go pass 1 PDF)

1. Refresh claim if needed.  
2. T1–T4 against the attached PDF.  
3. Patch only `kauffman-4ed-clipboard.md` (+ mark this plan EXECUTED).  
4. Check · commit · release.  
5. Ask before push.

---

## Steward test

If you cannot point at it on a rendered PDF page, it is not a new locus.  
If the page is silent on emission, PAGE F stays silent.  
Shoe in hands, or no.


---

## Execution result

- Claim held / check OK @ `07c4fa0`.
- PDF: attached 865-page image-only Kauffman 4ed; linked gitignored `refs/local/kauffman-knots-and-physics-4ed.pdf`.
- Method: `pdftoppm` + visual read (no tesseract).
- Seed confirmations:
  - PDF p.1 cover = 4ed
  - PDF p.23 / printed p.4 clove hitch (PAGE A Part I)
  - PDF p.27–28 / printed p.8–9 closed-loop setup (PAGE C)
  - PDF p.35–36 / printed p.16–17 Move Zero + Reidemeister Fig.8 (PAGE B/C)
  - PDF p.342–343 / printed p.323–324 hitches; **T2 ≤ κ T1** (PAGE A Part II)
  - PDF p.355 / printed p.336 slide equivalence (PAGE D)
  - PDF p.16 / printed p.xv Preface to 4ed — Virtual Knot Theory + Khovanov (PAGE E)
  - Appendix virtual material sighted ~PDF p.800+
- Patched only `docs/clipboards/kauffman-4ed-clipboard.md` (+ this plan).
- five-stakes / reason-model-map / law / graphics untouched.
- Φ still `[GAP]`.
