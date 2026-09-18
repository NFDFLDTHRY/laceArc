# Kauffman pass 6 — Wave B mechanisms + ASCII (algebra / braid / YBE)

**Status:** PLANNED — not executed. Emission `[GAP]`.  
**Station:** clipboards (HELD `reference-Mapper`)  
**Base at plan:** refresh to current `origin/main` before execute  
**Source:** L.H. Kauffman, *Knots and Physics*, 4ed · slug `dokumen.pub_knots-and-physics-4ed-9814383007`  
**PDF:** `refs/local/kauffman-knots-and-physics-4ed.pdf` · 865 pp. · image-only · **never git-add**  
**Offset:** PDF p. ≈ printed p. + 19 (verified passes 1–5)  
**Extend (primary):** `docs/clipboards/kauffman-4ed-mechanisms.md` (add M-B1…M-B5)  
**Extend (primary):** `docs/clipboards/kauffman-4ed-ascii-machinery.md` (add P-B1…P-B5 + overview fork)  
**Companion (receipt only):** `docs/clipboards/kauffman-4ed-clipboard.md`  
**Read-only:** Wave A cards/panels · graphics A–D · systems-manifest · systems-manifest-ascii · law · reason-model-map §1 · five-stakes PAGE 1/5  

Law: diagram ≠ rope · hitch kin · grab ≠ emission · Hands win · `[GAP]` sealed.

```
pull/ff → claim clipboards → Hands skim
       → open PDF (gitignored)
       → for each Wave B ID: pin pages → extract rule → write algorithm card
                            → draw matching ASCII panel
       → extend SOURCE MACHINERY overview with Wave B fork
       → stamp KEEP/FORBID/SILENT (never invent Φ)
       → receipt on book clipboard
       → check · commit · release · STOP
```

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1–3 | **Admission** — what may sit beside Lace |
| 4 | **Wave A algorithms** — constructive cards M-A1…A9 |
| 5 | **Wave A diagrams** — ASCII panels P-A1…A9 |
| **6** | **Wave B dual delivery** — algebraic / braid / YBE **cards + ASCII together** |

Passes 4–5 split prose algorithms from ASCII for Wave A.  
Pass 6 does **both** for Wave B in one execute so algebra never drifts from its picture.

Still **Shadow / Layer III documentation of the book**, not Lace `src/`, not `pointer-emission.md`, not a Core redraw (`systems-manifest-ascii.md` stays untouched).

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Add `src/` or executable Core | Implementation law; emission not accepted |
| Treat braid chronology / YBE / skein / Alexander / Gauss as Lace writes or history stores | Pass 2–5 FORBID lineage |
| Quietly amend reason-model-map / law / graphics / systems-manifest-ascii | wrong stations |
| Git-add PDF or page rasters | gitignore |
| Invent algorithms from TOC without PDF sighting | honesty |
| Push without ask | standing rule |
| Fill Wave C–D by metaphor alone | optional; defer with seeds if not sighted |

---

## Schemas (unchanged; mandatory)

### Mechanism card (M-B*)

Same schema as pass 4 / `kauffman-4ed-mechanisms.md`:

Kind · Book locus · Sighting · Eye-quote · Inputs · Outputs · Invariants · Algorithm (numbered, constructive) · Complexity/termination · Worked miniature · Lace stamp · Hands cite · Map cite · False friend · Open gaps.

Algorithm standard: preconditions · state · numbered steps · choice points as `[OPEN]` · halt · output certificate. Book vocabulary inside the algorithm body; Lace vocabulary only in stamp / false friend.

### ASCII panel (P-B*)

Same schema as pass 5 / `kauffman-4ed-ascii-machinery.md`:

Mechanism cite · Sighting · Lace stamp · Map cite · False friend · Implements (M-B steps) · fenced ASCII (≤76 cols, book glyphs only, **no** `WORD`/`POINTER` inside fence) · stamp line under fence.

Figure-authoritative pages: mark `figure-authoritative: PDF p.N` when OCR cannot recover a figure; do not invent crossings.

---

## Wave inventory

### Wave B — blocking (must finish)

