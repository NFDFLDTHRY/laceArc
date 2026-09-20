# Mathematical execution model - ROOT / TOUCH / FOLD campaign - Pass 3 PLAN

**Status:** PLAN - NOT EXECUTED. **Station:** maps (Astra-math).
**Pinned main before claim:** e67b170c55605d120d5da7a816e84f2dd4e90bb5.
**Claim commit:** 2ad4677e498421edfaa5c4ef101dd1b29720ca05.
**Depends on:** Pass 1 findings + Pass 2 model / findings.
**Object under test:** docs/math-execution-model.md, specifically the remaining GROUND blocker.
**Implementation:** no src/. pointer-emission.md remains law-owned and is not accepted by this plan.
**Graphics:** C7 / D1 / D2 / D6 are evidence surfaces; their ASCII readings are subordinate to the PNGs.

Pass 3 plans the n+1 grounding construction. It also closes the Pass-2 unseen-word boundary at the mathematical-model level using the new human ruling that a previously unseen word becomes its root on arrival.

---

## 0. Human rulings convening Pass 3

Carried rulings:

**H1**
> nothing is new in the wordspace after the dictionary is wired up. Words are the touches. If seen word n before create touch to word root.

**H2**
> only thing still missing the punch card n+1 pointer creation. This grounds words together scaling up until 1 point represents the entire lace.

**H3**
> All arrivals land on lace.

New current-session rulings:

**H4**
> A word not seen before becomes the root on arrival.

**H5**
> the n+1 grounding construction is basically so any portion of lace can reference any other portion of lace be one point.

**H6**
> Makes sense to me there's on their own row of lace per sample size. This is the system behind the dot to dot n-dimensional representation.

Pass 3 must preserve the exact difference between:
- direct human rulings H4-H6;
- source facts from Graphics C/D;
- mathematical consequences derived from both;
- implementation choices still not fixed.

---

## 1. Immediate effect of H4

Pass 2 left the post-seed unseen-word case OPEN.

H4 closes that structural case.

For a successful arrival v to pre-state L:

\[
j=|L|,
\qquad
L_1=L^\smallfrown(\mathsf{WORD},v).
\]

Then:

\[
\neg\mathrm{Seen}_L(v)
\quad\Longrightarrow\quad
\mathrm{Root}_{L_1}(v)=j.
\]

No root-touch is required to an earlier root because none exists.

If the word was already seen:

\[
\mathrm{Root}_{L_1}(v)=\mathrm{Root}_L(v)
\]

and H1 requires the later occurrence to touch that prior root.

So Pass 3 should test the complete arrival split:

\[
\mathsf{LAND}(v)
\rightarrow
\begin{cases}
\mathsf{BECOME\ ROOT}, & \text{if unseen}\\
\mathsf{ROOT\ TOUCH}, & \text{if seen}
\end{cases}
\rightarrow
\mathsf{GROUND}.
\]

This closes the structural unknown-word branch without closing G1's equality policy.

---

## 2. One question

**Can GROUND be formalized as a recursive sample-to-point construction over existing Lace sections, such that any finite already-existing portion of Lace can be represented by one new POINTER point, that point lives on the same append-only line, and those points recursively produce the dot-to-dot N-dimensional participation described by Graphic C without creating a second N-D store?**

Pass 3 plans to answer that question.

---

## 3. Core thesis to test

### P3-T: binary recursive grounding

Every existing Lace section is already an addressable point.

For two earlier addressable points / portions a,b, append:

\[
\mathsf{Join}(a,b):
L
\mapsto
L^\smallfrown(\mathsf{POINTER},a,b).
\]

Let the new POINTER index be p.

Then:

\[
\operatorname{Reach}_L(p)
=
\{p\}
\cup
\operatorname{Reach}_L(a)
\cup
\operatorname{Reach}_L(b).
\]

The new row is therefore one new point representing the union of the two referenced portions.

