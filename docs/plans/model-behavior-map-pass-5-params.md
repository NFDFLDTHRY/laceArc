# Model behaviors × equations — Pass 5 · free parameters

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`model-behavior-map-pass-5-plan.md`](model-behavior-map-pass-5-plan.md).
**Emission:** `[GAP]`. Values **not chosen**. No `src/`.

Naming an axis is not picking a point.

---

| Param | Domain | Value | Hole |
|---|---|---|---|
| \(\theta_{\mathrm{when}}\) | {this arrival continues with L4, it does not} per ingest | **not chosen** | H-PTR |
| \(\theta_k\) | integers \(k \ge 1\) | **not chosen** (not 2) | H-k |
| \(\theta_{\mathrm{group}}\) | partitions of ticks into arrivals, other than confirmed `{0005,0006,0007}` | **not chosen** | extra L5 |
| \(\theta_{\mathrm{WORD2}}\) | later same spelling may Arrive (Hands) vs spoken “no second WORD” | **not chosen** | H-WORD / Q0 CONFLICT |
| \(\theta_{\mathrm{G1}}\) | identity of a spelling as WORD value | **not chosen** | G1 |
| \(\theta_{\mathrm{reqPTR}}\) | later participation must / must not write PTR→PTR | **not chosen** | Q4 required OPEN |
| \(\theta_{\mathrm{left}}\) | leftover adjacency is / is not a stored relation | **not chosen** (Hands: not a store) | leftover SPOKEN ≠ store |

These seven are the free coordinates of the partial behavior space. WallCalc and U12Calc constrain acts; they do not pick these points.

## `P5-R`

| | |
|---|---|
| Params | 7 |
| Values assigned | **0** |
| Next | pass 6 soundness + STOP; **not opened** |

**Emission `[GAP]`. Shoe in hands.**
