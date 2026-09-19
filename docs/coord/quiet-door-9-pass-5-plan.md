# Quiet door #9 (Coord) — Pass 5 PLAN

**Status:** PLAN only. Not run.  
**Station:** coord (HELD Grok-coord).  
**Object:** Coord seam — vs Hands, gearing, kit.  
**Authority:** [`quiet-door-9-ascii.md`](quiet-door-9-ascii.md) passes 1–4. [`docs/coord/README.md`](README.md). [`docs/graphics/README.md`](../graphics/README.md). [`docs/gearing/README.md`](../gearing/README.md). [`docs/kit/README.md`](../kit/README.md).  
**Not:** rewrite any of those. Not a rewrite of `coord.sh`. Not renderer claim. Not a shaft claim. Not Graphic E. Not door #8 pass 7. Not projection iter 5.  
**Emission:** `[GAP]`. No `src/`. Door #8 stays CLOSED. Shafts stay FREE.

```
pull/ff → refresh coord
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append seam table to quiet-door-9-ascii.md
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**What does the coord door name, what do the four graphics store, what does the gearing door name, what does the kit index name, and what does this reading add — without any of the five becoming another?**

Pass 5 is the seam. It does not start the receipt (pass 6).

---

## 1. Already flat (do not redo)

| Pass | Holds |
|---|---|
| 1–4 | spine, fields, grain, walk: fail closed; which then claim; this pass does not rewrite `coord.sh` |

---

## 2. Rows execute will fill (empty until proceed)

| File | Names | Stores | Writes L? | Becomes the other if |
|---|---|---|---|---|
| `docs/coord/README.md` | | | | |
| `docs/graphics/README.md` | | | | |
| `docs/gearing/README.md` | | | | |
| `docs/kit/README.md` | | | | |
| `docs/coord/quiet-door-9-ascii.md` | | | | |

Expected: coord names stations; Hands stores the four graphics; gearing is CLOSED Layer III shafts; kit is QUIET as door #2; this file reads the coord door. None writes L. None rewrites `coord.sh`. None claims renderer. None takes a shaft.

---

## 3. What execute may write

- Append “Pass 5 — seam” to [`quiet-door-9-ascii.md`](quiet-door-9-ascii.md).
- Mark this plan EXECUTED.

---

## 4. What execute must not do

- Edit the coord door, `coord.sh`, Hands, gearing, kit files, JS, or any HTML.
- Claim renderer.
- Claim a shaft.
- Fill G2.
- Reopen door #8.
- Start pass 6 receipt.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Quote the five files. Fill Names / Stores / Writes L? / Becomes the other if.
2. Stop.

Success: five files; none becomes another.  
Failure: `coord.sh` rewritten; a shaft taken; door #8 reopened.

---

## Queued — later passes, not this one

| Pass | Act |
|---|---|
| 6 | receipt |

---

## 6. Governing check

```text
One pass, one act.
Coord names. Hands stores.
coord.sh stays unedited this pass.
Door #8 stays CLOSED.
Φ stays [GAP].
```
