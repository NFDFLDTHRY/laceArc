# The reduction — pass 2: the mathematical model of execution

**Status:** `[PROPOSAL]` model. **Not an emitter. Not `src/`. Parametric in exactly the human's rulings.** **Station:** maps. **Emission:** `[GAP]`.
**Plan:** [reduction-pass-2-plan.md](reduction-pass-2-plan.md). **Extends, does not edit:** the sealed [algebra](../math-execution-model.md) S1–S6 (Core growth) and the [environment](lace-context-iter6-pass-4-environment.md) E1–E7 (σ typed and fenced). **Models:** the whole deliverable — hopper, Core, carrier, views, reload — as one state machine.
**Authority (highest first):** Graphics A–D → manifest → algebra → environment → [the shape](lace-context-iter6-pass-5-crate-proposal.md) → [compute model](lace-context-iter7-pass-2-compute-and-inventory.md) → this model (lowest). Where this and any of those differ, this is wrong.

**One sentence.** The running app has exactly one authoritative state, the strand `L`; six transitions; six invariants; and it is deterministic modulo σ. *Optimal* is a definition here (X0), not a compliment.

---

## X0 — What "optimal" means in this document

An execution model **M** of the deliverable is *optimal* when:

1. **minimal state** — no proper reduct of its authoritative state reproduces all observables (X4, M1);
2. **minimal transitions** — each transition realises exactly one door or sheet of the shape and carries exactly one proof obligation (X6);
3. **parametric only in the rulings** — every free choice in M is an item on the human's brief (R3, R4, R6, R7, R9) and no free choice is an agent's (X7).

This document claims M is optimal in that sense and proves 1 within scope; 2 and 3 are shown by the tables. It does not claim M is the only such model.

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
   star(v)= Star(v)(L)                 a star                                        view_star/
   k      = the largest index with K = enc(L[0..k))                                  sheet C
