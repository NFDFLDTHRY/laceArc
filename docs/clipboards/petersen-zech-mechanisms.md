# Petersen & Zech — mechanism cards (constructive algorithms)

**Status:** Pass 3 EXECUTED (Wave A M-A1…M-A9; Waves B–D deferred one-line seeds). ASCII deferred (no `petersen-zech-ascii-machinery.md` this pass). Emission `[GAP]`.  
**Source:** Philipp Petersen & Jakob Zech, *Mathematical theory of deep learning*, arXiv:2407.18384v4 [cs.LG] · cover 16 Jan 2026  
**PDF:** `refs/local/petersen-zech-mathematical-theory-deep-learning.pdf` → attachment `a8505f3de280cb1c6f9742161471fadc52c21340afc05efe4549bd58c84383fa.pdf` (**333** pp., text layer; **never git-add**)  
**SHA-256:** `a8505f3de280cb1c6f9742161471fadc52c21340afc05efe4549bd58c84383fa`  
**Offset:** printed ≈ PDF − 1 at cited loci (Pass 1–2)  
**Sighting this pass:** `pdftotext -f N -l N -layout` on Def 2.1 / Remark 2.2, Ch.3, Ch.5–11 Wave A loci; Pass 1–2 pins reused where valid  
**Companion:** [`petersen-zech-clipboard.md`](petersen-zech-clipboard.md) · map [`reason-model-map.md`](../reason-model-map.md) §4 (P1–P7) · [`clipboard-five-stakes.md`](clipboard-five-stakes.md) PAGE 4/5 · plan [`petersen-zech-pass-3-plan.md`](petersen-zech-pass-3-plan.md)

Law: function ≠ construction · star ≠ neuron · train-w ≠ Lace history · GNN/NTK ↛ Core store · Hands win · Φ `[GAP]` sealed.  
This file is **Shadow / Layer III documentation of the book**, not Lace `src/`, not `systems-manifest-ascii.md`, not Φ. Do not invent POINTER when / arity / adjacency.

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

---

## Wave A — book constructive spine (blocking)

### M-A1 — Feedforward map (Def 2.1 forward evaluation)

| Field | Content |
|---|---|
| Kind | definition / forward-evaluation |
| Book locus | §2.1 · **Def 2.1** · PDF **p.20** (printed ~19) |
| Sighting method | `pdftotext -f 20 -l 21 -layout` (this pass); Pass 1 PAGE B |
| Eye-quote | “A function Φ : R^{d₀} → R^{d_{L+1}} is called a neural network if there exist matrices W^{(ℓ)} … and vectors b^{(ℓ)} … such that … Φ(x) = x^{(L+1)}” / “We call L the depth, d_max = max_{ℓ=1…L} d_ℓ the width … Collecting all weights and biases in a single vector w … we also write Φ(x, w)” |
| Inputs | Input \(x \in \mathbb{R}^{d_0}\); architecture \((\sigma; d_0,\ldots,d_{L+1})\); parameters \(w = ((W^{(0)},b^{(0)}),\ldots,(W^{(L)},b^{(L)}))\) |
| Outputs | Realized map value \(\Phi(x) = x^{(L+1)}\) (equivalently \(\Phi(x,w)\)) |
| Invariants | Layers compose affine maps with activation \(\sigma\) on hidden layers; final layer affine without \(\sigma\) (Def 2.1 conventions); depth/width are architecture hyperparameters, not Lace participation |
| Algorithm | See below |
| Complexity / termination | One forward pass: \(O(\sum_\ell d_{\ell+1} d_\ell)\) matvecs; halt when \(x^{(L+1)}\) computed |
| Worked miniature | Def 2.1 eqs (2.1.1a–c); architecture graph discussion Remark 2.2 PDF **p.21** |
| Lace stamp | **KEEP-read** as math object; **FORBID-as-Core-type** / **FORBID star=neuron** (P1) |
| Hands cite | Piece 7 / Graphics B2–B3, D5 (star = accumulated passes); Piece 12 / Graphic C5 (participation ≠ width); Graphic D4 |
| Map cite | **P1** (also P2 presentation temptation) |
| False friend | FM-P1 — neuron / hidden unit ⇒ Lace star; FM-P2 — architecture graph ⇒ Graphic D |
| Open gaps | Φ here is the book’s realized function, not Lace emission; Lace Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Architecture \((\sigma; d_0,\ldots,d_{L+1})\) and parameter vector \(w\) fixed as in Def 2.1.  
2. **State.** Input vector \(x^{(0)} := x\).  
3. **Steps.**  
   1. For \(\ell = 1,\ldots,L\): set \(x^{(\ell)} := \sigma(W^{(\ell-1)} x^{(\ell-1)} + b^{(\ell-1)})\).  
   2. Set \(x^{(L+1)} := W^{(L)} x^{(L)} + b^{(L)}\).  
   3. Output \(\Phi(x) = x^{(L+1)}\) (or \(\Phi(x,w)\)).  
   4. Do **not** identify hidden units / graph nodes with Lace stars, or width with Piece 12.  
