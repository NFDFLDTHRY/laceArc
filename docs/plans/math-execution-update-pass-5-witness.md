# Mathematical execution model — UPDATE pass 5 · D1 witness refresh

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`math-execution-update-pass-5-plan.md`](math-execution-update-pass-5-plan.md).
**Old transcript (frozen):** [`../math-execution-model-pass-3-witness.md`](../math-execution-model-pass-3-witness.md).
**Parent model:** [`../math-execution-model.md`](../math-execution-model.md) after UPDATE passes 2–4.
**Emission:** `[GAP]`. No `src/`. Not an emitter.

**Current-law qualification, 2026-09-22 (mathematical execution model audit, pass 4).** Read the record below as dated history under current law: (1) the physical POINTER constructor is binary `Join(a,b)` over two earlier same-line points, WORD or POINTER ([model](../math-execution-model.md) S1.3, S4.1; [pointer draft, current question table](../pointer-emission.md#current-question-table): Q2 **CLOSED current constructor: 2**, Q4 **CLOSED**); (2) a seen word's later occurrence lands as a WORD row and is followed by the mandatory RootTouch `Join(new occurrence, root)` (S2, S3.3, S4.4; Q5 **WORD occurrence + RootTouch Join**; D1 0003/0004); (3) adjacency alone does not emit (S3.2; Q3 **CLOSED no**); (4) Φ is the historical emission notation for what `Join` now realizes ([namespace register](../namespace-register.md), *Historical emission notation*); (5) the general open is **RM-A retain-when** — with RM-B / RM-C bounded closures — not the constructor ([current steward receipt](../math-execution-model.md#current-steward-receipt--2026-09-22-audit-pass-3)). The pointer draft remains **not accepted**; this header is not acceptance and changes no line below it.

*Superseded on these points:* *Two-reference drawings do not settle Q2* (they do not, alone; the constructor is settled by ruling); in the audit table, the UPDATE-stamp cells `H-PTR empty; Witness-only` on 0002, 0006, 0009, 0010 (each is `Join(a,b)`; the reason for the row is RM-A, open), `Q0 SPOKEN + HANDS CONFLICT` on 0003 (resolved by H3/H4/H1: 0003 lands as a further occurrence; there is no conflict), `Q5 SPOKEN + HANDS CONFLICT` on 0004 (resolved: 0004 is the RootTouch), `required-shape still OPEN` on 0007 (POINTER→POINTER is CLOSED-permitted, D6; whether a given one is *required* is RM-A); in the emission-questions table, **Q0** (closed by H3/H4), **Q1** (RM-A), **Q2** (CLOSED 2), **Q4** (*required* is RM-A), **Q5** (closed: WORD occurrence + RootTouch Join) — **Q3**'s row is unchanged and current; in `P5-R`, *Q2 picked: no* (still not picked *from D1*; ruled elsewhere) and *Next: pass 6 readiness / STOP; not opened* (that campaign closed; the current one is the audit).
*Stands as written:* the specimen; every *Calculated why? no* — still no, for the RM-A reason; *no cell may be read as "emitted because …"* — still true of every POINTER row other than the RootTouch; U6 held; *old witness edited: no* — its bytes are unchanged and this header is a header.

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