Because a and b may themselves be POINTER points, this construction recurses.

### n+1 special case

If p_n is a grounded point representing a chosen sample / portion S_n, and x is another earlier Lace point to add:

\[
p_{n+1}
=
\mathsf{Join}(p_n,x).
\]

Then the n+1 sample has its **own newly appended Lace row**.

This is the candidate formal meaning of H6's "own row ... per sample size."

Pass 3 must not confuse this with:
- one global canonical row for cardinality n;
- a mutable sample object;
- an N-D array;
- a projection node outside Lace.

---

## 4. Why binary composition is the leading candidate, not yet a ruling

Evidence favoring binary GROUND:

1. D2 presents the POINTER schema with two refs.
2. All six D1 POINTER rows have arity 2.
3. D6 explicitly permits POINTER-to-POINTER.
4. C7 describes touches of touches / relations among relations.
5. H5 says a portion may be made "one point."
6. H6 describes an n+1 construction and a distinct Lace row at each sample scale.

Together these strongly suggest:

\[
\text{point of sample }n
+
\text{one more point}
\rightarrow
\text{point of sample }n+1
\]

with a binary POINTER row.

But the repo previously retained Q2 CONFLICT because source text never said "exactly two." Pass 3 must therefore test whether H5/H6 are now sufficient human evidence to close **GROUND arity = 2**, and whether that also closes the general POINTER schema or only the GROUND family.

No arity closure is allowed merely because all D1 examples happen to be binary.

---

## 5. Sample terminology: required distinctions

H6 uses "sample size." The repo has no prior authoritative definition for that term.

Pass 3 must define the minimum vocabulary necessary and keep alternatives visible.

### 5.1 Sample instance

Candidate:

\[
S=\{s_1,\ldots,s_n\}
\]

or an ordered tuple if ordering is required.

A **sample instance** means the selected existing Lace sections / points being grounded together.

### 5.2 Grounded point

A new POINTER row p_S whose recursive ancestry represents the chosen sample.

A grounded point:
- is itself Lace;
- occupies one permanent row;
- can be referenced later;
- may represent WORD rows, POINTER rows, or mixed earlier structure.

### 5.3 Sample size

Candidate derived quantity:

\[
\operatorname{size}(S)=n.
\]

Pass 3 must decide whether "sample size" means:
- number of directly selected point operands;
- number of primitive/leaf Lace sections represented;
- transitive Reach cardinality;
- construction depth.

Do not silently equate these.

### 5.4 "One row per sample size"

Pass 3 must test two readings:

**R-A — per-sample-instance row**
- each grounded sample / successive n+1 construction gets its own new POINTER row;
- two different samples of the same size remain distinct points.

**R-B — one global row per cardinality**
- there is one canonical "size n" row shared by all samples.

R-B is expected to fail because H5 requires arbitrary portions to remain separately addressable, and a single row for all samples of equal size would collapse distinct structure.

Execution must record the test rather than silently assume R-A.

---

## 6. General construction candidate

If binary Join is admitted, any finite nonempty sample of earlier addressable Lace points can be reduced to one point.

### Base

A one-element sample requires no new POINTER to be addressable:

\[
P(\{x\})=x.
\]

The existing row is already one point.

### Pair

\[
P(\{x_1,x_2\})
=
\mathsf{Join}(x_1,x_2).
\]

### Induction

If p_n=P(S_n) is an existing point and x_{n+1} is another earlier point:

\[
P(S_n\cup\{x_{n+1}\})
=
\mathsf{Join}(p_n,x_{n+1}).
\]

This creates a new row p_{n+1}.

### More general tree

Pass 3 must preserve that grouping need not be a left fold.

For already-grounded portions A,B:

\[
P(A\cup B)
=
\mathsf{Join}(P(A),P(B))
\]

when those representative points already exist.

This admits arbitrary binary trees and matches Pass 1's finding that D1 is branched rather than one global left fold.