4. **Choice points.** Alternate activations / residual / recurrent variants named in Remark 2.2 are book extensions — still not Core types.  
5. **Halt.** Codomain vector \(x^{(L+1)}\) obtained.  
6. **Output certificate.** Parameterized feedforward map (Shadow reading only).

```text
x^(0) := x
for ℓ=1..L: x^(ℓ) := σ(W^(ℓ-1) x^(ℓ-1) + b^(ℓ-1))
x^(L+1) := W^(L) x^(L) + b^(L)
Φ(x,w) := x^(L+1)   # KEEP-read; FORBID star=neuron
```

---

### M-A2 — Function ≠ construction (Remark 2.2)

| Field | Content |
|---|---|
| Kind | recognition / internal warning |
| Book locus | **Remark 2.2** · PDF **p.21** (printed ~20) |
| Sighting method | `pdftotext -f 20 -l 21 -layout` (this pass); Pass 1 PAGE A |
| Eye-quote | “Typically, there exist different choices of architectures, weights, and biases yielding the same function Φ” / “we cannot associate a unique meaning to these notions solely based on the function realized by Φ” |
| Inputs | A realized map \(\Phi : \mathbb{R}^{d_0}\to\mathbb{R}^{d_{L+1}}\); candidate constructions (architecture + \(w\)) |
| Outputs | Recognition that Φ-sameness does not uniquely determine construction; depth/size claims require a fixed construction |
| Invariants | Function object ≠ unique architecture/weights/biases; when discussing depth or size, a fixed construction of Φ is assumed (Remark 2.2) |
| Algorithm | See below |
| Complexity / termination | Finite comparison of constructions vs observed Φ; halt when nonuniqueness recorded (no unique meaning from Φ alone) |
| Worked miniature | Remark 2.2 paragraph + architecture-graph caveat (nodes = neuron outputs) on same PDF page |
| Lace stamp | **KEEP-read** (P5); **FORBID-Φ-sameness-as-identity** |
| Hands cite | Piece 13 / Graphic D4 (projection ≠ store); Graphic D5; PAGE A |
| Map cite | **P5** |
| False friend | FM-P5 — same Φ ⇒ same Lace (collapse construction) |
| Open gaps | Remark 2.2 is network nonuniqueness, not a Lace identity theorem; emission `[GAP]` |

**Algorithm**

1. **Preconditions.** At least one construction realizing Φ (Def 2.1).  
2. **State.** Observed function Φ; candidate constructions \(C_1, C_2, \ldots\).  
3. **Steps.**  
   1. Note that distinct architectures / weights / biases may realize the same Φ.  
   2. Refuse to assign unique meaning to architecture notions from Φ alone.  
   3. When stating depth/size, fix an explicit construction (Remark 2.2).  
   4. Do **not** treat Φ-sameness as Lace identity or license merging occurrence histories.  
4. **Choice points.** Whether “Φ” names the function or a specific realization — book uses both; Lace identity still refuses Φ-collapse.  
5. **Halt.** Nonuniqueness / fixed-construction discipline recorded.  
6. **Output certificate.** Function ≠ construction (KEEP-read negation).

