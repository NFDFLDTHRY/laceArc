# Mathematical execution model - ROOT / TOUCH / FOLD Pass 3 findings

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (Astra-math).
**Plan:** [math-execution-root-touch-fold-pass-3-plan.md](math-execution-root-touch-fold-pass-3-plan.md).
**Execute base:** 266e613a4e4d692c36d631be51e9224af3bcce07.
**Model update:** commit 319c23490244bac55d71beda2f6547df5b1f53fb.
**Scope:** mathematical model only. Law, manifest, graphics, global ASCII, environment, reduction model, clipboards and src/ were not edited.
**Law status:** pointer-emission.md remains unchanged and not blanket-accepted.

## 0. Human rulings applied

H4:
> A word not seen before becomes the root on arrival.

H5:
> the n+1 grounding construction is basically so any portion of lace can reference any other portion of lace be one point.

H6:
> Makes sense to me there's on their own row of lace per sample size. This is the system behind the dot to dot n-dimensional representation.

Pass 3 combines those with D2/D1/D6 and Graphic C C5/C7/C8/C11.

---

## 1. Result

Pass 3 succeeds on the planned mathematical construction.

The model now has one physical POINTER constructor:

\[
\boxed{
\mathsf{Join}(a,b)
=
(\mathsf{POINTER},a,b)
}
\]

for two already-existing Lace points.

The construction is recursive because either operand may itself be a POINTER point.

This gives four consequences:

1. **unseen arrival becomes root** immediately;
2. **seen-root touch is one Join role**;
3. **GROUND is repeated Join over a selected finite sample**;
4. **dot-to-dot N-D is a projection of recursively grounded points**, not another store.

The old general GROUND construction gap is closed in the mathematical model.

What remains is **sample / relation selection**:
which already-existing points or portions are selected to be grounded at a particular punch-card step.

That is now separate from the physical POINTER constructor and from the proof that any finite selection can be grounded.

---

## 2. H4 closes the unseen-word branch

Let \(v\) arrive to pre-state \(L\), with new WORD index

\[
j=|L|.
\]

After:

\[
L_1
=
L^\smallfrown(\mathsf{WORD},v),
\]

if the value was unseen in \(L\):

\[
\boxed{
\mathrm{Root}_{L_1}(v)=j
}
\]

by H4.

If it was seen, the earlier root remains the root and the new occurrence touches it.

So the complete structural arrival branch is now:

\[
\mathsf{LAND}
\rightarrow
\begin{cases}
\mathsf{BECOME\ ROOT}, & \text{unseen}\\
\mathsf{ROOT\ TOUCH}, & \text{seen}
\end{cases}
\]

before any sample grounding.

G1 still governs how equality of word values is decided. H4 closes what happens **after the identity test**, not the identity policy itself.

---

## 3. Arity decision: Case A

The plan's arity decision tree resolves to **Case A** in the mathematical model.

Evidence taken together:

- D2 draws a two-reference POINTER schema;
- D1 has six of six POINTER rows binary;
- D6 allows POINTER-to-POINTER;
- H5 requires arbitrary portions to become one point;
- H6 gives an \(n+1\) construction and one new Lace row at each successive sample scale.

The \(n+1\) step has exactly two operands:

\[
\text{existing }n\text{-point}
+
\text{next selected point}
\rightarrow
\text{new }(n+1)\text{-point}.
\]

Therefore:

\[
\boxed{
\mathsf{Join}(a,b)
}
\]

is sufficient as the one physical Core POINTER constructor in the mathematical model.

This closes Q2 **model-side for the Core constructor**.

It does **not** silently edit the law-owned pointer-emission draft. That file still carries its historical CONFLICT until a law-station reconciliation pass updates it.

---

## 4. Sample terminology verdict

### Sample instance

A sample is a finite nonempty ordered selection of existing Lace point indices:

\[
S=(s_1,\ldots,s_n).
\]

Ordering is retained because the punch-card \(n+1\) construction is an append history.

### Sample size

\[
\boxed{|S|=n}
\]

means the number of points selected at that sampling boundary.

It is **not**:

- POINTER arity, which is 2;
- transitive Reach cardinality;
- construction depth.

A selected point may itself represent a very large prior Lace portion.

### Grounded point

A grounded point is a Lace row whose recursive Reach contains the selected sample.

No sample record is stored beside Lace.

---

## 5. "Own row per sample size" verdict

The three planned interpretations resolve as follows.

### Interpretation I — construction ladder: **PASS**

For one selected sample:

\[
P_1=s_1
\]

\[
P_2=\mathsf{Join}(P_1,s_2)
\]

\[
P_3=\mathsf{Join}(P_2,s_3)
\]

and so on.

Every \(n\rightarrow n+1\) extension appends one new POINTER row.

So within a sample construction ladder, each successive sample scale has its own Lace row.

### Interpretation II — branch/tree scales: **PASS**

