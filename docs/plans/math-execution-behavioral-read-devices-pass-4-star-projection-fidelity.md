# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 4 star / route / projection fidelity audit

**Status:** EXECUTED PASS-4 ARTIFACT.
**Execution base:** ad764786618f9bd62838e6685a5ca54d748c5b0e.
**Source court:** Graphics A–D, reread directly from the canonical supplied PNGs.
**Purpose:** test whether current star/search/projection mathematics preserves the graphics' distinct passes, routes, threading, route families, and no-collapse boundaries.
**Implementation:** none.

---

## 1. Root is not the star

Graphic D5 says repeated occurrences add passages through the same formation and explicitly says:

> The star is not a point.

Graphics A5/A12 and B3/B9 also show the star as an accumulating formation containing many distinct passages.

Current model uses:

\[
Root_L(v)
\]

as a stable anchor.

That is lawful only under:

\[
\boxed{
Root(v)\neq FullStar(v).
}
\]

Call this **STAR-1**.

### Role split

- **Root**: one stable address/anchor for the word identity under current HUMAN/MODEL law.
- **StarWords**: set of WORD occurrence positions.
- **FullStar**: source-required formation containing distinct occurrences plus retained participation/path structure associated with those occurrences.

No new stored Star object is admitted.

FullStar is a read concept, not a second store.

---

## 2. Occurrence membership is not full star formation

Current:

\[
StarWords_L(v)
=
\{i\mid e_i=(WORD,v)\}.
\]

This is useful and faithful as an occurrence set.

But A12/B9/D5 require more:
- distinct passes;
- different routes;
- later participation;
- crossings/threading;
- context preserved without merge.

Therefore:

\[
\boxed{
StarWords(v)
\neq
FullStar(v)
}
\]

whenever the star has any retained participation beyond isolated WORD occurrences.

This is not a defect in the set definition.

It is a fidelity boundary on how the set may be used.

---

## 3. Reach is ancestry membership only

From the D1 path audit:

\[
ReachMembership
\neq
PathMultiplicity.
\]

The source's path-rich claims include:
- A8 distinct paths;
- A12 many distinct passes/directions/contexts;
- B9 many passes enter/loop/cross/exit;
- C8 richer structure from many revisits.

Therefore Reach can answer:

> which retained rows lie in recursive ancestry?

It cannot, by itself, answer:

- how many distinct routes exist;
- which route each pass follows;
- whether two routes share a segment;
- route-family labels;
- 3D over/under/crossing geometry.

### Verdict

**REACH VALID AS MEMBERSHIP ONLY.**

Any source-facing read that requires path distinctions must preserve ordered witness paths/frontiers rather than flattening to Reach.

Current S3.6 SearchHandle/path-frontier machinery is compatible with this requirement because it preserves explicit path witnesses and does not create authority.

---

## 4. Sequence route must use WORD trace, not every row

A4/B5/C2 say exact word arrival order is the sentence/document route.

Graphic D shows POINTER rows may interleave with WORD rows.

Therefore define the derived WORD trace:

\[
WordTrace(L)
=
(i_1,\ldots,i_k),
\]

where:

\[
i_1<\cdots<i_k
\]

and each:

\[
e_{i_j}\text{ is WORD}.
\]

The corresponding value trace is:

\[
ValueTrace(L)
=
(v_{i_1},\ldots,v_{i_k}).
\]

This distinction prevents:

~~~text
array adjacency
=
word adjacency
~~~

when POINTER rows are interleaved.

It does not add sentence/document boundary rows.

---

## 5. Threading is richer than one edge

B7 says a new occurrence threads through existing 3D structure rather than merely attaching to the outside.

B9/A12 show accumulated multi-pass traffic.

D gives only the authoritative 1D row/reference data.

Therefore the current project must keep two claims distinct:

### Storage encoding claim

A retained relation/touch can be encoded by a POINTER row under current HUMAN/MODEL law.

### Full visual/structural readout claim

A complete source-faithful 3D/N-D view must preserve enough recorded route/path distinction to avoid the flat-edge collapse forbidden by B10/B11/C11.