```text
same_Φ ⇏ unique(architecture, w)
KEEP function≠construction; FORBID Φ-sameness as Lace identity
```

---

### M-A3 — Universal approximation constructions (Ch.3)

| Field | Content |
|---|---|
| Kind | approximation-construction / existence |
| Book locus | Ch.3 · **Def 3.1/3.3**, **Thm 3.9** · PDF **pp.27–30** (printed ~26–29); class \(\mathcal{M}\) / \(\mathcal{N}_{d,1}(\sigma;1)\) |
| Sighting method | `pdftotext -f 26 -l 35 -layout` (this pass); Pass 1 PAGE X / P3 |
| Eye-quote | “A set of functions H … is a universal approximator … if for every ε > 0, every compact K ⊆ R^d, and every f ∈ C⁰(R^d), there exists g ∈ H such that sup_{x∈K}|f(x)−g(x)| < ε” / “Theorem 3.9. … \(\mathcal{N}_{d,1}(\sigma;1)\) is a universal approximator of C⁰(R^d) if and only if σ is not a polynomial” |
| Inputs | Target \(f \in C^0(\mathbb{R}^d)\); compact \(K\); tolerance \(\varepsilon>0\); activation \(\sigma\in\mathcal{M}\) non-polynomial |
| Outputs | Existence of shallow network \(g\in\mathcal{N}_{d,1}(\sigma;1)\) with \(\sup_{x\in K}|f-g|<\varepsilon\) (density / compact convergence) |
| Invariants | Density statement — not unique realization; not a fixed finite network for every \(f,\varepsilon\); non-polynomial activation required (Thm 3.9) |
| Algorithm | See below |
| Complexity / termination | Existence proof (width unrestricted); constructive outline via reductions (i)–(iii) in Remark 3.10; halt when density certificate for the class is recorded |
| Worked miniature | Thm 3.9 + proof strategy Remark 3.10 (reduce to univariate / smooth / general \(\sigma\in\mathcal{M}\)); Prop 3.4 closure criterion |
| Lace stamp | **KEEP-read** existence; **FORBID-approx-as-possession** (P3) |
| Hands cite | Piece 13 / Graphic D4; PAGE X approximation strip |
| Map cite | **P3** |
| False friend | FM-P3 — universal approximation ⇒ Lace identity / possession |
| Open gaps | Exact finite-width schedule for a given \(f,\varepsilon\) is asymptotic in the theorem; Lace Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** \(\sigma\in\mathcal{M}\) not a polynomial; target continuous on \(\mathbb{R}^d\).  
2. **State.** Compact \(K\), tolerance \(\varepsilon\).  
3. **Steps.**  
   1. Invoke universal-approximator definition (Def 3.3) / compact convergence (Def 3.1).  
   2. Apply Thm 3.9: shallow unrestricted-width nets with non-polynomial \(\sigma\) are universal approximators of \(C^0(\mathbb{R}^d)\).  
   3. Optional constructive outline (Remark 3.10): reduce to univariate targets → smooth non-polynomial activations → general \(\sigma\in\mathcal{M}\).  
   4. Record existence of some \(g\) within \(\varepsilon\) on \(K\) — do **not** claim possession of Lace or unique construction.  
4. **Choice points.** Which approximating \(g\) among many — book supplies density, not a unique Lace route.  
5. **Halt.** Density / existence certificate for the stated class.  
6. **Output certificate.** Approximation existence (Shadow); not strand retention.

```text
σ ∉ polynomials  ⇒  N_{d,1}(σ;1) universal approx of C⁰
KEEP existence; FORBID approx ⇒ possession
```

---

### M-A4 — ReLU / CPWL calculus (Ch.5)

