# SAMPLING / DENSITY / EMERGENCE campaign - Pass 4 PLAN

**Status:** PLAN - NOT EXECUTED.
**Name:** STRUCTURAL SEARCH BOUNDS / ORDERING WITHOUT MEANING
**Planning station:** maps (Astra-search-bounds).
**Pinned main before claim:** 77a8d64d8b745fe3c3bc54a465b90ac2880e5fd8.
**Maps claim:** 5d08b38bd80f72b3aa40f0936d5780e72bca4ef2.
**Depends on:** Sampling / Density / Emergence Passes 1-2 EXECUTED, Pass 3 PLAN. Pass 4 execution is **gated on Pass 3 being executed first**.
**Law:** no law edit.
**Implementation:** no src/. No Cargo. No Rust. No search API.
**Acceptance:** absent.

Pass 3 asks whether a star can serve as a read-only search entrypoint into:
- lexical occurrences;
- repeated multi-scale patterns;
- retained POINTER participation.

Pass 4 assumes none of those results until Pass 3 actually executes.

If Pass 3 falsifies the layered-star thesis, this plan must shrink or stop.

If Pass 3 survives, Pass 4 attacks the next problem:

\[
\boxed{
\text{How should structural search be bounded and ordered without semantic relevance scoring?}
}
\]

The target is not a "best result" score.

The target is a **structural frontier discipline** that prevents star search from degenerating into:
- all occurrences;
- all recurrent patterns;
- all pointer ancestry;
- all neighboring stars;
- eventually most of Lace.

---

## 0. Execution gate - Pass 3 must exist first

Before any Pass-4 analysis:

1. refresh main;
2. confirm sampling-density-emergence-pass-3-findings.md exists;
3. confirm Pass-3 plan status is EXECUTED;
4. read its falsifier/proof boards;
5. verify law and gate-question ownership have not moved incompatibly;
6. claim maps only if FREE.

### Hard gate

If Pass 3 concludes any of the following, Pass 4 must STOP or be replanned:

- star search recovers only lexical occurrences;
- anchored pattern cone cannot be reconstructed;
- D1 PIE pointer overlay cannot be derived;
- flat/transitive participation is the only available representation;
- the star-search operation needs a new authoritative store;
- search requires semantic similarity.

Pass 4 may not pretend Pass 3 succeeded because its plan expected success.

---

## 1. Pass-4 thesis

Test this thesis:

> Structural search can remain useful without semantic scoring if results are kept in typed/ringed frontiers rather than collapsed into one ranked list.

Candidate search result structure:

\[
\boxed{
Search(a)
=
F_{lex}
\cup
F_{pattern}
\cup
F_{pointer}
\cup
F_{hop}
}
\]

where each frontier exposes its own structural coordinates.

The pass tests whether search can be made **progressive and bounded by structural distance / recurrence**, while preserving the user's ability to expand farther.

The pass does **not** assume one universal scalar relevance score exists.

---

## 2. Why Pass 4 exists

The likely Pass-3 failure mode is saturation.

For a common anchor \(a\):

\[
Participates_a
=
\{p:Reach(p)\cap OccRows(a)\neq\varnothing\}
\]

may become very large.

Likewise, the 2D anchored cone contains many cells:

\[
Cone(a)
=
\bigcup_{q\in Occ(a)}Cone(q).
\]

Therefore useful search must preserve distinctions such as:

- direct occurrence vs distant ancestry;
- repeated vs unique pattern;
- short vs long pattern;
- high-support trunk vs low-support branch;
- direct pointer contact vs long pointer path;
- one-hop neighboring star vs recursively exploded neighborhood.

Pass 4 tests which of these distinctions can bound search **without inventing meaning**.

---

## 3. Anchor test set

Pass 4 uses multiple anchor regimes to avoid overfitting QUESTION.

### A1 - QUESTION

Structured medium-frequency anchor.

Expected properties from Pass-3 plan:
- 7 occurrences;
- five-occurrence ANSWERS ONE QUESTION ONLY trunk;
- separate QUESTION IS branch;
- clear scale-dependent recurrence.

Purpose:
- test structured trunk/branch ordering.

### A2 - ANSWERS

Tighter scaffold anchor.

Expected:
- concentrated around the five-stage recurring scaffold.

Purpose:
- test whether a more specific anchor produces a smaller, cleaner frontier.

