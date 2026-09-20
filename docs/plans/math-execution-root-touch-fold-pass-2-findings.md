# Mathematical execution model - ROOT / TOUCH / FOLD Pass 2 findings

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (Astra-math).
**Plan:** [math-execution-root-touch-fold-pass-2-plan.md](math-execution-root-touch-fold-pass-2-plan.md).
**Execute base:** 36fddb231ee8d8b577db0c7abc375bf33a2ef00b.
**Model update commit:** 73d1b6c4ae829293b35a36390744d7de7991e60c.
**Scope:** partial mathematical model only. pointer-emission.md, systems-manifest.md, Graphics A-D / ASCII, global systems ASCII, old seed records, environment and reduction model were not edited.
**Implementation:** no src/. No blanket acceptance of pointer-emission.md.

## 0. Human rulings applied

H1:
> nothing is new in the wordspace after the dictionary is wired up. Words are the touches. If seen word n before create touch to word root.

H2:
> only thing still missing the punch card n+1 pointer creation. This grounds words together scaling up until 1 point represents the entire lace.

H3:
> All arrivals land on lace.

Pass 2 uses H3 for landing, H1 for the seen-word root touch, and H2 only for the required effect of GROUND. It does not invent GROUND's grouping schedule.

---

## 1. Result

Pass 2 succeeded.

The former single emission problem is now decomposed:

\[
\boxed{
\mathsf{LAND}
\rightarrow
[\mathsf{ROOT\ TOUCH}\text{ if seen}]
\rightarrow
[\mathsf{GROUND}\ [GAP]]
\rightarrow
\mathsf{Continue}
}
\]

What is no longer part of the blocker:

1. every successful word arrival lands on \(L\);
2. it lands as a new WORD occurrence;
3. a repeated word does not intern or replace its root;
4. for a previously seen word, the new occurrence touches the existing word root;
5. that touch is itself retained Lace and may participate later;
6. POINTER-to-POINTER participation is legal;
7. transitive reach is a read over the one line, not a second store.

The remaining ordinary punch-card emission blocker is now the general **GROUND** calculation:

- operand / group selection;
- cadence and number of grounding POINTERs;
- general base / completion rule for whole-Lace coverage;
- general arity if not derivable as binary;
- selection of the current recursively covering point from \(L\) without side state.

G1 word identity and the post-seed unseen-word boundary remain separate open questions.

---

## 2. Before / after equation map

### Before

The prior model exposed:

\[
\mathsf{Arrive}(v):
L\mapsto L^\smallfrown(\mathsf{WORD},v)
\]

followed by one broad unknown:

\[
[\Phi_{\mathrm{morphism}}\text{ only if schedule says so}].
\]

That made arrival admission, seen-word touch and recursive grounding look like one missing schedule.

### After

Landing is universal for successful word arrivals:

\[
\mathsf{Arrive}(v):
L\mapsto L^\smallfrown(\mathsf{WORD},v).
\]

For pre-state \(L_0\), let:

\[
j=|L_0|.
\]

If \(v\) was already seen in \(L_0\), define the read:

\[
r=\mathrm{Root}_{L_0}(v)
=
\min \mathrm{StarWords}_{L_0}(v),
\]

and after the WORD landing append the seen-root touch:

\[
\mathsf{RootTouch}(j,r)
=
\mathsf{POINTER}(j,r).
\]

Then the still-open operation is:

\[
\mathsf{Ground}=[GAP]_{\text{grouping/cadence/base}}.
\]

The model therefore no longer asks “does this arrival land?” or “what does a seen word touch?” as part of the grounding search.

---

## 3. A1-A9 invariant board

