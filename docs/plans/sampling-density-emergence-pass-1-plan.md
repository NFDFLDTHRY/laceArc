# SAMPLING / DENSITY / EMERGENCE campaign — Pass 1 PLAN

**Status:** **EXECUTED 2026-09-21 — PASS 1 COMPLETE.**
**Subtitle:** 1D LACE → 2D SAMPLING SURFACE → CROSS-SCALE POINTER MAP
**Planning station:** maps (Astra-sampling).
**Original campaign-plan commit:** de1d61d34d2f9360656bc4b588087f03e673112d.
**Replan base:** a421792e8a597c3d1e4de0fa658040b55ff8d94b.
**Replan maps claim:** 5e08a1decb06c0c6d155d47f91b252eca93ded0c.
**Depends on:** current Lace law/model, ROOT / TOUCH / FOLD Passes 1–6 as dated history, gate-question-surface Passes 1–3, Graphics A–D, and the direct human rulings H7–H12 below.
**Implementation:** no src/. No Cargo. No Rust. No sampler stub.
**Law:** no law edit in Pass 1.
**Acceptance:** absent.

This is a new campaign.

The first draft correctly abandoned the arbitrary-relation chooser, but it still treated the 2D sampling surface as partly open.

The human has now fixed that architecture.

---

## 0. Human rulings that define the campaign

### H7 — relationships are not chosen first

Human:

> “O I didn't intend to choose. If it exists a touch, if it doesn't root, the n+1 sampling will all text to like a heat map show the system where to make touches, the star system is view that might be useful to enable search for larger non-word linked patterns which will show up in text.”

Current allowed reading:

- no semantic/manual arbitrary chooser precedes relation structure;
- recurrence decides root-vs-touch behavior at the word level;
- n+1 sampling operates over growing text/Lace;
- repeated structure accumulates something like density;
- star-like views are useful for observing/searching that structure;
- larger non-word structures emerge from usage patterns.

### H8 — relationships are discovered through growth

Human:

> “The sampling itself. You don't choose the relationships, you find them over time as lace grows.”

This is the campaign anchor.

The target machine is not:

\[
\text{choose relationship}
\to
\mathsf{Join}.
\]

It is:

\[
\text{growth}
\to
\text{sampling}
\to
\text{repeated structure}
\to
\text{relational map}.
\]

### H9 — star is a view / search surface

The star system is useful for observing density and searching larger patterns.

It is not itself the chooser, not a second authoritative store, and not a semantic object.

### H10 — durable history is 1D

Human:

> “Entries and pointers get laid down on the 1D array…”

This is now a starting invariant.

Authoritative retained Lace remains:

\[
L=(e_0,e_1,\ldots)
\]

with durable WORD and POINTER rows.

The sampling campaign must not move durable truth into the 2D surface.

### H11 — sampling creates a 2D array

Human:

> “…the sampling creates the 2D array…”

This is no longer a candidate.

Pass 1 must model a derived 2D sampling surface.

The expected axes are:

\[
\boxed{
\text{Lace/text position}
\times
\text{sample scale}
}
\]

but the exact coordinate definition is still under test.

### H12 — pointers can connect any sampling level

Human:

> “…enabling pointers at any level.”

Together with the preceding clarification:

> a short paragraph or sentence can link to the corpus of priors such as APPLES; recurring usage patterns may connect at any layer of the n+1 sampling; the POINTERs are the relational map.

Current campaign invariant:

\[
\boxed{
\text{POINTER operands are not restricted to equal sample scale.}
}
\]

A retained relation may connect structures corresponding to:

- word ↔ word;
- word ↔ phrase-scale structure;
- phrase ↔ sentence;
- sentence ↔ paragraph;
- paragraph ↔ large prior formation;
- small-n ↔ large-n;
- grounded point ↔ grounded point.

The retained POINTER row still lands on the 1D Lace.

---

## 1. Architecture fixed before Pass 1 begins

