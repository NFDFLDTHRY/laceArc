# SAMPLING / DENSITY / EMERGENCE campaign - Pass 5 PLAN

**Status:** **EXECUTED 2026-09-21 - PASS 5 COMPLETE.**
**Name:** MINIMAL DERIVED SEARCH RESULT CONTRACT / LOCAL RECONSTRUCTION
**Planning station:** maps (Astra-search-contract).
**Pinned main before claim:** 95d13dd46e3bfce8a0a604d9ca1ffe3936a5d736.
**Maps claim:** 814c3f4794c791b5c2d07d4c6ce255166fe1b9fd.
**Depends on:** Sampling / Density / Emergence Passes 1-4 EXECUTED.
**Pass shape:** one complete pass. No subpasses.
**Law:** no law edit.
**Implementation:** no src/. No Cargo. No Rust. No search API.
**Acceptance:** absent.

Pass 4 closed the search-shape question:

\[
\boxed{
\text{use explicit structural frontiers and witness DAGs, not flat closure or one semantic score.}
}
\]

Its remaining questions are exactly:

1. minimal derived search-result record;
2. DAG/frontier serialization;
3. explicit expansion vocabulary;
4. local reconstruction without materializing the full O(T^2) 2D surface.

Pass 5 attacks those four together as one contract experiment.

---

## 0. Pass-5 question

\[
\boxed{
\text{What is the smallest disposable result contract that can reconstruct one star-search frontier exactly from Lace?}
}
\]

The result must:
- preserve anchor origin;
- preserve recurrence structure;
- preserve retained POINTER paths;
- preserve star-hop witnesses;
- support deliberate outward expansion;
- remain a read of authoritative Lace;
- avoid a persistent search store;
- avoid materializing the full 2D lattice.

The contract is derived.

It is not a new Core row type and not a write protocol.

---

## 1. Search results need an as-of Lace prefix

Lace is append-only.

Search-derived facts can change as Lace grows:
- support can increase;
- new pattern branches can appear;
- new POINTER descendants can appear;
- new neighboring stars can become reachable.

Therefore a result such as:

\[
Support(QUESTION\ ONLY)=5
\]

is incomplete unless it names the Lace prefix over which that statement was derived.

Candidate required field:

\[
\boxed{through=h}
\]

meaning:

> reconstruct this result using rows at indices less than or equal to h.

Within one Lace, permanent row indices plus h identify an immutable prefix.

Pass 5 must construct the same search at two prefixes and prove:
- the old result remains exactly reconstructible against its old prefix;
- a fresh read at a later prefix may contain new support/frontier structure;
- omitting h makes old support/frontier claims ambiguous.

No global Lace identifier is invented in this pass.

---

## 2. Minimal envelope candidate

Candidate derived packet:

\[
SearchRead=(through,anchor,frontier,body).
\]

### through
Highest Lace row included in the read.

### anchor
The word-root row from which this star search was entered.

Pass 5 remains word-star anchored.

### frontier
One of:
- LEXICAL;
- PATTERN;
- POINTER;
- STAR-HOP.

### body
Frontier-specific exact witness data.

Pass 5 tests whether these four envelope fields are necessary and sufficient.

---

## 3. Required vs derived fields

Every candidate field receives one stamp:

- **REQ** - exact reconstruction fails without it;
- **DERIVED** - useful for display but exactly recomputable from required fields plus Lace prefix;
- **REDUNDANT** - duplicates information without adding reconstruction power;
- **OPEN**.

Expected convenience fields to test as DERIVED:
- support count;
- minimum pointer distance;
- rendered pattern text;
- path count;
- branch fanout.

The pass must prove or refute those expectations.

---

## 4. Lexical frontier contract

Candidate body:

\[
LexicalBody=\{rows\}.
\]

Rows may include:
- root WORD;
- occurrence WORD rows;
- retained RootTouch rows.

Question:

> Are explicit role labels ROOT / OCCURRENCE / ROOT_TOUCH necessary?

Test whether roles can be reconstructed from:
- envelope anchor root;
- row kind;
- row contents and operands;
- prefix history.

Use D1 PIE as the exact retained specimen.

---