### A3 - IS

High-frequency saturation stress test.

Purpose:
- test whether the same frontier discipline remains usable when lexical occurrence count and low-n recurrence are broad.

No stop-word policy may be invented.

IS remains a normal word root in the bounded specimen.

### A4 - PIE (D1)

Retained-pointer control.

Purpose:
- test direct vs transitive pointer distance;
- test flat-star saturation;
- test ringed pointer traversal.

Execution must recompute all counts from the source/Pass-3 findings rather than using planning expectations as facts.

---

## 4. Structural hit signature

Pass 4 may describe a derived hit with a raw structural signature:

\[
\sigma(h\mid a)
=
(
layer,
n,
support,
occurrence\_coverage,
extension\_depth,
branch\_fanout,
pointer\_distance,
directness,
hop\_depth
).
\]

Fields apply only where meaningful.

### Definitions

#### layer
One of:
- LEXICAL;
- PATTERN;
- POINTER;
- STAR-HOP.

#### n
Sampling scale for a pattern hit.

#### support
Exact recurrence count for the pattern.

#### occurrence_coverage
How many anchor occurrences participate in the hit.

#### extension_depth
How far the pattern sits above the n=1 anchor in the extension DAG.

#### branch_fanout
Number of exact one-step continuations from the pattern.

#### pointer_distance
Minimum retained POINTER steps from an anchor occurrence/root.

#### directness
Direct occurrence/root, direct pointer, transitive pointer, or derived pattern.

#### hop_depth
Number of word-star transitions in word→pattern→word traversal.

### Fence

This tuple is **descriptive metadata**, not a stored score or API.

Pass 4 must not silently convert it into a weighted scalar.

---

## 5. Frontier model

Candidate progressive frontiers:

### F0 - lexical occurrence frontier

\[
F_{lex}(a)=Occ(a).
\]

Answers:
- where did the root appear?

### F1 - repeated pattern frontier

\[
F_{pattern}(a)
=
\{u:Support_a(u)\ge2\}.
\]

Organized by:
- n;
- support;
- extension DAG.

No semantic relevance.

### F2 - retained pointer frontier

Ring by minimum pointer distance:

\[
F_{pointer}^{(d)}(a)
=
\{p:dist_a(p)=d\}.
\]

### F3 - one-hop star frontier

From repeated pattern \(u\), expose other root identities participating in \(u\).

\[
a
\to
u
\to
b.
\]

Pass 3 permits at most one hop.

Pass 4 tests whether additional hops explode.

### Candidate result

Search need not return "the answer."

It can expose these frontiers progressively.

---

## 6. Ordering candidates - no semantic score

Pass 4 compares ordering disciplines.

### O-A - layer/ring order

1. lexical occurrences;
2. repeated patterns;
3. direct pointer ring;
4. farther pointer rings;
5. one-hop star expansion.

Within each frontier, preserve deterministic structural order.

**Candidate:** ADMIT if useful and stable.

### O-B - support-first within pattern frontier

For equal layer:

\[
support\downarrow
\]

then perhaps:

\[
n\downarrow
\]

as a tie-break.

Tests:
- does high support merely surface generic short patterns?
- does larger n help specificity?

### O-C - scale-first within pattern frontier

\[
n\downarrow
\]

then:

\[
support\downarrow.
\]

Tests:
- does this surface highly specific but weakly supported patterns first?

### O-D - Pareto frontier

A pattern dominates another only if it is no worse in:
- support;
- scale;
- occurrence coverage;

and better in at least one.

No arbitrary weights.

Pass 4 tests whether a useful small nondominated set emerges.

### O-E - extension-tree order

Start at anchor and traverse the repeated-pattern DAG outward by n.

This preserves how patterns grow.

### O-F - pointer BFS order

Retained relations ordered strictly by minimum pointer distance.

### O-G - weighted scalar

Example forbidden temptation:

\[
Score
=
\alpha support+\beta n-\gamma distance.
\]

**Default verdict: BLOCKED** unless a human/source rule supplies weights.

Pass 4 may demonstrate why arbitrary weights change ordering.

It may not choose them.

---

## 7. Bounding candidates

Search must be bounded without silently deleting structure.

### B-A - recurrence bound

Pattern frontier includes only:

\[
Support\ge2.
\]

This is not an arbitrary threshold in this experiment.

