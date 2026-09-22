# Mathematical execution model audit — pass 1 census: every claim in S0–S12 by authority and kind

**Status:** EXECUTED — CLOSED · receipt [math-execution-audit-pass-1-findings.md](math-execution-audit-pass-1-findings.md) · register [math-execution-rulings-register.md](math-execution-rulings-register.md).  
**Plan:** [math-execution-audit-pass-1-plan.md](math-execution-audit-pass-1-plan.md) · board [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md) · findings MA-M01, MA-M13.  
**Object:** [`docs/math-execution-model.md`](../math-execution-model.md) at `5ffe01156047df01e8cd0823a286b53e89082905` (2140 lines). Line numbers below are of that blob; the model was **not edited** by this pass.  
**Station:** maps · identity `Claude-Fable-math-audit` · 2026-09-22.  
**Method:** one row per claim-bearing sentence, table row, list item or `\boxed{}` statement, walked heading by heading. Each row was located in the model by a distinctive substring of its own text (a keyed script in the session scratchpad; not tracked); a line that carries several claims yields several rows with the same line number. Counts in §1 are computed from the same rows as the tables in §3, so they cannot disagree with them. Route lines, link lines and notation-only lines (“let j = |L|”) are not rows.  
**Emission:** RM-A `[GAP]` · G1 `[GAP]` · no `src/`. Nothing here decides retain-when, arity, slot, target or acceptance.

## 0. Legend

**Kind** (the plan’s four, plus the falsifier’s disposition):

| Kind | Meaning |
|---|---|
| `DEF` | a definition, a rule the model states as current, or a restatement of one |
| `FENCE` | a prohibition, a “not X”, a “must not”, a distinctness claim |
| `THM` | a claim the model presents as proved, provable, or as the consequence of a proof (theorem, lemma, proof step, corollary, “therefore”) |
| `OPEN` | a claim that something is open, undecided, `[GAP]`, deferred or unsupplied |
| `UNCLASSIFIED` | the plan’s second falsifier: a claim none of the four kinds fits. All 19 are **pass-verdict boxes** (`\boxed{\text{… SOUND …}}`, `… PROVED …`, `… DEFINED …`): status stamps of a campaign pass, not definitions, fences, theorems or opens. Recorded, not forced |

**Authority** (the Pass-4 legend of the [graphics authority matrix](math-execution-behavioral-read-devices-pass-4-graphics-authority-matrix.md) §0, plus two qualifiers that matrix itself uses in prose):

| Stamp | Meaning |
|---|---|
| `GFX` | direct canonical Graphic A–D fact |
| `HUMAN` | later explicit human ruling (`H1`–`H12`, the Water UNK/INVALID ruling, the conceptual-reference correction) |
| `DERIVED` | mathematical consequence of admitted premises |
| `OVERLAY` | later behavioral/technical mathematics over Lace (S9–S12) |
| `OPEN` | not settled by the current source/ruling/model court |
| `LAW` | repository law (`AGENTS.md`, the live law, the pointer draft’s status) — the matrix’s own “repository law, not GFX” |
| `LAB` | a lab-pass result (sampling, behavioral-read-devices, lab-source campaigns) — the matrix’s own “DERIVED/LAB” |

A `+` joins stamps when a claim rests on more than one authority. Compatibility with a graphic does not upgrade a HUMAN/DERIVED/OVERLAY/LAB claim to GFX (AUTH-1).

**Stated?** — whether the model itself names the authority next to the claim:

| Value | Meaning |
|---|---|
| `Y` | named in place: a panel/row citation (D1, B11…), an `H#`, “DERIVED”, “current HUMAN/MODEL law”, “[GAP]”, “OPEN”, an `Authority:` line, a named lab pass |
| `R` | named by reference only: the section points at another section, an `Authority:` line elsewhere in the section, or the S8 authority note |
| `N` | not named anywhere near the claim; the stamp in this census is the auditor’s, taken from the Pass-4 matrix or from the claim’s own derivation |

`N` rows are **not** errors of authority. They are places where the model asserts something without saying on whose authority. Their count is the pass-1 measurement that pass 3 works from.

## 1. Counts

**Rows:** 472. **Kinds:** DEF 215 · FENCE 150 · THM 38 · OPEN 50 · UNCLASSIFIED 19. **Stated:** Y 218 · R 70 · N 184.

| Section | Rows | DEF | FENCE | THM | OPEN | UNCL. | Y | R | N |
|---|---|---|---|---|---|---|---|---|---|
| Header | 11 | 5 | 3 | 1 | 2 | 0 | 8 | 3 | 0 |
| S0 | 17 | 6 | 4 | 3 | 4 | 0 | 11 | 4 | 2 |
| S1 | 29 | 18 | 8 | 1 | 2 | 0 | 19 | 4 | 6 |
| S2 | 8 | 5 | 1 | 1 | 1 | 0 | 3 | 2 | 3 |
| S3 | 75 | 44 | 21 | 3 | 7 | 0 | 34 | 11 | 30 |
| S4 | 48 | 24 | 9 | 10 | 5 | 0 | 24 | 7 | 17 |
| S5 | 7 | 4 | 3 | 0 | 0 | 0 | 6 | 0 | 1 |
| S6 | 11 | 0 | 11 | 0 | 0 | 0 | 11 | 0 | 0 |
| S7 | 18 | 13 | 1 | 2 | 2 | 0 | 17 | 0 | 1 |
| S8 | 21 | 12 | 2 | 5 | 2 | 0 | 7 | 14 | 0 |
| S9 | 61 | 26 | 16 | 3 | 13 | 3 | 30 | 6 | 25 |
| S10 | 53 | 17 | 23 | 7 | 2 | 4 | 15 | 4 | 34 |
| S11 | 54 | 18 | 22 | 2 | 6 | 6 | 17 | 6 | 31 |
| S12 | 59 | 23 | 26 | 0 | 4 | 6 | 16 | 9 | 34 |
| **all** | **472** | **215** | **150** | **38** | **50** | **19** | **218** | **70** | **184** |

**Authority tokens** (a row with `A+B` counts once under each): OVERLAY 156 · DERIVED 110 · GFX 91 · HUMAN 78 · OPEN 49 · LAB 43 · LAW 34.

**Where the unstated rows sit:** S0–S8 (the Core court) 60 of 184; S9–S12 (the overlay court) 124 of 184. Inside the Core court they cluster in S3 (30) and S4 (17): the derived definitions (StarWords, Root = min, WordTrace, Reach, sample instance, ladder, SearchHandle, Π) and the lab-refused substitutes of S4.6 carry no stamp in place. S7 (17/18 stated) and S6 (11/11) are the stamped sections; S8 states by reference through its authority note.

**Boxes:** 48 `\boxed{}` statements in the model, on 46 census rows (the RD-1 and ACCEL-1 rows each carry two boxes); 29 boxes classified (FENCE 17 · THM 5 · OPEN 4 · DEF 3), 19 are pass-verdict boxes recorded `UNCLASSIFIED`. The three `∎` proofs (Theorem G, RD-1, OBS-1) are the only proof blocks; HOST-1 is boxed as “proved” with the implication above it as its proof and no proof block; the whole-prefix construction (S4.3) is “constructively proved” in S8 and stated as “Therefore” in S4.3 with no `∎`.

**Named results in the model:** Theorem G (S4.2) · RD-1 (S9.6) · OBS-1 (S10.3) · EP-1 (S10.6) · HOST-1 (S11.4) · ACCEL-1 (S11.6) · ML-1 (S11.7) · COPY-1 (S11.8). **Named only in the Pass-4 artifacts and cited here unlabeled:** STAR-1 (the S3.1 boxes), PATH-1 (the S3.4 box; cited by name in S12.8), VIEW-1 (the S3.7 box; cited by name in S12.8), AUTH-1 (the S6 preface). The model never writes `PROVED_WITHIN_SCOPE`.

## 2. What cites each section (reverse census)

Section-number tokens counted in the surfaces that read the model (`grep -o` of `S#`/`S#.#`, 2026-09-22). The count is of tokens, not of links; the HCC clipboard’s `S0`–`S7` and the Water blueprint’s `S0`–`S4` are phase names that share these tokens and are listed as collisions.

| Section | Cited by |
|---|---|
| Header | 89 files link the model without an anchor (court index, AGENTS.md, README.md, manifest, pointer draft, ascii, register, clipboards, plans) |
| S0 | systems-manifest-ascii ×4 · namespace-register ×3 · atomic-primitives-map ×1 · authority matrix §5. `S0` also names an HCC phase (hcc-a-systems-manifest ×30) — collision |
| S1 | pass-3-witness ×1 · pass-4-adversarial ×1 · authority matrix §6 · hcc-a-systems-manifest `S1` ×15 (HCC phase — collision) |
| S2 | pass-4-adversarial ×1 · pass-6-arrival ×2 · manifest Piece 4 / traceability L-M04 (“math S2”) · authority matrix §7 |
| S3 | pass-4-adversarial (S3.1 ×3) · pass-5-projections (S3.1 ×2, S3.3 ×1, S3.4 ×5) · traceability L-M18 (“math S3.3”), L-M20 (“math S3.5”) · star-projection-fidelity (STAR-1 ↔ S3.1, VIEW-1 ↔ S3.7) · d1-path-audit (PATH-1 ↔ S3.4) · authority matrix §8 |
| S4 | systems-manifest-ascii (S4 ×1, S4.2 ×1) · pass-3-witness (S4 ×2) · pass-4-adversarial (S4 ×2, S4.1 ×2, S4.2 ×1) · graphics-close-reading (S4.3 ×3, one **stale anchor** `#s43-partial-step-schema-honest`) · manifest Piece 5 / SM-C19 / traceability L-M05, L-M19 (“math S4”) · authority matrix §9 |
| S5 | pass-4-adversarial ×2 · pass-5-projections ×5 · pass-6-arrival ×2 · authority matrix §10 |
| S6 | pass-4-adversarial ×13 · pass-5-projections ×6 · pass-6-arrival ×1 · systems-manifest-ascii ×1 · authority matrix §10 |
| S7 | systems-manifest ×1 · systems-manifest-ascii ×3 · namespace-register ×2 · atomic-primitives-map ×1 · S8 authority note · authority matrix §10 |
| S8 | authority matrix §10 (“summary of GFX + HUMAN + DERIVED + OPEN; not a source transcript”); no other surface cites S8 by number |
| S9 | systems-manifest ×2 · systems-manifest-ascii ×6 · namespace-register ×3 · BRD pass-6 coherence matrix ×2 · authority matrix §11 |
| S10 | systems-manifest ×1 · systems-manifest-ascii ×3 · namespace-register ×2 · BRD pass-6 coherence matrix ×2 · authority matrix §11 |
| S11 | systems-manifest ×1 · systems-manifest-ascii ×3 · namespace-register ×2 (S11, S11.2) · BRD pass-6 coherence matrix ×3 · authority matrix §11 |
| S12 | systems-manifest ×1 · systems-manifest-ascii ×6 · namespace-register ×5 · BRD pass-6 coherence matrix ×3 · anchored links from clipboards/README, clock/README, hcc-a-systems-manifest, reason-model-map, references (`#s12--behavioral-machine-construction-factorization`) · hcc-a-systems-manifest `S12` ×1 |

Six files link the model with an anchor: five to `#s12--behavioral-machine-construction-factorization` (clipboards/README, clock/README, hcc-a-systems-manifest, reason-model-map, references) and one, [graphics-close-reading.md](../graphics-close-reading.md) line 138, to `#s43-partial-step-schema-honest` — the **heading S4.3 had before the ROOT / TOUCH / FOLD campaign**; S4.3 is now “Whole-prefix covering point”. The link resolves as a file (the checker tests files, not fragments) and lands nowhere as an anchor. Recorded for pass 6’s propagation table.

## 3. The census

Columns: **L** line in the pinned model · **Claim** (compressed; the model’s wording governs) · **Kind** · **Authority** · **Stated?** · **Cites / rests on** (what the claim leans on, or which Pass-4 artifact names it).

### Header block (before S0)

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| Header-01 | Header | 3 | Pointer construction and human-ruled sampling/search are reconciled; canonical SM-GAP-RM remains open with RM-A the primary unresolved retain decision | OPEN | HUMAN+LAW | Y | SM-GAP-RM; S4.5 |
| Header-02 | Header | 3 | Pass 5 keeps S9 minimal, admits an optional local operator library, and mathematically defines HCC-A, Coffee Cup and Water devices with source-specific opens | DEF | OVERLAY+LAB | R | S12.11–S12.13 |
| Header-03 | Header | 3 | The Water blueprint follows current human law: UNK is a nonblocking expected-evidence shape and INVALID requires later refuting evidence | DEF | HUMAN | Y | S12.13; clock/philosophy-map Water ruling |
| Header-04 | Header | 3 | Browser Wasm host/embedder sourcing remains GAP-HOST; R3 carrier, G1, target and acceptance remain open | OPEN | OPEN | Y | S11.4, S11.13 |
| Header-05 | Header | 3 | No Core row, retention rule, target choice or implementation follows from this document | FENCE | LAW | Y | AGENTS.md; live law |
| Header-06 | Header | 9 | Physical POINTER constructor is binary Join(a,b), grounded by D2/D1 plus H5/H6, reconciled into the pointer draft and manifest; the law draft remains not accepted | DEF | GFX+HUMAN+LAW | Y | D1, D2, H5, H6; pointer-emission; manifest |
| Header-07 | Header | 10 | Current growth: ARRIVE → unseen BECOMES ROOT / seen ROOT TOUCH → derive sampling structure → RM-A [OPEN] → if selected, materialize under RM-B/RM-C → append → Continue | DEF | HUMAN+DERIVED+OPEN | R | S4.6; lab-source Pass 6 RM-B/RM-C closures |
| Header-08 | Header | 11 | The 2D position×scale sampling surface is derived working machinery, not stored; Graphic-C dot-to-dot projection is separate and never a second store | FENCE | HUMAN+GFX | Y | H11; Graphic C; S3.5, S3.7 |
| Header-09 | Header | 12 | No src/ | FENCE | LAW | Y | AGENTS.md |
| Header-10 | Header | 14 | Graphics A–D are source of record; the manifest is derived; the ASCII companion is lower-authority; H4–H6 are the current root/grounding rulings; this model edits or accepts no law-owned file by implication | DEF | LAW | Y | H4–H6 |
| Header-11 | Header | 16 | Steward line: every arrival adds wire; unseen wire becomes its root; seen wire touches its root; two existing points can be joined by one new POINTER point; repeated, any chosen finite portion becomes one addressable point | THM | HUMAN+DERIVED | R | S2, S3.3, S4.2, S4.3 (restates) |

