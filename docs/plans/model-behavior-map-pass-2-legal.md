# Model behaviors × equations — Pass 2 · legal traces

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`model-behavior-map-pass-2-plan.md`](model-behavior-map-pass-2-plan.md).
**Parent:** [`model-behavior-map-pass-1.md`](model-behavior-map-pass-1.md).
**Emission:** `[GAP]`. B-When free. No `src/`.

From \(L=\varepsilon\). Classes, not every string.

---

| Class | Trace | Status |
|---|---|---|
| L0 | do nothing; \(L=\varepsilon\) | **forced-legal** |
| L1 | \(v_1,\ldots,v_n\) each fire \(\mathsf{Arrive}(v_i)\) (repeats allowed) | **forced-legal** given those ingests |
| L2 | after any prefix, read \(\mathrm{Star}(v)\) or \(\pi(L)\) | **forced-legal** read |
| L3 | run WallCalc or U12Calc on a proposed act | **forced-legal** filter |
| L4 | append \((\mathsf{POINTER},r_1,\ldots,r_k)\) with \(k\ge 1\), each \(r < n\), same line | **shape-legal**, **not forced** |
| L5 | one arrival spanning several ticks | **compatible** (P27-F); grouping not forced here |

L1 alone is a complete legal life of Arrive. It is not Piece 2 complete: L4 may appear and this pass does not say when.

No generator of POINTER rows. B-When / B-Arity stay free.

## `P2-R`

| | |
|---|---|
| Classes | L0–L5 |
| Forced POINTER | **none** |
| Next | pass 3 refused traces; **not opened** |

**Emission `[GAP]`. Shoe in hands.**