| ID | Result | Finding |
|---|---|---|
| **A1 universal landing** | **PASS** | H3 states all arrivals land on Lace; model retains Arrive(v) as one WORD occurrence per successful word arrival |
| **A2 prefix freeze** | **PASS** | Arrive and RootTouch append only; every prior row remains byte-for-byte / index-for-index prior state |
| **A3 arrival order** | **PASS** | WORD occurrence order remains successful word-arrival order; no sentence object or reordering introduced |
| **A4 root stability** | **PASS modulo G1** | Root_L(v) is the first WORD(v) occurrence read from L; later occurrences do not move or replace it |
| **A5 seen touch** | **PASS** | H1 requires seen word → word root; D1 0003 + POINTER 0004 is the bounded storage witness |
| **A6 no intern** | **PASS** | D1 keeps WORD 0003 and then adds 0004; repeated PIE is new wire, not a count/update on 0000 |
| **A7 no second store** | **PASS** | Seen, Root, StarWords and Reach are reads of L; no root/star/reach table was added |
| **A8 touch permanence** | **PASS** | POINTER 0004 remains a row and later POINTER 0007 directly references it; touch is reusable Lace |
| **A9 landing vs grounding** | **PASS** | RootTouch is distinguishable from D1 grounding rows; GROUND remains explicitly undefined |

**Board:** 9 PASS. None of A1-A9 required a new row kind or side store.

---

## 4. D1 bounded role classification

This is a role reading under H1-H3, not a universal scheduler.

| D1 row | Direct refs | Bounded role |
|---|---|---|
| **0002** | 0000 → 0001 | local relation / grounding between already landed material |
| **0004** | 0003 → 0000 | **seen-word root-touch witness**: new PIE occurrence → first/root PIE |
| **0006** | 0003 → 0005 | local relation / grounding |
| **0007** | 0006 → 0004 | relation-to-relation grounding; directly reuses root-touch 0004 |
| **0009** | 0008 → 0007 | higher grounding |
| **0010** | 0009 → 0002 | higher grounding whose transitive reach covers the entire eleven-row D1 prefix |

The distinction required by Pass 2 therefore exists on the specimen:

- 0004 is explained by **seen-root TOUCH**;
- 0002 / 0006 / 0007 / 0009 / 0010 still belong to the unresolved general **GROUND** family.

This classification does not determine when those five grounding rows are emitted in arbitrary input.

---

## 5. Falsifier board

| ID | Result | Reason |
|---|---|---|
| **F2-A landing** | **DID NOT FIRE** | H3 directly states all arrivals land; no governing source requires successful word consumption without Lace growth |
| **F2-B seen-root touch** | **DID NOT FIRE** | H1 + D1 0003/0004 supply occurrence-to-root touch without new store/kind |
| **F2-C separation** | **DID NOT FIRE** | 0004 has a specific repeated-word/root role while other D1 pointers express other relation/grounding roles |
| **F2-D wordspace closure** | **BOUNDARY CONFIRMED** | if post-seed input contains an unseen value, H1/H3 do not settle whether it creates a new root or is outside the admitted domain |
| **F2-D root side-table variant** | **DID NOT FIRE** | Root is derived from first WORD occurrence; no side table required |
| **F2-E suppress later WORD** | **DID NOT FIRE** | H1 does not require suppression; D1 preserves 0003 and then adds 0004 |
| **F2-F universal binary law** | **DID NOT FIRE** | model explicitly keeps general Q2 CONFLICT |
| **F2-G stored Reach** | **DID NOT FIRE** | Reach is recursively derived only |
| **F2-H accidentally define GROUND** | **DID NOT FIRE** | model gives required effect and residual questions, no grouping algorithm |

The only live boundary revealed by this board is the post-seed unseen-value/domain question, not the normal seen-word touch.

---

## 6. Q0 / Q1 / Q5 state after Pass 2

### Q0-LAND

Mathematical status: **CLOSED by H3**.

Every successful word arrival appends one WORD occurrence to \(L\).

This is narrower than accepting the current Q0 wording in pointer-emission.md. That law file remains unchanged.

### Q1-TOUCH

Mathematical status: **CLOSED for the seen-word root-touch family by H1**.

If \(v\) existed in the pre-arrival Lace, the new occurrence touches the existing root.

D1 0004 is the bounded storage witness.

