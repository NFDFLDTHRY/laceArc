# SAMPLING / DENSITY / EMERGENCE — Pass 2 findings

**Status:** EXECUTED 2026-09-21.  
**Name:** MINIMAL 2D LATTICE / ADDRESSABILITY WITNESS + REAL-PROSE SCALE AMENDMENT.  
**Station:** maps (Astra-sampling).  
**Plan:** sampling-density-emergence-pass-2-plan.md.  
**Execute base:** 6e1274e7131ab9546fc3501daa281284f32303f3.  
**Execution claim:** ec389daca3ff9cb21c70f13b3d44d9e974d2724e.  
**Law files edited:** NO.  
**Implementation:** none. No src/. No Cargo. No Rust.  
**Acceptance:** absent.

## 0. Human execution amendment — test scale

Before execution, the human challenged the planned toy-corpus size:

> “I have to question you're test size. Try with couple pages of text. What is evident at that scale which you missed prior?”

Pass 2 therefore executed the planned D1 + APPLES tests **and** added a real-prose scale ladder using the user-provided conceptual reference **The Coffee Cup** strictly as a prose corpus.

Its concepts were **not** imported into Lace law.

Test sizes:

- D1 WORD stream: 5 tokens.
- APPLES synthetic stream: 27 tokens.
- The Coffee Cup first two form-feed pages: 375 bounded-analysis tokens.
- The Coffee Cup full text: 1,219 bounded-analysis tokens.

Bounded test tokenization for The Coffee Cup:
- alphabetic/apostrophe word tokens;
- case folded to uppercase;
- punctuation not part of the token key.

This is a specimen convention only. It does not close G1.

---

## 1. Pass-2 result

The minimal nonsemantic 2D lattice survives.

For a source/root-key stream:

\[
R=(r_0,\ldots,r_{T-1}),
\]

define:

\[
\boxed{
S[n,t]
=
(r_{t-n+1},\ldots,r_t)
}
\]

for:

\[
1\le n\le t+1.
\]

The three planned constructions are equivalent:

1. direct contiguous window;
2. endpoint n+1 extension;
3. neighboring-window overlap merge.

Execution checks:

| Corpus | Tokens | 2D cells checked | Direct vs extension mismatches | Direct vs overlap-merge mismatches |
|---|---:|---:|---:|---:|
| D1 | 5 | 15 | 0 | 0 |
| APPLES raw stream | 27 | 378 | 0 | 0 |
| Coffee Cup first 2 pages | 375 | 70,500 | 0 | 0 |

For the full 1,219-word Coffee Cup corpus, the same equivalence follows algebraically from the construction identity; the complete triangular surface contains:

\[
\frac{1219\cdot1220}{2}
=
743{,}590
\]

cells.

### Algebraic equivalence

Endpoint extension:

\[
S[n+1,t]
=
S[n,t-1]\oplus r_t
\]

expands by induction to:

\[
(r_{t-n},\ldots,r_{t-1},r_t).
\]

Neighbor overlap merge combines:

\[
(r_{t-n},\ldots,r_{t-1})
\]

and:

\[
(r_{t-n+1},\ldots,r_t)
\]

through their shared n−1 overlap and produces the same n+1 tuple.

No meaning or hidden persistent state is required.

---

## 2. What the larger test exposed that the toy tests did not

This is the main scale finding.

### 2.1 The 2D working surface grows quadratically

D1:

\[
5\text{ words}
\rightarrow
15\text{ cells}.
\]

APPLES:

\[
27
\rightarrow
378.
\]

Coffee Cup first two pages:

\[
375
\rightarrow
70{,}500.
\]

Full Coffee Cup:

\[
1219
\rightarrow
743{,}590.
\]

The 2D sampling surface rapidly becomes orders of magnitude denser than the 1D arrival history.

That makes the Pass-1 distinction materially important:

\[
\boxed{
\text{2D sampling must be derivable/working structure, not one durable Lace row per cell.}
}
\]

This was only an architectural preference in the toy tests.

At page scale it becomes a structural necessity under the one-authoritative-1D-store model.

### 2.2 Heat appears as multi-scale ridges, not isolated matches

At scale, recurrence does not appear as one hot cell.

A repeated long structure creates nested recurrence at every contained smaller n.

For example, a later occurrence ending in:

\[
\text{IN SOCIAL INTERACTION THIS IS}
\]

can simultaneously recur as:

- IS — n=1;
- THIS IS — n=2;
- INTERACTION THIS IS — n=3;
- SOCIAL INTERACTION THIS IS — n=4;
- IN SOCIAL INTERACTION THIS IS — n=5.

So a repeated phrase creates a vertical/nested ridge in the 2D position×scale surface.

Full Coffee Cup endpoint counts:

| Number of simultaneously recurring n-levels at an endpoint | Number of endpoints |
|---:|---:|
| at least 1 | 750 |
| at least 2 | 229 |
| at least 3 | 89 |
| at least 4 | 45 |
| at least 5 | 21 |
| at least 6 | 3 |

The first two pages already contain:
- 168 endpoints with recurrence at ≥1 scale;
- 41 at ≥2;
- 14 at ≥3;
- 6 at ≥4;
- 3 at ≥5.

The toy APPLES specimen showed recurrence by scale.

The page-scale corpus shows **recurrence geometry across scale**.

That is the first genuinely heat-map-like structure observed by the campaign.

### 2.3 Low-n heat is broad; high-n heat is sparse

First two Coffee Cup pages:

| n | cells | repeated classes | recurrent cell occurrences | recurrent fraction |
|---:|---:|---:|---:|---:|
| 1 | 375 | 56 | 224 | 59.73% |
| 2 | 374 | 26 | 67 | 17.91% |
| 3 | 373 | 12 | 26 | 6.97% |
| 4 | 372 | 6 | 12 | 3.23% |
| 5 | 371 | 3 | 6 | 1.62% |
| 6 | 370 | 0 | 0 | 0 |

Full Coffee Cup:

| n | cells | repeated classes | recurrent cell occurrences | recurrent fraction |
|---:|---:|---:|---:|---:|
| 1 | 1,219 | 163 | 913 | 74.90% |
| 2 | 1,218 | 100 | 329 | 27.01% |
| 3 | 1,217 | 41 | 130 | 10.68% |
| 4 | 1,216 | 19 | 64 | 5.26% |
| 5 | 1,215 | 9 | 30 | 2.47% |
| 6 | 1,214 | 2 | 5 | 0.41% |
| 7 | 1,213 | 0 | 0 | 0 |

So multi-scale sampling produces an intrinsic structural filter:

- low n is broadly hot;
- higher n rapidly becomes sparse;
- surviving high-n recurrence identifies more specific repeated structure without semantic scoring.

Pass 2 does **not** turn this into a retention threshold.

But it is a scale property the tiny examples could not reveal.

### 2.4 Long-range recurrence appears across distant text regions

Examples in the full Coffee Cup specimen:

- IN SOCIAL INTERACTION THIS IS — 5 occurrences across pages 1–5.
- ANSWERS ONE QUESTION ONLY — 5 occurrences across pages 2–6.
- IN LANGUAGE THIS IS THE — 5 occurrences across several pages.
- IF YOU READ THIS AND FELT — 3 occurrences at n=6.
- IN LIVED EVENTS THIS IS THE — 2 occurrences at n=6.

The sampler therefore finds structures separated by hundreds of source positions.

This is direct evidence for the user's intended end behavior:

> a current local structure can find prior structures across the corpus through repeated usage pattern, without semantic selection.

### 2.5 Page boundaries did not create the recurrent structure

Coffee Cup was calculated:
- as one raw continuous stream;
- with form-feed page boundaries used as an analytical no-cross-page control.

For n=1 through n=7, the **set and multiplicity of every repeated class was identical**.

Removing cross-page windows only removed unique boundary-crossing cells.

The repeated multi-scale structures were therefore not page-break artifacts.

### 2.6 The heat field is not independent across n

A long recurrence mechanically induces recurrence at constituent lower scales.

Therefore heat cells are correlated vertically and diagonally.

This means a future heat-map/search layer should not assume every hot cell is an independent fact.

The field contains nested recurrence families.

This was not visible in D1 and was barely visible in APPLES.

---

## 3. Scale ladder summary

| Corpus | tokens | total 2D cells | longest exact recurring n | total repeated classes across recurring n |
|---|---:|---:|---:|---:|
| D1 | 5 | 15 | 1 | 1 |
| APPLES | 27 | 378 | 5 | 16 |
| Coffee Cup first 2 pages | 375 | 70,500 | 5 | 103 |
| Coffee Cup full | 1,219 | 743,590 | 6 | 334 |

