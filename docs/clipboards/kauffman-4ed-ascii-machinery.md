# Kauffman 4ed — ASCII source-machinery model (Shadow)

**Current source correction, 2026-09-20 — repository update pass 2:** printed p.324 / PDF p.343 was rendered and visually checked from SHA-256 `5bc2465525431f2a944cfb1af1ee51e24d1bba242bdcb40d277faa2d37581697`. The printed unity-coefficient model is `κ = exp(θ/(2π))`, with total angle `θ` in radians, so `n` full turns give `exp(n)`. The corrections below preserve that source convention and the inclusive bound; they do not introduce a generalized friction algorithm or any Lace field. Earlier pass statuses and receipts remain dated records. See [update-pass evidence](../plans/repo-update-pass-2-evidence.md#4-source-probe-and-supplied-file-limits).

**Status:** Pass 6 EXECUTED (Wave A P-A1–A9 + Wave B P-B1–B5). Emission `[GAP]`.  
**Source:** L.H. Kauffman, *Knots and Physics*, 4ed.  
**PDF:** `refs/local/kauffman-knots-and-physics-4ed.pdf` (image-only; **never git-add**).  
**Offset:** PDF p. ≈ printed p. + 19.  
**Algorithms:** [`kauffman-4ed-mechanisms.md`](kauffman-4ed-mechanisms.md) (M-A1–A9 · M-B1–B5).  
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
| **FORBID-as-Lace-chronology** | Must not read braid/time-order as Lace append history |
| **FORBID-as-array-law** | Must not install YBE/R-matrix as Core array rewrite |
| **FORBID-as-emission-scheduler** | Must not use skein/crossing choice as POINTER when-rule |
| **FORBID-as-store** | Must not use Alexander (or similar) polynomial as Lace store |
| **FORBID-as-append-life** | Must not treat Gauss/trip code as Lace strand life |

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

  WAVE B FORK (still book, not Core)   <--- off [closed diagram] / algebra
  ----------------------------------
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

  APPENDIX FORK (still book, not Core)
  ------------------------------------
  [virtual crossing (circled)] + [detour] + [+/- empty 1-handle]
       stamp: FORBID-extra-rooms


  ============================================================
  Lace Core is NOT on this board.
  See: docs/systems-manifest-ascii.md
  emission Phi = [GAP]    (Hands silent; board does not fill it)
  ============================================================
```

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
| Sighting | Prior pass 4 OCR retained as history; update pass 2 visually checks printed p.324 / PDF p.343 for the current normalization |
| Lace stamp | **FORBID-as-fields**; **KEEP-read** as physics image |
| Map cite | K7 and its sample: inclusive `≤` repaired in update pass 1; printed normalization reconciled in update pass 2 |
| False friend | Continuous κ,T as Core scalars; emission threshold from inequality |
| Implements | M-A2 steps: θ in radians → κ=exp(θ/(2π)) → compare T2 ≤ κ T1 |

```
  T1 ----\                  /---- T2
          \                /
           ) wrap angle θ (
          /   n turns      \
         /                  \

  printed model:       κ = exp(θ/(2π)); θ in radians
  n full turns:        θ = 2πn, so κ = exp(n)

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

## Wave B panels

### P-B1 — Braid word ↔ closure

| Field | Content |
|---|---|
| Mechanism cite | M-B1 · Part I §7° pp.85–90 / PDF 104–109 |
| Sighting | OCR pass 6 PDF 104–109; TOC §7 printed 85 |
| Lace stamp | **FORBID-as-Lace-chronology** |
| Map cite | OPEN (K6/FM-K5 neighbor) |
| False friend | Braid word order ≠ Lace strand chronology |
| Implements | M-B1 steps 3–4 (word → diagram → close top↔bottom); worked miniature 3-braid |

```
  ARTIN braid-string (B3)                 OPEN 3-BRAID
  ---------------                 ------------
  b = s1 * s2 * s1                  1  2  3   (top)
                                      \ / /
                                       X /     s1
                                      / X      s2
                                     / / \     s1
                                    1  2  3   (bottom)

  CLOSURE: parallel arcs top↔bottom (no new mutual crossings)

       ,----1----.
       |  \ / /  |
       |   X /   |     closed braid b-hat
       |  / X    |
       | / / \   |
       `----3----'

  Artin moves (book): s_i s_i^{-1}=1 (RII);
    s_i s_{i+1} s_i = s_{i+1} s_i s_{i+1} (RIII);
    distant generators commute

  Alexander: any link ~ some closed braid (axis choice [OPEN])

  stamp under fence: FORBID-as-Lace-chronology
```

---

### P-B2 — Yang–Baxter / R-matrix

| Field | Content |
|---|---|
| Mechanism cite | M-B2 · Part I §8° pp.104–114 / PDF 123–133 |
| Sighting | OCR pass 6 PDF 123–133; Fig.14 YBE **figure-authoritative** |
| Lace stamp | **FORBID-as-array-law**; **SILENT/off-shoe** |
| Map cite | OPEN (K5/K6 neighbor) |
| False friend | YBE / RLL as Lace array rewrite law |
| Implements | M-B2 steps 3–5 (assign R → contract → check unitarity+YBE) |

```
  ABSTRACT TENSOR at a crossing          R-matrix weight
  -----------------------------          ----------------
       a\ /b                                R^{ab}_{cd}
         X  ----weight---->                 (in a,b / out c,d)
       c/ \d

  CHANNEL UNITARITY (IIA):     R * Rbar = id
  CROSS-CHANNEL UNITARITY:     IIB matrix identity (book)
  YANG-BAXTER (III(A)+):       R R R = R R R  on triple
       (Fig.14 PDF 129 is source of record)

  Thm 8.1: channel + cross-channel + YBE
           => T(K) regular-isotopy invariant

  bracket-motivated example (PDF 131):
    R = A * (parallel deltas) + A^{-1} * (crossed deltas)
    loop value n = -A^2 - A^{-2}

  figure-authoritative: PDF p.129 / printed p.110 (Fig.14)

  stamp under fence: FORBID-as-array-law | SILENT/off-shoe
```

---

### P-B3 — Homfly skein / specializations

| Field | Content |
|---|---|
| Mechanism cite | M-B3 · Part I §5° pp.51–52 / PDF 70–71; §11° pp.161–166 / PDF 180–185 |
| Sighting | OCR pass 6 PDF 70–71, 75, 180–185 |
| Lace stamp | **FORBID-as-emission-scheduler**; **FORBID-as-history-store** |
| Map cite | K6 neighbor; Homfly K-id OPEN |
| False friend | Skein crossing-choice as Lace emission scheduler |
| Implements | M-B3 skein steps 2–4 (one exchange); specializations note |

```
  ONE SKEIN STEP (regular Homfly form)
  ------------------------------------
     L+              L-              L0
     \ /             \ /             ) (
      X      and      X      and      )
     / \             / \             ) (

  exchange (book regular):  H(L+) - H(L-) = z * H(L0)
  curls:                    H(curl+/-) = a^{+/-1} * H

  SPECIALIZATIONS
  ---------------
  Homfly P(a,z)
       |
       +--> Jones:     a = t^{-1},  z = sqrt(t)-1/sqrt(t)
       |
       +--> Alexander: a = 1   (Conway form)

  §11 route: YBE R with q-weights → state sum → adjust delta
             → regular-isotopy Homfly specializations

  crossing choice in recursion = [OPEN] (not a Lace scheduler)

  stamp under fence: FORBID-as-emission-scheduler | FORBID-hist-store
```

---

### P-B4 — Alexander via state / model

| Field | Content |
|---|---|
| Mechanism cite | M-B4 · Part I §12° pp.174–178 / PDF 193–197 |
| Sighting | OCR pass 6 PDF 193–197; R glyphs **figure-authoritative** PDF 195 |
| Lace stamp | **FORBID-as-store** |
| Map cite | OPEN (Conway/K6 neighbor) |
| False friend | Alexander states as Lace history store |
| Implements | M-B4 steps 1–6 (tangle form → R on {±1} → state sum → normalize) |

```
  TANGLE FORM (book escape from split-link collapse)
  --------------------------------------------------
     top endpoint
        |
       ... diagram in strip R x I ...
        |
     bottom endpoint
     (no motion past endpoints)

  Conway skein:  V(L+) - V(L-) = z * V(L0)
                 V(unknot) = 1
                 split link => V = 0

  YBE STATE MODEL (Sec 12)
  ------------------------
  index set I = {+1, -1}
  assign R / Rbar at +/- crossings
  ||sigma|| = rotational spin norm (as Sec 11)
  set delta = i  (i^2 = -1) for curl lemma
  normalize -> V_K Alexander-Conway

  bare string eval = 1;  disjoint circle factor = 0

  figure-authoritative: PDF p.195 / printed p.176 (R entries)

  stamp under fence: FORBID-as-store
```

---

### P-B5 — Gauss code reconstruct / trip

| Field | Content |
|---|---|
| Mechanism cite | M-B5 · Appendix Gauss Codes… Sec.II pp.543–550 / PDF 562–569 |
| Sighting | OCR pass 6 PDF 562–569; Fig.1 **figure-authoritative** PDF 570 |
| Lace stamp | **FORBID-as-append-life** |
| Map cite | FM-K5 / PAGE F neighbor; Gauss K-id OPEN |
| False friend | Trip order as Lace append-life / emission log |
| Implements | M-B5 encode steps 2 + decode steps 3 (flip → Jordan → chords) |

```
  ENCODE (trip)
  -------------
  label crossings 1..c; pick basepoint + direction
  walk, record label at each crossing through
  trefoil universe example:  1 2 3 1 2 3
  augmented (O/U):           O1 U2 O3 U1 O2 U3

  DECODE (flip -> Jordan -> chords)
  ---------------------------------
  for label k = 1..c:
    reverse subsequence strictly between the two k's
  example: 123123 --flip1--> 132123 (then 2,3 may no-op)

  draw circle with Jordan order; join equal labels
  by noncrossing chords (in and/or out); restore crossings

       (1)---(3)---(2)---(1)---(3)---(2)
              \___________/  chords -> universe

  Reidemeister <-> local code rewrites: Fig.1 (PDF 570)

  stamp under fence: FORBID-as-append-life
```


## Cross-walk (P-ID → M-ID → stamp → map → clipboard)

| P-ID | M-ID | Lace stamp | Map | Clipboard PAGE / FM |
|---|---|---|---|---|
| P-A1 | M-A1 | KEEP-read | K1 | PAGE A · hitch |
| P-A2 | M-A2 | FORBID-as-fields; KEEP-read image | K7 (≤ and printed normalization reconciled) | PAGE A · FM inequality |
| P-A3 | M-A3 | FORBID-as-Lace-identity | K2 | PAGE B |
| P-A4 | M-A4 | KEEP-read projection | K3-ish | PAGE C (Move Zero) |
| P-A5 | M-A5 | FORBID-as-Core-write | K3–K4 | PAGE C · FM Reidemeister |
| P-A6 | M-A6 | FORBID-as-history-store; SILENT append | K5 | PAGE D |
| P-A7 | M-A7 | FORBID-as-history-store | K6 | PAGE E |
| P-A8 | M-A8 | FORBID-as-Core-write | K8 | slide / FM |
| P-A9 | M-A9 | FORBID-extra-rooms | K9 | PAGE F · virtual |
| P-B1 | M-B1 | FORBID-as-Lace-chronology | OPEN (K6/FM-K5 neighbor) | braid / FM |
| P-B2 | M-B2 | FORBID-as-array-law; SILENT/off-shoe | OPEN (K5/K6 neighbor) | YBE / FM |
| P-B3 | M-B3 | FORBID-as-emission-scheduler; FORBID-as-history-store | K6 neighbor; Homfly OPEN | PAGE E family · FM-K5/K6 |
| P-B4 | M-B4 | FORBID-as-store | OPEN (Conway/K6 neighbor) | Alexander / FM |
| P-B5 | M-B5 | FORBID-as-append-life | FM-K5 / PAGE F neighbor; Gauss K-id OPEN | PAGE F · Gauss |

---

## Deferred panels (Waves C–D)

| Panel | Mechanism seed | Why deferred |
|---|---|---|
| P-C1… | DNA / rubber / belt | metaphor wave; same as mechanisms M-C* |
| P-D1… | deepen virtual / arrow / Khovanov | appendix depth; same as mechanisms M-D* |

Wave B panels P-B1…P-B5 filled this pass. C–D remain deferred with seeds.

---

## Pass 5 method note

Panels cite pass-4 PDF pins (`pdftoppm` + `tesseract`). Figure-heavy loci (slide axioms, virtual Fig.1–2, bracket Fig.9) remain **figure-authoritative**. No `src/`. PDF never staged. `systems-manifest-ascii.md` untouched.

## Pass 6 method note

Wave B panels P-B1…P-B5 drawn to match M-B1…M-B5. Fresh OCR pins: braid PDF 104–109, YBE 123–133, Homfly 70–71/180–185, Alexander 193–197, Gauss 562–569. Overview extended with Wave B fork; Lace Core still off-board; Phi `[GAP]`. Fence bodies use book glyphs only (no Lace WORD/POINTER). No `src/`. PDF never staged. `systems-manifest-ascii.md` untouched.

---

## Steward test

Shoe in hands, or no.  
ASCII gears on paper ≠ Lace append.  
FORBID under the fence still means Shadow — the stamp is the fence.  
Next-crossing / next-move nondeterminism = `[OPEN]`, not Φ.  
Φ stays `[GAP]`.
