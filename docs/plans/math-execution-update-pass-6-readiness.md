# Mathematical execution model — UPDATE pass 6 · readiness + STOP

**Status:** **EXECUTED** 2026-09-20. **Station:** maps (`Grok-maps`).
**Ticket:** [`math-execution-update-pass-6-plan.md`](math-execution-update-pass-6-plan.md).
**Campaign:** UPDATE passes 1–6. **This file closes the iteration.**
**Emission:** `[GAP]`. No `src/`. `pointer-emission.md` **not accepted**.

Accuracy = the model does not say more than the strand. Filling a hole to look finished would be the inaccuracy.

Joint readiness stands: **READY-PARTIAL ∧ BLOCKED-COMPLETE**.

---

## Accuracy board

| Cell | Mark | Cite |
|---|---|---|
| A1 Store | **PASS** | model S1.2 one \(L\); Graphic D; pass 4 AGREE |
| A2 Arrive | **PASS** | S2 WORD append; not merged into Φ |
| A3 Star | **PASS** | S3.1 view; table forbidden |
| A4 Wall | **PASS** | S1.1 \(W : \mathcal{S} \not\hookrightarrow \mathcal{H}\); S6 #8 |
| A5 Φ-morphism | **PASS** | S4.2 \(k\ge 1\); Q2 CONFLICT held |
| A6 Φ-schedule | **PASS** | header + S4.2 + S4.3: SPOKEN ≠ calculated; H-PTR empty |
| A7 Q0 | **PASS** | S4.2 #0 SPOKEN + HANDS CONFLICT `0003`; pass 5 keeps both rows |
| A8 Q2 | **PASS** | CONFLICT; pass 5 did not pick \(k=2\) |
| A9 Q3 | **PASS** | CLOSED no-emit; leftover SPOKEN ≠ store |
| A10 D1 | **PASS** | pass 5: 6/6 POINTER Witness-only |
| A11 G1 | **PASS** | S1.3 OPEN; honest silence |
| A12 Q4 required PTR→PTR | **PASS** | S4.1 / S4.2 #4 OPEN; 0007 not treated as required |
| A13 rustc shelf | **PASS** | model has 0 rustc/wasm64/build-std hits (U12) |
| A14 Acceptance | **PASS** | S0 still **No**; this file is not the acceptance sentence |

**FAIL:** none.

Surgical this pass: S5 Contract I cell said “open schedule” — stale against pass 2. Retied to “schedule SPOKEN≠calculated”. No morphism added.

---

## Calculable now

Defined. May be used as *input* to a later calculation. Not themselves Φ.

- \(L = (e_0,\ldots,e_{n-1})\)
- Kind of each \(e_i\)
- \(\mathsf{Arrive}(v)\)
- \(\mathrm{Star}(v)\) as membership view
- Backward-shape check (\(r < n\), same line)
- Prefix freeze

## Still uncomputable

Saying these are known would make the model inaccurate.

| Hole | Stamp |
|---|---|
| H-WORD later-arrival | Q0 SPOKEN + HANDS CONFLICT |
| H-PTR / \(\Phi_{\mathrm{schedule}}\) | Q1 SPOKEN ≠ calculated |
| H-k | Q2 CONFLICT |
| leftover adjacency as a stored relation | Q3 leftover SPOKEN ≠ store |
| G1 word identity | OPEN |
| required POINTER→POINTER on every later participation | Q4 required OPEN |

---

## STOP

This UPDATE campaign is **closed 6/6**.

| Pass | Product |
|---|---|
| 1 | [`math-execution-update-pass-1-drift.md`](math-execution-update-pass-1-drift.md) |
| 2 | stamps on [`../math-execution-model.md`](../math-execution-model.md) |
| 3 | [`math-execution-update-pass-3-inputs.md`](math-execution-update-pass-3-inputs.md) |
| 4 | [`math-execution-update-pass-4-align.md`](math-execution-update-pass-4-align.md) |
| 5 | [`math-execution-update-pass-5-witness.md`](math-execution-update-pass-5-witness.md) |
| 6 | this file |

No pass 7 of *this* series. Further work is a new ticket.

The model is an accurate **partial** formalization of what the strand already is. It is not an emitter. It is not accepted emission. It does not authorize `src/`.

## `P6-R`

| | |
|---|---|
| A1–A14 | 14 PASS / 0 FAIL |
| Holes filled | **0** |
| Acceptance sentence | **not written** |
| Campaign | **CLOSED 6/6** |

**Emission `[GAP]`. Shoe in hands.**