## 5. Pattern-node identity candidates

A repeated pattern must be identified exactly without storing a semantic phrase object.

Compare:

### PID-A - full root-key tuple

Store the complete ordered root-key tuple.

Exact, but duplicates content.

### PID-B - one exemplar start WORD row plus n

Store:
- exemplar start WORD row;
- n.

Reconstruct the n-WORD sample by walking later WORD rows in append order while ignoring interleaved POINTER rows.

### PID-C - n plus all occurrence-start WORD rows

Store:
- n;
- all occurrence-start WORD rows.

One start is also the exemplar.

Then:

\[
support=|\text{occurrence starts}|.
\]

Pattern tuple and support are reconstructible.

### PID-D - opaque hash

BLOCK as the primary exact witness unless unhashed structural evidence is still present.

### Expected candidate

PID-C is likely the minimal exact reusable node.

Execution must prove or refute it on QUESTION, ANSWERS and IS.

---

## 6. WORD position vs Lace row reference

The 2D sampler used derived source-WORD ordinals.

The durable store uses Lace row indices.

Pass 5 must avoid creating another permanent coordinate store.

Test:

> use the actual WORD row that begins a sample occurrence as its occurrence reference.

Given:
- start WORD row;
- n;
- prefix h;

the sample is reconstructed by walking forward through WORD rows and skipping POINTER rows.

Falsifier:

If start WORD row plus n cannot reconstruct the exact sample in the current model, this representation fails.

---

## 7. Pattern DAG serialization

Pass 4 preserved the full derived recurrence DAG.

Candidate packet-local serialization:

\[
PatternBody=(nodes,edges).
\]

Each node gets a packet-local ordinal only for serialization.

The ordinal:
- is not a Lace row;
- is not authoritative;
- need not remain stable after the packet is discarded.

Node witness:
- n;
- occurrence-start WORD rows.

Edge:
- parent packet ordinal;
- child packet ordinal;
- optional LEFT or RIGHT extension marker.

Question:

Is extension side REQ, or can it be reconstructed from exact parent/child witnesses?

No canonical collapse is admitted.

---

## 8. Pointer witness DAG contract

Pass 4 found:
- distance alone fails;
- one shortest path fails;
- all path lists preserve exactness but duplicate shared ancestry;
- a witness DAG slice is the strongest compact exact view.

Candidate pointer hit:

\[
PointerHit=(target,witness\_rows).
\]

Where:
- target is the retained result Lace row;
- witness_rows is the set of Lace rows in the anchor-to-target witness DAG slice.

Because every POINTER row already stores its operands, test:

\[
\boxed{\text{explicit witness edges are DERIVED from witness row contents.}}
\]

Also test as DERIVED:
- minimum distance;
- shortest path;
- all path count.

Use D1 PIE, especially target 0010.

---

## 9. Exact witness-DAG slice

For anchor row set A and target t, define:

\[
WitnessRows(A,t)
\]

as the subset of:

\[
Reach(t)
\]

that lies on at least one retained operand path from A to t.

This excludes target ancestry unrelated to the chosen anchor.

Important distinction:

\[
WitnessRows(A,t)\neq Reach(t)
\]

in general.

Pass 5 must calculate this for every D1 PIE POINTER result.

---

## 10. Star-hop hit contract

Pass 3 proved:

\[
word\ root
\to
repeated\ pattern
\to
other\ word\ root.
\]

Candidate:

\[
StarHop=(to\_root,via\_pattern).
\]

Where:
- to_root is another word root;
- via_pattern is the packet-local pattern witness connecting the roots.

Question:

Is hop depth required for a one-hop frontier, or DERIVED from frontier context?

Pass 5 does not generalize beyond explicit returned frontiers.

---

## 11. Expansion operator vocabulary

Pass 4 left three explicit expansion actions.

Pass 5 tests whether these are sufficient:

### OP-PATTERN

\[
EXPAND\_PATTERN(node)
\]

Return exact one-word left/right extensions from a pattern node.

### OP-POINTER

\[
EXPAND\_POINTER(frontier)
\]

Return the next retained pointer-distance frontier and witness slices.

### OP-STAR

