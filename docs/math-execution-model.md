# Mathematical execution model — Lace

**Status:** ROOT / TOUCH / FOLD Pass 3 mathematical model, executed 2026-09-20. **Pointer construction is now mathematically specified; relation/sample selection remains a separate input-selection question.**
**Campaign:** Pass 1 mapped the root/touch/fold delta; Pass 2 formalized LAND + seen-root TOUCH; Pass 3 formalizes unseen-root creation and recursive sample-to-point GROUND.
**Pass 3:** [plan](plans/math-execution-root-touch-fold-pass-3-plan.md) · findings to be linked on receipt.
**Physical POINTER constructor in this model:** binary \(\mathsf{Join}(a,b)\), grounded by D2/D1 plus H5/H6. The law-owned pointer-emission draft is still unchanged and not blanket-accepted.
**Current growth:** ARRIVE → unseen BECOMES ROOT / seen ROOT TOUCH → optional/required sample GROUND by repeated Join → Continue.
**N-D:** recursive points-of-points are stored only as WORD/POINTER rows; dot-to-dot 2D/3D/N-D is a projection of those participation paths, never a second store.
**No src/.**

**Source roles:** Graphics A–D remain source of record; [systems-manifest.md](systems-manifest.md) is derived; [systems-manifest-ascii.md](systems-manifest-ascii.md) is a lower-authority companion. Human H4–H6 provide the current root/grounding rulings. This model does not edit or accept law-owned files by implication.

Steward line: *Every arrival adds wire. Unseen wire becomes its root. Seen wire touches its root. Two existing points can be joined by one new POINTER point; repeat that and any chosen finite Lace portion can become one addressable point.*
---

## S0 — Header and non-claims

| Claim | This document |
|---|---|
| Every successful word arrival lands as one WORD occurrence | **Yes** — H3 |
| Unseen word becomes its root on arrival | **Yes** — H4 |
| Seen word occurrence touches existing root | **Yes** — H1 |
| One physical binary POINTER constructor \(\mathsf{Join}(a,b)\) | **Yes in this mathematical model** — D2/D1 + H5/H6 |
| RootTouch is a Join specialization | **Yes** |
| Any chosen finite sample of existing Lace points can be represented by one later point | **Yes, induction theorem** |
| \(n+1\) sample extension creates one new Lace row | **Yes** |
| One global registry row per cardinality \(n\) | **No** — would collapse distinct samples |
| D1 0010 covers the whole eleven-row D1 prefix | **Yes** |
| Whole-prefix covering point exists for every finite prefix by recursive Join | **Yes, constructive theorem** |
| N-D coordinates / dimension rows stored in Core | **No** |
| Which sample / relation is selected for grounding at a given moment | **Not determined here** — input/relation-selection question |
| G1 word-equality policy | **Open** |
| pointer-emission.md accepted as a whole | **No** |
| Permission to add src/ | **No** |

The old monolithic POINTER-emission blocker is split. **Constructor/grounding mechanics are defined; sample/relation selection is the remaining scheduler input.**

## S1 — Universe and state

### S1.1 Universe

