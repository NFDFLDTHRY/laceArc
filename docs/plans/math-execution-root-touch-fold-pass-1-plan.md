# Mathematical execution model — ROOT / TOUCH / FOLD campaign · Pass 1 PLAN

**Status:** **EXECUTED** 2026-09-20 → [findings](math-execution-root-touch-fold-pass-1-findings.md). **Station:** maps (`Astra-math`).
**Pinned main (plan):** `4687e8a163dc0a76ba38b236f072a55b05b74c92`.  
**Execute read pin:** `e053c022cfd1ac3d5023ce0550fc7fa9f5bba77d`.
**Object under test:** [`docs/math-execution-model.md`](../math-execution-model.md), plus its environment / whole-app reduction products.
**Prior campaign:** `math-execution UPDATE` is CLOSED 6/6. This is a new campaign, not Pass 7 of that series.
**Emission:** remains `[GAP]` unless and until the exact human rulings below are reconciled into a complete, contradiction-accounted rule. This plan itself is not acceptance of `pointer-emission.md`. No `src/`.

Pass 1 is a **delta / problem map**. It does not rewrite the model. It asks whether the newly stated root-touch-fold mechanics close part of the old Φ hole, which old equations they supersede, which source conflicts remain, and what exact mathematics a later pass may safely write.

---

## 0. Human rulings that convene this campaign

Current-session human statements, 2026-09-20:

> **H1** — “nothing is new in the wordspace after the dictionary is wired up. Words are the touches. If seen word n before create touch to word root.”

> **H2** — “only thing still missing the punch card n+1 pointer creation. This grounds words together scaling up until 1 point represents the entire lace.”

These statements are the new evidence under review.

Pass 1 must preserve the distinction between:
- what H1/H2 state directly;
- what Graphics A–D / the manifest already state;
- what the seed-dictionary campaign already mapped;
- what this pass only proposes as mathematics to test.

No inference may be relabeled as a human ruling.

---

## 1. Why this is a new mathematical-model problem

The current partial model still centers the universal morphism

\[
\mathsf{Arrive}(v):L\mapsto L^\smallfrown(\mathsf{WORD},v)
\]

and says repeated \(v\) yields another WORD occurrence. Its Φ split then asks when later POINTERs are appended.

H1 introduces a regime distinction that model does not currently express:

1. **seed / wordspace construction**: dictionary wiring establishes word roots;
2. **post-seed punch-card use**: a seen word is not a new root; the occurrence is a **touch to the existing word root**.

H2 then adds a second post-seed operation:
- after the touch for arrival \(n+1\), create the punch-card **\(n+1\) grounding pointer**;
- that grounding composes the new touch with accumulated prior Lace so recursively larger structure is addressable by one point;
- ultimately one point represents the entire Lace without replacing any earlier row.

This potentially turns the old “which arrivals emit POINTERs?” question into a much smaller set of representation / base-case / slot-order questions.

---

## 2. Existing scaffold that Pass 1 inherits

Pass 1 must re-read these rather than rediscover them:

| Existing product | What already stands | What H1/H2 may change |
|---|---|---|
| `systems-manifest.md` Pieces 2, 7–11, 15 | arrival routes through star; later occurrence threads existing formation; touch remains; relation may participate later | post-seed occurrence may be touch rather than another WORD root |
| `seed-dictionary-map-pass-1..6` | dictionary is seed; wired first; headword→defining-word route; those definition routes are first-touch shape | H1 may close the previously-free “later document touch” regime |
| `math-execution-model.md` S1–S4 | one line; WORD/POINTER; Arrive; star view; Φ morphism vs schedule | S2 universal Arrive-WORD and S4 Q0/Q1/Q5 may need restructuring |
| `lace-context-iter6-pass-4-environment.md` E2–E7 | \(\sigma:\mathcal L\times V\to Step^*\); fences; candidate procedure | σ's output language may be reducible to seed vs post-seed recurrence |
| `reduction-pass-2-execution-model.md` X2–X5 | whole-app \(\Sigma=(L,h,K)\); STEP; invariants; M1–M3 | STEP may gain a much more specific post-seed form |
| `graphics-close-reading.md` §2–§3 | D1 slot order is semantic, not chronological; D1 is not an emitter | fold operand order must not be invented |
| `pointer-emission.md` | backward same-line; POINTER→POINTER allowed; Q2 conflict; Q0/Q1/Q5 campaign speech | law-owned draft remains separate; do not silently rewrite it |
| Global systems ASCII | current systems reading, Pass 28 + later qualifications | later incorporation only; not this pass |

---

## 3. Pass 1 question