| ID | Mechanism | Seed PDF / printed | Expected stamp | ASCII obligation |
|---|---|---|---|---|
| M-B1 / P-B1 | Braid word ↔ closure | Part I §7 ~PDF 104 / printed ~85 | FORBID as Lace chronology | braid strands → close top/bottom; word ↔ diagram |
| M-B2 / P-B2 | Yang–Baxter / R-matrix | §8–10 TOC (~PDF after braid) | FORBID as array law; off-shoe algebra | RLL / braid Yang–Baxter local move sketch |
| M-B3 / P-B3 | Homfly skein / specializations | §5–6, §11 (overlap M-A7) | FORBID as emission scheduler | L+/L−/L0 skein triangle; note Jones specialization |
| M-B4 / P-B4 | Alexander via state/model | §12 | FORBID as store | state or Seifert-style schematic per book model sighted |
| M-B5 / P-B5 | Gauss code reconstruct / trip | PDF 562 / printed 543 (prior pin) | FORBID as append-life | code word ↔ walk; reconstruct note |

Sighting order suggestion: B1 → B5 (pin already) → B3 (near Jones) → B2 → B4. Adjust if TOC forces otherwise; record actual PDF pins on cards.

### Wave C–D — optional / defer

Same IDs as pass 4 Deferred (M-C1…, M-D1…).  
Pass 6 success does **not** require C–D. If not filled: keep/extend Deferred tables in **both** mechanisms.md and ascii-machinery.md with seeds.

---

## Overview board update (required)

Extend the SOURCE MACHINERY overview in `kauffman-4ed-ascii-machinery.md` with a **Wave B fork** off the diagram engine, e.g.:

```
  [closed diagram]
        |
        +--> [braid word <-> closure]
        |         |
        |         v
        |   [Yang-Baxter / R]
        |
        +--> [Homfly skein] --> (specializes toward Jones)
        |
        +--> [Alexander state/model]
        |
        +--> [Gauss code <-> trip]

  Lace Core still OFF this board. Phi = [GAP]
```

Exact layout free; must keep Lace Core outside and Φ `[GAP]`.

---

## Tickets

### T0 — Claim / base

Held at plan. Before execute: `git pull --ff-only` · refresh if clock turned.

### T1 — Sight Wave B loci

`pdftoppm` (+ `tesseract` if needed) on seed pages; record PDF+printed pins on each card.

### T2 — Mechanism cards M-B1…M-B5

Append to `kauffman-4ed-mechanisms.md` under a `## Wave B` section. Do not rewrite Wave A algorithms unless a PDF re-sight corrects an error (`CORRECTED` note).

### T3 — ASCII panels P-B1…P-B5

Append to `kauffman-4ed-ascii-machinery.md`. Prefer worked miniature on P-B1 (close a 3-braid) and P-B3 (one skein step).

### T4 — Overview fork + cross-walk

Update overview board; extend cross-walk table: `P-B* → M-B* → stamp → K# → clipboard PAGE/FM` (use existing FM-K5 for Gauss/Jones family; report OPEN if map lacks a K-id).

### T5 — Clipboard receipt only

Add `## Pass 6 receipt`. Do not rewrite A–X morals.

### T6 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "reference-Mapper"
# commit: mechanisms Wave B + ascii Wave B + overview + clipboard receipt + this plan EXECUTED
./docs/coord/coord.sh release clipboards "reference-Mapper"
```

Ask before push.

---

## Acceptance tests (execute must pass)

1. Every M-B1…M-B5 card has all schema fields non-empty (or `[OPEN]` with cause).  
2. Every P-B1…P-B5 panel has schema + fenced ASCII + stamp line.  
3. Every algorithm has numbered steps + halt; every panel cites implementing M-B steps.  
4. No Wave B stamp is KEEP-as-Core-write for braid/YBE/skein/Alexander/Gauss.  
5. No fence body contains Lace `WORD`/`POINTER`.  
6. No card/panel claims to close Φ.  
7. Overview includes Wave B fork; Lace Core still off-board.  
8. PDF never staged.  
9. `systems-manifest-ascii.md` / law / graphics / reason-model-map untouched.  
10. Steward test: walk M-B1 closure on P-B1 ASCII alone; walk one Homfly/Jones skein step on P-B3 alone.

---

## Relation to Core ASCII

| File | Object |
|---|---|
| `docs/systems-manifest-ascii.md` | Lace Core spine |
| `docs/clipboards/kauffman-4ed-ascii-machinery.md` | Kauffman Shadow machinery (A+B after this pass) |

Pass 6 must not import H×C×W train oil or Core piece numbers into Wave B panels.

---

## Execution (when you say go pass 6)

1. Refresh claim.  
2. T1–T5 with Wave B cards + panels complete.  
3. Mark this plan EXECUTED; list any still-deferred C–D IDs.  
4. Check · commit · release.  
5. Stop.

---

## Steward test

Shoe in hands, or no.  
Braid word is not Lace chronology.  
YBE is not array law.  
Skein choice points are `[OPEN]`, not Φ.  
Gauss code is not append-life.  
Φ stays `[GAP]`.
