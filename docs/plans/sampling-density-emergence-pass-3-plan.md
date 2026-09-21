# SAMPLING / DENSITY / EMERGENCE campaign - Pass 3 PLAN

**Status:** PLAN - NOT EXECUTED.
**Name:** STAR SEARCH / ANCHORED PATTERN CONE
**Planning station:** maps (Astra-star-search).
**Pinned main before claim:** 188d83d9851b232536ca4c6f4db4e79b6238e661.
**Maps claim:** 26d800b5e42825b438291892ba3fc106fd999119.
**Depends on:** Sampling / Density / Emergence Passes 1-2, H7-H12, full Coffee Cup real-prose specimen, D1 retained-pointer witness, current root/touch/Join/Reach model.
**Law:** no law edit.
**Implementation:** no src/. No Cargo. No Rust. No search API.
**Acceptance:** absent.

Pass 2 proved that the 2D sampler forms a dense position-by-scale recurrence field while the retained 1D POINTER map stays sparse.

The human now directs Pass 3 at the missing read-side question:

> What is the star system's relationship to search? Pick anything in the test and see how its linked patterns repeat.

Pass 3 therefore does **not** attack the retention trigger yet.

It asks:

\[
\boxed{
\text{Can a word star act as a read-only search entrypoint into repeated multi-scale patterns and retained pointer structure?}
}
\]

---

## 0. Primary anchor - QUESTION

Pass 3 uses the full Coffee Cup prose specimen from Pass 2.

Bounded specimen tokenization remains:
- alphabetic/apostrophe word tokens;
- case folded;
- no stemming;
- no semantic normalization.

Primary anchor:

\[
a=\text{QUESTION}.
\]

Planning pre-audit, to be recomputed during execution:

- QUESTION occurs 7 times.
- Five occurrences sit in the exact scaffold:
  \[
  \text{ANSWERS ONE QUESTION ONLY}
  \]
- Two later occurrences appear in a different ending branch:
  - THE ONLY REAL QUESTION IS NOT ...
  - THE QUESTION IS WHETHER ...

The five-stage scaffold is source-visible in the Coffee Cup text:
- Stage One: this stage answers one question only;
- Release: answers one question only;
- Trajectory: answers one question only;
- Impact: answers one question only;
- Aftermath: answers one question only.

The following clauses then diverge by stage.

This makes QUESTION a strong star-search specimen because it contains:
- one lexical root;
- multiple occurrences;
- one repeated multi-scale trunk;
- divergent branch contexts;
- later occurrences outside the main trunk.

---

## 1. Pass-3 thesis

Test this thesis:

> A word star is useful for search because its root/occurrences define anchors into the 2D sampling field. Expanding samples around those anchors reveals repeated multi-scale pattern families. Where retained 1D pointers exist, the same search can overlay direct and transitive participation paths. The star itself need not be a stored cluster or semantic object.

Provisional form:

\[
\boxed{
StarSearch(a)
=
OccurrenceLayer(a)
+
PatternCone(a)
+
PointerOverlay(a)
}
\]

All three terms are derived/read-only.

No new store is implied.

---

## 2. Occurrence layer

For anchor word/root \(a\), define source positions:

\[
Occ(a)=\{q_1,\ldots,q_m\}.
\]

For QUESTION in the Coffee Cup specimen:

\[
m=7.
\]

The occurrence layer answers only:

> Where did this root appear?

This is the smallest star-search surface.

It is not enough by itself.

A search that stops here is only a concordance.

Pass 3 succeeds only if the star can recover linked larger patterns around those occurrences.

---

## 3. Anchored 2D sample cone

Pass 2 defined:

\[
S[n,t]
=
(r_{t-n+1},\ldots,r_t).
\]

For an occurrence position \(q\), define its anchored sample cone:

\[
Cone(q)
=
\{
(n,t):
t-n+1\le q\le t
\}.
\]

For a root \(a\):

\[
Cone(a)
=
\bigcup_{q\in Occ(a)}Cone(q).
\]

This contains every contiguous sample at every scale that includes at least one occurrence of the anchor.

The anchored cone is derived from the 2D sampling surface.

It is not stored as a star table.

---

## 4. Anchored recurrence classes

For sample tuple \(u\), define anchor support:

\[
Support_a(u)
=
\#\{
(n,t)\in Cone(a):
S[n,t]=u
\}.
\]

