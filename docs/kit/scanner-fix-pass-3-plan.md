# Scanner fix — Pass 3 PLAN

**Status:** EXECUTED — grain on `docs/kit/scanner.md`. Register unpatched. Emission `[GAP]`.  
**Station:** kit (HELD Grok-kit).  
**Object:** scanner grain — register row vs receipt vs `which`.  
**Authority:** [`scanner.md`](scanner.md) passes 1–2. [`cold-doors.md`](cold-doors.md) rows as written. [`quiet-door-1-receipt.md`](quiet-door-1-receipt.md). `coord.sh which`.  
**Not:** cold-doors pass 7. Not a register rewrite this pass. Not `READ_ME_FIRST.md`.  
**Emission:** `[GAP]`. No `src/`. LIVE stays LIVE.

```
pull/ff → refresh kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append three-source grain to scanner.md
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**What does the register row say, what does a door receipt say, what does `which` say — and what would it mean to collapse those three into one cell?**

Pass 3 is grain. It does not start the rescan walk (pass 4). It does not patch the ten-door table (pass 5).

---

## 1. Already flat (do not redo)

| Pass | Holds |
|---|---|
| 1 | stamp ≠ activity |
| 2 | S5 LIVE ≠ idle; S6 CLOSED ≠ STALE; S7 work ≠ STALE flip |

---

## 2. Rows execute will fill (empty until proceed)

Three columns. Cells from the three files / `which`. If a cell cannot be read without crossing OWNS, `[GAP]`.

| Door | Register row | Receipt / activity file | `which` now | Collapse would look like |
|---|---|---|---|---|
| #1 Package | | | | |
| #2 Kit index | | | | |
| #10 Graphics | | | | |

Expected: #1 register LIVE + no CLOSED column; receipt CLOSED `fab1864`; `which` = kit. #10 register station still `law`; `which` = graphics; no door-#10 receipt.

The other seven can be one "same pattern" line if execute finds no receipt and `which` matches the register station.

---

## 3. What execute may write

- Append “Pass 3 — grain” to [`scanner.md`](scanner.md).
- One README status tick.
- Mark this plan EXECUTED.

---

## 4. What execute must not do

- Patch [`cold-doors.md`](cold-doors.md) (queued as pass 5).
- Edit `READ_ME_FIRST.md`.
- Flip LIVE to STALE.
- Start pass 4 walk.
- Fill G2.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Read register row, receipt if any, `which`. Quote those.
2. Fill the grain. Three sources stay three.
3. Stop.

Success: a rescan that uses only the register cannot claim #1 was idle without ignoring the receipt.  
Failure: register rewritten early; LIVE flipped; three columns merged.

---

## Queued — later passes, not this one

| Pass | Act |
|---|---|
| 4 | mechanism: how a rescan must walk |
| 5 | patch the ten-door table, or refuse |
| 6 | receipt |

---

## 6. Governing check

```text
One pass, one act.
Register is stamp. Receipt is activity.
which is ownership.
Φ stays [GAP].
```
