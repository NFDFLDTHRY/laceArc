# SAMPLING / DENSITY / EMERGENCE — Pass 1 findings

**Status:** EXECUTED 2026-09-21.  
**Station:** maps (Astra-sampling).  
**Plan:** sampling-density-emergence-pass-1-plan.md.  
**Execute base:** 4644b6d4005214dbfe2d0bfe2ef0a705c5b0d6c2.  
**Law files edited:** NO.  
**Implementation:** none. No src/. No Cargo. No Rust.  
**Acceptance:** absent.

## 0. Pass-1 result

The new human rulings change the active problem from relation choice to multi-scale sampling.

The strongest architecture surviving Pass 1 is:

\[
\boxed{
L_t
\rightarrow
\mathcal S_t
\rightarrow
\text{recurrence / overlap evidence}
\rightarrow
\text{sparse retained POINTER structure}
\rightarrow
L_{t+1}
}
\]

where:

- \(L_t\) is the authoritative append-only 1D Lace;
- \(\mathcal S_t\) is a derived 2D sampling surface over text/Lace position and sampling scale;
- the 2D surface may be much denser than the retained 1D pointer map;
- structures from different sampling levels may be related;
- the retained relationship is still represented by ordinary 1D POINTER rows;
- the enlarged 1D Lace is sampled again.

The key Pass-1 distinction is:

\[
\boxed{
\text{sample observed}
\neq
\text{relation retained}
}
\]

and:

\[
\boxed{
\text{2D working surface}
\neq
\text{second authoritative store}.
}
\]

Pass 1 does **not** yet determine:
- the exact cell definition;
- the exact n→n+1 recurrence;
- the recurrence comparator;
- the exact 2D-cell → 1D-point bridge;
- the exact condition that causes an observed recurrence to be retained as a POINTER;
- the canonical density metric.

Those are now the real mathematical gaps.

---

## 1. Human rulings H7–H12

### H7 — no arbitrary relation choice — R

> “O I didn't intend to choose. If it exists a touch, if it doesn't root, the n+1 sampling will all text to like a heat map show the system where to make touches, the star system is view that might be useful to enable search for larger non-word linked patterns which will show up in text.”

Pass-1 reading:
- relation discovery is recurrence-driven, not semantic/manual choice;
- root/touch language extends into the sampling discussion;
- n+1 sampling works over growing text;
- heat-map language means accumulated structural evidence;
- larger patterns can emerge from usage.

### H8 — relationships are found over time — R

> “The sampling itself. You don't choose the relationships, you find them over time as lace grows.”

This directly rejects the active problem statement:

\[
\text{choose arbitrary relation}
\to
Join.
\]

### H9 — star is a view/search aid — R

The star system is a way to expose/search accumulated structure.

It is not the authoritative relational store and not the chooser.

### H10 — WORD/POINTER history is laid down on 1D — R

> “Entries and pointers get laid down on the 1D array…”

This fixes durable storage.

### H11 — sampling creates the 2D array — R

> “…the sampling creates the 2D array…”

The 2D sampling surface is working machinery, not merely a graphical Layer-III picture.

### H12 — POINTER relations can cross sampling levels — R

> “…enabling pointers at any level.”

Related clarification:

> a short paragraph or sentence can link to the corpus of priors such as APPLES; usage patterns can link to any layer of the n+1 samplings because the pointers are the relational map.

Therefore equal-scale-only relation rules are forbidden.

---

## 2. Delta from ROOT / TOUCH / FOLD Pass 6

Pass 6 concluded:

\[
Origin(\rho)=[GAP]
\]

under the premise that an arbitrary relation assertion \(\rho\) exists first.

H7–H12 change that premise.

### What survives from Pass 6 — HIST, still useful

- no semantic chooser;
- no hidden Contract-II relation payload;
- no Layer-III write authority;
- D1 does not state an automatic chooser;
- all-portions automatic materialization is not justified;
- the binary Join constructor remains current;
- root-touch remains current.

### What becomes a dated wrong problem

The primary question:

> who originates the arbitrary relation assertion?

is no longer the active campaign question.

The new problem is:

\[
\boxed{
\text{How does sampling expose recurring structure and turn some of it into retained pointer topology?}
}
\]