### S0 — Header and non-claims

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S0-01 | S0 | 23 | Every successful word arrival lands as one WORD occurrence — Yes | DEF | HUMAN | Y | H3 |
| S0-02 | S0 | 24 | Unseen word becomes its root on arrival — Yes | DEF | HUMAN | Y | H4 |
| S0-03 | S0 | 25 | Seen word occurrence touches existing root — Yes | DEF | HUMAN | Y | H1 |
| S0-04 | S0 | 26 | One physical binary POINTER constructor Join(a,b) — Yes in this mathematical model | DEF | GFX+HUMAN | Y | D2, D1, H5, H6 |
| S0-05 | S0 | 27 | RootTouch is a Join specialization — Yes | DEF | DERIVED | N | S3.3 (restates) |
| S0-06 | S0 | 28 | Any chosen finite sample of existing points can be represented by one later point — Yes, induction theorem | THM | DERIVED | R | Theorem G, S4.2 |
| S0-07 | S0 | 29 | n+1 sample extension creates one new Lace row — Yes | DEF | HUMAN | N | H6; S3.4 |
| S0-08 | S0 | 30 | One global registry row per cardinality n — No, would collapse distinct samples | FENCE | DERIVED | R | S3.4 |
| S0-09 | S0 | 31 | D1 0010 covers the whole eleven-row D1 prefix — Yes | THM | GFX+DERIVED | Y | D1; S4.3 |
| S0-10 | S0 | 32 | Whole-prefix covering point exists for every finite prefix by recursive Join — Yes, constructive theorem | THM | DERIVED | R | S4.3 |
| S0-11 | S0 | 33 | N-D coordinates / dimension rows stored in Core — No | FENCE | GFX | R | S3.7; Graphics C/D |
| S0-12 | S0 | 34 | General SM-GAP-RM interface — Open: RM-A not determined here; RM-B bounded closure for contiguous samples; RM-C closed for RootTouch and contiguous grounding, candidate-specific elsewhere | OPEN | OPEN+LAB | Y | SM-GAP-RM; lab-source Pass 6 |
| S0-13 | S0 | 35 | G1 word-equality policy — Open | OPEN | OPEN | Y | G1 |
| S0-14 | S0 | 36 | pointer-emission.md accepted as a whole — No | FENCE | LAW | Y | pointer-emission |
| S0-15 | S0 | 37 | Permission to add src/ — No | FENCE | LAW | Y | AGENTS.md |
| S0-16 | S0 | 39 | The old monolithic emission blocker was split into constructor/grounding plus a presumed relation-provenance question; H7–H12 supersede that premise: sampling discovers structure; the remaining primary hole is RM-A retain-when, not a semantic chooser | OPEN | HUMAN | Y | H7–H12; RM-A |
| S0-17 | S0 | 39 | Later bounded lab work shows some materialization/order cases can proceed once RM-A has selected the object; those closures do not supply RM-A or a universal topology-identification rule | OPEN | LAB | Y | lab-source Pass 6 RM-B/RM-C |

### S1 — Universe and state

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S1-01 | S1.1 | 45 | Work in the Hands universe only | FENCE | LAW | R | live law |
| S1-02 | S1.1 | 45 | The sole persistent carrier is Graphic D’s append-only line | DEF | GFX | Y | Graphic D |
| S1-03 | S1.1 | 45 | HCC-A, Coffee Cup and Water are conceptual reference documents; the H×C×W diagrams establish no required holder machinery; their conceptual states introduce no Core rows or row types | FENCE | HUMAN+LAW | Y | law-why-these-documents §conceptual-reference-documents |
| S1-04 | S1.1 | 45 | The wall W: S ↛ H (Shadow does not embed into Hands) | DEF | OVERLAY | Y | clock/system-mathematical-model §1.1 |
| S1-05 | S1.1 | 45 | Kin-read only | FENCE | OVERLAY | N |  |
| S1-06 | S1.1 | 45 | Shadow state is not a row of L | FENCE | OVERLAY+GFX | N |  |
| S1-07 | S1.2 | 49 | A Lace state is a finite sequence L = (e_0,…,e_{n−1}), n ∈ ℕ₀ | DEF | DERIVED | N | formalizes Graphic D |
| S1-08 | S1.2 | 55 | Indices are permanent addresses; growth is concatenation only; no delete, rewrite, reset, cut or index reuse | FENCE | GFX | Y | Pieces 1, 6; Graphic D |
| S1-09 | S1.2 | 57 | Graphics A–C describe the strand as continuing indefinitely / growing without a source-specified terminal bound | DEF | GFX | Y | Graphics A–C |
| S1-10 | S1.2 | 57 | This model keeps every state finite while permitting another legal extension whenever the abstract transition is considered | DEF | DERIVED | Y |  |
| S1-11 | S1.2 | 57 | That is not a physical-capacity promise | FENCE | DERIVED | Y |  |
| S1-12 | S1.2 | 57 | A concrete finite realization must declare its supported domain and refuse safely before wrap/reuse/renumber | FENCE | OVERLAY+LAW | R | implementation-envelope court |
| S1-13 | S1.2 | 60 | no source-specified terminal bound ≠ infinite physical capacity | THM | DERIVED | Y |  |
| S1-14 | S1.3 | 68 | Kind = {WORD, POINTER} | DEF | GFX | N | D2 (not cited in place) |
| S1-15 | S1.3 | 74 | WORD row e_i = (WORD, v), v ∈ V | DEF | GFX | N | D2 |
| S1-16 | S1.3 | 77 | V’s equality / token-boundary policy remains G1 OPEN | OPEN | OPEN | Y | G1 |
| S1-17 | S1.3 | 79 | POINTER is binary: e_j = (POINTER, a, b), 0 ≤ a < j, 0 ≤ b < j | DEF | HUMAN+GFX | R | justified by the five reasons below |
| S1-18 | S1.3 | 86 | The one physical constructor Join_L(a,b) = L ⌢ (POINTER, a, b) | DEF | HUMAN+GFX | R |  |
| S1-19 | S1.3 | 96 | Reason 1: D2 draws the two-reference POINTER schema | DEF | GFX | Y | D2 |
| S1-20 | S1.3 | 97 | Reason 2: all six D1 POINTER rows are binary | DEF | GFX | Y | D1 |
| S1-21 | S1.3 | 98 | Reason 3: D6 permits POINTER→POINTER | DEF | GFX | Y | D6 |
| S1-22 | S1.3 | 99 | Reason 4: H5 requires arbitrary portions to become one point | DEF | HUMAN | Y | H5 |
| S1-23 | S1.3 | 100 | Reason 5: H6 supplies the n+1 sample construction and a distinct row per scale | DEF | HUMAN | Y | H6 |
| S1-24 | S1.3 | 102 | The earlier model-side Q2 CONFLICT is resolved for the Core constructor represented here | DEF | DERIVED+LAW | Y | pointer-emission Q2 (historical) |
| S1-25 | S1.3 | 102 | Pass 4 reconciled the same binary constructor into the law-owned pointer draft, preserving the historical Q2 conflict as dated history and acceptance as absent | DEF | LAW | Y | root-touch-fold Pass 4 |
| S1-26 | S1.3 | 104 | Slot semantics are not chronological | FENCE | GFX | Y | D1 close reading |
| S1-27 | S1.3 | 104 | D1 close reading shows ref_A is the described subject in the six fixed examples | DEF | GFX | Y | graphics-close-reading |
| S1-28 | S1.3 | 104 | Pass 3 does not invent a universal semantic subject-selection algorithm | OPEN | OPEN | Y |  |
| S1-29 | S1.3 | 104 | Join(a,b) preserves the selected ordered operand pair | DEF | DERIVED | N |  |

### S2 — Arrival, root creation, root stability

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S2-01 | S2 | 108 | Arrive(v): L ↦ L ⌢ (WORD, v) — every successful word arrival lands | DEF | HUMAN | N | H3 (cited in S0/S7, not here) |
| S2-02 | S2 | 118 | H4 closes the prior structural boundary: ¬Seen_L(v) ⇒ Root_{L1}(v) = j | DEF | HUMAN | Y | H4 |
| S2-03 | S2 | 126 | The new WORD row is both the arriving occurrence and the root for that identity | DEF | HUMAN+DERIVED | R | H4 |
| S2-04 | S2 | 130 | If Seen_L(v), the earlier root remains stable: Root_{L1}(v) = Root_L(v) | THM | DERIVED | N | follows from Root = min; pass 2 lemma L3 |
| S2-05 | S2 | 136 | The new WORD row is another occurrence / more wire, not another lexical root | DEF | HUMAN+GFX | R | H1; D1 0003 |
| S2-06 | S2 | 136 | H1 requires the new occurrence to touch the stable root through S3.3 | DEF | HUMAN | Y | H1; S3.3 |
| S2-07 | S2 | 138 | No root table exists | FENCE | GFX+DERIVED | N | B10; S6 |
| S2-08 | S2 | 138 | G1 still decides what counts as the same word value; Pass 3 closes the structural branch, not the equality policy | OPEN | OPEN | Y | G1 |

### S3 — Readings (not stores)

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S3-01 | S3.1 | 145 | StarWords_L(v) = { i < \|L\| \| e_i = (WORD, v) } | DEF | DERIVED | N |  |
| S3-02 | S3.1 | 151 | Seen_L(v) ⟺ StarWords_L(v) ≠ ∅ | DEF | DERIVED | N |  |
| S3-03 | S3.1 | 159 | Root_L(v) = min StarWords_L(v) when seen | DEF | DERIVED | N | root-touch-fold pass-1 findings §1.1 (min notation is DERIVED, not dictated by H1) |
| S3-04 | S3.1 | 163 | These are reads, not tables | FENCE | DERIVED+GFX | N | B10 |
| S3-05 | S3.1 | 165 | Unseen arrival: its new WORD row becomes the root | DEF | HUMAN | N | H4 (restates S2) |
| S3-06 | S3.1 | 166 | Seen arrival: root remains the first WORD row | DEF | HUMAN+DERIVED | N | restates S2 |
| S3-07 | S3.1 | 167 | Every later WORD row remains a distinct occurrence | DEF | GFX+HUMAN | N | D1 0003; H1 |
| S3-08 | S3.1 | 169 | The full star formation includes WORD occurrences, root-touch Join rows, and later Join rows whose recursive participation includes those touches | DEF | DERIVED+GFX | N |  |
| S3-09 | S3.1 | 171 | Root and occurrence set are anchors/partial reads, not the formation; D5 says the star is not a point; A12/B9 depict many distinct passages and internal traffic | DEF | GFX | Y | D5, A12, B9 |
| S3-10 | S3.1 | 175 | Root_L(v) ≠ FullStar_L(v) for any repeated word whose formation includes later participation [box; STAR-1 in the Pass-4 artifact, unlabeled here] | FENCE | GFX+DERIVED | Y | D5, A12, B9; STAR-1 (star-projection-fidelity §1) |
| S3-11 | S3.1 | 183 | StarWords_L(v) ≠ FullStar_L(v) once participation beyond isolated WORD occurrences exists [box] | FENCE | GFX+DERIVED | Y | same |
| S3-12 | S3.1 | 187 | FullStar is a read concept over recorded passages/participation, not a stored Star row or side table | FENCE | GFX+DERIVED | N | B10; S6 |
| S3-13 | S3.2 | 191 | Order of WORD appends is the physical route through stars | DEF | GFX | Y | A4, B5, C2; Piece 8 |
| S3-14 | S3.2 | 191 | Because POINTER rows may interleave with WORD rows, the word route is the ordered WORD subsequence, not the entire row sequence treated as text | DEF | DERIVED | N |  |
| S3-15 | S3.2 | 196 | WordTrace(L) = (i_1,…,i_k), the WORD rows in order | DEF | DERIVED | N |  |
| S3-16 | S3.2 | 204 | ValueTrace(L) = (v_{i_1},…,v_{i_k}) | DEF | DERIVED | N |  |
| S3-17 | S3.2 | 207 | No sentence container is added | FENCE | GFX | N | B5, B10 |
| S3-18 | S3.2 | 207 | Adjacency does not fire Φ (emission Q3 CLOSED) | FENCE | LAW | Y | pointer-emission Q3 |
| S3-19 | S3.2 | 207 | Leftover adjacency is emission Q3 SPOKEN as arrival order on the wire (B5), not a stored relation — not accepted, not calculated | OPEN | LAW+GFX | Y | pointer-emission Q3; B5 |
| S3-20 | S3.3 | 220 | RootTouch(j, r) = Join(j, r) for pre-arrival root r and newly landed index j | DEF | HUMAN+DERIVED | R | H1 (cited in S2); “current HUMAN/MODEL law” at section end |
| S3-21 | S3.3 | 225 | D1 row 0004 is the fixed witness: 0004 = (POINTER, 0003, 0000) | DEF | GFX | Y | D1 |
| S3-22 | S3.3 | 231 | TOUCH and GROUND do not need different row constructors; they are different operand-selection roles of the same physical binary Join | THM | DERIVED | Y |  |
| S3-23 | S3.3 | 233 | The resulting touch row is itself Lace and may be used as an operand of later Join, as D1 row 0007 demonstrates | DEF | GFX+DERIVED | Y | D1 0007 |
| S3-24 | S3.3 | 235 | This retained RootTouch relation is not, by itself, a complete geometric description of “threads through the existing 3D star” (B7) | OPEN | GFX | Y | B7 |
| S3-25 | S3.3 | 235 | It records one lawful retained participation event under current HUMAN/MODEL law; full path/threading readout remains a derived fidelity problem over the retained history | DEF | HUMAN+DERIVED | Y |  |
| S3-26 | S3.4 | 239 | Every stored row index is an addressable Lace point | DEF | GFX | N | Graphic D |
| S3-27 | S3.4 | 241 | Reach_L(i) = {i} for WORD; {i} ∪ Reach(a) ∪ Reach(b) for (POINTER, a, b) | DEF | DERIVED | N |  |
| S3-28 | S3.4 | 252 | Reach is derived, never stored | FENCE | DERIVED | N |  |
| S3-29 | S3.4 | 254 | Reach is ancestry membership, not path multiplicity; D1 gives a bounded counterexample: two distinct paths 0010→0002→0000 and 0010→0009→0007→0004→0000, yet 0000 appears once in Reach(0010) | THM | DERIVED+GFX | Y | D1 |
| S3-30 | S3.4 | 270 | ReachMembership ≠ PathMultiplicity [box; PATH-1 in the Pass-4 artifact, unlabeled here] | THM | DERIVED+GFX | Y | PATH-1 (d1-path-audit §7) |
| S3-31 | S3.4 | 274 | Reach must not be substituted for the full star/route/threading structure shown by A8/A12/B9/C8 | FENCE | GFX | Y | A8, A12, B9, C8 |
| S3-32 | S3.4 | 274 | When path distinction matters, a derived read must preserve explicit ordered witness paths/frontiers; S3.6 does so without creating a second store | FENCE | DERIVED | R | S3.6 |
| S3-33 | S3.4 | 276 | A sample instance is a finite nonempty selection S = (s_1,…,s_n) of already-existing points, s_i < \|L\| | DEF | DERIVED | N |  |
| S3-34 | S3.4 | 283 | Its sample size is the selection cardinality \|S\| = n | DEF | HUMAN+DERIVED | R | H6 “sample size” |
| S3-35 | S3.4 | 289 | Sample size is not POINTER arity, not Reach cardinality, and not construction depth | FENCE | DERIVED | N |  |
| S3-36 | S3.4 | 291 | A grounded point for a sample is a Lace point whose recursive ancestry contains the selected sample points | DEF | DERIVED | N |  |
| S3-37 | S3.4 | 298 | Incremental ladder: P_1(S) = s_1; P_{n+1}(S) = Join(P_n(S), s_{n+1}) | DEF | HUMAN+DERIVED | R | H6 |
| S3-38 | S3.4 | 309 | For every extension from size n to n+1 one new POINTER row is appended; each successive grounded sample scale has its own Lace row | DEF | HUMAN | Y | H6 (“non-collapsing reading of H6”) |
| S3-39 | S3.4 | 311 | There is not one global “size-n” registry row | FENCE | DERIVED | Y |  |
| S3-40 | S3.4 | 311 | Two distinct sample instances of equal size may have distinct grounded points | DEF | DERIVED | N |  |
| S3-41 | S3.4 | 315 | The line is not restricted to one global left fold; Join(p_A, p_B) creates one new point whose reach includes both portions | DEF | DERIVED | N |  |
| S3-42 | S3.4 | 321 | D1 0007 and 0010 are fixed branched examples | DEF | GFX | Y | D1 |
| S3-43 | S3.4 | 323 | Different grounding trees remain different Lace history; the model does not canonicalize them merely because they reach the same leaves | FENCE | DERIVED | N |  |
| S3-44 | S3.5 | 327 | Later human rulings H7–H12 add a derived working surface distinct from Graphic-C projection | DEF | HUMAN | Y | H7–H12 |
| S3-45 | S3.5 | 332 | For the bounded contiguous-root-key candidate tested in Sampling Pass 2: S[n,t] = (r_{t−n+1},…,r_t), 1 ≤ n ≤ t+1 | DEF | LAB | Y | sampling-density-emergence Pass 2 |
| S3-46 | S3.5 | 336 | This is a derived read/computation, not a stored row family | FENCE | HUMAN+DERIVED | N | H10, H11 |
| S3-47 | S3.5 | 336 | It may be reconstructed locally around an anchor rather than materialized globally | DEF | LAB | N |  |
| S3-48 | S3.5 | 340 | Sampled observation does not imply retained POINTER append | FENCE | HUMAN+LAB | R | H8; sampling Pass 1 §11 O1/O3 |
| S3-49 | S3.5 | 341 | Recurrence/overlap can form multi-scale ridges across n | DEF | LAB | R | sampling Passes 2–4 |
| S3-50 | S3.5 | 342 | Structures at different sampling levels may later participate through ordinary binary Join | DEF | HUMAN | R | H12 |
| S3-51 | S3.5 | 343 | No n field is required in the POINTER schema by current evidence | FENCE | LAB+GFX | R | D2; sampling Pass 1 M5 |
| S3-52 | S3.5 | 344 | Exact recurrence is not the universal retention rule | FENCE | LAB | R | sampling Pass 5 |
| S3-53 | S3.5 | 345 | G1/tokenization still bounds exact root-key identity outside the bounded specimens | OPEN | OPEN | R | G1 |
| S3-54 | S3.5 | 351 | sampling evidence → [OPEN retention/materialization] → retained POINTER topology [box] | OPEN | OPEN | Y | RM-A |
| S3-55 | S3.5 | 359 | If a structure to be retained is only an ephemeral sample, the rule that grounds/resolves it into an addressable 1D operand is part of the same open boundary | OPEN | OPEN | Y | RM-A |
| S3-56 | S3.6 | 363 | Passes 3–5 map a star as a read anchor, not a stored table | DEF | HUMAN+LAB | Y | H9; sampling Passes 3–5 |
| S3-57 | S3.6 | 365 | A layered read may derive lexical root/occurrences/RootTouch, anchored pattern frontiers from the local sampling cone, retained POINTER witness paths, and neighboring-star hops with pattern witnesses | DEF | LAB | N |  |
| S3-58 | S3.6 | 372 | Flat transitive closure is not a sufficient result model because it saturates | FENCE | LAB | N |  |
| S3-59 | S3.6 | 372 | Search preserves frontiers and path witnesses | DEF | LAB | N |  |
| S3-60 | S3.6 | 377 | SearchHandle = (through, anchor, item); the tagged item may identify a lexical row, a pattern by n plus one exemplar WORD row, a retained POINTER target, or a neighboring star plus its via-pattern witness | DEF | LAB | N |  |
| S3-61 | S3.6 | 382 | The handle is disposable derived state, reconstructible from the immutable prefix named by through; not a Core row, cache authority or write interface | FENCE | LAB+DERIVED | N |  |
| S3-62 | S3.7 | 386 | π_κ : L → View_κ with no write-back View_κ → L | DEF | GFX+DERIVED | R | B11, C11 (cited later in the section) |
| S3-63 | S3.7 | 394 | The graphics constrain view fidelity but do not define one unique geometry, coordinate system, camera, crossing layout or embedding algorithm | OPEN | GFX | Y |  |
| S3-64 | S3.7 | 397 | Admissible family Π(L) = { π_κ(L) \| κ satisfies the claimed source-fidelity constraints } | DEF | DERIVED | N |  |
| S3-65 | S3.7 | 401 | H6 identifies recursive grounded points as later HUMAN/MODEL machinery behind the dot-to-dot N-dimensional representation | DEF | HUMAN | Y | H6 |
| S3-66 | S3.7 | 401 | Graphics C/D directly establish recursive participation and view-vs-store constraints | DEF | GFX | Y | C, D |
| S3-67 | S3.7 | 405 | The dots may be addressable WORD / POINTER points | DEF | DERIVED | Y | “Model-side interpretation” |
| S3-68 | S3.7 | 406 | Retained POINTER participation supplies a structural skeleton | DEF | DERIVED | Y |  |
| S3-69 | S3.7 | 407 | Ordered witness paths / path multiplicity must be preserved whenever a view claims to show distinct passes/routes/threading | FENCE | GFX+DERIVED | Y | A8, A12; PATH-1 |
| S3-70 | S3.7 | 408 | POINTER→POINTER supplies points-of-points / relations-among-relations | DEF | GFX | Y | D6, C7 |
| S3-71 | S3.7 | 409 | C6 dictionary/document/conversation/provenance names are route-family/view labels, not row kinds or stored dimension columns; their exact discriminator remains OPEN | OPEN | GFX+OPEN | Y | C6 |
| S3-72 | S3.7 | 410 | More independent recorded participation may support denser N-D projections | DEF | DERIVED | Y |  |
| S3-73 | S3.7 | 411 | No coordinates, dimension columns, route-family fields or N-D store are added to Core | FENCE | GFX | Y | C, D |
| S3-74 | S3.7 | 417 | B11/C11 directly forbid treating a flat node-edge graph as the full Lace: FlatGraphView(L) ≠ FullLaceStructure(L) [box; VIEW-1 in the Pass-4 artifact, unlabeled here] | FENCE | GFX | Y | B11, C11; VIEW-1 (star-projection-fidelity §6) |
| S3-75 | S3.7 | 421 | Graphic-C 2D projection is distinct from S3.5’s H7–H12 position×scale sampling surface: the former presents already-recorded participation; the latter is HUMAN/DERIVED discovery machinery | DEF | GFX+HUMAN | Y | H7–H12; Graphic C |

