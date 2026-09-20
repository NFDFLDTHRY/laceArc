# Model behaviors × equations — Pass 1 of 6 PLAN

**Status:** **`PLAN`** · not executed. **Station:** maps (HELD `Grok-maps` · BASE `9d31a04`).
**Parents:** sealed [`../math-execution-model.md`](../math-execution-model.md) · systems-eq-map CLOSED 6/6 · tech-ref-eq-map CLOSED 6/6.
**Emission:** `[GAP]`. No `src/`. Does not accept `pointer-emission.md`.

**Behavior** here means a *trace of the partial model*: a finite sequence of allowed or forbidden acts on \(L\), plus wall/U12 filters. Not AgentScope “behavioral abstractions.” Not a schedule.

---

## 0. One question

What does the sealed model *do* when you try to run it — which traces are forced, which are free, which are refused — without pretending H-PTR is known?

## 1. One result (on execute)

[`model-behavior-map-pass-1.md`](model-behavior-map-pass-1.md) — a behavior register.

Each row: name · acts · equation · forced / free / refused · feeds a hole?

No function body for \(\Phi_{\mathrm{schedule}}\).

---

## 2. Behaviors execute must name

| Class | Examples |
|---|---|
| **B-Arrive** | first unseen \(v\) appends WORD |
| **B-Reoccur** | later same spelling appends a new WORD (D1 `0003`) — forced as Hands, conflict as spoken Q0 |
| **B-Shape** | a POINTER that names earlier indices is *legal as shape* |
| **B-When** | whether that POINTER is the next tick — **free / hole** |
| **B-Arity** | \(k=2\) on D1 drawings — **free / CONFLICT** |
| **B-Tick** | one section |
| **B-Arrival** | one ingest that may be several ticks (D1 `0005–0007`) |
| **B-Refuse** | rewrite, intern, adjacency-emit, forward-ref, \(\pi\) write-back, Shadow-as-row, rustc-as-row |
| **B-View** | Star membership, 2D/3D pictures — no write |
| **B-Filter-W** | WallCalc outputs (refuse/kin/clock/cite/custody) |
| **B-Filter-U** | U12Calc predicates (target/width/std/panic/\(K\)/runtime) |

D1 is **one** specimen of B-Arrive + B-Shape, not the generator of B-When.

## 3. Forbidden this pass

- Fill B-When
- Pick \(k\)
- Treat spoken Q1 as the behavior
- Open `src/`
- Start pass 2

## 4. Later passes (named only)

| Pass | Job |
|---|---|
| 2 | Legal traces only (forced acts) |
| 3 | Refused traces (S6 + wall + U12) |
| 4 | D1 as one mixed trace (Arrive + witness POINTER) |
| 5 | Free parameters listed as parameters, not answers |
| 6 | Soundness of the behavior map + STOP |

## 5. Accept pass 1 when

- Every class in §2 has a row.
- B-When and B-Arity remain free/hole.
- Plan `PLAN` → `EXECUTED`. maps released unless pass 2 is immediately authorized.

## Steward test

Shoe in hands. A behavior is what the cord would do. **Listing behaviors is not choosing the next wrap.**
