# SAMPLING / DENSITY / EMERGENCE - Pass 5 findings

**Status:** EXECUTED 2026-09-21.
**Name:** MINIMAL DERIVED SEARCH RESULT CONTRACT / LOCAL RECONSTRUCTION.
**Station:** maps (Astra-search-contract).
**Plan:** sampling-density-emergence-pass-5-plan.md.
**Execute base:** 2a64cd3dd3a4924717fd7da18f24642e6ec5a10f.
**Execution claim:** 78d56eccb4efc24ced3f728de3b81c3757804eb3.
**Pass shape:** one complete pass. No subpasses.
**Law files edited:** NO.
**Implementation:** none. No src/. No Cargo. No Rust.
**Acceptance:** absent.

## 0. Result

Pass 5 closes the search-contract question at maps level.

The planned envelope:

\[
SearchRead=(through,anchor,frontier,body)
\]

shrinks to:

\[
\boxed{
SearchHandle=(through,anchor,item)
}
\]

where item is a tagged structural variant. The tag already carries frontier kind, so a separate top-level frontier field is redundant.

Surviving selected-result variants:

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
STAR\_HOP(to\_root,via\_pattern)
\]

The main result is:

\[
\boxed{
\text{search results may be discarded and rebuilt exactly from the named Lace prefix.}
}
\]

The search layer therefore remains disposable derived state, not a second authoritative store.

---

## 1. Why through is required

Lace is append-only, but derived search facts change with growth.

### D1 PIE prefix replay

Through row 0004:

\[
\{0000,0002,0003,0004\}.
\]

Through row 0007:

\[
\{0000,0002,0003,0004,0006,0007\}.
\]

Through row 0010:

\[
\{0000,0002,0003,0004,0006,0007,0009,0010\}.
\]

An older result remains reproducible later only if reconstruction is bounded to its original high-water mark.

### Coffee Cup growth control

The Coffee Cup source was used as a prose-only analytical feed, not as a literal persisted Lace trace.

First two pages:
- 375 bounded-analysis WORD tokens.

Full text:
- 1,219 tokens.

At two pages:

| anchor | occurrences | repeated classes |
|---|---:|---:|
| QUESTION | 1 | 0 |
| ANSWERS | 1 | 0 |
| IS | 19 | 18 |

At full text:

| anchor | occurrences | repeated classes |
|---|---:|---:|
| QUESTION | 7 | 13 |
| ANSWERS | 5 | 6 |
| IS | 65 | 42 |

Support growth examples:

\[
ANSWERS\ ONE\ QUESTION\ ONLY:1\to5
\]

\[
THIS\ IS\ THE:4\to10.
\]

Therefore through is REQ.

---

## 2. Minimal envelope deletion result

| field | verdict | reason |
|---|---|---|
| through | **REQ** | historical support/frontier changes with growth |
| anchor | **REQ** | same structural hit may belong to several stars |
| top-level frontier separate from item tag | **REDUNDANT** | item tag already discriminates result kind |
| tagged item | **REQ** | identifies the selected structural hit |

Thus:

\[
\boxed{
SearchHandle=(through,anchor,item)
}
\]

is the minimal common envelope found by Pass 5.

---

## 3. Lexical result

D1 PIE anchor:

\[
anchor=0000.
\]

Through row 0010, scanning WORD rows with the PIE value reconstructs:
- root 0000;
- later PIE occurrence 0003.

The ruled RootTouch reconstructs structurally:

\[
0004=Join(0003,0000).
\]

Thus a whole lexical frontier can be regenerated from through + anchor.

For one selected lexical hit:

\[
LEXICAL(row)
\]

is sufficient.

Explicit role labels ROOT / OCCURRENCE / ROOT_TOUCH are DERIVED under the current root/touch model.

---

## 4. Pattern handle minimality

Candidate forms were tested.

The surviving minimal selected-pattern handle is:

\[
\boxed{
PATTERN(n,exemplar\_start)
}
\]

where exemplar_start is one WORD row beginning an exact occurrence.

From:
- through;
- anchor;
- n;
- exemplar start;

the system reconstructs:
- exact ordered root-key tuple;
- every occurrence start;
- support;
- extension-DAG relationships;
- branch fanout.

Therefore:
- n = REQ;
- exemplar start = REQ;
- full tuple = DERIVED;
- all occurrence starts = DERIVED;
- support = DERIVED.

### QUESTION round trip

Analytical specimen handle:

