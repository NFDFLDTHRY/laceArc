# Mathematical execution model — theorem register

**Status:** DERIVED companion to [math-execution-model.md](math-execution-model.md), written by the mathematical execution model audit, pass 2 (2026-09-22, maps). It indexes every proof-shaped result the model states, names each one's premises and stamp, and says what would refute it. It proves nothing the model's blocks do not prove; the blocks are the record, this file is the index.  
**Plan:** [plans/math-execution-audit-pass-2-plan.md](plans/math-execution-audit-pass-2-plan.md) · receipt [plans/math-execution-audit-pass-2-findings.md](plans/math-execution-audit-pass-2-findings.md) · board [plans/math-execution-audit-iteration-plan.md](plans/math-execution-audit-iteration-plan.md).  
**Pinned:** the model at `5ffe01156047df01e8cd0823a286b53e89082905` plus the pass-2 blocks (99 added lines, 0 removed).  
**Authority of this file:** none. It is not law, not the manifest, not a source; whether the manifest may cite it as the proof surface for Pieces 5 and 11 is MA-H03, the human's. Section numbers `S#` are the model's. Line numbers are of the model after the pass-2 blocks.  
**Emission:** RM-A `[GAP]` · G1 `[GAP]` · no `src/`. Nothing here decides retain-when, arity beyond the constructor the model adopts, slot order, or word equality; every row's *scope* says so where it matters.

## 0. Stamps

The evidence-state vocabulary is `agent-control.md` C10; C08 requires the theorem and its premises before the word "proved".

| Stamp | Meaning here |
|---|---|
| `PROVED_WITHIN_SCOPE` | a statement, its premises, and a proof from those premises are written in the model; the *scope* column says what the premises do and do not cover |
| `DERIVED` | a valid inference from a premise the model takes from a cited source sentence or a definition; the premise itself is a reading, not a proved fact, so "proved" would overstate |
| `REQUIREMENT` | a rule the model imposes; there is nothing to prove, only to obey or violate |
| `UNESTABLISHED` | a proof attempt needed a premise the model does not state; the missing premise is named. **No row carries this stamp** |

A pass-verdict box in the model (*… SOUND …*, *… PROVED …*) is not a result and has no row; the pass-1 census lists those nineteen separately.

## 1. The register