Work in the **Hands** universe only. The sole persistent carrier is Graphic D’s append-only line. HCC-A, Coffee Cup, and Water are conceptual reference documents; the H×C×W diagrams interpret their concepts and establish no required holder machinery. Their conceptual model states introduce no Core rows or row types ([human correction](law-why-these-documents.md#conceptual-reference-documents); ASCII Core fence). The wall is \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\) ([dual-universe §1.1](clock/system-mathematical-model.md#11-universes)). Kin-read only. Shadow state is not a row of \(L\).

### S1.2 State

Let \(\mathbb{N}_0 = \{0,1,2,\ldots\}\). A Lace state is a finite sequence

\[
L = (e_0,\ldots,e_{n-1}), \qquad n = |L| \in \mathbb{N}_0.
\]

Indices are permanent addresses. Growth is concatenation only. There is no delete, rewrite, reset, cut, or index reuse (Pieces 1, 6; Graphic D).

### S1.3 Entry alphabet and physical POINTER constructor

\[
\mathsf{Kind}=\{\mathsf{WORD},\mathsf{POINTER}\}.
\]

WORD:

\[
e_i=(\mathsf{WORD},v),\qquad v\in V.
\]

\(V\)'s equality / token-boundary policy remains G1 OPEN.

POINTER in the Pass-3 mathematical model is binary:

\[
e_j=(\mathsf{POINTER},a,b),
\qquad 0\le a<j,\quad 0\le b<j.
\]

Define the one physical constructor:

\[
\mathsf{Join}_L(a,b)
=
L^\smallfrown(\mathsf{POINTER},a,b).
\]

Why binary is adopted here:

1. D2 draws the two-reference POINTER schema.
2. All six D1 POINTER rows are binary.
3. D6 permits POINTER→POINTER.
4. H5 requires arbitrary portions to become one point.
5. H6 supplies the \(n+1\) sample construction and distinct row per scale.

The earlier model-side Q2 CONFLICT is therefore resolved **for the Core constructor represented here**. The law-owned pointer-emission draft has not yet been reconciled and remains a separate handoff.

Slot semantics are not chronological. D1 close reading shows \(\mathsf{ref_A}\) is the described subject in the six fixed examples. Pass 3 does not invent a universal semantic subject-selection algorithm; \(\mathsf{Join}(a,b)\) preserves the selected ordered operand pair.

## S2 — Arrival, root creation, and root stability

Every successful word arrival lands:

\[
\mathsf{Arrive}(v):L\mapsto L^\smallfrown(\mathsf{WORD},v).
\]

Let \(j=|L|\) before landing and \(L_1=\mathsf{Arrive}(v)(L)\).

### Unseen arrival

H4 closes the prior structural boundary:

\[
\neg\mathrm{Seen}_L(v)
\Longrightarrow
\mathrm{Root}_{L_1}(v)=j.
\]

The new WORD row is both the arriving occurrence and the root for that identity.

### Seen arrival

If \(\mathrm{Seen}_L(v)\), the earlier root remains stable:

\[
\mathrm{Root}_{L_1}(v)=\mathrm{Root}_L(v).
\]

The new WORD row is another occurrence / more wire, not another lexical root. H1 then requires the new occurrence to touch the stable root through S3.3.

No root table exists. G1 still decides what counts as the same word value; Pass 3 closes the structural branch, not the equality policy.

## S3 — Readings (not stores)

### S3.1 Star occurrence membership, root, and full formation

\[
\mathrm{StarWords}_L(v)
=
\{\,i<|L|\mid e_i=(\mathsf{WORD},v)\,\}.
\]

\[
\mathrm{Seen}_L(v)
\iff
\mathrm{StarWords}_L(v)\neq\varnothing.
\]

\[
\mathrm{Root}_L(v)
=
\min\mathrm{StarWords}_L(v)
\quad\text{when seen.}
\]

These are reads, not tables.

- unseen arrival: its new WORD row becomes the root;
- seen arrival: root remains the first WORD row;
- every later WORD row remains a distinct occurrence.

The full star formation includes WORD occurrences, root-touch Join rows, and later Join rows whose recursive participation includes those touches.

### S3.2 Sequence as route

Order of WORD appends is the physical route through stars (Piece 8). No sentence container is added. Adjacency does **not** fire Φ (emission Q3 CLOSED). Leftover adjacency is emission Q3 **SPOKEN** as arrival order on the wire (B5), not a stored relation — **not accepted**, **not calculated**.

### S3.3 Seen-root touch is Join

For a seen value \(v\), with pre-arrival root

\[
r=\mathrm{Root}_L(v)
\]

and newly landed occurrence index \(j=|L|\), the required touch is:

\[
\mathsf{RootTouch}(j,r)
=
\mathsf{Join}(j,r).
\]

D1 row 0004 is the fixed witness:

\[
0004=(\mathsf{POINTER},0003,0000).
\]

So TOUCH and GROUND do not need different row constructors. They are different **operand-selection roles** of the same physical binary Join.

The resulting touch row is itself Lace and may be used as an operand of later Join, as D1 row 0007 directly demonstrates.

### S3.4 Points, samples, reach, and grounded points

Every stored row index is an addressable Lace point.

Define transitive backward reach:

\[
\operatorname{Reach}_L(i)=
\begin{cases}
\{i\}, & e_i\text{ is WORD},\\[3pt]
\{i\}\cup\operatorname{Reach}_L(a)\cup\operatorname{Reach}_L(b),
& e_i=(\mathsf{POINTER},a,b).
\end{cases}
\]

Reach is derived, never stored.

A **sample instance** is a finite nonempty selection of already-existing Lace points:

\[
S=(s_1,\ldots,s_n),
\qquad s_i<|L|.
\]

Its **sample size** is the selection cardinality:

\[
|S|=n.
\]

This is not POINTER arity, not Reach cardinality, and not construction depth.

A **grounded point** for a sample is a Lace point whose recursive ancestry contains the selected sample points.

#### Incremental \(n+1\) ladder

For a chosen ordered sample:

\[
P_1(S)=s_1,
\]

and for \(n\ge1\),

\[
P_{n+1}(S)
=
\mathsf{Join}\bigl(P_n(S),s_{n+1}\bigr).
\]

For every extension from size \(n\) to \(n+1\), one new POINTER row is appended. Thus each successive grounded sample scale has its own Lace row.

This is the non-collapsing reading of H6. There is **not** one global “size-\(n\)” registry row. Two distinct sample instances of equal size may have distinct grounded points.

#### Branch composition

The line is not restricted to one global left fold. If \(p_A\) and \(p_B\) already ground two portions, then:

\[
\mathsf{Join}(p_A,p_B)
\]

creates one new point whose reach includes both portions. D1 0007 and 0010 are fixed branched examples.

Different grounding trees are allowed to remain different Lace history. The model does not canonicalize them into one structure merely because they reach the same leaves.

### S3.5 Projection / dot-to-dot N-D view

\[
\pi:L\rightarrow\mathsf{View},
\qquad
\text{no write-back } \mathsf{View}\rightarrow L.
\]

H6 identifies recursive grounded points as the machinery behind the dot-to-dot N-dimensional representation.

Model-side interpretation:

- the **dots** are addressable WORD / POINTER points;
- the **connections** are read from POINTER participation / ancestry;
- POINTER→POINTER supplies points-of-points / relations-among-relations;
- more independent participation yields denser N-D projections;
- no coordinates, dimension columns, or N-D store are added to Core.

This aligns with Graphic C C5/C7/C8 and preserves C11's projection fence.

## S4 — Binary Join, sample grounding, and emission

### S4.1 One physical POINTER constructor

For any two earlier Lace points \(a,b\):

\[
\mathsf{Join}(a,b):
L\mapsto L^\smallfrown(\mathsf{POINTER},a,b).
\]

Both operands are selected before the new row exists, so the new POINTER always references backward on the same line.

The constructor is uniform across D1:

| D1 row | Join reading |
|---|---|
| 0002 | \(\mathsf{Join}(0000,0001)\) |
| 0004 | \(\mathsf{Join}(0003,0000)\) — root touch role |
| 0006 | \(\mathsf{Join}(0003,0005)\) |
| 0007 | \(\mathsf{Join}(0006,0004)\) |
| 0009 | \(\mathsf{Join}(0008,0007)\) |
| 0010 | \(\mathsf{Join}(0009,0002)\) |

One physical constructor, different selected operands / participation roles.

### S4.2 Grounding a finite sample

For any finite nonempty ordered sample \(S=(s_1,\ldots,s_n)\) of existing points, define the incremental grounding ladder:

\[
P_1=s_1,
\]

\[
P_{m+1}
=
\mathsf{Join}(P_m,s_{m+1}),
\qquad 1\le m<n.
\]

Then \(P_n\) is one addressable point representing the selected sample through ancestry.

#### Theorem G — finite sample representability

Every finite nonempty sample of already-existing Lace points can be represented by one later Lace point using repeated binary Join.

*Proof by induction.*

Base \(n=1\): the selected row is already one addressable point.

Step: assume \(P_n\) represents \(S_n\). Append

\[
P_{n+1}=\mathsf{Join}(P_n,s_{n+1}).
\]

Then

\[
\operatorname{Reach}(P_{n+1})
=
\{P_{n+1}\}
\cup
\operatorname{Reach}(P_n)
\cup
\operatorname{Reach}(s_{n+1}),
\]

so the new point contains the prior grounded sample plus the newly selected point. ∎

### S4.3 Whole-prefix covering point

Take any finite starting Lace prefix \(L_0\) with row indices \(0,\ldots,m-1\). Select those rows as the grounding sample in index order and build the \(n+1\) ladder.

The final point \(P_m\) reaches:

1. every original row of \(L_0\); and
2. every intermediate Join row created while grounding, because each later Join references the prior grounded point.

Therefore the final point covers the complete resulting Lace of that grounding construction.

D1 row 0010 is a bounded source witness of the same effect:

\[
\operatorname{Reach}_{D1}(0010)=\{0000,\ldots,0010\}.
\]

### S4.4 Arrival / root / touch / ground

For successful arrival \(v\):

\[
L_1=\mathsf{Arrive}(v)(L_0).
\]

If unseen in \(L_0\), the new WORD row becomes the root.

If seen, append:

\[
\mathsf{Join}\bigl(j,\mathrm{Root}_{L_0}(v)\bigr)
\]

as the root-touch.

Grounding then uses the same Join constructor on whatever finite sample / portions are selected for point formation.

### S4.5 What is closed, and what remains selected

| Question | Mathematical status after Pass 3 |
|---|---|
| successful arrival lands? | **CLOSED** |
| unseen arrival becomes root? | **CLOSED by H4** |
| seen occurrence touches root? | **CLOSED by H1** |
| physical POINTER row shape? | **CLOSED in this model: binary Join** |
| POINTER→POINTER? | **CLOSED** |
| arbitrary finite sample representable by one point? | **PROVED** |
| one new row for \(n+1\) sample extension? | **PROVED / H6-grounded** |
| one global row per cardinality? | **REFUSED** — collapse |
| N-D requires second store? | **REFUSED** — projection only |
| which sample / relation is selected to ground now? | **selection input remains external to Join** |
| G1 word equality | **OPEN** |

The remaining selection question is no longer a missing POINTER constructor. Once operands / a sample are selected, emission is mechanically determined by binary Join.

### S4.6 Current STEP schema

\[
\mathsf{STEP}
=
\mathsf{LAND};
\begin{cases}
\mathsf{BECOME\ ROOT}, & \text{if unseen}\\
\mathsf{ROOT\ TOUCH}, & \text{if seen}
\end{cases}
;
[\mathsf{GROUND}(S)\text{ for selected sample }S];
\mathsf{Continue}.
\]

GROUND(S) is the repeated-Join construction above, not a separate storage engine. Selection of \(S\) is relation/input choice; storage of its grounded result is fully specified.

## S5 — Contracts I / II / III

| Contract | Role in this partial model | Contains (manifest) | Must not |
|---|---|---|---|
| **I Core** | Carrier \(L\), LAND/Arrive, root creation, root TOUCH, binary Join, finite-sample GROUND, readings | Pieces 1, 2, 4, 5, 6, 7, 8, 11, 14, 15 | Star/root/sample registry table; holder oil; second store |
| **II Arrival** | Thin ordered feed; every successful word arrival lands through \(\mathsf{Arrive}\); zero own store | Piece 3; 9–10 as *use of I* | Lexicon / document store at the edge |
| **III Projection** | \(\pi\) read-only | Piece 13; views of 7, 12, 15; Graphics A–C as views | Write-back into \(L\) |

Piece 12 (dimension) is a **reading of I**, not Contract IV.

No query / delete / transaction / multi-Lace interface is supplied by Hands.

---

## S6 — Forbidden morphisms `[X]`

Relative to Graphic D and Pieces 1, 6, 13, 14 — each is **not** a Core morphism:

1. Delete, rewrite, reset, cut, index reuse  
2. Intern / collapse many occurrences into one counted row  
3. Star table, meaning table, embedding store, N-D store beside the line  
4. Graph DB / edge table outside \(L\)  
5. Second Lace / second row-kind schema  
6. Write-back from any projection  
7. Label split/merge/create implemented as mutate-WORD  
8. Filling the remaining GROUND schedule from Shadow Anchor / OBS / unrelated conceptual machinery  
9. Treating ASCII companion or emission DRAFT commit as Hands acceptance  
10. Adding `src/` or Cargo under color of this document

---

## S7 — Alignment note (soft diff)

| This model | Source / human basis | Current stance |
|---|---|---|
| \(L\) append-only | Graphic D | unchanged |
| Arrive WORD | H3 + Piece 2 | every successful word arrival lands |
| unseen becomes root | H4 + first-occurrence star behavior | closed structurally; G1 equality still open |
| seen root stable | H1 + D1 0003/0004 | closed |
| RootTouch | H1 + D1 0004 | \(\mathsf{Join}(\text{occurrence},\text{root})\) |
| binary POINTER | D2 + six D1 rows + H5/H6 | one physical Join constructor in this model |
| POINTER→POINTER | D6 / C7 | recursive grounding |
| sample size | H6 | selected-point cardinality, not pointer arity or Reach size |
| \(n+1\) row | H6 | each sample extension appends one Join row |
| arbitrary finite portion to one point | H5 | proved by repeated Join |
| whole-prefix point | H2 + D1 0010 | constructive theorem + bounded witness |
| N-D dot view | H6 + C5/C7/C8/C11 | projection of recursive points, not store |
| multiple grouping trees | Rule Zero / no collapse | retained as distinct Lace history; no canonicalization required by current sources |
| which sample is selected | not stated as automatic policy | relation/input selection remains separate |
| G1 identity | existing open | still open |
| pointer-emission.md | law-owned stale surface | not edited / not blanket-accepted |

No second store, sample registry, dimension table, or new row kind is introduced.

## S8 — Steward receipt

| Field | Value |
|---|---|
| Current campaign | ROOT / TOUCH / FOLD Pass 3 **EXECUTED** |
| Successful arrival | LAND as WORD |
| Unseen word | new WORD becomes root |
| Seen word | new WORD + RootTouch Join |
| Physical POINTER constructor | **binary Join(a,b)** |
| RootTouch constructor | same Join, root-touch operand role |
| Grounding | repeated Join over selected finite sample |
| Finite sample representability | **PROVED** |
| \(n+1\) sample extension | **one new POINTER row** |
| D1 replay | all six POINTERs fit Join |
| Whole-prefix covering point | **constructively proved**; D1 0010 bounded witness |
| Sample size | selected-point cardinality |
| Global size-\(n\) registry row | refused |
| N-D | projection of recursive points-of-points |
| Remaining selection issue | which sample / relation is chosen to ground |
| G1 word identity | OPEN |
| pointer-emission.md | unchanged / not blanket-accepted |
| src/ | not authorized |

**Current steward tests:** no old row is rewritten; all Join refs are backward; every grounded point is itself Lace; repeated Join represents arbitrary finite selected portions; equal-size samples do not collapse; N-D remains a view; constructor mechanics no longer depend on an unknown arity/schedule once the sample operands are selected.

*Shoe in hands. Tie two existing parts with a new piece of the same lace. That new tie is itself something later lace can tie through. Repeat it and a whole chosen portion becomes one point without any part disappearing.*