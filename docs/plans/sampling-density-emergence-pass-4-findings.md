# SAMPLING / DENSITY / EMERGENCE - Pass 4 findings

**Status:** EXECUTED 2026-09-21.
**Name:** STRUCTURAL SEARCH FRONTIERS / PATH PRESERVATION.
**Station:** maps (Astra-search-bounds).
**Plan:** sampling-density-emergence-pass-4-plan.md.
**Execute base:** 98ba7ad49ade797c67492cf5f3379844e8508867.
**Execution claim:** 089a039b268c24dc9fddc13d7999c218f0795bbc.
**Pass 3:** EXECUTED and reproduced.
**Law files edited:** NO.
**Implementation:** none. No src/. No Cargo. No Rust.
**Acceptance:** absent.
**Subpasses:** none.

## 0. Result

Pass 3 established that a star is a layered read:

\[
StarSearch(a)
=
Lexical(a)
+
AnchoredPatterns(a)
+
PointerPaths(a).
\]

Pass 4 asks how that search remains usable as it expands.

The strongest result is:

\[
\boxed{
\text{preserve explicit structural frontiers and paths; do not collapse search to closure or one scalar ordering.}
}
\]

The surviving search shape is:

    ANCHOR
      |
      +-- lexical frontier
      |
      +-- repeated-pattern frontier
      |      n / support / extension path
      |
      +-- retained-pointer frontier
      |      distance ring / witness DAG
      |
      +-- neighboring-star frontier
             explicit hop number / pattern witness

Three candidate shortcuts fail:

1. maximal-pattern-only compression removes important high-support trunks;
2. Pareto compression drops real recurrent branches, especially for a common anchor;
3. flat closure makes distinct anchors converge into the same connected search component.

The search should therefore expose **where the user is in the structure**, not attempt to replace that structure with one relevance number.

---

## 1. Pass-3 baseline reproduced

### QUESTION

Recomputed:
- lexical occurrences: 7;
- repeated anchored pattern classes: 13;
- recurrence through n=5;
- one-hop neighboring roots: 6.

Repeated classes by n:

| n | classes |
|---:|---:|
| 1 | 1 |
| 2 | 3 |
| 3 | 4 |
| 4 | 3 |
| 5 | 2 |

The five-support trunk and QUESTION IS branch were recovered.

### D1 PIE

Recomputed:
- PIE WORD rows: 0000, 0003;
- direct PIE POINTERs: 0002, 0004, 0006;
- farther PIE-participating POINTERs: 0007, 0009, 0010;
- all 6/6 D1 POINTER rows transitively participate in PIE.

Pass-3 saturation result stands.

---

## 2. Anchor stress set

Coffee Cup bounded specimen:
- 1,219 tokens;
- 469 distinct token identities.

### QUESTION

- occurrences: 7;
- repeated anchored classes: 13;
- max recurrent n: 5;
- one-hop roots: 6.

### ANSWERS

- occurrences: 5;
- repeated anchored classes: 6;
- max recurrent n: 5;
- one-hop roots: 5.

Repeated classes by n:

| n | classes |
|---:|---:|
| 1 | 1 |
| 2 | 1 |
| 3 | 1 |
| 4 | 1 |
| 5 | 2 |

This is the tight control.

### IS

- occurrences: 65;
- repeated anchored classes: 42;
- max recurrent n: 6;
- one-hop roots: 25.

Repeated classes by n:

| n | classes |
|---:|---:|
| 1 | 1 |
| 2 | 17 |
| 3 | 12 |
| 4 | 7 |
| 5 | 4 |
| 6 | 1 |

This is the high-frequency stress anchor.

No stop-word policy was used.

---

## 3. Raw structural hit signature survives

A derived hit can be described structurally as:

\[
\sigma(h|a)
=
(
layer,
n,
support,
coverage,
branch,
pointer\_distance,
path,
hop\_depth
).
\]

No field requires semantic meaning.

No field requires a second authoritative store.

Pass 4 therefore keeps the signature as a useful analysis contract.

It does **not** turn the tuple into a scalar score.

---

## 4. Recurrence compression comparison

Pass 4 compared:

- C-A all repeated patterns;
- C-B maximal repeated patterns only;
- C-C strict structural event nodes;
- C-D support/scale/coverage Pareto nodes.

### QUESTION

