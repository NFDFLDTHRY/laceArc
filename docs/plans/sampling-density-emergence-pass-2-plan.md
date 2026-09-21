# SAMPLING / DENSITY / EMERGENCE campaign — Pass 2 PLAN

**Status:** PLAN — NOT EXECUTED.
**Name:** MINIMAL 2D LATTICE / ADDRESSABILITY WITNESS
**Planning station:** maps (Astra-sampling).
**Pinned main before claim:** 47ec7704d06df3ad58dc2376466dd83f513aab55.
**Maps claim:** 9f45d76d08de18fa66372df28c78944dc102e9cb.
**Depends on:** Sampling / Density / Emergence Pass 1 findings, H7–H12, D1 exact tape, current binary Join/Reach model, and gate-question Passes 1–3.
**Law:** no law edit.
**Implementation:** no src/. No Cargo. No Rust. No sampler code.
**Acceptance:** absent.

Pass 1 established the architecture:

\[
\boxed{
\text{1D authoritative Lace}
\to
\text{2D position × scale sampler}
\to
\text{cross-scale structural evidence}
\to
\text{sparse retained POINTER map on 1D}
}
\]

Pass 2 does not attack the retention rule yet.

It asks a narrower question:

\[
\boxed{
\text{Can the minimal nonsemantic 2D lattice itself be made exact and self-consistent?}
}
\]

If yes, later work can attack retention/addressability.

If no, stop before inventing a retention policy for a broken sampler.

---

## 0. Pass-2 thesis

Test this bounded thesis:

> A triangular 2D lattice of contiguous source-word samples, keyed only by word-root identity and reconstructible from 1D Lace, is sufficient as the minimal sampling substrate. It does not need to represent every retained POINTER as a cell. Retained POINTERs may instead cross-link lattice-addressable structures and prior POINTER structures.

The experiment deliberately separates:

\[
\text{2D sample cell}
\]

from:

\[
\text{retained relational point}.
\]

The thesis is allowed to fail.

Pass 2 must publish the failure if D1 or APPLES requires more than this lattice.

---

## 1. Fixed experiment coordinates

Pass 1 left x orientation open.

Pass 2 chooses one coordinate convention for the experiment only:

\[
x=t=\text{WORD/source position at which the sample ends}.
\]

For a word stream:

\[
W=(w_0,w_1,\ldots,w_{T-1})
\]

let:

\[
r_t=\operatorname{RootKey}(w_t).
\]

RootKey means lexical root identity under the specimen's already-given word labels.

It does not solve global G1 tokenization.

The minimal cell is:

\[
\boxed{
S[n,t]=(r_{t-n+1},\ldots,r_t)
}
\]

for:

\[
1\le n\le t+1.
\]

So the 2D surface is triangular under endpoint coordinates.

No cell is automatically a Lace row.

---

## 2. RootKey discipline

For D1:

- PIE at text positions 0 and 2 has the same RootKey;
- DESSERT, WHOLE, CUSTOMER have distinct specimen keys.

For APPLES:

- exact uppercase tokens are treated as fixed specimen identities;
- no stemming;
- no synonymy;
- no singular/plural normalization;
- no semantic similarity;
- no punctuation/case generalization beyond the literal specimen.

Therefore Pass 2 can test the lattice without pretending G1 is solved globally.

Authority:
- word root concept: current law / R;
- exact specimen labels: bounded analytical convention;
- general token equality: still OPEN.

---

## 3. Two constructions must produce the same lattice

Pass 2 compares two nonsemantic constructions.

### L-A — direct window definition

\[
S_A[n,t]
=
(r_{t-n+1},\ldots,r_t).
\]

### L-B — n+1 endpoint extension

Base:

\[
S_B[1,t]=(r_t).
\]

Recurrence:

\[
S_B[n+1,t]
=
S_B[n,t-1]\oplus r_t
\]

where \(\oplus\) appends one root identity.

### L-C — neighboring-cell overlap merge

For n ≥ 1:

\[
S_C[n+1,t]
=
\operatorname{MergeOverlap}
\bigl(
S_C[n,t-1],
S_C[n,t]
\bigr)
\]

when the suffix of the first and prefix of the second share the expected n−1 identities.

Example:

\[
(A,B,C)
\]

and:

\[
(B,C,D)
\]

merge to:

\[
(A,B,C,D).
\]

### Equivalence test

For every valid cell:

\[
S_A[n,t]
=
S_B[n,t]
=
S_C[n,t].
\]

If this fails under exact root-key sequences, the minimal lattice thesis fails.

This is a mathematical equivalence test, not implementation.

---

