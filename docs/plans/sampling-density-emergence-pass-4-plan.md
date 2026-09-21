# SAMPLING / DENSITY / EMERGENCE campaign - Pass 4 PLAN

**Status:** **EXECUTED 2026-09-21 - PASS 4 COMPLETE.**
**Name:** STRUCTURAL SEARCH FRONTIERS / PATH PRESERVATION
**Planning station:** maps (Astra-search-bounds).
**Replan base:** Pass 3 findings commit e26d026c3f623dc4cc9b676ec4a4fc71bc5bfe70.
**Pass 3:** EXECUTED. No dependency gate remains.
**Law:** no law edit.
**Implementation:** no src/. No Cargo. No Rust. No search API.
**Acceptance:** absent.

Pass 3 answered the star/search question:

\[
\boxed{
StarSearch(a)
=
Lexical(a)
+
AnchoredPatterns(a)
+
PointerPaths(a)
}
\]

and proved the model is reconstructible without stored meaning.

It also found the failure that opens Pass 4:

\[
\boxed{
\text{flat transitive star membership saturates.}
}
\]

For D1 PIE:
- 100% of POINTER rows eventually contain PIE in ancestry;
- minimum distance distinguishes some structure;
- alternative paths show distance alone is not enough.

Pass 4 therefore does not ask whether stars search.

It asks one complete question:

\[
\boxed{
\text{How should structural search preserve shape and distance while expansion stays usable?}
}
\]

No subpasses.

---

## 0. Pass-3 facts inherited as settled campaign evidence

### QUESTION

- 7 occurrences.
- 13 repeated anchored pattern classes.
- recurrence through n=5.
- five-support trunk:
  \[
  ANSWERS\ ONE\ QUESTION\ ONLY
  \]
- recurrent WHEN and WHAT branches.
- separate QUESTION IS branch.
- one-hop neighboring roots:
  \[
  \{ANSWERS,IS,ONE,ONLY,WHAT,WHEN\}.
  \]

### D1 PIE

Lexical anchor rows:
- 0000;
- 0003.

Direct retained PIE relations:
- 0002;
- 0004;
- 0006.

Transitive:
- 0007;
- 0009;
- 0010.

Flat pointer participation:

\[
6/6=100\%.
\]

Alternative path structure exists, especially at 0010.

These are no longer questions for Pass 4.

---

## 1. Pass-4 thesis

Test:

> Search remains useful without semantic relevance scoring if results are exposed as structural frontiers and paths rather than one flat ranked list.

Candidate model:

\[
Search(a)
=
F_0(a)
\cup
F_1(a)
\cup
F_2(a)
\cup
F_3(a)
\]

with:

### F0 - lexical

Root / occurrences / RootTouch.

### F1 - repeated-pattern structure

Anchored repeated patterns organized by:
- n;
- support;
- extension relation;
- branch;
- terminal recurrence.

### F2 - retained POINTER structure

Organized by:
- directness;
- minimum pointer distance;
- actual path witness;
- alternative paths.

### F3 - neighboring-star expansion

Word → repeated pattern → other participating root.

Expansion is explicit.

It is never silently recursive to closure.

---

## 2. Anchor set

Use three Coffee Cup anchors plus D1 PIE.

### A1 - QUESTION

Known structured anchor.

Purpose:
- trunk/branch preservation.

### A2 - ANSWERS

Tighter anchor.

Planning pre-audit:
- 5 occurrences;
- 6 repeated anchored pattern classes;
- recurrence through n=5;
- 5 one-hop neighboring roots.

Purpose:
- compare a concentrated star against QUESTION.

### A3 - IS

High-frequency stress anchor.

Planning pre-audit:
- 65 occurrences;
- 42 repeated anchored pattern classes;
- recurrence through n=6;
- 25 one-hop neighboring roots.

Purpose:
- stress saturation without inventing stop words.

### A4 - PIE

D1 retained-pointer path control.

All planning pre-audit counts must be recomputed during execution.

---

## 3. Raw structural result signature

Pass 4 may annotate a derived result with:

\[
\sigma(h|a)=
(
layer,
n,
support,
coverage,
branch\_type,
pointer\_distance,
path,
hop\_depth
).
\]

No scalar score.

### layer

LEXICAL / PATTERN / POINTER / STAR-HOP.

### n

Pattern sample scale where applicable.

### support

Exact recurrence support.

### coverage

Which anchor occurrences participate.

### branch_type

TRUNK / BRANCH / TERMINAL / UNIQUE-CONTEXT.

### pointer_distance

Minimum retained pointer distance.

