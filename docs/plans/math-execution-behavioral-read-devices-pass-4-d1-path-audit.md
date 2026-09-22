# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 4 D1 algebra / path-fidelity audit

**Status:** EXECUTED PASS-4 ARTIFACT.
**Execution base:** ad764786618f9bd62838e6685a5ca54d748c5b0e.
**Source court:** Graphic D, visually reread directly from the supplied canonical PNG.
**Purpose:** verify the bounded storage witness and test whether set-valued ancestry preserves the source's distinct paths/threading.
**Implementation:** none.

---

## 1. Exact D1 transcription

Graphic D's table is:

| Index | Type | Content / references | Source explanation |
|---|---|---|---|
| 0000 | WORD | PIE | first occurrence of PIE |
| 0001 | WORD | DESSERT | first occurrence of DESSERT |
| 0002 | POINTER | 0000 → 0001 | PIE relates to DESSERT |
| 0003 | WORD | PIE | second occurrence of PIE |
| 0004 | POINTER | 0003 → 0000 | new PIE relates to first PIE |
| 0005 | WORD | WHOLE | occurrence of WHOLE |
| 0006 | POINTER | 0003 → 0005 | this PIE relates to WHOLE |
| 0007 | POINTER | 0006 → 0004 | a relationship participates in another relationship |
| 0008 | WORD | CUSTOMER | occurrence of CUSTOMER |
| 0009 | POINTER | 0008 → 0007 | CUSTOMER relates to that relationship |
| 0010 | POINTER | 0009 → 0002 | this relationship relates to an earlier relationship |

Six of eleven rows are POINTER.

Every POINTER row has two operands.

---

## 2. Backward-reference check

For each POINTER row \(j\):

| j | ref_A | ref_B | both < j? |
|---:|---:|---:|---|
| 0002 | 0000 | 0001 | yes |
| 0004 | 0003 | 0000 | yes |
| 0006 | 0003 | 0005 | yes |
| 0007 | 0006 | 0004 | yes |
| 0009 | 0008 | 0007 | yes |
| 0010 | 0009 | 0002 | yes |

Therefore the bounded source witness satisfies:

\[
a<j,\qquad b<j
\]

for all six POINTER rows.

This proves the D1 specimen's backward-reference property.

It does not select a concrete integer width or physical representation.

---

## 3. Three different directions must not be merged

Graphic D contains at least three notions of order/direction.

### Append order

The row index order:

\[
0000,0001,\ldots,0010.
\]

### POINTER-row reference

The later POINTER row \(j\) refers to two earlier rows \(a,b<j\).

Example:

\[
0006\rightsquigarrow\{0003,0005\}.
\]

### Depicted operand relation

D1 writes the POINTER contents as an arrow such as:

\[
0003\to0005.
\]

That visual operand arrow does **not** mean row 0003 points forward to 0005 in the append-only reference relation.

The containing row 0006 refers backward to both.

Therefore:

\[
\boxed{
AppendOrder
\neq
PointerRowReferenceDirection
\neq
DepictedOperandArrow.
}
\]

This preserves the earlier close-reading correction.

---

## 4. POINTER→POINTER recursion

D1 directly witnesses:

\[
0007=(POINTER,0006,0004),
\]

where both operands are POINTER rows.

Then:

\[
0009=(POINTER,0008,0007),
\]

and:

\[
0010=(POINTER,0009,0002).
\]

Therefore:

\[
\boxed{
POINTER\to POINTER
}
\]

is direct GFX evidence.

This is the bounded source capability behind relations-among-relations.

It does not, by itself, state a universal retain-when or operand-selection algorithm.

---

## 5. Reach membership

For the current derived definition:

\[
Reach(i)=
\begin{cases}
\{i\},&i\text{ WORD}\\
\{i\}\cup Reach(a)\cup Reach(b),&i=(POINTER,a,b),
\end{cases}
\]

D1 yields:

\[
Reach(0010)=\{0000,0001,\ldots,0010\}.
\]

So row 0010 is a bounded whole-prefix ancestry witness.

This statement is about **membership in recursive ancestry**.

---

## 6. Path multiplicity

Define a reference path from \(x\) to \(y\) as an ordered row sequence:

\[
p=(x=p_0,p_1,\ldots,p_k=y)
\]

where every step chooses one operand of the preceding POINTER row.

### Two distinct D1 paths from 0010 to 0000

Path A:

\[
0010
\to
0002
\to
0000.
\]