One RootTouch row is therefore not the complete visual description of “threading through a star.”

It is a retained event/participation fact that later reads may incorporate.

---

## 6. VIEW-1 — flat graph is not full Lace structure

B11 and C11 directly state that a flat graph view is only a shadow and loses:
- depth;
- crossings;
- loops;
- threading/context;
- future participation.

Therefore:

\[
\boxed{
FlatGraphView(L)
\neq
FullLaceStructure(L).
}
\]

This is **VIEW-1** and is direct GFX-backed fidelity law.

A flat graph may remain a useful view.

It may not be called the full thing.

---

## 7. Projection is a family/policy, not a unique source geometry

Current notation:

\[
\pi:L\to View
\]

is safe only if \(\pi\) denotes a selected projection policy.

D4 says a 3D visualization is generated from the 1D data and references.

B11/C11 say some projections lose essential distinctions.

The graphics do not define:
- one unique embedding algorithm;
- exact coordinates;
- camera;
- spline/path layout;
- crossing resolution;
- metric geometry.

Therefore the more explicit mathematical form is:

\[
\pi_\kappa:L\to View_\kappa,
\]

where \(\kappa\) is a read/render policy.

Admissible source-faithful policies form a family:

\[
\Pi(L)
=
\{\pi_\kappa(L)\mid \kappa\text{ satisfies source fidelity constraints}\}.
\]

No \(\kappa\) becomes Core state.

### Required fidelity constraints

At minimum, a view claiming to preserve the corresponding source distinction must not fabricate or erase:
- occurrence identity;
- retained POINTER participation;
- path multiplicity it claims to show;
- route-family labels it claims to show;
- order/provenance it claims to show.

A visualization may intentionally omit some distinctions if it is labeled as a lossy view.

---

## 8. C6 route families

C6 names:
- dictionary route;
- document route;
- conversation route;
- provenance route

as independent participation families over the same star.

This source establishes that these are meaningful **view/relational family labels**.

It does not establish:
- four row kinds;
- four dimension columns;
- stored route-family metadata;
- a discriminator algorithm.

Therefore:

\[
\boxed{
RouteFamilyLabel
\neq
RowType.
}
\]

and the exact family discriminator remains:

\[
[OPEN].
\]

A later provenance system may supply enough evidence to label a route family in a view.

That does not change Graphic D.

---

## 9. Graphic-C 2D is not H7–H12 sampling 2D

### Graphic C

C3's 2D object is a projection/presentation of already-retained participation.

It can expose:
- crossings;
- adjacency;
- co-occurrence

while hiding depth/over-under/true structure.

Call this:

\[
View^{GFX}_{2D}.
\]

### H7–H12

The later position×scale surface:

\[
\mathcal S[n,t]
\]

is a HUMAN/DERIVED working computation used to discover multi-scale structural evidence.

Call this:

\[
Sample^{H}_{2D}.
\]

Therefore:

\[
\boxed{
View^{GFX}_{2D}
\neq
Sample^{H}_{2D}.
}
\]

Both are non-authoritative.

Only the latter is sampling/discovery machinery.

---

## 10. C2 time is not Coffee Cup time

C2 uses time/order language for the 1D presentation.

That is:

\[
\text{append/order coordinate}.
\]

Coffee Cup's intervention timing can depend on:
- physical elapsed time;
- social timing;
- remaining affordances.

S10 already refuses to derive that from Lace index distance.

Pass 4 records the explicit false friend:

\[
\boxed{
C2OrderTime
\neq
CoffeeCupEventTime.
}
\]

---

## 11. N-D participation

C5/C7/C8 and D6 support:

- independent ways the same wire participates;
- later participation in earlier participation;
- relation-to-relation recursion;
- denser/revisitable structure from repeated threading;
- no N-D store.

Current binary POINTER recursion is compatible with that source capability.

But:

\[
\text{POINTER recursion}
\]

does not uniquely determine:

\[
\text{visual N-D coordinate system}.
\]

Thus current model may derive participation topology and path structure while leaving geometry/rendering policy open.

