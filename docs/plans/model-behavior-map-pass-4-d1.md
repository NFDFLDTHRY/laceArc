# Model behaviors × equations — Pass 4 · D1 mixed trace

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`model-behavior-map-pass-4-plan.md`](model-behavior-map-pass-4-plan.md).
**Cite-only:** [`systems-eq-map-pass-5-d1.md`](systems-eq-map-pass-5-d1.md) · UPDATE pass-5 witness. Those files unread-write.
**Emission:** `[GAP]`. Showing ≠ scheduling. No `src/`.

---

| Index | Kind | Tag |
|---|---|---|
| 0000 | WORD PIE | **L1** Arrive |
| 0001 | WORD DESSERT | **L1** Arrive |
| 0002 | PTR 0000→0001 | **L4** shape-legal, not forced · grouping **unknown** |
| 0003 | WORD PIE | **L1** Arrive (reoccur) |
| 0004 | PTR 0003→0000 | **L4** not forced · grouping **unknown** |
| 0005 | WORD WHOLE | **L1** + **L5** first tick of WHOLE arrival |
| 0006 | PTR 0003→0005 | **L4** + **L5** later tick of WHOLE |
| 0007 | PTR 0006→0004 | **L4** + **L5** later tick of WHOLE |
| 0008 | WORD CUSTOMER | **L1** Arrive |
| 0009 | PTR 0008→0007 | **L4** not forced · grouping **unknown** |
| 0010 | PTR 0009→0002 | **L4** not forced · grouping **unknown** |

6/6 POINTER = L4. One confirmed L5 group: `0005–0007`. No new D1 facts. B-When still free.

## `P4-R`

| | |
|---|---|
| Indices | 11 |
| Invented groups | **0** |
| Next | pass 5 free parameters; **not opened** |

**Emission `[GAP]`. Shoe in hands.**
