# Kauffman 4ed — mechanism cards (constructive algorithms)

**Status:** Pass 6 EXECUTED (Wave A + Wave B complete; Waves C–D deferred).  
**Source:** L.H. Kauffman, *Knots and Physics*, 4th ed.  
**PDF:** `refs/local/kauffman-knots-and-physics-4ed.pdf` (865 pp., image-only `tiff2pdf`; **never git-add**)  
**Offset:** PDF page ≈ printed page + 19 (verified passes 1–3)  
**Sighting this pass:** `pdftoppm` + `tesseract` 5.5.0 (eng, `--psm 6`); prior visual pins cited where noted  
**Companion:** [`kauffman-4ed-clipboard.md`](kauffman-4ed-clipboard.md) · map [`reason-model-map.md`](../reason-model-map.md) §1 · [`clipboard-five-stakes.md`](clipboard-five-stakes.md) PAGE 1/5  

Law: diagram ≠ rope · hitch kin · grab ≠ emission · Hands win · POINTER emission = `[GAP]` sealed.  
This file is **Shadow / Layer III documentation of the book**, not Lace `src/`, not `pointer-emission.md`.

---


**Pass 5 ASCII panels:** see [`kauffman-4ed-ascii-machinery.md`](kauffman-4ed-ascii-machinery.md) (P-A1–A9).
**Pass 6:** Wave B cards M-B1…M-B5 filled here; matching panels P-B1…P-B5 in ascii-machinery.
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

## Wave A — Core diagram & physics mechanisms

### M-A1 — Clove / hitch participation