| Field | Content |
|---|---|
| Kind | algebraic-construction / ReLU calculus |
| Book locus | Ch.5 · **§5.1** Lemmas **5.1–5.2** (identity, composition) · PDF **pp.50–52**; CPWL link §5.2+ |
| Sighting method | `pdftotext -f 50 -l 55 -layout` (this pass) |
| Eye-quote | “Lemma 5.1 (Identity). … there exists a ReLU neural network Φ_id_L such that Φ_id_L(x)=x … depth=L, width=2d, size=2d·(L+1)” / “Lemma 5.2 (Composition). … Φ₂∘Φ₁(x)=Φ₂(Φ₁(x)) … width(Φ₂∘Φ₁)≤max{width(Φ₁),width(Φ₂)}, depth = depth(Φ₁)+depth(Φ₂)” |
| Inputs | ReLU networks Φ₁, Φ₂ (compatible dimensions); optional depth \(L\) for identity gadget |
| Outputs | Exact identity network; composed / parallelized / linearly combined ReLU networks with size/depth/width bounds |
| Invariants | ReLU admits exact identity (unlike typical sigmoidal case); composition/parallelization/linear combination stay inside ReLU NN class with stated resource bounds; CPWL representation is book algebra, not Core ops |
| Algorithm | See below |
| Complexity / termination | Size bounds linear in sum of sizes (composition • doubles up to factor 2); halt when constructed network + resource bounds recorded |
| Worked miniature | Lemma 5.1 weight pattern using \(\sigma_{\mathrm{ReLU}}(x)-\sigma_{\mathrm{ReLU}}(-x)=x\); Lemma 5.2 ∘ vs • (identity interlayer) |
| Lace stamp | **KEEP-read** book algebra; **FORBID-as-Core-ops** |
| Hands cite | Governing rule Piece 2 / Graphic B12 (Lace ops ≠ ReLU calculus); Graphic D |
| Map cite | **P3** (ReLU pieces kin); presentation off P1 |
| False friend | FM-P1 / FM-P8 if calculus promoted to star table or rooms |
| Open gaps | Full CPWL exact-representation theorems continue in §5.2–5.4; Lace does not import them as operators |

**Algorithm**

1. **Preconditions.** ReLU activation; networks with stated architectures.  
2. **State.** Component networks / target gadget.  
3. **Steps.**  
   1. Build identity Φ_id_L via Lemma 5.1 (positive/negative ReLU channels).  
   2. Compose with ∘ (direct) or • (via identity interlayer) per Lemma 5.2; apply parallelization / linear combination as in §5.1.  
   3. Track width/depth/size bounds from the lemmas.  
   4. Refuse installing these as Core operators or star-table rewrite rules.  
4. **Choice points.** ∘ vs • trade width vs depth/size — book resource choice; not Lace rooms.  
5. **Halt.** Constructed ReLU network with resource certificate.  
6. **Output certificate.** ReLU/CPWL calculus (KEEP-read only).

```text
Φ_id, Φ₂∘Φ₁, Φ₂•Φ₁, (Φ₁,…,Φ_m), Φ₁+Φ₂   # book algebra
KEEP-read; FORBID as Core ops / star table
```

---

### M-A5 — Affine pieces / depth constructions (Ch.6–7)

| Field | Content |
|---|---|
| Kind | approximation-construction / depth resource |
| Book locus | Ch.6 **Def 6.1** Pieces(f,Ω) · PDF **~p.72**; Ch.7 **Prop 7.1** / **Lemma 7.2** · PDF **pp.85–86** (printed ~84–85) |
| Sighting method | `pdftotext -f 72 -l 86 -layout` (this pass); Pass 1 PAGE X Ch.7 pins |
| Eye-quote | “Definition 6.1. … f has p ∈ N pieces (or linear regions), if p is the smallest number of connected open sets … and f|Ω_i is an affine function” / “Lemma 7.2. … sup_{[0,1]}|x²−s_n(x)| ≤ 2^{−2n−1}. Moreover s_n ∈ N_{1,1}(σ_ReLU; n, 3), and size(s_n)≤7n and depth(s_n)=n” |
| Inputs | Target (e.g. \(x\mapsto x^2\) on [0,1]); depth/size budget \(n\); ReLU architecture class |
| Outputs | CPWL / ReLU constructions with controlled affine pieces and depth; explicit error bound for \(s_n\) |
| Invariants | Piece counts and depth are approximation resources; successive layers ≠ accumulated Lace passes; depth/width ⇏ Lace rooms |
| Algorithm | See below |
| Complexity / termination | Prop 7.1/Lemma 7.2: size \(O(n)\), depth \(n\), error \(O(4^{-n})\); halt when interpolant/error certificate recorded |
| Worked miniature | Prop 7.1 sawtooth construction \(s_n\) of \(x^2\); Lemma 7.2 depth-\(n\) width-≤3 realization |
| Lace stamp | **KEEP-read**; **FORBID-as-Lace-rooms** (FM-P8) |
| Hands cite | Piece 12 / Graphic C5–C7; Graphic D one line; PAGE B/X |
| Map cite | **P3** (depth/ReLU pieces) |
| False friend | FM-P8 — depth/width hyperparameters ⇒ Lace dimension / rooms |
| Open gaps | Broader Ch.6–7 depth-advantage theorems (e.g. analytic targets) remain book-scope; not Lace dimension |