A repeated anchored pattern is any:

\[
Support_a(u)\ge2.
\]

Pass 3 must calculate every repeated QUESTION-containing pattern until recurrence disappears.

Planning pre-audit gives these expected classes, to be independently recomputed:

### n=1

- QUESTION - support 7

### n=2

- ONE QUESTION - 5
- QUESTION ONLY - 5
- QUESTION IS - 2

### n=3

- ANSWERS ONE QUESTION - 5
- ONE QUESTION ONLY - 5
- QUESTION ONLY WHAT - 2
- QUESTION ONLY WHEN - 2

### n=4

- ANSWERS ONE QUESTION ONLY - 5
- ONE QUESTION ONLY WHAT - 2
- ONE QUESTION ONLY WHEN - 2

### n=5

- ANSWERS ONE QUESTION ONLY WHAT - 2
- ANSWERS ONE QUESTION ONLY WHEN - 2

Planning pre-audit found no repeated QUESTION-containing exact pattern at n>=6.

Execution must verify this.

---

## 5. Pattern extension graph

Repeated anchored patterns are not independent points.

They nest.

Pass 3 defines a read-only extension relation:

\[
u_n
\rightarrow
v_{n+1}
\]

when:
- \(u_n\) is a contiguous sub-sample of \(v_{n+1}\);
- both contain the anchor;
- \(v\) extends \(u\) by one word on the left or right.

This produces a DAG ordered by sample scale.

### Example expected trunk

\[
QUESTION
\]

can participate in:

\[
ONE\ QUESTION
\]

and:

\[
QUESTION\ ONLY.
\]

These expand into:

\[
ANSWERS\ ONE\ QUESTION
\]

\[
ONE\ QUESTION\ ONLY
\]

then:

\[
ANSWERS\ ONE\ QUESTION\ ONLY.
\]

That is a recurring structural trunk with support 5.

At the next scale it branches:

\[
ANSWERS\ ONE\ QUESTION\ ONLY\ WHEN
\]

support 2,

and:

\[
ANSWERS\ ONE\ QUESTION\ ONLY\ WHAT
\]

support 2.

The QUESTION IS branch near the Quiet End is separate.

This is the first explicit test of:

\[
\boxed{
\text{star search as repeated-pattern branching}
}
\]

rather than simple word lookup.

---

## 6. Shared trunk vs divergent context

Pass 3 must distinguish:

### Shared recurring trunk

Structures with support across multiple QUESTION occurrences.

Example candidate:

\[
ANSWERS\ ONE\ QUESTION\ ONLY.
\]

### Branch continuation

Larger structures that share the trunk but diverge.

Expected:
- WHY branch;
- WHEN branch;
- WHAT branch;
- quiet-end QUESTION IS branch.

### Unique continuation

A pattern containing QUESTION that appears only once.

These remain valid search context but are not recurrence evidence.

The search surface therefore needs both:

\[
\text{support count}
\]

and:

\[
\text{extension path}.
\]

No semantic label is needed to discover the branching.

---

## 7. Search result record - analytical only

Pass 3 may model one derived search result as:

\[
SearchHit
=
(
pattern,
n,
support,
occurrence\ spans,
parents,
children,
addresses,
pointer\ participation
).
\]

This is analysis notation only.

It is not:
- a stored row;
- an index table;
- an API contract;
- a Rust type.

The purpose is to prove what information star search can derive.

---

## 8. Star search must remain a view

The star is not promoted to an authoritative cluster.

Current intended relationship:

\[
1D\ Lace
+
2D\ sampling
+
POINTER\ topology
\rightarrow
StarSearch(a).
\]

No inverse write exists:

\[
StarSearch(a)
\nrightarrow
Lace\ append.
\]

Search may expose:
- occurrences;
- recurrent pattern ridges;
- pattern extensions;
- retained pointer participation;
- cross-scale paths.

Search does not create those structures.

---

## 9. Retained POINTER overlay

The Coffee Cup specimen was sampled as prose only.

It does not contain an actual Lace POINTER trace.

Therefore Pass 3 must not invent Coffee Cup POINTERs.

To test the retained relational overlay, Pass 3 uses D1 with anchor:

\[
a=\text{PIE}.
\]

This is the control specimen because D1 contains actual retained WORD/POINTER rows.

---