| view | nodes | compression | terminal branches lost | support levels preserved |
|---|---:|---:|---:|---|
| raw | 13 | 0% | 0 | 7, 5, 2 |
| maximal only | 3 | 76.9% | 0 | 2 only |
| event nodes | 13 | 0% | 0 | 7, 5, 2 |
| Pareto | 4 | 69.2% | 1 | 7, 5, 2 |

Pareto nodes:

- QUESTION, support 7;
- ANSWERS ONE QUESTION ONLY, support 5;
- ANSWERS ONE QUESTION ONLY WHAT, support 2;
- ANSWERS ONE QUESTION ONLY WHEN, support 2.

The Pareto view loses the distinct terminal:

\[
QUESTION\ IS.
\]

So it is not branch-complete.

### ANSWERS

| view | nodes | compression | terminal branches lost | support levels preserved |
|---|---:|---:|---:|---|
| raw | 6 | 0% | 0 | 5, 2 |
| maximal only | 2 | 66.7% | 0 | 2 only |
| event nodes | 4 | 33.3% | 0 | 5, 2 |
| Pareto | 3 | 50.0% | 0 | 5, 2 |

The event-node view works reasonably here because ANSWERS has one clean trunk.

### IS

| view | nodes | compression | terminal branches lost | support levels preserved |
|---|---:|---:|---:|---|
| raw | 42 | 0% | 0 | 65,19,13,10,7,6,5,4,3,2 |
| maximal only | 19 | 54.8% | 0 | 7,5,4,3,2 |
| event nodes | 41 | 2.4% | 0 | all |
| Pareto | 7 | 83.3% | 16 | 65,19,10,5,2 |

The strict event-node rule barely compresses IS.

The Pareto rule compresses strongly but discards 16 distinct terminal recurrent branches.

### Compression verdict

No tested lossy compression preserves all desired structure across all anchor regimes.

Therefore:

\[
\boxed{
\text{the derived recurrence DAG should remain reconstructible; compression is a view, not the search truth.}
}
\]

Pass 4 does not promote any one compression as canonical.

---

## 5. Why maximal-only fails

Maximal repeated patterns preserve terminal branches, but they remove the high-support trunk.

QUESTION maximal-only returns:

- QUESTION IS, support 2;
- ANSWERS ONE QUESTION ONLY WHAT, support 2;
- ANSWERS ONE QUESTION ONLY WHEN, support 2.

It loses:
- QUESTION, support 7;
- ANSWERS ONE QUESTION ONLY, support 5.

ANSWERS maximal-only similarly loses its support-5 trunk.

IS maximal-only loses the broad high-support structures:
- IS, 65;
- THIS IS, 19;
- IS THE, 13;
- THIS IS THE, 10.

Therefore:

\[
\boxed{
\text{terminal specificity cannot replace trunk support.}
}
\]

---

## 6. Why Pareto-only fails

Pareto ordering by:
- n;
- support;
- anchor occurrence coverage

is nonsemantic and strongly compressive.

But it does not preserve all structurally distinct branches.

QUESTION loses QUESTION IS.

IS loses 16 of 19 terminal recurrent branches.

Thus:

\[
\boxed{
\text{support/scale/coverage nondominance is useful metadata, but not a complete search frontier.}
}
\]

---

## 7. Support-first vs scale-first

Both total orderings are mechanically possible.

Neither requires semantic tie-breaking.

### QUESTION support-first begins

1. QUESTION - n=1, support 7
2. ANSWERS ONE QUESTION ONLY - n=4, support 5
3. ANSWERS ONE QUESTION - n=3, support 5
4. ONE QUESTION ONLY - n=3, support 5
5. ONE QUESTION - n=2, support 5
6. QUESTION ONLY - n=2, support 5
7. n=5 WHAT branch - support 2
8. n=5 WHEN branch - support 2

This emphasizes broad shared trunks.

### QUESTION scale-first begins

1. ANSWERS ONE QUESTION ONLY WHAT - n=5, support 2
2. ANSWERS ONE QUESTION ONLY WHEN - n=5, support 2
3. ANSWERS ONE QUESTION ONLY - n=4, support 5
4. ONE QUESTION ONLY WHAT - n=4, support 2
5. ONE QUESTION ONLY WHEN - n=4, support 2
...
13. QUESTION - n=1, support 7

This emphasizes longer specific structures.

### Verdict

Both are valid structural projections.

Neither is justified as the universal search order.

A scalar mix would require weights not supplied by law or human ruling.