### S4 — Binary Join, sample grounding, emission

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S4-01 | S4.1 | 427 | Join(a,b): L ↦ L ⌢ (POINTER, a, b) for any two earlier Lace points | DEF | HUMAN+GFX | R | authority boundary paragraph below |
| S4-02 | S4.1 | 434 | Both operands are selected before the new row exists, so the new POINTER always references backward on the same line | THM | DERIVED | N |  |
| S4-03 | S4.1 | 440 | D1 0002 = Join(0000, 0001) | DEF | GFX | Y | D1 |
| S4-04 | S4.1 | 441 | D1 0004 = Join(0003, 0000) — root touch role | DEF | GFX | Y | D1 |
| S4-05 | S4.1 | 442 | D1 0006 = Join(0003, 0005) | DEF | GFX | Y | D1 |
| S4-06 | S4.1 | 443 | D1 0007 = Join(0006, 0004) | DEF | GFX | Y | D1 |
| S4-07 | S4.1 | 444 | D1 0009 = Join(0008, 0007) | DEF | GFX | Y | D1 |
| S4-08 | S4.1 | 445 | D1 0010 = Join(0009, 0002) | DEF | GFX | Y | D1 |
| S4-09 | S4.1 | 447 | One physical constructor, different selected operands / participation roles | DEF | DERIVED | N |  |
| S4-10 | S4.1 | 449 | D1/D2 directly witness the two-reference POINTER schema and D6 witnesses POINTER→POINTER recursion | DEF | GFX | Y | D1, D2, D6 |
| S4-11 | S4.1 | 449 | The universal binary Join(a,b) constructor is the current HUMAN/MODEL law built on those source constraints | DEF | HUMAN | Y |  |
| S4-12 | S4.1 | 449 | Graphic D by itself does not state a universal retain-when or say every arbitrary pair is automatically authorized for append | OPEN | GFX+OPEN | Y | RM-A |
| S4-13 | S4.2 | 453 | Incremental grounding ladder P_1 = s_1; P_{m+1} = Join(P_m, s_{m+1}), 1 ≤ m < n | DEF | HUMAN+DERIVED | R | H6 |
| S4-14 | S4.2 | 466 | P_n is one addressable point representing the selected sample through ancestry | THM | DERIVED | R |  |
| S4-15 | S4.2 | 472 | Theorem G — finite sample representability: every finite nonempty sample of existing points can be represented by one later point using repeated binary Join; authority DERIVED from the binary constructor plus HUMAN H5/H6 premises; D1/D2/D6 are bounded witnesses; the graphics do not state the universal theorem | THM | DERIVED+HUMAN | Y | H5, H6; D1, D2, D6 |
| S4-16 | S4.2 | 476 | Proof base n = 1: the selected row is already one addressable point | THM | DERIVED | Y |  |
| S4-17 | S4.2 | 496 | Proof step: Reach(P_{n+1}) = {P_{n+1}} ∪ Reach(P_n) ∪ Reach(s_{n+1}), so the new point contains the prior grounded sample plus the newly selected point ∎ | THM | DERIVED | Y |  |
| S4-18 | S4.3 | 500 | Take any finite prefix L_0 with rows 0..m−1; select those rows as the grounding sample in index order and build the n+1 ladder | DEF | DERIVED | Y | “DERIVED” stated at section end |
| S4-19 | S4.3 | 505 | The final point P_m reaches every original row of L_0 and every intermediate Join row created while grounding, because each later Join references the prior grounded point | THM | DERIVED | Y |  |
| S4-20 | S4.3 | 507 | Therefore the final point covers the complete resulting Lace of that grounding construction | THM | DERIVED | Y |  |
| S4-21 | S4.3 | 509 | D1 row 0010 is a bounded source witness: Reach_{D1}(0010) = {0000,…,0010}; a bounded GFX witness, while the universal construction is DERIVED from the HUMAN premises, not Graphic-D prose | DEF | GFX | Y | D1 |
| S4-22 | S4.4 | 525 | If unseen in L_0, the new WORD row becomes the root | DEF | HUMAN | R | H4 (restates S2) |
| S4-23 | S4.4 | 533 | If seen, append Join(j, Root_{L0}(v)) as the root-touch | DEF | HUMAN | R | H1 (restates S3.3) |
| S4-24 | S4.4 | 535 | Grounding then uses the same Join constructor on whatever finite sample/portions are selected for point formation | DEF | DERIVED | N |  |
| S4-25 | S4.5 | 541 | successful arrival lands? — CLOSED | DEF | HUMAN | N | H3 (not named in the row) |
| S4-26 | S4.5 | 542 | unseen arrival becomes root? — CLOSED by H4 | DEF | HUMAN | Y | H4 |
| S4-27 | S4.5 | 543 | seen occurrence touches root? — CLOSED by H1 | DEF | HUMAN | Y | H1 |
| S4-28 | S4.5 | 544 | physical POINTER row shape? — CLOSED in this model: binary Join | DEF | HUMAN+GFX | N |  |
| S4-29 | S4.5 | 545 | POINTER→POINTER? — CLOSED | DEF | GFX | N | D6 |
| S4-30 | S4.5 | 546 | arbitrary finite sample representable by one point? — PROVED | THM | DERIVED | R | Theorem G |
| S4-31 | S4.5 | 547 | one new row for n+1 sample extension? — PROVED / H6-grounded | THM | HUMAN+DERIVED | Y | H6 |
| S4-32 | S4.5 | 548 | one global row per cardinality? — REFUSED, collapse | FENCE | DERIVED | R | S3.4 |
| S4-33 | S4.5 | 549 | N-D requires second store? — REFUSED, projection only | FENCE | GFX | N | S3.7 |
| S4-34 | S4.5 | 550 | exact sampling-derived retention/materialization rule? — [GAP]: sampling discovers structure, but the universal retain-when / materialize-operand condition is not established | OPEN | OPEN | Y | RM-A |
| S4-35 | S4.5 | 551 | G1 word equality — OPEN | OPEN | OPEN | Y | G1 |
| S4-36 | S4.5 | 553 | The remaining question is no longer arbitrary relation provenance; once retained operands are addressable, append is mechanically determined by binary Join | THM | DERIVED | N |  |
| S4-37 | S4.5 | 553 | What remains open is when sampling-derived structure is retained and how an ephemeral sampled structure becomes addressable when retention requires it | OPEN | OPEN | Y | RM-A |
| S4-38 | S4.6 | 557 | STEP = LAND; {BECOME ROOT if unseen \| ROOT TOUCH if seen}; SampleRead; [Retain/Materialize OPEN]; Continue — split between ruled append acts and derived sampling | DEF | HUMAN+DERIVED+OPEN | Y | H1, H4, H7–H12; RM-A |
| S4-39 | S4.6 | 573 | SampleRead is derived working machinery, not a second store | FENCE | HUMAN+DERIVED | N | H11 |
| S4-40 | S4.6 | 573 | When retention is warranted and operands are addressable, the physical write uses the same binary Join / repeated-grounding construction | DEF | DERIVED | N |  |
| S4-41 | S4.6 | 575 | This model does not define a universal Retain/Materialize function | OPEN | OPEN | Y | RM-A |
| S4-42 | S4.6 | 577 | Refused substitute: every sampled cell | FENCE | LAB | N | sampling Pass 5; lab-source Pass 6 docket |
| S4-43 | S4.6 | 578 | Refused substitute: every adjacent pair | FENCE | LAB | N | same |
| S4-44 | S4.6 | 579 | Refused substitute: exact-repeat-only | FENCE | LAB | N | same |
| S4-45 | S4.6 | 580 | Refused substitute: first-seen-every-cell | FENCE | LAB | N | same |
| S4-46 | S4.6 | 581 | Refused substitute: cheapest contiguous grounding | FENCE | LAB | N | same |
| S4-47 | S4.6 | 582 | Refused substitute: semantic similarity / learned chooser | FENCE | HUMAN+LAB | N | H7, H8 |
| S4-48 | S4.6 | 584 | RootTouch remains the closed mandatory special case | DEF | HUMAN | N | H1 |