\[
PATTERN(4,259)
\]

reconstructs:

\[
ANSWERS\ ONE\ QUESTION\ ONLY
\]

with starts:

\[
[259,423,664,787,916]
\]

and support 5.

### IS round trip

\[
PATTERN(3,142)
\]

reconstructs:

\[
THIS\ IS\ THE
\]

with 10 exact occurrence starts and support 10.

Both round trips PASS.

---

## 5. Why n is required

One exemplar start does not determine sample length.

At Coffee start 259, valid samples include:

- ANSWERS
- ANSWERS ONE
- ANSWERS ONE QUESTION
- ANSWERS ONE QUESTION ONLY
- ANSWERS ONE QUESTION ONLY WHY
- and longer samples.

Therefore n remains REQ.

---

## 6. WORD-row address discipline

The persistent coordinate is the Lace row index.

A pattern occurrence may be named by its starting WORD row plus n.

Given:
- start WORD row;
- n;
- through;

reconstruction walks forward through Lace rows and counts only WORD rows, ignoring interleaved POINTER rows.

No second permanent source-position coordinate store is required.

Coffee Cup source ordinals were only bounded analytical stand-ins because the repository contains no literal Coffee Lace trace.

---

## 7. Pattern DAG serialization

A repeated-pattern frontier can be represented by a collection of PATTERN handles.

Explicit extension edges are DERIVED.

For parent and child handles, reconstruct the tuples and test exact one-WORD left/right extension.

Therefore:
- packet-local node ordinals = REDUNDANT / presentation-only;
- explicit DAG edges = DERIVED;
- LEFT / RIGHT extension marker = DERIVED.

Packet-local ordinals never become Lace authority.

---

## 8. Pointer hit shrinks further

The planned pointer body:

\[
PointerHit=(target,witness\_rows)
\]

was not minimal.

Deletion of witness_rows still preserves exact reconstruction.

The surviving selected-pointer handle is:

\[
\boxed{
POINTER(target)
}
\]

because through + anchor + target reconstruct:
- witness rows;
- witness edges;
- minimum distance;
- shortest path;
- all retained witness paths;
- path count.

All of those are DERIVED.

---

## 9. D1 PIE to 0010 witness round trip

Anchor occurrence rows:

\[
A=\{0000,0003\}.
\]

Target:

\[
0010.
\]

From:

\[
(through=0010,\ anchor=0000,\ POINTER(0010))
\]

the exact PIE witness slice reconstructs as:

\[
\{0000,0002,0003,0004,0006,0007,0009,0010\}.
\]

Sibling ancestry not on a PIE-to-0010 path is excluded:
- 0001 DESSERT;
- 0005 WHOLE;
- 0008 CUSTOMER.

All four PIE paths reported in Pass 4 are reconstructed.

PASS.

---

## 10. WitnessRows is not Reach

For anchor A and target t:

\[
WitnessRows(A,t)
\subseteq
Reach(t).
\]

The inclusion may be strict.

Reach answers:
> what ancestry contributes to this target?

WitnessRows answers:
> what retained ancestry lies on at least one path from this anchor to this target?

The latter is the star-search explanation.

It is derived from the former plus the anchor.

---

## 11. Star-hop minimality

Pass-3/4 witness:

\[
QUESTION
\to
ANSWERS\ ONE\ QUESTION\ ONLY
\to
ANSWERS.
\]

Minimal selected hop:

\[
STAR\_HOP(
to\_root=ANSWERS,
via=PATTERN(4,259)
).
\]

Removing the via-pattern witness leaves an unsupported naked QUESTION-to-ANSWERS edge.

Therefore:
- destination root = REQ;
- via-pattern = REQ;
- one-hop depth = DERIVED from frontier context.

---

## 12. REQ / DERIVED / REDUNDANT table

| datum | verdict |
|---|---|
| through | **REQ** |
| anchor root | **REQ** |
| item tag | **REQ** |
| separate top-level frontier | **REDUNDANT** |
| selected lexical row | **REQ for selected lexical hit** |
| lexical role | **DERIVED** |
| pattern n | **REQ** |
| pattern exemplar start WORD row | **REQ** |
| full pattern tuple/text | **DERIVED** |
| all pattern occurrence starts | **DERIVED** |
| pattern support | **DERIVED** |
| pattern DAG edges | **DERIVED** |
| extension side marker | **DERIVED** |
| packet-local node ordinal | **REDUNDANT / presentation-only** |
| pointer target | **REQ** |
| pointer witness-row set | **DERIVED** |
| pointer witness edges | **DERIVED** |
| pointer minimum distance | **DERIVED** |
| pointer shortest path | **DERIVED** |
| pointer path count | **DERIVED** |
| star-hop destination root | **REQ** |
| star-hop via-pattern handle | **REQ** |
| one-hop depth | **DERIVED** |
| branch fanout | **DERIVED** |