## 4. Cell identity and recurrence class

Define the experimental identity key:

\[
\kappa(n,t)=
\bigl(n,S[n,t]\bigr).
\]

The scale n is part of the key.

Thus the same word tuple at different scales cannot be accidentally equated.

Exact recurrence means:

\[
\kappa(n,t)=\kappa(n,u)
\]

for two positions \(u<t\).

Define prior recurrence count:

\[
H[n,t]
=
\#\{
u<t:
S[n,u]=S[n,t]
\}.
\]

This is the minimal exact nonsemantic "heat" field for Pass 2.

Important:

\[
H[n,t]
\]

is derived.

It is not stored Core state and is not proposed as the final heat-map metric.

Pass 2 uses it only to measure exact recurrence.

---

## 5. Online-growth requirement

H8 says relationships are found over time as Lace grows.

Therefore Pass 2 must not compute recurrence only from the final static corpus.

For every arrival t:

1. append the new word occurrence conceptually;
2. construct all newly available endpoint cells:
   \[
   S[1,t],S[2,t],\ldots,S[t+1,t];
   \]
3. compare them only against prior cells;
4. record:
   \[
   H[n,t];
   \]
5. do not let future cells influence the current result.

Static full-corpus tables may be produced as a summary only after the online calculation.

---

## 6. D1 source-word sequence

D1 retained rows correspond to the WORD subsequence:

| Text position | D1 row | Word |
|---:|---:|---|
| 0 | 0000 | PIE |
| 1 | 0001 | DESSERT |
| 2 | 0003 | PIE |
| 3 | 0005 | WHOLE |
| 4 | 0008 | CUSTOMER |

The complete minimal lattice contains:

\[
5+4+3+2+1=15
\]

cells.

Pass 2 must print all 15.

### Expected exact recurrence pressure

The only obvious exact root-key recurrence is:

\[
S[1,0]=S[1,2]=(\mathrm{PIE}).
\]

The plan does not assume that is the only recurrence. Execution must calculate all 15 cells and prove the count.

If it is the only recurrence, a crucial result follows:

> exact contiguous-window recurrence alone cannot explain all retained D1 relations, because D1 also retains 0002 and 0006.

That would not break the 2D lattice.

It would break only the stronger claim:

\[
\text{exact recurrence count alone}
=
\text{retention rule}.
\]

Pass 2 must keep those claims separate.

---

## 7. D1 WORD-leaf map

To compare retained POINTER topology to the contiguous lattice, define:

\[
WordPos(p)
\]

as the set of source-WORD positions reachable from Lace point p.

For a WORD row at source position q:

\[
WordPos(p)=\{q\}.
\]

For a POINTER:

\[
WordPos(p)
=
WordPos(a)\cup WordPos(b).
\]

This is a derived coverage witness.

It is not a canonical semantic meaning and does not preserve all pointer ordering information.

### Required D1 calculation

Compute WordPos for:

- 0002
- 0004
- 0006
- 0007
- 0009
- 0010

Then classify each retained pointer as one of:

### P-A — exact contiguous-cell cover

Its WORD-position set is exactly:

\[
\{t-n+1,\ldots,t\}
\]

for some 2D cell.

### P-B — recurrence/root cross-link

It connects occurrences/roots whose source positions are noncontiguous.

### P-C — relational superstructure

It combines prior POINTER points / formations and is not itself merely one raw contiguous 2D cell.

### P-D — ambiguous under coverage alone

Coverage matches a contiguous cell but the pointer topology differs, so WordPos is insufficient to prove identity.

This classification is central.

The minimal-lattice thesis does **not** require all D1 POINTERs to be P-A.

---

## 8. D1 address map

Define an experimental address relation:

\[
Addr(n,t)
=
\{
p:
WordPos(p)
=
\{t-n+1,\ldots,t\}
\}.
\]

This says only:

> p covers exactly the WORD occurrences of that contiguous cell.

It does not say p is the unique/canonical address of the sample.

Pass 2 must table Addr for all 15 D1 cells.

### Questions

1. Which n=1 cells already have WORD-row addresses?
2. Which n=2 cells have exact-cover POINTER addresses?
3. Which n≥3 cells have any exact-cover point?
4. Are there multiple points for one cell?
5. Does 0010 give an exact-cover address for the n=5 whole sequence?
6. Which cells remain ephemeral/unaddressed?
7. Does any D1 retained pointer require an operand corresponding to an unaddressed 2D cell?

That last question is critical.

If every retained D1 pointer references already-addressable Lace points, then D1 demonstrates that **unretained 2D cells do not need addresses merely to exist**.