It means:
- repeated structure vs unique context.

Unique context remains separately accessible from occurrence expansion.

### B-B - exact scale exhaustion

For a given anchor, stop repeated-pattern expansion when no repeated anchored pattern exists at n+1 or above.

This is data-derived.

### B-C - pointer distance rings

Expose:
- d=0;
- d=1;
- d=2;
- ...

Do not preselect one global maximum d as Core law.

The user/search surface may request farther rings.

### B-D - one star hop

Pass 3 tests one word→pattern→word hop.

Pass 4 must calculate what happens at:
- 0 hops;
- 1 hop;
- 2 hops;

for at least QUESTION and IS.

Purpose:
- measure neighborhood explosion.

No arbitrary permanent hop cap is set.

### B-E - marginal novelty

At each expansion ring, calculate:
- new roots;
- new patterns;
- new pointer points.

A plateau may be observable.

No numeric stopping threshold may be invented.

### B-F - top-k

UI result count such as top 10.

**OUT OF CORE / BLOCKED as semantic law.**

May be mentioned only as later presentation policy.

---

## 8. Saturation stress test

For each anchor A1-A3:

Calculate:

1. lexical occurrence count;
2. number of recurrent anchored patterns;
3. recurrent pattern count by n;
4. maximum n;
5. unique other roots reachable through one word→pattern→word hop;
6. unique roots after two hops;
7. expansion factor:
   \[
   E_1=\frac{|Roots_{hop1}|}{1},
   \]
   \[
   E_2=\frac{|Roots_{hop2}|}{\max(1,|Roots_{hop1}|)}.
   \]

For D1 PIE:

Calculate:
- direct pointer rows;
- transitive pointer rows;
- ring sizes by d;
- saturation fraction.

### Purpose

QUESTION may look clean while IS explodes.

The search discipline must survive both.

---

## 9. QUESTION ordering experiment

Using actual Pass-3 findings:

Build all repeated QUESTION patterns.

Produce the first result sets under:
- O-B support-first;
- O-C scale-first;
- O-D Pareto;
- O-E extension-tree.

Do not judge them semantically.

Compare structurally:

- result count;
- scales represented;
- support represented;
- branch diversity;
- duplicate/nested redundancy.

### Key question

Does a Pareto / extension-tree presentation preserve:
- the five-support trunk;
- longer two-support branches;
- QUESTION IS branch;

without one type suppressing the others?

---

## 10. ANSWERS control

Repeat the same pattern-frontier analysis for ANSWERS.

Expected use:
- tighter anchor;
- fewer divergent branches.

If QUESTION and ANSWERS produce radically different frontier sizes, that is useful evidence for anchor-sensitive search complexity.

No stop-word or content policy is inferred.

---

## 11. IS saturation control

IS is expected to be common.

Execution must calculate, not assume:
- occurrences;
- recurrent anchored patterns;
- maximum n;
- branch fanout;
- one-hop root count.

### Hard test

Can the same structural frontier representation keep IS search inspectable?

If not, Pass 4 must report which layer saturates:
- lexical;
- low-n pattern;
- one-hop star graph;
- pointer-like transitive structure.

Do not patch it with semantic stop-word filtering.

---

## 12. Nested-pattern redundancy

Pass 2 discovered recurrence ridges:

a repeated n=5 pattern implies recurrent contained n=1..4 structures.

Therefore a naive result list may be dominated by nested duplicates.

Pass 4 must define and test a **containment relation**:

\[
u\prec v
\]

when:
- u is a contiguous subpattern of v;
- both are recurrent anchored patterns.

Candidate display structures:

### R-A - show every pattern

Complete but redundant.

### R-B - maximal recurrent patterns

Show only patterns that have no recurrent one-word extension.

Risk:
- hides high-support shorter trunks.

### R-C - trunk + branch nodes

Show nodes where:
- support changes;
- fanout changes;
- recurrence terminates.

This is structurally motivated and may compress ridges without semantic scoring.

### R-D - Pareto nodes

Use support + n + coverage nondominance.

Pass 4 compares these.

It does not choose a permanent UI.

---

## 13. Support-change nodes

Define a pattern extension:

\[
u_n\to v_{n+1}.
\]

A **support-change node** occurs when:

\[
Support(v)\neq Support(u).
\]

A **branch node** occurs when one pattern has multiple recurrent one-step extensions.