### S5 — Contracts I / II / III

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S5-01 | S5 | 590 | Contract I Core: carrier L, LAND/Arrive, root creation, root TOUCH, binary Join, finite-sample GROUND, readings; Pieces 1, 2, 4, 5, 6, 7, 8, 11, 14, 15; must not hold a Star/root/sample registry table, holder oil or second store | DEF | DERIVED | Y | manifest Pieces |
| S5-02 | S5 | 591 | Contract II Arrival: thin ordered feed; every successful arrival lands through Arrive; zero own store; Piece 3, 9–10 as use of I; must not hold a lexicon/document store at the edge | DEF | DERIVED | Y | manifest Pieces |
| S5-03 | S5 | 592 | Contract III Projection: selected π_κ read-only view; Piece 13; views of 7, 12, 15; Graphics A–C as views; must not write back or treat one rendering policy as the unique stored geometry | DEF | DERIVED | Y | manifest Pieces; Graphics A–C |
| S5-04 | S5 | 594 | Piece 12 (dimension) is a reading of I, not Contract IV | DEF | DERIVED | Y | Piece 12 |
| S5-05 | S5 | 594 | The H7–H12 2D sampling surface is derived working state rather than a new persistent contract/store; it is distinct from Contract III projection | FENCE | HUMAN+DERIVED | Y | H7–H12 |
| S5-06 | S5 | 596 | No Core write-query / delete / transaction / multi-Lace interface is supplied by Hands | FENCE | GFX | Y | Hands (Graphics) |
| S5-07 | S5 | 596 | The mapped star-search expansion operations are derived read operations only | FENCE | LAB+DERIVED | N | S3.6 |

### S6 — Forbidden morphisms

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S6-01 | S6 | 602 | The prohibitions come from different authority levels and must not be flattened into one “Graphic D says” list | FENCE | DERIVED | Y | AUTH-1 (authority matrix §12) |
| S6-02 | S6.1 | 608 | Not a Core morphism: delete, rewrite, reset, cut, index reuse | FENCE | GFX | Y | B10/B11, C11, D; Pieces 1, 6, 13, 14 |
| S6-03 | S6.1 | 609 | Not a Core morphism: intern / collapse many occurrences into one counted row | FENCE | GFX | Y | same |
| S6-04 | S6.1 | 610 | Not a Core morphism: star table, stored-meaning table, embedding store, N-D store beside the line | FENCE | GFX | Y | same |
| S6-05 | S6.1 | 611 | Not a Core morphism: graph DB / edge table outside L used as independent authority | FENCE | GFX | Y | same |
| S6-06 | S6.1 | 612 | Not a Core morphism: second Lace / second row-kind schema | FENCE | GFX | Y | same |
| S6-07 | S6.1 | 613 | Not a Core morphism: write-back from any projection | FENCE | GFX | Y | same |
| S6-08 | S6.2 | 619 | Forbidden by later law: label split/merge/create implemented as mutate-WORD | FENCE | LAW | Y | “later project law” |
| S6-09 | S6.2 | 620 | Forbidden by open-boundary discipline: filling the open retention/materialization rule from Shadow Anchor / OBS / unrelated conceptual machinery | FENCE | LAW+OPEN | Y | RM-A |
| S6-10 | S6.2 | 621 | Forbidden by later law: treating an ASCII companion or emission DRAFT commit as Hands acceptance | FENCE | LAW | Y | live law |
| S6-11 | S6.2 | 622 | Forbidden by later law: adding src/ or Cargo under color of this document | FENCE | LAW | Y | AGENTS.md |

### S7 — Alignment note

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S7-01 | S7 | 628 | L append-only — Graphic D — unchanged | DEF | GFX | Y | Graphic D |
| S7-02 | S7 | 629 | Arrive WORD — H3 + Piece 2 — every successful word arrival lands | DEF | HUMAN+GFX | Y | H3; Piece 2 |
| S7-03 | S7 | 630 | unseen becomes root — H4 + first-occurrence star behavior — closed structurally; G1 equality still open | DEF | HUMAN+GFX | Y | H4; A2 |
| S7-04 | S7 | 631 | seen root stable — H1 + D1 0003/0004 — closed | DEF | HUMAN+GFX | Y | H1; D1 |
| S7-05 | S7 | 632 | RootTouch — H1 + D1 0004 — Join(occurrence, root) | DEF | HUMAN+GFX | Y | H1; D1 |
| S7-06 | S7 | 633 | binary POINTER — D2 + six D1 rows + H5/H6 — one physical Join constructor in this model | DEF | GFX+HUMAN | Y | D2, D1; H5, H6 |
| S7-07 | S7 | 634 | POINTER→POINTER — D6 / C7 — recursive grounding | DEF | GFX | Y | D6, C7 |
| S7-08 | S7 | 635 | sample size — H6 — selected-point cardinality, not pointer arity or Reach size | DEF | HUMAN | Y | H6 |
| S7-09 | S7 | 636 | n+1 row — H6 — each sample extension appends one Join row | DEF | HUMAN | Y | H6 |
| S7-10 | S7 | 637 | arbitrary finite portion to one point — H5 — proved by repeated Join | THM | HUMAN+DERIVED | Y | H5; Theorem G |
| S7-11 | S7 | 638 | whole-prefix point — H2 + D1 0010 — constructive theorem + bounded witness | THM | HUMAN+DERIVED+GFX | Y | H2; D1 0010 |
| S7-12 | S7 | 639 | N-D dot view — H6 + C5/C7/C8/C11 — projection of recursive points, not store | DEF | HUMAN+GFX | Y | H6; C5, C7, C8, C11 |
| S7-13 | S7 | 640 | multiple grouping trees — Rule Zero / no collapse — retained as distinct Lace history; no canonicalization required by current sources | DEF | LAW+DERIVED | Y | Rule Zero |
| S7-14 | S7 | 641 | sampling-derived relationship discovery — H7–H12 — current; no arbitrary semantic chooser is the intended model | DEF | HUMAN | Y | H7–H12 |
| S7-15 | S7 | 642 | retention/materialization condition — not fully stated — OPEN: exact retain-when rule and ephemeral-sample grounding boundary | OPEN | OPEN | Y | RM-A |
| S7-16 | S7 | 643 | G1 identity — existing open — still open | OPEN | OPEN | Y | G1 |
| S7-17 | S7 | 644 | pointer-emission.md — Sampling Pass 6 reconciled law surface — binary Join + sampling architecture current; retention/materialization GAP; not accepted | DEF | LAW | Y | pointer-emission |
| S7-18 | S7 | 646 | No second store, sample registry, dimension table or new row kind is introduced | FENCE | GFX+LAW | N | S6 |

### S8 — Steward receipt

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S8-01 | S8 | 652 | Current campaign: Sampling Passes 1–5 EXECUTED + Pass 6 reconciliation current; ROOT / TOUCH / FOLD provenance audit retained as history | DEF | LAB | Y | sampling campaign; root-touch-fold |
| S8-02 | S8 | 653 | Successful arrival — LAND as WORD | DEF | HUMAN | R | H3; authority note |
| S8-03 | S8 | 654 | Unseen word — new WORD becomes root | DEF | HUMAN | R | H4 |
| S8-04 | S8 | 655 | Seen word — new WORD + RootTouch Join | DEF | HUMAN | R | H1 |
| S8-05 | S8 | 656 | Physical POINTER constructor — binary Join(a,b) | DEF | HUMAN+GFX | R |  |
| S8-06 | S8 | 657 | RootTouch constructor — same Join, root-touch operand role | DEF | DERIVED | R | S3.3 |
| S8-07 | S8 | 658 | Grounding — repeated Join over selected finite sample | DEF | HUMAN+DERIVED | R | H5, H6 |
| S8-08 | S8 | 659 | Finite sample representability — PROVED | THM | DERIVED | R | Theorem G |
| S8-09 | S8 | 660 | n+1 sample extension — one new POINTER row | DEF | HUMAN | R | H6 |
| S8-10 | S8 | 661 | D1 replay — all six POINTERs fit Join | THM | GFX+DERIVED | Y | D1; S4.1 table |
| S8-11 | S8 | 662 | Whole-prefix covering point — constructively proved; D1 0010 bounded witness | THM | DERIVED+GFX | Y | S4.3; D1 |
| S8-12 | S8 | 663 | Sample size — selected-point cardinality | DEF | HUMAN | R | H6 |
| S8-13 | S8 | 664 | Global size-n registry row — refused | FENCE | DERIVED | R | S3.4 |
| S8-14 | S8 | 665 | N-D — projection of recursive points-of-points | DEF | GFX+HUMAN | R | S3.7 |
| S8-15 | S8 | 666 | Remaining retention issue — exact sampling-derived retain/materialize condition; ephemeral sample → addressable operand when needed | OPEN | OPEN | R | RM-A |
| S8-16 | S8 | 667 | G1 word identity — OPEN | OPEN | OPEN | Y | G1 |
| S8-17 | S8 | 668 | pointer-emission.md — Sampling Pass 6 reconciled draft / not accepted | DEF | LAW | Y | pointer-emission |
| S8-18 | S8 | 669 | src/ — not authorized | FENCE | LAW | Y | AGENTS.md |
| S8-19 | S8 | 671 | Steward tests (8): no old row rewritten; all Join refs backward; every grounded point is Lace; repeated Join grounds arbitrary finite portions; sampled observation distinct from retained append; sampling surface derived and distinct from N-D projection; search read-only/disposable; the retention rule is not invented | THM | DERIVED | R | S1–S4; pass 2 lemma L2 |
| S8-20 | S8 | 673 | Authority note: this receipt summarizes a mixed court; GFX facts, HUMAN rulings, DERIVED theorems and OPEN boundaries remain separately identified in S7 and the Pass-4 authority matrix | DEF | LAW | Y | S7; authority matrix |
| S8-21 | S8 | 675 | Steward line: tie two existing parts with a new piece of the same lace; that tie is itself something later lace can tie through; repeat and a whole chosen portion becomes one point without any part disappearing | THM | HUMAN+DERIVED | R | S4.2, S4.3 (restates) |

### S9 — Read devices

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S9-01 | S9 | 685 | The canonical graphics say “Meaning does not exist” and repeatedly forbid stored semantic meaning | DEF | GFX | Y | Graphic A |
| S9-02 | S9 | 685 | Current project law treats HCC-A Meaning as holder/device-local conceptual state outside Graphic D | DEF | LAW | Y | live law |
| S9-03 | S9 | 689 | HCC local Meaning ∉ L [box] | FENCE | OVERLAY+GFX | Y |  |
| S9-04 | S9 | 693 | Nothing in S9 reinterprets the strand as storing semantic meaning | FENCE | GFX | Y |  |
| S9-05 | S9.1 | 697 | A behavioral read device is D_θ = (Q, G, Ω, Δ, ω), θ ∈ Θ | DEF | OVERLAY | N |  |
| S9-06 | S9.1 | 709 | Q is mutable device-local state; G explicit external input not claimed derivable from Lace; Ω a pure read over the prefix; Δ updates local state and returns typed output; ω exposes witness/provenance; θ fixed/slow parameters, not authoritative Lace state | DEF | OVERLAY | N |  |
| S9-07 | S9.1 | 716 | Step equations: o_t = Ω_θ(L_{n_t}, q_t, g_t); (q_{t+1}, y_t) = Δ_θ(q_t, o_t, g_t); w_t = ω_θ(y_t, o_t, g_t) | DEF | OVERLAY | N |  |
| S9-08 | S9.1 | 736 | Output classes (assertion, diagnosis, request, behavior, no-output) are device output classes, not Graphic-D row kinds | FENCE | OVERLAY+GFX | N |  |
| S9-09 | S9.2 | 740 | Not every behavioral-source input is guaranteed to live in Lace; L_{n_t} and g_t ∈ G are kept distinct | DEF | OVERLAY | N |  |
| S9-10 | S9.2 | 756 | Pressure examples: HCC-A Reality/Interface state may exceed the prefix; Coffee Cup Trajectory depends on time and intervention affordances; Water may depend on another holder’s acknowledgement or live pressure | DEF | OVERLAY | Y | conceptual reference sources |
| S9-11 | S9.2 | 765 | not in Lace ⇏ invalid | FENCE | OVERLAY | N |  |
| S9-12 | S9.2 | 770 | Every claim must distinguish Lace-derived, external, local and unknown basis | FENCE | OVERLAY | N |  |
| S9-13 | S9.3 | 779 | Select_{L_n}(i) = e_i, 0 ≤ i < n | DEF | DERIVED | N |  |
| S9-14 | S9.3 | 787 | Fold_{L_n}(f, s_0) — ordered prefix fold | DEF | DERIVED | N |  |
| S9-15 | S9.3 | 792 | Higher readings remain derived: finite-set read = repeated Select; root/star = current root/occurrence/participation mathematics; Reach = recursive selection; position×scale = S3.5; frontier = S3.6; projection = S3.7 / Contract III | DEF | DERIVED | R | S3.5–S3.7 |
| S9-16 | S9.3 | 774 | This section names mathematical read forms, not a new Core query API; no new store is introduced | FENCE | DERIVED | Y |  |
| S9-17 | S9.4 | 805 | A device observation is o = (v, ν): observed result plus sufficient replayable provenance | DEF | OVERLAY | N |  |
| S9-18 | S9.4 | 813 | ν may use existing disposable prefix / SearchHandle machinery | DEF | OVERLAY | R | S3.6 |
| S9-19 | S9.4 | 815 | ν is not authoritative history | FENCE | OVERLAY | N |  |
| S9-20 | S9.5 | 819 | WAtom_n = Lace(i) ⊎ LacePath(p) ⊎ External(e) ⊎ Local(ℓ) ⊎ Unknown(u) | DEF | OVERLAY | N |  |
| S9-21 | S9.5 | 835 | Validity: Lace(i) ⇒ 0 ≤ i < n, and every index in LacePath(p) lies in the named prefix | DEF | OVERLAY | N |  |
| S9-22 | S9.5 | 845 | A witness is finite: w ∈ P_f(WAtom_n) | DEF | OVERLAY | N |  |
| S9-23 | S9.5 | 853 | Atom interpretation: Lace(i) pointable retained row; LacePath(p) replayable path; External(e) pointable non-Lace evidence; Local(ℓ) holder/device-local state; Unknown(u) required evidence absent or unresolved | DEF | OVERLAY | N |  |
| S9-24 | S9.5 | 859 | This permits mixed evidence without laundering external or local state into Lace | FENCE | OVERLAY | N |  |
| S9-25 | S9.6 | 863 | Device-only step T_{θ,g}(L_n, q) = (L_n, q′, y, w) with o, (q′, y), w as in S9.1 | DEF | OVERLAY | N |  |
| S9-26 | S9.6 | 889 | RD-1: π_L ∘ T_{θ,g} = π_L [box], therefore L_n′ = L_n [box] for the device step alone | THM | DERIVED | Y |  |
| S9-27 | S9.6 | 905 | Proof: Ω is read-only; Δ has codomain Q×Y; ω has witness codomain; none has authoritative Lace state in its codomain; the first component of T is exactly L_n; finite composition preserves the identity ∎ | THM | DERIVED | Y |  |
| S9-28 | S9.6 | 909 | This is a theorem of the mathematical type separation; it is not evidence that future code obeys it | FENCE | DERIVED | Y |  |
| S9-29 | S9.7 | 913 | A device may affect the external world or request action: (L_n, q, R) → (L_n, q′, R′) | DEF | OVERLAY | N |  |
| S9-30 | S9.7 | 921 | A later external event may become a new input and pass through the governed growth path Arrive / RootTouch / [lawful retention if separately established] → L_{n+k} | DEF | OVERLAY+HUMAN | R | S2, S3.3; RM-A |
| S9-31 | S9.7 | 936 | behavioral feedback ≠ rewrite of prior Lace | THM | DERIVED | Y |  |
| S9-32 | S9.8 | 943 | Device output has no automatic retention authority | FENCE | LAW+OPEN | N | RM-A |
| S9-33 | S9.8 | 963 | Meaning, Emotion, Identity, Behavior, Impact, Aftermath, OBS, DELTA, UNK, INVALID, Rapids, Delta, crossability do not become Join or another retained Lace section merely because a device computes them | FENCE | OVERLAY+OPEN | N |  |
| S9-34 | S9.8 | 969 | RM-A retain-when = [OPEN] [box] | OPEN | OPEN | Y | RM-A |
| S9-35 | S9.8 | 973 | S9 supplies no candidate answer | FENCE | OPEN | Y |  |
| S9-36 | S9.9 | 979 | HCC-A requires stateful local interpretation beside a separately preserved structural/evidence path, plus observable behavior and external feedback | DEF | OVERLAY | Y | hcc-a-systems-manifest |
| S9-37 | S9.9 | 980 | Coffee Cup requires local causal-stage/aftermath state and explicit external time/context so index order is not mistaken for elapsed time; Impact evidence must remain pointable after Aftermath | DEF | OVERLAY | Y | coffee-cup-systems-manifest |
| S9-38 | S9.9 | 981 | Water / Dual Proofing requires pointability, explicit missing evidence, separate local inventories and routing outputs without equating OBS addressability with a Graphic-D POINTER | DEF | OVERLAY | Y | water-systems-manifest |
| S9-39 | S9.9 | 985 | These are pressures on the generic interface; they do not establish one combined H×C×W runtime | FENCE | OVERLAY | N |  |
| S9-40 | S9.10 | 989 | docs/clock/system-mathematical-model.md remains useful for candidate behavioral notation but does not govern current Core mathematics | FENCE | LAW | Y | clock/system-mathematical-model (HISTORICAL header) |
| S9-41 | S9.10 | 993 | HCC parallel RIC/PFC and S0–S7 source mechanisms remain reusable [“S0–S7” here are HCC phases, colliding with model sections] | DEF | OVERLAY | N | hcc-a-systems-manifest S0–S7 phases |
| S9-42 | S9.10 | 994 | Coffee Cup five-stage chain remains reusable | DEF | OVERLAY | N |  |
| S9-43 | S9.10 | 995 | The monotone trajectory-window set equation is a source-faithful device lift, not a source-supplied equation | DEF | OVERLAY | Y |  |
| S9-44 | S9.10 | 996 | Water S0–S4 and F1–F5 source mechanisms remain reusable [“S0–S4” here are Water stages, colliding with model sections] | DEF | OVERLAY | N | water-systems-manifest |
| S9-45 | S9.10 | 997 | Historical H×C×W co-presence products remain hypotheses | OPEN | OVERLAY | N |  |
| S9-46 | S9.10 | 998 | Old Core claims that binary POINTER arity is open or that broad participation/emission is the active hole are STALE-CORE and may not migrate here | FENCE | LAW | Y |  |
| S9-47 | S9.10 | 1000 | Current S1–S8 win every Core conflict | FENCE | LAW | Y |  |
| S9-48 | S9.11 | 1006 | S9 does not define: full Q, G, Y, θ for HCC-A | OPEN | OPEN | Y |  |
| S9-49 | S9.11 | 1007 | S9 does not define: full Q, G, Y, θ for Coffee Cup | OPEN | OPEN | Y |  |
| S9-50 | S9.11 | 1008 | S9 does not define: full Q, G, Y, θ for Water | OPEN | OPEN | Y |  |
| S9-51 | S9.11 | 1009 | S9 does not define: any cross-device composition | OPEN | OPEN | Y |  |
| S9-52 | S9.11 | 1010 | S9 does not define: source-specific witness admissibility beyond the generic algebra | OPEN | OPEN | Y |  |
| S9-53 | S9.11 | 1011 | S9 does not define: any concrete device implementation | OPEN | OPEN | Y |  |
| S9-54 | S9.11 | 1012 | S9 does not define: any performance or carrier choice | OPEN | OPEN | Y |  |
| S9-55 | S9.11 | 1013 | S9 does not define: RM-A | OPEN | OPEN | Y |  |
| S9-56 | S9.11 | 1014 | S9 does not define: G1 word identity | OPEN | OPEN | Y |  |
| S9-57 | S9.11 | 1015 | S9 does not define: pointer-draft acceptance | OPEN | OPEN | Y |  |
| S9-58 | S9.12 | 1021 | DEVICE ALGEBRA SOUND WITH OPENS [box] | UNCLASSIFIED | LAB | R | BRD Pass 1 verdict |
| S9-59 | S9.12 | 1027 | READ-ONLY SEPARATION PROVED [box] | UNCLASSIFIED | LAB | R | restates RD-1 |
| S9-60 | S9.12 | 1033 | WITNESS ALGEBRA SUFFICIENT FOR PASS-1 PRESSURE SET [box] | UNCLASSIFIED | LAB | R | BRD Pass 1 source-pressure ledger |
| S9-61 | S9.12 | 1037 | Full source-specific behavioral devices are deliberately deferred | OPEN | OPEN | Y |  |