Already-grounded portions can be combined:

\[
p=\mathsf{Join}(p_A,p_B).
\]

This is necessary to explain D1's branched structure, particularly 0007 and 0010.

The \(n+1\) ladder is therefore a local induction form, not a requirement that all Lace history be one global left fold.

### Interpretation III — one global registry row per cardinality: **REFUTED**

A single shared "size-3 row" would merge different three-point samples.

That contradicts H5's arbitrary-portion requirement and the no-collapse invariant.

No sample-size registry is admitted.

---

## 6. G1-G12 proof board

| ID | Result | Finding |
|---|---|---|
| **G1 unseen becomes root** | **PASS** | H4 directly closes the branch; new WORD row is root |
| **G2 seen root stable** | **PASS modulo word equality** | append-only history leaves first occurrence/root unchanged |
| **G3 Join legality** | **PASS** | both operands exist before new POINTER row, so refs are backward |
| **G4 Join permanence** | **PASS** | new POINTER is Lace; D6 and D1 show later POINTER may reference it |
| **G5 reach union** | **PASS by definition** | Reach(new Join) is new row plus ancestry of both operands |
| **G6 finite sample representability** | **PROVED by induction** | repeated binary Join grounds any finite nonempty selected sample |
| **G7 no collapse** | **PASS** | each sample construction appends distinct history; no cardinality registry |
| **G8 n+1 row** | **PASS** | every extension \(P_n+s_{n+1}\) appends one POINTER row |
| **G9 arbitrary grouping** | **PASS / noncanonical allowed** | different binary trees remain different Lace history; no source requires canonical collapse |
| **G10 N-D projection** | **PASS** | C7 relation-among-relations + D6 POINTER→POINTER; C11 keeps view non-authoritative |
| **G11 D1 compatibility** | **PASS 6/6** | every D1 POINTER is one binary Join |
| **G12 whole-prefix witness** | **PASS** | D1 0010 reaches 11/11; general finite-prefix Cover theorem also constructed |

**Board:** 12/12 PASS within the stated mathematical scope.

---

## 7. Finite-sample theorem

For sample:

\[
S=(s_1,\ldots,s_n),
\]

define:

\[
P_1=s_1
\]

and:

\[
P_{m+1}
=
\mathsf{Join}(P_m,s_{m+1}).
\]

Then by induction:

\[
\operatorname{Reach}(P_n)
\supseteq
\{s_1,\ldots,s_n\}.
\]

If a selected \(s_i\) is itself a grounded point, its entire ancestry is included as well.

So an arbitrary finite already-addressable Lace portion can be made one later addressable point without an n-ary POINTER.

This is the mathematical content behind H5.

---

## 8. Whole-prefix covering theorem

Take finite starting prefix \(L_0\) with rows:

\[
0,\ldots,m-1.
\]

Use those row indices as the selected sample and build the \(n+1\) ladder.

Every original row becomes reachable from the final point.

Every intermediate Join row also becomes reachable because the next Join references the previous grounded point.

Therefore the final point reaches the **entire resulting grounding construction**, not merely the original sample.

That gives a general construction for:

> one point represents the whole finite Lace prefix.

D1 0010 is the fixed eleven-row witness:

\[
\operatorname{Reach}_{D1}(0010)
=
\{0000,\ldots,0010\}.
\]

---

## 9. D1 replay under one constructor

All six source POINTER rows fit the same physical operation.

| Row | Join form | Role |
|---|---|---|
| 0002 | Join(0000,0001) | pair/ground relation |
| 0004 | Join(0003,0000) | seen-word root touch |
| 0006 | Join(0003,0005) | pair/ground relation |
| 0007 | Join(0006,0004) | relation joins relation |
| 0009 | Join(0008,0007) | point joins grounded relation |
| 0010 | Join(0009,0002) | grounded branch joins grounded branch |

No second POINTER constructor is required.

RootTouch is not a special row type. It is Join with the operand-selection role:

\[
\text{new occurrence},\text{ word root}.
\]

GROUND is not a special row type. It is Join applied recursively to selected sample points.

---

## 10. Slot-order result

Binary physical arity is now fixed model-side.

Semantic operand order is a different question.

The D1 close reading establishes that in all six source examples:

- ref_A is the described subject;
- ref_B is what that subject is related against.

But Pass 3 does not invent a general semantic system that chooses the subject.

The constructor therefore takes an **ordered selected pair**:

\[
\mathsf{Join}(a,b).
\]

Selection supplies operand order.

This is no longer a storage-shape gap; it is part of relation/sample selection.

---

## 11. N-D dot-to-dot result

H6 plus C7/D6 gives a coherent storage-to-view mapping:

Lace row
  ↓ addressable point
Join row
  ↓ may point at WORD or POINTER
point-of-points
  ↓ later Join can include it
relations among relations
  ↓ read-only projection
dot-to-dot 2D / 3D / N-D representation