## 10. D1 PIE star control

D1 has PIE WORD occurrences:

\[
0000,\quad0003.
\]

Current root-touch witness:

\[
0004=Join(0003,0000).
\]

Define direct incidence:

\[
Direct_a
=
\{
p:
p\text{ directly references an anchor occurrence/root or an already-identified star point}
\}.
\]

Define transitive participation:

\[
Participates_a
=
\{
p:
Reach(p)\cap OccRows(a)\neq\varnothing
\}.
\]

Pass 3 must calculate both sets for PIE.

Expected transitive members, to verify:

- 0000
- 0002
- 0003
- 0004
- 0006
- 0007
- 0009
- 0010

This will show how a word star expands into:
- word occurrences;
- root touch;
- pair relations;
- relation-on-relation structures;
- whole-branch ancestry.

---

## 11. Direct vs transitive search distance

A critical failure mode is star saturation.

If every later large pointer eventually reaches PIE, then the claim:

> everything in Reach is equally a PIE search result

would make the star useless.

Pass 3 must therefore preserve structural distance.

Define minimum retained-pointer distance:

### d=0

Anchor WORD/root occurrence itself.

### d=1

POINTER directly references an anchor occurrence/root.

### d=2

POINTER references a d=1 relation.

And so on.

Execution must calculate minimum distance for every PIE-participating D1 row.

The search view may expose distance.

It may not yet define a ranking function.

### Saturation test

Measure:

\[
\frac{|Participates_a|}{|L|}
\]

for D1 PIE.

Then ask:

> If a later whole-prefix point contains PIE, does that make the entire whole-prefix structure equally relevant?

Expected answer is no.

Pass 3 must identify what additional path/scale/support metadata preserves useful search discrimination.

---

## 12. Three search layers

Pass 3 tests a layered star model.

### Layer S1 - lexical star

- root;
- word occurrences;
- root touches.

### Layer S2 - anchored sample recurrence

- all 2D sample cells containing the anchor;
- repeated exact anchored patterns;
- extension DAG;
- support counts;
- branch divergence.

### Layer S3 - retained relational participation

- direct retained POINTERs;
- pointer-on-pointer paths;
- cross-scale retained relations;
- transitive ancestry with distance/path.

The hypothesis is:

\[
\boxed{
\text{useful star search requires all three layers but keeps them distinguishable}
}
\]

rather than flattening them into one set.

---

## 13. QUESTION-star execution questions

### Q3-1

Does the QUESTION star recover all 7 occurrences?

### Q3-2

Does the anchored cone recover the exact five-occurrence scaffold:

\[
ANSWERS\ ONE\ QUESTION\ ONLY?
\]

### Q3-3

How many recurring anchored classes exist at each n?

### Q3-4

What is the longest repeated QUESTION-containing pattern?

### Q3-5

Does support generally fall as scale n increases?

### Q3-6

Does the shared five-occurrence trunk branch mechanically into:
- WHEN;
- WHAT;
- unique WHY/other continuations?

### Q3-7

Do the two Quiet End QUESTION occurrences form a separate exact branch:

\[
QUESTION\ IS?
\]

### Q3-8

Can all these structures be recovered without:
- semantic labels;
- embeddings;
- topic classification;
- sentence labels?

### Q3-9

Does star search recover non-word structures longer than the anchor itself?

### Q3-10

Can the result be reconstructed entirely from root occurrences + the 2D sampling field?

---

## 14. Context expansion beyond exact recurrence

Exact repeated patterns are the first search surface.

Pass 3 must also record one-step divergent continuations.

For each repeated anchored pattern u:

1. collect left neighboring tokens across occurrences;
2. collect right neighboring tokens;
3. group them by exact identity;
4. expose shared and divergent continuations.

This creates a nonsemantic context fan-out.

Example expected after:

\[
ANSWERS\ ONE\ QUESTION\ ONLY
\]

right continuations include:
- WHY;
- WHEN;
- WHAT.

Pass 3 must not interpret what those words mean.

It only reports structural branching.

---

## 15. Search-path witness

For at least three QUESTION occurrences, execution must print a path:

\[
QUESTION
\rightarrow
\text{larger repeated pattern}
\rightarrow
\text{branch continuation}
\rightarrow
\text{source position/context}.
\]

