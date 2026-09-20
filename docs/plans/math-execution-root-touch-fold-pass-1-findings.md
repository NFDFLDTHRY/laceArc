# Mathematical execution model - ROOT / TOUCH / FOLD Pass 1 findings

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (Astra-math).
**Plan:** docs/plans/math-execution-root-touch-fold-pass-1-plan.md
**Read pin:** e053c022cfd1ac3d5023ce0550fc7fa9f5bba77d after the maps-base refresh.
**Object:** delta/problem map only. The mathematical-model body, manifest, global ASCII, graphics, seed records and pointer-emission draft are unchanged by this pass.
**Emission:** still not blanket-accepted. H1/H2 materially narrow the old hole, but exact grounding cadence/grouping and general arity remain unresolved. No src/.

## 0. Human rulings under review

Recorded verbatim in the Pass 1 plan:

> **H1** - “nothing is new in the wordspace after the dictionary is wired up. Words are the touches. If seen word n before create touch to word root.”

> **H2** - “only thing still missing the punch card n+1 pointer creation. This grounds words together scaling up until 1 point represents the entire lace.”

Pass 1 separates those direct rulings from the mathematics derived below.

---

## 1. Executive result

The current model made the remaining problem too large.

### 1.1 H1 does not require deleting repeated WORD occurrences

The plan provisionally read H1 as “post-seed occurrence instead of another WORD row.” The source walk does **not** require that stronger reading.

A cleaner source-faithful distinction is:

- **wordspace identity** = the distinguished root for a word;
- **Lace history** = every later occurrence, touch and grounding section;
- “nothing is new in the wordspace” means no new lexical root for an already-seen word, **not** “nothing new is appended to L.”

That reading reconciles H1 with Graphic D's repeated PIE specimen:

    0000 WORD     PIE          root / first PIE
    ...
    0003 WORD     PIE          later occurrence, more wire
    0004 POINTER  0003 -> 0000 touch from the later occurrence to the root

So the current Arrive(v) WORD append survives. What changes is its role:

\[
\operatorname{root}_L(v)=\min\{i\mid e_i=(\mathsf{WORD},v)\}
\]

for an identity rule v that G1 still leaves open, and for a later occurrence j greater than root_L(v), H1 requires a touch to that root.

The formula above is **DERIVED** from H1 plus “first occurrence begins the star” plus D1's “new PIE relates to first PIE.” H1 did not dictate the min notation.

### 1.2 H1 plus D1 materially narrow touch formation

D1 gives a bounded storage witness for the seen-word touch:

\[
\operatorname{Touch}(j,r)
=
(\mathsf{POINTER},j,r),
\qquad
r=\operatorname{root}_L(v),\quad e_j=(\mathsf{WORD},v).
\]

For D1: j = 0003, r = 0000, touch = 0004.

This does **not** prove every POINTER is binary. Q2 remains the general arity conflict. It establishes the binary shape of this witnessed touch family.

The close-reading also supports the operand orientation for this family: ref_A is the described subject. On row 0004 the subject is “New PIE” (0003) and ref_B is the first PIE (0000). That is a bounded touch rule, not a universal slot-order law.

### 1.3 H2 is visibly exhibited by D1

Define transitive backward reach over the stored line:

\[
\operatorname{Reach}_L(i)=
\begin{cases}
\{i\}, & e_i=\mathsf{WORD}\\
\{i\}\cup\displaystyle\bigcup_{r\in refs(i)}\operatorname{Reach}_L(r),
& e_i=\mathsf{POINTER}.
\end{cases}
\]

Using the six D1 POINTER rows exactly as drawn:

| point | direct refs | transitive reach |
|---|---|---|
| 0002 | 0000, 0001 | {0000,0001,0002} |
| 0004 | 0003, 0000 | {0000,0003,0004} |
| 0006 | 0003, 0005 | {0003,0005,0006} |
| 0007 | 0006, 0004 | {0000,0003,0004,0005,0006,0007} |
| 0009 | 0008, 0007 | {0000,0003,0004,0005,0006,0007,0008,0009} |
| **0010** | **0009, 0002** | **{0000,0001,0002,0003,0004,0005,0006,0007,0008,0009,0010}** |

Therefore the canonical D1 specimen contains a direct bounded witness of H2's representational claim:

\[
\boxed{\operatorname{Reach}_{D1}(0010)=\{0000,\ldots,0010\}}
\]

One point represents the whole **D1 Lace prefix** by transitive participation. It does not replace one row. Every row remains.

### 1.4 The plan's provisional left fold was too specific

Pass 1's plan floated:

\[
p_{n+1}=G(p_n,\tau_{n+1})
\]

as a candidate shape.

D1 does **not** justify that as the universal punch-card recurrence. Its grounding is branched: local relations are formed first, then relations participate in relations, and 0010 finally merges the 0009 branch with the earlier 0002 branch.

So H2 currently supports:

- recursive grounding;
- increasing transitive coverage;
- POINTER-to-POINTER composition;
- eventual one-point coverage as an intended invariant;

but **not yet**:
- a left fold;
- one aggregate POINTER per word;
- one fixed pair-selection schedule;
- a universal ref_A/ref_B convention.

The remaining mathematical hole is now narrower: **grounding schedule / grouping**, plus general arity, G1 identity and out-of-dictionary behavior.

---

## 2. Falsifiers

### F-D1 - DID NOT FIRE against H1

The plan expected a possible H1 versus D1 collision at 0003 WORD PIE.

That collision disappears once “wordspace root” is separated from “occurrence appended to Lace”:

- 0000 = first PIE / root;
- 0003 = later PIE occurrence / more wire;
- 0004 = touch of that occurrence to the root.

What remains in conflict is the **older campaign's stronger sentence** in pointer-emission.md: “a second WORD is not required for the document encoding.” H1 itself did not say “suppress the occurrence WORD.”

**Disposition:** preserve D1; narrow the conflict to that older campaign sentence.

### F-BASE - FIRED for the unrestricted theorem, PASSED for D1

D1 supplies a complete finite witness: 0010 reaches every D1 row.

The repository still does **not** state the general base / completion rule for an arbitrary dictionary seed:

- no general p_seed is stated;
- no general grouping schedule is stated;
- no proof says every seed section is eventually in the reach of a designated runtime aggregate point.

So “a point can represent the entire Lace” is **PROVED for D1** and **HUMAN-REQUIRED as the general target**, but the unrestricted theorem remains DERIVE-LATER.

---

## 3. D01-D20 delta dispositions

| ID | Disposition | Result |
|---|---|---|
| **D01** | **KEEP** | S2 Arrive(v)=WORD(v) remains valid as occurrence append. Add the distinction root vs later occurrence; H1 fixes wordspace identity, not absence of more wire |
| **D02** | **KEEP** | S3.1 WORD-occurrence membership remains a legal partial Star read. It is still incomplete: root plus retained touches / grounding participation are also part of the formation |
| **D03** | **KEEP** | B5 / Piece 8 sequence remains physical WORD-arrival order. H2's grounding points summarize / participate in that history; they do not replace sequence with a second list |
| **D04** | **SUPERSEDE** | “Which touch is written is wholly Phi-schedule” is too broad. For a seen word H1 fixes the target: touch the word root. D1 witnesses later occurrence to root |
| **D05** | **SUPERSEDE** | Q0 should distinguish root creation on first identity occurrence from later WORD occurrences that are not new wordspace. The old “later WORD not required” campaign sentence is not established by H1 and remains in source tension |
| **D06** | **SUPERSEDE** | Q1 is no longer one monolithic “when POINTER?” question. Seen-word touch is required by H1; H2 requires recursive punch-card grounding. What remains open is grounding cadence / operand selection and general representation details |
| **D07** | **KEEP** | General POINTER arity Q2 remains CONFLICT. D1 touch / grounding specimens are binary; that does not prove universal k=2 |
| **D08** | **SUPERSEDE** | Q5 becomes: later seen-word occurrence remains more wire and creates a touch to the root. “Phi instead of the WORD” is too strong; D1 explicitly shows occurrence plus touch |
| **D09** | **SUPERSEDE** | S4.3 needs a richer abstract STEP: append occurrence; if root already exists, create root-touch; perform required punch-card grounding work; Continue. Exact grounding sequence is still open |
| **D10** | **SUPERSEDE** | sigma is no longer free over the entire post-seed act. H1/H2 constrain its abstract obligations. Residual freedom is root/identity handling for unknowns, grounding grouping/cadence, general arity/encoding and unresolved base |
| **D11** | **KEEP** | Environment fences F-H1/H2, F-S1-S4, F-N, F-G/F-B remain useful. F-A1 / repeated Arrive remains compatible with H1. The E5 “no second WORD” candidate stays refuted by D1. Add H1/H2 as new candidate obligations in a later environment update |
| **D12** | **SUPERSEDE** | X3 STEP remains the one writer but its s=sigma(L,v) interior can now be decomposed abstractly into occurrence plus seen-root touch plus grounding work |
| **D13** | **DERIVE-LATER** | I6 remains useful because Arrive occurrences stay ordered. M2 can be strengthened once grounding cadence/base are formalized; not yet proved globally |
| **D14** | **KEEP** | D1 is not in conflict with H1 under root-vs-occurrence semantics. 0003 is the later PIE occurrence; 0004 is the root touch. D1 still must not be promoted to the complete general scheduler |
| **D15** | **SUPERSEDE** | Seed pass 4's “later document touches = not first / when free” is outdated for seen words. H1 requires seen-word root touches. Historical first-touch record stays intact |
| **D16** | **SUPERSEDE** | Seed pass 6's theta_when is not globally free anymore. Seen-word root-touch and the requirement for punch-card grounding are human-stated. Dictionary wiring cadence and grounding schedule still need formalization |
| **D17** | **KEEP** | D1 rows 0007/0009/0010 are positive evidence for recursive relation-to-relation scaling. 0010 is additionally a complete-prefix reach witness. They still do not prove universal slot order or grouping schedule |
| **D18** | **DERIVE-LATER** | Manifest/global ASCII need later propagation: root-vs-occurrence, mandatory seen-root touch, recursive grounding, D1 complete-reach witness. Not edited in Pass 1 |
| **D19** | **DERIVE-LATER** | Law handoff required. Q0/Q1/Q5 wording materially changes; Q2 stays CONFLICT; Q4 backward plus POINTER-to-POINTER directly supports grounding. pointer-emission.md not edited under maps |
| **D20** | **DERIVE-LATER** | D1 bounded theorem is proved exactly. General entire-Lace theorem is now a stated target with a concrete witness, but needs a general seed/base plus grounding schedule proof |