The surviving model is a partial/frontier presentation with optional deterministic structural sorts.

---

## 8. Explicit frontier expansion

One-hop root counts:

| anchor | hop-1 roots |
|---|---:|
| QUESTION | 6 |
| ANSWERS | 5 |
| IS | 25 |

New roots introduced at hop 2:

| anchor | new hop-2 roots |
|---|---:|
| QUESTION | 27 |
| ANSWERS | 5 |
| IS | 33 |

Total distinct roots through hop 2 including the anchor:

| anchor | total through hop 2 | vocabulary fraction |
|---|---:|---:|
| QUESTION | 34 | 7.25% |
| ANSWERS | 11 | 2.35% |
| IS | 59 | 12.58% |

Expansion factor using new hop-2 roots divided by hop-1 roots:

| anchor | factor |
|---|---:|
| QUESTION | 4.50 |
| ANSWERS | 1.00 |
| IS | 1.32 |

Two hops do **not** reach most of the 469-root vocabulary in this specimen.

So F4-11 does not fire.

But the anchors behave very differently, which argues against implicit unbounded expansion.

---

## 9. Closure experiment

Repeated-pattern word-hop adjacency was expanded to graph closure.

For all three anchors:

\[
QUESTION,\ ANSWERS,\ IS
\]

the closure is the same connected component:

\[
75\text{ roots}.
\]

That is:

\[
15.99\%
\]

of the 469-root specimen vocabulary.

Hop ring sizes:

### QUESTION

| hop | newly reached roots |
|---:|---:|
| 0 | 1 |
| 1 | 6 |
| 2 | 27 |
| 3 | 28 |
| 4 | 12 |
| 5 | 1 |

### ANSWERS

| hop | newly reached roots |
|---:|---:|
| 0 | 1 |
| 1 | 5 |
| 2 | 5 |
| 3 | 30 |
| 4 | 28 |
| 5 | 5 |
| 6 | 1 |

### IS

| hop | newly reached roots |
|---:|---:|
| 0 | 1 |
| 1 | 25 |
| 2 | 33 |
| 3 | 15 |
| 4 | 1 |

### Closure verdict

Closure does not consume the whole corpus in this specimen.

But it makes three very different anchors converge to the same 75-root component.

Therefore closure erases origin-specific search shape.

The surviving search behavior is:

\[
\boxed{
\text{explicit hop/frontier expansion, not automatic closure.}
}
\]

The user can walk farther.

The read model should not silently jump to closure.

---

## 10. IS stress result

IS does not break structural search.

No stop-word suppression was required.

What changes is frontier size:
- 65 lexical occurrences;
- 42 repeated anchored patterns;
- 25 first-hop neighboring roots;
- 59 roots through hop 2.

The strict event-node compression fails to simplify it meaningfully:

\[
42\to41.
\]

Pareto simplifies it too aggressively:

\[
42\to7
\]

while dropping 16 terminal recurrent branches.

So common anchors strengthen the case for **progressive expansion over a reconstructible DAG** rather than a pre-compressed summary.

---

## 11. D1 PIE ring structure

Minimum distance rings from either PIE WORD row:

### d=0

- 0000
- 0003

### d=1

- 0002
- 0004
- 0006

### d=2

- 0007
- 0010 by shortest path

### d=3

- 0009

Ring membership is useful.

But it does not preserve full ancestry.

---

## 12. Complete PIE witness paths

All retained outward paths from PIE occurrences in D1:

### 0002

1 path:
- 0000 -> 0002

### 0004

2 paths:
- 0000 -> 0004
- 0003 -> 0004

### 0006

1 path:
- 0003 -> 0006

### 0007

3 paths:
- 0000 -> 0004 -> 0007
- 0003 -> 0004 -> 0007
- 0003 -> 0006 -> 0007

### 0009

3 paths:
- 0000 -> 0004 -> 0007 -> 0009
- 0003 -> 0004 -> 0007 -> 0009
- 0003 -> 0006 -> 0007 -> 0009

### 0010

4 paths:
- 0000 -> 0002 -> 0010
- 0000 -> 0004 -> 0007 -> 0009 -> 0010
- 0003 -> 0004 -> 0007 -> 0009 -> 0010
- 0003 -> 0006 -> 0007 -> 0009 -> 0010

This proves path multiplicity begins even in D1.

---

## 13. Pointer path candidates

### P-A - distance only

**REFUTED as complete result.**

