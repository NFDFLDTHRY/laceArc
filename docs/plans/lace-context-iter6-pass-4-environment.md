# Iteration 6, pass 4 — the mathematical execution environment

**Status:** [PROPOSAL] dated environment. **Not an emitter. Not src/.** **Station:** maps. **Original pass status:** broad emission [GAP]. **Current qualification (Sampling Pass 6):** constructor/root/touch mechanics and the later human-ruled sampling/search architecture are reconciled; exact sampling-derived retention/materialization remains [GAP]. See the later qualification appended below.
**Method:** [iteration 6 plan](lace-context-iteration-6-plan.md) §2 pass 4. Builds on the sealed [partial algebra](../math-execution-model.md) S1–S6 (**cited, not edited**), the [WASM crosswalk](math-execution-wasm-crosswalk-pass-2-reading.md) KEEP/FORBID reading, the nine reference shelves' stamps, and the [emission file's](../pointer-emission.md) CLOSED rows and non-answers table.
**Source roles:** Graphics A–D are the source of record; the manifest is derived from them. AGENTS and live law govern permitted work. The algebra and source-closed emission constraints are inputs to this proposed environment; their use here does not accept a schedule or promote a proposal above the sources. Open or conflicting emission sentences remain open or conflicting.

**One sentence:** the environment does not choose the rule; it computes the region the rule must lie in, proves that region is non-empty and non-trivial, and runs any candidate against it. *Solving lace against the reference material* means exactly that: every reference is a fence, and a solution is the fenced region — not a point in it.

---

## E0 — Non-claims

| Claim | This document |
|---|---|
| States the type of the missing rule, so a candidate can be recognised as one | **Yes** |
| States every fence as a predicate on that type, each cited to its source | **Yes** |
| Proves the fenced region is non-empty and non-trivial | **Yes** (E4) — by an existence witness that is explicitly **not** a proposal |
| Runs every candidate already on record through the fences | **Yes** (E5) |
| Picks a candidate, ranks candidates, or fills Φ-schedule | **No** |
| Amends S1–S6, the emission file, a clipboard, or the graphics | **No** |
| Is executable code | **No.** It is a procedure an agent runs with the [adjudication form](../kit/agent-task-template.md) §3 |

---

## E1 — Universe (cited from S1–S3, restated in ASCII)

```
Kind      = { WORD, POINTER }
WORD      = (WORD, v)              v ∈ V           (V's identity rule = G1, OPEN)
POINTER   = (POINTER, r_1..r_k)    k ≥ 1           (k = 2 always?  Q2 CONFLICT)
L         = (e_0, ..., e_{n-1})    a finite sequence of entries
valid(L)  :⇔  ∀ j, ∀ i:  e_j = (POINTER, ..r_i..)  ⇒  0 ≤ r_i < j        [Q4 CLOSED]
𝓛         = { L | valid(L) }       the set of Lace states
ε         = ()                     the empty strand                          [A1]

Arrive(v)        : L ↦ L ⌢ (WORD, v)                                          [S2]
Φ_morphism(R)    : L ↦ L ⌢ (POINTER, r_1..r_k),  each r_i < |L|              [S4.2]
Star(v)          = { i < |L| | e_i = (WORD, v) }      occurrence membership [S3.1]
π                : L → View,  no View → L                                    [S3.4]
```

Nothing above is a new row or store. E1 restates the algebra's state space. `Star(v)` is only the WORD-occurrence membership view; it omits route context and recorded participation and is not the full star formation (atomic map §3; witness pass 3).

---

## E2 — The type of the missing rule

The emission file splits Φ into a **morphism** (the append shape, CLOSED) and a **schedule** (when, and with which refs — Q1, OPEN). Q0 adds that the later-arrival kind is OPEN. So the object nobody has written is not "when to point" alone; it is the whole decision made at an arrival. Its type:

```
Step  = Arrive(v)  |  Φ(r_1..r_k)
σ     : 𝓛 × V  →  Step*                         a finite sequence of appends
run(σ, L, v)  =  L ⌢ σ(L, v)                    apply the appends in order
run(σ, L, v_1..v_m)  =  run(σ, run(σ, L, v_1), v_2..v_m)
```