---

## 9. First addressability gap: two different meanings

Pass 1 used "2D cell → 1D address bridge" as one residual.

Pass 2 must split it.

### G-A — cell-existence addressability

Does every 2D cell require a 1D address merely to exist?

Expected answer: likely no.

D1 sparsity argues against it.

### G-B — retention-time addressability

If a relation is to retain a POINTER whose operand is an ephemeral 2D cell, how does that cell become an addressable Lace point?

This remains the real bridge problem.

Pass 2 does not solve G-B.

It must locate the **first actual specimen case** in D1 or APPLES where such materialization would be needed.

If D1 never requires it, say so.

---

## 10. Contiguous lattice vs relational overlay

The central Pass-2 structural test is:

\[
\boxed{
\text{2D lattice cells}
\neq
\text{all retained relational points}.
}
\]

Candidate interpretation:

- contiguous word-span samples form the 2D lattice;
- repeated word identity creates root-touch cross-links;
- retained pair/sample points may correspond to lattice cells;
- POINTER→POINTER relations cross-link retained structures;
- those cross-links create relational structure beyond the rectangular/triangular 2D lattice.

Under this reading:

\[
\text{2D sampling surface}
+
\text{POINTER overlay}
\]

produces the richer N-D relational map.

### Falsifier

If D1 contains a retained relation that cannot be expressed as:
- a pointer between already-addressable word/sample points, or
- a point produced by current binary grounding,
then the minimal substrate is insufficient.

---

## 11. D1 exact questions

### D2-1
Are all 15 contiguous cells reconstructible with no stored sample state?

### D2-2
Do L-A, L-B and L-C produce identical cells?

### D2-3
What exact recurrence classes exist?

### D2-4
Does exact recurrence alone predict 0002?

### D2-5
Does exact recurrence alone predict 0006?

### D2-6
Which D1 pointers are exact contiguous-cell covers?

### D2-7
Which are noncontiguous/cross-level relational structures?

### D2-8
Does 0004 fit naturally as n=1 recurrence/root-touch rather than an n=2 contiguous cell?

### D2-9
Can 0007 be read as a POINTER overlay between the structure at 0006 and the root-touch at 0004?

### D2-10
Can 0009 be read as a word-scale CUSTOMER point linked to prior relational structure?

### D2-11
Can 0010 be read as a relation between two prior relational branches while its WordPos happens to cover the entire five-word sequence?

### D2-12
Does any retained D1 pointer require materializing a previously unaddressed contiguous cell?

---

## 12. APPLES specimen streams

Pass 1 used:

A:
WE ATE RED APPLE PIE AFTER WORK

B:
SHE BAKED RED APPLE PIE FOR DINNER

C:
GREEN APPLE TREE GROWS TALL

D:
TODAY WE ATE RED APPLE PIE AT DINNER

Pass 2 must calculate the minimal lattice in two boundary treatments.

### Boundary treatment B0 — raw concatenated stream

Concatenate A→B→C→D with **no invented boundary token**.

This matches the current absence of a stored sentence/document boundary type.

It will generate cross-sentence windows.

Those are real consequences of the chosen experiment, not necessarily desired semantics.

### Boundary treatment B1 — analytical sentence-scoped control

Calculate windows separately inside A/B/C/D.

This is **not Core law**.

It is a control experiment asking:

> Which recurrence findings depend on respecting the human-visible sentence boundaries?

No boundary row or boundary metadata is added to Lace.

### Boundary sensitivity

If a claimed key result appears only in B1 but disappears or is swamped in B0, flag it:

\[
\text{BOUNDARY-DEPENDENT}.
\]

Do not silently assume sentence boundaries.

---

## 13. APPLES recurrence field

For both B0 and B1:

1. calculate all n=1 cells;
2. calculate all valid n≥2 cells;
3. compute online:
   \[
   H[n,t];
   \]
4. publish:
   - total cells by n;
   - number of recurrence classes by n;
   - number of recurrent cells by n;
   - maximum recurrence count by n;
   - all nonzero-recurrence cells up to the longest recurring n;
5. identify the longest exact repeated contiguous sample.

Expected examples from Pass 1, not assumed:
- APPLE;
- RED APPLE;
- APPLE PIE;
- RED APPLE PIE;
- WE ATE RED APPLE PIE.

Execution must calculate them.

---

## 14. Direct-window vs recursive-construction comparison

Pass 2 must prove whether the minimal lattice can be built recursively without semantic interpretation.

For every APPLES and D1 cell:

### Direct:
\[
S_A[n,t].
\]

### Endpoint extension:
\[
S_B[n,t].
\]