Example shape:

    QUESTION
       |
       v
    ONE QUESTION
       |
       v
    ANSWERS ONE QUESTION
       |
       v
    ANSWERS ONE QUESTION ONLY
       |
       +--> WHEN ...
       |
       +--> WHAT ...
       |
       +--> WHY ...

This is the star/search witness.

---

## 16. D1 PIE pointer-path witness

For D1, execution must print at least two retained search paths from PIE.

Candidate paths:

\[
0000\ PIE
\rightarrow
0002\ PIE/DESSERT
\rightarrow
0010\ whole relational branch
\]

and:

\[
0003\ PIE
\rightarrow
0004\ RootTouch
\rightarrow
0007\ relation/relation
\rightarrow
0009
\rightarrow
0010.
\]

These are not semantic paths.

They are actual retained ancestry.

This control proves that the POINTER map can extend star search beyond contiguous text recurrence.

---

## 17. Star intersection

A useful search system should allow two stars/patterns to intersect.

Pass 3 may calculate one bounded intersection:

\[
StarSearch(QUESTION)
\cap
StarSearch(ANSWERS)
\]

at the 2D recurrence layer.

Expected shared structure includes the five-occurrence scaffold.

This is not a stored set intersection in Core.

It is a derived search operation.

### Why this matters

It tests whether search can move from:
- one root;
- to repeated multi-word structure;
- to another anchor participating in the same structures.

That is closer to relational retrieval than keyword lookup.

No general query language is designed.

---

## 18. Star-to-pattern-to-star traversal

Pass 3 tests this read-only traversal:

\[
word\ root
\rightarrow
recurrent\ multi-scale\ pattern
\rightarrow
other\ word\ roots
\]

For QUESTION:

\[
QUESTION
\rightarrow
ANSWERS\ ONE\ QUESTION\ ONLY
\rightarrow
ANSWERS,\ ONE,\ ONLY.
\]

Then each reached root can itself expose its own star/search surface.

Pass 3 must stop after one hop.

It must not recursively explode through the whole corpus.

The purpose is to prove the mechanism, not design a crawler.

---

## 19. Specificity / saturation measurements

For QUESTION recurrence search, calculate by n:

- total anchored cells;
- recurrent anchored classes;
- max support;
- fraction of anchored occurrences covered by the strongest class.

For D1 PIE retained search, calculate:

- direct star rows;
- transitive participating rows;
- minimum pointer distance;
- fraction of D1 rows eventually participating.

### Falsifier

If transitive participation immediately collapses to most/all Lace and no path metadata preserves structure, the flat-star model fails.

This does not refute star search.

It refutes:

\[
Star(a)=\{p:a\in Reach(p)\}
\]

as a sufficient unlayered search result.

---

## 20. Search vs ranking

Pass 3 does not invent relevance scores.

It may expose structural measures:

- sample scale n;
- recurrence support;
- number of occurrences;
- pointer distance;
- direct vs transitive participation;
- branch fan-out;
- path length.

These are factual structural annotations.

A later search/ranking pass may decide how to order results.

Pass 3 does not.

---

## 21. No persistent search index

All Pass-3 search structures must be reconstructible from:

- authoritative 1D WORD/POINTER history;
- derived 2D sampling surface.

No persistent star index, inverted index, trie, embedding store, or graph DB is admitted.

Caching is out of scope.

The question is mathematical reconstructibility.

---

## 22. Pass-3 falsifier board