### path

Actual structural witness.

### hop_depth

Number of word→pattern→word transitions.

This is analysis notation only.

---

## 4. Recurrent ridge compression

Pass 3 proved repeated anchored structures form nested n-level ridges.

Returning every nested pattern is complete but redundant.

Pass 4 compares four structural views.

### C-A - all repeated patterns

Baseline.

### C-B - maximal repeated patterns only

Keep repeated patterns with no repeated extension.

Risk:
- discards high-support shorter trunks.

### C-C - event nodes

Keep a node when at least one is true:
- support changes from parent;
- branch fan-out changes;
- node is terminal;
- node begins a distinct recurrent branch.

This is the main candidate.

### C-D - Pareto nodes

A pattern is retained in the view if no other anchored repeated pattern is:
- at least as large in n;
- at least as strong in support;
- at least as broad in occurrence coverage;

with one strict improvement.

No weights.

### Required comparison

For QUESTION, ANSWERS, IS report:
- raw repeated pattern count;
- result count under C-B/C-C/C-D;
- branch preservation;
- support levels preserved;
- longest scale preserved;
- redundancy reduction.

No permanent display policy is chosen unless one candidate is strictly forced.

---

## 5. Ordering without semantic score

Pass 4 compares deterministic structural orderings.

### O-A - extension-tree order

Start at root and walk n→n+1 edges.

### O-B - support-first

Within a pattern frontier:

\[
support\downarrow
\]

then deterministic tuple/position tie-break.

### O-C - scale-first

\[
n\downarrow
\]

then support.

### O-D - partial order only

Expose Pareto/event nodes without forcing total ordering.

### O-E - pointer rings

For retained relations:

\[
d=0,1,2,\ldots
\]

with actual path witnesses.

### Forbidden default

\[
Score
=
\alpha support+\beta n-\gamma distance.
\]

No weights are supplied by law or human ruling.

Pass 4 must not invent them.

---

## 6. Nested-ridge redundancy measurement

For each Coffee anchor:

Calculate:

\[
R_{raw}
=
\#\{\text{all repeated anchored patterns}\}.
\]

For each compression candidate X:

\[
R_X
=
\#\{\text{patterns shown by X}\}.
\]

Compression ratio:

\[
C_X
=
1-\frac{R_X}{R_{raw}}.
\]

Also calculate a **branch loss count**:

number of distinct recurrent branch continuations present in raw DAG but absent from compressed representation.

Any candidate with branch loss > 0 fails.

This makes compression falsifiable without semantic judgment.

---

## 7. One-hop and two-hop star expansion

Pass 3 proved one hop:

\[
a
\to
pattern
\to
b.
\]

Pass 4 measures one additional hop.

Define:

\[
Roots_1(a)
=
\{b\neq a:
a\to repeated\ pattern\to b\}.
\]

Then:

\[
Roots_2(a)
=
\bigcup_{b\in Roots_1(a)}Roots_1(b).
\]

Report:
- |Roots1|;
- new roots at hop2;
- total distinct roots through hop2;
- vocabulary fraction;
- expansion factor.

Planning pre-audit using the Pass-3 exact recurrence rule:

| anchor | hop1 roots | new roots at hop2 | total through hop2 incl. anchor | corpus vocabulary |
|---|---:|---:|---:|---:|
| QUESTION | 6 | 27 | 34 | 469 |
| ANSWERS | 5 | 5 | 11 | 469 |
| IS | 25 | 33 | 59 | 469 |

Approximate total vocabulary fractions:
- QUESTION: 7.25%;
- ANSWERS: 2.35%;
- IS: 12.58%.

Execution must recompute them.

### Interpretation fence

A larger set is not "less relevant."

It only means more structural expansion.

No stop-word logic.

---

## 8. Expansion presentation

Compare:

### H-A - implicit recursive expansion

Automatically show hop2 after hop1.

### H-B - explicit frontier expansion

Default shows:
- anchor;
- current frontier;
- available next frontier count.

Farther traversal is an explicit search action.

### H-C - closure

Return every root reachable by repeated star hopping.

Expected saturation risk.

Pass 4 must calculate enough to reject or admit these structurally.

No UI is designed.

---

## 9. D1 PIE pointer rings

Using actual Pass-3 distances:

### Ring d=0

- 0000;
- 0003.

### Ring d=1

- 0002;
- 0004;
- 0006.

### Ring d=2

- 0007;
- 0010 by shortest path.

### Ring d=3

- 0009.

But 0010 also has longer PIE paths.

