# Quiet door #8 (Gearing) — Pass 5 PLAN

**Status:** EXECUTED — seam on `docs/gearing/quiet-door-8-ascii.md`. Door + HTML + JS unchanged. Emission `[GAP]`.  
**Station:** gearing-meta (HELD Grok-gearing).  
**Object:** Gearing seam — vs Hands, clock, frozen viewer.  
**Authority:** [`quiet-door-8-ascii.md`](quiet-door-8-ascii.md) passes 1–4. [`docs/gearing/README.md`](README.md). [`docs/graphics/README.md`](../graphics/README.md). [`docs/clock/README.md`](../clock/README.md). [`docs/shadow-clock-gearing.html`](../shadow-clock-gearing.html).  
**Not:** rewrite any of those. Not renderer claim. Not a shaft claim. Not Graphic E. Not door #7 pass 7. Not projection iter 5.  
**Emission:** `[GAP]`. No `src/`. Door #7 stays CLOSED. Shafts stay FREE.

```
pull/ff → refresh gearing-meta
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append seam table to quiet-door-8-ascii.md
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**What does the gearing door name, what do the four graphics store, what does the clock door index, what does the frozen viewer show, and what does this reading add — without any of the five becoming another?**

Pass 5 is the seam. It does not start the receipt (pass 6).

---

## 1. Already flat (do not redo)

| Pass | Holds |
|---|---|
| 1–4 | spine, fields, grain, walk: one shaft per agent; this pass takes none |

---

## 2. Rows execute will fill (empty until proceed)

| File | Names | Stores | Writes L? | Becomes the other if |
|---|---|---|---|---|
| `docs/gearing/README.md` | | | | |
| `docs/graphics/README.md` | | | | |
| `docs/clock/README.md` | | | | |
| `docs/shadow-clock-gearing.html` | | | | |
| `docs/gearing/quiet-door-8-ascii.md` | | | | |

Expected: gearing names shafts; Hands stores the four graphics; clock is CLOSED Layer III index; frozen viewer is renderer HTML (the file this door loads); this file reads the gearing door. None writes L. None claims renderer. None takes a shaft. `contracts-*.js` stay `gear:*`.

---

## 3. What execute may write

- Append “Pass 5 — seam” to [`quiet-door-8-ascii.md`](quiet-door-8-ascii.md).
- Mark this plan EXECUTED.

---

## 4. What execute must not do

- Edit the gearing door, Hands, clock files, JS, or any HTML.
- Claim renderer.
- Claim a shaft.
- Fill G2.
- Reopen door #7.
- Start pass 6 receipt.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Quote the five files. Fill Names / Stores / Writes L? / Becomes the other if.
2. Stop.

Success: five files; none becomes another.  
Failure: HTML rewritten; JS rewritten; a shaft taken.

---

## Queued — later passes, not this one

| Pass | Act |
|---|---|
| 6 | receipt |

---

## 6. Governing check

```text
One pass, one act.
Gearing names. Hands stores.
Frozen HTML stays renderer.
Door #7 stays CLOSED.
Φ stays [GAP].
```