The architecture under investigation is now:

    AUTHORITATIVE RETAINED HISTORY

    1D Lace
    ---------------------------------------------------->
    WORD  WORD  POINTER  WORD  POINTER  WORD  POINTER ...
      |
      | derive samples across position and scale
      v

    2D SAMPLING SURFACE

                    text / Lace position -------------------->

    scale n     [ sample ][ sample ][ sample ] ...
    scale 5       [      sample      ] ...
    scale 4        [     sample     ] ...
    scale 3         [   sample   ] ...
    scale 2          [ sample ] ...
    scale 1           [cell][cell][cell]...
        ^
        |
        sample scale

      |
      | recurrence / overlap / structural correspondence
      | can be discovered across any scale
      v

    CROSS-SCALE RELATIONAL CANDIDATES

      |
      | retained relations become POINTER rows
      v

    1D Lace grows again
      |
      +--------------------------> sample again

This feedback loop is now the campaign object.

### Hard distinction

The 2D sampling array is **working/derived machinery**.

The 1D Lace is **durable authoritative history**.

The 2D surface may enable a POINTER append, but the POINTER itself is retained on the 1D array.

Pass 1 must make this distinction mathematically exact.

---

## 2. What Pass 1 is actually chasing

The new campaign question is:

\[
\boxed{
\text{How is the 2D n+1 sampling surface constructed from the 1D Lace?}
}
\]

and then:

\[
\boxed{
\text{How do structures on that surface become cross-scale POINTER relations?}
}
\]

More concretely, Pass 1 must identify:

1. what one 2D sample cell denotes;
2. what the horizontal coordinate denotes;
3. what the vertical n coordinate denotes;
4. how row n+1 is built from row n and the growing text;
5. how two sample cells are recognized as recurring/corresponding;
6. whether observation alone creates a retained point;
7. what event causes a POINTER to be laid down on 1D;
8. how structures at different n levels become addressable to the same binary Join machinery;
9. how accumulated pointer structure becomes density / heat-map evidence;
10. how star/N-D/search views read this without becoming authoritative storage.

Pass 1 maps these questions and kills invalid candidate classes.

It does not choose final formulas unless the evidence already forces them.

---

## 3. Pass 6 is now a dated wrong-turn, not the campaign target

ROOT / TOUCH / FOLD Pass 6 ended with:

\[
\operatorname{Origin}(\rho)=[GAP].
\]

That was a disciplined answer to the then-assumed problem:

> an arbitrary relation assertion exists; who originated it?

H7–H12 change the premise.

There is no intended arbitrary semantic relation assertion waiting for provenance.

Instead:

\[
\text{2D sampling}
\to
\text{repeated structural correspondence}
\to
\text{relational pointer map}.
\]

### Historical discipline

Do not delete Pass 6.

Pass 1 must record it as:

**HIST — correct work on a wrong problem statement.**

Its useful surviving results include:

- no semantic chooser;
- no hidden Contract-II relation payload;
- no Layer-III write authority;
- D1 does not itself provide a chooser;
- all-portions automatic materialization is not justified.

Its active Origin(rho) framing is expected to require later law reconciliation after the sampler is mapped.

Pass 1 does not edit law.

---

## 4. The 1D / 2D split

### 4.1 1D Lace

Durable:

- WORD entries;
- POINTER entries;
- append order;
- permanent indices;
- recursive pointer ancestry.

No rewrite. No delete. No second authoritative relational store.

### 4.2 2D sampling array

Derived from the 1D Lace.

Its provisional mathematical form is:

\[
\mathcal S[n,x]
\]

where:

- \(n\) is sample scale;
- \(x\) is a position coordinate.

Both meanings require exact definition.

The 2D array is not merely a pretty visualization.

It is working sampling machinery.

But it must also not become a competing persistent truth store.

### 4.3 Retained pointer feedback

When the sampling mechanism establishes a structural relation that should persist, the relation is encoded by the existing 1D constructor:

\[
\mathsf{Join}(a,b).
\]

The new POINTER row enlarges \(L\).

The next sampling state is derived from the enlarged \(L\).

Thus:

\[
L_t
\to
\mathcal S_t
\to
\text{retained POINTER append}
\to
L_{t+1}
\to
\mathcal S_{t+1}.
\]

Pass 1 must determine which arrow is still underspecified.

---

## 5. 2D coordinate question

The user has fixed the existence of the 2D sampling array.

Pass 1 must now determine the axes precisely.

### X-A — horizontal coordinate = WORD-arrival position

Only word occurrences index the horizontal axis.

POINTER rows do not advance text position.

### X-B — horizontal coordinate = full Lace index

WORD and POINTER rows both advance x.

### X-C — horizontal coordinate = source-text position mapped into Lace

Text position is a separate derived coordinate pointing into the 1D rows.

### X-D — horizontal coordinate = sample endpoint

A cell \(\mathcal S[n,x]\) denotes the scale-n sample ending at x.

### X-E — horizontal coordinate = sample start

A cell denotes the scale-n sample starting at x.

### X-F — span coordinate

A cell is best defined by a source span \([i,j]\), and the rectangular array is only one projection of spans.

Pass 1 does not assume the answer.

It must report which candidates are compatible with H10–H12 and D1.

---

## 6. What does one cell mean?

Candidate cell semantics:

### C-A — ordered text window

\[
\mathcal S[n,x]
=
(w_x,\ldots,w_{x+n-1})
\]

or endpoint equivalent.

### C-B — ordered root sequence

Repeated WORD occurrences are normalized to roots for sample identity.

### C-C — grounded point representing that sample

Every cell has a corresponding Lace point.

This is a strong claim and must be tested against D1 row counts.

### C-D — ephemeral sample descriptor

The cell denotes a sample without requiring a retained Lace row.

Only some cells later correspond to retained points.

### C-E — set of addressable structures overlapping that span

A cell may contain multiple existing points/relations.

Potentially useful but may be too rich.

### C-F — recursive current-scale structure

A scale-n cell is built from lower-scale cells/grounded points.

This is closest to the n+1 intuition, but its exact recurrence remains OPEN.

The first major test is whether **every cell must be retained**.

D1 strongly constrains that.

---

## 7. Sampling observation is not automatically a retained append

Pass 1 must preserve three separate acts:

### O1 — sample exists on the 2D working surface

The sampler can inspect/construct the scale-n sample.

### O2 — recurrence / correspondence is detected

The current sample matches or overlaps prior structural material.

### O3 — relation is retained

A POINTER row is appended to the 1D Lace.

These are not assumed equivalent.

D1 makes this distinction necessary because not every obvious adjacent WORD pair has an explicit POINTER.

The campaign must determine:

\[
O1\to O2?
\]

and:

\[
O2\to O3?
\]

without inserting semantic choice.

---

## 8. What does n mean?

H11 fixes n as an axis of the 2D array, but not yet its exact measure.

Candidates:

### N-A — number of source WORD occurrences in the sample

\[
n=1
\]

word-scale,

\[
n=2
\]

two-word structure, etc.

### N-B — number of current-scale child structures

A higher cell can combine two or more lower-level points.

### N-C — source-text span

n means span length in arrival positions.

### N-D — sample cardinality in addressable Lace points

The older Pass-3 definition.

### N-E — recursive scale level

n denotes hierarchy level, not literal member count.

### N-F — mixed

At level 1 the units are words; higher levels may be grounded structures.

Pass 1 must not silently equate:

- n;
- POINTER arity;
- Reach size;
- tree depth;
- text span.

Binary Join can connect structures of arbitrarily different n.

---

## 9. n→n+1 recurrence candidates

### R-A — overlapping window extension

\[
\mathcal S[n+1,x]
=
\mathcal S[n,x]
+
\text{one adjacent word}.
\]

Classic sliding hierarchy.

### R-B — neighboring sample composition

\[
\mathcal S[n+1,x]
=
F(\mathcal S[n,x],\mathcal S[n,x+1]).
\]

This naturally creates overlap pyramids.

But F must not smuggle in meaning.

### R-C — grounded-point extension

\[
P_{n+1}
=
\mathsf{Join}(P_n,p)
\]