A **terminal node** has no recurrent extension.

Candidate compressed star view:

\[
\boxed{
\text{retain/show trunk root + support-change + branch + terminal nodes}
}
\]

as a derived search presentation.

This may capture recurrence geometry more compactly than every cell.

Pass 4 tests it on QUESTION and IS.

This is view logic only.

No Core retention rule is implied.

---

## 14. Pointer-path compression

For D1 PIE:

If transitive participation includes many later rows, search can present:
- minimum distance;
- shortest retained path;
- branch alternatives.

Candidate:

\[
PIE
\to
0004
\to
0007
\to
0009
\to
0010
\]

rather than a flat set:

\[
\{0004,0007,0009,0010\}.
\]

Pass 4 tests whether shortest-path/ring presentation preserves enough structure to avoid saturation.

No general graph-search implementation is designed.

---

## 15. Cross-layer search result

A star hit may be represented in one of three nonflattened forms:

### Pattern hit

\[
QUESTION
\to
ANSWERS\ ONE\ QUESTION\ ONLY
\]

with:
- n;
- support;
- spans;
- branch children.

### Pointer hit

\[
PIE
\to
0004
\to
0007.
\]

with:
- directness;
- pointer distance;
- path.

### Star-hop hit

\[
QUESTION
\to
ANSWERS\ ONE\ QUESTION\ ONLY
\to
ANSWERS.
\]

with:
- hop depth = 1;
- shared pattern witness.

The search model should not force these into one scalar ranking.

---

## 16. Two-hop explosion experiment

Pass 3 stops after one word→pattern→word hop.

Pass 4 calculates a second hop.

For anchor a:

\[
Roots_1(a)
=
\{b:
a\to pattern\to b\}.
\]

Then:

\[
Roots_2(a)
=
\bigcup_{b\in Roots_1(a)}
Roots_1(b).
\]

Calculate for:
- QUESTION;
- ANSWERS;
- IS.

Report:
- number of roots at hop 1;
- new roots introduced at hop 2;
- overlap with prior roots;
- expansion factor.

### Falsifier

If hop 2 approaches most lexical roots in the specimen for common anchors, unrestricted recursive star hopping is unsuitable as a default search presentation.

That does not prohibit explicit farther traversal.

---

## 17. Search reconstructibility

Every Pass-4 result must be derivable from:
- authoritative 1D word/pointer history;
- derived 2D sample field;
- Pass-3 derived star layers.

No required persistent search index.

Execution must identify which computations are:
- corpus-wide scans;
- local anchor-cone scans;
- pointer Reach traversals.

Efficiency is not solved here.

Reconstructibility is.

---

## 18. Structural ordering invariants

Candidate invariants to test:

### I1

Direct occurrence/root information must never disappear behind transitive results.

### I2

Direct pointer contact must be distinguishable from transitive ancestry.

### I3

Pattern scale n and support must both remain visible.

### I4

Cross-scale relation does not imply comparable relevance.

### I5

Unique context is not recurrent pattern and should be labeled separately.

### I6

One-hop star neighbors must include a pattern witness.

No naked word→word edge is invented from co-occurrence.

### I7

A larger pattern does not erase the shorter trunk it contains.

### I8

A shorter high-support trunk does not erase longer low-support branches.

These are search-display invariants, not Core write rules.

---

## 19. Pass-4 falsifier board