This is the answer to the human's scale challenge:

> the sampler's important object is not merely “a repeated phrase.” At realistic text size it becomes a sparse multi-scale recurrence field laid over a very dense 2D lattice.

---

## 4. D1 exact lattice

D1 source WORD stream:

\[
[\text{PIE},\text{DESSERT},\text{PIE},\text{WHOLE},\text{CUSTOMER}].
\]

All 15 cells:

| n | t | sample | prior exact recurrence H[n,t] |
|---:|---:|---|---:|
| 1 | 0 | PIE | 0 |
| 1 | 1 | DESSERT | 0 |
| 1 | 2 | PIE | 1 |
| 1 | 3 | WHOLE | 0 |
| 1 | 4 | CUSTOMER | 0 |
| 2 | 1 | PIE DESSERT | 0 |
| 2 | 2 | DESSERT PIE | 0 |
| 2 | 3 | PIE WHOLE | 0 |
| 2 | 4 | WHOLE CUSTOMER | 0 |
| 3 | 2 | PIE DESSERT PIE | 0 |
| 3 | 3 | DESSERT PIE WHOLE | 0 |
| 3 | 4 | PIE WHOLE CUSTOMER | 0 |
| 4 | 3 | PIE DESSERT PIE WHOLE | 0 |
| 4 | 4 | DESSERT PIE WHOLE CUSTOMER | 0 |
| 5 | 4 | PIE DESSERT PIE WHOLE CUSTOMER | 0 |

Exact contiguous recurrence in D1 occurs only at:

\[
n=1,\quad PIE.
\]

---

## 5. Exact recurrence is not the D1 retention rule

D1 retains:

\[
0002=Join(0000,0001)
\]

for PIE DESSERT, and:

\[
0006=Join(0003,0005)
\]

for PIE WHOLE.

Neither contiguous n=2 cell had a prior exact recurrence.

Therefore:

\[
\boxed{
H[n,t]>0
}
\]

is **not required** for a D1 relation to be retained.

The universal rule:

\[
\text{retain only repeated exact cells}
\]

is refuted.

This is one of the most important Pass-2 findings.

The 2D recurrence field is real and useful, but the retained relational map is **not merely a cache of repeated n-grams**.

---

## 6. D1 WORD-position ancestry

Define WordPos(p) as the source WORD positions recursively reachable from p.

Calculated:

| D1 pointer | WordPos |
|---:|---|
| 0002 | {0,1} |
| 0004 | {0,2} |
| 0006 | {2,3} |
| 0007 | {0,2,3} |
| 0009 | {0,2,3,4} |
| 0010 | {0,1,2,3,4} |

Classification:

### 0002 — P-A exact contiguous-cell cover

Covers:

\[
S[2,1]=\text{PIE DESSERT}.
\]

### 0004 — P-B root-touch cross-link

Covers:

\[
\{0,2\}
\]

which is not one contiguous sample cell.

This is word recurrence linked through root identity across source distance.

### 0006 — P-A exact contiguous-cell cover

Covers:

\[
S[2,3]=\text{PIE WHOLE}.
\]

### 0007 — P-C relational superstructure

Covers:

\[
\{0,2,3\}
\]

through two prior POINTER branches.

It is not one raw contiguous cell.

### 0009 — P-C relational superstructure

Covers:

\[
\{0,2,3,4\}.
\]

Again noncontiguous.

### 0010 — P-D exact span cover with nontrivial topology

Its WordPos equals the whole contiguous n=5 sample:

\[
\{0,1,2,3,4\}.
\]

But its construction is:

\[
Join(0009,0002),
\]

where 0009 is already a relational branch.

So:

\[
WordPos(0010)=\text{whole text span}
\]

does **not** prove 0010 is a canonical n=5 lattice-cell representation.

It is a relational superstructure that happens to cover the whole span.

---

## 7. Key structural consequence from D1

The minimal architecture is now clearer:

\[
\boxed{
\text{contiguous 2D sample lattice}
+
\text{noncontiguous/cross-scale POINTER overlay}.
}
\]

The 2D lattice is the graph paper.

The POINTER map is not confined to its cell boundaries.

That overlay is how:
- root recurrence can link distant n=1 positions;
- retained n=2 cell points can participate;
- POINTER structures can join POINTER structures;
- a final point can span the whole sample while preserving nontrivial relation history.

This was obscured when earlier passes tried to make every relationship itself one sample selection.

---

