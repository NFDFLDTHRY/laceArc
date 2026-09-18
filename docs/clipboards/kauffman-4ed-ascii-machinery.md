# Kauffman 4ed — ASCII source-machinery model (Shadow)

**Status:** Pass 5 EXECUTED (Wave A panels P-A1–A9). Emission `[GAP]`.  
**Source:** L.H. Kauffman, *Knots and Physics*, 4ed.  
**PDF:** `refs/local/kauffman-knots-and-physics-4ed.pdf` (image-only; **never git-add**).  
**Offset:** PDF p. ≈ printed p. + 19.  
**Algorithms:** [`kauffman-4ed-mechanisms.md`](kauffman-4ed-mechanisms.md) (M-A1–A9).  
**Admission:** [`kauffman-4ed-clipboard.md`](kauffman-4ed-clipboard.md).  
**Map / stakes:** [`reason-model-map.md`](../reason-model-map.md) §1 · [`clipboard-five-stakes.md`](clipboard-five-stakes.md) PAGE 1/5.  
**Not this file:** Lace Core ASCII lives in [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**.

**Contract (read first)**

1. This models **Kauffman's book procedures**, not Lace Core.  
2. Panels are Shadow / Layer III; they do not write the append-only strand.  
3. Stamps sit **outside** the ASCII fence. Panel bodies use book vocabulary only.  
4. Emission Φ stays `[GAP]`. No panel closes it.

Law: diagram ≠ rope · hitch kin · grab ≠ emission · Hands win · `[GAP]` sealed.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read** | May sit beside Lace as a reading / physics image; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or emission rule |
| **FORBID-as-fields** | Must not become continuous fields / tension scalars in Core |
| **FORBID-as-Lace-identity** | Must not redefine what Lace *is* (closed loop ≠ one strand) |
| **FORBID-extra-rooms** | Must not add surfaces / virtual rooms as Lace storage |
| **SILENT/off-shoe** | Book procedure is silent for Lace append; do not smuggle as scheduler |
| **FORBID-as-history-store** | Polynomial / state-sum must not become Lace history |

---

## SOURCE MACHINERY overview (book side only)

```
  BOOK PHYSICS                         BOOK DIAGRAM ENGINE
  ------------                         -------------------
  [rope + post]                        [closed diagram]
       |                                      |
       | hitches / wraps                      | Move Zero (tidy arcs only)
       v                                      v
  [later wrap grabs                   [Reidemeister I II III]
   earlier wrap]                              |
       |                               ambient = 0+I+II+III
       |                               regular = 0+II+III
       v                                      |
  [capstan: T2 <= k T1]                       v
                                       [slide axioms]----> (derive RII/RIII)
                                              |
                                              v
                                       [bracket: splice A|B
                                        state-sum -> <K>]
                                              |
                                              v
                                       [writhe w(K)]
                                              |
                                              v
                                       [normalize L = (-A^3)^(-w) <K>]
                                              |
                                              v
                                       [Jones V(t) via A = t^(-1/4)]

  APPENDIX FORK (still book, not Core)
  ------------------------------------
  [virtual crossing (circled)] + [detour] + [± empty 1-handle]
       stamp: FORBID-extra-rooms


  ============================================================
  Lace Core is NOT on this board.
  See: docs/systems-manifest-ascii.md
  emission Phi = [GAP]           (Hands silent; this diagram does not fill it)
  ============================================================
```

---

## Wave A panels

### P-A1 — Clove / hitch participation

| Field | Content |
|---|---|
| Mechanism cite | M-A1 · Part I §1° p.4 / PDF 23; Part II §1° pp.323–324 / PDF 342–343 |
| Sighting | cite prior pass 4 OCR + plan seed |
| Lace stamp | **KEEP-read** (hitch kin) |
| Map cite | K1 |
| False friend | Later wrap grab ≠ POINTER when-rule |
| Implements | M-A1 algorithm steps 1–4 (wrap → load → grab check → hold/slip) |

```
  post/rod
    ||
    ||======= wrap B (earlier)
    ||   X  <--- wrap-over / clove cross
    ||======= wrap C (later)
    ||
   load A ---- tension ---->

  under load at A:  C presses / "grabs" B
  result: HOLD or SLIP  (friction + geometry)

  stamp under fence: KEEP-read
```

---

### P-A2 — Capstan / winding inequality \(T_2 \le \kappa T_1\)

| Field | Content |
|---|---|
| Mechanism cite | M-A2 · Part II §1° pp.323–324 / PDF 342–343 |
| Sighting | cite prior pass 4 OCR |
| Lace stamp | **FORBID-as-fields**; **KEEP-read** as physics image |
| Map cite | K7 (clipboard uses book ≤; map `<` sync OPEN) |
| False friend | Continuous κ,T as Core scalars; emission threshold from inequality |
| Implements | M-A2 steps: θ → κ=e^(μθ) → compare T2 ≤ κ T1 |

```
  T1 ----\                  /---- T2
          \                /
           ) wrap angle θ (
          /   n turns      \
         /                  \

  model (book simple):  μ = 1,  κ = e^θ
  n full turns:         θ = 2πn ,  κ = e^(2πn)

  decide:  if T2 <= κ * T1 then NO_SLIP else MAY_SLIP

  stamp under fence: FORBID-as-fields | KEEP-read image
```

---

### P-A3 — Closed-loop definition

| Field | Content |
|---|---|
| Mechanism cite | M-A3 · Part I §2° pp.8–9 / PDF 27–28 |
| Sighting | cite prior pass 4 OCR |
| Lace stamp | **FORBID-as-Lace-identity** |
| Map cite | K2 / PAGE B |
| False friend | "Lace = closed knot loop"; splice ends as Core write |
| Implements | M-A3 steps: pattern → splice ends → closed loop / link |

```
  OPEN ROPE                         CLOSED KNOT (book)
  ---------                         ------------------
  end1 ~~~~/\/\~~~~ end2            ,--------.
           knot                       | /\/\ |
           pattern                    | \/\/ |
                                      `------'
                                   ends spliced = one loop

  link = several such loops
  canonical unknot = plain ring

  stamp under fence: FORBID-as-Lace-identity
```

---

### P-A4 — Move Zero (planar isotopy)

| Field | Content |
|---|---|
| Mechanism cite | M-A4 · Part I §2° p.16 / PDF 35 |
| Sighting | cite prior pass 4 OCR |
| Lace stamp | **KEEP-read as projection only** |
| Map cite | K3-ish / PAGE C |
| False friend | Move Zero as history emission; conflating with R I–III |
| Implements | M-A4: isotope arcs without changing crossings / over-under |

```
  BEFORE (messy)              AFTER Move Zero (tidy)
  --------------              ----------------------
      )  X  (                     ---X---
     /        \                   /       \
    X          X                 X         X
     \        /                   \       /
      (  X  )                     ---X---

  allowed: bend, stretch, rotate regions
  forbidden here: add/remove curl (I), cancel pair (II), triangle slide (III)

  stamp under fence: KEEP-read projection
```

---

### P-A5 — Reidemeister I–III (+ ambient vs regular)

| Field | Content |
|---|---|
| Mechanism cite | M-A5 · Part I §2° pp.16–18 / PDF 35–37 |
| Sighting | cite prior pass 4 OCR |
| Lace stamp | **FORBID-as-Core-write** |
| Map cite | K3–K4 · PAGE C · FM Reidemeister |
| False friend | R-moves as POINTER emission or array mutation law |
| Implements | M-A5 local rewrites; ambient = 0+I+II+III; regular = 0+II+III |

```
  Reidemeister I (curl)          Reidemeister II (pair)
  ---------------------          ----------------------
    )            |                 ====          ====
   ( X   <-->    |                X    X  <-->
    )            |                 ====          ====
  add/remove one twist           add/cancel opposing pair

  Reidemeister III (triangle)
  ---------------------------
      \ /                      \ /
       X         <-->           \
      / \                      / \
   slide strand across a crossing

  modes:
    regular isotopy  = Move0 + II + III
    ambient isotopy  = Move0 + I + II + III

  worked miniature (RII cancel):
    two strands, two crossings, opposing over/under
    --> apply II --> strands separate, no crossings left

  next-move choice when several apply = [OPEN] (not a Lace scheduler)

  stamp under fence: FORBID-as-Core-write