Path B:

\[
0010
\to
0009
\to
0007
\to
0004
\to
0000.
\]

Thus:

\[
p_A\neq p_B.
\]

Yet set-valued Reach contains:

\[
0000
\]

only once.

### A second multiplicity witness

There are also two distinct paths from 0010 to 0003:

\[
0010\to0009\to0007\to0006\to0003,
\]

and:

\[
0010\to0009\to0007\to0004\to0003.
\]

Again:

\[
Reach(0010)
\]

does not encode that multiplicity.

---

## 7. PATH-1

The D1 bounded counterexample proves:

\[
\boxed{
ReachMembership
\neq
PathMultiplicity.
}
\]

More precisely:

\[
Reach(i)
\]

answers:

> which rows are recursively included in ancestry?

It does not answer:

> how many distinct paths reach a row?

nor:

> what ordered routes those paths take?

nor:

> which route family/context the path belongs to?

nor:

> what rendering geometry depicts over/under/crossing/threading?

### Consequence for current model

\`Reach\` remains a valid derived read.

It must not be treated as the complete star formation, complete route structure, or complete N-D/threading readout.

Path-preserving derived machinery is required when those distinctions matter.

Current S3.6 search already preserves explicit witness paths/frontiers and is therefore compatible with this requirement.

No second store is needed.

---

## 8. RootTouch bounded witness

D1 contains:

\[
0003=(WORD,PIE)
\]

after:

\[
0000=(WORD,PIE),
\]

and then:

\[
0004=(POINTER,0003,0000).
\]

Thus the source directly witnesses a retained relation from a later PIE occurrence to the earlier PIE occurrence.

Current law names the earlier first occurrence the root and requires this pattern as RootTouch.

Authority chain:

~~~text
D1 repeated-PIE relation        GFX bounded witness
H1 seen occurrence RootTouches HUMAN current ruling
Join(new, root)                 MODEL realization using current binary constructor
~~~

The graphic alone does not state the universal schedule.

---

## 9. Binary source boundary

D1 gives six binary POINTER rows.

D2 gives the two-slot POINTER schema.

D6 gives recursive POINTER participation.

These establish powerful source constraints.

They do not alone establish:

\[
\forall a,b<|L|:
\mathsf{Join}(a,b)\text{ is always authorized now}.
\]

The current universal binary constructor belongs to the current HUMAN/MODEL court.

Likewise D1/D6 do not alone establish:

> every arbitrary finite selected sample may be grounded.

That result additionally depends on H5/H6 and induction.

---

## 10. Finite-sample provenance

The current theorem has the chain:

\[
\boxed{
\text{D1/D2/D6 binary recursion capability}
+
\text{H5/H6 selected-sample grounding premise}
\Rightarrow
\text{finite-sample representability theorem}.
}
\]

The theorem is **DERIVED**.

It is not relabeled GFX.

---

## 11. Whole-prefix theorem provenance

D1 establishes the bounded fact:

\[
Reach_{D1}(0010)
=
\{0000,\ldots,0010\}.
\]

The model's general theorem that any finite prefix can be covered by a later grounded point is:

- not written in D;
- derived from the selected-sample grounding premise and repeated Join.

Thus:

~~~text
D1 0010                         GFX bounded witness
arbitrary finite prefix input   HUMAN/model premise
repeated grounding              DERIVED construction
universal covering theorem      DERIVED
~~~

---

## 12. D1 state witness vs retention

D1 proves:

> these POINTER rows are present in the illustrated history.

D1 does not prove:

> the universal condition that selected those rows for retention.

Therefore:

\[
\boxed{
D1StateWitness
\neq
RetainWhen.
}
\]

B8/C7/D6 prove that once retained structure exists it may participate later.

That is persistence/re-entry, not RM-A.

RM-A remains OPEN.

---

## 13. D1 verdict

- eleven-row transcription: **PASS**
- six binary POINTER witnesses: **PASS**
- all refs earlier than containing POINTER: **PASS**
- POINTER→POINTER recursion: **PASS**
- operand-arrow vs backward-reference distinction: **PASS**
- PATH-1 multiple-path counterexample: **PROVED**
- Reach as ancestry membership: **VALID**
- Reach as full path/threading model: **REFUTED**
- finite-sample theorem direct-GFX attribution: **REFUSED**
- whole-prefix theorem direct-GFX attribution: **REFUSED**
- D1 as RM-A selector: **REFUSED**