### Q1-GROUND

Mathematical status: **OPEN calculation**.

H2 states what grounding must achieve. It does not yet give the universal grouping algorithm.

### Q5

Mathematical status:

\[
\boxed{\text{later known-word pass}=\text{WORD landing}+\text{root touch}}
\]

The old campaign sentence “a second WORD is not required” is not carried into the updated model.

---

## 7. Star / wordspace result

Pass 2 separates two things that had been conflated.

### Wordspace identity

For a covered identity \(v\):

\[
\mathrm{Root}_L(v)
=
\min\mathrm{StarWords}_L(v).
\]

After dictionary wiring, later occurrences do not create another lexical root.

### Lace growth

Every successful occurrence still adds wire.

So a stable wordspace does not mean a static Lace.

The full star formation includes:

- the word root;
- later WORD occurrences;
- their root-touch POINTERs;
- later grounding participation that reuses those touches.

That matches the “thread, not attach” mechanism without a Star table.

---

## 8. Reach and H2

Pass 2 retains the Pass 1 bounded theorem:

\[
\operatorname{Reach}_{D1}(0010)
=
\{0000,\ldots,0010\}.
\]

So “one point represents the entire Lace” already has a canonical finite witness.

The missing proof is not whether recursive coverage is possible.

The missing proof is the **general construction** that guarantees such a covering point for arbitrary admitted punch-card growth.

That construction is exactly the Pass 3 target.

---

## 9. Exact residual blocker

After Pass 2, the ordinary seen-word path is:

\[
\boxed{
\text{arrival}
\rightarrow
\text{WORD occurrence}
\rightarrow
\text{root touch}
\rightarrow
\text{GROUND [GAP]}
}
\]

The remaining pointer-emission blocker is therefore:

> Given the current append-only Lace and the newly landed material for arrival \(n+1\), which already-existing sections / grounded points must the next grounding POINTER(s) reference, in what grouping and cadence, so recursive reach progresses toward a point that covers the whole current Lace?

Subquestions retained:

1. **operand selection**;
2. **grouping / tree shape**;
3. **number of grounding rows per arrival**;
4. **base / completion invariant**;
5. **general arity**;
6. **recovering the current covering point from \(L\)** without authoritative side state.

Not part of that blocker anymore:

- arrival admission;
- later occurrence preservation;
- seen-word root target;
- touch permanence;
- POINTER-to-POINTER permission.

---

## 10. Scope / unchanged surfaces

| Surface | Result |
|---|---|
| docs/math-execution-model.md | **UPDATED** in commit 73d1b6c4ae829293b35a36390744d7de7991e60c |
| pointer-emission.md | unchanged |
| systems-manifest.md | unchanged |
| systems-manifest-ascii.md | unchanged |
| Graphics / graphics ASCII | unchanged |
| seed-dictionary pass records | unchanged |
| environment E1-E10 | unchanged |
| reduction execution model | unchanged |
| src/ / Cargo | absent / unauthorized |

No law-side acceptance follows from this maps update.

---

## 11. Pass 2 receipt

| Field | Result |
|---|---|
| A1-A9 | **9 PASS** |
| D1 POINTER roles | **6/6 bounded classified** |
| Q0-LAND | **closed in mathematical model** |
| seen-word Q1-TOUCH | **closed in mathematical model** |
| Q1-GROUND | **OPEN calculation** |
| Q2 | **CONFLICT retained** |
| G1 | OPEN |
| post-seed unseen value | OPEN |
| D1 whole-prefix reach | **11/11 bounded theorem retained** |
| universal GROUND algorithm | **not written** |
| pointer-emission draft acceptance | absent |
| src/ | 0 |
| Next | Pass 3 should calculate / constrain GROUND only; **not automatically opened** |

## Steward test

An arrival always adds wire. If the word already has a root, the new wire passes back through that root and the touch remains. Nothing about that requires knowing how the punch card groups all of the landed material into its next recursively covering point. That grouping is now the blocker, by itself.