**Can the new human rulings be expressed as a source-faithful two-regime recurrence over the existing WORD/POINTER alphabet, such that ordinary post-seed arrivals deterministically create (a) a touch to a seeded word root and (b) an \(n+1\) grounding point, while preserving append-only history and making “one point represents the entire Lace” a precise reachability claim rather than collapse?**

Pass 1 maps the answer. It does not install the recurrence into the model.

---

## 4. Candidate mathematical vocabulary to test, not yet adopt

### 4.1 Seed prefix / word roots

Let \(L_s\) be the dictionary-wired prefix.

Candidate read-only root locator:

\[
\rho_{L_s}(v)=\text{the seeded WORD-root index for }v.
\]

Questions Pass 1 must answer:
- Is \(\rho\) safely a **reading of \(L_s\)** rather than a second root table?
- Does “dictionary wired up” imply one root per word identity?
- What remains OPEN because G1 word identity / tokenization is still OPEN?
- Is there an explicit seed frontier / terminal seed point, or only a known operational phase boundary?

**Must not:** allocate a lexicon / root store beside \(L\).

### 4.2 Post-seed touch

For post-seed arrival \(v_{n+1}\), H1 directly states:

\[
v_{n+1}\text{ seen before}\Rightarrow \text{create touch to }\rho(v_{n+1}).
\]

Candidate notation only:

\[
\tau_{n+1}=\operatorname{Touch}(\rho(v_{n+1})).
\]

Pass 1 must determine whether \(\tau\):
- is itself one POINTER section;
- requires unary-pointer allowance \(k=1\);
- is instead represented as one operand inside another pointer;
- or remains a geometric act whose exact D-row realization is not yet fixed.

H1 settles the **target identity** (word root). It does **not**, by itself, settle arity or slot layout.

### 4.3 Punch-card fold / grounding point

Use neutral operator \(G\) until D-row shape is proved:

\[
p_{n+1}=G(p_n,\tau_{n+1}).
\]

H2 says this is the punch-card \(n+1\) pointer creation that grounds words together.

Candidate D-shape to test, not presume:

\[
p_{n+1}=\operatorname{POINTER}(p_n,\tau_{n+1})
\]

or the slot-reversed form.

Pass 1 must **not** choose `ref_A` / `ref_B` by index chronology. `graphics-close-reading.md` establishes that D1 slot A is the described subject, not always newest or oldest.

### 4.4 “One point represents the entire Lace”

Define representation by backward reach, never replacement.

Candidate reach relation:

\[
\operatorname{Reach}_L(i)=\{i\}\cup
\bigcup_{r\in refs(i)}\operatorname{Reach}_L(r)
\]

for POINTER \(i\), and \(\operatorname{Reach}_L(i)=\{i\}\) for an unreferencing root WORD.

Then the exact claim to test is:

\[
\operatorname{Reach}_L(p_n)=\{0,\ldots,|L_n|-1\}
\]

or a precisely scoped equivalent.

If that equality is not supported, Pass 1 must state the narrower coverage set.

**Representation is not collapse.** \(p_n\) is a later addressable point whose transitive references cover prior structure; all earlier sections remain.

---

## 5. The critical base-case problem

The recurrence cannot be called complete until its base is explicit.

Pass 1 must test at least these possibilities:

| Base | Meaning | Risk |
|---|---|---|
| \(p_1=\tau_1\) | first post-seed touch itself is the first accumulated point | may not include untouched seed dictionary |
| \(p_0=p_{seed}\) | dictionary wiring ends in one seed-grounding point; runtime extends it | strongest path to literal “entire Lace” |
| no seed aggregate | runtime fold only represents post-seed stream + roots transitively touched | H2's “entire Lace” must be narrowed |
| another base | only if directly evidenced | must not be invented |

**Hard falsifier F-BASE:** if no existing or human-stated base gives backward reach over the dictionary seed, the pass may not report that \(p_n\) represents the *entire* Lace. It must say exactly which prefix / substructure it covers.

---

## 6. Delta map Pass 1 must produce

Execution product:

`docs/plans/math-execution-root-touch-fold-pass-1-findings.md`

Every row below must end as **KEEP / SUPERSEDE / CONFLICT / OPEN / DERIVE-LATER** with exact evidence.