**Algorithm**

1. **Preconditions.** ReLU setting; target/function class as in cited statements.  
2. **State.** Depth/size parameter \(n\).  
3. **Steps.**  
   1. (Ch.6) Count affine pieces / linear regions via Def 6.1 when analyzing expressivity.  
   2. (Ch.7 miniature) Build piecewise-linear interpolant \(s_n\) of \(x^2\) (Prop 7.1).  
   3. Realize \(s_n\) as ReLU net with depth \(n\), width ≤ 3, size ≤ 7n (Lemma 7.2); record uniform error ≤ \(2^{-2n-1}\).  
   4. Do **not** map depth/width/piece counts to Lace rooms or Piece 12 axes.  
4. **Choice points.** Shallow vs deep resource tradeoffs — approximation budgets only.  
5. **Halt.** Construction + error/resource certificate.  
6. **Output certificate.** Depth/affine-piece construction (Shadow).

```text
Pieces(f,Ω)=p;  s_n ≈ x² on [0,1] with depth n, size≤7n
KEEP-read; FORBID depth/width ⇒ Lace rooms
```

---

### M-A6 — High-d / Barron / compositionality (Ch.8)

| Field | Content |
|---|---|
| Kind | approximation-construction / high-dimensional rates |
| Book locus | Ch.8 · **Thm 8.1** reconstruction lower bound · PDF **~p.101**; **Barron** §8.2 **Thm 8.12** · PDF **~pp.108–109**; compositionality §8.3 · PDF **~pp.113–115** |
| Sighting method | `pdftotext -f 99 -l 115 -layout` (this pass); Pass 1 PAGE X Ch.8 pins |
| Eye-quote | “Theorem 8.1. … reconstruction from N fixed sample values has worst-case uniform error at least …” (Pass 1 paraphrase retained) / “Barron introduced a set of functions that can be approximated by neural networks without a curse of dimensionality” / compositional model via “directed acyclic graph G” of low-dimensional subfunctions (§8.3) |
| Inputs | Smoothness/class data (e.g. \(C^k\), Barron \(\Gamma_C\), compositional DAG); sample count / width \(N\); activation (sigmoidal for Thm 8.12) |
| Outputs | Lower/upper approximation rates; Barron-class width-\(N\) error bounds; compositional rates depending on max subfunction arity \(m\) rather than ambient \(d\) |
| Invariants | Dimension \(d\), smoothness, and class restrictions stay in the bound; DAG describes function composition — not Graphic D; rates ⇏ Core dimension axis |
| Algorithm | See below |
| Complexity / termination | Theorem-level: rates in \(N\), \(d\), \(k\), \(m\); halt when stated bound/certificate recorded for the class |
| Worked miniature | Thm 8.12 Barron shallow width-\(N\) normalized MSE \(O(1/N)\); §8.3 compositional structure with max input count \(m\) |
| Lace stamp | **KEEP-read**; **FORBID as Core dimension axis** |
| Hands cite | Piece 12 / Graphics C5–C7 (participation ≠ ambient \(d\) or Barron width); Piece 13 |
| Map cite | **P3** |
| False friend | FM-P3 / FM-P8 — high-d rates or compositional DAG ⇒ Lace rooms / dimension |
| Open gaps | Manifold rates §8.4 etc. continue in book; not Piece 12 settlement |

**Algorithm**