## 8. D1 exact-cover address map

Define:

\[
Addr(n,t)
=
\{p:WordPos(p)=\{t-n+1,\ldots,t\}\}.
\]

Observed exact-cover addresses:

| n | t | sample | exact-cover 1D point |
|---:|---:|---|---|
| 1 | 0 | PIE | 0000 |
| 1 | 1 | DESSERT | 0001 |
| 1 | 2 | PIE | 0003 |
| 1 | 3 | WHOLE | 0005 |
| 1 | 4 | CUSTOMER | 0008 |
| 2 | 1 | PIE DESSERT | 0002 |
| 2 | 2 | DESSERT PIE | none |
| 2 | 3 | PIE WHOLE | 0006 |
| 2 | 4 | WHOLE CUSTOMER | none |
| 3 | 2 | PIE DESSERT PIE | none |
| 3 | 3 | DESSERT PIE WHOLE | none |
| 3 | 4 | PIE WHOLE CUSTOMER | none |
| 4 | 3 | PIE DESSERT PIE WHOLE | none |
| 4 | 4 | DESSERT PIE WHOLE CUSTOMER | none |
| 5 | 4 | PIE DESSERT PIE WHOLE CUSTOMER | 0010, coverage only; topology noncanonical |

Count:

\[
8/15
\]

cells have an exact-cover point in the final D1 trace.

\[
7/15
\]

remain perfectly valid 2D samples with no exact-cover retained point.

Therefore:

\[
\boxed{
\text{2D cell existence does not require 1D materialization.}
}
\]

This closes G-A at the campaign level.

---

## 9. Addressability bridge refined

Pass 1 had one broad question:

> how does a 2D cell become a 1D addressable point?

Pass 2 splits it.

### G-A — existence address

Does every 2D cell require a retained address merely to exist?

**No.**

D1 supplies seven direct counterexamples.

### G-B — operand address at retention time

If a future POINTER needs an ephemeral cell as an operand, how is it materialized/resolved?

**Still OPEN.**

No D1 pointer references an unaddressed operand.

Every D1 POINTER operand is an already-existing Lace row.

Therefore D1 does **not** provide a specimen of the missing materialization transition.

This is a narrower and cleaner gap.

---

## 10. D1 grounding-cost witness

Naive cost for an unmaterialized contiguous n-word sample:

\[
n-1
\]

binary Join rows.

Using retained lower-scale points can reduce that cost.

Final-state reuse witness:

| n | t | sample | existing exact cover? | naive joins | best joins using retained subpoints |
|---:|---:|---|---|---:|---:|
| 1 | 0 | PIE | yes | 0 | 0 |
| 1 | 1 | DESSERT | yes | 0 | 0 |
| 1 | 2 | PIE | yes | 0 | 0 |
| 1 | 3 | WHOLE | yes | 0 | 0 |
| 1 | 4 | CUSTOMER | yes | 0 | 0 |
| 2 | 1 | PIE DESSERT | yes | 1 | 0 |
| 2 | 2 | DESSERT PIE | no | 1 | 1 |
| 2 | 3 | PIE WHOLE | yes | 1 | 0 |
| 2 | 4 | WHOLE CUSTOMER | no | 1 | 1 |
| 3 | 2 | PIE DESSERT PIE | no | 2 | 1 |
| 3 | 3 | DESSERT PIE WHOLE | no | 2 | 1 |
| 3 | 4 | PIE WHOLE CUSTOMER | no | 2 | 1 |
| 4 | 3 | PIE DESSERT PIE WHOLE | no | 3 | 1 |
| 4 | 4 | DESSERT PIE WHOLE CUSTOMER | no | 3 | 2 |
| 5 | 4 | whole sequence | yes via 0010 | 4 | 0 after construction |

### Historical n=5 construction

When CUSTOMER first arrives, 0010 does not exist yet.

The already-retained branches allow the whole five-word coverage to be built with two new joins:

\[
0009=Join(0008,0007)
\]

then:

\[
0010=Join(0009,0002).
\]

So D1 materially demonstrates **hierarchical reuse**:

\[
4\text{ naive joins from five WORD leaves}
\quad\to\quad
2\text{ joins using retained prior structure}.
\]

This is a concrete benefit of cross-scale / pointer-on-pointer reuse.

### Another important counterexample

At t=3, the contiguous n=4 sample:

\[
PIE,\ DESSERT,\ PIE,\ WHOLE
\]

