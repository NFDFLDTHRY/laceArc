# Systems × equations map — Pass 5 · D1 × one-tick

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`systems-eq-map-pass-5-plan.md`](systems-eq-map-pass-5-plan.md).
**Frozen witness:** [`math-execution-update-pass-5-witness.md`](math-execution-update-pass-5-witness.md) — **not rewritten**.
**Figure:** ASCII one-tick + P27-F (*one arrival may be several ticks*).
**Emission:** `[GAP]`. H-PTR empty. No `src/`.

A tick is a section. Grouping ticks is not emitting.

---

## P27-F grouping

| Claim | D1 as drawn | Mark |
|---|---|---|
| 0005 WORD WHOLE + 0006 PTR 0003→0005 + 0007 PTR 0006→0004 = one arrival (WHOLE), three sections | Compatible: unseen WHOLE, then two later POINTER sections that attach it and then attach that participation | **CONFIRM** — not CONFLICT |

No other multi-section arrival-boundary is forced by the picture. Those cells stay **unknown**.

---

## Eleven rows

| Index | Kind | Equation | Tick vs arrival | Why POINTER |
|---|---|---|---|---|
| 0000 | WORD PIE | \(\mathsf{Arrive}(\mathrm{PIE})\) | first tick of unseen PIE | — |
| 0001 | WORD DESSERT | \(\mathsf{Arrive}(\mathrm{DESSERT})\) | first tick of unseen DESSERT | — |
| 0002 | PTR 0000→0001 | \(\Phi_{\mathrm{morphism}}\) *shape* + prefix freeze | **unknown** which arrival this tick continues | **Witness-only** |
| 0003 | WORD PIE | \(\mathsf{Arrive}(\mathrm{PIE})\) new occurrence | first tick of this occurrence; Q0 HANDS CONFLICT with spoken “no second WORD” | — |
| 0004 | PTR 0003→0000 | shape + prefix freeze | **unknown**; Q5 HANDS CONFLICT (`0003` then `0004`) | **Witness-only** |
| 0005 | WORD WHOLE | \(\mathsf{Arrive}(\mathrm{WHOLE})\) | first tick of WHOLE arrival (P27-F) | — |
| 0006 | PTR 0003→0005 | shape + prefix freeze | later tick of WHOLE arrival (P27-F) | **Witness-only** |
| 0007 | PTR 0006→0004 | shape + prefix freeze; PTR→PTR allowed | later tick of WHOLE arrival (P27-F); required-shape still OPEN | **Witness-only** |
| 0008 | WORD CUSTOMER | \(\mathsf{Arrive}(\mathrm{CUSTOMER})\) | first tick of unseen CUSTOMER | — |
| 0009 | PTR 0008→0007 | shape + prefix freeze | **unknown** | **Witness-only** |
| 0010 | PTR 0009→0002 | shape + prefix freeze | **unknown** | **Witness-only** |

6/6 POINTER **Witness-only**. H-k empty: two-ref drawings stay drawings.

Literal one-tick-figure reading “one section per arrival” is **refuted** by the confirmed 0005–0007 group (environment E5 / P27-F). The figure remains a tick diagram, not a schedule.

---

## What this walk does not decide

- When 0002 / 0004 / 0009 / 0010 fire
- Whether 0003 was required
- \(k=2\)
- \(\Phi_{\mathrm{schedule}}\)

## `P5-R`

| | |
|---|---|
| Rows | 11 |
| P27-F 0005–0007 | **CONFIRM** |
| Other arrival groups invented | **0** |
| POINTER Witness-only | 6/6 |
| Next | pass 6 map soundness + STOP; **not opened** |

**Emission `[GAP]`. Shoe in hands.**