### Overlap merge:
\[
S_C[n,t].
\]

Compare byte-for-byte symbolic root-key tuples.

Report:

- number of cells tested;
- mismatches;
- boundary failures;
- invalid overlap merges.

### Acceptance condition

\[
\boxed{
0\text{ mismatches}
}
\]

is required for the minimal recurrence construction to survive.

If mismatches occur, publish them and stop the recurrence claim.

---

## 15. Recurrence is not yet retention

This is the hard fence of Pass 2.

The pass may calculate:

\[
H[n,t].
\]

It may compare H to D1 retained pointers.

It may **not** define:

\[
H\ge k
\Rightarrow
\text{append POINTER}
\]

for any k.

No threshold exists.

### Explicit tests

Test and likely refute as universal rules:

#### T-R1 — repeat-only retention

A sample is retained only after exact recurrence.

If 0002/0006 have no exact prior recurrence, this cannot explain D1.

#### T-R2 — first-seen-everything retention

Every new cell gets a retained root point.

D1 row count should refute this as universal.

#### T-R3 — recurrence-count threshold

No threshold may be admitted without source/ruling.

#### T-R4 — equal-scale recurrence required for cross-scale pointer

H12 rejects this.

Pass 2 reports these as retention-side constraints only.

It does not replace them with a new rule.

---

## 16. Address-cost witness

Current binary grounding theorem gives a bounded construction cost if an ephemeral cell must become addressable.

For a contiguous n-word cell whose WORD occurrences already exist:

### Naive ladder upper bound

\[
n=1:
0\text{ new POINTER rows}
\]

\[
n>1:
n-1\text{ Join rows}
\]

can ground the n WORD points into one point.

If lower-scale grounded points already exist, fewer new rows may suffice.

Pass 2 may calculate:

\[
Cost_{ground}(n,t)
\]

under:
- naive from WORD leaves;
- reuse of existing D1 points.

This is not a retention policy.

It answers only:

> if this cell had to become addressable now, what is the minimum known constructor cost using current retained points?

### Why this matters

It quantifies the difference between:
- dense ephemeral 2D sampling;
- sparse durable materialization.

---

## 17. D1 grounding-cost table

For every 15 D1 lattice cells, calculate:

1. existing exact-cover point? yes/no;
2. if no, naive n−1 cost;
3. best reuse cost from existing earlier points only;
4. whether materializing it would introduce rows absent from D1;
5. whether any actual later D1 pointer demands that materialization.

This is the exact addressability witness Pass 1 could not provide.

---

## 18. No canonicalization claim

Two different pointer trees may cover the same WORD positions.

Therefore:

\[
WordPos(p)=WordPos(q)
\]

does not imply:

\[
p=q
\]

or:

\[
\text{same relational history}.
\]

Pass 2 must not collapse them.

The lattice identifies a text sample.

The retained Lace may contain:
- zero;
- one;
- or multiple structurally different points whose reach covers that sample.

This is consistent with Rule Zero/no-collapse.

---

## 19. Heat-field interpretation in Pass 2

Pass 2 uses only one upstream density metric:

\[
H[n,t]
=
\text{prior exact recurrence count}.
\]

It does not attempt:
- pointer degree;
- shared ancestry density;
- cross-scale centrality;
- route multiplicity.

Those remain later derived views.

### Reason

Pass 2 needs one falsifiable minimal recurrence field.

If exact recurrence already fails as a coherent lattice identity, broader heat metrics are premature.

If it succeeds, later passes can layer additional structural density over the pointer map.

---

## 20. Pass-2 falsifier board

| ID | Falsifier | Consequence |
|---|---|---|
| **F2-1** | L-A / L-B / L-C disagree for any valid cell | minimal recurrence construction fails |
| **F2-2** | cell identity requires semantic meaning | reject comparator |
| **F2-3** | D1 cannot be reconstructed as 15 contiguous cells | minimal x/n definition fails |
| **F2-4** | exact recurrence field requires hidden persistent state | reject; must be derivable |
| **F2-5** | D1 retained relation cannot be classified as cell-cover or pointer overlay | minimal substrate insufficient |
| **F2-6** | a D1 pointer references an operand not already addressable at its append time | current stored trace contradiction |
| **F2-7** | equal-scale-only relation needed | reject; H12 |
| **F2-8** | POINTER needs stored n metadata to reproduce D1 | current schema conflict |
| **F2-9** | WordPos coverage is treated as canonical identity | reject; no-collapse |
| **F2-10** | repeat-only retention explains all D1 rows | report if true; would shrink later gap |
| **F2-11** | repeat-only retention fails on 0002/0006 | likely; retention remains broader than exact recurrence |
| **F2-12** | first-seen-every-cell retention fits D1 exactly | report if true; otherwise refute |
| **F2-13** | APPLES longest recurrence depends entirely on analytical sentence boundaries | mark boundary dependence |
| **F2-14** | raw B0 concatenation makes minimal lattice undefined | thesis fails |
| **F2-15** | n=1 root-key identity cannot be evaluated even for fixed specimens | stop |
| **F2-16** | cross-scale pointering requires comparing identities across n as if equal | reject; relation ≠ equality |
| **F2-17** | 0010 exact WordPos cover is misread as proof of canonical n=5 sample identity | reject overclaim |
| **F2-18** | materializing every cell is necessary just to calculate H | reject architecture |
| **F2-19** | gate-question slot-order problem becomes necessary to construct cell identity | hand off / keep separate |
| **F2-20** | Pass 2 needs law edits, code, src, Cargo or Rust to answer | stop |