Pass 6 is preserved. It is not rewritten.

---

## 3. 1D authoritative-array contract

Authority: H10 R + Graphic D compatibility P.

Persistent state remains:

\[
L=(e_0,e_1,\ldots,e_{m-1})
\]

with:

\[
e_i\in\{WORD,POINTER\}.
\]

Durable facts:
- append order;
- WORD occurrences;
- POINTER rows;
- permanent indices;
- pointer ancestry.

No Pass-1 candidate may place authoritative meaning, relation truth, or irreplaceable sampling state beside \(L\).

A cache of the 2D surface may be operationally possible later, but current law requires its truth to be derivable from authoritative Lace unless a later ruling changes that.

---

## 4. 2D sampling-array contract

Authority: H11 R.

Pass 1 models the working surface as:

\[
\mathcal S[n,x].
\]

This notation means:
- one axis is sampling scale \(n\);
- one axis is a position coordinate \(x\).

The exact meanings of \(n\) and \(x\) remain partially open.

### Fixed

- the 2D sampling surface exists conceptually as working machinery;
- it is produced by sampling growing Lace/text;
- it can expose structures at multiple scales;
- cross-scale pointer relations are permitted by H12.

### Not fixed

- whether x is sample start or end;
- whether x is WORD-arrival position or another derived text coordinate;
- whether every cell is an ordered text window;
- how recursive points enter higher rows;
- whether every cell has a retained 1D point;
- how recurrence is compared.

---

## 5. Feedback architecture

Current campaign architecture:

    1D Lace L_t
       |
       | derive multi-scale samples
       v
    2D sampling surface S_t[n,x]
       |
       | detect recurrence / overlap / structural correspondence
       v
    candidate cross-scale relationships
       |
       | only retained relationships are appended
       v
    POINTER rows on 1D Lace
       |
       v
    L_(t+1)
       |
       +---- derive the next sampling surface

This loop contains no stored semantic chooser.

---

## 6. M1 — 2D cell-semantics matrix

| Candidate | Authority/support | D1 fit | Extra retained rows? | Verdict |
|---|---|---|---|---|
| **C-A ordered text window** | H7/H8/H11 compatible; I | good as base sampling unit | none if derived | **ADMIT as base candidate** |
| **C-B ordered root sequence** | H7 recurrence + existing word roots; I | good for repeated lexical structure | none if derived | **ADMIT as recurrence-identity candidate; depends on G1** |
| **C-C every cell is a grounded 1D point** | no direct ruling | predicts many retained points for dense lattice | yes | **REFUTE as universal rule** |
| **C-D ephemeral/derived sample descriptor** | H10/H11 strongly compatible; I | explains D1 sparsity | no | **ADMIT strongly** |
| **C-E cell = set of all overlapping structures** | possible derived representation | not falsified | none if derived, but semantics broad | **OPEN / too underspecified** |
| **C-F recursive current-scale structure** | H12 + D6 pointer-to-pointer compatible | needed for cross-level relation reading | not necessarily | **ADMIT as higher-scale candidate** |

### M1 conclusion

The surviving picture is not “one 2D cell = one stored row.”

It is:

\[
\boxed{
\text{many derived sample cells}
\quad\text{with only some structures resolved/retained as 1D points.}
}
\]

The exact cell payload remains open.

---

## 7. M2 — horizontal-axis semantics

| Candidate | Result | Reason |
|---|---|---|
| **X-A WORD-arrival position** | **ADMIT** | H7 says sampling all text; preserves source sequence |
| **X-B full Lace index including POINTER rows** | **BLOCK as sole text coordinate** | interleaved POINTER rows would distort text adjacency; useful only as secondary address mapping |
| **X-C source-text position mapped into Lace** | **ADMIT strongly** | separates text sampling position from retained row address |
| **X-D cell indexed by sample end position** | **ADMIT** | valid rectangular coordinate convention |
| **X-E cell indexed by sample start position** | **ADMIT** | equivalent convention if n is known |
| **X-F explicit span [i,j]** | **ADMIT as semantics, not extra axis** | span can be encoded by x+n once convention is fixed |

### M2 conclusion

The strongest current interpretation is:

\[
x=\text{derived source/WORD position}
\]