```

---

### P-A6 — Bracket state-sum (A/B splice)

| Field | Content |
|---|---|
| Mechanism cite | M-A6 · Part I §3° pp.25–31 / PDF 44–50 |
| Sighting | cite prior pass 4 OCR (Def 3.1, Prop 3.2, Cor 3.4) |
| Lace stamp | **FORBID-as-history-store**; **SILENT** for Lace append |
| Map cite | K5 · PAGE D |
| False friend | Store all states as Lace history; A/B choice as POINTER when |
| Implements | M-A6 steps 3–5 (label A/B → splice all crossings → sum ⟨K\|σ⟩ d^\|\|σ\|\|) |

```
  ONE CROSSING                         A-split              B-split
  ------------                         -------              -------
       \ /                               ) (                  ---
        X          ----splice---->                    or
       / \                               ) (                  ---
                                    joins A-regions      joins B-regions

  A/B labels (book):
    observer: walk in along UNDER; LEFT = A, RIGHT = B
    or: turn OVERCOUNTERCLOCKWISE; swept regions = A

  RECURSIVE (Prop 3.2):
    <X> = A * <A-split> + B * <B-split>

  STATE-SUM (Def 3.1):
    for each complete splice sigma of all crossings:
      <K|sigma> = product of A/B site labels
      ||sigma|| = (loops in sigma) - 1
    <K> = sum_sigma  <K|sigma> * d^(||sigma||)

  MINI TREE (one crossing already spliced; two remain -> 4 leaves sketch):
                    K
                   / \
                 A/   \B
                 /\   /\
               AA AB BA BB   --> each leaf = loops only; score d^(loops-1)

  specialization (Cor 3.4) when seeking topological bracket:
    B = A^(-1),  d = -A^2 - A^(-2)

  crossing-expansion order = [OPEN] (sum commutative; not Lace scheduler)

  stamp under fence: FORBID-as-history-store | SILENT append
```

---

### P-A7 — Jones via normalized bracket / skein

| Field | Content |
|---|---|
| Mechanism cite | M-A7 · Part I §5° pp.49–50 / PDF 68–69; writhe PDF 38; Thm 5.2 |
| Sighting | cite prior pass 4 OCR |
| Lace stamp | **FORBID-as-history-store** |
| Map cite | K6 · PAGE E |
| False friend | Jones recursion as Lace emission scheduler; V_K as the strand |
| Implements | M-A7 preferred route: writhe → bracket → L → substitute |

```
  ORIENTED DIAGRAM K
         |
         |  writhe w(K) = sum of signed crossings
         v
  bracket <K>   (Cor 3.4 specialized)
         |
         |  normalize
         v
  L_K(A) = (-A^3)^(-w(K)) * <K>
         |
         |  A = t^(-1/4)
         v
  V_K(t) = L_K(t^(-1/4))     (Thm 5.2)

  alternate skein (Def 5.1), same invariant when well-defined:
    t^(-1) V(L+) - t V(L-) = (sqrt(t) - 1/sqrt(t)) V(L0)
    V(unknot) = 1
    crossing choice in recursion = [OPEN]

  stamp under fence: FORBID-as-history-store
```

---

### P-A8 — Slide equivalence → RII/RIII

| Field | Content |
|---|---|
| Mechanism cite | M-A8 · Part II §4° p.336 / PDF 355 |
| Sighting | cite prior pass 4 OCR; **figure-authoritative** for exact axiom pictures |
| Lace stamp | **FORBID-as-Core-write** |
| Map cite | K8 · FM slide |
| False friend | Slide axioms as Core mutation primitives |
| Implements | M-A8: apply slide generators; book asserts RII/RIII are consequences |

```
  SLIDE GENERATORS (schematic; PDF fig is source of record)
  ---------------------------------------------------------
  local strand slides / vertex slides  (book I'..V' figures)
           |
           |  finite composites
           v
     derived Reidemeister II
     derived Reidemeister III

  oriented notes (book):
    some generators free in orientation
    III'/IV' need paired orientations

  next generator choice = [OPEN]
  figure-authoritative: PDF p.355 / printed p.336

  stamp under fence: FORBID-as-Core-write
```

---

### P-A9 — Virtual knot / 1-handle stabilization

| Field | Content |
|---|---|
| Mechanism cite | M-A9 · Preface PDF 16 / p.xv; Appendix PDF 782–785 / pp.763–766 |
| Sighting | cite prior pass 4 OCR |
| Lace stamp | **FORBID-extra-rooms** |
| Map cite | K9 · PAGE F / FM virtual |
| False friend | Virtual crossings as extra Lace stores; 1-handles as Core dimensions |
| Implements | M-A9: classical R on classical crossings; virtual moves + detour; ± empty 1-handles |

```
  CLASSICAL crossing          VIRTUAL crossing (book)
  ------------------          -----------------------
       \ /                           \ /
        X                             X
       / \                           (o)   <- small circle: neither over nor under
                                     / \

  DETOUR (global):
    ---v---v---v---     excise virtual run, reconnect
           |            every new transversal hit = virtual
           v
    ---············---

  SURFACE READING:
    diagram <-> embedding in thickened surface
    stabilize by adding/removing EMPTY 1-handles in the complement

  classical crossings: usual R I–III (+ Move Zero)
  virtual structure: local virtual moves (Fig.1) + detour

  stamp under fence: FORBID-extra-rooms
```

---

## Cross-walk (P-ID → M-ID → stamp → map → clipboard)

| P-ID | M-ID | Lace stamp | Map | Clipboard PAGE / FM |
|---|---|---|---|---|
| P-A1 | M-A1 | KEEP-read | K1 | PAGE A · hitch |
| P-A2 | M-A2 | FORBID-as-fields; KEEP-read image | K7 (≤ sync OPEN on map) | PAGE A · FM inequality |
| P-A3 | M-A3 | FORBID-as-Lace-identity | K2 | PAGE B |
| P-A4 | M-A4 | KEEP-read projection | K3-ish | PAGE C (Move Zero) |
| P-A5 | M-A5 | FORBID-as-Core-write | K3–K4 | PAGE C · FM Reidemeister |
| P-A6 | M-A6 | FORBID-as-history-store; SILENT append | K5 | PAGE D |
| P-A7 | M-A7 | FORBID-as-history-store | K6 | PAGE E |
| P-A8 | M-A8 | FORBID-as-Core-write | K8 | slide / FM |
| P-A9 | M-A9 | FORBID-extra-rooms | K9 | PAGE F · virtual |

---

## Deferred panels (Waves B–D)

| Panel | Mechanism seed | Why deferred |
|---|---|---|
| P-B1… | braid / YBE / Homfly / Alexander / Gauss | same as mechanisms Deferred; optional later sighting |
| P-C1… | DNA / rubber / belt | metaphor wave |
| P-D1… | deepen virtual / arrow / Khovanov | appendix depth |

No Wave B–D panels filled this pass.

---

## Pass 5 method note

Panels cite pass-4 PDF pins (`pdftoppm` + `tesseract`). Figure-heavy loci (slide axioms, virtual Fig.1–2, bracket Fig.9) remain **figure-authoritative**. No `src/`. PDF never staged. `systems-manifest-ascii.md` untouched.

---

## Steward test

Shoe in hands, or no.  
ASCII gears on paper ≠ Lace append.  
FORBID under the fence still means Shadow — the stamp is the fence.  
Next-crossing / next-move nondeterminism = `[OPEN]`, not Φ.  
Φ stays `[GAP]`.
