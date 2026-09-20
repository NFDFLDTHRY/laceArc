# The reduction — pass 2: the mathematical model of execution

**Status:** `[PROPOSAL]` model. **Not an emitter. Not `src/`. Parametric in exactly the human's rulings.** **Station:** maps. **Emission:** `[GAP]`.
**Plan:** [reduction-pass-2-plan.md](reduction-pass-2-plan.md). **Extends, does not edit:** the sealed [algebra](../math-execution-model.md) S1–S6 (Core growth) and the [environment](lace-context-iter6-pass-4-environment.md) E1–E7 (σ typed and fenced). **Models:** the whole deliverable — hopper, Core, carrier, views, reload — as one state machine.
**Source roles:** Graphics A–D are the source of record; the manifest is derived from them. AGENTS and live law govern permitted work. The algebra, environment, [shape](lace-context-iter6-pass-5-crate-proposal.md), and [compute model](lace-context-iter7-pass-2-compute-and-inventory.md) are this proposal's derivation dependencies, not additional source authority or acceptance. Disagreement with them is an obligation to reconcile, not permission to change a governing source.

**One sentence.** The proposed app model keeps authoritative strand history in `L`, alongside operational custody `h` and carrier progress `K`; its six transitions have the scopes stated in X4–X5. *Optimal* is a proposed criterion here (X0), not an established property of a complete app.

