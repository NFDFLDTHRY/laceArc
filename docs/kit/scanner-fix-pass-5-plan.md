# Scanner fix — Pass 5 PLAN

**Status:** EXECUTED — REFUSE column; pointer on `cold-doors.md`. Ten rows unchanged. LIVE stays LIVE. Emission `[GAP]`.  
**Station:** kit (HELD Grok-kit).  
**Object:** patch the ten-door table, or refuse.  
**Authority:** [`scanner.md`](scanner.md) passes 1–4. [`cold-doors.md`](cold-doors.md) as written (register CLOSED 6/6). Door #1 receipt `fab1864`.  
**Not:** cold-doors pass 7 of that campaign. Not `READ_ME_FIRST.md`. Not Core ASCII.  
**Emission:** `[GAP]`. No `src/`. LIVE stays LIVE. Pins stay.

```
pull/ff → refresh kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → write the chosen fork onto scanner.md
        → if PATCH: the smallest lawful edit to cold-doors.md
        → if REFUSE: no cold-doors body rewrite
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**Must the ten-door table grow an activity column so a rescan cannot ignore door #1 CLOSED — or does that reopen a closed register, and the split file already forbids the miss?**

Pass 5 is the decision. It does not start the receipt (pass 6).

---

## 1. Already flat (do not redo)

| Pass | Holds |
|---|---|
| Cold-doors 6 | register CLOSED; door 10 station=law noticed, OWNS not rewritten |
| Scanner 1–4 | stamp ≠ activity; walk reads three, speaks two |
| Door #1 | LIVE + CLOSED `fab1864` |

---

## 2. Forks (execute picks one)

| Fork | May write | Must not write |
|---|---|---|
| **PATCH** | add an Activity column (or one pointer line under the ten-door table) on [`cold-doors.md`](cold-doors.md); #1 Activity = CLOSED `fab1864`; 2–9 QUIET *scanner campaign*; #10 station cell still a separate sit | flip any LIVE; retarget THEN/NOW; rewrite OWNS; treat this as cold-doors pass 7 |
| **REFUSE** | a decision box on [`scanner.md`](scanner.md) only; one README tick | any rewrite of the ten-door rows |

Empty until proceed:

| Chosen | Why | What landed |
|---|---|---|
| | | |

Expected lean (not frozen): **REFUSE the column, allow a pointer.** The register's stamp column is still true. Activity already lives on `scanner.md`. Adding a column is a new machine on a closed 6/6. A one-line pointer is a route, not a seventh pass.

#10 station=`law` vs `which`=graphics stays **noticed**. Pass 6 remainder already said do not rewrite OWNS. This pass does not "fix" that as a side act.

---

## 3. What execute may write

- Append “Pass 5 — patch or refuse” to [`scanner.md`](scanner.md).
- Only if PATCH: the smallest lawful edit named above.
- One README status tick.
- Mark this plan EXECUTED.

---

## 4. What execute must not do

- Flip LIVE to STALE.
- Edit `READ_ME_FIRST.md`.
- Retarget THEN / NOW / `e21cf39`.
- Rewrite graphics OWNS.
- Fill G2.
- Start pass 6 receipt in the same tick.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Re-read the walk. LIVE is not idle.
2. Pick PATCH or REFUSE. Write the decision box. If PATCH, keep the edit smaller than a new register campaign.
3. Stop.

Success: a later rescan still cannot call #1 low-traffic; LIVE still LIVE; register 6/6 not reopened as pass 7.  
Failure: LIVE flipped; package door rewritten; cold-doors pass 7 opened under another name.

---

## Queued — later pass, not this one

| Pass | Act |
|---|---|
| 6 | receipt |

---

## 6. Governing check

```text
One pass, one act.
Stamp stays stamp.
Activity already has a file.
Φ stays [GAP].
```