| ID | Falsifier | Consequence |
|---|---|---|
| **F4-1** | Pass 3 star thesis failed | STOP / replan |
| **F4-2** | QUESTION, ANSWERS or IS anchors unavailable under bounded tokenization | adjust anchor set transparently |
| **F4-3** | structural hit signature requires semantic annotation | reject field |
| **F4-4** | layer/ring frontiers cannot be reconstructed | reject frontier model |
| **F4-5** | support-first requires semantic tie-break | reject tie-break |
| **F4-6** | scale-first collapses all useful trunk structure | report; candidate fails |
| **F4-7** | Pareto frontier equals almost all patterns | insufficient compression |
| **F4-8** | extension-tree cannot preserve branch/support changes | reject |
| **F4-9** | support-change/branch/terminal compression loses a distinct recurrence branch | reject compression |
| **F4-10** | flat QUESTION search already saturates entire corpus | quantify; star needs stronger layers |
| **F4-11** | IS search cannot be bounded structurally without semantic stop-word logic | thesis fails for high-frequency anchors |
| **F4-12** | one-hop star traversal already reaches most roots for all anchors | default star-hop unsafe |
| **F4-13** | two-hop expansion adds negligible structure and only duplicates | recursive hopping low value |
| **F4-14** | two-hop expansion explodes toward all roots | recursive hopping must remain explicit/bounded |
| **F4-15** | D1 PIE minimum pointer distance loses a retained branch | distance-only presentation insufficient |
| **F4-16** | shortest-path presentation hides alternative relational history | must retain path alternatives |
| **F4-17** | any ordering needs arbitrary weighted scalar | refuse scalar; retain partial/frontier ordering |
| **F4-18** | result bounding requires deleting authoritative structure | reject; search views may filter but Lace remains intact |
| **F4-19** | persistent search index becomes necessary for correctness | reject under current one-store law |
| **F4-20** | Pass 4 defines retention, semantic ranking, law edits, code, src/Cargo/Rust | STOP / scope breach |

---

## 20. Proof board

Execution must produce:

1. Pass-3 execution gate receipt.
2. QUESTION anchor frontier metrics.
3. ANSWERS anchor frontier metrics.
4. IS saturation metrics.
5. Pattern counts by n for all three.
6. QUESTION O-B support-first result set.
7. QUESTION O-C scale-first result set.
8. QUESTION O-D Pareto set.
9. QUESTION O-E extension-tree structure.
10. Nested-pattern redundancy count.
11. support-change / branch / terminal compressed QUESTION tree.
12. same compression attempted on IS.
13. one-hop root counts for QUESTION / ANSWERS / IS.
14. two-hop root counts for all three.
15. expansion factors.
16. D1 PIE pointer ring sizes.
17. D1 shortest-path / alternative-path witness.
18. 20 falsifiers scored.
19. exact remaining search questions named.
20. no law/code/implementation changes.

Target:

\[
20/20.
\]

---

## 21. Required execution product

Create:

docs/plans/sampling-density-emergence-pass-4-findings.md

Required contents:

1. Pass-3 dependency gate;
2. anchor corpus facts;
3. raw structural hit signature;
4. frontier definitions;
5. QUESTION ordering comparison;
6. ANSWERS control;
7. IS saturation control;
8. nested-ridge redundancy analysis;
9. support-change/branch/terminal compression;
10. one-hop/two-hop expansion;
11. D1 PIE pointer-ring/path analysis;
12. structural ordering invariants;
13. falsifier board;
14. proof board;
15. exact residuals;
16. recommended Pass-5 target without opening it.

---

## 22. Expected outcomes - not findings

Likely, not assumed:

### E1

QUESTION will be well served by extension-tree / trunk-branch presentation.

### E2

ANSWERS will produce a tighter frontier than QUESTION.

### E3

IS will expose saturation at lexical/low-n levels.

### E4

Support-first alone will overfavor short generic structures.

### E5

Scale-first alone will overfavor long low-support structures.

### E6

A Pareto or branch-aware partial order will preserve both.

### E7

Displaying every nested pattern will be redundant.

### E8

Support-change / branch / terminal nodes will compress recurrence ridges without semantic scoring.

### E9

One-hop star traversal will be useful.

### E10

Two-hop traversal may explode for common anchors and therefore should not be implicit/default.

### E11

D1 PIE will confirm pointer distance is necessary but not sufficient; actual path witness also matters.

### E12

The next residual may become:

\[
\boxed{
\text{what is the minimal structural result contract for search?}
}
\]

rather than a relevance-ranking problem.

Execution may refute all of these.

---

## 23. Stop line

Pass 4 does not:

- define semantic relevance;
- choose scalar score weights;
- create stop-word lists;
- create embeddings;
- define retention;
- append POINTERs;
- design a general query language;
- create persistent search indexes;
- add sentence/page boundaries;
- edit pointer-emission.md;
- edit systems-manifest.md;
- reconcile Pass-6 law;
- create src/, Cargo, Rust or tests;
- start Pass 5 automatically.

## Steward test

Do not ask:

> Which result is most meaningful?

Ask:

> How far is it from the anchor, how often does the structure repeat, how large is the repeated structure, where does it branch, and what exact path connects it?

If those structural facts are enough to keep search useful for both QUESTION and IS, the star can search without storing meaning.