---

## 21. Proof board

Pass 2 execution must satisfy:

1. D1 15-cell lattice printed.
2. D1 online H field calculated.
3. L-A / L-B / L-C equivalence checked cell-by-cell.
4. D1 WordPos computed for all six POINTERs.
5. Every D1 POINTER classified P-A…P-D.
6. Addr table produced for all 15 D1 cells.
7. D1 grounding-cost table produced.
8. Actual pointer-time operand addressability checked.
9. Repeat-only retention tested against D1.
10. First-seen-every-cell retention tested against D1.
11. APPLES B0 lattice recurrence summary produced.
12. APPLES B1 control summary produced.
13. Boundary sensitivity reported.
14. Longest exact repeated APPLES sample identified.
15. Cross-scale relation/equality distinction explicit.
16. No n field added to POINTER.
17. No canonicalization from WordPos.
18. 20 falsifiers reported.
19. Exact residual questions named.
20. No law/code/implementation changes.

Target:

\[
20/20.
\]

---

## 22. Required execution product

Create:

docs/plans/sampling-density-emergence-pass-2-findings.md

It must contain:

1. experiment definitions;
2. D1 15-cell lattice;
3. three-construction equivalence table;
4. D1 recurrence field;
5. D1 WordPos map;
6. D1 pointer classification;
7. all-cell Addr table;
8. grounding-cost table;
9. operand-at-append addressability audit;
10. repeat-only and first-seen retention refutations/results;
11. APPLES B0 recurrence summary;
12. APPLES B1 recurrence summary;
13. boundary-sensitivity report;
14. longest recurrence result;
15. falsifier board;
16. proof board;
17. exact remaining gaps;
18. recommended Pass 3 target, without opening it.

---

## 23. Expected outcomes — not findings

Likely, but untested:

### E1

The minimal contiguous root-key lattice will be mathematically coherent.

### E2

Direct window, endpoint extension and overlap merge will be equivalent.

### E3

D1 exact recurrence will occur mainly/only at n=1 PIE.

### E4

Therefore exact recurrence alone will be insufficient as the full retention rule.

### E5

D1 retained pointers will separate naturally into:
- cell-cover points;
- root-touch cross-links;
- relational superstructure.

### E6

No actual D1 pointer operand will require an unaddressed cell at append time.

### E7

Many 2D cells will remain ephemeral.

### E8

APPLES will show increasingly strong exact recurrence at several n levels, likely through n=5.

### E9

Sentence-boundary treatment will alter some recurrence counts but not the existence of core APPLE/RED APPLE/RED APPLE PIE patterns.

### E10

The next residual will sharpen to:

\[
\boxed{
\text{which observed/recurrent cell is materialized, and when?}
}
\]

Actual execution may refute any of these.

---

## 24. Pass-2 stop line

Pass 2 does not:

- invent a retention threshold;
- decide which recurrence deserves a pointer;
- define final heat-map ranking;
- edit pointer-emission.md;
- edit systems-manifest.md;
- reconcile Pass 6 law;
- add sentence/document boundary rows;
- add scale fields to POINTER;
- treat WordPos as canonical meaning;
- store the 2D lattice durably as authority;
- create src/, Cargo, Rust or tests;
- start Pass 3 automatically.

Pass 2 stops after the minimal lattice and addressability witness are fully calculated.

## Steward test

First prove the graph paper exists.

Do not decide which square gets a knot yet.

For every sample on the 2D sheet, know exactly what words it covers, whether it has appeared before, and whether Lace already contains a point that can stand for it.

Then compare that sheet to the POINTERs the 1D Lace actually kept.