for a sample already retained.

This is valid construction machinery but does not alone define the entire 2D sampling surface.

### R-D — all overlapping windows exist ephemerally; only recurrence is retained

The full 2D array can exist as derived computation without writing every cell to Lace.

This is now a major candidate because it respects H10/H11 and may fit D1 sparsity.

### R-E — recurrence-promoted hierarchy

Scale n+1 is only formed/retained when lower-scale recurrence provides evidence.

This may fit the heat-map idea, but any trigger/threshold is OPEN.

### R-F — recursive sparse graph of sample cells

The 2D array provides candidate spans/scales, while POINTER rows create the sparse relational map among them.

This is architecturally attractive but must be tested rather than assumed.

---

## 10. Cross-scale addressability — now a fixed requirement

H12 says POINTERs can connect structures at any sampling level.

Therefore Pass 1 must define how a 2D sample becomes an operand of the existing 1D Join.

Possible mechanisms:

### A-A — every retained sample has a Lace point

Cross-scale pointering references those points directly.

### A-B — only recurring samples receive retained Lace points

Ephemeral cells become addressable only after promotion.

### A-C — sample corresponds to an existing grounded point whose Reach covers its span

No new sample row type needed.

### A-D — sample span is resolved at pointer time into an existing point

Potentially requires deterministic grounding before pointer append.

### A-E — pointer may target a point at any scale because scale is not stored in the pointer at all

Scale belongs to the 2D interpretation/view, while the operand is just a Lace index.

This is likely compatible with current binary Join, but it is still an inference until Pass 1 tests it.

### Cross-scale invariant

No rule may require:

\[
n_a=n_b
\]

for:

\[
\mathsf{Join}(a,b).
\]

Equal-scale-only POINTERs violate H12.

---

## 11. APPLES specimen — campaign thought experiment

Pass 1 must use one concrete multi-scale specimen.

Suppose prior text repeatedly contains APPLE in usage patterns.

The corpus may have recurring samples such as:

- APPLE;
- RED APPLE;
- APPLE PIE;
- APPLE TREE;
- EAT AN APPLE;
- sentence-scale apple usage;
- paragraph-scale structures involving apples.

A new paragraph arrives.

Its 2D sampling surface contains cells across many n values.

Pass 1 asks:

1. which cells can correspond to prior APPLE-associated structure?
2. what counts as the same recurring structure?
3. can a paragraph-scale cell connect to a word-root/star formation?
4. can a paragraph-scale cell connect to a prior sentence-scale grounded point?
5. can n=20 connect to n=1?
6. what 1D index actually becomes each Join operand?
7. does recurrence create a new point, a pointer to an existing point, or both?
8. how does density accumulate without a separate score store?

No semantic statement “this paragraph is about apples” may be used.

Only recurring structural usage is allowed.

---

## 12. Sample identity / recurrence comparator

To find recurrence over the 2D surface, the system needs a comparator.

Candidates:

### E-A — exact ordered WORD values

Same text sequence.

Depends on G1 equality.

### E-B — exact ordered root sequence

Occurrence-independent lexical recurrence.

### E-C — exact pointer/word structural signature

A sample is identified by topology.

### E-D — exact grounded-point ancestry

Two cells recur if they resolve to identical prior grounded structure.

### E-E — overlap of retained pointers

Recurrence is detected through already-shared relational paths.

### E-F — partial overlap

Heat-map-like structural density may not require exact equality.

But overlap measure is OPEN.

### E-G — semantic similarity

FORBIDDEN by default.

No embeddings / meaning model enters Core.

Pass 1 must distinguish:

\[
\text{exact recurrence}
\neq
\text{structural overlap}
\neq
\text{semantic similarity}.
\]

---

## 13. Root / touch at higher scales

Word-level rule:

    unseen WORD -> root
    seen WORD   -> RootTouch

The new 2D hierarchy raises a sharper question:

> Does each recurrent sample structure have an analogous first-seen anchor and later touch?

Possibilities:

### HT-A — recursive root/touch identity