could be grounded in one join using:

\[
0002\quad\text{and}\quad0006.
\]

D1 does **not** do that.

Instead it writes:

\[
0007=Join(0006,0004),
\]

which preserves a different, noncontiguous relational branch.

Therefore the retained map is not:

> materialize the cheapest available contiguous sample.

That candidate retention rule is refuted too.

---

## 11. Operand-at-append addressability audit

Every retained D1 POINTER references already-existing 1D rows:

| pointer | operands |
|---:|---|
| 0002 | 0000, 0001 |
| 0004 | 0003, 0000 |
| 0006 | 0003, 0005 |
| 0007 | 0006, 0004 |
| 0009 | 0008, 0007 |
| 0010 | 0009, 0002 |

No D1 retained relation requires:
- pointer-to-ephemeral-cell;
- a new scale field;
- forward reference;
- an unmaterialized sample operand.

So the missing G-B transition is not contradicted by D1; D1 simply never displays it.

---

## 12. APPLES B0 / B1 experiment

### B0 — raw concatenated stream

27 words, including cross-sentence windows.

### B1 — sentence-scoped analytical control

Same four source sentences, with windows forbidden from crossing sentence boundaries.

No boundary row or Core boundary metadata is proposed.

Results:

| n | B0 cells | B1 cells | repeated classes | recurrent occurrences | max count |
|---:|---:|---:|---:|---:|---:|
| 1 | 27 | 27 | 6 | 16 | 4 |
| 2 | 26 | 23 | 4 | 10 | 3 |
| 3 | 25 | 19 | 3 | 7 | 3 |
| 4 | 24 | 15 | 2 | 4 | 2 |
| 5 | 23 | 11 | 1 | 2 | 2 |
| 6 | 22 | 7 | 0 | 0 | 1 |

For every n=1…7, the repeated-class set and multiplicities are identical under B0 and B1.

Boundary treatment only changes unique cross-boundary cells.

Longest exact recurrence:

\[
\boxed{
\text{WE ATE RED APPLE PIE}
}
\]

at:

\[
n=5,\quad count=2.
\]

Other recurrence ladder:

- APPLE — count 4;
- RED APPLE — count 3;
- APPLE PIE — count 3;
- RED APPLE PIE — count 3;
- WE ATE RED — count 2;
- WE ATE RED APPLE — count 2;
- WE ATE RED APPLE PIE — count 2.

Again the structure forms a multi-scale recurrence ridge.

---

## 13. Real-prose scale amendment — Coffee Cup

### 13.1 Two-page test

375 tokens.

Full triangular 2D surface:

\[
70{,}500\text{ cells}.
\]

Exact recurrence survives through n=5.

Examples:

- IN SOCIAL INTERACTION THIS IS — 2;
- IN LANGUAGE THIS IS THE — 2;
- IN LIVED EVENTS THIS IS — 2.

No exact n=6 recurrence exists in the first two pages.

### 13.2 Full text stress test

1,219 tokens.

Full triangular 2D surface:

\[
743{,}590\text{ cells}.
\]

Exact recurrence survives through n=6.

Examples:

- ANSWERS ONE QUESTION ONLY — 5;
- IN SOCIAL INTERACTION THIS IS — 5;
- IN LANGUAGE THIS IS THE — 5;
- IF YOU READ THIS AND FELT — 3;
- IN LIVED EVENTS THIS IS THE — 2.

No repeated n=7 cell exists.

Therefore no longer exact repeated cell can exist either.

### 13.3 What became evident only at this scale

1. **Quadratic working surface:** the sampler creates far more potential structures than can sensibly be treated as retained rows.
2. **Nested heat ridges:** long repeated structures create simultaneous recurrence across multiple n levels.
3. **Scale separation:** low n is very dense, high n becomes sharply sparse without any semantic weighting.
4. **Long-range linkage:** repeated structures recur hundreds of positions/pages apart.
5. **Boundary robustness:** page boundaries removed only unique cross-page windows; all recurrent classes/multiplicities through n=7 were unchanged.
6. **Pattern families:** multiple related recurring scaffolds form a structural field, not one chosen relation.
7. **The relational map must overlay the lattice:** exact recurrence does not explain all D1 retained pointers, and D1 retains noncontiguous relational branches even when cheap contiguous grounding is available.

These are the main things the original toy-sized Pass-2 plan would have missed.

---