---

## 13. Local anchor-cone reconstruction

Full Coffee Cup conceptual contiguous surface:

\[
743{,}590
\]

cells.

Pass 5 generated only cells touching the anchor.

### QUESTION

\[
m=7,\quad N=5.
\]

Distinct anchored cells through the recurrent maximum:

\[
105.
\]

Repeated classes recovered:

\[
13/13.
\]

Zero missing.
Zero extra.

Share of full surface:

\[
0.0141\%.
\]

### ANSWERS

\[
m=5,\quad N=5.
\]

Distinct anchored cells:

\[
75.
\]

Repeated classes:

\[
6/6.
\]

Share:

\[
0.0101\%.
\]

### IS

\[
m=65,\quad N=6.
\]

Naive upper bound:

\[
1365.
\]

After span deduplication:

\[
1297
\]

distinct anchored cells.

Repeated classes:

\[
42/42.
\]

Share:

\[
0.1744\%.
\]

### Verdict

\[
\boxed{
\text{Pass-4 pattern frontiers are exactly reconstructible from local anchor cones.}
}
\]

No full 743,590-cell materialization is required for correctness.

---

## 14. Standalone termination check

To prove no recurrence survives above the known maximum scale, inspect one additional scale.

### QUESTION through n=6

\[
147
\]

distinct anchored cells.

No recurrent n=6 class.

### ANSWERS through n=6

\[
105
\]

cells.

No recurrent n=6 class.

### IS through n=7

\[
1689
\]

cells.

No recurrent n=7 class.

The largest local termination check is:

\[
0.2271\%
\]

of the full Coffee Cup conceptual surface.

---

## 15. Local support proof

Let exact pattern tuple u contain anchor root a.

Every exact occurrence of u necessarily contains a at the same tuple offset.

Therefore every occurrence span of u lies inside the anchor cone of a.

Hence:

\[
\boxed{
Support(u)=\text{count of exact u occurrences inside }Cone(a).
}
\]

A separate non-anchor corpus scan is not required for exact support.

---

## 16. D1 PIE one-forward-scan reconstruction

No reverse-pointer index was used.

Scan rows in increasing order.

When a WORD equals the PIE root value, add it to the participating set.

For each POINTER:

\[
p=Join(x,y),
\]

if x or y already participates, add p.

Results:

### through 0004

\[
\{0000,0002,0003,0004\}.
\]

### through 0007

\[
\{0000,0002,0003,0004,0006,0007\}.
\]

### through 0010

\[
\{0000,0002,0003,0004,0006,0007,0009,0010\}.
\]

This exactly reproduces Passes 3-4.

One forward scan is sufficient because all POINTER operands are earlier than the POINTER row.

No persistent reverse index is required for correctness.

---

## 17. Expansion operator sufficiency

Three operations cover every surviving Pass-4 frontier.

### EXPAND_PATTERN

Given a PATTERN handle under fixed through, return exact repeated one-WORD left/right extensions.

### EXPAND_POINTER

Given the current pointer frontier under fixed through, return the next retained participation ring. Each selected target remains reconstructible as POINTER(target).

### EXPAND_STAR

Given a root under fixed through, return one word-to-repeated-pattern-to-word neighboring-star frontier with via-pattern witnesses.

### Unique source context

No fourth search operator is required.

Pattern exemplars / occurrence rows already provide positions from which surrounding WORD context can be read.

### Fixed-prefix rule

Expansion keeps the same:

\[
through=h.
\]

Fresh current state requires a new read at a later h.

---

## 18. Minimality deletion tests

### M1 remove through

FAIL.

Historical support/frontier completeness becomes ambiguous after growth.

through = REQ.

### M2 remove anchor

FAIL.

The same repeated pattern may be returned from QUESTION or ANSWERS star.

anchor = REQ.

### M3 remove item tag

FAIL.

Variant interpretation is ambiguous.

tag = REQ.

Separate top-level frontier field remains redundant.

### M4 remove n from PATTERN

FAIL.

One exemplar allows many lengths.

n = REQ.