| Field | Content |
|---|---|
| Kind | physics |
| Book locus | Part I §1° Physical Knots · printed p.4 · PDF p.23; Part II §1° Theory of Hitches · printed pp.323–324 · PDF pp.342–343 |
| Sighting method | OCR this pass (tesseract 5.5.0) on PDF 23, 342–343; prior visual pin cite pass 1–2 |
| Eye-quote | "with tension at A causing the line at C to grab B - and keep the assemblage from slipping." / "In a wrap-over, under tension, the top part squeezes the bottom part against the rod." |
| Inputs | Rope segment(s); post/rod; wrap pattern (coil or wrap-over); applied tensions at free ends |
| Outputs | Qualitative hold / slip judgment; (Part II) inequality relating end tensions |
| Invariants | Material rope continuity; contact with post; friction assumed present |
| Algorithm | See below |
| Complexity / termination | Finite wraps; terminate when wrap count and tension pair are recorded |
| Worked miniature | Clove hitch: load at A → C grabs B → assemblage holds (Fig. 1, PDF 23) |
| Lace stamp | **KEEP-read** (hitch kin); not an emission rule |
| Hands cite | Hitch / participation · RM kin |
| Map cite | K1 (hitch) |
| False friend | Must not be read as "later WORD emits POINTER because earlier wrap" |
| Open gaps | Exact friction model deferred in Part I ("project that we defer to Part II"); Lace Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** One rope, one post; friction between rope and post.  
2. **State.** Ordered sequence of wraps (simple coils and/or wrap-overs).  
3. **Steps.**  
   1. Wind the rope on the post according to the hitch pattern (e.g. clove: two wraps that cross).  
   2. Apply tension at the load end (book's A).  
   3. Observe whether an intermediate segment (C) presses / "grabs" an earlier wrap (B).  
   4. If the grab holds under the applied load, record **hold**; else **slip**.  
4. **Choice points.** Which hitch pattern — experimenter chooses; book invites experimentation.  
5. **Halt.** Hold/slip recorded for that pattern and load.  
6. **Output certificate.** Qualitative participation statement: later tension recruits earlier wrap via friction/geometry.

```text
wrap(pattern) → apply T_load → check(grab of earlier wrap) → {hold|slip}
```

---

### M-A2 — Capstan / winding inequality \(T_2 \le \kappa T_1\)

| Field | Content |
|---|---|
| Kind | physics |
| Book locus | Part II §1° Theory of Hitches · printed pp.323–324 · PDF pp.342–343 |
| Sighting method | OCR this pass on PDF 342–343; inequality inclusive ≤ confirmed pass 1 PDF-sighted |
| Eye-quote | "In general, there will be no slippage in the T2-direction so long as T2 ≤ κ T1 for an appropriate constant κ." / "κ = e^θ" (friction coeff. taken as 1; θ total wrap angle in radians) |
| Inputs | End tensions \(T_1, T_2\); wrap angle \(\theta\) (or integer revolutions \(n\)); friction model |
| Outputs | Slip / no-slip decision; bound \(\kappa(\theta)\) |
| Invariants | Rope–post contact; integral windings assumption in the simple model |
| Algorithm | See below |
| Complexity / termination | O(1) after \(\theta\) known |
| Worked miniature | One revolution: no slip in \(T_2\) direction while \(T_2 \le e\, T_1\); \(n\) revolutions: \(T_2 \le e^n T_1\) (PDF 343) |
| Lace stamp | **FORBID-as-fields**; **KEEP-read** as physics image |
| Hands cite | Capstan / friction image |
| Map cite | K7 (tension inequality; note map may still show strict `<` — clipboard uses book `≤`; OPEN sync on map only) |
| False friend | Continuous \(\kappa, T\) as Core scalars; emission threshold "when \(T_2 \le \kappa T_1\)" |
| Open gaps | Book: "depending upon the magnitudes… the rope may slip"; exact material \(\mu\) left to experiment. Lace Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Coil form around a rod; integral number of windings (simple model); friction present.  
2. **State.** \(T_1, T_2, \theta\) (total angle of rope-turn).  
3. **Steps.**  
   1. Measure or set wrap angle \(\theta\) (radians). For \(n\) full revolutions, \(\theta = 2\pi n\).  
   2. Set friction coefficient \(\mu\) (book's simple model: \(\mu = 1\)).  
   3. Compute \(\kappa = e^{\mu\theta}\) (book: \(\kappa = e^\theta\) when \(\mu=1\)).  
   4. Compare: if \(T_2 \le \kappa T_1\), certify **no slippage** in the \(T_2\)-direction under the model; else **may slip**.  
4. **Choice points.** Value of \(\mu\) — book simplifies to 1; real experiment varies.  
5. **Halt.** Boolean no-slip vs slip under the inequality.  
6. **Output certificate.** Pair \((\kappa, \text{no-slip?})\) with cited \(\theta\).

```text
κ ← exp(μ * θ)
if T2 ≤ κ * T1 then NO_SLIP else MAY_SLIP
```

---

### M-A3 — Closed-loop definition (knot as single closed rope)

| Field | Content |
|---|---|
| Kind | geometry / combinatorics |
| Book locus | Part I §2° Diagrams and Moves · printed pp.8–9 · PDF pp.27–28 |
| Sighting method | OCR this pass on PDF 27–28 |
| Eye-quote | "deciding that a knot shall correspond to a single closed loop of rope (A link is composed of a number of such loops.)." |
| Inputs | Practical open-ended rope work (hitch, bowline, …) |
| Outputs | Closed diagram / loop-form of a knot or link; canonical unknot = standard ring |
| Invariants | Pattern of crossings once ends are spliced; topological type under continuous deformation without tearing |
| Algorithm | See below |
| Complexity / termination | One splice of ends; halt when loop is closed |
| Worked miniature | Square knot → closed loop (Fig. 5); trefoil vs mirror \(T^*\) (Fig. 6) |
| Lace stamp | **FORBID-as-Lace-identity** (closed loop ≠ Lace's one strand / append-only array) |
| Hands cite | Diagram ≠ rope |
| Map cite | K2 / PAGE B family |
| False friend | "Lace = closed knot loop"; splicing ends as Core write |
| Open gaps | Book notes practical motivation may be lost in loop form; mathematical embedding definition deferred ("not yet abstracted") |

**Algorithm**

1. **Preconditions.** A knot pattern tied in an open rope (or drawn as such).  
2. **State.** Rope with two free ends.  
3. **Steps.**  
   1. Identify the intended knot pattern.  
   2. Bring the two free ends together and **splice** (identify) them so the rope becomes one closed loop.  
   3. For a **link**, repeat per component (each component one closed loop).  
   4. Treat the standard ring as the **canonical unknot**; a knot is unknotted if it deforms continuously to that ring without tearing.  
4. **Choice points.** None for the definition; chirality experiments (trefoil vs mirror) are separate.  
5. **Halt.** Closed diagram obtained.  
6. **Output certificate.** Closed loop diagram (or multi-component link).

---

### M-A4 — Move Zero (planar isotopy / projection hygiene)

| Field | Content |
|---|---|
| Kind | diagram-rewrite |
| Book locus | Part I §2° · printed p.16 · PDF p.35 |
| Sighting method | OCR this pass on PDF 35 |
| Eye-quote | "I shall refer to the basic topological deformations of a plane curve as Move Zero" |
| Inputs | Plane curve / link diagram drawing |
| Outputs | Redrawn diagram with same combinatorial crossing data (no I/II/III change) |
| Invariants | Crossing incidence and over/under data; planar embedding type up to isotopy of the plane |
| Algorithm | See below |
| Complexity / termination | Finite sequence of planar isotopies; halt when diagram is "tidy" for inspection |
| Worked miniature | Stretch/bend arcs between crossings without changing over/under (Fig. 8 context) |
| Lace stamp | **KEEP-read as projection only**; not a Lace append |
| Hands cite | Projection hygiene |
| Map cite | related to K3 / PAGE C |
| False friend | Treating Move Zero as emitting history; conflating with Reidemeister I–III |
| Open gaps | Book presents Move Zero diagrammatically; no numeric tolerance — `[OPEN]` for digital discretization |

**Algorithm**

1. **Preconditions.** A diagram drawn in the plane.  
2. **State.** Current embedding of arcs and crossings.  
3. **Steps.**  
   1. Continuously isotope the plane curve (or piecewise-linear arcs) **without** introducing/removing crossings and **without** changing over/under at existing crossings.  
   2. Allowed: bend, stretch, rotate regions; straighten messy arcs.  
   3. Forbidden inside Move Zero: Reidemeister I (curl), II (cancel pair), III (slide triangle).  
4. **Choice points.** Which arcs to tidy — aesthetic / readability; book does not schedule.  
5. **Halt.** Diagram ready for further moves or invariant calculation.  
6. **Output certificate.** Planar-isotopic diagram with identical crossing word.

---

### M-A5 — Reidemeister I–III (+ ambient vs regular isotopy)

| Field | Content |
|---|---|
| Kind | diagram-rewrite |
| Book locus | Part I §2° · printed pp.16–18 · PDF pp.35–37 |
| Sighting method | OCR this pass on PDF 35–37 |
| Eye-quote | "The three moves on diagrams (I, II, III) change the graphical structure of the diagram while leaving the topological type of the embedding … the same." / "equivalence relation generated by II and III is called regular isotopy." / "generated by all four Reidemeister moves is called ambient isotopy." (four = 0+I+II+III) |
| Inputs | Link diagram; choice of local disk where a move applies |
| Outputs | Transformed diagram; equivalence class under regular or ambient isotopy |
| Invariants | Ambient isotopy: topological type of embedding in 3-space (Reidemeister's theorem). Regular isotopy: type up to II+III (+ Move Zero); writhe preserved (exercise, PDF 38) |
| Algorithm | See below |
| Complexity / termination | Finite move sequence; search for "is this the unknot?" is undecidable in general — book uses hand sequences; nondeterministic choice of next move = `[OPEN]` scheduler |
| Worked miniature | Book sequence from a diagram \(K\) to the unknot using only II, III, and Move Zero (PDF 36) |
| Lace stamp | **FORBID-as-Core-write** |
| Hands cite | Diagram moves ≠ Lace writes |
| Map cite | K3–K4 · clipboard PAGE C · FM-K* Reidemeister rows |
| False friend | Using R-moves as POINTER emission or array mutation law |
| Open gaps | Which move to apply next when several apply — book silent → `[OPEN]` (not a Lace scheduler) |

**Algorithm**

1. **Preconditions.** Diagram in the plane with classical crossings (over/under).  
2. **State.** Current diagram \(D\).  
3. **Steps (local rewrite).**  
   1. **Move Zero:** planar isotopy (M-A4).  
   2. **Reidemeister I:** add or remove a single curl (twist) in a local disk.  
   3. **Reidemeister II:** add or cancel a pair of crossings between two strands (opposing over/under).  
   4. **Reidemeister III:** slide a strand across a crossing (triangle move); graphical structure changes, embedding type does not.  
   5. Perform each move **locally** without altering the undepicted rest of the diagram.  
4. **Equivalence modes.**  
   - **Regular isotopy:** generate by Move Zero + II + III (no I).  
   - **Ambient isotopy:** generate by Move Zero + I + II + III.  
5. **Choice points.** Next applicable move — nondeterministic; mark `[OPEN]` if automating.  
6. **Halt.** Target diagram reached, or experimenter stops.  
7. **Output certificate.** Finite move word \(m_1\ldots m_k\) transforming \(D\) to \(D'\), or failure to find one in a bounded search.

```text
while goal_not_met:
  pick applicable move in {0, I, II, III}   # choice = [OPEN]
  apply locally
certificate = move_word
```

---

### M-A6 — Bracket state-sum (splice A/B, state product, loop value)

| Field | Content |
|---|---|
| Kind | combinatorics / algebra |
| Book locus | Part I §3° States and the Bracket Polynomial · printed pp.25–31 · PDF pp.44–50 |
| Sighting method | OCR this pass on PDF 44–50 (Fig. 9 state tree on 45 is diagram-heavy; rules on 46–48 clear) |
| Eye-quote | "Two associated diagrams can be obtained by splicing the crossing" / "A-split joins the regions labelled A at the crossing" / Def 3.1: \(\langle K\rangle = \sum_\sigma \langle K|\sigma\rangle\, d^{\|\sigma\|}\) with \(\|\sigma\| =\) (loops in \(\sigma\)) − 1 |
| Inputs | Unoriented link diagram \(K\); commuting variables \(A,B,d\) (later specialize) |
| Outputs | Bracket polynomial \(\langle K\rangle(A,B,d)\); optionally specialized \(\langle K\rangle(A)\) with \(B=A^{-1}\), \(d=-A^2-A^{-2}\) (Cor. 3.4) |
| Invariants | With Cor. 3.4 specialization: invariant under Reidemeister II (and further work toward regular/ambient — see §3–4); raw state-sum before specialization is **not** a topological invariant (book, PDF 48) |
| Algorithm | See below |
| Complexity / termination | \(2^{c}\) states for \(c\) crossings (exhaustive); recursive Prop. 3.2 also terminates on diagrams with fewer crossings; order of crossing expansion = `[OPEN]` (sum is commutative) |
| Worked miniature | Trefoil: 8 states (Fig. 9); \(\langle K\rangle = A^3 d + 3A^2 B d^0? \) — book simplifies to \(\langle K\rangle = A^3 d + 3A^2Bd + 3AB^2d + B^3d\) form (OCR PDF 48: \(A^3d + 3A^2Bd + 3AB^2d + B^3d\) after cleanup) |
| Lace stamp | **FORBID-as-history-store**; **SILENT** for Lace append (state expansion ≠ emission) |
| Hands cite | State sum off-shoe |
| Map cite | K5 · clipboard PAGE D |
| False friend | Storing all states as Lace history; treating A/B choice as POINTER when |
| Open gaps | Scheduler for which crossing to expand first — irrelevant to sum, but `[OPEN]` if implemented as sequential mutation. Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Unoriented diagram \(K\) with \(c\) classical crossings.  
2. **State.** Either (i) set of complete splicings, or (ii) recursive diagrams under Prop. 3.2.  
3. **Label A/B at a crossing (book, PDF 46).**  
   - **Observer rule:** walk toward the crossing along an **undercrossing** segment; regions on the **left** are A, on the **right** are B.  
   - **Rotation rule:** A-regions are swept when the **overcrossing** line is turned **counter-clockwise**.  
4. **Steps (state-sum form, Def. 3.1).**  
   1. For each crossing, choose a **type A** or **type B** split (splice).  
   2. Repeat until **no crossings remain** → a **state** \(\sigma\): a collection of Jordan curves in the plane, each site labelled A or B.  
   3. Let \(\langle K|\sigma\rangle\) = product of the site labels (A or B factors).  
   4. Let \(\|\sigma\| =\) (number of loops in \(\sigma\)) − 1.  
   5. Sum \(\langle K\rangle = \sum_\sigma \langle K|\sigma\rangle\, d^{\|\sigma\|}\).  
5. **Steps (recursive form, Prop. 3.2).**  
   1. Pick any one crossing (choice `[OPEN]`).  
   2. Replace: \(\langle\,\rangle\!\rangle = A\langle\text{A-split}\rangle + B\langle\text{B-split}\rangle\) (local diagrams).  
   3. Recurse; base: empty of crossings → evaluate \(d^{\ell-1}\) for \(\ell\) loops; \(\langle\bigcirc K\rangle = d\langle K\rangle\) for disjoint circle.  
6. **Specialization (Cor. 3.4, PDF 50).** Set \(B = A^{-1}\), \(d = -A^2 - A^{-2}\) when seeking the topological bracket used later for Jones.  
7. **Halt.** Polynomial expression in \(A,B,d\) (or in \(A\) after specialization).  
8. **Output certificate.** \(\langle K\rangle\) plus (optional) the list of states / expansion tree.

```text
# Exhaustive
states = all maps crossings → {A,B}          # 2^c
sum = 0
for σ in states:
  sum += product(labels(σ)) * d**(loops(σ)-1)
return sum

# Recursive (Prop. 3.2)
bracket(K):
  if no crossings: return d**(loops(K)-1)
  pick crossing x                                 # [OPEN]
  return A*bracket(A_split(K,x)) + B*bracket(B_split(K,x))
```

**Reconstruction note (book):** labelled A/B split sites can reconstruct the ancestral crossing; "by keeping track of these A's and B's we can reconstruct the ancestor link from any of its descendants."

---

### M-A7 — Jones via normalized bracket / skein

| Field | Content |
|---|---|
| Kind | algebra |
| Book locus | Part I §5° The Jones Polynomial… · printed pp.49–50 · PDF pp.68–69; writhe exercise printed p.19 · PDF p.38; normalized form in Thm 5.2 |
| Sighting method | OCR this pass on PDF 68–69, 38 |
| Eye-quote | Def 5.1: ambient isotopy invariance; \(V_\bigcirc=1\); skein \(t^{-1}V_{L_+} - t V_{L_-} = (\sqrt{t}-1/\sqrt{t}) V_{L_0}\). Thm 5.2: \(\mathcal{L}_K(A)=(-A^3)^{-w(K)}\langle K\rangle\), and \(\mathcal{L}_K(t^{-1/4})=V_K(t)\). |
| Inputs | Oriented link diagram \(K\); bracket \(\langle K\rangle\) under Cor. 3.4 specialization; writhe \(w(K)\) |
| Outputs | Jones polynomial \(V_K(t)\) (Laurent in \(\sqrt{t}\)) |
| Invariants | Ambient isotopy (Def 5.1 (i)); well-definedness via Thm 5.2 from normalized bracket |
| Algorithm | See below |
| Complexity / termination | Skein recursion: branches on crossings until unknots; exponential in crossings unless memoized. Bracket route: \(2^c\) then O(1) normalize. Crossing order `[OPEN]`. |
| Worked miniature | Two unknots: book derives \(\delta = -(\sqrt{t}+1/\sqrt{t})\) for an extra disjoint unknot component (PDF 68 OCR) |
| Lace stamp | **FORBID-as-history-store** |
| Hands cite | Polynomial off-shoe |
| Map cite | K6 · clipboard PAGE E |
| False friend | Jones recursion as Lace emission scheduler; storing \(V_K\) as the strand |
| Open gaps | Existence originally non-obvious — book uses bracket proof; Φ = `[GAP]` |

**Algorithm (preferred: normalized bracket route)**

1. **Preconditions.** Oriented diagram \(K\).  
2. **Writhe.** For each crossing \(p\), assign sign \(\varepsilon(p)\in\{+1,-1\}\) by the oriented crossing convention (PDF 38). Set \(w(K)=\sum_p\varepsilon(p)\).  
3. **Bracket.** Compute \(\langle K\rangle\) with \(B=A^{-1}\), \(d=-A^2-A^{-2}\) (M-A6).  
4. **Normalize.** \(\mathcal{L}_K(A) = (-A^3)^{-w(K)}\,\langle K\rangle\).  
5. **Substitute.** Set \(A = t^{-1/4}\); output \(V_K(t) = \mathcal{L}_K(t^{-1/4})\).  
6. **Halt.** Laurent polynomial in \(\sqrt{t}\).  
7. **Output certificate.** \(V_K(t)\) with recorded \(w(K)\) and bracket expansion or skein tree.

**Algorithm (skein route, Def 5.1)**

1. If diagram is ambient-isotopic to unknot, return \(1\).  
2. Pick an oriented crossing that is \(L_+\) or \(L_-\) (choice `[OPEN]`).  
3. Form the three local diagrams \(L_+\), \(L_-\), \(L_0\) (smooth oriented).  
4. Solve the skein for the unknown polynomial in terms of the other two; recurse.  
5. Halt when all branches reduce to unknots / known links.

```text
V(K):
  w ← writhe(K)
  br ← bracket_specialized(K)          # M-A6 Cor.3.4
  L ← (-A**3)**(-w) * br
  return L.subs(A, t**(-1/4))
```

---

### M-A8 — Slide equivalence axioms → RII/RIII

| Field | Content |
|---|---|
| Kind | diagram-rewrite |
| Book locus | Part II §4° Slide Equivalence · printed p.336 · PDF p.355 |
| Sighting method | OCR this pass on PDF 355 |
| Eye-quote | "Let slide equivalence (denoted ~) be generated by:" (local slide axioms I'–V' in figures) / "the usual Reidemeister moves of type II and III are consequences of the axioms of slide equivalence" |
| Inputs | Unoriented (or oriented) diagrams; local slide configurations |
| Outputs | Slide-equivalence class; derived RII/RIII sequences |
| Invariants | Whatever the slide axioms preserve (book: RII/RIII follow; type I not claimed as consequence here) |
| Algorithm | See below |
| Complexity / termination | Finite axiom applications; next axiom choice `[OPEN]` |
| Worked miniature | Book notes oriented versions: moves V and I hold for any orientations; III' and IV' need paired orientations (PDF 355) |
| Lace stamp | **FORBID-as-Core-write** |
| Hands cite | Slide ≠ Lace write |
| Map cite | K8 · clipboard PAGE related / FM slide |
| False friend | Slide axioms as Core mutation primitives |
| Open gaps | Full axiom figure labels are diagrammatic — OCR partial; figures are source of record for exact local pictures `[OPEN]` for ascii fidelity of every generator |

**Algorithm**

1. **Preconditions.** Diagram(s) drawn with classical crossings.  
2. **State.** Current diagram under relation \(\sim\).  
3. **Steps.**  
   1. Apply any generating local move of slide equivalence (book's figures: parallel-strand slides / vertex slides labelled in §4°).  
   2. To obtain **Reidemeister II**: exhibit a finite sequence of slide generators whose composite matches RII (book asserts consequence).  
   3. To obtain **Reidemeister III**: likewise via slide generators.  
   4. Oriented case: apply orientation constraints stated for III'/IV'.  
4. **Choice points.** Which generator next — `[OPEN]`.  
5. **Halt.** Target diagram or derived R-move certificate.  
6. **Output certificate.** Slide-move word, optionally compiled to RII/RIII word.

---

### M-A9 — Virtual knot / 1-handle stabilization (preface + appendix)

| Field | Content |
|---|---|
| Kind | geometry / diagram-rewrite |
| Book locus | Preface to 4th ed. · printed p.xv · PDF p.16; Appendix article · printed pp.763–766 · PDF pp.782–785 |
| Sighting method | OCR this pass on PDF 16, 782–785 |
| Eye-quote | Preface: "generalization of knot theory to a theory of knots in thickened surfaces taken up to changing these surfaces by adding or subtracting 1-handles in the complement of the knot or link." / Appendix: "A virtual crossing is represented by two crossing segments with a small circle placed around the crossing point." / "Adding the global detour move to the Reidemeister moves completes the description of moves on virtual diagrams." |
| Inputs | Diagram possibly with virtual crossings; or embedding in a thickened surface |
| Outputs | Virtual-isotopy class; equivalently stabilized surface embedding class |
| Invariants | Virtual isotopy (classical R-moves on classical crossings + virtual moves / detour) |
| Algorithm | See below |
| Complexity / termination | Finite move sequences; detour can shorten long virtual arcs |
| Worked miniature | Detour move: excise a run of consecutive virtual crossings, reconnect; new intersections created are virtual (Fig. 2, PDF 785) |
| Lace stamp | **FORBID-extra-rooms** |
| Hands cite | One strand / no extra rooms |
| Map cite | K9 · clipboard PAGE F / FM virtual |
| False friend | Virtual crossings as extra Lace stores; 1-handles as new Core dimensions |
| Open gaps | Full virtual move roster is figure-based (Fig. 1 PDF 785); Khovanov/arrow extensions deferred to Wave D |

**Algorithm**

1. **Preconditions.** Diagram in the plane that may include **virtual crossings** (circled crossings: neither over nor under).  
2. **State.** Current virtual diagram.  
3. **Steps.**  
   1. On **classical** crossings only: apply usual Reidemeister I–III (and Move Zero).  
   2. On **virtual** structure: apply local virtual Reidemeister-style moves (vRI, vRII, mixed moves per Fig. 1).  
   3. **Detour move (global):** take a consecutive sequence of virtual crossings; excise that segment; reconnect the free ends by a new arc; every transversal intersection of the new arc with the rest of the diagram is marked **virtual**.  
   4. **Surface reading (optional):** interpret the diagram as an embedding in a thickened orientable surface; **stabilize** by adding/removing empty 1-handles in the complement.  
4. **Choice points.** Which detour / handle — `[OPEN]`.  
5. **Halt.** Diagrams related by a finite move sequence ↔ virtually isotopic.  
6. **Output certificate.** Move word (classical + virtual + detour) or surface stabilization sequence.

```text
virtual_isotopy:
  classical moves on classical crossings
  virtual local moves (Fig.1)
  detour on virtual arcs
↔ surface embedding up to ± empty 1-handles
```

---

## Wave B — Algebra / braid / YBE / Homfly / Alexander / Gauss

### M-B1 — Braid word ↔ closure

| Field | Content |
|---|---|
| Kind | combinatorics / group |
| Book locus | Part I §7° Braids and the Jones Polynomial · printed pp.85–90 · PDF pp.104–109 |
| Sighting method | OCR this pass (tesseract 5.5.0) on PDF 104–109; TOC pin §7 printed 85 |
| Eye-quote | "Alexander's Theorem: Each link in three-dimensional space is ambient isotopic to a link in the form of a closed braid." / "The closure of a braid b is obtained by connecting the initial points to the end-points by a collection of parallel strands." / Artin relations: sigma_i sigma_i^{-1}=1; sigma_i sigma_{i+1} sigma_i = sigma_{i+1} sigma_i sigma_{i+1}; sigma_i sigma_j = sigma_j sigma_i for |i-j|>1. |
| Inputs | Braid word in generators sigma_1..sigma_{n-1} (and inverses); or an open n-strand braid diagram |
| Outputs | Closed braid diagram; braid group element in B_n; (via Alexander) ambient-isotopy class of a link |
| Invariants | Braid equivalence keeping endpoints fixed (Artin B_n); closed-braid ambient isotopy class of the link (Markov moves enter when comparing closures — see book §7) |
| Algorithm | See below |
| Complexity / termination | Word length finite; closure is O(n) arcs; search for a braid representative of an arbitrary link is constructive in principle (Alexander) but choice of axis [OPEN] |
| Worked miniature | 3-braid b = sigma_1 sigma_2 sigma_1 in B_3: three strands, generators as adjacent swaps; close by parallel top↔bottom arcs → trefoil-type closed braid (book Fig. context PDF 106–108) |
| Lace stamp | **FORBID-as-Lace-chronology** (braid time-arrow / word order ≠ Lace append history) |
| Hands cite | Diagram chronology ≠ Lace chronology |
| Map cite | OPEN (no dedicated braid K-id; neighbor Jones family K6 / FM-K5) |
| False friend | Reading braid word left-to-right as Lace strand chronology; treating sigma_i as Core write ops |
| Open gaps | Choice of braid axis for Alexander theorem — book constructive sketch, axis choice [OPEN]. Phi = [GAP] |

**Algorithm**

1. **Preconditions.** Either (A) an n-strand braid diagram / word, or (B) a link to be put in closed-braid form.  
2. **State.** For (A): current braid word w in {sigma_i^{±1}}. For (B): current link diagram + candidate axis.  
3. **Steps — braid word → diagram.**  
   1. Draw n fixed top points and n fixed bottom points in matching order.  
   2. Parse w left-to-right: each sigma_i (resp. sigma_i^{-1}) crosses strands i and i+1 positively (resp. negatively); distant generators commute.  
   3. Reduce using Artin relations when desired (type II / type III as braid moves).  
4. **Steps — closure.** Connect each top endpoint to the corresponding bottom endpoint by a parallel exterior arc that does not add crossings among the closing arcs → closed braid.  
5. **Steps — Alexander (link → closed braid).** Choose a proposed axis; isotope so the link meets every half-plane from the axis in the same number of points (strand count); obtain a closed braid. Axis choice = [OPEN].  
6. **Choice points.** Axis; freely reducing vs leaving word unreduced; Markov moves when comparing two closures — book §7; not a Lace scheduler.  
7. **Halt.** Closed braid diagram (or braid word) recorded.  
8. **Output certificate.** Word w in B_n plus closure diagram, or Alexander sequence to a closed braid.

```text
word w in B_n  →  draw strands + crossings  →  close top↔bottom parallel
link L         →  pick axis [OPEN]  →  isotope to closed braid
```

---

### M-B2 — Yang–Baxter / R-matrix

| Field | Content |
|---|---|
| Kind | algebra / diagram-rewrite |
| Book locus | Part I §8° Abstract Tensors and the Yang-Baxter Equation · printed pp.104–114 · PDF pp.123–133; continues §§9–10 |
| Sighting method | OCR this pass on PDF 123–133; TOC §8 printed 104 |
| Eye-quote | "The Yang-Baxter Equation Corresponding to a Move of type III(A)" / Thm 8.1: if R and R-bar satisfy (1) channel unitarity (2) cross-channel unitarity and (3) Yang-Baxter Equation then T(K) is a regular isotopy invariant for oriented diagrams K. / Bracket-motivated R with deltas and n = -A^2 - A^{-2}. |
| Inputs | Oriented link diagram; index set I; R-matrix R^{ab}_{cd} (and inverse R-bar) on I⊗I |
| Outputs | Tensor / state evaluation T(K); regular-isotopy invariant when Thm 8.1 hypotheses hold |
| Invariants | Regular isotopy (Move Zero + RII + RIII) when channel + cross-channel unitarity + YBE hold |
| Algorithm | See below |
| Complexity / termination | Contracting an n-crossing diagram is exponential in crossings unless structure is exploited; verifying YBE is finite check on index tuples |
| Worked miniature | Bracket R: A·id + A^{-1}·swap-style deltas (PDF 131–132); loop value n = tr(delta) = -A^2 - A^{-2} recovers specialized bracket |
| Lace stamp | **FORBID-as-array-law**; **SILENT/off-shoe** algebra |
| Hands cite | YBE off-shoe; not Core mutation |
| Map cite | OPEN (YBE not a K-id; neighbor K5 bracket / K6 Jones) |
| False friend | Installing RLL / YBE as Lace array rewrite law; treating R as emission amplitude for POINTER |
| Open gaps | Rapidity/momentum parameters mentioned (PDF 130) not used in the basic spin-only model — [OPEN] if extending. Phi = [GAP] |

**Algorithm**

1. **Preconditions.** Oriented diagram K; chosen finite index set I; matrices R, R-bar on I⊗I.  
2. **State.** Vertex weights at each crossing; open strands carry indices.  
3. **Steps — local weights.**  
   1. At a positive crossing, assign R^{ab}_{cd} to (in-spins a,b → out-spins c,d) per book diagrammatic convention.  
   2. At a negative crossing, assign R-bar.  
4. **Steps — global evaluation.** Sum/contract all internal indices (Einstein / diagrammatic plugging) to obtain T(K); closed loops contribute Kronecker/trace factors.  
5. **Steps — certify regular-isotopy invariance (Thm 8.1).**  
   1. **Channel unitarity:** R · R-bar = id (move IIA).  
   2. **Cross-channel unitarity:** corresponding IIB matrix identity.  
   3. **Yang–Baxter (III(A)):** triple product identity on R (Fig. 14, PDF 129); likewise for R-bar.  
6. **Choice points.** Which solution R (bracket-family, Homfly-family, Alexander-family, …) — model choice, not Lace scheduler.  
7. **Halt.** Scalar/polynomial T(K) plus (optional) unitarity/YBE check certificate.  
8. **Output certificate.** T(K) with cited R and verified Thm 8.1 hypotheses (or failure).

```text
assign R / Rbar at crossings → contract indices → T(K)
if channel + cross-channel + YBE: T regular-isotopy invariant
```

---

### M-B3 — Homfly skein / specializations

| Field | Content |
|---|---|
| Kind | algebra / combinatorics |
| Book locus | Part I §5° (Homfly introduction) · printed pp.51–52 · PDF pp.70–71; §11° Yang-Baxter Models for Specializations of the Homfly Polynomial · printed pp.161–166 · PDF pp.180–185 |
| Sighting method | OCR this pass on PDF 70–71, 180–185 |
| Eye-quote | Homfly exchange for P_K(a,z) (oriented 2-variable); specializes to Jones at a=t^{-1}, z=sqrt(t)-1/sqrt(t) and to Conway-Alexander at a=1. §11: state model from R gives exchange identity for the regular isotopy version of the Homfly polynomial. |
| Inputs | Oriented link diagram; variables (a,z) or YBE parameters (q, delta) + index set |
| Outputs | Homfly P_K(a,z) (ambient) or regular-isotopy precursor H_K; specializations Jones / Alexander-Conway |
| Invariants | Ambient isotopy for P_K; regular isotopy for the §11 state sum after adjusting delta |
| Algorithm | See below |
| Complexity / termination | Skein tree exponential in crossings unless memoized; YBE state sum exponential in crossings × |I| |
| Worked miniature | One skein step (PDF 75 / §5 examples): H(L+) - H(L-) = z H(L0); curls H → a^{±1} H; trefoil computation yields chirality-sensitive P_T |
| Lace stamp | **FORBID-as-emission-scheduler**; **FORBID-as-history-store** |
| Hands cite | Skein choice ≠ Lace when-rule |
| Map cite | K6 neighbor (Jones specialization); Homfly itself OPEN as dedicated K-id |
| False friend | Using Homfly crossing-choice as POINTER emission scheduler; storing P_K as the strand |
| Open gaps | Full existence via induction historically; book also gives YBE models for specializations (§11) enough to establish the 2-variable polynomial — which specialization path to compute [OPEN]. Phi = [GAP] |

**Algorithm (skein / template route, §5)**

1. **Preconditions.** Oriented diagram K.  
2. **State.** Skein tree of diagrams; known unknot value.  
3. **Steps.**  
   1. If K is ambient-isotopic to unknot, set base value per book normalization.  
   2. Pick an oriented crossing as L+ or L- (choice [OPEN]).  
   3. Form L+, L-, L0 (oriented smoothings).  
   4. Apply Homfly exchange (book a,z form) / regular form H(L+) - H(L-) = z H(L0) with curl rules H → a^{±1} H.  
   5. Recurse; normalize by writhe/framing factors to ambient P_K as in book.  
4. **Specializations.** Jones: plug a=t^{-1}, z=sqrt(t)-1/sqrt(t). Alexander-Conway: a=1.  
5. **Halt.** Laurent polynomial in a,z (or specialized ring).  
6. **Output certificate.** P_K plus skein tree (or STA template expansion).

**Algorithm (YBE specialization route, §11)**

1. Choose index set I and R of Homfly type (book: R with q-weights and [a<b] projectors).  
2. Expand crossings into decorated splices / graphical crossings; label loops with constant spins obeying book inequalities.  
3. Score <K> = sum_sigma <K|sigma> delta^{||sigma||} with rotational spin norm.  
4. Adjust delta for regular isotopy; specialize toward Homfly / Jones as book directs.  
5. Halt with specialized invariant.

```text
# one skein step
pick crossing [OPEN] → form L+, L-, L0
H(L+) - H(L-) = z * H(L0)   # regular form
# specialize e.g. to Jones or Alexander-Conway
```

---

### M-B4 — Alexander via state / YBE model

| Field | Content |
|---|---|
| Kind | algebra / combinatorics |
| Book locus | Part I §12° The Alexander Polynomial · printed pp.174–178 · PDF pp.193–197 |
| Sighting method | OCR this pass on PDF 193–197; TOC §12 printed 174 |
| Eye-quote | Conway axioms: (i) ambient isotopy invariance (ii) V(unknot)=1 (iii) V(L+)-V(L-)=z V(L0). / "a Yang-Baxter model essentially similar to the one discussed in section 11° can produce the Alexander-Conway polynomial." / Index set I={-1,+1}; delta=i with i^2=-1; tangle normalization so split links vanish without killing the model. |
| Inputs | Oriented diagram as single-input/single-output tangle in a strip (endpoints fixed); parameter q (or z); R-matrix on {±1} |
| Outputs | Alexander-Conway polynomial V_K(z); vanishes on split links |
| Invariants | Ambient isotopy (after curl normalization + IIB check in book) |
| Algorithm | See below |
| Complexity / termination | State sum over {±1} labels: exponential in crossings; skein route same as Conway recursion |
| Worked miniature | Split-link vanishing: if K splits, book shows z V_K=0 hence V_K=0 (PDF 194). Tangle normalization: bare string evaluates to 1; disjoint circle factor 0 — avoids collapsing the model |
| Lace stamp | **FORBID-as-store** (polynomial / state sum ≠ Lace history store) |
| Hands cite | Alexander off-shoe |
| Map cite | OPEN (Alexander not a K-id; Conway neighbor to K6 family) |
| False friend | Storing Alexander states as Lace append-life; reading tangle endpoints as Core I/O ports |
| Open gaps | Full IIB verification sketched (Prop 12.2); multi-variable Alexander deferred to citations. Classical Seifert/Fox views deferred to §13°. Figure-authoritative: exact R glyph entries PDF 195. Phi = [GAP] |

**Algorithm**

1. **Preconditions.** Represent the link as a **1-in/1-out tangle** in strip R×I (endpoints fixed; no motion past endpoints).  
2. **R-matrix.** Use book's I={-1,+1} solution (positive crossings R, negative R-bar); Deus-ex-machina form PDF 195 — figure-authoritative for exact entries; OCR partial on glyphs.  
3. **State sum.** <K> = sum_sigma <K|sigma> i^{||sigma||} with rotational norm on spin labels as in §11; bare string rot=0, evaluation 1.  
4. **Normalize curls.** Set delta=i so Lemma 12.1 curl factors hold; define V_K via book's (i q^{-1})^{…}<K> so curls cancel toward ambient invariance.  
5. **Verify moves.** Channel-style identities from YBE inverse pair; complete IIB as in Prop 12.2.  
6. **Skein check.** Model realizes V(L+)-V(L-)=z V(L0) with V(unknot)=1.  
7. **Choice points.** Whether to compute via states or via Conway skein — equivalent when well-defined; order [OPEN].  
8. **Halt.** Laurent/polynomial V_K(z).  
9. **Output certificate.** V_K plus tangle diagram and (optional) state list.

```text
tangle form (1-in/1-out) → R on {+1,-1} → state sum with delta=i
→ normalize curls → V_K Alexander-Conway
# split links → V=0
```

---

### M-B5 — Gauss code reconstruct / trip

| Field | Content |
|---|---|
| Kind | combinatorics / coding |
| Book locus | Appendix article *Gauss Codes, Quantum Groups and Ribbon Hopf Algebras* · Sec. II · printed pp.543–550 · PDF pp.562–569 |
| Sighting method | OCR this pass on PDF 562–569; prior pin PDF 562 / printed 543 (pass 3) |
| Eye-quote | "First, there is the Gauss code, a sequence of symbols representing a record of the crossings encountered in taking a trip along the curve of the knot. Knots can be reconstructed from their Gauss codes (Sec. 2)." / Trefoil universe code 123123; augmented O1U2O3U1O2U3. / Jordan decode: flip between paired labels → draw circle → connect equal labels by noncrossing arcs → restore crossings. |
| Inputs | Gauss / trip code (labels); optional O/U augmentation; (for decode) primality assumptions per book |
| Outputs | Planar universe / link diagram (up to the book's reconstruction); or code word from a diagram |
| Invariants | Diagram information transcribed linearly; Reidemeister moves act as stated local code rewrites (Fig. 1, PDF 569–570) |
| Algorithm | See below |
| Complexity / termination | Code length 2c for c crossings; flip-decode O(c^2) symbol moves; planarity may fail for abstract codes |
| Worked miniature | Code 123123 → flip procedure → Jordan 132123 → circle with chords → trefoil universe (PDF 565–568) |
| Lace stamp | **FORBID-as-append-life** (trip code ≠ Lace strand life/history) |
| Hands cite | Code walk ≠ Lace append |
| Map cite | FM-K5 / PAGE F neighbor (Gauss cited with virtual family); dedicated Gauss K-id OPEN |
| False friend | Treating Gauss trip order as Lace append-only chronology; using code as emission log |
| Open gaps | Abstract-code planarity (Gauss's question) solved by Rosenstiehl–Read — full criterion outside this card. Figure 1 Reidemeister↔code map is **figure-authoritative** (PDF 570). Phi = [GAP] |

**Algorithm**

1. **Preconditions.** A classical diagram, or a candidate code word on crossing labels {1,…,c}.  
2. **Encode (diagram → code).**  
   1. Label crossings 1..c.  
   2. Choose basepoint on an edge and a travel direction.  
   3. Traverse, recording each crossing label when passed (crossing through at vertices) → length-2c word for a knot universe.  
   4. Optional: augment with O/U (over/under) at each visit → augmented trip code.  
3. **Decode (code → Jordan → diagram) — Dehn / Rosenstiehl–Read sketch.**  
   1. From universe trip code, obtain a Jordan-curve code by, for each label in order, **reversing** the subsequence strictly between the two occurrences of that label (book's systematic flip).  
   2. Draw a circle; place labels in Jordan-code order.  
   3. Join equal labels by pairwise noncrossing chords (some inside, some outside). If impossible → no planar realization.  
   4. Replace each chord pair by a crossing; restore O/U from augmentation if present.  
4. **Reidemeister on codes.** Apply local word rewrites matching R I–III (Fig. 1).  
5. **Choice points.** Basepoint and direction; which planar chord embedding when several — [OPEN] up to diagram isotopy.  
6. **Halt.** Code word or reconstructed diagram.  
7. **Output certificate.** Trip word (± O/U) and/or planar diagram with crossing labels.

```text
diagram --trip--> word of labels (± O/U)
word --flip each label--> Jordan code --chords--> universe --O/U--> diagram
```

---

## Wave C–D — Deferred

| ID | Mechanism | Reason deferred | Next seed (PDF / printed) |
|---|---|---|---|
| M-C1 | DNA strand passage / Lk Tw Wr | Pass 6 scoped to Wave B | PDF 507 / printed 488 |
| M-C2 | Rubber band / twisted tube | Pass 6 scoped to Wave B | Part II §2 ~printed 329 / PDF ~348 |
| M-C3 | Quaternion / belt trick | Pass 6 scoped to Wave B | TOC ~403–427 |
| M-D1 | Virtual crossing detail (expand M-A9) | M-A9 holds defs; deeper figures deferred | PDF 782+ |
| M-D2 | Arrow polynomial expansion | Intro sighted; expansion Sec.8 not carded | ~PDF 800+ |
| M-D3 | Khovanov cube / graded Euler → bracket | Appendix review Secs.9–17 not carded | appendix |


## Cross-walk (M-ID → stamp → map → clipboard)

| M-ID | Lace stamp | Map | Clipboard PAGE / FM |
|---|---|---|---|
| M-A1 | KEEP-read | K1 | PAGE A · hitch |
| M-A2 | FORBID-as-fields; KEEP-read image | K7 (≤ sync OPEN on map) | PAGE A · FM inequality |
| M-A3 | FORBID-as-Lace-identity | K2 | PAGE B |
| M-A4 | KEEP-read projection | K3-ish | PAGE C (Move Zero) |
| M-A5 | FORBID-as-Core-write | K3–K4 | PAGE C · FM Reidemeister |
| M-A6 | FORBID-as-history-store; SILENT append | K5 | PAGE D |
| M-A7 | FORBID-as-history-store | K6 | PAGE E |
| M-A8 | FORBID-as-Core-write | K8 | slide / FM |
| M-A9 | FORBID-extra-rooms | K9 | PAGE F · virtual / Gauss neighbor |
| M-B1 | FORBID-as-Lace-chronology | OPEN (K6/FM-K5 neighbor) | braid / FM |
| M-B2 | FORBID-as-array-law; SILENT/off-shoe | OPEN (K5/K6 neighbor) | YBE / FM |
| M-B3 | FORBID-as-emission-scheduler; FORBID-as-history-store | K6 neighbor; Homfly OPEN | PAGE E family · FM-K5/K6 |
| M-B4 | FORBID-as-store | OPEN (Conway/K6 neighbor) | Alexander / FM |
| M-B5 | FORBID-as-append-life | FM-K5 / PAGE F neighbor; Gauss K-id OPEN | PAGE F · Gauss |

---

## Pass 4 method note

Image-only PDF: no text layer. This pass used `pdftoppm` rasters + `tesseract` 5.5.0. Diagram-heavy pages (Fig. 9, Reidemeister Fig. 8, slide axiom figures, virtual Fig. 1–2) remain **figure-authoritative**; OCR quotes capture surrounding prose. No card closes Φ. No `src/`. PDF never staged.

## Pass 6 method note

Wave B cards M-B1…M-B5 filled from fresh `pdftoppm` + `tesseract` 5.5.0 on §7–8, §5/§11, §12, Gauss appendix. Figure-authoritative: braid Fig.11, YBE Fig.14, Alexander R glyphs, Gauss Fig.1. Waves C–D remain deferred with seeds. No card closes Φ. No `src/`. PDF never staged.

---

## Steward test

Shoe in hands, or no.  
Book procedure on paper ≠ Lace append.  
Nondeterministic "next crossing / next move" = `[OPEN]`, not a hidden Lace scheduler.  
Φ stays `[GAP]`.