First retained occurrence of a sample-scale pattern becomes its root point; later recurrences touch it.

### HT-B — no special higher-order root object

The relational density itself is enough; search finds recurring formations without one canonical sample root.

### HT-C — existing grounded point acts as anchor

No new root type. A prior grounded point is simply reused as the recurrence target.

### HT-D — different scales use different anchoring rules

Dangerous unless source/human ruling requires it.

Pass 1 must test HT-A against D1:

If every unique sampled window immediately acquires a retained root point, D1 may be too sparse.

Therefore the distinction between **ephemeral 2D cell** and **retained 1D anchor** is central.

---

## 14. Heat map means density on the sampling/relational structure

The human says “like a heat map.”

This is not a literal persistent heat-map object.

Pass 1 maps derived density candidates:

### H-A — recurrence count per 2D cell pattern

How often equivalent cells recur.

### H-B — retained-pointer incidence

How many retained relations involve the structure.

### H-C — cross-scale connectivity

How many n levels connect into/out of the structure.

### H-D — route multiplicity

How many source-text routes revisit the formation.

### H-E — shared ancestry overlap

How much recursive Reach is shared among retained points.

### H-F — multi-scale density field

A derived measure over:

\[
(n,x)
\]

where “hot” means repeated participation across both position and scale.

### H-G — relational-map density

Density is not a separate score at all; it is visible from the pointer topology itself.

Pass 1 must decide what evidence supports each reading.

Any cached density must remain disposable/derived.

---

## 15. The 2D array is not Layer III

This is a major correction to the first draft.

### 2D sampling array

Working computational structure produced by sampling the authoritative 1D Lace.

It may participate in deciding/deriving which retained structural relation is written.

It is not merely a display.

### Layer III views

Star / heat-map visualization / N-D visualization / search interface may read:

- 1D Lace;
- derived 2D sample structure;
- derived density;
- pointer topology.

But Layer III remains non-authoritative and cannot write Core truth.

Thus:

\[
L
\to
\mathcal S
\to
\text{Core-derived relation evidence}
\to
\text{POINTER append to }L
\]

is potentially legal working machinery,

while:

\[
\text{GUI heat map}
\to
\text{POINTER append}
\]

remains forbidden.

Pass 1 must preserve this boundary.

---

## 16. POINTER is the relational map

H12 fixes a central interpretation:

\[
\boxed{
\text{POINTER topology is the retained relational map.}
}
\]

The 2D sampling surface exposes candidate recurring structures across scale.

The POINTER rows preserve discovered relationships on the 1D Lace.

Therefore no second graph database is required.

A pointer can connect:

\[
\mathcal S[n_a,x_a]
\leftrightarrow
\mathcal S[n_b,x_b]
\]

only after those structures resolve to addressable Lace points:

\[
a,b<|L|.
\]

The physical stored relation remains:

\[
\mathsf{Join}(a,b).
\]

Sampling level is interpretive/derived context, not necessarily a stored pointer field.

Pass 1 must test whether any extra scale field is actually necessary.

Default answer: do not add one.

---

## 17. Higher dimensions from the end

The campaign now approaches N-D from the resulting relational system.

### 1D

Durable chronological Lace:

\[
WORD|POINTER|WORD|POINTER|\cdots
\]

### 2D

Derived sampling surface:

\[
\text{position}\times\text{sample scale}.
\]

### Higher-D

Cross-scale and recursive POINTER relations among structures exposed by the 2D sampling system.

POINTER→POINTER enables relations among already-retained relations.

Star/N-D views expose the resulting density/topology.

Pass 1 must test this mapping against Graphics C/D without claiming that Graphic C literally specifies the new 2D sampling algorithm.

Authority discipline matters:

- H11/H12 = human ruling;
- C/D = compatibility evidence;
- exact algorithm = OPEN.

---

## 18. D1 obligations under the new model

D1 must be replayed as a sparse retained trace of a richer 2D sampling process.

### D1-1

The sampler may observe more samples than D1 retains as POINTERs.