with start-vs-end orientation still OPEN.

A separate mapping resolves sample structures back to Lace indices when retention requires addressability.

---

## 8. M3 — meaning of n

| Candidate | Verdict | Reason |
|---|---|---|
| **N-A number of source WORD occurrences / span length** | **ADMIT strongly at base hierarchy** | direct n+1 text-sampling interpretation |
| **N-B number of current-scale child structures** | **ADMIT for recursive hierarchy** | permits points-of-points |
| **N-C binary construction depth** | **REFUTE as n identity** | different trees can represent same scale/sample |
| **N-D number of selected addressable Lace points** | **ADMIT locally** | matches Pass-3 grounding but does not by itself define text-scale axis |
| **N-E recursive scale level** | **ADMIT** | fits “any layer of the n+1 samplings” |
| **N-F mixed hierarchy: base word span, higher recursive structure** | **ADMIT as current umbrella** | fits H11/H12 and D6 without equating n to POINTER arity |

### M3 conclusion

Pass 1 rejects:

\[
n=\text{POINTER arity}
\]

and:

\[
n=\text{binary-tree depth}.
\]

The strongest current umbrella is **sample scale/extent**, with base levels tied to text span and higher levels able to contain grounded substructure.

Exact definition remains Pass-2 work.

---

## 9. M4 — n+1 recurrence matrix

| Candidate | D1 / H fit | Verdict |
|---|---|---|
| **R-A overlapping window extension** | strong H11 fit, no D1 conflict if derived | **ADMIT base candidate** |
| **R-B neighboring scale-n sample composition** | naturally builds 2D hierarchy; needs exact nonsemantic F | **ADMIT candidate** |
| **R-C grounded-point extension via Join** | current valid retained construction | **ADMIT for retained/addressable structure, not whole 2D generation** |
| **R-D all overlapping windows/cells exist derivably; only some relations retained** | fits H10/H11 and D1 sparsity | **ADMIT strongest architectural candidate** |
| **R-E recurrence-promoted hierarchy** | fits H7/H8, but retention trigger undefined | **ADMIT conceptually; trigger OPEN** |
| **R-F enumerate every finite subset/portion as retained samples** | contradicts 2D position×scale shape and earlier no-auto-materialization result | **REFUTE as surface/storage rule** |

### M4 conclusion

The strongest Pass-1 architecture is:

\[
\boxed{
\text{dense derived sampling}
+
\text{sparse retained pointer structure}.
}
\]

This preserves the distinction between seeing a sample and storing a relation.

---

## 10. M5 — cross-scale addressability matrix

| Candidate | Verdict | Reason |
|---|---|---|
| **A-A every retained sample has an addressable Lace point** | **ADMIT by definition** | POINTER requires an earlier Lace operand |
| **A-B only recurring samples become retained points** | **OPEN** | plausible but H7 first-seen-root language may require an earlier anchor |
| **A-C sample resolves to an existing grounded point whose Reach covers it** | **ADMIT strongly** | uses current machinery, no new row kind |
| **A-D sample can be grounded/resolved at relation-retention time** | **ADMIT candidate** | exact bridge procedure still OPEN |
| **A-E POINTER stores only Lace operands, not n metadata** | **ADMIT strongly** | Graphic D has no scale field; H12 allows cross-scale through the pointed structures themselves |

### M5 conclusion

Cross-scale pointering does **not** require a scale field on POINTER.

Likely:

\[
\text{2D sample}
\rightarrow
\text{addressable 1D point}
\rightarrow
Join(a,b).
\]

Exactly how an ephemeral cell acquires/resolves to that point is a primary remaining gap.

---

## 11. Observation vs recurrence vs retention

Pass 1 keeps three events distinct.

### O1 — sample observation

A cell exists on the 2D working surface.

### O2 — recurrence / correspondence evidence

The current cell matches or overlaps prior structure according to some comparator.

### O3 — retained relation

A new POINTER row is appended to 1D Lace.

D1 proves O1 cannot simply equal O3 under any “every adjacent window” rule.

The active mathematical unknowns are:

\[
O1\rightarrow O2
\]

the comparator, and:

\[
O2\rightarrow O3
\]

the retention condition / addressability bridge.

---

## 12. Recurrence / equality candidates