### S10 — Observability

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S10-01 | S10 | 1046 | S10 is an epistemic/descriptive court layered above S9: what a device may claim to identify from Lace, how mixed provenance stays visible, which source-specific shapes must be preserved before full devices are written | DEF | OVERLAY | Y |  |
| S10-02 | S10.1 | 1053 | Σ_see = {SEE-L, SEE-G, SEE-Q, SEE-H, SEE-CF, SEE-U} | DEF | OVERLAY | N |  |
| S10-03 | S10.1 | 1067 | Stamp meanings: SEE-L identifiable from the prefix by lawful reads; SEE-G requires external/context info; SEE-Q holder/device-local state; SEE-H multi-holder pairing; SEE-CF counterfactual/model assumptions; SEE-U unresolved/source-open/missing evidence | DEF | OVERLAY | N |  |
| S10-04 | S10.1 | 1074 | These are classification stamps, not runtime types or storage classes | FENCE | OVERLAY | N |  |
| S10-05 | S10.1 | 1076 | A quantity may carry several stamps | DEF | OVERLAY | N |  |
| S10-06 | S10.2 | 1080 | Admissible descriptive world X = (L_n, q, g, h, m) | DEF | OVERLAY | N |  |
| S10-07 | S10.2 | 1086 | z is Lace-identifiable on 𝒳 iff there is a total f with z(X) = f(π_L(X)) for all X ∈ 𝒳 | DEF | OVERLAY | N |  |
| S10-08 | S10.2 | 1094 | Equivalently z is constant on every fiber of π_L | THM | DERIVED | N |  |
| S10-09 | S10.3 | 1116 | OBS-1: if admissible X, X′ have π_L(X) = π_L(X′) but z(X) ≠ z(X′), no total Lace-only function identifies z over that set; z ∉ Func(L) at the claimed scope [box] | THM | DERIVED | Y |  |
| S10-10 | S10.3 | 1133 | Proof: a single f(L_n) cannot equal two distinct values for the same L_n ∎ | THM | DERIVED | Y |  |
| S10-11 | S10.3 | 1135 | OBS-1 limits inference strength; it does not deny that Lace may be relevant evidence for z | FENCE | DERIVED | Y |  |
| S10-12 | S10.4 | 1141 | HCC-A witness: the source permits the same architecture with different parameters and parallel RIC/PFC; holding Lace evidence fixed while varying priors, priority stack, pruning/arbitration or local state changes Story/Meaning/Emotion/Identity/Behavior, so those are not functions of Lace alone | THM | OVERLAY+DERIVED | Y | hcc-a-systems-manifest |
| S10-13 | S10.4 | 1155 | Coffee Cup witness: the same retained history coexists with different current time, intervention capability, constraints and aftermath; Trajectory is a shrinking window under time and Aftermath is causal later, so the control window and aftermath are not functions of Lace alone | THM | OVERLAY+DERIVED | Y | coffee-cup-systems-manifest |
| S10-14 | S10.4 | 1167 | Water witness: the same shared prefix coexists with different OBS inventories, acknowledgement, UNK and live pressure; the source requires separate inventories and explicit pairing, so DELTA/crossing/comprehension are not functions of Lace alone | THM | OVERLAY+DERIVED | Y | water-systems-manifest |
| S10-15 | S10.5 | 1181 | w(y) = S_L(y) ⊎ S_G(y) ⊎ S_Q(y) ⊎ S_H(y) ⊎ S_CF(y) ⊎ S_U(y) | DEF | OVERLAY | N | S9.5 |
| S10-16 | S10.5 | 1199 | ⊎ is a bookkeeping separation of provenance classes, not a physical storage partition | FENCE | OVERLAY | N |  |
| S10-17 | S10.6 | 1209 | EP-1: if y claims a Lace-grounded proposition there must exist finite nonempty S_L(y) ⊆ LacePart(ν) sufficient to replay/check the claim under the declared read rule; ClaimsLace(y) ⇒ ∃ S_L(y) ≠ ∅ [box] | FENCE | OVERLAY | N |  |
| S10-18 | S10.6 | 1229 | All additional dependence on external/local/multi-holder/counterfactual/open state is separately stamped | FENCE | OVERLAY | N | S10.1 |
| S10-19 | S10.6 | 1231 | EP-1 does not require every output to copy all input provenance | DEF | OVERLAY | N |  |
| S10-20 | S10.7 | 1235 | Where a source requires several holders, Q = Q_shared × ∏_{h∈H} Q_h | DEF | OVERLAY | N |  |
| S10-21 | S10.7 | 1245 | Holders may share one Lace prefix L_n while retaining distinct Q_h, G_h, ω_h | DEF | OVERLAY | N |  |
| S10-22 | S10.7 | 1257 | This does not create holder-specific authoritative Laces | FENCE | OVERLAY+GFX | N | S6 |
| S10-23 | S10.7 | 1259 | A proposition enters Q_shared only through an explicit source/device rule establishing sharedness | FENCE | OVERLAY | N |  |
| S10-24 | S10.7 | 1261 | Water: one holder’s pointable OBS does not become shared merely because both parties can access the same Lace | FENCE | OVERLAY | Y | water-systems-manifest |
| S10-25 | S10.7 | 1263 | HCC-A: shared structural evidence does not transfer Meaning/Emotion/Identity | FENCE | OVERLAY | Y | hcc-a-systems-manifest |
| S10-26 | S10.8 | 1267 | Coffee Cup requires claims about what could still be altered | DEF | OVERLAY | Y | coffee-cup-systems-manifest |
| S10-27 | S10.8 | 1272 | CFClaim = (X, w_X, 𝒜, ℳ, φ): observed/context state, historical evidence, admitted intervention set, model/assumption set, counterfactual proposition | DEF | OVERLAY | N |  |
| S10-28 | S10.8 | 1284 | A counterfactual result cannot be stamped SEE-L merely because Lace supplied part of X | FENCE | OVERLAY | N |  |
| S10-29 | S10.9 | 1288 | S9’s transition/output map remains sufficient for pure descriptive readout: Δ(q, o, g) = (q, y) | THM | DERIVED | N | S9.1 |
| S10-30 | S10.9 | 1299 | HCC Six-Act diagnostics, Coffee Cup strategic causal tableau and Water location/routing diagnosis may return typed descriptions without requiring q′ ≠ q | DEF | OVERLAY | Y | the three conceptual sources |
| S10-31 | S10.9 | 1301 | No extra generic output field is added to S9 | FENCE | OVERLAY | N |  |
| S10-32 | S10.10 | 1305 | A faithful later HCC device must preserve parallel RIC/PFC fork + recurrent local compiler + parameter family + Six-Act diagnostic overlay + representation layer | FENCE | OVERLAY | N | hcc-a-systems-manifest |
| S10-33 | S10.10 | 1319 | These are not one state machine | FENCE | OVERLAY | N |  |
| S10-34 | S10.10 | 1324 | Six-Act diagnostic ≠ S0–S7 runtime flow [“S0–S7” are HCC phases, colliding with model sections] | FENCE | OVERLAY | N | hcc-a-systems-manifest S0–S7 |
| S10-35 | S10.10 | 1329 | The structural evidence path must remain replayable independently of prior-conditioned interpretation | FENCE | OVERLAY | N |  |
| S10-36 | S10.11 | 1333 | A faithful later Cup device must not reduce the source to one active stage label; the five causal roles remain simultaneously available for strategic literacy | FENCE | OVERLAY | Y | coffee-cup-systems-manifest |
| S10-37 | S10.11 | 1340 | Candidate tableau 𝒞(e,t) = (C_e, R_e, T_e(t), I_e, A_e(t)): enabling-condition field, initiating boundary, trajectory/control with explicit time/context/counterfactual assumptions, realized outcome + witness, aftermath effect | DEF | OVERLAY | N |  |
| S10-38 | S10.11 | 1352 | This is a device lift, not a source-supplied equation | DEF | OVERLAY | Y |  |
| S10-39 | S10.11 | 1354 | Unknown/future coordinates may remain unresolved; “hold all five” does not authorize invented outcomes | FENCE | OVERLAY | N |  |
| S10-40 | S10.12 | 1358 | A faithful later Water device must preserve 𝒲 = (𝒫, ℛ, ℬ): Proof Ledger, River Proofing, Delta Bridge | DEF | OVERLAY | N | water-systems-manifest |
| S10-41 | S10.12 | 1371 | The Bridge translates between systems; it does not erase them | FENCE | OVERLAY | N |  |
| S10-42 | S10.12 | 1373 | Separate holder inventories remain holder-indexed | FENCE | OVERLAY | N |  |
| S10-43 | S10.12 | 1375 | OBS pointability remains distinct from Graphic-D POINTER identity | FENCE | OVERLAY+GFX | N |  |
| S10-44 | S10.12 | 1377 | Source-open: OBS pointer format; INVALID matcher; UNK operating rule | OPEN | OPEN | Y | water-systems-manifest; S12.13 |
| S10-45 | S10.13 | 1388 | The only valid shared abstraction across feedback-into-later-start sources is NextStartEffect(x) | DEF | OVERLAY | N |  |
| S10-46 | S10.13 | 1397 | Aftermath ≠ Water Rebuild ≠ HCC Act VI | FENCE | OVERLAY | N |  |
| S10-47 | S10.13 | 1405 | HCC PFC ≠ Coffee Cup Conditions; Water Delta ≠ Lace topology | FENCE | OVERLAY | N |  |
| S10-48 | S10.13 | 1408 | Cross-source compatibility is not runtime identity | FENCE | OVERLAY | N |  |
| S10-49 | S10.14 | 1414 | OBSERVABILITY MAP SOUND WITH OPENS [box] | UNCLASSIFIED | LAB | R | BRD Pass 2 verdict |
| S10-50 | S10.14 | 1420 | OBS-1 PROVED WITH SOURCE WITNESSES [box] | UNCLASSIFIED | LAB | R | restates OBS-1 + S10.4 |
| S10-51 | S10.14 | 1426 | S9 CHASSIS SUFFICIENT WITH SOURCE-SPECIFIC FACTORIZATION [box] | UNCLASSIFIED | LAB | R |  |
| S10-52 | S10.14 | 1432 | SOURCE ARCHITECTURES MAPPED WITHOUT FUSION [box] | UNCLASSIFIED | LAB | R |  |
| S10-53 | S10.14 | 1436 | Full HCC-A, Coffee Cup and Water device equations remain deferred; RM-A remains open; Core remains unchanged | OPEN | OPEN | Y |  |

