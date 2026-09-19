# Quiet door #1 (package) — Pass 3 PLAN

**Status:** EXECUTED — grain on `docs/kit/quiet-door-1-ascii.md`. Package door unchanged. Pins not moved. Emission `[GAP]`.  
**Station:** kit (HELD Grok-kit).  
**Object:** quiet door #1 — THEN / NOW / tip grain.  
**Authority:** [`READ_ME_FIRST.md`](READ_ME_FIRST.md) pins as written. Cold-doors pass 5 pin table (cite; do not redo resolve). Pass 1–2 on [`quiet-door-1-ascii.md`](quiet-door-1-ascii.md).  
**Not authority:** live-law rewrite. R1. Graphics grain tables copied in.  
**Emission:** `[GAP]`. No `src/`. Do not rewrite the package door. Do not retarget THEN / NOW.

```
pull/ff → refresh kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append THEN/NOW/tip grain to quiet-door-1-ascii.md
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**What does the package door say is true in the THEN tree, the NOW tree, and at tip — and what would it mean to collapse those three into one pin?**

Pass 3 is grain of D2/D3. It does not redo cold-doors pass 5 resolve. It does not start the routing mechanism (pass 4).

---

## 1. Already flat (do not redo)

| Pass | Holds |
|---|---|
| Cold-doors 5 | THEN `4fe984b` and NOW `044257c` resolve as objects; four claims hold; tip-moved is not a defect in NOW |
| Door #1 p1–p2 | spine + fields; D2/D3 are dated pins, not machines |

---

## 2. Rows execute will fill (empty until proceed)

Three columns. Cells from `git show` / `git cat-file` on the two pins + tip. If a cell cannot be read without crossing OWNS, `[GAP]`.

| Fact | THEN `4fe984b` | NOW `044257c` | Tip (execute HEAD) |
|---|---|---|---|
| `docs/pointer-emission.md` | | | |
| Status line if present | | | |
| `src/` | | | |
| Package door present? | | | |
| STALE banner on the door? | | | |
| Live AGENTS + live law named? | | | |

Expected shape (not frozen): THEN = emission absent, old STALE banner possible; NOW = DRAFT exists, re-read, not tip; tip = DRAFT still, no `src/`, pins unchanged on the door.

Collapse that would look like: move NOW to HEAD; drop THEN; treat DRAFT as accepted.

---

## 3. What execute may write

- Append “Pass 3 — THEN / NOW / tip grain” to [`quiet-door-1-ascii.md`](quiet-door-1-ascii.md).
- One README status tick.
- Mark this plan EXECUTED.

---

## 4. What execute must not do

- Redraw spine or rewrite pass-2 cells.
- Edit `READ_ME_FIRST.md`.
- Retarget THEN / NOW / `e21cf39`.
- Fill G2 or treat DRAFT as accepted.
- Start pass 4 mechanism.
- Claim law / hologram / maps / graphics.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Fetch pins by SHA if needed (depth is not UNREACHABLE).
2. Fill the three-column grain. Cite pass 5 for resolve.
3. Stop. Do not move pins.

Success: three times stay three times; door bytes unchanged.  
Failure: NOW rewritten to tip; THEN dropped; emission filled.

---

## Queued — later passes, not this one

| Pass | Act |
|---|---|
| 4 | routing mechanism vs live law |
| 5 | companion seam |
| 6 | receipt |

---

## 6. Governing check

```text
One pass, one act.
THEN is a tree. NOW is a re-read. Tip is now.
Pins stay. Φ stays [GAP].
```