| Candidate | Verdict | Notes |
|---|---|---|
| exact ordered WORD values | **ADMIT** | requires G1 word equality |
| exact ordered root identities | **ADMIT strongly** | occurrence-independent lexical repeat |
| exact recursive child/sample identities | **ADMIT candidate** | promising for n+1 hierarchy |
| exact retained pointer topology / ancestry | **ADMIT for already-retained structures** | useful above word scale |
| retained-pointer overlap | **ADMIT as density evidence, not strict equality** | downstream of retention |
| partial sample overlap | **OPEN** | likely relevant to heat, but metric/threshold unstated |
| semantic similarity / embeddings | **REFUTE** | violates no-stored-meaning / H8 |

### Minimal nonsemantic comparator family

The cleanest future experiment is recursive exact identity:

- n=1 identity by word root;
- n+1 identity by ordered identities of lower-scale constituents.

Pass 1 does **not** promote that to law. It is the recommended Pass-2 candidate because it needs no meaning or extra authoritative store.

---

## 13. Higher-scale root / touch

H7 says:

> if it exists a touch, if it doesn't root

inside the n+1 sampling explanation.

That strongly supports a **recursive recurrence principle**:

\[
\text{sample first seen}
\rightarrow
\text{anchor/root-like first occurrence}
\]

\[
\text{sample seen again}
\rightarrow
\text{touch/re-entry}
\]

Authority: **R**, but the physical representation is not fully fixed.

### What H7 does not settle

It does not prove:

> every unique 2D cell immediately appends its own 1D root row.

That universal interpretation fails the D1 sparsity constraint.

Therefore Pass 1 separates:

- **recursive first-seen / seen-again semantics:** R-supported;
- **one durable 1D row for every 2D sample cell:** REFUTED as universal;
- **what structure serves as the higher-scale anchor:** OPEN.

Surviving possibilities:
- existing grounded point is the anchor;
- first recurrence promotion creates a retained point;
- first-seen identity exists derivably on 2D until retention is needed.

---

## 14. Heat-map analysis

H7's “like a heat map” is a metaphor for structural density.

Pass 1 finds two distinct density families.

### Upstream sampling density

Before retention:

\[
D_s(pattern,n)
=
\text{derived recurrence multiplicity / overlap on the 2D surface}.
\]

Candidate observations:
- exact recurrence count;
- number of positions where the same sample appears;
- recurrence across multiple n levels.

This is the closest literal match to:

> sampling shows where to make touches.

### Downstream relational density

After retention:

\[
D_p(i)
=
\text{derived density of POINTER participation around a retained point/formation}.
\]

Candidate readings:
- pointer incidence/degree;
- route multiplicity;
- shared ancestry;
- cross-scale connectivity;
- number of retained paths passing through a formation.

### Verdicts H-A…H-G

| Density candidate | Verdict |
|---|---|
| recurrence count | **ADMIT** |
| retained-pointer incidence | **ADMIT** |
| cross-scale connectivity | **ADMIT** |
| route multiplicity | **ADMIT** |
| shared ancestry overlap | **ADMIT** |
| multi-scale derived field | **ADMIT as view, exact formula OPEN** |
| relational-map density directly from POINTER topology | **ADMIT strongly** |

No single canonical scalar is established.

All surviving density measures are derived.

No density table becomes authoritative Core state.

---

## 15. 2D sampling array vs Layer III

Pass 1 corrects the first campaign draft.

### 2D sampling surface

- working computation;
- derived from authoritative Lace/text history;
- may contribute evidence used by Core's retention mechanism;
- not merely a UI picture.

### Layer III star / heat / N-D view

- reads 1D Lace and derived sampling/relational structure;
- can display density/search results;
- cannot write Core.

So:

\[
L
\to
\mathcal S
\to
\text{derived recurrence evidence}
\to
\text{retained POINTER on }L
\]

is the intended architecture under investigation.

But:

\[
\text{GUI / star rendering}
\to
\text{POINTER append}
\]

remains forbidden.

---

## 16. POINTER topology is the retained relational map

Authority: H12 R + D compatibility P.

The 2D surface provides multi-scale structural candidates.

The 1D POINTER rows preserve relations.

Therefore:

\[
\boxed{
\text{relational map}
=
\text{retained POINTER topology on Lace}.
}
\]

Sampling scale does not need to be stored in POINTER if each operand already names an addressable structure whose ancestry defines what it represents.

This gives a natural cross-scale relation:

\[
Join(p_{n=3},p_{n=20})
\]

without adding n to the POINTER schema.

Pass 1 finds no evidence requiring a scale field.

F1-8 therefore blocks such a field by default.

---

## 17. Higher dimensions from the end

Pass 1 now has a coherent end-to-beginning map.

### 1D — durable history

WORD and POINTER rows in append order.

### 2D — sampling surface

Derived position × sample-scale structure.

### 3D / N-D — relational participation views

Cross-scale POINTERs plus POINTER→POINTER create richer relational geometry.

Star / N-D / heat-map views expose:
- recurrence;
- cross-scale connectivity;
- relation-of-relation structure;
- dense routes.

This is compatible with Graphic C's:
- 1D presentation;
- 2D crossing/adjacency presentation;
- 3D stars;
- 5D+ relations among relations;
- projection-not-storage fence.

Important authority note:

**Graphic C does not itself specify H11's 2D sampling algorithm.**

The 2D sampling surface is a **human ruling** whose outputs are compatible with the existing C/D architecture.

---

## 18. APPLES specimen

Analytical corpus only.

Prior text:

    A: WE ATE RED APPLE PIE AFTER WORK
    B: SHE BAKED RED APPLE PIE FOR DINNER
    C: GREEN APPLE TREE GROWS TALL

New text:

    D: TODAY WE ATE RED APPLE PIE AT DINNER

No semantic label “about apples” is allowed.

### Derived sample examples

At n=1:
- APPLE recurs across A/B/C/D.
- RED recurs A/B/D.
- PIE recurs A/B/D.

At n=2:
- RED APPLE recurs A/B/D.
- APPLE PIE recurs A/B/D.
- WE ATE recurs A/D.

At n=3:
- RED APPLE PIE recurs A/B/D.
- WE ATE RED recurs A/D.

At n=4:
- WE ATE RED APPLE recurs A/D.

At n=5:
- WE ATE RED APPLE PIE recurs A/D.

The full A and D sentences differ.

### What the 2D surface therefore exposes

The new D sentence contains:
- low-scale recurrence around APPLE;
- mid-scale recurrence RED APPLE PIE;
- larger recurrence WE ATE RED APPLE PIE;
- unique surrounding context.

That is enough to build a heat-like recurrence field without saying what the sentence means.

### Cross-scale relation possibilities

If the relevant sample structures have/obtain addressable 1D points:

- D's n=5 structure may point to prior A's n=5 structure;
- D's larger sentence/paragraph point may point to a prior n=3 RED APPLE PIE structure;
- a large-n structure may point to the n=1 APPLE root/formation;
- prior pointer formations can themselves be operands.

The stored relation remains:

\[
Join(a,b)
\]

on 1D Lace.

### What remains OPEN in the specimen

- exact comparator identity;
- whether exact recurrence alone triggers retention;
- whether the n=5 repeat gets a dedicated point before relation;
- how a unique larger sentence anchors;
- whether a pointer to APPLE root is required merely because APPLE occurs;
- which cross-scale recurrences are retained.

The specimen demonstrates **discoverability**, not a final retention schedule.

---

## 19. D1 replay D1-1…D1-9

### D1-1 — sampler observes more than D1 retains

**ADMITTED / I + H11.**

A dense 2D derived surface can contain samples for all positions/scales while only some relations appear as 1D POINTER rows.

This is the strongest explanation of D1 sparsity that does not require relation choice.

### D1-2 — PIE repetition / 0004

n=1 recurrence:
- PIE already has a root at 0000;
- later PIE at 0003 RootTouches it through 0004.

**PASS / R + P witness.**

### D1-3 — DESSERT→PIE absent

Any model saying every sampled adjacent pair must become retained pointer is refuted.

The 2D surface may still sample the pair.

**PASS: O1 ≠ O3.**

### D1-4 — WHOLE→CUSTOMER absent

Same result.

**PASS: dense sampling need not mean dense retained rows.**

### D1-5 — 0002 and 0006