## 14. Direct / recursive construction equivalence

Checked:

| Corpus | cells checked | mismatches direct↔endpoint extension | mismatches direct↔overlap merge |
|---|---:|---:|---:|
| D1 | 15 | 0 | 0 |
| APPLES | 378 | 0 | 0 |
| Coffee Cup first 2 pages | 70,500 | 0 | 0 |

The equivalence also follows algebraically for arbitrary sequence length.

Therefore the minimal lattice can be generated recursively without semantic interpretation.

Pass 2 closes the **lattice-construction equivalence** for this contiguous-root-key candidate.

It does not close whether this candidate is the only valid sampling lattice.

---

## 15. Retention-side tests

### T-R1 — repeat-only retention

\[
H[n,t]>0\Rightarrow\text{retain},
\]

with no retention for H=0.

**REFUTED by D1.**

0002 and 0006 are retained at H=0.

### T-R2 — first-seen-everything retention

Every first-seen 2D cell gets a retained address.

**REFUTED by D1.**

Seven of fifteen D1 cells lack exact-cover retained points.

### T-R3 — recurrence threshold

No threshold is source-backed.

**OPEN / not admitted.**

### T-R4 — equal-scale recurrence required

**REFUTED by H12.**

Cross-scale relation is allowed.

### T-R5 — materialize cheapest contiguous cell

**REFUTED by D1 0007.**

At t=3, a one-Join exact n=4 contiguous cover was available from 0002 + 0006.

D1 instead retained 0007 = Join(0006,0004), a different relational branch.

---

## 16. No canonicalization from coverage

Pass 2 confirms:

\[
WordPos(p)=WordPos(q)
\]

would not prove:

\[
p=q.
\]

0010 is the bounded warning.

Its WORD coverage is the full contiguous sample, but its internal construction preserves prior relational branches.

The 2D lattice identifies source spans/samples.

The 1D Lace preserves the actual relational history.

These are different roles.

---

## 17. Updated picture after Pass 2

The strongest current architecture is:

    1D WORD/POINTER history
            |
            v
    dense 2D contiguous sample lattice
            |
            +---- exact recurrence field / multi-scale ridges
            |
            +---- addressable sample points where retained
            |
            v
    sparse POINTER overlay
       - contiguous sample covers
       - root-touch cross-links
       - cross-scale links
       - relation-on-relation branches
            |
            v
    richer 1D Lace
            |
            +---- resample

So:

\[
\boxed{
\text{the 2D lattice is the sampling substrate}
}
\]

and:

\[
\boxed{
\text{the POINTER topology is the retained relational overlay}.
}
\]

They are coupled but not identical.

---

## 18. Falsifier board

| ID | Result |
|---|---|
| **F2-1 L-A/L-B/L-C disagree** | **did not fire** — 0 mismatches on 70,893 explicitly checked cells; algebraic equivalence general |
| **F2-2 cell identity needs semantics** | **did not fire** — root-key tuple is nonsemantic |
| **F2-3 D1 15-cell reconstruction fails** | **did not fire** |
| **F2-4 H requires hidden persistent state** | **did not fire** — recurrence field derivable from source history |
| **F2-5 a D1 pointer cannot be classified** | **did not fire** — all six classified P-A…P-D |
| **F2-6 D1 pointer references unaddressed operand** | **did not fire** — all operands already retained rows |
| **F2-7 equal-scale-only relation needed** | **did not fire**; H12 rejects restriction |
| **F2-8 POINTER needs n metadata** | **did not fire** |
| **F2-9 WordPos used as canonical identity** | **did not fire** — explicitly refused |
| **F2-10 repeat-only retention explains all D1** | **did not fire** |
| **F2-11 repeat-only retention fails 0002/0006** | **FIRED** |
| **F2-12 first-seen-every-cell fits D1** | **did not fire; universal rule refuted** |
| **F2-13 APPLES longest recurrence boundary-dependent** | **did not fire** — repeated class sets identical B0/B1 |
| **F2-14 raw B0 lattice undefined** | **did not fire** |
| **F2-15 n=1 RootKey unavailable in specimens** | **did not fire** |
| **F2-16 cross-scale relation requires cross-n equality** | **did not fire** — relation ≠ equality |
| **F2-17 0010 cover misread as canonical n=5 identity** | **did not fire** — classified P-D |
| **F2-18 every cell must materialize to calculate H** | **did not fire** — Coffee recurrence calculated over 743,590-cell conceptual surface without Lace-row materialization |
| **F2-19 gate-question slot order needed for cell identity** | **did not fire** |
| **F2-20 law/code required** | **did not fire** |