| Label | Where | Statement (compressed; the model's wording governs) | Premises | Stamp · scope | Refuter |
|---|---|---|---|---|---|
| **Lemma L1** — Reach is well-founded | S1.3, pass-2 block | On a valid state, `Reach(i)` is a well-defined finite set containing `i`, bounded by `i` | validity (every POINTER references strictly lower indices); the S3.4 definition of Reach | `PROVED_WITHIN_SCOPE` · the definition and the operand condition; nothing about operand selection | a POINTER row whose reference is not strictly lower |
| **Lemma L2** — validity and prefix-freeze are invariant | S1.3, pass-2 block | Arrive and Join (with `a, b < |L|`) preserve validity and leave the first `|L|` rows unchanged; hence every state reachable from the empty state is valid | Arrive and Join as one-row concatenation; the operand condition | `PROVED_WITHIN_SCOPE` · the two constructors as defined | a step that changes an earlier row |
| **Lemma L3** — root stability under any append | S2, pass-2 block | One append leaves `Root(v)` unchanged when `v` is seen; an unseen `v` arriving as WORD gets `Root(v) = |L|` | `Root = min StarWords` (S3.1); Lemma L2; one fixed word-equality relation | `PROVED_WITHIN_SCOPE` · one append under a fixed relation, hence any finite sequence; says nothing about G1 or about whether a touch is appended | an append that changes an earlier row; a root not defined as the least occurrence |
| **Lemma L4 = PATH-1** — membership is not multiplicity | S3.4, pass-2 block (the box above it is the Pass-4 artifacts' PATH-1) | Membership of `t` in `Reach(i)` is one fact; `|Paths(i,t)|` is 1 at D1 0007 and **exactly 2** at D1 0010 | the S3.4 definition of Reach; the D1 fixture rows | `PROVED_WITHIN_SCOPE` · the D1 witness; an inequality between two derived quantities | a third path from 0010 to 0000, which the enumeration excludes |
| **Lemma L5** — D1 replay | S4.1, pass-2 block | Eleven Arrive/Join steps from the empty state reproduce the eleven D1 rows; 6/6 operand pairs, all references lower; step 5 is RootTouch(0003, 0000) | the fixture `d1-golden-v0.1.0`; Arrive, Join, RootTouch as defined | `PROVED_WITHIN_SCOPE` · the eleven rows under the two constructors; not why those operands (RM-A) | a row the Join reading does not reproduce |
| **Theorem G** — finite sample representability (restated) | S4.2; original statement and proof kept, restatement in the pass-2 note | The ladder over any finite nonempty ordered sample `S` of a valid state yields `P_n` with `S ⊆ Reach(P_n)`, appends exactly `n − 1` rows, and for `n ≥ 2` is later than every sample point; for `n = 1` it is the point itself | Reach (S3.4); Join under the operand condition (L1, L2). H5/H6 fix that this ladder is the adopted construction; the proof does not use them | `PROVED_WITHIN_SCOPE` · the ladder over an already-selected sample; not a selection or retention rule | a sample point outside `Reach(P_n)`; a step appending other than one row |
| **Lemma WP** — whole-prefix covering point | S4.3, pass-2 block | Grounding rows `0…m−1` in index order appends `m − 1` rows; `P_k` sits at index `m + k − 2`; `Reach(P_k) = {0…k−1} ∪ {m…m+k−2}`; the final point at `2m − 2` reaches `{0…2m−2}` | L1, L2, Reach, the S4.2 ladder | `PROVED_WITHIN_SCOPE` · the ladder over the full prefix; says nothing about whether such a grounding is ever selected | an index outside the formula; a row outside the claimed Reach |
| **RD-1** — read-device no-write | S9.6; proof kept, premises in the pass-2 note | A device-only step returns the Lace component unchanged: `π_L ∘ T = π_L` | Ω, Δ, ω typed with codomains excluding `L`; `π_L` the first-component projection; *device-only* = no Arrive, no Join | `PROVED_WITHIN_SCOPE` · the typed algebra; a step that appends is outside the theorem, so RD-1 says nothing about code | none inside the scope |
| **OBS-1** — non-identifiability | S10.3; proof kept, premises in the pass-2 note | Two admissible worlds with equal Lace and different `z` ⇒ no total Lace-only function identifies `z` | an admissible world set; `π_L`; `z` total; the S10.2 definition | `PROVED_WITHIN_SCOPE` · the conditional. Its **hypothesis** for HCC-A, Coffee Cup and Water (S10.4) is argued from readings of the conceptual sources and is `DERIVED`, not proved | none for the conditional; a witness falls if its two worlds are not both admissible or do not share a prefix |
| **EP-1** — support traceability | S10.6 | A Lace-grounded claim must carry finite nonempty Lace support sufficient to replay it | — (a rule) | `REQUIREMENT` · nothing to prove | n/a — a rule is violated, not refuted |
| **HOST-1** — host dependence | S11.4 | External input `g` reaches a Wasm-realized device only through host/embedder mediation | the Wasm core specification's own statements: no embedding-environment API, no ambient access (a source reading at evidence rung `T_0`); `g ∉ State_Wasm` | `DERIVED` · the inference is sound; the premise is a reading, so the model's box *"host dependence proved"* overstates by one rung (pass 3 reties it) | a specification revision granting ambient access; a `g` that is Wasm state |
| **ACCEL-1** — accelerator non-authority | S11.6 | `GPUState ∉ AuthoritativeLace`; loss of GPU state does not change Lace truth | authoritative Lace is `L` (S1); WebGPU's stated device/resource lifetimes and loss (source reading) | `DERIVED` · a fence from S1 plus a source reading; the S11.14 box *"ACCELERATOR NON-AUTHORITY PROVED"* overstates (pass 3) | a realization that made GPU memory the only carrier of `L` would violate the fence, not refute it |
| **ML-1** — inference does not promote evidence class | S11.7 | `x ∈ SEE-L ⇏ y_ML = F_θ(x) ∈ SEE-L` | `θ` is device/parameter state, not Lace (S9.1); the SEE stamps (S10.1); OBS-1 | `DERIVED` · an instance of OBS-1: two worlds with equal Lace and different `θ` give different `y_ML` | none while `θ ∉ L` |
| **COPY-1** — interop is not zero-copy | S11.8 | `Interop ⇏ ZeroCopy` | the interop edges the WebGPU/WebNN specifications state, including that copies may occur (source reading) | `DERIVED` · a reading; any zero-copy claim needs device evidence at rung `T_4` or above | a source sentence guaranteeing zero-copy on a named path |

**Count:** 14 distinct results · `PROVED_WITHIN_SCOPE` 9 (L1, L2, L3, L4/PATH-1, L5, Theorem G, Lemma WP, RD-1, OBS-1) · `DERIVED` 4 (HOST-1, ACCEL-1, ML-1, COPY-1) · `REQUIREMENT` 1 (EP-1) · `UNESTABLISHED` 0.

## 2. Other proof-shaped sentences (the census's `THM` rows not named above)

The pass-1 census marked 38 rows `THM`; those not covered by a labeled result are disposed here so pass 3 can retie their wording.

| Where | Sentence (compressed) | Disposition |
|---|---|---|
| S1.2 | `no source-specified terminal bound ≠ infinite physical capacity` | `DERIVED` — a distinction between a source silence and a physical promise; nothing to prove |
| S3.3 | TOUCH and GROUND are operand roles of the same Join | `DERIVED` from the definitions: RootTouch *is defined as* `Join(j, r)` |
| S4.1 | the new POINTER always references backward | = Lemma L2 |
| S4.5 | once operands are addressable, append is mechanically determined by Join | `DERIVED`: `Join` is a function of its operand pair; the sentence says nothing about which pair (RM-A) |
| S8 | the eight steward tests | *no old row rewritten*, *all refs backward* = Lemma L2; *every grounded point is Lace* = Join appends a row (definition); *repeated Join grounds any finite portion* = Theorem G; the other four are fences and a meta-claim, not theorems |
| S9.7 | behavioral feedback ≠ rewrite of prior Lace | `DERIVED` from Lemma L2: every path back into Lace is an append |
| S10.2 | `z` identifiable ⇔ `z` constant on every fiber of `π_L` | `PROVED_WITHIN_SCOPE` (standard: a function factors through a projection iff it is constant on its fibers); it is the premise OBS-1 contraposes |
| S10.4 | the three source witnesses for OBS-1 | `DERIVED` from readings of the conceptual sources (see OBS-1's row) |
| S10.9 | `Δ(q, o, g) = (q, y)` suffices for descriptive readout | `DERIVED`: Δ's codomain permits `q′ = q`; definitional |
| S11.4 | the implication above HOST-1 | = HOST-1 |
| Header, S8 | the two steward lines | prose restatements of L3, Theorem G and Lemma WP; not separate results |

## 3. Named fences from the Pass-4 artifacts, cited by the model but not labeled in it

| Label | Defined in | Model location | Disposition for pass 3 |
|---|---|---|---|
| **STAR-1** | [star-projection fidelity §1](plans/math-execution-behavioral-read-devices-pass-4-star-projection-fidelity.md) | the two S3.1 boxes | a GFX-backed fidelity fence (D5, A12, B9). `FullStar` is a read *concept* the model does not define formally, so STAR-1 is not a theorem and cannot be proved here; it is `DERIVED` from the panels and stays a fence. Pass 3 labels the boxes |
| **VIEW-1** | [star-projection fidelity §6](plans/math-execution-behavioral-read-devices-pass-4-star-projection-fidelity.md) | the S3.7 box; cited by name at S12.8 | same: B11/C11 fence over an undefined `FullLaceStructure`; `DERIVED`, not a theorem. Pass 3 labels the box and points the S12.8 citation here |
| **AUTH-1** | [graphics authority matrix §12](plans/math-execution-behavioral-read-devices-pass-4-graphics-authority-matrix.md) | the S6 preface | the provenance rule *compatible ≠ stated*; a `REQUIREMENT` of the audit, not a claim about Lace |

## 4. What is not in this register, and must not be

No retain-when. No arity beyond the binary constructor the model adopts (a *law* about arity is the pointer draft's, unaccepted). No slot-assignment rule. No word-equality rule (G1). No claim that every row is eventually referenced. No C6 discriminator. A lemma whose statement decided any of these would have been struck before commit (the plan's second falsifier); none was written.

## 5. Script receipt

Every `PROVED_WITHIN_SCOPE` row with a D1 clause was re-checked by a throwaway script over the fixture and over 500 random valid states (Arrive/Join sequences with random lower operands): validity, `Reach(0010)`, `Root(PIE)` after each prefix, the two paths, the six operand pairs, the ladder indices `m + k − 2`, the final index `2m − 2`, the Reach formula for every `P_k`, prefix-freeze, and Theorem G's containment and lateness on random samples. Zero failures. The output is copied verbatim into [the pass-2 findings §3](plans/math-execution-audit-pass-2-findings.md); the script itself is not tracked (no `src/`; it is not a Lace implementation, it is a checker of eleven rows and some arithmetic).

## 6. Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Every row here is a knot you can tie on the cord: tie two earlier points, tie the result to a third, count where the new tie sits. RM-A remains `[GAP]`.