\[
EXPAND\_STAR(root)
\]

Return one word-to-repeated-pattern-to-word neighboring-star frontier.

### Unique source context question

Test whether a fourth search operator is necessary.

Candidate answer:
- no;
- occurrence spans already point to source WORD rows from which unique context can be read.

No general semantic query language is designed.

---

## 12. Expansion preserves the same prefix

Every expansion result must remain under:

\[
through=h.
\]

Operators must not silently refresh to newer Lace.

A caller that wants current state issues a fresh read at a later high-water mark.

This is necessary for deterministic replay.

---

## 13. Local pattern reconstruction without full T squared surface

Coffee Cup:

\[
T=1219
\]

gives:

\[
743{,}590
\]

conceptual contiguous cells.

Pass 5 tests anchor-local construction.

For anchor occurrence count m and explored scale N, the number of candidate anchored cells through N has upper bound:

\[
\boxed{
m\frac{N(N+1)}{2}
}
\]

before overlap deduplication.

From Pass 4:

### QUESTION

\[
m=7,\ N=5
\Rightarrow
105
\]

upper-bound anchored candidates.

### ANSWERS

\[
m=5,\ N=5
\Rightarrow
75.
\]

### IS

\[
m=65,\ N=6
\Rightarrow
1365.
\]

Execution must compute actual distinct anchored-cell counts and verify the local reconstruction returns exactly the Pass-4 repeated classes.

---

## 14. Local pattern reconstruction procedure

Candidate derived read:

1. derive anchor WORD occurrences through prefix h;
2. seed n=1 anchored spans;
3. at each scale:
   - extend current spans one WORD left and right where valid;
   - group by exact root-key tuple;
   - deduplicate identical occurrence spans;
4. emit repeated classes;
5. continue only from explicitly requested frontier nodes.

This reconstructs only the anchor cone.

Exactness requirement:

For QUESTION, ANSWERS and IS:

\[
LocalRepeatedClasses(a)=Pass4RepeatedClasses(a).
\]

Zero missing and zero extra classes.

---

## 15. Local support proof

Every exact pattern returned by an anchor-cone search contains the anchor.

Therefore every corpus occurrence of that exact pattern also contains that anchor.

Hypothesis:

> support of an anchor-containing exact pattern is completely determined inside the anchor cone.

Pass 5 must state and test this proof.

No separate corpus-wide pattern scan should be required for correctness.

---

## 16. Local POINTER reconstruction with one forward scan

No persistent reverse-pointer index is admitted.

Test this derived procedure.

Seed participating set P with anchor WORD/root occurrence rows.

Scan Lace in increasing row order through h.

For each POINTER:

\[
p=Join(x,y)
\]

if x or y is already in P:
- add p to P;
- record participating operand edge or edges.

Because operands are backward-only, one forward scan should recover all later retained participants through h.

Test on D1 PIE.

Required recovery:
- 0002;
- 0004;
- 0006;
- 0007;
- 0009;
- 0010;
- every witness branch reported in Pass 4.

No reverse index may be assumed.

---

## 17. Prefix replay experiment

### D1 PIE

Construct reads through:
- h=0004;
- h=0007;
- h=0010.

Expected:
- later prefixes add descendants;
- the h=0004 packet remains reproducible later when replayed through h=0004.

### Coffee Cup

Use:
- first-two-page prefix from Pass 2;
- full 1,219-token prefix.

For at least one anchor present in both, compare:
- occurrence count;
- repeated classes;
- support.

This proves why through is or is not necessary.

---

## 18. Minimality deletion tests

For each field remove it and attempt exact reconstruction.

### M1 remove through
Can historical support/frontier state remain unambiguous after growth?

### M2 remove anchor
Can the packet still identify which star generated its pattern or pointer slice?

### M3 remove frontier kind
Can the body always be interpreted unambiguously?

### M4 pattern remove n
Can occurrence starts alone determine sample length?

### M5 pattern remove occurrence starts
Can exact support/spans survive without re-running the search?

### M6 remove full tuple but keep n plus occurrence starts
Can exact tuple be reconstructed?

### M7 pointer remove witness rows
Does target alone preserve why it is a star-search result?