```

**Why `h` is one slot and not a queue.** The route/ card admits *no internal work queue or accumulating route buffer*; a hopper holding two arrivals would be a second history (arrival order kept outside `L`). One slot means the shell blocks SUBMIT while `h ≠ ⊥` — **backpressure is one arrival deep**, by the law rather than by choice.

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

**Acknowledgement order (durable).** The shell acknowledges an arrival to the user only after STEP **and** PERSIST — *durable before ack* (sheet C). So at every quiescent state under `res = durable`, `k = |L|`.

**What is not a transition.** Delete, rewrite, reset, cut, compaction, index reuse (S6 `[X]` 1); any write from PROJECT (S6 `[X]` 6); any transition that reads holder or host state (F-S3, F-S4); a second SUBMIT while `h ≠ ⊥`.

---

## X4 — Invariants

| | Invariant | Holds because |
|---|---|---|
| **I1** | **Prefix-freeze.** For every transition `(L, ·, ·) → (L', ·, ·)`: `L` is a prefix of `L'` | only STEP touches `L`, and it appends; OPEN reconstructs the same `L` (I3, M2) |
| **I2** | **Validity.** `valid(L)` in every reachable state | σ satisfies F-H1, F-H2 (E3); `ε` is valid; appends of valid steps preserve validity |
| **I3** | **Carrier is a prefix.** `K = enc(L[0..k))` with `k ≤ |L|`; after PERSIST, `k = |L|`; `K` is never ahead of `L` | PERSIST writes only `enc(L)`; nothing else writes `K` |
| **I4** | **One pending arrival.** `h` holds at most one value; SUBMIT is enabled only on `⊥` | X2; the route/ card's no-queue rule |
| **I5** | **Views are pure.** PROJECT changes no component of Σ; every view is `π(L[0..f))` for the `f` read | S3.4; F-S3; the frontier is read once per view (ord) |
| **I6** | **Arrival order.** The subsequence of `Arrive` steps in `L` equals the sequence of successful SUBMITs, in order, one per STEP | F-A1; I4 (no reordering is possible with one slot) |

---

## X5 — Theorems

**M1 — minimal authoritative state.** *Every observable of the running app is a function of `L` and the parameters; therefore the authoritative state is `L` alone, and no proper reduct of `L` suffices.*

*Proof (within scope: X2–X4 over E1–E3).* Observables are: the frontier, `f = |L|` by definition; every view, `π(L[0..f))` by I5; the carrier's content, `enc(L[0..k))` by I3, hence a function of `L` and `k`, and `k = |L|` at every quiescent durable state; the pending arrival `h`, which is **custody, not history** — it is not in any view (I5 reads `L` only), not in `K` (I3), and not restored by OPEN (X3) — so it is not an observable of the strand's history, only of the UI's moment. Hence every observable factors through `L`. Sufficiency: `L` determines them all, by the same clauses. Necessity: `π` must distinguish two strands that differ at any index (Piece 4: every occurrence is its own passage; Piece 13: views show recorded facts), so no reduct that forgets an index reproduces all views. ∎

*Scope note.* M1 is a theorem about the model, under the fences. It does not assert anything about a build; G4 (the D1 replay) is how a build is checked against it.

**M2 — determinism modulo σ, and reload identity.** *Given σ, enc, and an arrival sequence `v₁…vₘ` all of whose STEPs succeed, the final strand is `run(σ, ε, v₁…vₘ)` (E2), independent of the interleaving of PROJECT and PERSIST; and under `res = durable` with durable-before-ack, `OPEN ∘ PERSIST` is the identity on `L`.*

*Proof.* PROJECT and PERSIST do not change `L` (X3); STEP is the only writer and is applied once per arrival in SUBMIT order (I4, I6); so `L` is the fold of σ over the arrivals, which is `run`. For reload: after PERSIST, `K = enc(L)`; OPEN sets `L := dec(K) = dec(enc(L)) = L` by the inverse property of enc (X1). ∎

*Corollary.* A REFUSE'd arrival leaves `L` unchanged and is re-STEPped or dropped per R4; determinism then holds for the sequence of *accepted* arrivals.

**M3 — the D1 trace.** *For any σ satisfying F-H4, the run on `(PIE, DESSERT, PIE, WHOLE, CUSTOMER)` from `ε` passes through exactly the eleven-row strand of Graphic D, with frontier values 1, 3, 5, 8, 11 after the five STEPs.*

*Proof.* F-H4 is the statement that D1 is a run of σ (E3); the frontier after each STEP is `|L|`; counting D1's rows per arrival gives 1, 3, 5, 8, 11. ∎ This is the trace the checker replays (G4) and the only hardware-independent test the model offers today.

---

## X6 — Alignment: transition → door / sheet → fences → proof obligation → probe → ruling

| Transition | Realised by | Fences it must uphold | Proof obligation (from the cards) | Device probe | Ruling it waits on |
|---|---|---|---|---|---|
| SUBMIT | sheet S (hopper) | F-A1 · F-G · F-B | the shell cuts nothing; one slot; no history outside `L` | P-INST | — |
| STEP | `route/` → `strand/`; σ; `word/` `pointer/` layouts | F-H1 · F-H2 · F-H3 · F-A1 · F-N; σ's own (E6) | strand/: one fresh position, every earlier pair unchanged; pointer/: refs earlier and same-line; route/: exactly one section extension per step-element, no hidden append | P-64b (capacity domain) | **R7** (σ) · **R6** (enc) · **R4** (cap) |
| REFUSE | `strand/` resources row; sheet R; sheet H signal | I1 | refusal leaves the prefix unchanged and exposes no false success | P-64b | **R4** (growth; custody) |
| PERSIST | sheet C; I/O worker | I3 · F-H1 across restarts | prefix equality; durable before ack; never ahead of `L` | P-CAR | **R3** (residence) |
| PROJECT | `view_star/` `view_proj/`; renderer (WebGPU/WGSL) | S6 `[X]` 6 · F-S3 · **R9** ord | non-writing across all exposed paths; reads only `[0, f)` | P-64c (bounds tax); T11 (picture only) | **R9** · **R10** (if NN) |
| OPEN | sheet C; `strand/` empty case (A1) | I2 · I3 | `dec(enc(L)) = L` byte for byte; volatile ⇒ `ε` | P-CAR | **R3** |

No cell is empty. Every transition has one owner and one obligation; every free choice is a ruling.

---

## X7 — What the model refuses to decide

| Refused | Why | Where it goes |
|---|---|---|
| When a POINTER is written | σ is a parameter; E5 shows no candidate is in the region yet | R7 |
| The bytes of a section; `k`; slot order; index width | enc is a parameter; Q2 CONFLICT, #9, P-64b | R6 |
| Whether the strand grows by `memory.grow` or refuses at a fixed capacity; who holds a refused arrival | cap is a parameter | R4 |
| Where `L` lives across reloads | res is a parameter; the amendment presses it, the Hands are silent | R3 |
| The memory order at the frontier | ord is a parameter; append-only makes readers safe under release/acquire, but the choice is the human's | R9 |
| Whether a seed corpus exists, and its identity rule | #15 · G1 | the brief |
| Concurrency beyond one writer | manifest open #5; single writer is a **target circumstance** on both surfaces, not a Core rule | R9 · R11 |

---

## X8 — Alignment with the sealed products (soft diff)

| This model | Sealed / prior | Stance |
|---|---|---|
| X2 `L` | S1.2 | identical |
| STEP | S4.3 `Step_partial = Arrive ; [Φ] ; Continue` with the bracket typed by E2 | agrees; STEP is one σ-step, possibly several ticks (companion P27-F caption) |
| I1, I2 | K1 prefix freeze; Q4 CLOSED | identical |
| I5 | S3.4 `π` no write-back | identical |
| M1 | companion pass 2 *"Shared state = L. One line."* | **CONFIRMs** it with a proof |
| M3 | pass 3 witness; E4.1 | agrees; adds the frontier trace |
| OPEN / PERSIST | Piece 6 *"persistence is a single append-only log"* | agrees; makes it a transition pair with an invariant |
| one-slot hopper | route/ card *no queue* | derived, not invented |

No competing atom. No new morphism in Core. Six transitions, two of which (STEP, and REFUSE's Core half) are Core; four are Layer III.

## X9 — Steward receipt

| Field | Value |
|---|---|
| Product | `docs/plans/reduction-pass-2-execution-model.md` |
| Parameters | σ · enc · cap · res · ord — the rulings list, nothing else |
| Theorems | M1 `PROVED_WITHIN_SCOPE` (X2–X4 over E1–E3) · M2 `PROVED_WITHIN_SCOPE` · M3 `PROVED_WITHIN_SCOPE` (given F-H4) |
| Optimality (X0) | 1 proved (M1); 2 shown (X6, no empty cell); 3 shown (X1 = the brief) |
| Sealed products edited | 0 |
| `src/` | not authorized; not implied |
| Review | one agent |

**Steward tests:** does not choose σ, enc, cap, res or ord; adds no state that is not a function of `L`; keeps `h` as custody; keeps PROJECT pure; every transition cites its door; every free choice cites its ruling.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

One lace, one hand tying, any number of eyes, a box to keep it in overnight, and the same lace in the morning. Emission remains `[GAP]`.