Pass 4 must calculate:
- ring sizes;
- shortest path(s);
- all distinct PIE witness paths in the tiny DAG;
- path count per row;
- whether ring-only presentation loses branch history.

---

## 10. Pointer path preservation candidates

### P-A - minimum distance only

Compact, but likely incomplete.

### P-B - one shortest witness path

Still may lose alternate history.

### P-C - all witness paths

Complete, may grow combinatorially.

### P-D - shortest path + branch alternatives

Represent:
- minimum distance;
- one canonical deterministic shortest path;
- count / first divergence of alternatives.

No semantic score.

Pass 4 tests these on D1.

A candidate fails if it makes 0010's short 0000→0002 route erase the longer root-touch/relationship branch.

---

## 11. Structural frontier contract candidate

A search view may return typed groups rather than one list.

Candidate:

    ANCHOR
      lexical occurrences

    REPEATED PATTERNS
      trunk / branch / terminal nodes
      n + support + spans

    POINTER PATHS
      direct ring
      farther rings
      path witnesses

    NEIGHBOR STARS
      one-hop roots
      pattern witness
      next-hop count

This is the main Pass-4 object.

It remains derived.

No persistent search index.

---

## 12. QUESTION test

Execution must compare C-A/B/C/D and O-A/B/C/D on the actual QUESTION DAG.

Required invariants:
- five-support trunk remains visible;
- WHEN branch remains visible;
- WHAT branch remains visible;
- QUESTION IS branch remains visible;
- longest n=5 patterns remain visible;
- lexical QUESTION occurrences remain separately accessible.

If a compression/order loses one, it fails.

---

## 13. ANSWERS control

Run the same recurrence compression/order experiment.

Because ANSWERS is concentrated in the five-stage scaffold, it should test whether the frontier model stays compact when the anchor has one strong trunk.

Planning pre-audit:
- 5 occurrences;
- repeated patterns through n=5;
- 6 repeated classes.

Execution must recompute.

---

## 14. IS saturation control

Run the same analysis with no special handling.

Planning pre-audit:
- 65 occurrences;
- 42 repeated anchored classes;
- recurrence through n=6;
- 25 one-hop roots.

Questions:
- which frontier grows largest?
- does event-node compression preserve all recurrent branches?
- does hop2 expansion remain inspectable?
- does any method require treating IS as a stop word?

If a method only works by suppressing IS semantically, it fails this campaign.

---

## 15. Search result invariants

Pass 4 tests these derived-view invariants.

### I1

Lexical occurrence/root information is never hidden by transitive structure.

### I2

Repeated-pattern n and support remain visible.

### I3

Trunk and branch are distinguishable.

### I4

Unique continuation is distinguishable from recurrent branch.

### I5

Direct POINTER contact is distinguishable from transitive ancestry.

### I6

Minimum distance never substitutes for full relational path identity.

### I7

Neighbor-star hit always includes a pattern witness.

No naked co-occurrence edge.

### I8

Hop depth remains explicit.

### I9

Cross-scale participation does not imply semantic similarity.

### I10

Filtering/compression never deletes Lace; it only changes the read view.

---

## 16. Reconstructibility

Everything must be reconstructible from:
- authoritative 1D Lace;
- derived 2D sampling field;
- root identity;
- POINTER ancestry.

Classify each calculation as:

### local anchor-cone read

Occurrence/pattern search.

### pointer traversal

D1 retained paths.

### bounded star-hop expansion

Derived repeated-pattern adjacency.

No correctness dependency on:
- persistent star table;
- inverted index;
- trie;
- embeddings;
- graph DB.

Efficiency remains later work.

---

## 17. Pass-4 falsifier board

| ID | Falsifier | Consequence |
|---|---|---|
| **F4-1** | Pass-3 layered star result cannot be reproduced | STOP |
| **F4-2** | compression loses WHEN / WHAT / QUESTION-IS branch | candidate fails |
| **F4-3** | maximal-only view hides high-support trunk | C-B fails |
| **F4-4** | event-node compression loses any recurrent branch | C-C fails |
| **F4-5** | Pareto view contains almost all raw patterns | insufficient compression |
| **F4-6** | Pareto view deletes a structurally distinct branch | candidate fails |
| **F4-7** | support-first needs semantic tie-break | candidate fails |
| **F4-8** | scale-first needs semantic tie-break | candidate fails |
| **F4-9** | IS requires stop-word suppression for method to function | thesis fails |
| **F4-10** | one-hop pattern witness cannot reconstruct neighbor root | star-hop fails |
| **F4-11** | hop2 already reaches most corpus vocabulary | implicit recursion unsafe |
| **F4-12** | closure is required for correctness | investigate contradiction |
| **F4-13** | distance-only PIE view loses alternative ancestry | P-A fails |
| **F4-14** | one-shortest-path view loses distinct D1 branch | P-B fails |
| **F4-15** | all-path view is necessary even in D1 | record path-contract cost |
| **F4-16** | shortest+alternatives cannot preserve D1 structure | P-D fails |
| **F4-17** | structural result requires scalar semantic weights | reject scalar |
| **F4-18** | result contract requires a persistent second index for correctness | reject architecture |
| **F4-19** | search view writes/rewrites Lace or defines retention | scope breach |
| **F4-20** | law edits/code/src/Cargo/Rust needed | STOP |

