# Model behaviors × equations — Pass 4 of 6 PLAN

**Status:** **`EXECUTED`** 2026-09-20 · [`model-behavior-map-pass-4-d1.md`](model-behavior-map-pass-4-d1.md). **Station:** maps (`Grok-maps`).
**Depends on:** L0–L5 · refuse catalog · D1 walks already frozen.
**Cite-only:** [`systems-eq-map-pass-5-d1.md`](systems-eq-map-pass-5-d1.md) · [`math-execution-update-pass-5-witness.md`](math-execution-update-pass-5-witness.md).
**Emission:** `[GAP]`. No `src/`. Do not rewrite those witness files.

Pass 3 listed refusals. Pass 4 labels **one mixed specimen** in behavior-IDs: D1 as L1 + L4, not as a generator of B-When.

---

## 0. One question

Which D1 ticks are forced-legal Arrive, which are shape-legal POINTER, and which arrival-group is already confirmed — without turning the rest into a schedule?

## 1. One result (on execute)

[`model-behavior-map-pass-4-d1.md`](model-behavior-map-pass-4-d1.md) — eleven rows tagged L1 / L4 / L5 / unknown-group.

---

## 2. What execute must tag

| Index | Expected tag |
|---|---|
| 0000, 0001, 0003, 0005, 0008 | L1 Arrive |
| 0002, 0004, 0006, 0007, 0009, 0010 | L4 shape-legal, not forced |
| 0005–0007 | L5 confirmed one arrival, three ticks |
| 0002, 0004, 0009, 0010 grouping | **unknown** |

No new D1 facts. No H-PTR.

## 3. Forbidden this pass

- Invent arrival groups
- Pass 5 free-parameter list (that is the next ticket)
- Open `src/`
- Start pass 5

## 4. Accept pass 4 when

- All eleven indices tagged.
- 6/6 POINTER remain L4 not forced.
- Frozen witnesses unread-write.
- Plan `PLAN` → `EXECUTED`. maps released unless pass 5 is immediately authorized.

## Steward test

Shoe in hands. D1 is one life the model can *show*. **Showing is not scheduling.**