### M5 remove all occurrence starts except exemplar

PASS.

All starts/support rebuild.

Occurrence list = DERIVED.

### M6 remove full tuple

PASS.

Tuple rebuilds from exemplar + n.

Full tuple = DERIVED.

### M7 remove pointer witness rows

PASS.

Anchor + target + prefix rebuild exact witness DAG.

Witness rows = DERIVED.

### M8 remove explicit witness edges

PASS.

POINTER operands rebuild them.

Edges = DERIVED.

### M9 remove star-hop via-pattern

FAIL.

The hop becomes an invented naked word edge.

Via-pattern = REQ.

### M10 remove support / distance / path-count fields

PASS.

All recompute exactly.

These are DERIVED.

---

## 19. Round-trip board

### Lexical PIE

Serialized seed:
- through 0010;
- anchor 0000;
- lexical read.

Reconstructed:
- root 0000;
- occurrence 0003;
- RootTouch 0004.

PASS.

### QUESTION pattern

Handle:
- QUESTION anchor;
- full Coffee analytical prefix;
- PATTERN(4,259).

Reconstructed:
- ANSWERS ONE QUESTION ONLY;
- starts [259,423,664,787,916];
- support 5.

PASS.

### IS pattern

PATTERN(3,142).

Reconstructed:
- THIS IS THE;
- 10 starts;
- support 10.

PASS.

### D1 PIE pointer

POINTER(0010).

Reconstructed:
- exact witness slice;
- all four PIE witness paths;
- minimum distance 2.

PASS.

### QUESTION to ANSWERS hop

STAR_HOP to ANSWERS via PATTERN(4,259).

Reconstructed:
- exact via pattern;
- both participating roots;
- five-occurrence shared witness.

PASS.

---

## 20. Growth stability

A historical handle through h remains exact after later append because replay is bounded to h.

A fresh handle through h'>h may expose:
- new occurrences;
- new repeated branches;
- new pointer descendants.

The old handle is not stale truth.

It is a read of an immutable historical Lace prefix.

This is the correct provenance model for disposable search artifacts.

---

## 21. No-second-store result

The following derived state was discarded and regenerated:

- lexical rows;
- occurrence lists;
- support;
- pattern DAG edges;
- witness rows;
- witness edges;
- pointer distances;
- path lists;
- hop presentation.

Correctness depends only on:
- authoritative Lace prefix;
- anchor;
- minimal tagged item handle;
- deterministic derivation rules.

No correctness dependency was found on:
- star table;
- reverse-pointer database;
- sample table;
- inverted index;
- persistent DAG cache;
- embeddings.

\[
\boxed{\textbf{PASS}}
\]

---

## 22. Final maps-level contract

\[
\boxed{
SearchHandle=(through,anchor,item)
}
\]

with:

\[
item\in
\{
LEXICAL(row),
PATTERN(n,exemplar\_start),
POINTER(target),
STAR\_HOP(to\_root,via\_pattern)
\}.
\]

Whole-frontier data remains derived:
- lexical frontier from through + anchor;
- pattern frontier from local anchor cone;
- pointer frontier from one forward scan;
- neighboring stars from repeated pattern witnesses.

This is a maps-level analytical result only.

It is not yet:
- Core law;
- public API;
- ABI;
- Rust type;
- file format.

---

## 23. Pass-5 falsifier board

| ID | Result |
|---|---|
| **F5-1 exact replay does not require through** | **did not fire; deletion of through fails** |
| **F5-2 old result cannot replay after growth** | **did not fire** |
| **F5-3 local QUESTION cone misses Pass-4 class** | **did not fire: 13/13** |
| **F5-4 local ANSWERS cone misses class** | **did not fire: 6/6** |
| **F5-5 local IS cone misses class** | **did not fire: 42/42** |
| **F5-6 local cone requires full T squared surface** | **did not fire** |
| **F5-7 support requires non-anchor scan** | **did not fire; construction proof closes it** |
| **F5-8 D1 PIE overlay fails one forward scan** | **did not fire** |
| **F5-9 persistent reverse index required** | **did not fire** |
| **F5-10 full tuple required despite n + exemplar** | **did not fire; PID-B wins** |
| **F5-11 witness edges cannot rebuild from witness rows** | **did not fire** |
| **F5-12 witness rows removable without losing exact explanation** | **FIRED: contract shrinks to POINTER(target)** |
| **F5-13 via-pattern removable without naked edge** | **did not fire; via-pattern required** |
| **F5-14 support/distance/path count must be stored** | **did not fire** |
| **F5-15 local ordinals become authority** | **did not fire** |
| **F5-16 three expansion operators insufficient** | **did not fire** |
| **F5-17 expansion silently changes through** | **did not fire under fixed-prefix rule** |
| **F5-18 correctness depends on persistent cache/index** | **did not fire** |
| **F5-19 law edit/retention/semantic ranking required** | **did not fire** |
| **F5-20 code/src/Cargo/Rust required** | **did not fire** |