### S11 — Technical realization

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S11-01 | S11 | 1449 | S11 is an OVERLAY realization court classifying the six staked technical references by capability role; it selects no target, carrier, accelerator or implementation | DEF | OVERLAY | Y | references.md platform clipboards |
| S11-02 | S11 | 1449 | Graphics A–D select none of Cargo, rustc, Wasm, WebGPU, WGSL or WebNN | DEF | GFX | Y |  |
| S11-03 | S11 | 1449 | These technical sources may realize or accelerate a conforming model; they do not become additional Lace mechanisms | FENCE | OVERLAY | Y |  |
| S11-04 | S11.1 | 1453 | The six sources share the non-Core authority class SM-X-PLAT and occupy planes: build (Cargo → rustc), portable core (Wasm), host [GAP-HOST], GPU API/language (WebGPU/WGSL), inference (WebNN), carrier [R3], installed app (separate surface) | DEF | OVERLAY | Y | SM-X-PLAT |
| S11-05 | S11.1 | 1482 | This topology is a source-role map, not an implementation diagram | FENCE | OVERLAY | Y |  |
| S11-06 | S11.2 | 1486 | Evidence rungs T_0 SOURCE-SPECIFIED, T_1 TOOLCHAIN-SUPPORTED, T_2 HOST-EXPOSED, T_3 DEVICE-ADMITTED, T_4 EXECUTED, T_5 CORRECT, T_6 SUSTAINED | DEF | OVERLAY | N |  |
| S11-07 | S11.2 | 1520 | No automatic implication: T_k(c) ⇏ T_{k+1}(c) [box] | FENCE | OVERLAY | N |  |
| S11-08 | S11.2 | 1524 | A standards/toolchain document normally establishes T_0, not actual browser/device execution | DEF | OVERLAY | N |  |
| S11-09 | S11.3 | 1528 | Cargo is build/package orchestration; rustc is compiler/target/codegen machinery | DEF | OVERLAY | N | cargo / rustc clipboards |
| S11-10 | S11.3 | 1535 | CargoGraph ≠ LaceTopology | FENCE | OVERLAY | N |  |
| S11-11 | S11.3 | 1541 | DocumentedRustTarget ≠ SelectedTarget | FENCE | OVERLAY | N |  |
| S11-12 | S11.3 | 1544 | Project law such as zero external dependencies constrains Cargo configuration; Cargo does not supply that law | FENCE | LAW | Y |  |
| S11-13 | S11.3 | 1549 | TARGET = UNDECIDED [box] | OPEN | OPEN | Y |  |
| S11-14 | S11.4 | 1554 | Wasm core defines the portable ISA, validation, runtime memory/tables/functions/imports/exports and instantiation/invocation; it explicitly does not define an embedding API and gives modules no ambient environment access | DEF | OVERLAY | Y | wasm-core clipboard |
| S11-15 | S11.4 | 1566 | g ∉ State_Wasm ∧ NoAmbientAccess(Wasm) ⇒ g → 𝒟 requires host/embedder mediation | THM | DERIVED | N |  |
| S11-16 | S11.4 | 1574 | HOST-1: host dependence proved [box] | THM | DERIVED | Y | the implication above is its proof; no proof block |
| S11-17 | S11.4 | 1582 | GAP-HOST = [MISSING PRIMARY SOURCE] [box] | OPEN | OPEN | Y | BRD Pass 3 source-gaps |
| S11-18 | S11.5 | 1591 | LaceIndex ≠ Rust usize ≠ WasmAddress ≠ GPUBufferOffset ≠ WGSLPointer | FENCE | OVERLAY | N |  |
| S11-19 | S11.5 | 1605 | GraphicDPointer ≠ WasmReference ≠ WGSLPointer | FENCE | OVERLAY+GFX | N |  |
| S11-20 | S11.5 | 1612 | No technical address/pointer representation becomes a Lace identity without an explicit representation contract | FENCE | OVERLAY | N |  |
| S11-21 | S11.6 | 1616 | WebGPU owns GPU API/resource/queue/device semantics; WGSL owns shader-program semantics beneath WebGPU pipelines | DEF | OVERLAY | N | webgpu / wgsl clipboards |
| S11-22 | S11.6 | 1620 | WebGPU resources have device/resource lifetimes and can become unusable or be destroyed/lost | DEF | OVERLAY | N |  |
| S11-23 | S11.6 | 1626 | ACCEL-1: GPUState ∉ AuthoritativeLace [box]; Loss(GPUState) ⇏ Change(LaceTruth) [box] | FENCE | OVERLAY | N |  |
| S11-24 | S11.6 | 1642 | WebGPU/WGSL are optional candidate execution planes for derived/reconstructible work such as bounded sampling, reductions, projections or search substeps | DEF | OVERLAY | N |  |
| S11-25 | S11.6 | 1644 | They are not required by S1–S10 | FENCE | OVERLAY | N |  |
| S11-26 | S11.7 | 1648 | WebNN defines a compiled neural-inference graph API | DEF | OVERLAY | N | webnn clipboard |
| S11-27 | S11.7 | 1662 | ML-1: for y_ML = F_θ(x), x ∈ SEE-L ⇏ y_ML ∈ SEE-L [box] | FENCE | OVERLAY | N | S10.1 |
| S11-28 | S11.7 | 1670 | WebNN may accelerate an admitted inference subproblem; it does not become the generic S9 transition machine by default | FENCE | OVERLAY | N |  |
| S11-29 | S11.7 | 1672 | A WebNN “graph” is not Lace topology | FENCE | OVERLAY | N |  |
| S11-30 | S11.7 | 1674 | A WebNN emotion classifier output is not HCC Emotion truth without a separate source/device inference contract | FENCE | OVERLAY | N |  |
| S11-31 | S11.8 | 1678 | Source-backed interop: host → WebGPU → WGSL; host → WebNN; WebNN context from a GPUDevice; exportable MLTensor → GPUBuffer; host-visible Uint8Array input that may reference a WebAssembly.Memory slice | DEF | OVERLAY | Y | BRD Pass 3 interop-boundaries |
| S11-32 | S11.8 | 1686 | These edges do not establish direct Wasm invocation of WebGPU/WebNN | FENCE | OVERLAY | N |  |
| S11-33 | S11.8 | 1695 | COPY-1: Interop ⇏ ZeroCopy [box]; the source evidence establishes that copies may occur | FENCE | OVERLAY | Y |  |
| S11-34 | S11.8 | 1699 | Any later zero-copy claim requires separate device/implementation evidence | FENCE | OVERLAY | N |  |
| S11-35 | S11.9 | 1703 | Authoritative Lace operations remain mathematical/Core obligations first | FENCE | LAW | N |  |
| S11-36 | S11.9 | 1705 | Candidate placement: Arrive/RootTouch/Join/capacity-refusal on a host/CPU/Wasm control path; root/prefix scans CPU/Wasm with optional bounded GPU assistance; finite grounding append remains a Core transition even if selection is accelerated; carrier access depends on R3 | DEF | OVERLAY | N |  |
| S11-37 | S11.9 | 1712 | No technical source supplies RM-A | OPEN | OPEN | Y | RM-A |
| S11-38 | S11.10 | 1716 | Derived reads are realizable on different planes without changing authority: prefix/replay CPU/Wasm; sampling/overlap/reduction CPU/Wasm or WebGPU/WGSL; Reach/frontier host/CPU/Wasm with conditional acceleration; projection a strong WebGPU/WGSL candidate | DEF | OVERLAY | N |  |
| S11-39 | S11.10 | 1723 | WebNN has no default role unless a later admitted subproblem is genuinely a neural-inference graph | FENCE | OVERLAY | N |  |
| S11-40 | S11.11 | 1733 | Technical mapping of 𝒟_θ: Q host/Wasm working state; G host/embedder-mediated when external; Ω CPU/Wasm reads with optional kernels and bounded WebNN only where admitted; Δ host/Wasm control with optional accelerator subfunctions; ω a logical/replayable witness, never a native address by default | DEF | OVERLAY | N | S9.1 |
| S11-41 | S11.12 | 1747 | ComputePlane(y) ⇏ EvidenceClass(y) [box] | FENCE | OVERLAY | Y | “Pass 3 records” |
| S11-42 | S11.12 | 1756 | Executing on CPU/Wasm, WebGPU/WGSL or WebNN does not decide whether the result is SEE-L/G/Q/H/CF/U | FENCE | OVERLAY | N | S10.1 |
| S11-43 | S11.12 | 1764 | Evidence class follows provenance and source/device law | DEF | OVERLAY | N |  |
| S11-44 | S11.13 | 1768 | None of the six technical sources defines durable Lace storage; R3 = [OPEN] | OPEN | OPEN | Y | R3 |
| S11-45 | S11.13 | 1776 | If R3 = durable, a primary source for the chosen browser carrier becomes mandatory | DEF | OVERLAY+LAW | N |  |
| S11-46 | S11.13 | 1778 | If R3 = volatile, no durable source is required solely to satisfy a volatile declared lifetime | DEF | OVERLAY | N |  |
| S11-47 | S11.13 | 1780 | The six sources do not define complete installed-WebApp lifecycle/install/cache/update behavior; that remains a separate source surface | OPEN | OPEN | Y |  |
| S11-48 | S11.14 | 1788 | SOURCE SET CORRECT [box] | UNCLASSIFIED | LAB | R | BRD Pass 3 verdict |
| S11-49 | S11.14 | 1794 | CAPABILITY GRAPH SOUND WITH SOURCE GAPS [box] | UNCLASSIFIED | LAB | R | BRD Pass 3 verdict |
| S11-50 | S11.14 | 1800 | HOST DEPENDENCE PROVED / SOURCE MISSING [box] | UNCLASSIFIED | LAB | R | BRD Pass 3 verdict |
| S11-51 | S11.14 | 1806 | ACCELERATOR NON-AUTHORITY PROVED [box] | UNCLASSIFIED | LAB | R | BRD Pass 3 verdict |
| S11-52 | S11.14 | 1812 | TECHNICAL CROSSWALK SOUND WITH OPTIONAL ACCELERATORS [box] | UNCLASSIFIED | LAB | R | BRD Pass 3 verdict |
| S11-53 | S11.14 | 1818 | S11 ADMITTED WITH SOURCE GAPS [box] | UNCLASSIFIED | LAB | R | BRD Pass 3 verdict |
| S11-54 | S11.14 | 1822 | Target, R3, RM-A, pointer acceptance, implementation and full source-specific devices remain unchanged/open | OPEN | OPEN | Y |  |

### S12 — Behavioral-machine construction