It cannot distinguish the four PIE routes into 0010.

### P-B - one shortest path

**REFUTED as complete result.**

For 0010 it would typically expose:

\[
0000\to0002\to0010
\]

and hide the longer root-touch / relation-of-relation branch.

### P-C - all witness paths

**PASS for exact D1 preservation.**

It preserves all retained path information.

But path enumeration can duplicate shared substructure and may grow combinatorially.

### P-D - shortest path + alternative count / first divergence

**INSUFFICIENT for exact preservation as stated.**

Knowing:
- minimum distance;
- one short path;
- number of alternatives;
- first divergence

does not reconstruct the full 0004/0006 -> 0007 -> 0009 branch history.

### Derived consequence

The natural exact representation is not necessarily an enumerated list of paths.

It is the **retained witness DAG slice** between:
- anchor occurrence/root rows;
- the selected result row.

Such a slice compactly represents all witness paths without pretending minimum distance is the structure.

Pass 4 records this as the strongest path-preservation inference.

It is not a new stored object.

It is a read of existing 1D POINTER ancestry.

---

## 14. Surviving structural search frontier

The strongest Pass-4 result is:

    ANCHOR
      |
      +-- LEXICAL FRONTIER
      |     root / occurrences / RootTouch
      |
      +-- PATTERN FRONTIER
      |     exact repeated patterns
      |     extension DAG
      |     n / support / coverage
      |     explicit expand/collapse
      |
      +-- POINTER FRONTIER
      |     distance rings
      |     retained witness DAG slice
      |
      +-- STAR-HOP FRONTIER
            other roots
            exact repeated-pattern witness
            hop depth
            explicit next-frontier expansion

No frontier is silently replaced by closure.

No single scalar ranks all four layers.

---

## 15. Search-view invariants

### I1 lexical remains visible

**PASS.**

### I2 n and support visible

**PASS.**

### I3 trunk vs branch distinguished

**PASS through extension DAG.**

### I4 unique vs recurrent continuation separated

**PASS.**

### I5 direct vs transitive POINTER participation separated

**PASS through distance rings.**

### I6 minimum distance does not replace path identity

**PASS.**

### I7 neighboring star retains pattern witness

**PASS.**

No naked word-word edge is needed.

### I8 hop depth explicit

**PASS.**

### I9 cross-scale participation does not imply semantic similarity

**PASS.**

### I10 filtering/compression does not alter Lace

**PASS.**

**Invariants: 10/10.**

---

## 16. Reconstructibility

All tested structures are derivable.

### Local anchor-cone read

- repeated anchored patterns;
- support;
- extension DAG;
- neighboring roots.

### Pointer traversal

- PIE rings;
- minimum distance;
- witness paths;
- witness DAG slice.

### Bounded star-hop expansion

- hop1;
- hop2;
- closure experiment.

No correctness dependency was found on:
- persistent star table;
- inverted index;
- trie;
- embeddings;
- second graph database.

Performance/caching remains outside this pass.

---

## 17. Falsifier board

| ID | Result |
|---|---|
| **F4-1 Pass-3 layered star cannot be reproduced** | **did not fire** |
| **F4-2 compression loses QUESTION branches** | **FIRED against Pareto-only: QUESTION IS lost** |
| **F4-3 maximal-only hides high-support trunk** | **FIRED** |
| **F4-4 event-node compression loses recurrent branch** | **did not fire, but compression is poor for QUESTION/IS** |
| **F4-5 Pareto equals almost all patterns** | **did not fire** |
| **F4-6 Pareto deletes distinct branch** | **FIRED: 1 QUESTION terminal + 16 IS terminals lost** |
| **F4-7 support-first needs semantic tie-break** | **did not fire** |
| **F4-8 scale-first needs semantic tie-break** | **did not fire** |
| **F4-9 IS requires stop-word suppression** | **did not fire** |
| **F4-10 one-hop witness cannot reconstruct neighbor** | **did not fire** |
| **F4-11 hop2 reaches most vocabulary** | **did not fire: max 12.58%** |
| **F4-12 closure required for correctness** | **did not fire; closure collapses anchor distinctions instead** |
| **F4-13 distance-only PIE loses alternative ancestry** | **FIRED** |
| **F4-14 one-shortest-path PIE loses branch** | **FIRED** |
| **F4-15 all witness paths necessary for exact path-list preservation** | **FIRED; motivates compact witness-DAG view** |
| **F4-16 shortest+count/first-divergence preserves exact D1** | **FIRED against thin P-D** |
| **F4-17 scalar semantic weights required** | **did not fire** |
| **F4-18 persistent second index required** | **did not fire** |
| **F4-19 search writes/defines retention** | **did not fire** |
| **F4-20 law/code required** | **did not fire** |