1. **Preconditions.** Function class and resource \(N\) as in the cited theorem.  
2. **State.** Samples / network width / compositional graph as assumed.  
3. **Steps.**  
   1. Apply reconstruction lower bounds (Thm 8.1 / 8.4 family) where relevant — worst-case over class, with continuous weight-selection assumptions retained.  
   2. For Barron \(\Gamma_C\): invoke Thm 8.12 shallow sigmoidal width-\(N\) rate (normalized MSE).  
   3. For compositional targets: use §8.3 DAG of low-dimensional subfunctions; error exponent may track max arity \(m\) not ambient \(d\).  
   4. Refuse importing \(d\), \(N\), or the compositional DAG as Lace dimension/store.  
4. **Choice points.** Which class (smooth / Barron / compositional / manifold) — book-local.  
5. **Halt.** Rate/existence certificate under stated assumptions.  
6. **Output certificate.** High-d approximation reading (Shadow).

```text
C^k / Barron Γ_C / compositional DAG → rate(N,d,k,m)
KEEP-read; FORBID as Core dimension axis
```

---

### M-A7 — Interpolation / reconstruction (Ch.9)

| Field | Content |
|---|---|
| Kind | interpolation / existence |
| Book locus | Ch.9 · **Def 9.1** · PDF **p.122** (printed ~121); **Thm 9.3** Universal Interpolation · PDF **p.123** |
| Sighting method | `pdftotext -f 121 -l 125 -layout` (this pass); Pass 1 PAGE F/X |
| Eye-quote | “Definition 9.1 (Interpolation). … H interpolates m points in Ω, if for every S=(x_i,y_i)_{i=1}^m … x_i≠x_j … there exists h∈H such that h(x_i)=y_i” / “Theorem 9.3 (Universal Interpolation Theorem). … \(\mathcal{N}_{d,1}(\sigma,1,n)\) interpolates n+1 points in R^d” (σ∈M non-polynomial) |
| Inputs | Distinct sample inputs \((x_i)\); targets \((y_i)\); shallow width \(n\); non-polynomial \(\sigma\in\mathcal{M}\) |
| Outputs | Existence of Φ in the shallow class interpolating the \(n+1\) points; warning that excess capacity can fit arbitrary values off-sample |
| Invariants | Exact sample fit ↛ unique construction (kin Remark 2.2); exact fit ↛ possession of Lace; no POINTER when-rule |
| Algorithm | See below |
| Complexity / termination | Existence for width \(n\) and \(n+1\) points (Thm 9.3); halt when interpolating Φ exists on paper |
| Worked miniature | Thm 9.3 proof setup eq (9.1.1); Def 9.1 bullets on training solvability vs generalization caution |
| Lace stamp | **KEEP-read**; **FORBID-as-POINTER-when** (FM-P9) |
| Hands cite | Graphic D POINTER gaps; manifest Open Questions 2,6,9–11; PAGE F |
| Map cite | **P7** Ch.9 citation / possession boundary; also **P3** |
| False friend | FM-P9 — interpolation/reconstruction ⇒ POINTER when-rule / Φ fill |
| Open gaps | When/arity/adjacency stay `[GAP]`; generalization restrictions “discussed below” in book — not Lace emission |

**Algorithm**

1. **Preconditions.** \(\sigma\in\mathcal{M}\) non-polynomial; \(n+1\) distinct inputs in \(\mathbb{R}^d\).  
2. **State.** Labels \((y_i)_{i=1}^{n+1}\).  
3. **Steps.**  
   1. Invoke Def 9.1 interpolation predicate for class \(H\).  
   2. Apply Thm 9.3: shallow width-\(n\) class interpolates any \(n+1\) points.  
   3. Note capacity warning: with fewer than \(n+1\) training inputs, some minimizer can assign arbitrary value at a new \(\tilde x\).  
   4. Do **not** treat sample agreement as POINTER emission or Lace retention.  
4. **Choice points.** Which interpolating Φ among many — existence only.  
5. **Halt.** Interpolating network existence certificate.  
6. **Output certificate.** Interpolation existence (Shadow); Φ Lace = `[GAP]`.