| ID | Current model / source surface | New question |
|---|---|---|
| D01 | S2 universal \(\mathsf{Arrive}(v)=WORD(v)\) | split seed-root creation from post-seed touch? |
| D02 | S3.1 Star membership = repeated WORD values | replace occurrence-membership emphasis with root + retained-touch formation? |
| D03 | S3.2 sequence as WORD append order | does punch-card fold become the explicit sequence grounding mechanism? |
| D04 | S3.3 touch “which touch is written = Φ-schedule” | H1 may close normal touch target to word root |
| D05 | S4.2 Q0 | first root creation vs post-seed touch regime |
| D06 | S4.2 Q1 | decompose “when POINTER” into root-touch + compulsory n+1 fold + still-open representation details |
| D07 | S4.2 Q2 | touch / ground pointer arities still need reconciliation |
| D08 | S4.2 Q5 | later pass payment vs H1 direct touch rule |
| D09 | S4.3 Step_partial | replace universal WORD-first bracket shape with phase-typed seed/runtime step? |
| D10 | Environment E2 \(\sigma:\mathcal L\times V\to Step^*\) | is σ still needed as free schedule, or only for unresolved encoding/base/identity details? |
| D11 | Environment E3–E7 fences | which fences become proofs of the recurrence rather than search constraints? |
| D12 | Reduction X3 STEP | encode two post-seed append acts: touch then ground? |
| D13 | I6 / M2 | prove order/fold determinism with the recurrence |
| D14 | M3 / D1 witness | reconcile D1's repeated WORD 0003 with seed/runtime distinction |
| D15 | Seed pass 4 “first touch shape, not forced” | H1 now states later seen-word touch directly; preserve historical record, supersede current freedom if warranted |
| D16 | Seed pass 6 \(\theta_{when}\) free | split dictionary-wiring freedom from post-seed recurrence |
| D17 | D1 rows 0007/0009/0010 | test as evidence for recursive relation-to-relation scaling, not proof of universal slot order |
| D18 | Global ASCII / manifest | list required later propagation; do not edit under Pass 1 |
| D19 | `pointer-emission.md` | list law-side questions changed by H1/H2; do not edit under maps |
| D20 | “entire Lace” | prove / refute transitive-coverage formulation and base |

Execution may add rows but may not delete a conflict because the new recurrence feels cleaner.

---

## 7. D1 reconciliation is mandatory, not optional

Current D1 includes:

- `0000 WORD PIE`
- `0003 WORD PIE`
- `0004 POINTER 0003 → 0000`
- relation-to-relation rows `0007`, `0009`, `0010`.

H1 says post-seed seen words are touches to roots, so Pass 1 must classify D1's `0003 WORD PIE` under one of:

1. seed / dictionary-construction specimen;
2. pre-H1 mixed illustration not representing normal post-seed punch-card ingest;
3. direct source conflict with the new human ruling;
4. another source-supported interpretation.

No fifth “average them together” option.

**Falsifier F-D1:** if the pass cannot place `0003` without contradicting either the current human ruling or the Graphic-D source, the result must retain an explicit CONFLICT and later passes may not write a total executor.

---

## 8. n+1 grounding tests

Pass 1 must test these invariants against the proposed fold.

### T1 — backward legality
When \(p_{n+1}\) is appended, both \(p_n\) and \(\tau_{n+1}\) must already exist, so every ref is backward on the same line.

### T2 — no collapse
Appending \(p_{n+1}\) changes no earlier row. “One point represents all” must mean transitive reach, never replacement / compression-by-rewrite.

### T3 — recursive coverage
If \(p_n\) covers set \(C_n\), and \(\tau_{n+1}\) covers its word root / retained touch material, then candidate proof:

\[
C_{n+1}=C_n\cup \operatorname{Reach}(\tau_{n+1})\cup\{p_{n+1}\}.
\]

State exactly what is and is not in \(C_n\).

### T4 — sequence
The chain \(p_1,p_2,\ldots\) must preserve punch-card arrival order without a sentence object.

### T5 — relation participates in relation
\(p_n\) must be a legal operand because POINTER→POINTER is allowed.

### T6 — no second state
“current \(p_n\)” must be recoverable from \(L\) / the current frontier convention or explicitly typed as operational custody, not a second authoritative history store.

### T7 — root lookup
\(\rho(v)\) must be a view/read over the seed wordspace; any acceleration index is projection/cache, never authoritative state.

### T8 — wordspace closure
After dictionary wiring, ordinary ingest cannot create a new root unless the human separately defines out-of-dictionary behavior. Unknown-word behavior stays OPEN if not stated.

---

## 9. Questions Pass 1 must leave open if unsupported

Pass 1 must not invent answers to:

- exact WORD identity / G1;
- behavior for a word absent from the wired dictionary;
- whether a touch is a unary POINTER, binary POINTER, or another arrangement using only existing row kinds;
- exact `ref_A` / `ref_B` order for touch or grounding pointer;
- whether dictionary wiring itself terminates in a single \(p_{seed}\);
- whether every seed row is transitively represented by the runtime aggregate point;
- concrete byte encoding;
- capacity / persistence / memory ordering;
- any law-side acceptance sentence not actually written by the human.