| # | Sec | L | Claim | Kind | Authority | Stated? | Cites / rests on |
|---|---|---|---|---|---|---|---|
| S12-01 | S12 | 1830 | S12 factors reusable mathematical machine operators inside the existing S9 read-device boundary | DEF | OVERLAY | Y | S9 |
| S12-02 | S12 | 1830 | S12 adds no Core contract, new Lace row, target, carrier or runtime architecture | FENCE | LAW | Y |  |
| S12-03 | S12.1 | 1834 | A behavioral device remains 𝒟_θ = (Q, G, Ω, Δ, ω) | DEF | OVERLAY | R | S9.1 |
| S12-04 | S12.1 | 1842 | Pass 5 found no source-backed reason to enlarge this tuple | DEF | LAB | Y | BRD Pass 5 machine-factorization |
| S12-05 | S12.1 | 1844 | Research machinery factors the internals of Ω and Δ | DEF | OVERLAY | N |  |
| S12-06 | S12.2 | 1848 | The reusable library 𝔐 = {Par, Γ, 𝒱, Ψ, τ, ρ} [box] | DEF | OVERLAY | N |  |
| S12-07 | S12.2 | 1867 | Par semantic parallel composition; Γ finite candidate generation; 𝒱 source-specific provenance-bearing check; Ψ device-local candidate/frontier transition; τ stop/control predicate; ρ source-specific resolution/aggregation that may select, aggregate, preserve or return unresolved | DEF | OVERLAY | N |  |
| S12-08 | S12.2 | 1874 | None is mandatory in every device | FENCE | OVERLAY | N |  |
| S12-09 | S12.2 | 1882 | A candidate set 𝒞 ∈ P_f(Cand) is device-local working data, not a new S9 field and never Lace | FENCE | OVERLAY | N |  |
| S12-10 | S12.3 | 1886 | A generated candidate is not an observation: Candidate ≠ Evidence [box] | FENCE | OVERLAY | N |  |
| S12-11 | S12.3 | 1894 | A candidate may have empty Lace support | DEF | OVERLAY | N |  |
| S12-12 | S12.3 | 1896 | A candidate gains no SEE-L status by model confidence, survival of search, highest score or selection by ρ | FENCE | OVERLAY | N | S10.1 |
| S12-13 | S12.4 | 1904 | A checker may be symbolic or model-based | DEF | OVERLAY | N |  |
| S12-14 | S12.4 | 1910 | VerifierScore ≠ Truth [box] | FENCE | OVERLAY | N |  |
| S12-15 | S12.4 | 1914 | Neural/model judgments retain their model/local provenance and declared error semantics | FENCE | OVERLAY | N |  |
| S12-16 | S12.4 | 1916 | A checker cannot promote a claim’s evidence class by itself | FENCE | OVERLAY | N |  |
| S12-17 | S12.5 | 1922 | LearnedState ⇏ LaceFact [box] | FENCE | OVERLAY | N |  |
| S12-18 | S12.5 | 1926 | Embeddings, hidden vectors, scores, classifications and model representations remain device/implementation state unless separately backed by lawful evidence | FENCE | OVERLAY | N |  |
| S12-19 | S12.6 | 1930 | If Ψ is iterated inside one bounded device computation an explicit control/termination contract is required: InnerIteration ⇒ ExplicitControl [box] | FENCE | OVERLAY | N |  |
| S12-20 | S12.6 | 1940 | Control may use success/goal, no change, cycle, finite budget, deadline or a source-specific stop condition | DEF | OVERLAY | N |  |
| S12-21 | S12.6 | 1948 | No universal budget is supplied | OPEN | OPEN | Y |  |
| S12-22 | S12.6 | 1950 | Ordinary recurrence across future world events is not an inner search loop and need not halt forever | DEF | OVERLAY | N |  |
| S12-23 | S12.7 | 1958 | Where alternatives must remain available: Detect ≠ Resolve [box] | FENCE | OVERLAY | N |  |
| S12-24 | S12.7 | 1962 | Candidate discovery/checking may preserve multiple hypotheses before ρ | DEF | OVERLAY | N |  |
| S12-25 | S12.7 | 1964 | This separation is optional where the problem is deterministic | DEF | OVERLAY | N |  |
| S12-26 | S12.8 | 1968 | Any derived representation R_d used by a device must state the distinctions it preserves and drops | FENCE | OVERLAY | N |  |
| S12-27 | S12.8 | 1970 | A claim requiring a dropped distinction is invalid | FENCE | OVERLAY | N |  |
| S12-28 | S12.8 | 1972 | Pass-4 PATH-1 and VIEW-1 remain binding | FENCE | DERIVED+GFX | Y | PATH-1, VIEW-1 (Pass-4 artifacts; neither is defined in this model) |
| S12-29 | S12.9 | 1976 | Generic machine operators cannot invent source semantics: 𝔐 ⇏ ℛ_B [box], ℛ_B a behavioral source’s required relation/transition system | FENCE | OVERLAY | N |  |
| S12-30 | S12.9 | 1988 | The library does not invent HCC priorities/arbitration semantics, Coffee Cup utility/objective, or Water sharedness/refutation semantics | FENCE | OVERLAY | Y | the three conceptual sources |
| S12-31 | S12.10 | 1995 | Resolution/pruning must retain enough provenance to expose how a surviving candidate was generated, what checked it, what assumptions affected resolution and the support of every Lace-grounded claim | FENCE | OVERLAY | N |  |
| S12-32 | S12.10 | 2001 | S10 EP-1 remains the Lace-support rule | FENCE | OVERLAY | R | EP-1 |
| S12-33 | S12.10 | 2003 | S12 does not turn candidate provenance into evidence | FENCE | OVERLAY | N |  |
| S12-34 | S12.11 | 2015 | HCC DEVICE MATHEMATICALLY DEFINED WITH OPEN PARAMETERS [box] | UNCLASSIFIED | LAB | R | HCC device blueprint (linked) |
| S12-35 | S12.11 | 2019 | HCC requires source-semantic parallel RIC ∥ PFC; thus Par is required there | DEF | OVERLAY+DERIVED | Y | hcc-a-systems-manifest |
| S12-36 | S12.11 | 2027 | Its local Story Ledger, Meaning, Emotion, Identity and priors live in Q_H, not Lace | FENCE | OVERLAY | N |  |
| S12-37 | S12.11 | 2029 | Search/branch/verifier operators are optional | DEF | OVERLAY | N |  |
| S12-38 | S12.12 | 2041 | CUP DEVICE MATHEMATICALLY DEFINED WITH COUNTERFACTUAL/MODEL OPENS [box] | UNCLASSIFIED | LAB | R | Coffee Cup device blueprint (linked) |
| S12-39 | S12.12 | 2051 | The device preserves (C, R, T, I, A) as simultaneous causal roles | DEF | OVERLAY | N | coffee-cup-systems-manifest |
| S12-40 | S12.12 | 2053 | Search is optional counterfactual machinery | DEF | OVERLAY | N |  |
| S12-41 | S12.12 | 2055 | No scalar optimization objective is supplied by the source | OPEN | OVERLAY | Y |  |
| S12-42 | S12.12 | 2057 | Live intervention closes at Impact; retrospective counterfactual analysis remains possible only with explicit SEE-CF assumptions | DEF | OVERLAY | N | S10.8 |
| S12-43 | S12.13 | 2065 | Current human law supersedes two raw-source readings | DEF | HUMAN | Y | clock/philosophy-map Water ruling |
| S12-44 | S12.13 | 2069 | UNK = nonblocking expected-evidence shape [box] | DEF | HUMAN | Y | Water ruling |
| S12-45 | S12.13 | 2077 | INVALID = historically refuted claim with later evidence [box] | DEF | HUMAN | Y | Water ruling |
| S12-46 | S12.13 | 2081 | Separate holder OBS inventories remain distinct until explicit sharedness/pairing | FENCE | OVERLAY | N | water-systems-manifest |
| S12-47 | S12.13 | 2083 | Generated candidates cannot become OBS merely by plausibility | FENCE | OVERLAY | N |  |
| S12-48 | S12.13 | 2085 | Exact pointability, evidence-shape matching, sharedness and refutation policies remain open | OPEN | OPEN | Y |  |
| S12-49 | S12.14 | 2089 | Current human law places Coffee Cup and Water inside the broader HCC compiler machine goal | DEF | HUMAN | Y | clock shelf ruling |
| S12-50 | S12.14 | 2091 | Composition route: Cup/Water devices may emit provenance-bearing diagnostics; HCC may consume them as explicit external/local inputs; shared Lace does not merge their Q states; diagnostic output is not a Lace fact; exact scheduling/coupling remains PROJECT-CAND / OPEN | DEF | OVERLAY+OPEN | Y | BRD Pass 5 crosswalk |
| S12-51 | S12.14 | 2099 | No literal runtime nesting is selected | FENCE | OVERLAY | N |  |
| S12-52 | S12.15 | 2103 | S12 chooses no implementation | FENCE | LAW | Y |  |
| S12-53 | S12.15 | 2105 | Surviving operators may later be realized through deterministic host/CPU/Wasm compute, bounded search/controller code, model/LLM/WebNN inference, optional parallel/accelerator work, or application-local state | DEF | OVERLAY | N | S11 |
| S12-54 | S12.15 | 2112 | S11 T0–T6 evidence rules still govern every realization claim | FENCE | OVERLAY | R | S11.2 |
| S12-55 | S12.16 | 2118 | COMMON OPERATOR LIBRARY SOUND [box] | UNCLASSIFIED | LAB | R | BRD Pass 5 verdict |
| S12-56 | S12.16 | 2124 | FIXED COMMON CHASSIS UNSOUND [box] | UNCLASSIFIED | LAB | R | BRD Pass 5 verdict |
| S12-57 | S12.16 | 2130 | S9 OUTER DEVICE ALGEBRA REMAINS MINIMAL [box] | UNCLASSIFIED | LAB | R | BRD Pass 5 verdict |
| S12-58 | S12.16 | 2136 | MACHINE CONSTRUCTION PATH ESTABLISHED WITH SOURCE-SPECIFIC OPENS [box] | UNCLASSIFIED | LAB | R | BRD Pass 5 verdict |
| S12-59 | S12.16 | 2140 | RM-A, G1, target, R3, pointer acceptance and implementation remain unchanged/open | OPEN | OPEN | Y |  |

## 4. Unstated rows (`N`), by line

The list pass 3 works from. Each is a claim the model makes without naming its authority in place; the stamp shown is this census’s.