All D01-D20 have dispositions. No source conflict was deleted.

---

## 4. Re-read of the current mathematical objects

### 4.1 Wordspace is not the whole mutable Lace

The clean distinction now is:

\[
\text{wordspace roots}\subset L
\]

and after dictionary wiring the **root set** is intended to be closed for the covered vocabulary, while L continues growing append-only.

This is the precise reconciliation of:

- H1 “nothing is new in wordspace”;
- Rule Zero “every occurrence adds more wire”;
- D1 repeated WORD PIE;
- Piece 11 permanent touches.

No second lexicon/root store is required. Root lookup is a read of L.

### 4.2 Root is an identity read, not a table

Candidate derived read:

\[
\operatorname{root}_L(v)=\min\operatorname{Star}(v)
\]

when Star(v) is nonempty.

This is safe only **modulo G1**: the rule deciding equality of v is still OPEN.

An acceleration index may exist only as a disposable/projection cache. It cannot become authoritative state.

### 4.3 Seen-word STEP, abstractly

For a successful arrival of a previously seen v:

1. append the new WORD occurrence j;
2. append / form a touch from j to root_L(v);
3. perform the punch-card grounding operation(s) required to integrate the new material into recursively larger representational points;
4. Continue.

Pass 1 does **not** claim how many grounding rows step 3 needs. D1 itself has non-constant pointer fan-out.

### 4.4 Grounding semantics

For any POINTER point p, its transitive reach is determined solely from earlier sections.

A grounding pointer composes earlier grounded material without mutation:

\[
\operatorname{Reach}(p)
=
\{p\}\cup\bigcup_{r\in refs(p)}\operatorname{Reach}(r).
\]

This makes H2's “one point represents the entire Lace” mathematically meaningful without introducing compression or a second store.

The model should use **coverage / reach**, not “summary row” or “collapsed state.”

---

## 5. T1-T8 grounding tests

| Test | Result | Evidence / limit |
|---|---|---|
| **T1 backward legality** | **PASS bounded** | all six D1 pointers reference earlier same-line rows; H2 requires new grounding points, Q4 supports POINTER operands |
| **T2 no collapse** | **PASS** | reach is additive by references; no row rewritten or deleted |
| **T3 recursive coverage** | **PASS on D1 / OPEN general** | Reach(0010)=0..10; general base/grouping proof absent |
| **T4 sequence** | **PASS as separate invariant** | B5/Piece 8 keep WORD arrival order. Grounding does not replace it |
| **T5 relation participates in relation** | **PASS** | D6/Q4; D1 0007/0009/0010 |
| **T6 no second state** | **DERIVE-LATER** | a designated current whole-Lace point must be recoverable from L, not held as authoritative side state; general selection rule not stated |
| **T7 root lookup** | **PASS modulo G1** | root can be read from first WORD occurrence; word equality itself remains G1 OPEN |
| **T8 wordspace closure** | **OPEN outside covered dictionary** | H1 closes “seen word” behavior. Behavior for a word absent from the wired dictionary is not stated |