### M8 pointer remove explicit edges but keep witness rows
Can edges be reconstructed from Lace row contents?

### M9 star-hop remove via-pattern witness
Does that create a naked word-to-word edge?

### M10 remove convenience support/distance/path-count fields
Can all be exactly recomputed?

These deletion tests determine the minimal contract.

---

## 19. Round-trip contract test

For each result type:

1. derive the result;
2. serialize only candidate REQ fields;
3. discard ephemeral construction state;
4. reconstruct against Lace prefix through;
5. recompute DERIVED fields;
6. compare with original.

Required specimens:

### Lexical
D1 PIE.

### Pattern
Coffee QUESTION and IS.

### Pointer
D1 PIE to 0010 witness DAG.

### Star-hop
QUESTION to ANSWERS through exact repeated pattern witness.

Zero structural mismatch required.

---

## 20. Growth stability

Take a result at prefix h.

Then grow to h' > h.

Test:

### historical replay
Use through=h and reproduce the original result exactly.

### fresh read
Use through=h' and permit new occurrences/branches/pointers.

The old result is not wrong.

It is a read of an older immutable prefix.

This is provenance without turning the search result into truth storage.

---

## 21. No second-store test

Discard every derived result.

Reconstruct it from Lace prefix.

Correctness must not depend on:
- persistent star table;
- reverse-pointer database;
- sample table;
- inverted index;
- persistent DAG cache;
- embedding store.

Performance caches remain a later implementation concern only.

---

## 22. Authority boundary

Pass 5 may establish a maps-level derived-read contract.

It may not promote that contract into:
- Core law;
- public API;
- ABI;
- Rust type;
- persistent file format;
- database schema.

Any surviving contract remains pending later propagation/acceptance.

---

## 23. Pass-5 falsifier board

| ID | Falsifier | Consequence |
|---|---|---|
| **F5-1** | exact replay does not require through | through candidate refuted |
| **F5-2** | old result cannot replay after later growth | contract fails |
| **F5-3** | local QUESTION cone misses Pass-4 class | local reconstruction fails |
| **F5-4** | local ANSWERS cone misses class | fails |
| **F5-5** | local IS cone misses class | common-anchor stress fails |
| **F5-6** | local cone needs full T squared lattice | thesis fails |
| **F5-7** | anchor-pattern support needs non-anchor scan | investigate contradiction |
| **F5-8** | D1 PIE overlay cannot be recovered by one forward scan | pointer reconstruction fails |
| **F5-9** | pointer correctness requires persistent reverse index | second-store conflict |
| **F5-10** | full pattern tuple required despite n plus occurrence starts | PID-C fails |
| **F5-11** | witness edges cannot be rebuilt from witness rows | serialization fails |
| **F5-12** | witness rows removable without losing exact explanation | shrink contract |
| **F5-13** | star-hop via-pattern removable without naked edge | shrink contract |
| **F5-14** | support/distance/path count must be stored | convenience hypothesis fails |
| **F5-15** | packet-local ordinals become canonical authority | reject serialization |
| **F5-16** | three expansion operators cannot express current frontiers | vocabulary insufficient |
| **F5-17** | expansion silently changes through | replay breach |
| **F5-18** | correctness depends on persistent search/index/cache state | second-store breach |
| **F5-19** | contract requires law edit, retention or semantic ranking | scope breach |
| **F5-20** | code/src/Cargo/Rust required | STOP |

---

## 24. Proof board

Execution must produce:

1. candidate envelope field table.
2. REQ / DERIVED / REDUNDANT classification.
3. lexical PIE round trip.
4. QUESTION pattern round trip.
5. IS pattern round trip.
6. PIE-to-0010 witness-DAG round trip.
7. QUESTION-to-ANSWERS star-hop round trip.
8. D1 prefix replay at 0004 / 0007 / 0010.
9. Coffee prefix replay/growth comparison.
10. local QUESTION cone equality with Pass 4.
11. local ANSWERS cone equality.
12. local IS cone equality.
13. actual local candidate-cell counts vs 743,590.
14. anchor-cone support proof.
15. D1 one-forward-scan pointer reconstruction.
16. pattern serialization deletion tests.
17. pointer serialization deletion tests.
18. expansion operator sufficiency.
19. 20 falsifiers reported.
20. no law/code/implementation changes.