The dimensionality is not stored as coordinates or columns.

It appears because the same point can participate in recursively nested relations and independent routes.

This resolves the storage mechanism behind C7 in the mathematical model while preserving C11:

\[
\text{projection}\neq\text{store}.
\]

No Graphic-C or manifest file was edited in this pass.

---

## 12. Falsifier results

| Falsifier | Result |
|---|---|
| **F3-A unseen-root conflict** | **did not fire** |
| **F3-B requires new row kind** | **did not fire**; WORD/POINTER sufficient |
| **F3-C binary cannot ground arbitrary finite sample** | **refuted by induction proof** |
| **F3-D D1 needs multiple POINTER constructors** | **did not fire; 6/6 one Join** |
| **F3-E one global row per cardinality required** | **did not fire; interpretation III rejected as collapse** |
| **F3-F sample size needs stored metadata** | **did not fire; size is a read/construction property** |
| **F3-G n+1 requires rewriting prior rows** | **did not fire; append one new Join** |
| **F3-H recursion cannot reproduce 0007/0009/0010** | **did not fire** |
| **F3-I N-D requires Core dimension state** | **did not fire** |
| **F3-J binary closure overreaches evidence** | **did not fire model-side**; D2+D1+H5/H6 support Core Join; law handoff remains |
| **F3-K canonical tree required** | **did not fire**; distinct trees may remain distinct history |
| **F3-L sample selection unstated** | **FIRED as final residual** |

The only live planned falsifier is F3-L.

---

## 13. What remains after Pass 3

### Constructor-level pointer emission: mathematically closed

Given selected existing operands \(a,b\):

\[
\boxed{
\text{emit } \mathsf{Join}(a,b)
}
\]

as one new POINTER row.

Given a selected finite sample:

\[
\boxed{
\text{repeat Join by }n+1\text{ construction}
}
\]

until one grounded point represents it.

### Arrival/root/touch: closed structurally

\[
\boxed{
\mathsf{LAND}
\rightarrow
\begin{cases}
\mathsf{BECOME\ ROOT}, & \text{unseen}\\
\mathsf{Join}(\text{new occurrence},\text{root}), & \text{seen}
\end{cases}
}
\]

### Remaining selection input

The model still does not define an automatic policy that says:

> at this moment choose sample \(S\), or choose relation operands \(a,b\).

H5 says **any** portion can be grounded with another portion; it states capability, not a unique automatic chooser.

This is now a relation/input-selection question rather than a missing POINTER representation or recursion rule.

If higher-level punch-card law says which sample is active, the Core append sequence is fully determined by Join.

---

## 14. Pointer-emission blocker status

The phrase "pointer-emission blocker" now needs to be split.

**Closed model-side:**
- row kind;
- physical arity;
- backward-reference rule;
- root-touch emission;
- relation-to-relation construction;
- n+1 grounding row;
- arbitrary finite sample grounding;
- whole-prefix covering construction.

**Not yet reconciled in law:**
- pointer-emission.md still carries historical Q2/Q0/Q1/Q5 language.

**Still semantically selected:**
- which relation/sample is requested at a given step.

Therefore the next useful work is no longer another search for a POINTER constructor. It is:

1. law-side reconciliation of pointer-emission.md with H1-H6 and this model;
2. decide whether sample selection belongs to punch-card input, route formation, or a separately stated selection rule;
3. propagate the settled construction to manifest/global ASCII/Graphic-C seam afterward.

---

## 15. Scope

| Surface | Pass 3 |
|---|---|
| docs/math-execution-model.md | **UPDATED** |
| Pass 3 findings | **this file** |
| pointer-emission.md | unchanged |
| systems-manifest.md | unchanged |
| systems-manifest-ascii.md | unchanged |
| Graphics / graphics ASCII | unchanged |
| environment | unchanged |
| reduction model | unchanged |
| src/ / Cargo | untouched |

No law acceptance follows automatically from this maps pass.

---

## 16. Pass 3 receipt

| Field | Result |
|---|---|
| H4 unseen-root | **formalized** |
| sample interpretations | I PASS · II PASS · III REFUTED |
| G1-G12 | **12/12 PASS** |
| D1 replay | **6/6 Join** |
| binary Core constructor | **closed model-side** |
| finite sample theorem | **PROVED** |
| whole-prefix theorem | **PROVED constructively** |
| D1 whole-prefix witness | **11/11** |
| N-D mapping | **PASS, projection-only** |
| global Q2 law file | not edited |
| final residual | **sample/relation selection** |
| src/ | 0 |
| Next | law reconciliation + selection placement; **not automatically opened** |

## Steward test

The new point does not replace the pieces it represents. It is another piece of Lace whose ancestry reaches them. Build the next point from the prior point and one more selected point, or join two already-grounded branches. Every scale remains on the line. The N-dimensional dots are therefore real addressable Lace points, while the N-dimensional picture remains only a view.
