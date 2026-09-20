# Model behaviors × equations — Pass 1

**Status:** **EXECUTED** 2026-09-20. Campaign **CLOSED 6/6** at pass 6. **Station:** maps (`Grok-maps`).
**Ticket:** [`model-behavior-map-pass-1-plan.md`](model-behavior-map-pass-1-plan.md).
**Model:** [`../math-execution-model.md`](../math-execution-model.md) after UPDATE 6/6.
**Emission:** `[GAP]`. B-When unfilled. No `src/`.

A behavior is a trace class of the *partial* model. Listing is not choosing the next wrap.

---

| ID | Acts | Equation | Forced / free / refused | Hole? |
|---|---|---|---|---|
| **B-Arrive** | first unseen \(v\) appends WORD | \(\mathsf{Arrive}(v)\) | **forced** given that ingest | no |
| **B-Reoccur** | later same spelling appends new WORD | Arrive + Piece 4 | **forced** as Hands (D1 `0003`); spoken Q0 **CONFLICT** | H-WORD not filled |
| **B-Shape** | POINTER names earlier indices on this line | \(\Phi_{\mathrm{morphism}}\), Q4 | **legal as shape** if written | not a when |
| **B-When** | that POINTER is the next tick | \(\Phi_{\mathrm{schedule}}\) | **free** | **H-PTR** |
| **B-Arity** | how many refs | Q2 | **free** / CONFLICT; D1 drawings not law | **H-k** |
| **B-Tick** | one section at next index | S1.2 growth | **forced** form of every write | no |
| **B-Arrival** | one ingest, possibly several ticks | P27-F; D1 `0005–0007` | **forced** that arrival ≠ tick; grouping otherwise **free** | not H-PTR |
| **B-Refuse** | rewrite, intern, adjacency-emit, forward-ref, \(\pi\) write-back, Shadow-as-row, rustc-as-row | S6 · WallCalc · U12Calc | **refused** | no |
| **B-View** | Star membership, 2D/3D pictures | \(\mathrm{Star}(v)\), \(\pi\) | **forced** as read-only | no |
| **B-Filter-W** | refuse / kin / clock / cite / custody | WallCalc | **forced** as limits, not stitches | no |
| **B-Filter-U** | target / width / std / panic / \(K\) / runtime\(_\pi\) | U12Calc | **forced** as carrier predicates | no |

D1 = one specimen of B-Arrive + B-Reoccur + B-Shape. It is **not** the generator of B-When.

## `P1-R`

| | |
|---|---|
| Classes | 11 |
| B-When / B-Arity | **free** |
| Next | pass 2 legal traces; **not opened** |

**Emission `[GAP]`. Shoe in hands.**