The n+1 recurrence is therefore a local induction form, not necessarily the only global construction order.

---

## 7. Dot-to-dot N-D interpretation to test

H6 identifies this grounding system as the machinery behind the dot-to-dot N-dimensional representation.

Pass 3 must map that statement without turning a view into storage.

Candidate interpretation:

    Lace rows
      WORD / POINTER
           |
           | addressable points
           v
    grounded point rows
      may reference WORDs
      may reference POINTERs
           |
           | point can participate in later point
           v
    recursive point-of-points structure
           |
           | read / project
           v
    dot-to-dot 2D / 3D / N-D view

Graphic C already supports:
- C5: more dimensions = more independent ways to participate;
- C7: touches of touches / relations among relations;
- C8: denser structure / more recoverable routes;
- C11: projection is not the store.

Pass 3 must test the proposition:

> N-dimensional "dots" are addressable Lace points / grounded sample points; their visible connections are projections of POINTER participation. No N-D coordinates or dimension rows are stored.

This can close part of the C6/C7-to-D seam if it is supported, but Pass 3 must not edit Graphic C, the manifest or global ASCII.

---

## 8. Time direction and "any portion references any other portion"

H5 is conceptually broad; Graphic D is temporally strict.

An old row cannot be edited to point forward.

Therefore the storage-safe interpretation to test is:

> Given any already-existing portions A and B, append a **new** grounding point p that references their existing representatives.

Not:

> mutate A so that it now points to B.

Thus apparent "A references B" symmetry at the N-D view level is implemented by a later common participation point.

Pass 3 must make this explicit.

---

## 9. D1 replay obligations

Pass 3 must replay D1 under the candidate Join interpretation.

| Row | Candidate reading |
|---|---|
| 0002 = (0000,0001) | pair point over PIE + DESSERT |
| 0004 = (0003,0000) | seen-root touch, already closed by Pass 2 |
| 0006 = (0003,0005) | pair point over this PIE + WHOLE |
| 0007 = (0006,0004) | point over two previously grounded relations |
| 0009 = (0008,0007) | point combining CUSTOMER with prior grounded relation |
| 0010 = (0009,0002) | point combining two grounded branches; Reach covers all 11 rows |

Questions:

1. Does binary Join explain all five GROUND-classified rows without special cases?
2. Is 0004 simply another binary Join with a special semantic role "root touch"?
3. Can all six POINTERs therefore share one physical binary row schema while differing only by what earlier points they join?
4. Does 0010 demonstrate the whole-prefix completion invariant for this finite specimen?

If yes, Pass 3 may propose that TOUCH and GROUND use the same physical POINTER constructor, with different operand-selection rules.

---

## 10. Pointer-emission closure target

Pass 3 is explicitly aimed at the blocker.

If the candidate construction survives, the model-side emission rule should reduce to:

### Arrival

\[
\mathsf{Arrive}(v)
\]

always appends WORD(v).

### Root handling

If unseen before arrival:

\[
\mathrm{Root}(v)=\text{new WORD row}.
\]

If seen:

\[
\mathsf{Join}(\text{new occurrence},\mathrm{Root}(v))
\]

records the root touch.

### Grounding

Whenever a selected sample / pair of existing portions must become one addressable point:

\[
\mathsf{Join}(a,b)
\]

appends one POINTER row.

Repeated Join yields n+1, arbitrary finite sample grounding, and relation-of-relation structure.

The remaining scheduler problem would then be narrowed to **sample selection**:
- which portions are chosen to be joined at a given punch-card step?

Everything else — row kind, backwardness, binary constructor, recursive addressability, and n+1 scaling — would be mechanically fixed.

Pass 3 must test whether the human H5/H6 wording is sufficient to close sample selection too, or whether selection remains the final residual.

---

## 11. Formal properties Pass 3 must prove or refute