**σ is the schedule.** It takes the whole current strand and the arriving value and returns what to append. It describes the whole arrival's appends, not merely S4.3's bracket after `Arrive`. The broad `Step*` type alone does not require `Arrive` to come first. A claimed refinement of S4.3 must explicitly use `σ(L,v) = [Arrive(v)] ⌢ p`, with `p` containing only Φ appends. Whether that refinement is required of a prospective accepted schedule is an inheritance obligation; neither final D1 equality nor this type alone settles it. No Φ timing or refs are chosen here. See [reduction M3](reduction-pass-2-execution-model.md#x5--theorems).

The signature and append form carry the following proposed restrictions; their governing sources are separate from the type notation:

| From the type | Is the ruling |
|---|---|
| σ's only arguments are L and v | **no second store** — S6 `[X]` 3, 4, 5; Xiao–Zhu FORBID intern / embed; Petersen–Zech FORBID NTK-as-store |
| σ's output is appends only | **append-only** — D footer; S6 `[X]` 1; Kauffman FORBID Reidemeister; Rowlands FORBID rewrite |
| σ is one function, not a family indexed by time or by a trained parameter | **not learned** — Petersen–Zech FORBID train-w-as-history; *function ≠ construction* |

**On prefix-device option D.** Option D ("one operator that sometimes writes WORD and sometimes POINTER") was refused as a *replacement* of `Arrive`. σ does not replace `Arrive`: `Arrive` and `Φ_morphism` remain the two named morphisms of S4.2, and σ is a sequence *over* them. The environment types the schedule; it does not merge the morphisms.

---

## E3 — The fences, as predicates on σ

Each fence is a predicate `F(σ)`. A candidate that fails one is **REFUTED by that fence**. The source of each is cited; the environment adds no fence the sources do not already state.

| Fence | Predicate on σ | Source |
|---|---|---|
| **F-H1** append-only | `∀ L, v:  run(σ, L, v)` has `L` as a prefix, unchanged | D footer *"Nothing is deleted. Nothing is rewritten"*; S6 `[X]` 1; Kauffman / Rowlands FORBID |
| **F-H2** backward | `∀ L, v:` every `Φ(r..)` in `σ(L, v)` has each `r <` the index it is appended at | D2 *"references earlier entries"*; Q4 CLOSED |
| **F-H3** empty start | `∀ v:  σ(ε, v) = [Arrive(v)]` — exactly one WORD, no POINTER | A1; A2 *"first occurrence creates the beginning of a star"*; Q0 CLOSED *"first unseen v is Arrive"*; Rowlands KEEP empty start |
| **F-H4** D1-admissible | `run(σ, ε, PIE, DESSERT, PIE, WHOLE, CUSTOMER) = D1` — the eleven rows, in order, refs as drawn | D1 (`VISUALLY_OBSERVED`); math-execution pass 3 witness; close-reading §3. **D1 is illustrative of the schedule, so this is a *necessary* condition only: a σ that cannot produce D1 cannot be the rule; a σ that can is not thereby the rule** |
| **F-H5** non-constant fan-out | derived from F-H4: between successive WORD rows in final D1 (and after the last), POINTER counts are 0, 1, 1, 2, 2. Identifying these with per-STEP emission counts additionally needs the S4.3 ordering premise in E2 | emission file Q1 *HANDS still CLOSED* row |
| **F-A1** arrival order | the subsequence of `Arrive` steps in `run(σ, ε, v_1..v_m)` is `v_1..v_m` in order — no reorder, no drop, no merge | B5, B6, C10 *"input is fed in arrival order"*; Piece 3; A13 *"every word occurrence preserved"* (pass 1 §3) |
| **F-S1** no side state | σ has the signature of E2 and nothing else: no table, cache, vocabulary, embedding, count, or holder record read or written | S6 `[X]` 2–5; C05; Xiao–Zhu / Petersen–Zech FORBID rows |
| **F-S2** time-invariant | the same σ at every arrival; no parameter of σ is a function of history except through `L` itself | Petersen–Zech FORBID train-w-as-history; staking *"function ≠ construction"* |
| **F-S3** no host state | σ does not read WASM store / memory / table / stack, GPU device / queue / buffer, MLGraph, or any Layer III object | G-III-1…4 fences; wasm crosswalk pass 2 FORBID rows |
| **F-S4** no imported conceptual-model state | σ does not read HCC-A / Cup / Water / ReAG / OBS / UNK / clock-tooth state | live-law conceptual-reference correction; AgentScope FORBID ReAG rows; emission non-answers *clock tooth / Anchor / Locate*. These exclusions do not require the reference documents to exist as holder or runtime components |
| **F-N** non-vacuous | `∃ L, v:  σ(L, v)` contains at least one `Φ` | branch-contracts pointer/ card: *"an opaque type with no lawful inhabitants is not proof"* |
| **F-G** no imported word identity | σ does not decide `v = v'` by a rule the Hands do not state (case-fold, stem, tokenizer, regex boundary, character arithmetic) | G1 OPEN; C05; manifest open #1. **Note:** this fence is *silent*, not *closed* — a σ that needs an identity rule is BLOCKED on G1, not refuted |
| **F-B** no unstated boundaries | σ does not consult a sentence / document / conversation / provenance boundary unless such boundaries are rows in `L` | D shows only WORD and POINTER; manifest open #3. A σ needing them is BLOCKED on #3 |

**Ordering for the procedure:** type fences first (F-S1, F-S2, F-S3, F-S4 — is it even a σ?), then Hands fences (F-H1, F-H2, F-H3, F-A1), then the witness (F-H4, F-H5), then non-vacuity (F-N), then the silent fences (F-G, F-B) which can only BLOCK.

---

## E4 — The region is non-empty and non-trivial

**Theorem E4.1 (non-empty).** There exists a σ satisfying every fence in E3.

*Witness.* Let `σ_D1(L, v)` be defined by cases: if `(L, v)` is one of the five prefix-states that occur in the D1 run — `(ε, PIE)`, `((PIE), DESSERT)`, `((PIE, DESSERT, 0002), PIE)`, `(… , WHOLE)`, `(… , CUSTOMER)` — return exactly the D1 steps for that arrival (`[Arrive(PIE)]`, `[Arrive(DESSERT), Φ(0000,0001)]`, `[Arrive(PIE), Φ(0003,0000)]`, `[Arrive(WHOLE), Φ(0003,0005), Φ(0006,0004)]`, `[Arrive(CUSTOMER), Φ(0008,0007), Φ(0009,0002)]`); otherwise return `[Arrive(v)]`.

*Check.* F-S1–S4: σ_D1 reads only `L` and `v`. F-H1: appends only. F-H2: every ref drawn on D1 is earlier — checked on the PNG, six for six. F-H3: `σ_D1(ε, v) = [Arrive(v)]` for every `v`. F-A1: every arrival is one `Arrive`, in order. F-H4: by construction. F-H5: inherited. F-N: yes, six `Φ`. F-G, F-B: σ_D1 compares `v` to five literal values by the Hands' own equality (the same spelling as drawn) and consults no boundary. ∎

**σ_D1 is not a proposal.** It is a lookup of one picture. B10 forbids *word → stored entry* as the model; σ_D1 is offered only to prove the fences are jointly satisfiable, which is a fact about the fences, not a candidate for the human. Its stamp is `[X]` as a rule and `PROVED_WITHIN_SCOPE` as an existence witness — the scope being E3's predicates over E2's type.

**Theorem E4.2 (non-trivial).** There exists a σ that satisfies the type fences and fails a Hands fence.

*Witness.* `σ_adj(L, v) = [Arrive(v), Φ(w, |L|)]` whenever `L` contains a WORD, where `w` is the index of the last WORD in `L` and `|L|` is the index the new WORD takes — "every consecutive WORD pair emits a POINTER." It is a σ (F-S1–S4 hold; `w` is read from `L`). Run it: after `DESSERT` it emits `Φ(0000, 0001)` = row 0002 ✓; after the second `PIE` it emits `Φ(0001, 0003)`, but D1's row 0004 is `0003 → 0000`. **F-H4 fails.** ∎ This is the close-reading's ruling-out, now as a computed run rather than a sentence.

**Corollary E4.3.** The fences neither admit everything nor admit nothing. The region is a proper, non-empty subset of the σ-type. That is the precise sense in which the rule is *open*: OPEN means *a non-empty region with no point chosen*, not *undefined*.

---

## E5 — Every candidate on record, run

Candidates come from: the emission file's non-answers table; the close-reading's ruled-out rule; the emission file's SPOKEN Q1 sentence; and the three older-lineage triggers recovered in [pass 1](lace-context-iter6-pass-1-findings.md) (quarantined — run here **only to show where they fall**, never to admit them).

| Candidate | Is it a σ? | Run | Verdict | Fence |
|---|---|---|---|---|
| every consecutive WORD pair emits `(prev, new)` | yes | E4.2 | **REFUTED** | F-H4 (row 0004) |
| constant `k` POINTERs per WORD, any `k` | yes | fan-out 0,1,1,2,2 | **REFUTED** | F-H5 |
| every repeated word points at its previous occurrence, and nothing else (*exact-match ties*, *touch grows lace* read as a rule) | yes | `DESSERT` has no prior occurrence → no `Φ` → row 0002 never produced | **REFUTED** | F-H4 (row 0002) |
| next-token / causal LM as the schedule | no — needs trained parameters | — | **not a σ** | F-S1, F-S2 |
| `[MASK]` / intern / embed | no — needs a table | — | **not a σ** | F-S1 |
| train / NTK / GNN | no — learned | — | **not a σ** | F-S2 |
| ReAG edge | no — holder state | — | **not a σ** | F-S4 |
| Reidemeister / slide / virtual | no — not an append | — | **not a σ** | F-H1 |
| D06 substitution | no — not an append | — | **not a σ** | F-H1 |
| clock tooth / Anchor / Locate | no — holder state | — | **not a σ** | F-S4 |
| Kauffman hitch / grab | no function stated | — | **not a candidate** (kin) | — |
| WASM `br` / `return` / `call` / trap | no — host state | — | **not a σ** | F-S3 |
| **campaign SPOKEN Q1**: *"Φ fires when an arriving word must participate in what already exists…"* | **no** — *"must participate"* is not defined as a function of `(L, v)` | — | **not yet a σ** · `UNESTABLISHED` | E2 |
| **campaign SPOKEN Q0/Q5**: later arrival is `Φ` only, no second WORD | yes, as a *constraint* on σ: no `Arrive` for a `v` already in `L` | second `PIE` yields no row 0003 | **REFUTED** | F-H4 (row 0003), F-A1, A13 / B12.2 / C12.2 / C10.2 |
| older lineage · **windowed novelty** (*new element inside a window that already contains something*) | needs window boundaries | D1 carries no boundaries → run indeterminate | **BLOCKED** | F-B (open #3) |
| older lineage · **star-similarity licenses ties** (radius = character value, angle = position) | needs character arithmetic on `v` and a threshold | identity by arithmetic → G1; threshold is a free constant | **BLOCKED** | F-G (open #1); F-N untested |
| older lineage · **bind at UNK resolution** | no — UNK is holder (Water) state | — | **not a σ** | F-S4 |

**Reading the table (current scope, 2026-09-20).** Of these seventeen recorded candidates, four are REFUTED, nine are not a σ, one is not a candidate, one is not yet a σ / UNESTABLISHED, and two are BLOCKED. **None is established in-region by this table.** BLOCKED leaves membership undetermined; it does not prove exclusion. E4.1 remains the stated existence witness for the fences, not an accepted rule. This bounded inventory cannot prove that nobody elsewhere has stated a rule, and in-region evidence would still not supply human acceptance.

---

## E6 — What a candidate must look like to enter the region

Derived from E3, not invented: a candidate σ the human could rule on must

1. be written as a function of `(L, v)` and nothing else (F-S1–S4);
2. return only appends, each `Φ` ref earlier than its own index (F-H1, F-H2);
3. return exactly `[Arrive(v)]` on the empty strand (F-H3);
4. keep every arrival as its own `Arrive`, in order — including repeats (F-A1; this is where the campaign's Q0/Q5 sentence fell);
5. reproduce D1 exactly on D1's input (F-H4) — show the run row by row and mark each arrival's STEP boundary. State whether S4.3's `Arrive`-first refinement is being assumed; final equality alone does not establish it;
6. emit at least one `Φ` somewhere (F-N);
7. either need no word-identity rule and no boundaries, **or** say so, so that G1 / open #3 are ruled first (F-G, F-B).

A sentence that meets 1–7 is a candidate. It is still not accepted. Acceptance is the human's, in-repo, in words.

---

## E7 — The procedure (what an agent runs)

**Current procedure qualification, 2026-09-20.** Evidence must cover each predicate's existing E2/E3 domain. A restricted-domain proof or D1-only run remains bounded evidence; it does not establish unrestricted IN-REGION. Keep an unresolved obligation distinct from a demonstrated violation.

```
INPUT   one candidate sentence C, verbatim, with its author and locator
STEP 1  Write C as σ(L, v) = ... .  If C cannot be so written: verdict NOT-A-σ, cite E2, STOP.
STEP 2  F-S1, F-S2, F-S3, F-S4.  Any fail: verdict NOT-A-σ, cite fence, STOP.
STEP 3  F-H1, F-H2, F-H3, F-A1.   Any fail: verdict REFUTED, cite fence + the offending step, STOP.
STEP 4  F-H4: run C on (PIE, DESSERT, PIE, WHOLE, CUSTOMER) from ε.  Write every produced
        row beside D1's eleven.  First mismatch, including a missing or extra row: REFUTED, cite it.
        If the run needs a fact D1 does not carry (a boundary, an identity decision): BLOCKED, cite F-B / F-G.
        F-H5: record the final D1 gaps; per-STEP counts additionally need the S4.3 premise below.
STEP 5  F-N: the successful D1 run already exhibits Φ; cite that witness, with no additional search.
        Failure to exhibit a witness is UNESTABLISHED, not proof of vacuity. REFUTED (vacuous)
        requires proof that no (L, v) in the existing domain yields a Φ.
STEP 6  F-G, F-B: inspect the candidate over their existing E2/E3 domains, including branches
        outside the D1 run. An unstated identity or boundary dependency is BLOCKED; cite F-G / F-B
        and G1 / open #3 respectively. If absence of such a dependency is unproved, keep it UNESTABLISHED.
STEP 7  Verdict IN-REGION only when all thirteen E3 predicates have evidence at their stated scopes.
        Otherwise retain the unresolved obligation as UNESTABLISHED / BLOCKED, as appropriate.
        Stamp an IN-REGION result: [PROPOSAL] · UNESTABLISHED as the rule · acceptance ABSENT.
OUTPUT  the adjudication form (agent-task-template §3): claim, facts, refutations, obligations, next question.
```

**F-H5 / S4.3 scope.** Final D1 equality fixes the POINTER gaps between WORD rows and after the last WORD. Identifying those gaps with each STEP's emission count requires its sole `Arrive(v)` to come first, followed only by Φ appends (E2/E6; reduction M3). State whether that premise is assumed; this procedure does not decide its inheritance or add it as a new fence. A dependency outside the five-input witness still needs the global F-G/F-B check; matching D1 cannot discharge it.

One agent may run all steps and must say so. A second agent re-running STEP 4 independently is the only independence this procedure knows.

---

## E8 — What "execution" means on the target, and what it does not

- The environment is **Layer III steward tooling**. If it is ever mechanised, it is a checker over candidate sentences and the D1 witness, outside `src/`, outside Core, and its output is a receipt, not a row.
- It is **not** the runtime. When the gate opens, Core implements the accepted σ; the environment is what the acceptance was checked against.
- On the sealed target (G-III-4) nothing here changes: σ has no host state by F-S3, so the target is invisible to it. The target constrains *how far* the strand can grow (pass 2 §2.3), never *what σ is*.

---

## E9 — Alignment with the sealed products (soft diff)

| This environment | Sealed product | Stance |
|---|---|---|
| E1 universe | S1–S3 | identical; restated |
| σ type over `{Arrive, Φ}` | S4.2 two morphisms; S4.3 `Step_partial` | σ covers the whole arrival; it is not the Φ-only bracket. Inheritance of S4.3's ordering requires the explicit premise in E2/E6 |
| F-H3 | Q0 CLOSED | identical |
| F-H4 | pass 3 witness *"witness-only"* | agrees; sharpened to *necessary condition* |
| F-S1–S4 | S6 `[X]` 2–5, 8; crosswalk pass 2 FORBID | agrees |
| E4.2 | close-reading §3 ruled-out rule | agrees; now a computed run |
| E5 row *campaign Q0/Q5* | emission file HANDS CONFLICT on `0003` | agrees; adds A13 / B12.2 / C12.2 / C10.2 |
| E5 rows *older lineage* | pass 1 quarantine | agrees; run for placement only |

No competing atom. No new morphism. No fence without a source.

## E10 — Original steward receipt (preserved)

This table preserves the original pass's report. Its “0 in region” is now read as **0 established in-region**, with two BLOCKED cases as detailed in E5; it is not an exclusion proof for those two.

| Field | Value |
|---|---|
| Product | `docs/plans/lace-context-iter6-pass-4-environment.md` |
| Φ-schedule | `[GAP]` — region computed, point not chosen |
| Theorems | E4.1 non-empty (`PROVED_WITHIN_SCOPE`: E3 over E2), E4.2 non-trivial (`PROVED_WITHIN_SCOPE`), E4.3 corollary |
| Candidates run | 17 of 17 on record; 0 in region |
| Sealed products edited | 0 |
| `src/` | not authorized; not implied |
| Review | one agent; propose / attack / resolve by the same hand |

**Steward tests:** does not answer when a POINTER is written; does not merge `Arrive` into Φ; σ_D1 is a witness and marked `[X]` as a rule; every fence cites a source; the campaign's sentences are run and placed, not deleted; the older lineage is placed, not admitted.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

You can hold a lace and say what a knot may not be. You cannot tie it by saying so. Emission remains `[GAP]`.


---

## ROOT / TOUCH / FOLD Pass 5 — current qualification

**This section qualifies the dated environment; it does not rewrite E1–E10, E5's 17-candidate ledger, or their historical dispositions.**

The original environment typed one broad unknown:

\[
\sigma:\mathcal L\times V\rightarrow Step^*.
\]

Later human rulings and Passes 1–4 resolved most of that freedom.

### Deterministic/current under reconciled draft law

For successful word arrival \(v\):

1. append one WORD occurrence;
2. if unseen, that WORD becomes the root;
3. if seen, append RootTouch:
   \[
   \mathsf{Join}(\text{new occurrence},\mathrm{Root}(v));
   \]
4. the physical POINTER constructor is binary:
   \[
   \mathsf{Join}(a,b)
   =
   (\mathsf{POINTER},a,b),
   \]
   with selected ordered earlier same-line WORD/POINTER operands;
5. repeated Join grounds any finite selected sample;
6. adjacency alone does not select or emit a relation.

### Remaining free object

The unresolved Core-adjacent question is no longer the entire append sequence.

The old text below analyzed an upstream arbitrary-relation origin. That framing is now historical; the active open seam is the sampling-derived retention/materialization condition:

\[
\boxed{
\mathrm{Select}\;[GAP]
\longrightarrow
(a,b)\text{ or }S
\longrightarrow
\mathsf{Join}/\mathsf{Ground}(S).
}
\]

This qualification **does not define**:

\[
\mathrm{Select}(L,v)=\ldots
\]

and does not admit semantic similarity, a learned chooser, adjacency, a document/window boundary, a hidden Contract-II sample channel, or a Core query/write operator. Derived star/search reads mapped by the sampling campaign remain read-only.

### Effect on the dated E5 candidate ledger

None of E5's historical rows is deleted or relabeled. They remain evidence about the broader pre-ruling search space.

Read them now as dated tests of candidate schedulers before H1–H6 narrowed the problem.

### Current readiness

- constructor mechanics: reconciled draft law;
- sampling-derived retention/materialization: [GAP];
- G1/tokenization and independent system questions: still open;
- pointer-emission human acceptance: **ABSENT**;
- implementation authorization: **ABSENT**;
- src/: still forbidden.

The environment no longer justifies saying "POINTER representation / arity / target kinds are unknown." It still justifies refusing an invented retention/materialization rule or semantic chooser.
