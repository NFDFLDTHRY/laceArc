# Petersen & Zech — ASCII source-machinery model (Shadow)

**Status:** Pass 4 EXECUTED (SOURCE MACHINERY overview + panels P-A1…P-A9; P4-X all PASS). Emission `[GAP]`.  
**Source:** Philipp Petersen & Jakob Zech, *Mathematical theory of deep learning*, arXiv:2407.18384v4 [cs.LG] · cover 16 Jan 2026  
**PDF:** `refs/local/petersen-zech-mathematical-theory-deep-learning.pdf` → attachment `a8505f3de280cb1c6f9742161471fadc52c21340afc05efe4549bd58c84383fa.pdf` (**333** pp., text layer; **never git-add**)  
**SHA-256:** `a8505f3de280cb1c6f9742161471fadc52c21340afc05efe4549bd58c84383fa`  
**Algorithms:** [`petersen-zech-mechanisms.md`](petersen-zech-mechanisms.md) (M-A1…M-A9; algorithms unchanged this pass).  
**Admission:** [`petersen-zech-clipboard.md`](petersen-zech-clipboard.md).  
**Map / stakes:** [`reason-model-map.md`](../reason-model-map.md) §4 · [`clipboard-five-stakes.md`](clipboard-five-stakes.md) PAGE 4/5.  
**Not this file:** Lace Core ASCII lives in [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**.

**Contract (read first)**

1. This models **Petersen–Zech book procedures**, not Lace Core.  
2. Companion to mechanisms cards + book clipboard.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No panel closes it.  
5. Stamps match Wave A cards (function≠construction · FORBID train-w-as-history · FORBID NTK-as-store · …).  
6. Inside fences: **book glyphs only** — no WORD / POINTER / Graphic D as book objects.  
7. Panels implement M-A* steps by citation; algorithm bodies live in mechanisms.md.  
8. Hands win; steward refuses store-trained-w-as-history from P-A8 alone.

Law: function ≠ construction · star ≠ neuron · train-w ≠ Lace history · NTK ↛ store · Hands win · Φ `[GAP]` sealed.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read** | May sit beside Lace as a reading / math image; does not write Core |
| **FORBID-as-Core-type** | Must not install book objects (neuron, width, depth) as WORD/STAR kinds |
| **FORBID-as-Core-ops** | Must not treat ReLU/CPWL book algebra as Core operators |
| **FORBID-as-Lace-rooms** | Must not map depth/width/affine-piece counts to Lace rooms or Piece 12 axes |
| **FORBID-approx-as-possession** | Must not treat approximation / density as possession of the strand |
| **FORBID-as-POINTER-when** | Must not use interpolation/reconstruction as POINTER when/arity/adjacency |
| **FORBID-as-Lace-history** | Must not treat training / GD / SGD / backprop updates of \(w\) as Lace occurrence history |
| **FORBID-as-store** | Must not treat NTK / Φlin / kernel as a second store beside Graphic D |
| **FORBID-Φ-sameness-as-identity** | Must not treat same realized Φ as Lace identity |
| **SILENT-for-Lace-append** | Book procedure is silent for Lace append; do not smuggle as scheduler |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or emission rule |

(Reuse of Pass 3 legend from [`petersen-zech-mechanisms.md`](petersen-zech-mechanisms.md).)

---

## SOURCE MACHINERY overview (book side only)

Singular canonical overview for this pass. Book constructive spine only. Lace Core and Φ are **FORBIDDEN exits** off this board — they are not nodes of the book machinery.

```
  [input x]
       |
       v
  [feedforward Phi(x;w)] ----------- M-A1 / P-A1
       |
       +--> [same Phi, many (arch,w)] -- M-A2 / P-A2
       |     KEEP fn != construction
       v
  [approx / ReLU pieces / depth] --- M-A3 / M-A4 / M-A5
       |                             P-A3 / P-A4 / P-A5
       v
  [high-d / Barron / composition] -- M-A6 / P-A6
       |
       v
  [interpolation / reconstruction] - M-A7 / P-A7
       |
       v
  [train: GD/SGD/backprop on w] ---- M-A8 / P-A8
       |     FORBID as Lace history
       v
  [NTK / infinite-width limit] ----- M-A9 / P-A9
       |     FORBID as store
       |
       x --> Lace Core / Graphic D / Phi
             FORBIDDEN off this board

  Lace Core OFF this board --> docs/systems-manifest-ascii.md
  Phi = [GAP]
```

**P4-X:** Rigor matrix (all PASS) lives below in this file and is pointed from the book clipboard Pass 4 receipt.

---

## Wave A panels

### P-A1 — Feedforward map (Def 2.1)

| Field | Content |
|---|---|
| Mechanism cite | M-A1 · §2.1 · **Def 2.1** · PDF **p.20** (printed ~19) |
| Sighting | `pdftotext -f 20 -l 21 -layout` this pass; Pass 1 PAGE B; Pass 3 M-A1 |
| Lace stamp | **KEEP-read**; **FORBID star=neuron** / **FORBID-as-Core-type** (P1) |
| Map cite | **P1** (also P2 presentation temptation) |
| False friend | FM-P1 — neuron / hidden unit ⇒ Lace star; FM-P2 — architecture graph ⇒ Graphic D |
| Implements | M-A1 alg steps 3.1–3.4: layer loop → final affine → output Φ(x,w) → refuse star=neuron |

```
  x^(0) := x
       |
       |  for ell = 1 .. L
       v
  x^(ell) := sigma( W^(ell-1) x^(ell-1) + b^(ell-1) )
       |
       v
  x^(L+1) := W^(L) x^(L) + b^(L)
       |
       v
  Phi(x,w) := x^(L+1)

  depth L; width = max hidden d_ell
  # book forward evaluation only (Def 2.1)
  # hidden units / graph nodes != Lace stars
  # width != Piece 12 participation
```
stamp under fence: KEEP-read | FORBID star=neuron

---

### P-A2 — Function ≠ construction (Remark 2.2)

| Field | Content |
|---|---|
| Mechanism cite | M-A2 · **Remark 2.2** · PDF **p.21** (printed ~20) |
| Sighting | `pdftotext -f 20 -l 21 -layout` this pass; Pass 1 PAGE A; Pass 3 M-A2 |
| Lace stamp | **KEEP-read** (P5); **FORBID-Φ-sameness-as-identity** |
| Map cite | **P5** |
| False friend | FM-P5 — same Φ ⇒ same Lace (collapse construction) |
| Implements | M-A2 alg steps 3.1–3.4: note nonuniqueness → refuse unique meaning from Φ alone → fix construction when stating depth/size → refuse Φ-sameness as Lace identity |

```
         realized map Phi
              |
     +--------+--------+
     |                 |
     v                 v
  C1=(arch1,w1)    C2=(arch2,w2)
     |                 |
     +--------> same Phi <--------+

  same_Phi  =/=>  unique(architecture, w)
  depth/size claims require a FIXED construction

  # KEEP function != construction
  # FORBID Phi-sameness as Lace identity
  # do not merge occurrence histories from Phi agreement
```
stamp under fence: KEEP-read (P5) | FORBID Phi-sameness-as-identity

---

### P-A3 — Universal approximation (Ch.3)

| Field | Content |
|---|---|
| Mechanism cite | M-A3 · Ch.3 · **Def 3.1/3.3**, **Thm 3.9** · PDF **pp.27–30** |
| Sighting | Pass 1 PAGE X / P3; Pass 3 M-A3; pins reused |
| Lace stamp | **KEEP-read** existence; **FORBID-approx-as-possession** (P3) |
| Map cite | **P3** |
| False friend | FM-P3 — universal approximation ⇒ Lace identity / possession |
| Implements | M-A3 alg steps 3.1–3.4: invoke Def 3.3 → apply Thm 3.9 → optional Remark 3.10 outline → record existence (not possession) |

```
  target f in C^0(R^d); compact K; eps > 0
       |
       |  sigma in M, not a polynomial
       v
  class H = N_{d,1}(sigma;1)   (shallow, width free)
       |
       |  Thm 3.9: H universal approximator of C^0
       v
  exists g in H:  sup_{x in K} |f(x)-g(x)| < eps

  # density / existence certificate only
  # FORBID approx => possession of the strand
  # many g may work; no unique Lace route
```
stamp under fence: KEEP-read existence | FORBID approx=>possession

---

### P-A4 — ReLU / CPWL calculus (Ch.5)

| Field | Content |
|---|---|
| Mechanism cite | M-A4 · Ch.5 · **§5.1** Lemmas **5.1–5.2** · PDF **pp.50–52** |
| Sighting | Pass 3 M-A4; `pdftotext` pins reused |
| Lace stamp | **KEEP-read**; **FORBID-as-Core-ops** |
| Map cite | **P3** (ReLU pieces kin); presentation off P1 |
| False friend | FM-P1 / FM-P8 if calculus promoted to star table or rooms |
| Implements | M-A4 alg steps 3.1–3.4: identity gadget → compose ∘/• → track resource bounds → refuse Core ops |

```
  ReLU book algebra (Lemmas 5.1-5.2):

    Phi_id_L (x) = x     depth L, width 2d
         |
         +-- Phi2 o Phi1   (direct compose)
         |
         +-- Phi2 * Phi1   (via identity interlayer)
         |
         +-- (Phi1,...,Phi_m) parallel
         |
         +-- Phi1 + Phi2   linear combine

  track width / depth / size bounds from lemmas
  # book algebra only
  # FORBID as Core ops / star-table rewrite
```
stamp under fence: KEEP-read | FORBID-as-Core-ops

---

### P-A5 — Affine pieces / depth (Ch.6–7)

| Field | Content |
|---|---|
| Mechanism cite | M-A5 · Ch.6 **Def 6.1** · Ch.7 **Prop 7.1** / **Lemma 7.2** · PDF **~pp.72, 85–86** |
| Sighting | Pass 1 PAGE X Ch.7; Pass 3 M-A5 |
| Lace stamp | **KEEP-read**; **FORBID-as-Lace-rooms** (FM-P8) |
| Map cite | **P3** |
| False friend | FM-P8 — depth/width hyperparameters ⇒ Lace dimension / rooms |
| Implements | M-A5 alg steps 3.1–3.4: count Pieces(f,Ω) → build s_n ≈ x² → realize depth-n width≤3 → refuse rooms map |

```
  Def 6.1: Pieces(f, Omega) = p
       (smallest # affine regions on Omega)
       |
       v
  Prop 7.1 / Lem 7.2 miniature:
    s_n  approx  x^2 on [0,1]
    depth(s_n)=n; width <= 3; size <= 7n
    error <= 2^(-2n-1)

  # approximation resources only
  # FORBID depth/width/pieces => Lace rooms
  # successive layers != accumulated Lace passes
```
stamp under fence: KEEP-read | FORBID depth/width=>Lace rooms

---

### P-A6 — High-d / Barron / compositionality (Ch.8)

| Field | Content |
|---|---|
| Mechanism cite | M-A6 · Ch.8 · **Thm 8.1** · Barron **Thm 8.12** · compositionality §8.3 · PDF **~pp.101, 108–109, 113–115** |
| Sighting | Pass 1 PAGE X Ch.8; Pass 3 M-A6 |
| Lace stamp | **KEEP-read**; **FORBID as Core dimension axis** |
| Map cite | **P3** |
| False friend | FM-P3 / FM-P8 — high-d rates or compositional DAG ⇒ Lace rooms / dimension |
| Implements | M-A6 alg steps 3.1–3.4: reconstruction lower bounds → Barron rate → compositional DAG rates → refuse Core dimension |

```
  class pick:
    C^k  |  Barron Gamma_C  |  compositional DAG
       |           |                  |
       v           v                  v
  rate(N,d,k)   O(1/N) width-N    rate tracks max arity m
                (Thm 8.12)         (not ambient d)

  Thm 8.1 family: reconstruction lower bounds (worst-case)
  DAG = function composition picture (book)

  # KEEP-read high-d rates
  # FORBID as Core dimension axis
  # d / N / DAG != Piece 12 / store
```
stamp under fence: KEEP-read | FORBID as Core dimension axis

---

### P-A7 — Interpolation / reconstruction (Ch.9)

| Field | Content |
|---|---|
| Mechanism cite | M-A7 · Ch.9 · **Def 9.1** · **Thm 9.3** · PDF **pp.122–123** |
| Sighting | Pass 1 PAGE F/X; Pass 3 M-A7 |
| Lace stamp | **KEEP-read**; **FORBID-as-POINTER-when** (FM-P9) |
| Map cite | **P7** / **P3** |
| False friend | FM-P9 — interpolation/reconstruction ⇒ POINTER when-rule / Φ fill |
| Implements | M-A7 alg steps 3.1–3.4: Def 9.1 → Thm 9.3 existence → capacity warning → refuse POINTER when-rule |

```
  samples (x_i, y_i)_{i=1}^{n+1}   distinct x_i
       |
       |  sigma in M, not a polynomial
       v
  H = N_{d,1}(sigma, 1, n)     shallow width n
       |
       |  Thm 9.3 Universal Interpolation
       v
  exists Phi in H:  Phi(x_i) = y_i  for all i

  capacity warning: excess width can fit
  arbitrary values off-sample

  # KEEP-read existence only
  # FORBID as when / arity / adjacency rule
  # emission Phi Lace stays [GAP]
```
stamp under fence: KEEP-read | FORBID-as-POINTER-when

---

### P-A8 — Training GD / SGD / backprop (Ch.10)

| Field | Content |
|---|---|
| Mechanism cite | M-A8 · Ch.10 · §10.1 eq **(10.1.2)** PDF **p.133**; §10.2 eq **(10.2.2)** PDF **p.138**; §10.5 Backprop PDF **pp.152–153** |
| Sighting | `pdftotext -f 133 -l 133` this pass; Pass 1 PAGE C; Pass 2 D7; Pass 3 M-A8 |
| Lace stamp | **FORBID-as-Lace-history** (P4); **SILENT-for-Lace-append**; **FORBID-as-Core-write** |
| Map cite | **P4** |
| False friend | FM-P4 — train / GD / backprop ⇒ rewrite Lace history |
| Implements | M-A8 alg steps 3.1–3.5: form ∇F or G_k → optional backprop for ∇ → choose h_k → update **w only** → refuse Lace history |

```
  objective F(w) on PARAMETERS (paper)
       |
       |  form grad = nabla F(w_k)
       |     or SGD estimator G_k
       |     (E[G_k|w_k] = nabla F(w_k))
       |
       |  optional: backprop -> derivatives only
       |            (not itself a write rule)
       v
  w_{k+1} := w_k - h_k * grad     (10.1.2)
       or  w_k - h_k * G_k        (10.2.2)

  *** updates parameters w ***
  *** NOT occurrence history ***
  *** NOT an append / scheduler ***
  steward: shoe in hands -- refuse
  "store trained w as Lace history"
```
stamp under fence: **FORBID-as-Lace-history** | SILENT-for-Lace-append

---

### P-A9 — NTK / infinite width (§11.3–11.6)

| Field | Content |
|---|---|
| Mechanism cite | M-A9 · §11.3 eqs **(11.3.1), (11.3.4–5)** · PDF **pp.169–170**; §11.6 **Thm 11.20** · PDF **pp.179–180** |
| Sighting | `pdftotext -f 169 -l 170` this pass; Pass 1 PAGE E; Pass 3 M-A9 |
| Lace stamp | **FORBID-as-store** (P7); width ≠ Piece 12; **FORBID-as-Core-write** |
| Map cite | **P7** |
| False friend | FM-P7 — NTK / infinite width ⇒ second store / participation axis |
| Implements | M-A9 alg steps 3.1–3.4: form Φ_lin → empirical tangent kernel → n→∞ NTK limit → refuse store |

```
  fix init w0; linearized params p
       |
       v
  Phi_lin(x,p) := Phi(x,w0) + <nabla_w Phi(x,w0), p>
                                              (11.3.1)
       |
       v
  phi(x) := nabla_w Phi(x,w0)
  Khat_n(x,z) := <phi(x), phi(z)>     (11.3.4-5)
       |
       |  Assump. 11.17 / init; Thm 11.20
       v
  n^{-1} Khat_n  -->  K^NTK   as n -> infinity

  *** analysis around fixed w0 ***
  *** kernel / Phi_lin != strand ***
  *** width n != Piece 12 ***
  *** NOT a second store ***
  steward: refuse "NTK as store"
```
stamp under fence: **FORBID-as-store** | width != Piece 12

---

## Cross-walk (P-A* ↔ M-A* ↔ stamp ↔ Map P# ↔ PAGE ↔ FM-P*)

| Panel | Mechanism | Stamp | Map | PAGE | FM |
|---|---|---|---|---|---|
| P-A1 | M-A1 Feedforward Def 2.1 | KEEP-read; FORBID star=neuron | P1 | B | FM-P1 / FM-P2 |
| P-A2 | M-A2 Remark 2.2 fn≠construction | KEEP-read (P5); FORBID Φ-sameness-as-identity | P5 | A | FM-P5 |
| P-A3 | M-A3 Universal approx Ch.3 | KEEP-read existence; FORBID approx⇒possession | P3 | X | FM-P3 |
| P-A4 | M-A4 ReLU/CPWL Ch.5 | KEEP-read; FORBID-as-Core-ops | P3 | X / B | FM-P1 / FM-P8 |
| P-A5 | M-A5 Affine pieces / depth Ch.6–7 | KEEP-read; FORBID-as-Lace-rooms | P3 | X / B | FM-P8 |
| P-A6 | M-A6 High-d / Barron / composition Ch.8 | KEEP-read; FORBID Core dimension axis | P3 | X | FM-P3 / FM-P8 |
| P-A7 | M-A7 Interpolation Ch.9 | KEEP-read; FORBID-as-POINTER-when | P7 / P3 | F / X | FM-P9 |
| P-A8 | M-A8 GD/SGD/backprop Ch.10 | **FORBID-as-Lace-history**; SILENT-for-Lace-append | P4 | C | FM-P4 |
| P-A9 | M-A9 NTK / ∞-width §11.3–11.6 | **FORBID-as-store**; width≠Piece 12 | P7 | E | FM-P7 |

---

## P4-X — Rigor matrix

Re-walked this pass (not inherited blindly from Pass 3). Any FIX would be resolved here; none found.

| P | M | Stamp match | Implements reverse-walk | Fence book-only | Overview attach | Verdict |
|---|---|---|---|---|---|---|
| P-A1 | M-A1 | PASS (KEEP-read; FORBID star=neuron) | PASS (steps 3.1–3.4: layer loop → final affine → Φ → refuse) | PASS (x^(ℓ), σ, W, b, Φ only) | PASS (feedforward node) | **PASS** |
| P-A2 | M-A2 | PASS (KEEP-read P5; FORBID Φ-sameness) | PASS (3.1–3.4 nonuniqueness → fixed construction → refuse identity) | PASS (Φ, arch, w, C1/C2) | PASS (same-Φ branch) | **PASS** |
| P-A3 | M-A3 | PASS (KEEP existence; FORBID possession) | PASS (3.1–3.4 Def→Thm 3.9→existence) | PASS (f, K, ε, N_{d,1}, σ) | PASS (approx strip) | **PASS** |
| P-A4 | M-A4 | PASS (KEEP-read; FORBID-as-Core-ops) | PASS (3.1–3.4 id→compose→bounds→refuse) | PASS (Φ_id, ∘, •, parallel, +) | PASS (ReLU pieces strip) | **PASS** |
| P-A5 | M-A5 | PASS (KEEP-read; FORBID-as-Lace-rooms) | PASS (3.1–3.4 Pieces→s_n→realize→refuse) | PASS (Pieces, s_n, depth, size) | PASS (depth strip) | **PASS** |
| P-A6 | M-A6 | PASS (KEEP-read; FORBID Core dim axis) | PASS (3.1–3.4 lower→Barron→DAG→refuse) | PASS (C^k, Barron, DAG, rates) | PASS (high-d node) | **PASS** |
| P-A7 | M-A7 | PASS (KEEP-read; FORBID-as-POINTER-when) | PASS (3.1–3.4 Def 9.1→Thm 9.3→warning→refuse) | PASS (samples, H, interpolate) | PASS (interpolation node) | **PASS** |
| P-A8 | M-A8 | PASS (**FORBID-as-Lace-history**; SILENT) | PASS (3.1–3.5 ∇/G_k→h_k→update w→refuse) | PASS (F, w_k, ∇, G_k, h_k only; no append glyph) | PASS (train node + FORBID label) | **PASS** |
| P-A9 | M-A9 | PASS (**FORBID-as-store**; width≠Piece 12) | PASS (3.1–3.4 Φ_lin→K̂_n→NTK→refuse) | PASS (Φ_lin, φ, K̂_n, K^NTK; no store rows) | PASS (NTK node + FORBID label) | **PASS** |

**P4-X verdict:** **9/9 PASS · FIX 0**.

Fence checks for P-A8 / P-A9 (acceptance): P-A8 fence depicts **parameter** updates only and explicitly refuses Lace history / append; P-A9 fence depicts linearization/kernel analysis only and explicitly refuses second store / Piece 12. Neither fence uses WORD / POINTER / Graphic D as book objects.

---

## Waves B–D — deferred (one-line seeds only)

| Wave | Seed | Status |
|---|---|---|
| **B** | Loss landscapes / nonconvex training geometry beyond Ch.10 GD/SGD spine — defer | Deferred — no full panels |
| **C** | Generalization bounds / VC (Ch.14 named from Ch.9) / population risk — defer | Deferred — no full panels |
| **D** | Adversarial robustness; modern architectures (transformers etc.); GNN omission as **non-mechanism** (P6 / PAGE D) — defer; do not invent GNN import | Deferred — no full panels |

Pass 4 success = overview + P-A1…P-A9 + cross-walk + P4-X + clipboard receipt. Algorithms in mechanisms file unchanged.

---

## Steward test

Shoe in hands, or no.  
These diagrams are photographs of **book mathematics**, not Lace machinery.  
Forward Φ boxes are not the strand.  
Training boxes update parameters — not occurrence history (P-A8 + stamp).  
NTK boxes are analysis — not a second store (P-A9).  
Φ stays `[GAP]`.