---

## 10. Authority and station boundaries

Pass 1 execution may **read**:

1. current human H1/H2 rulings recorded above;
2. Graphics A–D and their close readings;
3. `docs/systems-manifest.md`;
4. seed-dictionary passes 1–6;
5. `docs/math-execution-model.md`;
6. environment / reduction execution model;
7. `docs/pointer-emission.md`;
8. global systems ASCII.

Pass 1 may **write only maps-owned planning records**:
- new findings file;
- this plan status / execution receipt;
- optional plans index row.

Pass 1 must **not** edit:
- Graphics / graphics ASCII;
- `docs/systems-manifest.md` (law);
- `docs/pointer-emission.md` (law);
- Core code / `src/`;
- old seed campaign records;
- global systems ASCII;
- the mathematical model body itself.

Those are later propagation / handoff jobs after the delta is proved.

---

## 11. Provisional later passes, named only

These are not authorized by this plan and get their own plan if reached.

| Pass | Job |
|---|---|
| **2** | Formal seed/runtime split: \(L_s\), root read \(\rho\), post-seed touch \(\tau\); update the partial algebra only after Pass 1 dispositions |
| **3** | Formal n+1 fold \(p_{n+1}=G(p_n,\tau_{n+1})\); settle base-case statement; prove bounded coverage theorem |
| **4** | Graphic D / D1 reconciliation: repeated WORD, touch encoding, arity, slot order, relation-to-relation chain |
| **5** | Propagate to whole-app execution model and map what global manifest / global ASCII / law must change; do not cross stations silently |
| **6** | Readiness + contradiction ledger + exact remaining holes; STOP |

No automatic Pass 2.

---

## 12. Expected vs actual

| | |
|---|---|
| **Expected** | H1 closes the normal post-seed touch target; H2 supplies a recurrence skeleton; most of old Φ uncertainty shrinks to base, encoding/arity/slot, G1 and out-of-dictionary behavior |
| **Expected mathematical gain** | ordinary punch-card growth becomes a deterministic root-touch-fold recurrence once representation details are fixed |
| **Expected conflict** | D1 `0003 WORD PIE` versus post-seed “seen word = touch” must be explicitly placed or retained as conflict |
| **Expected theorem candidate** | newest grounding point transitively reaches all prior Lace iff the base point covers the seed and each fold includes prior point + new touch |
| **Actual** | D01–D20 20/20 disposed. D1 `0010` reaches all 11 rows. H1 is compatible with repeated WORD occurrence + root touch. The provisional left-fold recurrence is not established. F-BASE fires only for the unrestricted theorem; D1 bounded coverage passes |
| **Human acceptance of full emission draft** | **ABSENT** — H1/H2 are rulings to reconcile, not blanket acceptance of `pointer-emission.md` |

---

## 13. Accept Pass 1 when

Pass 1 is complete only when:

- every D01–D20 row has a disposition and cite;
- H1 and H2 are separated from inferred equations;
- D1 `0003` is explicitly classified;
- touch formation is separated from touch serialization;
- n+1 fold is separated from slot order;
- the base case is explicit or marked OPEN;
- “one point represents the entire Lace” is proved as transitive coverage or narrowed;
- no earlier row is replaced / collapsed;
- no new store is introduced;
- no law-owned file is edited;
- no `src/`;
- the findings identify exactly which current equations are safe to amend in Pass 2;
- then STOP.

## 13a. Execution receipt

- Findings: [math-execution-root-touch-fold-pass-1-findings.md](math-execution-root-touch-fold-pass-1-findings.md).
- D01–D20: **20/20 disposed**.
- F-D1: **did not fire against H1**. D1 `0003 WORD PIE` is a later occurrence; `0004` is the root touch.
- F-BASE: **fires for the unrestricted theorem; bounded D1 witness passes**.
- D1 final reach: **11/11 rows from `0010`**.
- Plan hypothesis `p_(n+1)=G(p_n,tau_(n+1))`: **not established as universal**; D1 grounding is branched.
- Model body, law, manifest, graphics, global ASCII: **0 edits**.
- `src/`: **0**.
- Pass 2: **not automatically opened**.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to Lace.

A word root is an eyelet already wired. A later word is a new pass through that root. The punch card takes the new pass and the accumulated prior pass-point and ties one more backward-addressable point. **One newest point may reach the whole history; it never replaces the history.**