---

## 18. Proof board

| # | Requirement | Result |
|---:|---|---|
| 1 | reproduce Pass-3 layered result | **PASS** |
| 2 | QUESTION raw DAG | **PASS: 13 nodes** |
| 3 | QUESTION maximal view | **PASS: 3 nodes** |
| 4 | QUESTION event view | **PASS: 13 nodes** |
| 5 | QUESTION Pareto view | **PASS: 4 nodes** |
| 6 | branch-loss comparison | **PASS** |
| 7 | compression ratios | **PASS** |
| 8 | ANSWERS control | **PASS: 6 raw nodes** |
| 9 | IS stress control | **PASS: 42 raw nodes** |
| 10 | support-first ordering | **PASS** |
| 11 | scale-first ordering | **PASS** |
| 12 | partial/frontier ordering | **PASS** |
| 13 | hop1 counts | **PASS** |
| 14 | hop2 counts | **PASS** |
| 15 | expansion/vocabulary fractions | **PASS** |
| 16 | D1 PIE ring/path table | **PASS** |
| 17 | P-A/B/C/D comparison | **PASS** |
| 18 | ten search-view invariants | **PASS 10/10** |
| 19 | 20 falsifiers | **PASS** |
| 20 | no law/code/retention changes | **PASS** |

**Board: 20/20 PASS.**

---

## 19. Exact leftovers after Pass 4

Pass 4 closes:

- star search can be bounded structurally without semantic scores;
- explicit frontiers preserve anchor origin better than closure;
- no tested lossy recurrence compression is canonical across anchors;
- minimum pointer distance is not a path;
- a witness DAG is the strongest exact pointer-path view;
- high-frequency IS does not require semantic suppression.

The remaining questions are narrower.

### G4-A - minimal result record

What exact fields are necessary for a portable derived search hit without over-specifying UI?

Likely categories:
- lexical hit;
- pattern node;
- pointer witness DAG reference/view;
- star-hop witness.

### G4-B - DAG frontier serialization

How should the derived extension DAG / witness DAG be expressed so:
- shared substructure is not duplicated;
- no canonicalization collapses distinct Lace history;
- the result is reconstructible and inspectable?

### G4-C - explicit expansion request

What is the minimal operator vocabulary for:
- expand pattern frontier;
- expand pointer ring;
- expand neighboring star one hop;

without inventing a general semantic query language?

### G4-D - computational strategy

The mathematics is reconstructible, but Coffee Cup already has a 743,590-cell conceptual 2D surface.

How should search derive local cones/frontiers without materializing the entire surface?

This is an implementation/planning concern, not a new Core meaning rule.

---

## 20. Recommended Pass 5 target - not opened

If continued, Pass 5 should target:

\[
\boxed{
\textbf{MINIMAL DERIVED SEARCH RESULT CONTRACT + LOCAL RECONSTRUCTION}
}
\]

It should not revisit:
- whether star search works;
- semantic ranking;
- recurrence retention.

It should define the least structure required to carry:
- an anchor;
- a pattern frontier node;
- a pointer witness DAG slice;
- a star-hop witness;
- explicit expansion handles;

while proving the result remains a disposable read of Lace.

Pass 5 is not opened automatically.

## Steward verdict

The correct search operation is not:

> give me everything connected to this star.

It is:

> show me the current structural frontier, tell me exactly how each result is connected, and let me walk outward deliberately.

The star stays useful because the path stays visible.


---

## 21. Final verification

Final pre-release tip:

**ef8491ab72a81768c1fe6d44890490cc31f084c0**

Tracked tree:

- 703 paths
- recursive tree not truncated
- src/ paths: 0
- Cargo.toml paths: 0
- .rs files: 0

Law surfaces remained byte-unchanged:

- pointer-emission.md: 51224368ae966b6c480746925caa2cade970842e
- systems-manifest.md: 6f0310099cbcf482ad884f653f423b4e806f724b

Law station remained FREE.

Pass 4 changed maps-owned plan/findings/index surfaces only.

**PASS 4 COMPLETE.**