---

## 6. Exact D1 coverage proof

Using set union only:

\[
R_{0002}=\{0002\}\cup R_{0000}\cup R_{0001}
       =\{0000,0001,0002\}
\]

\[
R_{0004}=\{0004\}\cup R_{0003}\cup R_{0000}
       =\{0000,0003,0004\}
\]

\[
R_{0006}=\{0006\}\cup R_{0003}\cup R_{0005}
       =\{0003,0005,0006\}
\]

\[
R_{0007}=\{0007\}\cup R_{0006}\cup R_{0004}
       =\{0000,0003,0004,0005,0006,0007\}
\]

\[
R_{0009}=\{0009\}\cup R_{0008}\cup R_{0007}
       =\{0000,0003,0004,0005,0006,0007,0008,0009\}
\]

\[
R_{0010}=\{0010\}\cup R_{0009}\cup R_{0002}
       =\{0000,0001,0002,0003,0004,0005,0006,0007,0008,0009,0010\}.
\]

This is not a semantic guess. It is graph reach over the literal D1 refs.

The **interpretation** that this is the bounded specimen of H2's “one point represents the entire Lace” is human-H2 plus computed D1 reach.

---

## 7. What Pass 2 may safely amend

Pass 2 may now update the partial algebra only within these bounds:

1. **Keep** L, WORD, POINTER, Arrive, append-only, Q4 backward refs and pure projections.
2. Add **root vs occurrence** terminology. First WORD of an identity is the root read; later WORD rows are new occurrences, not new lexical roots.
3. Add a **seen-word touch obligation**: later occurrence participates in its root. Use D1 0004 as the bounded binary witness; do not promote all POINTERs to binary.
4. Replace the broad “all touch choice is schedule” wording with:
   - seen-word root target: human-stated;
   - touch witness shape: D1-supported;
   - general grounding grouping/cadence: still open.
5. Add Reach as a **read** over L, not a stored field.
6. Add D1 theorem: Reach(0010)=0..10.
7. Do **not** install the plan's left-fold equation as law.
8. Do **not** rewrite pointer-emission.md, manifest, global ASCII or graphics in Pass 2.
9. Keep G1 and out-of-dictionary arrival behavior OPEN.
10. Keep general Q2 arity CONFLICT.
11. Keep total Core implementation blocked until the law-side acceptance / reconciliation step is explicitly taken.

---

## 8. Source state after Pass 1

| Surface | Pass 1 result |
|---|---|
| Human H1 | root identity plus seen-word touch obligation |
| Human H2 | recursive grounding plus intended eventual one-point coverage |
| Graphic D / D1 | occurrence plus root-touch witness; relation-to-relation witness; final point covers all 11 rows |
| Seed campaign | root/definition scaffold retained; its globally-free theta_when claim narrowed |
| Partial model | structurally sound, but S3/S4 description of touch/schedule is now too broad |
| Environment | fence machinery retained; sigma's unconstrained search role narrowed |
| Whole-app reduction | STEP interface retained; internal Core recurrence needs refinement |
| Pointer-emission draft | materially stale on Q0/Q1/Q5 relative to H1/H2; law handoff required |
| Manifest / global ASCII | propagation required later; unchanged here |
| General full-Lace grounding theorem | **not yet proved**; D1 bounded theorem proved |
| src/ | still absent / unauthorized |

---

## 9. Pass 1 receipt

| Field | Result |
|---|---|
| D01-D20 | **20/20 disposed** |
| H1/H2 quoted separately from inference | **PASS** |
| D1 0003 classified | **PASS: occurrence, not new root; 0004 root touch** |
| F-D1 | **did not fire against H1** |
| F-BASE | **fires for unrestricted theorem; bounded D1 witness passes** |
| Plan left-fold hypothesis | **not established; narrowed to general recursive grounding** |
| D1 final reach | **11/11 rows from 0010** |
| General Q2 | **CONFLICT retained** |
| G1 / unknown word | **OPEN retained** |
| Model body edited | **0** |
| Law / manifest / graphics / global ASCII edited | **0** |
| src/ | **0** |
| Next | Pass 2 may formalize root / occurrence / seen-word touch plus Reach; **not automatically opened** |

## Steward test

A root can stay the same while more wire passes through it. A later occurrence is more Lace, not a new lexical root. Its touch to the root remains. Pointers can then ground prior grounded material into larger reachable structure. In D1 the last point reaches every row. Nothing was collapsed to make that true.