This is now an explicit candidate, not an assumption.

### D1-2

PIE repetition must still produce RootTouch 0004.

### D1-3

DESSERT→PIE has no explicit pointer row.

Any model saying every sampled pair is retained fails.

### D1-4

WHOLE→CUSTOMER has no explicit pointer row.

Same constraint.

### D1-5

0002 and 0006 must be explainable as retained relations discovered from sampling without semantic choice.

### D1-6

0007, 0009 and 0010 must be explainable as cross-level / relation-of-relation pointering.

### D1-7

No candidate may require equal-scale operands.

### D1-8

No candidate may require one stored row per 2D cell unless D1 can support the predicted rows.

### D1-9

The 2D surface may be denser than the retained 1D relational map.

This is a major hypothesis to test.

---

## 19. Pass-1 candidate matrices

Execution findings must include five matrices.

### M1 — 2D cell semantics

C-A…C-F.

### M2 — axis semantics

X-A…X-F.

### M3 — n meaning

N-A…N-F.

### M4 — recurrence construction

R-A…R-F.

### M5 — addressability / cross-scale pointer bridge

A-A…A-E.

Each row gets:

- R/P/I/HIST/OPEN authority;
- D1 fit;
- H10/H11/H12 fit;
- hidden-state requirement;
- second-store risk;
- whether it forces extra retained rows;
- verdict: ADMIT / BLOCK / REFUTE / OPEN.

---

## 20. New falsifier board

| ID | Falsifier | Action |
|---|---|---|
| **F1-1** | candidate chooses relations semantically | reject |
| **F1-2** | candidate stores durable truth in the 2D array independent of 1D Lace | reject / second authoritative store |
| **F1-3** | candidate treats 2D sampling as mere Layer-III picture | reject; H11 breach |
| **F1-4** | candidate lets Layer III write Core | reject |
| **F1-5** | every 2D cell must append a POINTER/root and D1 lacks rows | refute |
| **F1-6** | every adjacent sampled pair must be retained | refute against D1 |
| **F1-7** | candidate restricts POINTERs to equal n levels | reject; H12 breach |
| **F1-8** | candidate adds sample-scale fields to POINTER without necessity | block |
| **F1-9** | candidate equates n with POINTER arity | reject |
| **F1-10** | candidate needs semantic similarity / embeddings | reject |
| **F1-11** | candidate needs a second graph/meaning store | reject |
| **F1-12** | candidate cannot explain cross-level 0007/0009/0010 | insufficient |
| **F1-13** | candidate cannot resolve a 2D sample to an addressable 1D operand | insufficient |
| **F1-14** | candidate requires hidden persistent sample state beyond reconstructible 2D working structure | block |
| **F1-15** | density cannot be derived from 1D + reconstructed 2D/pointer structure | block / new source needed |
| **F1-16** | higher-order root/touch rule predicts retained rows absent from D1 | refute that rule |
| **F1-17** | Pass-6 Origin(rho) remains necessary after explicit sampling mechanism | record residual precisely rather than force reconciliation |
| **F1-18** | gate-question campaign owns a sub-question | hand off |
| **F1-19** | plan needs implementation to answer | stop |
| **F1-20** | sampling surface cannot be reconstructed after restart from authoritative Lace under a candidate | candidate violates derived-surface premise unless human rules otherwise |

---

## 21. Heat-map / search outputs are downstream readings

Pass 1 must keep:

\[
\text{sampling machinery}
\]

separate from:

\[
\text{search/visualization of its accumulated structure}.
\]

A future star/search tool may ask:

- what repeatedly passes through APPLE?
- what phrase-scale patterns repeatedly connect here?
- what sentence-scale structures share this region?
- which large-n patterns connect to this small-n root?
- what non-word pattern is structurally dense enough to retrieve?

But Pass 1 does not define ranking, UI, API, labels, or thresholds.

Search is downstream of the structural map.

---

## 22. APPLES acceptance specimen

Pass 1 findings must include one worked but non-semantic specimen.

Use a synthetic corpus containing repeated APPLE usage.