```text
N_{d,1}(σ,1,n) interpolates n+1 points (σ non-polynomial)
KEEP-read; FORBID as POINTER when-rule
```

---

### M-A8 — Training GD / SGD / backprop (Ch.10)

| Field | Content |
|---|---|
| Kind | optimizer / training-update |
| Book locus | Ch.10 · §10.1 eq **(10.1.2)** PDF **p.133**; §10.2 eq **(10.2.2)** PDF **p.138**; §10.5 Backpropagation PDF **pp.152–153** |
| Sighting method | `pdftotext -f 131 -l 140` and `-f 150 -l 153 -layout` (this pass); Pass 1 PAGE C; Pass 2 D7 |
| Eye-quote | “w_{k+1} := w_k − h_k ∇F(w_k)” (10.1.2) / “w_{k+1} := w_k − h_k G_k” (10.2.2) with “E[G_k|w_k]=∇F(w_k)” / “The backpropagation algorithm … provides an efficient way to [compute] ∇_{b^{(ℓ)}} L … ∇_{W^{(ℓ)}} L” |
| Inputs | Objective \(F:\mathbb{R}^n\to\mathbb{R}\) (e.g. empirical risk); initial \(w_0\); step sizes \(h_k\); for SGD unbiased gradient estimator \(G_k\); for backprop network Φ and loss \(L\) |
| Outputs | Updated parameter vector \(w_{k+1}\); gradients via backprop when used |
| Invariants | Update rewrites **parameters** \(w\); backprop computes derivatives — it is not itself the write rule; training ↛ Lace occurrence history |
| Algorithm | See below |
| Complexity / termination | Per-iterate matvecs/grad cost depend on architecture; book analyzes convex/smooth regimes; halt when iterate/update recorded (schedules for \(h_k\) remain book-[OPEN] for Lace) |
| Worked miniature | Pass 2 D7 GD/SGD miniature; §10.5 backprop as efficient ∇ for NN training |
| Lace stamp | **FORBID-as-Lace-history** (P4); **SILENT-for-Lace-append**; **FORBID-as-Core-write** |
| Hands cite | Pieces 1 and 6; Graphic B1 / D1 (strand keeps prior passes); PAGE C |
| Map cite | **P4** |
| False friend | FM-P4 — train / GD / backprop ⇒ rewrite Lace history |
| Open gaps | Exact \(h_k\) schedules / Adam-style variants §10.4 — book continues; do not finish from Lace; emission `[GAP]` |

**Algorithm**

1. **Preconditions.** Objective \(F\) on parameters; initial \(w_0\).  
2. **State.** Iterate \(w_k\).  
3. **Steps.**  
   1. Form \(\nabla F(w_k)\) — or SGD estimator \(G_k\) with \(\mathbb{E}[G_k|w_k]=\nabla F(w_k)\) (10.2.1).  
   2. (Optional) Use backpropagation (§10.5) to compute the required derivatives for NN \(F(w)=\sum_j L(\Phi(x^j,w),y^j)\).  
   3. Choose \(h_k>0\).  
   4. Update \(w_{k+1}:=w_k-h_k\nabla F(w_k)\) (10.1.2) or \(w_{k+1}:=w_k-h_k G_k\) (10.2.2).  
   5. Refuse treating \(w\) evolution as Lace history or Graphic D append.  
4. **Choice points.** Full batch vs SGD; adaptive methods §10.4 — holder training choices.  
5. **Halt.** New parameter vector (paper algorithm).  
6. **Output certificate.** Training update (FORBID-as-Lace-history).

```text
w_{k+1} := w_k - h_k ∇F(w_k)     # or - h_k G_k
backprop → gradients only
FORBID-as-Lace-history; SILENT for Lace append
```

---

### M-A9 — NTK linearization / infinite width (§11.3–11.6)

