# Mathematical execution model — UPDATE pass 5 · D1 witness refresh

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`math-execution-update-pass-5-plan.md`](math-execution-update-pass-5-plan.md).
**Old transcript (frozen):** [`../math-execution-model-pass-3-witness.md`](../math-execution-model-pass-3-witness.md).
**Parent model:** [`../math-execution-model.md`](../math-execution-model.md) after UPDATE passes 2–4.
**Emission:** `[GAP]`. No `src/`. Not an emitter.

Same eleven rows as D1. New stamp column only. **A labeled specimen is not an emitter.**

---

## Specimen (unchanged)

| Position | Kind | Value / depicted references |
|---|---|---|
| 0000 | WORD | PIE |
| 0001 | WORD | DESSERT |
| 0002 | POINTER | 0000 → 0001 |
| 0003 | WORD | PIE |
| 0004 | POINTER | 0003 → 0000 |
| 0005 | WORD | WHOLE |
| 0006 | POINTER | 0003 → 0005 |
| 0007 | POINTER | 0006 → 0004 |
| 0008 | WORD | CUSTOMER |
| 0009 | POINTER | 0008 → 0007 |
| 0010 | POINTER | 0009 → 0002 |

Two-reference drawings do not settle Q2.

---

## Audit under UPDATE labels

| Index | Kind | Arrive / shape | UPDATE stamp | Calculated why? |
|---|---|---|---|---|
| 0000 | WORD PIE | \(\mathsf{Arrive}(\mathrm{PIE})\) | Q0 first unseen | no |
| 0001 | WORD DESSERT | \(\mathsf{Arrive}(\mathrm{DESSERT})\) | Q0 first unseen | no |
| 0002 | POINTER 0000→0001 | Q4 backward shape OK | H-PTR **empty**; Witness-only | **no** |
| 0003 | WORD PIE | \(\mathsf{Arrive}(\mathrm{PIE})\) new occurrence | Q0 SPOKEN + HANDS CONFLICT (second WORD exists) | no — conflict kept |
| 0004 | POINTER 0003→0000 | Q4 shape OK | Q5 SPOKEN + HANDS CONFLICT (`0003` then `0004`); H-PTR empty | **no** |
| 0005 | WORD WHOLE | \(\mathsf{Arrive}(\mathrm{WHOLE})\) | Q0 first unseen | no |
| 0006 | POINTER 0003→0005 | Q4 shape OK | H-PTR empty; Witness-only | **no** |
| 0007 | POINTER 0006→0004 | Q4 POINTER→POINTER **allowed** | required-shape still OPEN; H-PTR empty | **no** |
| 0008 | WORD CUSTOMER | \(\mathsf{Arrive}(\mathrm{CUSTOMER})\) | Q0 first unseen | no |
| 0009 | POINTER 0008→0007 | Q4 shape OK | H-PTR empty; Witness-only | **no** |
| 0010 | POINTER 0009→0002 | Q4 shape OK; reuses older POINTER | H-PTR empty; Witness-only | **no** |

No cell may be read as “emitted because …”. H-k stays empty: every POINTER here names two earlier indices; that is the drawing, not the law.

---

## Identities and orders (restated, not enlarged)

W3 stands: 0000 PIE ≠ 0003 PIE as occurrences; \(\mathrm{Star}(\mathrm{PIE})\) may list `{0000,0003}` as a view; that set is not the whole formation and not a table.

W4 stands: append order; section→operand index descent; depicted operand arrow need not descend.

W5 stands as witnesses only: repeated occurrence, participation in participation, reuse without rewrite. Not a total rule.

---

## Does D1 settle the emission questions?

| Q | Emission stamp (not derived from D1) | Does D1 settle it? |
|---|---|---|
| Q0 | SPOKEN + HANDS CONFLICT on `0003` | **No.** D1 *shows* the conflict. It does not choose. |
| Q1 | SPOKEN ≠ calculated | **No.** POINTER rows are present; H-PTR empty. |
| Q2 | CONFLICT | **No.** Binary drawings stay illustrative. |
| Q3 | CLOSED no-emit; leftover SPOKEN ≠ calculated | **No.** 0000–0001 adjacent plus 0002 present is not a derivation. |
| Q4 | backward CLOSED; required OPEN | **Shape only.** Required POINTER→POINTER not settled by 0007 appearing. |
| Q5 | SPOKEN + HANDS CONFLICT `0003`+`0004` | **No.** D1 *shows* both rows. It does not choose. |

---

## `P5-R`

| | |
|---|---|
| Rows audited | 11 |
| POINTER Witness-only | 6/6 |
| Q2 picked | **no** |
| H-PTR / H-k filled | **no** |
| Old witness edited | **no** |
| U6 | held |
| Next | pass 6 readiness / STOP; **not opened** |

**Emission `[GAP]`. Shoe in hands.**