**Current qualification, 2026-09-20:** [update pass 1, U04–U07](repo-update-pass-1-evidence.md#proof-scope-counterexamples-for-u04u05) narrows the live claims below. X9 remains the original pass receipt; its proof stamps are not the current scope. No transition, persistence policy, schedule, or branch is supplied by this correction.

---

## X0 — What "optimal" means in this document

An execution model **M** of the deliverable is *optimal* when:

1. **minimal authoritative history** — no representation that loses an indexed row can reproduce all strand-history observations (X4, M1); this says nothing about removing operational state;
2. **minimal transitions** — each transition has a stated responsibility and proof obligation (X6); schedule ownership remains unassigned;
3. **parametric only in the rulings** — every free choice in M is an item on the human's brief (R3, R4, R6, R7, R9) and no free choice is an agent's (X7).

M1 supports criterion 1 for the explicit observation class below. The tables list proposed responsibilities and ruling dependencies; they do not prove minimality or complete implementation ownership. Optimality of the whole deliverable remains `UNESTABLISHED`.

---

## X1 — Parameters (the rulings, as symbols)

| Symbol | Meaning | Ruling | Status |
|---|---|---|---|
| **σ** | the schedule, `σ : 𝓛 × V → Step*` (E2), subject to the fences (E3) | **R7** — acceptance | `[GAP]` |
| **enc / dec** | the section encoding and its inverse, `enc : 𝓛 → Bytes`, `dec ∘ enc = id` on valid strands | **R6** | `[BLOCKED]` on Q2 / #9 |
| **cap** | the capacity predicate `cap(L, s)` — *appending step-sequence `s` to `L` fits the region* — and its growth policy | **R4** | open |
| **res** | residence: `volatile` \| `durable` \| other | **R3** | open (pressed by the amendment) |
| **ord** | the memory order at the frontier (release/acquire) | **R9** | open |

Nothing else is free. `V`, `𝓛`, `valid`, `Arrive`, `Φ_morphism`, `Star`, `π` are the algebra's (E1).

---

## X2 — State space

```
Σ  =  ( L ,  h ,  K )

   L ∈ 𝓛                 the strand — THE authoritative state                       Contract I
   h ∈ V ∪ {⊥}           the hopper — at most ONE pending arrival, or empty         Contract II · sheet S
   K ∈ Bytes             the carrier — persisted bytes of a prefix of L             sheet C  (res = durable)
                          under res = volatile, K is absent and OPEN yields ε

derived, never stored:
   f      = |L|                        the frontier                                  sheet R · R9
   view   = π(L)                       any projection                                Contract III
   star(v)= Star(v)(L)                 occurrence membership, not the full formation view_star/
   k      = the largest index with K = enc(L[0..k))                                  sheet C
```

**One-slot scope.** X2 models one pending arrival: the shell blocks SUBMIT while `h ≠ ⊥`. The route/ card excludes an internal work queue, but does not by itself prove that every possible shell must have exactly one slot. This is the proposal's custody restriction, not a newly derived law or authoritative history outside `L`.

---

## X3 — Transitions (small-step)

Each rule: premises above the line, the new state below. `⊥` = empty hopper. `⌢` = append.

```
SUBMIT   (Layer III · sheet S)                       the human presses submit with bytes v
         h = ⊥
         ───────────────────────────────
         (L, ⊥, K)  →  (L, v, K)                      L unchanged · v as typed · cuts nothing (F-A1, F-G)

STEP     (Core · route/ strand/ · σ)                  the one writer takes the pending arrival
         h = v      s = σ(L, v)      cap(L, s)
         ───────────────────────────────
         (L, v, K)  →  (L ⌢ s, ⊥, K)                  f advances |L| → |L ⌢ s| in one release-store (ord)

REFUSE   (Core → Layer III · sheet R / H · R4)        capacity fails; nothing changes
         h = v      s = σ(L, v)      ¬cap(L, s)
         ───────────────────────────────
         (L, v, K)  →  (L, v, K)  +  signal            L unchanged · custody of v stays in h (R4 second half)

PERSIST  (Layer III I/O worker · sheet C · res = durable)
         K = enc(L[0..k))      k < |L|
         ───────────────────────────────
         (L, h, K)  →  (L, h, enc(L))                  write-through, in order · never beyond L

PROJECT  (Layer III · view_star/ view_proj/ · renderer)
         (any state)
         ───────────────────────────────
         (L, h, K)  →  (L, h, K)  ·  emits π(L[0..f))  no state change · reads only below the frontier

OPEN     (Layer III · sheet C · the app starts or reloads)
         res = durable:   L := dec(K)      res = volatile:   L := ε
         ───────────────────────────────
         (·, ·, K)  →  (dec(K) | ε,  ⊥,  K)            h is never restored: a pending arrival is not history
```

**Acknowledgement order (durable).** The proposal acknowledges an arrival only after STEP **and** PERSIST — *durable before ack* (sheet C). Immediately after PERSIST, `k = |L|`; it remains so until another successful STEP. An idle UI alone does not establish that the carrier has caught up, and this order does not forbid OPEN before PERSIST.

**What is not a Core transition.** Delete, rewrite, reset, cut, compaction, index reuse (S6 `[X]` 1); any write from PROJECT (S6 `[X]` 6); a schedule that reads holder or host state (F-S3, F-S4). X3 also excludes a second SUBMIT while `h ≠ ⊥`. OPEN is a proposed Layer III lifecycle operation and can restore less than the pre-reload volatile `L`; it is not a Core reset operation or a proof of history retention across reloads.

---

## X4 — Invariants

| | Invariant | Holds because |
|---|---|---|
| **I1** | **Prefix-freeze between OPENs.** For SUBMIT, STEP, REFUSE, PERSIST and PROJECT: `L` is a prefix of `L'` | only STEP among these changes `L`, and it appends. Arbitrary OPEN is outside this claim; M2 covers the narrower `OPEN ∘ PERSIST` identity |
| **I2** | **Validity.** `valid(L)` in every reachable state | σ satisfies F-H1, F-H2 (E3); `ε` is valid; appends of valid steps preserve validity |
| **I3** | **Durable carrier is a prefix.** Given a valid initial carrier, `K = enc(L[0..k))` with `k ≤ |L|`; after PERSIST, `k = |L|`; volatile mode has no `K` | STEP extends `L`; PERSIST writes only `enc(L)`; durable OPEN restores `dec(K)` |
| **I4** | **One pending arrival in this proposal.** `h` holds at most one value; SUBMIT is enabled only on `⊥` | X2 and the SUBMIT/STEP rules |
| **I5** | **Views are pure.** PROJECT changes no component of Σ; every view is `π(L[0..f))` for the `f` read | S3.4; F-S3; the frontier is read once per view (ord) |
| **I6** | **Committed arrival order between OPENs.** Starting from a reached prefix `L₀`, the `Arrive` subsequence appended after `L₀` equals the values consumed by successful STEPs, in order. A pending SUBMIT is held in `h` and is not yet an arrival recorded in `L` | F-A1 on the reached run supplies one `Arrive` per consumed value; I4 prevents reordering. The recovered prefix belongs to earlier processing, and this claim does not count lost pending input across OPEN |

---

## X5 — Theorems

**Counterexamples bounding I1/I6.** From `(ε, ⊥, enc(ε))`, SUBMIT then STEP can produce `L = [WORD v]` while `K = enc(ε)`. OPEN before PERSIST restores `ε`, so unrestricted prefix-freeze is false; volatile OPEN also restores `ε`. Immediately after SUBMIT and before STEP, `h = v` but no WORD has been appended, so successful SUBMITs cannot be counted as recorded arrivals in every reachable state. The recovery/custody questions remain R3/R4.

**M1 — sufficient authoritative strand history.** *For the observation class consisting of the frontier, indexed row inspection, and pure views of the current strand, `L` suffices. A representation that forgets an indexed row cannot reproduce that whole observation class.*

*Argument within that scope.* The frontier is `|L|`, indexed row inspection returns `e_i`, and I5 views read only `L`. Two strands differing in length or at a row are distinguished by the frontier or that row inspection. Lossless re-encodings are not excluded. This is a statement about retained information, not a proof that one storage layout is uniquely minimal.

*Operational limit and counterexample.* Fixed `L` can coexist with different `h` after SUBMIT, or different `K` before/after PERSIST. SUBMIT enablement, pending-input display and persistence progress therefore do not factor through `L` alone. Carrier content is `enc(L)` only with the explicit caught-up premise, and otherwise needs `k`. M1 does not reduce Σ to `L` or prove every app observable is strand history. It asserts nothing about a build; G4 checks only the bounded D1 replay.

**M2 — determinism modulo σ, and reload identity.** *Starting at `ε`, with no intervening OPEN, given σ, enc, and an arrival sequence `v₁…vₘ` all of whose STEPs succeed, the final strand is `run(σ, ε, v₁…vₘ)` (E2), independent of the interleaving of PROJECT and PERSIST; and under `res = durable`, `OPEN ∘ PERSIST` is the identity on `L` when no STEP intervenes and the persisted bytes remain available.*

*Proof.* PROJECT and PERSIST do not change `L` (X3); STEP is the only writer and is applied once per arrival in SUBMIT order (I4, I6); so `L` is the fold of σ over the arrivals, which is `run`. For reload: after PERSIST, `K = enc(L)`; OPEN sets `L := dec(K) = dec(enc(L)) = L` by the inverse property of enc (X1). ∎

*Corollary.* REFUSE leaves `L` unchanged and retains `h` in X3. Determinism covers the sequence actually consumed by successful STEPs. R4 may require a later custody policy; no drop transition is defined here.

**M3 — final D1 strand; conditional frontier trace.** *F-H4 fixes the final eleven-row strand for `(PIE, DESSERT, PIE, WHOLE, CUSTOMER)` from `ε`. Frontier values 1, 3, 5, 8, 11 additionally require each STEP to refine S4.3: its sole `Arrive(v)` comes first, followed only by zero or more Φ appends.*

*Conditional argument.* With that per-STEP premise, D1's WORD positions 0000, 0001, 0003, 0005, 0008 delimit the five segments, giving those frontiers. E2's broad `Step*` type and F-H4's final equality do not alone state the premise. For example, placing row 0002 at the beginning of the third segment preserves final D1 but gives 1, 2, 5, 8, 11; this illustrates missing partition information, not an admissible schedule under S4.3. The [environment E2/E6/E9](lace-context-iter6-pass-4-environment.md) records the inheritance obligation. A G4 replay must state the segmentation it checks; no schedule follows from either trace.

---

## X6 — Alignment: transition → door / sheet → fences → proof obligation → probe → ruling

| Transition | Realised by | Fences it must uphold | Proof obligation (from the cards) | Device probe | Ruling it waits on |
|---|---|---|---|---|---|
| SUBMIT | sheet S (hopper) | F-A1 · F-G · F-B | the shell cuts nothing; one slot; no history outside `L` | P-INST | — |
| STEP | admitted sections: `route/` → `strand/`, with `word/` / `pointer/` layouts; **σ decision ownership unassigned** | F-H1 · F-H2 · F-H3 · F-A1 · F-N; σ's own (E6) | strand/: one fresh position, every earlier pair unchanged; pointer/: refs earlier and same-line; route/: one admitted section extension per step-element. Selecting those elements has no assigned branch | P-64b (capacity domain) | **R7** (σ and explicit ownership reconciliation) · **R6** (enc) · **R4** (cap) |
| REFUSE | `strand/` resources row; sheet R; sheet H signal | I1 | refusal leaves the prefix unchanged and exposes no false success | P-64b | **R4** (growth; custody) |
| PERSIST | sheet C; I/O worker | I3; persisted-prefix preservation in durable mode, not arbitrary-reload retention | prefix equality; durable before ack; `OPEN ∘ PERSIST` identity only under M2's premises | P-CAR | **R3** (residence and recovery) |
| PROJECT | `view_star/` `view_proj/`; renderer (WebGPU/WGSL) | S6 `[X]` 6 · F-S3 · **R9** ord | non-writing across all exposed paths; reads only `[0, f)` | P-64c (bounds tax); T11 (picture only) | **R9** · **R10** (if NN) |
| OPEN | sheet C; `strand/` empty case (A1) | I2 · I3 | `dec(enc(L)) = L` byte for byte; volatile ⇒ `ε` | P-CAR | **R3** |

The table names responsibilities and ruling dependencies. It is not a complete ownership proof: the route/ and core/ cards both exclude scheduling, so accepted σ still needs explicit implementation ownership. No eighth branch, helper, or expanded card is introduced here.

---

## X7 — What the model refuses to decide

| Refused | Why | Where it goes |
|---|---|---|
| When a POINTER is written | σ is a parameter; E5 establishes no candidate in-region and retains two BLOCKED cases | R7 |
| The bytes of a section; `k`; slot order; index width | enc is a parameter; Q2 CONFLICT, #9, P-64b | R6 |
| Whether the strand grows by `memory.grow` or refuses at a fixed capacity; who holds a refused arrival | cap is a parameter | R4 |
| Where `L` lives across reloads | res is a parameter; the amendment presses it, the Hands are silent | R3 |
| The memory order at the frontier | ord is a parameter. The [compute §3 proposal](lace-context-iter7-pass-2-compute-and-inventory.md#3-where-the-parallelism-is-on-the-two-surfaces) requires complete publication, memory-order, carrier/lifecycle and host premises; append-only alone proves none of those. R9 and its proof obligations remain open | R9 |
| Whether a seed corpus exists, and its identity rule | #15 · G1 | the brief |
| Concurrency beyond one writer | One writer is a premise of [compute §1/§3](lace-context-iter7-pass-2-compute-and-inventory.md), not a thread-count consequence of E2. Manifest open #5 leaves concurrency unstated; production isolation and shared reads remain conditional. No target-wide or Core rule follows | R9 · R11 |

---

## X8 — Alignment with the sealed products (soft diff)

| This model | Sealed / prior | Stance |
|---|---|---|
| X2 `L` | S1.2 | identical |
| STEP | S4.3 `Step_partial = Arrive ; [Φ] ; Continue`; E2 types the whole arrival | per-STEP ordering inheritance must be explicit; M3's frontier trace is conditional |
| I1, I2 | K1 prefix freeze; Q4 CLOSED | I1 covers growth between OPENs; I2 assumes valid initial/recovered state |
| I5 | S3.4 `π` no write-back | identical |
| M1 | companion pass 2 *"Shared state = L. One line."* | supports one authoritative strand history; does not eliminate operational custody or persistence progress |
| M3 | pass 3 witness; E4.1 | final rows agree; frontier trace additionally depends on S4.3 segmentation |
| OPEN / PERSIST | Piece 6 *"persistence is a single append-only log"* | proposed lifecycle; `OPEN ∘ PERSIST` identity is narrower than retention across arbitrary reload |
| one-slot hopper | route/ card *no queue* | modeled shell restriction; not entailed by a route-internal restriction alone |

No competing atom. No new morphism in Core. Six transitions, two of which (STEP, and REFUSE's Core half) are Core; four are Layer III.

## X9 — Original steward receipt (preserved)

The table below records the original pass's claims, not their current proof scope. The 2026-09-20 reconciliation in X0–X8 supersedes its broad M1/M3 and optimality readings; no build was run by that reconciliation.

| Field | Value |
|---|---|
| Product | `docs/plans/reduction-pass-2-execution-model.md` |
| Parameters | σ · enc · cap · res · ord — the rulings list, nothing else |
| Theorems | M1 `PROVED_WITHIN_SCOPE` (X2–X4 over E1–E3) · M2 `PROVED_WITHIN_SCOPE` · M3 `PROVED_WITHIN_SCOPE` (given F-H4) |
| Optimality (X0) | 1 proved (M1); 2 shown (X6, no empty cell); 3 shown (X1 = the brief) |
| Sealed products edited | 0 |
| `src/` | not authorized; not implied |
| Review | one agent |

**Current steward tests:** does not choose σ, enc, cap, res or ord; distinguishes authoritative history from `h` and carrier progress; keeps PROJECT pure; states lifecycle and observation premises; leaves σ ownership unassigned; every free choice cites its ruling.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

One lace, one hand tying, any number of eyes; retention across reload still depends on the stated carrier premises and R3. Emission remains `[GAP]`.