Target:

\[
20/20.
\]

---

## 25. Required product

Create:

docs/plans/sampling-density-emergence-pass-5-findings.md

It must contain:
1. inherited Pass-4 facts;
2. as-of-prefix proof;
3. minimal envelope analysis;
4. frontier-specific record candidates;
5. REQ / DERIVED / REDUNDANT table;
6. pattern identity comparison;
7. pattern DAG serialization;
8. pointer witness-DAG serialization;
9. star-hop serialization;
10. expansion operator test;
11. local pattern reconstruction;
12. actual anchor-cone counts and full-lattice comparison;
13. local support proof;
14. one-forward-scan pointer reconstruction;
15. prefix/growth replay;
16. deletion/minimality tests;
17. round-trip tests;
18. falsifier board;
19. proof board;
20. exact leftovers for Pass 6, if any.

No Pass 6 is opened automatically.

---

## 26. Expected outcomes - not findings

Likely, not assumed:

- through is required for replayable derived facts;
- minimal envelope is through + anchor + frontier + body;
- pattern nodes can use n plus occurrence-start WORD rows instead of storing full tuples/support;
- pointer hits can use target plus witness-row set, with edges/distances/path counts derived;
- star-hop needs destination root plus exact via-pattern witness;
- three expansion operators are enough for current campaign;
- local anchor-cone reads exactly reproduce Pass-4 pattern frontiers while examining dramatically fewer cells than the full 743,590-cell surface;
- D1 PIE pointer participation is reconstructible with one forward scan and no reverse index;
- search packets can be discarded and exactly rebuilt from immutable Lace prefixes.

If those survive, the next leftover should concern propagation/acceptance or implementation efficiency, not search semantics.

---

## 27. Stop line

Pass 5 does not:
- revisit whether star search works;
- revisit frontier/path preservation;
- define semantic relevance;
- define retention;
- add embeddings;
- add stop-word logic;
- create persistent indexes;
- design a general query language;
- define public API/ABI;
- edit pointer-emission.md;
- edit systems-manifest.md;
- reconcile historical Pass-6 law;
- create src/, Cargo, Rust or tests;
- open Pass 6 automatically.

## Steward test

A search result is allowed to disappear.

The Lace is not.

If the result cannot be thrown away and reconstructed exactly from the named Lace prefix, the search layer has accidentally become another store.


---

## 28. Execution receipt

Pass 5 executed as one complete pass under maps.

- execution claim: 78d56eccb4efc24ced3f728de3b81c3757804eb3
- findings: e4d7ba168c509cbfe0b9f8c126d29d8f11112eb4

### Main result

The planned SearchRead envelope shrank to:

\[
SearchHandle=(through,anchor,item).
\]

Tagged item variants:

\[
LEXICAL(row)
\]

\[
PATTERN(n,exemplar\_start)
\]

\[
POINTER(target)
\]

\[
STAR\_HOP(to\_root,via\_pattern).
\]

Most apparent result fields are derived, not required:
- pattern tuple;
- occurrence starts;
- support;
- pattern edges;
- pointer witness rows;
- pointer edges;
- pointer distance;
- path lists/count;
- hop depth.

### Local reconstruction

Exact Pass-4 pattern frontiers were recovered using only local anchor cones:
- QUESTION: 105 cells -> 13/13 classes;
- ANSWERS: 75 -> 6/6;
- IS: 1297 -> 42/42;

versus 743,590 full Coffee Cup conceptual cells.

D1 PIE pointer participation was exactly recovered with one forward scan and no reverse index.

### Primary leftovers

Search semantics are substantially closed at maps level.

Remaining work is:
- law/model/global-ASCII reconciliation and propagation;
- optional implementation efficiency/caching;
- cross-Lace identity only if portability across separate Lace instances becomes required.

No Pass 6 opened automatically.

### Scope preserved

- no semantic ranking;
- no retention rule;
- no persistent search store;
- no law edit;
- no src/Cargo/Rust.