| Field | Content |
|---|---|
| Kind | linearization / kernel analysis |
| Book locus | §11.3 eqs **(11.3.1), (11.3.4–5)** · PDF **pp.169–170**; §11.6 Assumption **11.17** / init / **Thm 11.20** · PDF **pp.179–180** |
| Sighting method | `pdftotext -f 168 -l 180 -layout` (this pass); Pass 1 PAGE E |
| Eye-quote | “Φ_lin(x,p) := Φ(x,w₀) + ⟨∇_w Φ(x,w₀), p⟩” (11.3.1) / “K̂_n(x,z)=⟨∇_w Φ(x,w₀), ∇_w Φ(z,w₀)⟩ … empirical tangent kernel” / “Scaled properly, it converges in the infinite width limit n→∞ towards … the neural tangent kernel (NTK)” · Thm 11.20 limit of \(n^{-1}\hat K_n\) |
| Inputs | Model Φ(x,w); initialization \(w_0\); linearized parameters \(p\); width \(n\); activation/init assumptions (Assump. 11.17) |
| Outputs | Linearized model Φ_lin; empirical tangent kernel \(\hat K_n\); infinite-width NTK limit \(K^{\mathrm{NTK}}\) (Thm 11.20) |
| Invariants | Analysis around fixed \(w_0\); kernel/feature map ≠ strand; width \(n\to\infty\) ≠ Piece 12 participation |
| Algorithm | See below |
| Complexity / termination | Kernel evaluation \(O(n)\) features at finite width; limit statement as \(n\to\infty\); halt when Φ_lin / \(\hat K_n\) / limit certificate recorded |
| Worked miniature | Eqs (11.3.1)–(11.3.5); Thm 11.20 almost-sure limit + high-probability finite-\(n\) bound |
| Lace stamp | **FORBID-as-store** (P7); width ≠ Piece 12; **FORBID-as-Core-write** |
| Hands cite | Pieces 1, 6, 12; Graphic D1 / D6; PAGE E |
| Map cite | **P7** |
| False friend | FM-P7 — NTK / infinite width ⇒ second store / participation axis |
| Open gaps | Proximity theorems §11.4–11.5 continue analysis; still not a Lace store; emission `[GAP]` |

**Algorithm**

1. **Preconditions.** Differentiable parameterization; fixed initialization \(w_0\).  
2. **State.** Linearized parameters \(p\) (distinct from \(w\)).  
3. **Steps.**  
   1. Form Φ_lin(x,p) := Φ(x,w₀) + ⟨∇_w Φ(x,w₀), p⟩ (11.3.1).  
   2. Define feature map φ(x)=∇_w Φ(x,w₀) and empirical tangent kernel \(\hat K_n(x,z)=\langle\phi(x),\phi(z)\rangle\) (11.3.4–5).  
   3. Under Assump. 11.17 / init 11.6.3, pass to infinite-width limit: \(n^{-1}\hat K_n \to K^{\mathrm{NTK}}\) (Thm 11.20).  
   4. Refuse installing kernel / Φ_lin / infinite width as Graphic D store or Piece 12 axis.  
4. **Choice points.** Ridge vs ridgeless / full vs linearized dynamics (§11.5) — analysis variants.  
5. **Halt.** Linearization/kernel(/limit) certificate.  
6. **Output certificate.** NTK analysis (FORBID-as-store).

```text
Φ_lin(x,p) = Φ(x,w₀) + ⟨∇_w Φ(x,w₀), p⟩
K̂_n → K^NTK (n→∞)
FORBID-as-store; width ≠ Piece 12
```

---

## Waves B–D — deferred seeds (not blocking)

| Wave | Seed (one line) |
|---|---|
| **B** | Loss landscapes / nonconvex training geometry beyond Ch.10 GD/SGD spine — defer |
| **C** | Generalization bounds / VC (Ch.14 named from Ch.9) / population risk — defer |
| **D** | Adversarial robustness; modern architectures (transformers etc.); GNN omission as **non-mechanism** (P6 / PAGE D) — defer; do not invent GNN import |

Pass 3 success = Wave A cards complete + P3-M mesh on book clipboard. ASCII deferred.

---

## Steward test

Shoe in hands, or no.  
These mechanisms are the book’s mathematics — Shadow reading.  
Forward maps and approximation constructions are not Lace possession.  
Training updates parameters — not occurrence history (M-A8 + P3-M).  
NTK is analysis — not a second store (M-A9).  
Φ stays `[GAP]`.
