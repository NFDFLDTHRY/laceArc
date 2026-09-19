# Quiet door #5 (History) — Pass 3 PLAN

**Status:** PLAN only. Not run.  
**Station:** history (HELD Grok-history).  
**Object:** History grain — extract vs sit-note vs law.  
**Authority:** [`quiet-door-5-ascii.md`](quiet-door-5-ascii.md) passes 1–2. History door as written. `coord.sh which`.  
**Not:** history pass 8. Not a new extract. Not live-law rewrite.  
**Emission:** `[GAP]`. No `src/`. Door + extracts stay.

```
pull/ff → refresh history
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append three-column grain to quiet-door-5-ascii.md
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**What does an extract hold, what does a sit-note rule, what does live law store, and what would it mean to collapse those into one file that amends law or revives a walker?**

Pass 3 is grain. It does not start the readings-do-not-amend-law walk (pass 4).

---

## 1. Already flat (do not redo)

| Pass | Holds |
|---|---|
| 1 | spine |
| 2 | Hy1–Hy8 fields |

---

## 2. Rows execute will fill (empty until proceed)

| Kind | Says | `which` | Collapse would look like |
|---|---|---|---|
| History door | | | |
| Extract (as a class) | | | |
| Sit-note (as a class) | | | |
| Pass 6 extract | | | |
| Pass 6 sit-note | | | |
| Pass 7 extract + JSON | | | |
| Live law | | | |

Expected: extracts and sit-notes `which` = history. Live law `which` = law. Collapsing sit-note into live law is the miss. Collapsing extract into sit-note is the other miss. Pass 8 is not a row.

---

## 3. What execute may write

- Append “Pass 3 — grain” to [`quiet-door-5-ascii.md`](quiet-door-5-ascii.md).
- Mark this plan EXECUTED.

---

## 4. What execute must not do

- Edit the door, extracts, sit-notes, or live law.
- Revive a walker.
- Open history pass 8.
- Fill G2.
- Start pass 4 walk.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Quote door, extract class, sit-note class, live law. Do not invent pass 8.
2. Fill the grain. Three stay three.
3. Stop.

Success: a later reading cannot treat a sit-note as live law.  
Failure: extract rewritten; walker revived; law amended.

---

## Queued — later passes, not this one

| Pass | Act |
|---|---|
| 4 | mechanism: readings do not amend law |
| 5 | seam vs live law and vs court |
| 6 | receipt |

---

## 6. Governing check

```text
One pass, one act.
Extract is evidence. Sit-note is ruling.
Law stores. History does not amend it.
This is not pass 8.
Φ stays [GAP].
```