| Sec | L | Claim | Census stamp |
|---|---|---|---|
| S0 | 27 | RootTouch is a Join specialization — Yes | DERIVED |
| S0 | 29 | n+1 sample extension creates one new Lace row — Yes | HUMAN |
| S1.1 | 45 | Kin-read only | OVERLAY |
| S1.1 | 45 | Shadow state is not a row of L | OVERLAY+GFX |
| S1.2 | 49 | A Lace state is a finite sequence L = (e_0,…,e_{n−1}), n ∈ ℕ₀ | DERIVED |
| S1.3 | 68 | Kind = {WORD, POINTER} | GFX |
| S1.3 | 74 | WORD row e_i = (WORD, v), v ∈ V | GFX |
| S1.3 | 104 | Join(a,b) preserves the selected ordered operand pair | DERIVED |
| S2 | 108 | Arrive(v): L ↦ L ⌢ (WORD, v) — every successful word arrival lands | HUMAN |
| S2 | 130 | If Seen_L(v), the earlier root remains stable: Root_{L1}(v) = Root_L(v) | DERIVED |
| S2 | 138 | No root table exists | GFX+DERIVED |
| S3.1 | 145 | StarWords_L(v) = { i < \|L\| \| e_i = (WORD, v) } | DERIVED |
| S3.1 | 151 | Seen_L(v) ⟺ StarWords_L(v) ≠ ∅ | DERIVED |
| S3.1 | 159 | Root_L(v) = min StarWords_L(v) when seen | DERIVED |
| S3.1 | 163 | These are reads, not tables | DERIVED+GFX |
| S3.1 | 165 | Unseen arrival: its new WORD row becomes the root | HUMAN |
| S3.1 | 166 | Seen arrival: root remains the first WORD row | HUMAN+DERIVED |
| S3.1 | 167 | Every later WORD row remains a distinct occurrence | GFX+HUMAN |
| S3.1 | 169 | The full star formation includes WORD occurrences, root-touch Join rows, and later Join rows whose recursive p… | DERIVED+GFX |
| S3.1 | 187 | FullStar is a read concept over recorded passages/participation, not a stored Star row or side table | GFX+DERIVED |
| S3.2 | 191 | Because POINTER rows may interleave with WORD rows, the word route is the ordered WORD subsequence, not the en… | DERIVED |
| S3.2 | 196 | WordTrace(L) = (i_1,…,i_k), the WORD rows in order | DERIVED |
| S3.2 | 204 | ValueTrace(L) = (v_{i_1},…,v_{i_k}) | DERIVED |
| S3.2 | 207 | No sentence container is added | GFX |
| S3.4 | 239 | Every stored row index is an addressable Lace point | GFX |
| S3.4 | 241 | Reach_L(i) = {i} for WORD; {i} ∪ Reach(a) ∪ Reach(b) for (POINTER, a, b) | DERIVED |
| S3.4 | 252 | Reach is derived, never stored | DERIVED |
| S3.4 | 276 | A sample instance is a finite nonempty selection S = (s_1,…,s_n) of already-existing points, s_i < \|L\| | DERIVED |
| S3.4 | 289 | Sample size is not POINTER arity, not Reach cardinality, and not construction depth | DERIVED |
| S3.4 | 291 | A grounded point for a sample is a Lace point whose recursive ancestry contains the selected sample points | DERIVED |
| S3.4 | 311 | Two distinct sample instances of equal size may have distinct grounded points | DERIVED |
| S3.4 | 315 | The line is not restricted to one global left fold; Join(p_A, p_B) creates one new point whose reach includes … | DERIVED |
| S3.4 | 323 | Different grounding trees remain different Lace history; the model does not canonicalize them merely because t… | DERIVED |
| S3.5 | 336 | This is a derived read/computation, not a stored row family | HUMAN+DERIVED |
| S3.5 | 336 | It may be reconstructed locally around an anchor rather than materialized globally | LAB |
| S3.6 | 365 | A layered read may derive lexical root/occurrences/RootTouch, anchored pattern frontiers from the local sampli… | LAB |
| S3.6 | 372 | Flat transitive closure is not a sufficient result model because it saturates | LAB |
| S3.6 | 372 | Search preserves frontiers and path witnesses | LAB |
| S3.6 | 377 | SearchHandle = (through, anchor, item); the tagged item may identify a lexical row, a pattern by n plus one ex… | LAB |
| S3.6 | 382 | The handle is disposable derived state, reconstructible from the immutable prefix named by through; not a Core… | LAB+DERIVED |
| S3.7 | 397 | Admissible family Π(L) = { π_κ(L) \| κ satisfies the claimed source-fidelity constraints } | DERIVED |
| S4.1 | 434 | Both operands are selected before the new row exists, so the new POINTER always references backward on the sam… | DERIVED |
| S4.1 | 447 | One physical constructor, different selected operands / participation roles | DERIVED |
| S4.4 | 535 | Grounding then uses the same Join constructor on whatever finite sample/portions are selected for point format… | DERIVED |
| S4.5 | 541 | successful arrival lands? — CLOSED | HUMAN |
| S4.5 | 544 | physical POINTER row shape? — CLOSED in this model: binary Join | HUMAN+GFX |
| S4.5 | 545 | POINTER→POINTER? — CLOSED | GFX |
| S4.5 | 549 | N-D requires second store? — REFUSED, projection only | GFX |
| S4.5 | 553 | The remaining question is no longer arbitrary relation provenance; once retained operands are addressable, app… | DERIVED |
| S4.6 | 573 | SampleRead is derived working machinery, not a second store | HUMAN+DERIVED |
| S4.6 | 573 | When retention is warranted and operands are addressable, the physical write uses the same binary Join / repea… | DERIVED |
| S4.6 | 577 | Refused substitute: every sampled cell | LAB |
| S4.6 | 578 | Refused substitute: every adjacent pair | LAB |
| S4.6 | 579 | Refused substitute: exact-repeat-only | LAB |
| S4.6 | 580 | Refused substitute: first-seen-every-cell | LAB |
| S4.6 | 581 | Refused substitute: cheapest contiguous grounding | LAB |
| S4.6 | 582 | Refused substitute: semantic similarity / learned chooser | HUMAN+LAB |
| S4.6 | 584 | RootTouch remains the closed mandatory special case | HUMAN |
| S5 | 596 | The mapped star-search expansion operations are derived read operations only | LAB+DERIVED |
| S7 | 646 | No second store, sample registry, dimension table or new row kind is introduced | GFX+LAW |
| S9.1 | 697 | A behavioral read device is D_θ = (Q, G, Ω, Δ, ω), θ ∈ Θ | OVERLAY |
| S9.1 | 709 | Q is mutable device-local state; G explicit external input not claimed derivable from Lace; Ω a pure read over… | OVERLAY |
| S9.1 | 716 | Step equations: o_t = Ω_θ(L_{n_t}, q_t, g_t); (q_{t+1}, y_t) = Δ_θ(q_t, o_t, g_t); w_t = ω_θ(y_t, o_t, g_t) | OVERLAY |
| S9.1 | 736 | Output classes (assertion, diagnosis, request, behavior, no-output) are device output classes, not Graphic-D r… | OVERLAY+GFX |
| S9.2 | 740 | Not every behavioral-source input is guaranteed to live in Lace; L_{n_t} and g_t ∈ G are kept distinct | OVERLAY |
| S9.2 | 765 | not in Lace ⇏ invalid | OVERLAY |
| S9.2 | 770 | Every claim must distinguish Lace-derived, external, local and unknown basis | OVERLAY |
| S9.3 | 779 | Select_{L_n}(i) = e_i, 0 ≤ i < n | DERIVED |
| S9.3 | 787 | Fold_{L_n}(f, s_0) — ordered prefix fold | DERIVED |
| S9.4 | 805 | A device observation is o = (v, ν): observed result plus sufficient replayable provenance | OVERLAY |
| S9.4 | 815 | ν is not authoritative history | OVERLAY |
| S9.5 | 819 | WAtom_n = Lace(i) ⊎ LacePath(p) ⊎ External(e) ⊎ Local(ℓ) ⊎ Unknown(u) | OVERLAY |
| S9.5 | 835 | Validity: Lace(i) ⇒ 0 ≤ i < n, and every index in LacePath(p) lies in the named prefix | OVERLAY |
| S9.5 | 845 | A witness is finite: w ∈ P_f(WAtom_n) | OVERLAY |
| S9.5 | 853 | Atom interpretation: Lace(i) pointable retained row; LacePath(p) replayable path; External(e) pointable non-La… | OVERLAY |
| S9.5 | 859 | This permits mixed evidence without laundering external or local state into Lace | OVERLAY |
| S9.6 | 863 | Device-only step T_{θ,g}(L_n, q) = (L_n, q′, y, w) with o, (q′, y), w as in S9.1 | OVERLAY |
| S9.7 | 913 | A device may affect the external world or request action: (L_n, q, R) → (L_n, q′, R′) | OVERLAY |
| S9.8 | 943 | Device output has no automatic retention authority | LAW+OPEN |
| S9.8 | 963 | Meaning, Emotion, Identity, Behavior, Impact, Aftermath, OBS, DELTA, UNK, INVALID, Rapids, Delta, crossability… | OVERLAY+OPEN |
| S9.9 | 985 | These are pressures on the generic interface; they do not establish one combined H×C×W runtime | OVERLAY |
| S9.10 | 993 | HCC parallel RIC/PFC and S0–S7 source mechanisms remain reusable [“S0–S7” here are HCC phases, colliding with … | OVERLAY |
| S9.10 | 994 | Coffee Cup five-stage chain remains reusable | OVERLAY |
| S9.10 | 996 | Water S0–S4 and F1–F5 source mechanisms remain reusable [“S0–S4” here are Water stages, colliding with model s… | OVERLAY |
| S9.10 | 997 | Historical H×C×W co-presence products remain hypotheses | OVERLAY |
| S10.1 | 1053 | Σ_see = {SEE-L, SEE-G, SEE-Q, SEE-H, SEE-CF, SEE-U} | OVERLAY |
| S10.1 | 1067 | Stamp meanings: SEE-L identifiable from the prefix by lawful reads; SEE-G requires external/context info; SEE-… | OVERLAY |
| S10.1 | 1074 | These are classification stamps, not runtime types or storage classes | OVERLAY |
| S10.1 | 1076 | A quantity may carry several stamps | OVERLAY |
| S10.2 | 1080 | Admissible descriptive world X = (L_n, q, g, h, m) | OVERLAY |
| S10.2 | 1086 | z is Lace-identifiable on 𝒳 iff there is a total f with z(X) = f(π_L(X)) for all X ∈ 𝒳 | OVERLAY |
| S10.2 | 1094 | Equivalently z is constant on every fiber of π_L | DERIVED |
| S10.5 | 1181 | w(y) = S_L(y) ⊎ S_G(y) ⊎ S_Q(y) ⊎ S_H(y) ⊎ S_CF(y) ⊎ S_U(y) | OVERLAY |
| S10.5 | 1199 | ⊎ is a bookkeeping separation of provenance classes, not a physical storage partition | OVERLAY |
| S10.6 | 1209 | EP-1: if y claims a Lace-grounded proposition there must exist finite nonempty S_L(y) ⊆ LacePart(ν) sufficient… | OVERLAY |
| S10.6 | 1229 | All additional dependence on external/local/multi-holder/counterfactual/open state is separately stamped | OVERLAY |
| S10.6 | 1231 | EP-1 does not require every output to copy all input provenance | OVERLAY |
| S10.7 | 1235 | Where a source requires several holders, Q = Q_shared × ∏_{h∈H} Q_h | OVERLAY |
| S10.7 | 1245 | Holders may share one Lace prefix L_n while retaining distinct Q_h, G_h, ω_h | OVERLAY |
| S10.7 | 1257 | This does not create holder-specific authoritative Laces | OVERLAY+GFX |
| S10.7 | 1259 | A proposition enters Q_shared only through an explicit source/device rule establishing sharedness | OVERLAY |
| S10.8 | 1272 | CFClaim = (X, w_X, 𝒜, ℳ, φ): observed/context state, historical evidence, admitted intervention set, model/ass… | OVERLAY |
| S10.8 | 1284 | A counterfactual result cannot be stamped SEE-L merely because Lace supplied part of X | OVERLAY |
| S10.9 | 1288 | S9’s transition/output map remains sufficient for pure descriptive readout: Δ(q, o, g) = (q, y) | DERIVED |
| S10.9 | 1301 | No extra generic output field is added to S9 | OVERLAY |
| S10.10 | 1305 | A faithful later HCC device must preserve parallel RIC/PFC fork + recurrent local compiler + parameter family … | OVERLAY |
| S10.10 | 1319 | These are not one state machine | OVERLAY |
| S10.10 | 1324 | Six-Act diagnostic ≠ S0–S7 runtime flow [“S0–S7” are HCC phases, colliding with model sections] | OVERLAY |
| S10.10 | 1329 | The structural evidence path must remain replayable independently of prior-conditioned interpretation | OVERLAY |
| S10.11 | 1340 | Candidate tableau 𝒞(e,t) = (C_e, R_e, T_e(t), I_e, A_e(t)): enabling-condition field, initiating boundary, tra… | OVERLAY |
| S10.11 | 1354 | Unknown/future coordinates may remain unresolved; “hold all five” does not authorize invented outcomes | OVERLAY |
| S10.12 | 1358 | A faithful later Water device must preserve 𝒲 = (𝒫, ℛ, ℬ): Proof Ledger, River Proofing, Delta Bridge | OVERLAY |
| S10.12 | 1371 | The Bridge translates between systems; it does not erase them | OVERLAY |
| S10.12 | 1373 | Separate holder inventories remain holder-indexed | OVERLAY |
| S10.12 | 1375 | OBS pointability remains distinct from Graphic-D POINTER identity | OVERLAY+GFX |
| S10.13 | 1388 | The only valid shared abstraction across feedback-into-later-start sources is NextStartEffect(x) | OVERLAY |
| S10.13 | 1397 | Aftermath ≠ Water Rebuild ≠ HCC Act VI | OVERLAY |
| S10.13 | 1405 | HCC PFC ≠ Coffee Cup Conditions; Water Delta ≠ Lace topology | OVERLAY |
| S10.13 | 1408 | Cross-source compatibility is not runtime identity | OVERLAY |
| S11.2 | 1486 | Evidence rungs T_0 SOURCE-SPECIFIED, T_1 TOOLCHAIN-SUPPORTED, T_2 HOST-EXPOSED, T_3 DEVICE-ADMITTED, T_4 EXECU… | OVERLAY |
| S11.2 | 1520 | No automatic implication: T_k(c) ⇏ T_{k+1}(c) [box] | OVERLAY |
| S11.2 | 1524 | A standards/toolchain document normally establishes T_0, not actual browser/device execution | OVERLAY |
| S11.3 | 1528 | Cargo is build/package orchestration; rustc is compiler/target/codegen machinery | OVERLAY |
| S11.3 | 1535 | CargoGraph ≠ LaceTopology | OVERLAY |
| S11.3 | 1541 | DocumentedRustTarget ≠ SelectedTarget | OVERLAY |
| S11.4 | 1566 | g ∉ State_Wasm ∧ NoAmbientAccess(Wasm) ⇒ g → 𝒟 requires host/embedder mediation | DERIVED |
| S11.5 | 1591 | LaceIndex ≠ Rust usize ≠ WasmAddress ≠ GPUBufferOffset ≠ WGSLPointer | OVERLAY |
| S11.5 | 1605 | GraphicDPointer ≠ WasmReference ≠ WGSLPointer | OVERLAY+GFX |
| S11.5 | 1612 | No technical address/pointer representation becomes a Lace identity without an explicit representation contrac… | OVERLAY |
| S11.6 | 1616 | WebGPU owns GPU API/resource/queue/device semantics; WGSL owns shader-program semantics beneath WebGPU pipelin… | OVERLAY |
| S11.6 | 1620 | WebGPU resources have device/resource lifetimes and can become unusable or be destroyed/lost | OVERLAY |
| S11.6 | 1626 | ACCEL-1: GPUState ∉ AuthoritativeLace [box]; Loss(GPUState) ⇏ Change(LaceTruth) [box] | OVERLAY |
| S11.6 | 1642 | WebGPU/WGSL are optional candidate execution planes for derived/reconstructible work such as bounded sampling,… | OVERLAY |
| S11.6 | 1644 | They are not required by S1–S10 | OVERLAY |
| S11.7 | 1648 | WebNN defines a compiled neural-inference graph API | OVERLAY |
| S11.7 | 1662 | ML-1: for y_ML = F_θ(x), x ∈ SEE-L ⇏ y_ML ∈ SEE-L [box] | OVERLAY |
| S11.7 | 1670 | WebNN may accelerate an admitted inference subproblem; it does not become the generic S9 transition machine by… | OVERLAY |
| S11.7 | 1672 | A WebNN “graph” is not Lace topology | OVERLAY |
| S11.7 | 1674 | A WebNN emotion classifier output is not HCC Emotion truth without a separate source/device inference contract | OVERLAY |
| S11.8 | 1686 | These edges do not establish direct Wasm invocation of WebGPU/WebNN | OVERLAY |
| S11.8 | 1699 | Any later zero-copy claim requires separate device/implementation evidence | OVERLAY |
| S11.9 | 1703 | Authoritative Lace operations remain mathematical/Core obligations first | LAW |
| S11.9 | 1705 | Candidate placement: Arrive/RootTouch/Join/capacity-refusal on a host/CPU/Wasm control path; root/prefix scans… | OVERLAY |
| S11.10 | 1716 | Derived reads are realizable on different planes without changing authority: prefix/replay CPU/Wasm; sampling/… | OVERLAY |
| S11.10 | 1723 | WebNN has no default role unless a later admitted subproblem is genuinely a neural-inference graph | OVERLAY |
| S11.11 | 1733 | Technical mapping of 𝒟_θ: Q host/Wasm working state; G host/embedder-mediated when external; Ω CPU/Wasm reads … | OVERLAY |
| S11.12 | 1756 | Executing on CPU/Wasm, WebGPU/WGSL or WebNN does not decide whether the result is SEE-L/G/Q/H/CF/U | OVERLAY |
| S11.12 | 1764 | Evidence class follows provenance and source/device law | OVERLAY |
| S11.13 | 1776 | If R3 = durable, a primary source for the chosen browser carrier becomes mandatory | OVERLAY+LAW |
| S11.13 | 1778 | If R3 = volatile, no durable source is required solely to satisfy a volatile declared lifetime | OVERLAY |
| S12.1 | 1844 | Research machinery factors the internals of Ω and Δ | OVERLAY |
| S12.2 | 1848 | The reusable library 𝔐 = {Par, Γ, 𝒱, Ψ, τ, ρ} [box] | OVERLAY |
| S12.2 | 1867 | Par semantic parallel composition; Γ finite candidate generation; 𝒱 source-specific provenance-bearing check; … | OVERLAY |
| S12.2 | 1874 | None is mandatory in every device | OVERLAY |
| S12.2 | 1882 | A candidate set 𝒞 ∈ P_f(Cand) is device-local working data, not a new S9 field and never Lace | OVERLAY |
| S12.3 | 1886 | A generated candidate is not an observation: Candidate ≠ Evidence [box] | OVERLAY |
| S12.3 | 1894 | A candidate may have empty Lace support | OVERLAY |
| S12.3 | 1896 | A candidate gains no SEE-L status by model confidence, survival of search, highest score or selection by ρ | OVERLAY |
| S12.4 | 1904 | A checker may be symbolic or model-based | OVERLAY |
| S12.4 | 1910 | VerifierScore ≠ Truth [box] | OVERLAY |
| S12.4 | 1914 | Neural/model judgments retain their model/local provenance and declared error semantics | OVERLAY |
| S12.4 | 1916 | A checker cannot promote a claim’s evidence class by itself | OVERLAY |
| S12.5 | 1922 | LearnedState ⇏ LaceFact [box] | OVERLAY |
| S12.5 | 1926 | Embeddings, hidden vectors, scores, classifications and model representations remain device/implementation sta… | OVERLAY |
| S12.6 | 1930 | If Ψ is iterated inside one bounded device computation an explicit control/termination contract is required: I… | OVERLAY |
| S12.6 | 1940 | Control may use success/goal, no change, cycle, finite budget, deadline or a source-specific stop condition | OVERLAY |
| S12.6 | 1950 | Ordinary recurrence across future world events is not an inner search loop and need not halt forever | OVERLAY |
| S12.7 | 1958 | Where alternatives must remain available: Detect ≠ Resolve [box] | OVERLAY |
| S12.7 | 1962 | Candidate discovery/checking may preserve multiple hypotheses before ρ | OVERLAY |
| S12.7 | 1964 | This separation is optional where the problem is deterministic | OVERLAY |
| S12.8 | 1968 | Any derived representation R_d used by a device must state the distinctions it preserves and drops | OVERLAY |
| S12.8 | 1970 | A claim requiring a dropped distinction is invalid | OVERLAY |
| S12.9 | 1976 | Generic machine operators cannot invent source semantics: 𝔐 ⇏ ℛ_B [box], ℛ_B a behavioral source’s required re… | OVERLAY |
| S12.10 | 1995 | Resolution/pruning must retain enough provenance to expose how a surviving candidate was generated, what check… | OVERLAY |
| S12.10 | 2003 | S12 does not turn candidate provenance into evidence | OVERLAY |
| S12.11 | 2027 | Its local Story Ledger, Meaning, Emotion, Identity and priors live in Q_H, not Lace | OVERLAY |
| S12.11 | 2029 | Search/branch/verifier operators are optional | OVERLAY |
| S12.12 | 2051 | The device preserves (C, R, T, I, A) as simultaneous causal roles | OVERLAY |
| S12.12 | 2053 | Search is optional counterfactual machinery | OVERLAY |
| S12.12 | 2057 | Live intervention closes at Impact; retrospective counterfactual analysis remains possible only with explicit … | OVERLAY |
| S12.13 | 2081 | Separate holder OBS inventories remain distinct until explicit sharedness/pairing | OVERLAY |
| S12.13 | 2083 | Generated candidates cannot become OBS merely by plausibility | OVERLAY |
| S12.14 | 2099 | No literal runtime nesting is selected | OVERLAY |
| S12.15 | 2105 | Surviving operators may later be realized through deterministic host/CPU/Wasm compute, bounded search/controll… | OVERLAY |

## 5. Unclassified rows (pass-verdict boxes)

| Sec | L | Box |
|---|---|---|
| S9.12 | 1021 | DEVICE ALGEBRA SOUND WITH OPENS [box] |
| S9.12 | 1027 | READ-ONLY SEPARATION PROVED [box] |
| S9.12 | 1033 | WITNESS ALGEBRA SUFFICIENT FOR PASS-1 PRESSURE SET [box] |
| S10.14 | 1414 | OBSERVABILITY MAP SOUND WITH OPENS [box] |
| S10.14 | 1420 | OBS-1 PROVED WITH SOURCE WITNESSES [box] |
| S10.14 | 1426 | S9 CHASSIS SUFFICIENT WITH SOURCE-SPECIFIC FACTORIZATION [box] |
| S10.14 | 1432 | SOURCE ARCHITECTURES MAPPED WITHOUT FUSION [box] |
| S11.14 | 1788 | SOURCE SET CORRECT [box] |
| S11.14 | 1794 | CAPABILITY GRAPH SOUND WITH SOURCE GAPS [box] |
| S11.14 | 1800 | HOST DEPENDENCE PROVED / SOURCE MISSING [box] |
| S11.14 | 1806 | ACCELERATOR NON-AUTHORITY PROVED [box] |
| S11.14 | 1812 | TECHNICAL CROSSWALK SOUND WITH OPTIONAL ACCELERATORS [box] |
| S11.14 | 1818 | S11 ADMITTED WITH SOURCE GAPS [box] |
| S12.11 | 2015 | HCC DEVICE MATHEMATICALLY DEFINED WITH OPEN PARAMETERS [box] |
| S12.12 | 2041 | CUP DEVICE MATHEMATICALLY DEFINED WITH COUNTERFACTUAL/MODEL OPENS [box] |
| S12.16 | 2118 | COMMON OPERATOR LIBRARY SOUND [box] |
| S12.16 | 2124 | FIXED COMMON CHASSIS UNSOUND [box] |
| S12.16 | 2130 | S9 OUTER DEVICE ALGEBRA REMAINS MINIMAL [box] |
| S12.16 | 2136 | MACHINE CONSTRUCTION PATH ESTABLISHED WITH SOURCE-SPECIFIC OPENS [box] |

These nineteen are the verdict stamps of Behavioral Read Devices Passes 1, 2, 3 and 5. They assert the *state of a pass*, not a property of Lace; two of them (`READ-ONLY SEPARATION PROVED`, `OBS-1 PROVED WITH SOURCE WITNESSES`) restate RD-1 and OBS-1, which are classified `THM` at their own lines. Pass 3 decides how to label them (a “verdict” tag beside the box, or none); this census does not force a kind.

## 6. Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Writing down every rule about the lace, who said it and where, is allowed; it changes no knot. RM-A remains `[GAP]`.