| ID | Falsifier | Consequence |
|---|---|---|
| **F3-1** | QUESTION search returns only WORD occurrences and no larger repeated structure | star-as-search thesis fails |
| **F3-2** | anchored recurrence requires semantic labels | reject method |
| **F3-3** | exact anchored pattern graph cannot be built from 2D cells | reject cone model |
| **F3-4** | repeated patterns cannot be arranged as n→n+1 extension DAG | reject extension model |
| **F3-5** | five-occurrence ANSWERS ONE QUESTION ONLY scaffold is not recovered | source/test mismatch |
| **F3-6** | Quiet End QUESTION IS branch is lost/collapsed into scaffold | identity model too coarse |
| **F3-7** | branch continuation requires semantic interpretation | reject branch analysis |
| **F3-8** | QUESTION support does not thin with scale at all | report; expected specificity effect fails |
| **F3-9** | star search requires sentence/page boundary metadata | mark boundary dependence; do not invent Core boundary |
| **F3-10** | D1 PIE direct/transitive participation cannot be derived from Reach | pointer-overlay model fails |
| **F3-11** | D1 PIE flat transitive star saturates and no structural distance can distinguish paths | flat-star result model fails |
| **F3-12** | minimum pointer distance cannot be derived | distance annotation fails |
| **F3-13** | pointer overlay requires semantic meaning | reject |
| **F3-14** | word→pattern→word traversal requires a new stored index | reject architecture |
| **F3-15** | QUESTION∩ANSWERS shared patterns cannot be derived | intersection hypothesis fails |
| **F3-16** | search operation writes Lace | reject; view boundary breach |
| **F3-17** | search needs a persistent star/trie/embedding store to exist | reject under current one-store law |
| **F3-18** | star pattern search cannot be reconstructed after restart | reject derivation model |
| **F3-19** | Pass 3 accidentally defines retention/ranking rather than search structure | stop/scope breach |
| **F3-20** | law edits/code/src/Cargo/Rust become necessary | stop |

---

## 23. Proof board

Execution must produce:

1. QUESTION occurrence table, all 7.
2. Complete repeated anchored class table by n.
3. Independent recomputation of planning pre-audit counts.
4. Longest repeated QUESTION pattern.
5. Anchored extension DAG.
6. Shared trunk identified.
7. WHEN / WHAT / WHY branch fan-out.
8. Quiet End QUESTION IS branch.
9. Three source-position search-path witnesses.
10. One QUESTION∩ANSWERS intersection witness.
11. One word→pattern→word hop.
12. D1 PIE lexical star rows.
13. D1 PIE direct retained pointer rows.
14. D1 PIE transitive participation rows.
15. Minimum pointer distance table.
16. D1 saturation fraction.
17. At least two PIE pointer-path witnesses.
18. Flat-star saturation test.
19. 20 falsifiers scored.
20. No law/code/implementation changes.

Target:

\[
20/20.
\]

---

## 24. Required execution product

Create:

docs/plans/sampling-density-emergence-pass-3-findings.md

Required contents:

1. QUESTION anchor/source facts;
2. star-search definitions;
3. anchored cone counts;
4. repeated pattern classes by n;
5. extension DAG;
6. trunk/branch analysis;
7. exact continuation fan-out;
8. QUESTION search-path witnesses;
9. star intersection;
10. word→pattern→word hop;
11. D1 PIE lexical/direct/transitive layers;
12. pointer distance table;
13. saturation analysis;
14. combined three-layer star-search model;
15. falsifier board;
16. proof board;
17. exact residual search questions;
18. recommended Pass-4 target without opening it.

---

## 25. Expected outcomes - not findings

Likely but untested:

### E1

QUESTION star will recover more than word occurrences.

### E2

The five-stage scaffold will appear as a high-support anchored pattern trunk.

### E3

Pattern support will fall as scale grows.

### E4

The trunk will branch into exact WHEN / WHAT continuations and unique contexts.

### E5

The Quiet End QUESTION IS branch will remain structurally distinct.

### E6

The star can therefore serve as a read-only route from:
- word root;
- to larger recurring patterns;
- to source contexts;
- to other participating roots.

### E7

D1 PIE will show the retained pointer overlay reaches beyond contiguous recurrence.

### E8

Flat transitive Reach membership will be too broad by itself.

### E9

Useful search will therefore require explicit structural path metadata, not a binary “in star / not in star” set.

### E10

The next residual will be:

\[
\boxed{
\text{how should structural search paths be bounded/ordered without semantic scoring?}
}
\]

Actual execution may refute any of these.

---

## 26. Stop line

Pass 3 does not:

- define retention;
- append new POINTERs;
- define relevance ranking;
- invent semantic similarity;
- design a general query language;
- create a persistent search index;
- add a trie/star table;
- add embeddings;
- change tokenization law;
- add sentence/page boundary rows;
- edit pointer-emission.md;
- edit systems-manifest.md;
- reconcile Pass 6 law;
- create src/, Cargo, Rust or tests;
- start Pass 4 automatically.

## Steward test

Start at one word.

Do not ask what it means.

Ask what repeatedly grows around it at n=2, n=3, n=4, n=5...

Then follow the actual retained POINTER paths that include it.

If the star is useful for search, it should expose repeated structure and its branches without needing a meaning table.