Both are compatible with retained scale-2 structures:
- PIE / DESSERT;
- PIE / WHOLE.

Pass 1 does not yet prove why these pair samples were retained while other pair samples were not.

That is the retention-rule gap.

### D1-6 — 0007 / 0009 / 0010

These rows prove retained relations can reference prior POINTER structure.

Under H12 they are compatible with relations across sampling levels / recursively grounded structures.

**PASS for cross-level addressability compatibility.**

They do not expose their n labels directly.

### D1-7 — equal-scale restriction

No current schema or ruling requires equal-scale operands.

H12 explicitly rejects the restriction.

**PASS.**

### D1-8 — one durable row per 2D cell

Would require many more rows than D1 contains.

**REFUTED as a universal retention rule.**

### D1-9 — denser 2D than 1D relational map

**ADMITTED strongly.**

It is the architecture that simultaneously satisfies:
- H10 durable 1D rows;
- H11 derived 2D array;
- H12 cross-scale relations;
- D1 sparse retained pointers.

---

## 20. Falsifier board F1-1…F1-20

| ID | Result |
|---|---|
| **F1-1 semantic relation choice** | **PASS — rejected from campaign** |
| **F1-2 durable independent truth in 2D** | **PASS — rejected; 1D remains authority** |
| **F1-3 2D treated as mere Layer-III picture** | **FIRED against first-draft framing; corrected by H11** |
| **F1-4 Layer III writes Core** | **PASS — rejected** |
| **F1-5 every 2D cell appends retained row** | **FIRED — refuted as universal by D1 sparsity** |
| **F1-6 every adjacent sampled pair retained** | **FIRED — DESSERT→PIE and WHOLE→CUSTOMER absent** |
| **F1-7 equal-n POINTER restriction** | **FIRED against restriction — H12 directly rejects it** |
| **F1-8 add n/scale field to POINTER without necessity** | **PASS — blocked; existing addressable operands suffice so far** |
| **F1-9 n = POINTER arity** | **PASS — rejected; Join remains binary while n varies** |
| **F1-10 semantic similarity / embeddings** | **PASS — rejected** |
| **F1-11 second graph / meaning store** | **PASS — rejected** |
| **F1-12 cannot explain 0007/0009/0010 cross-level relations** | **did not fire against surviving recursive candidates** |
| **F1-13 2D sample cannot resolve to 1D operand** | **FIRES as the primary residual against unbridged ephemeral-cell models** |
| **F1-14 hidden persistent sample state required** | **PASS — candidates needing it are blocked; surface must be derivable/reconstructible under current law** |
| **F1-15 density requires non-Lace information** | **PASS — semantic density rejected; recurrence/pointer densities survive** |
| **F1-16 every higher-order sample gets immediate durable root row** | **FIRED — universal rule predicts rows D1 does not show** |
| **F1-17 Pass-6 Origin(rho) remains primary problem** | **FIRED against old framing by H7/H8; residual moves to sampler retention/addressability mechanics** |
| **F1-18 gate-question campaign overlap** | **PASS — ref_A/ref_B slot-order problem left untouched** |
| **F1-19 implementation required to answer** | **PASS — analysis completed without code** |
| **F1-20 surface cannot be reconstructed from authority** | **PASS as a filter — nonreconstructible candidates rejected under current one-store law** |

---

## 21. Exact residual questions after Pass 1

### G-S1 — exact cell definition

What exactly is:

\[
\mathcal S[n,x]?
\]

Most likely an ordered contiguous sample or recursively composed sample, but not closed.

### G-S2 — exact x coordinate

Current best:
- source/WORD position;
- start-vs-end convention OPEN.

Full Lace index is not sufficient as the sole text coordinate.

### G-S3 — exact n semantics

Current best:
- text/sample scale;
- base word span;
- recursive higher-level structure.

Need exact recurrence definition.

### G-S4 — n→n+1 construction

Does the 2D lattice use:
- direct window extension;
- neighboring cell composition;
- recursive grounded-point composition;
- a combination?

### G-S5 — recurrence comparator

What counts as the same sample:
- ordered root sequence;
- recursive child identity;
- exact pointer topology;
- partial overlap?

Semantic similarity remains forbidden.

### G-S6 — retention rule