The useful falsifier event F5-12 made the contract smaller than planned.

---

## 24. Proof board

| # | Requirement | Result |
|---:|---|---|
| 1 | envelope field table | **PASS** |
| 2 | REQ/DERIVED/REDUNDANT classification | **PASS** |
| 3 | lexical PIE round trip | **PASS** |
| 4 | QUESTION pattern round trip | **PASS** |
| 5 | IS pattern round trip | **PASS** |
| 6 | PIE to 0010 witness-DAG round trip | **PASS** |
| 7 | QUESTION to ANSWERS hop round trip | **PASS** |
| 8 | D1 prefix replay 0004/0007/0010 | **PASS** |
| 9 | Coffee prefix growth comparison | **PASS** |
| 10 | local QUESTION equality | **PASS 13/13** |
| 11 | local ANSWERS equality | **PASS 6/6** |
| 12 | local IS equality | **PASS 42/42** |
| 13 | local candidate counts vs 743,590 | **PASS** |
| 14 | anchor-cone support proof | **PASS** |
| 15 | D1 forward-scan reconstruction | **PASS** |
| 16 | pattern deletion tests | **PASS** |
| 17 | pointer deletion tests | **PASS** |
| 18 | expansion-operator sufficiency | **PASS** |
| 19 | 20 falsifiers | **PASS** |
| 20 | no law/code/implementation changes | **PASS** |

**Board: 20/20 PASS.**

---

## 25. Exact leftovers after Pass 5

Search semantics are substantially closed at maps level.

### G5-A - propagation / reconciliation

Active law still carries the older Pass-6 framing:

\[
Origin(\rho)=[GAP].
\]

This campaign now has human-ruled and tested structure:
- no arbitrary semantic relationship choice first;
- 1D authoritative Lace;
- derived 2D sampling;
- cross-scale POINTER map;
- star as read-only search entry;
- explicit search frontiers;
- replayable disposable search handles.

A later pass should reconcile the active law/model/global-system surfaces with H7-H12 and Passes 1-5 while preserving the older Pass-6 record as history.

### G5-B - implementation efficiency

Correctness no longer requires:
- full 2D materialization;
- reverse-pointer index;
- persistent search state.

Optional caches become engineering/performance questions only.

### G5-C - cross-Lace identity

through identifies an immutable prefix inside one Lace.

Pass 5 does not define a global Lace identity for transporting a handle across distinct Lace instances or copies.

That remains outside the current campaign unless cross-Lace portability is required.

---

## 26. Recommended Pass 6 target - not opened

If continued, Pass 6 should be:

\[
\boxed{
\textbf{SAMPLING CAMPAIGN RECONCILIATION / PROPAGATION}
}
\]

It should:
- reconcile pointer-emission.md;
- reconcile systems-manifest.md;
- update math execution model;
- update global systems ASCII;
- update reason/model maps and relevant Rust planning clipboards;
- preserve old Pass-6 receipts as dated history;
- propagate H7-H12 and Passes 1-5 authority stamps;
- avoid implementation until gates authorize it.

No Pass 6 is opened automatically.

## Steward verdict

The smallest useful search artifact is a replay handle.

Name:
- which immutable Lace prefix;
- which star;
- which structural item.

Everything else should be rebuilt from Lace.

If it cannot be rebuilt, it is trying to become another memory.


---

## 27. Final verification

Final pre-release tip:

**685c8308bc7b842d0eb884533da1d8e1afbf05a9**

Tracked tree:

- 705 paths
- recursive tree not truncated
- src/ paths: 0
- Cargo.toml paths: 0
- .rs files: 0

Law surfaces remained byte-unchanged:

- pointer-emission.md: 51224368ae966b6c480746925caa2cade970842e
- systems-manifest.md: 6f0310099cbcf482ad884f653f423b4e806f724b

Law station remained FREE.

Pass 5 changed maps-owned plan/findings/index surfaces only.

**PASS 5 COMPLETE.**