---

## 18. Proof board

Execution must produce:

1. Pass-3 layered result reproduction.
2. QUESTION raw repeated DAG count.
3. QUESTION C-B maximal result.
4. QUESTION C-C event-node result.
5. QUESTION C-D Pareto result.
6. branch-loss comparison.
7. redundancy/compression ratios.
8. ANSWERS control.
9. IS saturation control.
10. support-first ordering.
11. scale-first ordering.
12. partial-order/event-tree ordering.
13. hop1 counts all anchors.
14. hop2 counts all anchors.
15. expansion factors/vocabulary fractions.
16. D1 PIE ring/path table.
17. P-A/B/C/D pointer-path comparison.
18. ten search-view invariants tested.
19. 20 falsifiers reported.
20. no law/code/retention changes.

Target:

\[
20/20.
\]

---

## 19. Required product

Create:

docs/plans/sampling-density-emergence-pass-4-findings.md

It must contain:
- actual Pass-3 baseline;
- QUESTION/ANSWERS/IS recurrence metrics;
- compression comparison;
- structural ordering comparison;
- one-hop/two-hop expansion;
- D1 PIE pointer-path comparison;
- surviving frontier/result contract;
- falsifier board;
- proof board;
- exact leftovers for Pass 5;
- no law edit.

---

## 20. Expected outcomes - not findings

Likely:

- maximal-only compression will hide useful trunks;
- event-node compression will preserve the recurrence shape with fewer nodes;
- support-first and scale-first each expose different structure, making one total ordering unjustified;
- partial/frontier ordering will survive;
- IS will expand more than QUESTION/ANSWERS but not require semantic suppression at two hops;
- D1 will prove minimum distance alone is insufficient;
- shortest path + explicit alternatives may be a workable retained-path result.

The likely next leftover is:

\[
\boxed{
\text{minimal structural search-result contract}
}
\]

not semantic relevance.

Actual execution may refute these.

---

## 21. Stop line

Pass 4 does not:
- revisit whether star search works;
- define retention;
- define semantic relevance;
- choose scalar weights;
- create stop-word lists;
- create embeddings;
- invent a persistent search index;
- define a query language;
- edit law;
- create src/Cargo/Rust;
- auto-open Pass 5.

## Steward test

Pass 3 proved you can enter Lace through a star.

Pass 4 asks how to keep your place while you walk outward.

Never replace:

> what path got me here?

with:

> this result feels more relevant.


---

## 22. Execution receipt

Pass 4 executed as one complete pass under maps.

- execution claim: 089a039b268c24dc9fddc13d7999c218f0795bbc
- findings: f8dae453bce04d8f6b92e8f53a718224e7a5ca3b

### Main result

Search remains usable without semantic relevance scoring when it preserves explicit structural frontiers and path witnesses.

Surviving read model:

\[
Search(a)
=
F_{lexical}
+
F_{pattern}
+
F_{pointer}
+
F_{star-hop}.
\]

Key findings:
- maximal-only pattern compression loses high-support trunks;
- Pareto-only compression loses real branches;
- strict event-node compression barely compresses common anchors;
- hop-2 expansion remains bounded in the Coffee Cup specimen;
- full repeated-pattern closure makes QUESTION, ANSWERS and IS converge to the same 75-root component, erasing anchor-specific shape;
- D1 PIE minimum distance and one shortest path are insufficient because alternative retained branches exist;
- exact retained path preservation is naturally represented as a derived witness DAG slice.

### Actual residuals

Only:
- minimal derived search-result record;
- DAG/frontier serialization;
- explicit expansion operator vocabulary;
- local reconstruction strategy over a large conceptual 2D surface.

No Pass 5 opened automatically.

### Scope preserved

- no semantic score;
- no retention rule;
- no stop-word policy;
- no persistent search index;
- no law edit;
- no src/Cargo/Rust.