---

## 12. Source meaning scope

Graphic A's header says:

> Meaning does not exist. Only structure, sequence, and participation.

A13/B10/C5/C9/C12 repeatedly sharpen this source behavior as:
- no meaning stored;
- definitions are routes, not stored glosses;
- dimensions add participation, not meaning.

Current project law separately classifies HCC-A as a conceptual reference describing holder-local story/meaning/emotion/identity behavior outside Graphic D.

Pass 4 therefore records the current scope court explicitly:

### Within Lace

\[
\boxed{
LaceContainsNoStoredSemanticMeaning.
}
\]

Lace contains:
- structure;
- sequence;
- participation;
- raw values/occurrences/references.

### Outside authoritative Lace

A later conceptual behavioral device may have a local state variable called:

\[
Meaning.
\]

That is not:
- a Lace row;
- a Lace field;
- a source claim that meaning is stored in Lace;
- a reinterpretation of Graphic A.

### Scope verdict

The literal Graphic-A phrase is preserved as a statement of the Lace model's ontology.

The later HCC Meaning variable is an OVERLAY conceptual state outside Lace.

No source phrase is silently weakened into “Lace stores meaning somewhere else.”

---

## 13. Abstract unbounded growth vs finite realization

A/B/C say the strand grows indefinitely/without bound.

At the mathematical level:

\[
L_n
\]

is finite at each prefix, while the abstract transition system contains no source-specified terminal \(n\).

A finite physical implementation must instead declare:

\[
N_{max}<\infty
\]

and refuse before violating:
- permanent indices;
- append-only history;
- no reuse/renumber.

Therefore:

\[
\boxed{
NoSourceTerminalBound
\neq
InfinitePhysicalCapacity.
}
\]

and:

\[
\boxed{
FiniteImplementationRefusal
\neq
SourceHistoryRewrite.
}
\]

Pass-6 finite-domain law is compatible with source-unbounded abstract growth when read at these distinct levels.

---

## 14. S9–S11 overlay court

### S9

Read-only behavioral devices are OVERLAY.

They may:
- observe Lace;
- keep local state;
- produce external outputs.

They may not:
- become a Core row;
- redefine star;
- define RM-A;
- inject Meaning into Lace.

### S10

Observability/epistemic stamps are OVERLAY.

They classify claims made by devices.

They are not source mechanisms shown in A–D.

### S11

Technical realization/capability graph is OVERLAY.

Wasm/GPU/WebNN/Rust/Cargo are implementation candidates/constraints.

The graphics select none of them.

### OVERLAY-1

\[
\boxed{
ReadOnlyOverlay(L)
\not\Rightarrow
NewLaceMechanism.
}
\]

S9–S11 pass this court.

---

## 15. Star / route / projection verdicts

### STAR-1

\[
\boxed{
Root(v)\neq FullStar(v).
}
\]

**PROVED within source/model typing.**

### Occurrence set

\[
\boxed{
StarWords(v)\neq FullStar(v)
}
\]

once additional retained participation exists.

### PATH-1

\[
\boxed{
ReachMembership\neq PathMultiplicity.
}
\]

**PROVED from D1 bounded counterexample.**

### VIEW-1

\[
\boxed{
FlatGraphView\neq FullLaceStructure.
}
\]

**DIRECT GFX-backed.**

### Projection geometry

**NON-UNIQUE / POLICY-DEPENDENT.**

The source constrains fidelity but does not select one geometry.

### C6

**ROUTE-FAMILY LABELS ARE VIEW/RELATIONAL LABELS, NOT ROW TYPES.**

### Sampling

**GRAPHIC-C PROJECTION 2D != H7–H12 SAMPLING 2D.**

### Meaning

**LACE HAS NO STORED SEMANTIC MEANING; HCC MEANING REMAINS EXTERNAL OVERLAY STATE.**

### Unboundedness

**ABSTRACT NO-TERMINAL-BOUND IS COMPATIBLE WITH FINITE SAFE-REFUSAL IMPLEMENTATION.**