Required demonstration questions:

1. Draw the 1D WORD/POINTER history abstractly.
2. Construct the candidate 2D sampling surface for at least n=1…4.
3. Identify which samples repeat exactly.
4. Identify which samples overlap without exact equality.
5. Show how a small-n APPLE anchor could connect to a larger-n sentence/paragraph structure.
6. Show how a large-n current structure could connect to a large prior APPLE formation.
7. Show that the retained relation is still a binary POINTER row on 1D.
8. Show that no semantic statement “about apples” was needed.
9. Show what information a heat-map/star view could display.
10. Identify every still-open rule rather than inventing it.

This specimen is analytical only.

Do not create synthetic Core rows as law unless the candidate explicitly predicts them and D1 constraints allow it.

---

## 23. Pass-1 authority discipline

Every finding must be stamped:

- **R** — direct human rulings H7–H12;
- **P** — Graphics A–D;
- **I** — inference;
- **HIST** — prior campaign record;
- **OPEN**;
- **CONFLICT**.

Key classifications at plan time:

| Claim | Authority |
|---|---|
| relationships are discovered through sampling, not chosen first | **R** |
| WORD/POINTER rows persist on 1D Lace | **R + P-compatible** |
| sampling creates a 2D array | **R** |
| 2D sampling enables POINTER relations at any n level | **R** |
| POINTER rows remain the retained relational map | **R + current D-compatible** |
| cross-scale operands need equal n | **REFUTED by R** |
| exact x-axis definition | **OPEN** |
| exact n meaning | **OPEN** |
| exact cell content | **OPEN** |
| exact n+1 recurrence | **OPEN** |
| exact recurrence comparator | **OPEN** |
| exact retain-vs-observe rule | **OPEN** |
| exact density measure | **OPEN** |
| star / heat-map search is downstream view | **R** |
| Pass 6 Origin(rho) is current active law | **HIST / pending later reconciliation under new ruling** |

---

## 24. Pass-1 execution product

Create:

docs/plans/sampling-density-emergence-pass-1-findings.md

Required contents:

1. H7–H12 exact ruling record.
2. old Pass-6 model delta.
3. 1D authoritative-array contract.
4. 2D sampling-array contract.
5. 1D→2D→POINTER→1D feedback diagram.
6. M1 cell-semantics matrix.
7. M2 axis-semantics matrix.
8. M3 n-semantics matrix.
9. M4 n+1 recurrence matrix.
10. M5 cross-scale addressability matrix.
11. sample observation vs retained append distinction.
12. recurrence/equality comparator analysis.
13. higher-order root/touch alternatives.
14. density/heat-map derivations.
15. APPLES worked specimen.
16. D1-1…D1-9 replay.
17. F1-1…F1-20 falsifier results.
18. exact residual equations/questions.
19. recommended Pass-2 mathematical experiment.
20. explicit statement that law was not edited.

---

## 25. Expected Pass-1 residuals

Likely but not yet tested:

### G-S1 — cell definition

What exactly is:

\[
\mathcal S[n,x]?
\]

### G-S2 — x coordinate

WORD position, Lace index, span start/end, or another derived coordinate?

### G-S3 — n coordinate

Text length, recursive scale, point cardinality, or mixed hierarchy?

### G-S4 — recurrence construction

How exactly is row n+1 derived from row n?

### G-S5 — recurrence identity

Exact words, root sequence, pointer topology, overlap, or something else?

### G-S6 — retention rule

When does an observed recurrence become a new POINTER on 1D?

### G-S7 — higher-order anchoring

Does a recurring larger pattern get a retained root-like point?

### G-S8 — density measure

What exact derived property corresponds to “hot”?

### G-S9 — addressability

How does a 2D cell resolve to the 1D index used by Join?

### G-S10 — cross-scale relation

Does Join need any scale metadata at all, or are the operand points sufficient?

Expected answer to G-S10 may be “operand points are enough,” but Pass 1 must test it.

---

## 26. What Pass 1 must not do

Pass 1 does not:

- choose semantic relationships;
- treat the 2D sampling array as optional;
- demote the 2D sampling array to a mere visualization;
- promote the 2D sampling array to a second authoritative durable store;
- require equal-scale POINTER operands;
- add n fields to POINTER by default;
- assume all 2D cells are retained;
- assume all observed samples append;
- assume rolling n-grams without testing;
- assume every higher-order sample gets a root;
- invent recurrence thresholds;
- invent semantic similarity;
- store concepts/entities/phrases as new row types;
- let Layer III write;
- edit pointer-emission.md;
- edit systems-manifest.md;
- rewrite Pass 6 history;
- overwrite gate-question campaign work;
- create src/, Cargo, Rust, tests or branches;
- start Pass 2 automatically.

---

## 27. Stop condition

Pass 1 is complete only when:

- H7–H12 are recorded exactly;
- 1D authoritative persistence is fixed;
- 2D sampling-array existence is fixed;
- position × scale semantics are mapped;
- cross-scale POINTER capability is fixed and tested;
- cell/axis/n/recurrence/addressability candidates are dispositioned;
- observation vs retained pointer append is explicit;
- APPLES specimen is worked without semantic choice;
- D1 is replayed against the surviving candidates;
- all twenty falsifiers are scored;
- exact remaining sampler questions are named;
- no law file changed;
- no implementation artifact exists;
- maps is released;
- then STOP.

## Steward test

The machine is not deciding that APPLES relates to a paragraph.

The 1D history is sampled across position and scale.

The 2D sampling surface exposes recurring structure at many resolutions.

POINTERs retain discovered relationships between addressable structures at any of those resolutions.

Then the enlarged 1D Lace is sampled again.

That loop is the thing Pass 1 must finally make precise.


---

## 28. Execution receipt

Pass 1 executed under maps only.

- maps claim for execution: 815529719cca471e54876b0b4ee8991faa0c6cde
- findings: 9215f775a7c605370451558c64580828fd4e3477
- pointer-emission.md blob remained: 51224368ae966b6c480746925caa2cade970842e
- systems-manifest.md blob remained: 6f0310099cbcf482ad884f653f423b4e806f724b
- gate-question Pass-2 findings blob remained: a3c4ce9faf4054ae7678dfbb0be8fb00aada8b00
- gate-question Pass-3 findings blob remained: 615df14a3b41d9c2ed2375da0738052ee439673d

### Main result

Strongest surviving architecture:

\[
\boxed{
\text{dense derived 2D sampling}
+
\text{sparse retained 1D POINTER map}
}
\]

with:
- 1D Lace = authoritative WORD/POINTER history;
- 2D surface = working position × scale sampler;
- cross-scale relations allowed;
- retained relations return to 1D as ordinary POINTER rows;
- no scale field required in POINTER by current evidence.

### Refuted

- every 2D cell becomes a retained row;
- every sampled adjacent pair becomes a POINTER;
- equal-scale-only pointering;
- n = POINTER arity;
- semantic similarity / embeddings;
- durable 2D authority beside Lace;
- automatic higher-order root row for every sample cell.

### Primary residuals

\[
\boxed{
\text{2D sample cell}
\rightarrow
\text{addressable 1D point}
}
\]

and:

\[
\boxed{
\text{recurrence / overlap evidence}
\rightarrow
\text{retained 1D POINTER}
}
\]

remain unspecified.

The exact recurrence comparator and canonical heat/density metric are also open.

### Recommended next mathematical experiment

Construct the minimal nonsemantic 2D lattice:
- x = WORD/source position;
- n = contiguous word-span length;
- cells ephemeral;
- n=1 identity by word root;
- n+1 identity by ordered lower-scale identities;
- no automatic retained rows.

Run it on:
- D1 WORD sequence;
- the APPLES specimen.

Only after the lattice itself survives should a later pass attack retention/addressability.

No Pass 2 is opened automatically.

### Gates

- law edited: NO
- acceptance: absent
- src/: 0 intended
- Cargo: 0 intended
- Rust: 0 intended

STOP after final tree verification and maps release.