---

## 19. Proof board

| # | Requirement | Result |
|---:|---|---|
| 1 | D1 15-cell lattice printed | **PASS** |
| 2 | D1 online H field calculated | **PASS** |
| 3 | three constructions checked | **PASS** |
| 4 | WordPos six pointers | **PASS** |
| 5 | all pointers P-A…P-D classified | **PASS** |
| 6 | Addr all 15 cells | **PASS** |
| 7 | D1 grounding-cost table | **PASS** |
| 8 | pointer-time operand addressability | **PASS** |
| 9 | repeat-only retention tested | **PASS — refuted** |
| 10 | first-seen-every-cell tested | **PASS — refuted** |
| 11 | APPLES B0 | **PASS** |
| 12 | APPLES B1 | **PASS** |
| 13 | boundary sensitivity | **PASS** |
| 14 | longest APPLES recurrence | **PASS: n=5** |
| 15 | cross-scale relation ≠ equality | **PASS** |
| 16 | no n field added | **PASS** |
| 17 | no WordPos canonicalization | **PASS** |
| 18 | 20 falsifiers | **PASS** |
| 19 | residual questions named | **PASS** |
| 20 | no law/code changes | **PASS** |

**Board: 20/20 PASS.**

The human scale amendment also passed:
- first two real-prose pages analyzed;
- full text stress-tested;
- scale-only findings identified.

---

## 20. Exact residuals after Pass 2

### G2-A — retention trigger

The biggest remaining gap:

\[
\boxed{
\text{What structural condition causes the 1D Lace to retain a POINTER from the 2D sampling field?}
}
\]

It is not:
- exact repeat only;
- every first-seen cell;
- cheapest contiguous materialization;
- equal-scale matching.

### G2-B — retention target / address bridge

If the structure that should be related is currently only an ephemeral 2D cell:

\[
\boxed{
\text{how is that cell grounded into an addressable 1D point when needed?}
}
\]

D1 contains no direct specimen of an actual POINTER referencing an unmaterialized cell.

### G2-C — recursive sample identity above raw windows

The contiguous root-key lattice is coherent.

But once retained POINTER structure participates in later sampling, does sample identity remain:
- raw text window only;
- recursive pointer topology;
- both as coupled layers?

H12 strongly suggests the relational overlay matters.

Exact recurrence key above the raw-text lattice remains open.

### G2-D — heat beyond exact recurrence

Exact recurrence gives the first real heat field.

At page scale it creates multi-scale ridges.

But future density may additionally include:
- pointer incidence;
- route multiplicity;
- cross-scale connectivity;
- shared ancestry.

No canonical combined metric yet.

### G2-E — scaling / reconstruction strategy

The 2D lattice is \(O(T^2)\) in total cells.

At 1,219 words:

\[
743{,}590
\]

cells already exist conceptually.

The law only requires the surface be derivable, not that every cell be simultaneously materialized in memory.

How the sampler traverses/reconstructs that surface efficiently is an implementation/planning question for later, not Core semantics.

---

## 21. Recommended Pass 3 target — not opened

Pass 3 should finally attack the **retention bridge**, but with the page-scale findings in hand.

Do not start from a threshold.

Start from D1's three retained-relation classes:

1. contiguous sample cover;
2. root-touch / recurrence cross-link;
3. relational superstructure.

Then ask whether these can be generated by one structural rule over:

\[
\text{new 2D samples}
+
\text{existing addressable points}
+
\text{existing POINTER topology}
\]

without semantic choice.

The key Pass-3 test should include a larger prose window, because the scale amendment proved that multi-scale ridges and long-range recurrence are invisible in tiny specimens.

No Pass 3 is opened automatically.

---

## 22. Steward verdict

The graph paper exists.

And the larger test changed what we can see on it.

At five words, recurrence looks like one repeated PIE.

At a couple pages, repeated structures stack vertically across several n levels.

Across the full prose sample, those stacks recur far apart and become multi-scale ridges.

That means the heat map is not a bag of phrase counts.

It is a position-by-scale field whose structure becomes visible only as the corpus grows.

The POINTER map then preserves selected/cross-linked relational history over that field, including relations that are not themselves contiguous cells.

That is what the toy test missed.
