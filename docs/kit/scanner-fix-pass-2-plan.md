# Scanner fix — Pass 2 PLAN

**Status:** PLAN only. Not run.  
**Station:** kit (HELD Grok-kit).  
**Object:** scanner fields — stamp vs activity.  
**Authority:** [`scanner.md`](scanner.md) pass-1 spine. Cold-doors stamps. Door #1 receipt `fab1864`.  
**Not:** cold-doors pass 7. Not `READ_ME_FIRST.md`. Not a ten-door table patch.  
**Emission:** `[GAP]`. No `src/`. LIVE stays LIVE. Pins stay.

```
pull/ff → refresh kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append In / Does / Break / Gap / Role to scanner.md
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**What does each scanner piece take in, what does it do, what would collapse it, and what stays a gap?**

Pass 2 is fields under the spine. It does not start grain (register vs receipt vs `which`).

---

## 1. Already flat (do not redo)

| Pass | Holds |
|---|---|
| 1 | stamp ≠ activity; #1 LIVE + CLOSED; 2–10 LIVE + QUIET *for that campaign* |

---

## 2. Rows execute will fill (empty until proceed)

Off the spine only.

| # | Block | In | Does | Break | Gap | Role |
|---|---|---|---|---|---|---|
| S1 | stamp | | | | | |
| S2 | activity | | | | | |
| S3 | `which` | | | | | |
| S4 | idle | | | | | |
| S5 | LIVE | | | | | |
| S6 | CLOSED | | | | | |
| S7 | STALE | | | | | |
| S8 | the miss | | | | | |

Expected: S5 Break = treat LIVE as idle. S6 Break = treat CLOSED as STALE. S7 Break = flip LIVE to STALE because work happened. G2 stays `[GAP]`.

---

## 3. What execute may write

- Append “Pass 2 — fields” to [`scanner.md`](scanner.md).
- One README status tick.
- Mark this plan EXECUTED.

---

## 4. What execute must not do

- Redraw the spine sit table.
- Patch [`cold-doors.md`](cold-doors.md).
- Edit `READ_ME_FIRST.md`.
- Relabel LIVE as STALE.
- Start pass 3 grain.
- Fill G2.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Fill eight rows from the spine. Door wins over invention.
2. Stop.

Success: stamp and activity stay two columns.  
Failure: LIVE flipped; package door rewritten; register patched early.

---

## Queued — later passes, not this one

| Pass | Act |
|---|---|
| 3 | grain: register row vs receipt vs `which` |
| 4 | mechanism: how a rescan must walk |
| 5 | patch the ten-door table, or refuse |
| 6 | receipt |

---

## 6. Governing check

```text
One pass, one act.
LIVE is not idle.
CLOSED is not STALE.
Φ stays [GAP].
```
