# Graphics ASCII iterations

**Station:** graphics.  
**Emission:** `[GAP]`. No `src/`. PNGs stay put.

**Law (human, 2026-09-19):** each iteration is **six passes**. That is what this campaign has been doing. What this iteration completed stays. What it did not finish is queued for the next iteration — not as pass 7.

Maps-station `docs/plans/verification-iterations.md` is a different campaign. Do not copy its pass-5-is-human table onto Hands graphics.

---

## Cadence

Plan pass N → Proceed pass N → Commit pass N.  
One pass, one act. Six acts close the iteration.

---

## Iteration 1 — closed

Receipt: [`ascii-iteration-1-receipt.md`](ascii-iteration-1-receipt.md). Pin `77ae5de` (pass 6 execute). Later claim/queue commits do not reopen it.

| Pass | Object | File | Tip |
|---|---|---|---|
| 1 | A spine | `graphic-a-ascii.md` | `7854d03` |
| 2 | A fields | same | pass 2 execute |
| 3 | A8 / A12 grain | same | `18f0791` |
| 4 | A mechanism map | same | `9ce2088` |
| 5 | B spine | `graphic-b-ascii.md` | `f493205` |
| 6 | B fields | same | `77ae5de` |

A map is four-pass complete. B spine + fields are on main. G2 still `[GAP]`.

---

## Iteration 2 — closed

Receipt: [`ascii-iteration-2-receipt.md`](ascii-iteration-2-receipt.md). Pin `4fd3dff` (i2p6 execute). Later claim/queue commits do not reopen it.

| i2 pass | Act | Plan on disk |
|---|---|---|
| 1 | B7–B9 grain (thread / remains / interior) **EXECUTED** | [`ascii-iteration-2-pass-1-plan.md`](ascii-iteration-2-pass-1-plan.md) |
| 2 | B mechanism map (B12 operator; feeds vs D types) **EXECUTED** | [`ascii-iteration-2-pass-2-plan.md`](ascii-iteration-2-pass-2-plan.md) |
| 3 | Graphic C spine **EXECUTED** | [`ascii-iteration-2-pass-3-plan.md`](ascii-iteration-2-pass-3-plan.md) |
| 4 | C fields + Role map **EXECUTED** | [`ascii-iteration-2-pass-4-plan.md`](ascii-iteration-2-pass-4-plan.md) |
| 5 | C grain / anti-model (C6 vs D; C11) **EXECUTED** | [`ascii-iteration-2-pass-5-plan.md`](ascii-iteration-2-pass-5-plan.md) |
| 6 | C mechanism map + i2 receipt **EXECUTED** | [`ascii-iteration-2-pass-6-plan.md`](ascii-iteration-2-pass-6-plan.md) |

B map complete. C map four-pass complete. G2 still `[GAP]`.

---

## Iteration 3 — opened 2026-09-22 by the reference audit

Leftover from iteration 2, in order. These are **iteration 3 passes 1–6**, not C-pass-7. Opened on the human's word *"proceed with pass 1"* for [reference audit pass 1](../plans/reference-audit-pass-1-plan.md), which read *"pay special attention to the 4 graphics"* as naming the D companion (board ruling RA-H05). Pass 3 below is carried by [reference audit pass 2](../plans/reference-audit-pass-2-plan.md) when the human says proceed for it.

| i3 pass | Act | Plan on disk |
|---|---|---|
| 1 | Graphic D ASCII companion (header, D1–D6, key properties, footer) **EXECUTED** | [`graphic-d-ascii.md`](graphic-d-ascii.md) · plan [reference-audit-pass-1](../plans/reference-audit-pass-1-plan.md) |
| 2 | D fields | carried inside pass 1's companion (Fields table); no separate pass |
| 3 | printed A/B/C/D numbers — recovered: all four PNGs print their panel numerals; the letter is the repository's **EXECUTED** | D recorded in pass 1; A/B/C titles, lists and labels recorded by [reference-audit-pass-2](../plans/reference-audit-pass-2-plan.md) in each companion's pass-2 section |
| 4–6 | leftover Hands-silent `[GAP]`s — point, do not fill G2 | not written |

---

## Governing check

```text
Six passes, then stop.
Completed work stays.
Leftovers become the next iteration's pass 1.
No pass 7.
Φ stays [GAP].
```