This is the largest remaining gap.

\[
\boxed{
\text{When does recurrence/overlap observed on 2D cause a retained 1D POINTER?}
}
\]

No threshold or schedule is yet supplied.

### G-S7 — 2D cell → 1D address bridge

Before a retained POINTER can name a sample structure, the sample must resolve to an addressable point.

How?

Candidates:
- existing grounded point;
- ground at retention time;
- first-seen retained anchor;
- another current-law mechanism.

### G-S8 — higher-order root representation

H7 supports recursive first-seen / seen-again behavior, but not one durable row per cell.

What serves as the higher-scale root/anchor?

### G-S9 — density definition

At least two derived fields exist conceptually:
- sampling recurrence density;
- retained relational density.

Exact heat metric remains OPEN.

### G-S10 — cross-scale scale metadata

Current result:

\[
\boxed{
\text{no explicit n field is currently required in POINTER.}
}
\]

The operand points likely carry enough structural identity through ancestry.

This is an inference, not a new law.

---

## 22. Recommended Pass 2 experiment — not opened

Pass 2 should calculate one **minimal nonsemantic 2D lattice** before touching the retention rule.

Recommended experiment:

### Minimal lattice candidate

Use:
- x = WORD/source position;
- n = contiguous word-span length;
- each 2D cell = ephemeral ordered sample;
- n=1 identity = word root identity;
- n+1 identity = ordered tuple of lower-scale/root identities;
- no cell automatically appends a 1D row;
- existing grounded points may be attached as address mappings where available.

Then:

1. construct the exact lattice for D1's WORD sequence:
   PIE, DESSERT, PIE, WHOLE, CUSTOMER;
2. calculate all cells for n=1…5;
3. calculate exact recurrence classes;
4. compare those recurrence classes with D1's retained rows;
5. prove which D1 pointers can be associated with cells at which scales;
6. identify the first place where a retained pointer requires an addressable point not already provided by current law;
7. repeat on the APPLES specimen;
8. compare direct-window recurrence with neighboring-cell recursive construction.

### Why this is the next experiment

It isolates:

\[
\text{2D sampling mechanics}
\]

from:

\[
\text{retention / POINTER-emission mechanics}.
\]

If the lattice itself cannot be made coherent without meaning or extra state, stop there.

If it can, Pass 3 can attack G-S6/G-S7: retention and addressability.

Pass 2 is not opened automatically.

---

## 23. Pass-1 receipt

| Field | Result |
|---|---|
| H7–H12 recorded | **YES** |
| 1D authoritative history | **FIXED by R** |
| 2D sampling surface exists | **FIXED by R** |
| cross-scale POINTER ability | **FIXED by R** |
| 2D cell semantics | **narrowed, not closed** |
| x axis | **source/WORD position strongest; orientation OPEN** |
| n axis | **sample scale/extent; exact recurrence OPEN** |
| dense sampling + sparse retention | **strongest surviving architecture** |
| every cell retained | **REFUTED** |
| every adjacent pair retained | **REFUTED** |
| equal-scale-only pointers | **REFUTED** |
| scale field in POINTER | **not required by current evidence** |
| recurrence comparator | **OPEN** |
| higher-order root physical representation | **OPEN** |
| retention rule | **OPEN — primary residual** |
| 2D cell → 1D point bridge | **OPEN — primary residual** |
| heat-map metric | **derived family mapped; canonical metric OPEN** |
| APPLES specimen | **worked analytically** |
| D1 replay | **9/9 completed** |
| falsifier board | **20/20 reported** |
| law edits | **0** |
| implementation artifacts | **0** |

## Steward verdict

The architecture now survives the end-to-beginning reading:

\[
\boxed{
\text{1D durable Lace}
\to
\text{2D multi-scale sampling}
\to
\text{cross-scale structural recurrence}
\to
\text{sparse retained POINTER map on 1D}
}
\]

The sampler may observe far more structure than Lace retains as rows.

That is how a dense 2D working surface can coexist with a sparse append-only 1D history.

The next hard problem is no longer “which relationship is chosen?”

It is:

\[
\boxed{
\text{what exact recurrence/addressability rule turns a 2D observed structure into a retained 1D relational touch?}
}
\]

Pass 1 stops here.
