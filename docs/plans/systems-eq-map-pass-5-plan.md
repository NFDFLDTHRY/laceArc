# Systems × equations map — Pass 5 of 6 PLAN

**Status:** **`PLAN`** · not executed. **Station:** maps (HELD `Grok-maps` · BASE `0c19245`).
**Depends on:** pass 1–4 EXECUTED. Completeness: [`systems-eq-map-pass-4-complete.md`](systems-eq-map-pass-4-complete.md).
**Specimen (frozen):** Graphic D / D1 + [`math-execution-update-pass-5-witness.md`](math-execution-update-pass-5-witness.md).
**Figure:** ASCII one-tick (pass 5) + P27-F caption (arrival ≠ tick).
**Equations:** \(\mathsf{Arrive}\), \(\Phi_{\mathrm{morphism}}\) shape, \(\mathsf{Step}_{\mathrm{partial}}\), prefix freeze.
**Emission:** `[GAP]`. No `src/`. Does not accept `pointer-emission.md`.

Pass 4 said the map is complete as a map. Pass 5 walks the **specimen** across that map.

---

## 0. One question

Do the eleven D1 rows sit on the one-tick figure and the equations without forcing “one arrival = one section,” and without turning any POINTER into a calculated why?

## 1. One result (on execute)

[`systems-eq-map-pass-5-d1.md`](systems-eq-map-pass-5-d1.md) — row audit: D1 index · kind · tick-of-which-arrival · equation · stamp.

The old UPDATE pass-5 witness is **not rewritten**. This file is the *map-walk* of the same specimen.

---

## 2. What execute must show

P27-F already names one grouping: **0005–0007 = one arrival (WHOLE), three sections**. Execute must either confirm that grouping from D1 *as drawn*, or mark **CONFLICT** if the picture does not force it.

Then, for every index 0000–0010:

| Column | Allowed values |
|---|---|
| Equation | Arrive / Φ-morphism *shape* / prefix-freeze only |
| Tick vs arrival | first tick of unseen \(v\) / later tick of same arrival / unknown |
| Why POINTER | **Witness-only** — H-PTR empty |

Do **not** invent arrival-boundaries for PIE at 0000 vs 0003 vs POINTER 0002/0004 beyond what D1 and P27-F already say. Unknown is a legal cell.

Q2 stays CONFLICT. Binary refs stay drawings.

## 3. Forbidden this pass

- Fill H-PTR / H-k / G2
- Treat D1 as a scheduler
- Silence HANDS CONFLICT on `0003` / `0004`
- Rewrite the one-tick ASCII figure
- Run rustc
- Accept emission
- Open `src/`
- Start pass 6

## 4. Accept pass 5 when

- All eleven rows audited.
- Arrival ≠ tick is either confirmed on at least one D1 group or named CONFLICT with P27-F.
- 6/6 POINTER Witness-only.
- Plan `PLAN` → `EXECUTED`. maps released unless pass 6 is immediately authorized.

## Steward test

Shoe in hands. A tick is a section. An arrival may take several ticks. **Grouping ticks is not emitting.**