### G1 — unseen becomes root
After an unseen v lands at j:

\[
\mathrm{Root}_{L'}(v)=j.
\]

### G2 — seen root stable
Later arrivals never change the root index.

### G3 — Join legality
For pre-existing a,b, new pointer p=Join(a,b) references only lower indices.

### G4 — Join permanence
p is a permanent Lace row and can be used by later Join.

### G5 — reach union
For binary Join:

\[
\operatorname{Reach}(p)
=
\{p\}\cup\operatorname{Reach}(a)\cup\operatorname{Reach}(b).
\]

### G6 — finite sample representability
Every finite nonempty sample of already-existing Lace points can be represented by one later point through repeated Join.

This is an induction theorem, not a claim of one-row direct n-ary encoding.

### G7 — no collapse
Two distinct sample instances remain distinct unless they are literally represented by the same existing row by construction; no global cardinality row merges them.

### G8 — n+1 row
Extending a grounded sample by one more selected point appends a new row.

### G9 — arbitrary grouping
Different binary tree shapes may represent the same selected leaf set unless the project later requires canonical grouping. Pass 3 must determine whether multiple shapes are acceptable structure or an unresolved canonicalization problem.

### G10 — N-D projection
The recursively grounded point graph can be projected as dot-to-dot N-D structure without N-D storage.

### G11 — D1 compatibility
All six D1 POINTER rows fit one binary physical constructor.

### G12 — whole-prefix witness
D1 0010 remains the finite whole-prefix reach witness.

---

## 12. Falsifier board

| ID | Falsifier | Consequence |
|---|---|---|
| F3-A | H4 conflicts with universal LAND / first occurrence behavior | unseen-root rule stays open |
| F3-B | arbitrary portion grounding requires a new row kind | reject construction |
| F3-C | binary Join cannot represent arbitrary finite samples recursively | do not close GROUND arity |
| F3-D | D1 requires more than one physical POINTER constructor | retain multiple constructors / blocker |
| F3-E | H6 requires one global row per cardinality | document collapse conflict; do not reinterpret silently |
| F3-F | sample size cannot be defined without stored metadata | keep size as construction/read property or OPEN |
| F3-G | n+1 requires editing prior sample rows | reject; Rule Zero breach |
| F3-H | recursive points cannot reproduce D1 0007/0009/0010 | reject N-D grounding mapping |
| F3-I | N-D dot representation requires dimension state in Core | reject; projection boundary breach |
| F3-J | binary Join would silently close all POINTER arity beyond human/source warrant | narrow closure to GROUND or retain Q2 |
| F3-K | multiple grounding trees for same sample are forbidden by a source | canonicalization becomes required blocker |
| F3-L | sample selection remains unstated after H5/H6 | record it as the final emission residual rather than claiming full closure |

---

## 13. Arity decision tree

Pass 3 must produce an explicit ruling table.

### Case A — H5/H6 establish binary n+1 Join

Then:
- RootTouch arity = 2.
- Ground Join arity = 2.
- All six D1 POINTER rows share binary physical shape.
- Q2 may close **for the known Core constructors**.
- Do not rewrite law until law station handoff.

### Case B — H5/H6 establish only "sample becomes point" but not physical Join arity

Then:
- retain general k>=1;
- binary D1 remains bounded evidence;
- n+1 construction stays semantically defined but encoding arity remains open.

### Case C — H6 means direct n-ary row per sample

Candidate:

\[
\mathsf{Ground}(S)
=
\mathsf{POINTER}(s_1,\ldots,s_n).
\]

Pass 3 must test this against:
- D2 / D1 binary evidence;
- H5 "any portion";
- "n+1";
- no extra machinery.

No preference may be hidden.

---

## 14. "Own row per sample size" interpretation test

### Interpretation I — construction ladder

For a chosen sample:

    size 1 : existing point x1
    size 2 : p2 = Join(x1,x2)       new row
    size 3 : p3 = Join(p2,x3)       new row
    ...
    size n : pn                     own row

Compatible with n+1, binary D1, and recursive points.

### Interpretation II — branch/tree scales

Two already-grounded sub-samples can be joined:

    pA = point for portion A
    pB = point for portion B
    p  = Join(pA,pB)

The new row represents the combined portion.

Compatible with D1's branched structure.

### Interpretation III — one registry row per number n

    sample-size-2 row
    sample-size-3 row
    ...

Expected to violate no-collapse because many distinct samples have the same size.

Pass 3 should reject III unless direct human wording requires it.

---

## 15. Planned model changes on execution

If tests pass, Pass 3 may update only maps-owned surfaces.

### docs/math-execution-model.md

Planned edits:

1. Close post-seed unseen-word boundary:
   - unseen arrival becomes root.
2. Replace abstract GROUND GAP with a tested Join/sample construction if justified.
3. Add:
   - Point / Join vocabulary;
   - sample / sample-size read vocabulary;
   - induction theorem for finite sample representability;
   - D1 replay under Join;
   - N-D projection interpretation.
4. Narrow remaining blocker to sample-selection / canonicalization if those remain.
5. Update Q2 status only to the evidence strength Pass 3 proves.
6. Keep no-second-store / append-only / projection boundaries.

### docs/plans/math-execution-root-touch-fold-pass-3-findings.md

Must contain:
- H4-H6 evidence separation;
- sample interpretation verdict;
- G1-G12 proof board;
- D1 replay;
- arity decision;
- exact remaining pointer-emission blocker;
- next law / manifest / global-ASCII handoff.

### plan + index

Status/receipt and plans README only.

---

## 16. Must not edit in Pass 3

Do not edit:

- docs/pointer-emission.md;
- docs/systems-manifest.md;
- docs/systems-manifest-ascii.md;
- Graphics / graphics ASCII;
- old Pass 1/2 findings;
- environment E1-E10;
- reduction execution model;
- clipboards;
- law / AGENTS / CONTRIBUTING;
- src/ / Cargo.

Pass 3 is mathematical-model work on maps only.

---

## 17. Expected result

Expected, not yet tested:

1. H4 closes the unseen-word structural branch completely:
   - unseen arrival -> new WORD -> that row is root.
2. Physical grounding can be expressed by one binary constructor:
   - Join(a,b) -> one POINTER row.
3. RootTouch is a special operand-selection case of Join.
4. D1's other pointers are Ground Join cases.
5. Repeated Join proves any finite pre-existing sample / portion can become one addressable point.
6. Each successive sample-scale point occupies its own row.
7. D1 0010 is one finite whole-prefix example.
8. Dot-to-dot N-D is a projection of recursive point participation, not storage.
9. The only remaining emission question may reduce to:
   - **which portions should be sampled/joined at each punch-card step?**
10. If H5/H6 already determine that selection sufficiently, the model-side pointer-emission blocker may be mathematically closable in this pass.

**Actual:** NOT TESTED.

---

## 18. Stop condition

Pass 3 stops when:

- H4 unseen-root rule is tested and either formalized or falsified;
- sample, point, sample size, and own-row have non-collapsing definitions;
- Interpretations I/II/III are compared;
- binary Join is either proved sufficient or rejected;
- G1-G12 all have results;
- D1 is replayed under the construction;
- Q2 closure scope is explicit;
- N-D mapping remains projection-only;
- exact residual pointer-emission blocker is named;
- no law/source/global-ASCII edit occurs;
- no src/;
- then STOP.

## Steward test

A point is still Lace. A point can stand for a larger piece of Lace because its backward references reach that piece. Two already-existing pieces can be joined only by adding more Lace, never by rewriting either one. Repeat that construction and a chosen finite portion becomes one addressable point. Draw those points and their participations however many dimensions you need; the drawing is still only a view of the same one-dimensional strand.
