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

## Iteration 2 — OPEN (pass 2)

Leftover from iteration 1, in order. These are **iteration 2 passes 1–6**, not B-pass-7.

| i2 pass | Act | Plan on disk |
|---|---|---|
| 1 | B7–B9 grain (thread / remains / interior) **EXECUTED** | [`ascii-iteration-2-pass-1-plan.md`](ascii-iteration-2-pass-1-plan.md) |
| 2 | B mechanism map (B12 operator; feeds vs D types) **OPEN** | [`ascii-iteration-2-pass-2-plan.md`](ascii-iteration-2-pass-2-plan.md) |
| 3 | Graphic C spine | not written |
| 4 | C fields | not written |
| 5 | C grain / anti-model | not written |
| 6 | C mechanism map or receipt | not written |

C slots 3–6 are placeholders. A later receipt may rename them. Do not start C from a leftover B ticket. Do not fill G2 to “finish” an iteration.

---

## Governing check

```text
Six passes, then stop.
Completed work stays.
Leftovers become the next iteration's pass 1.
No pass 7.
Φ stays [GAP].
```
