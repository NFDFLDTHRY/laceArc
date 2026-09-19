# Scanner fix — Pass 4 PLAN

**Status:** PLAN only. Not run.  
**Station:** kit (HELD Grok-kit).  
**Object:** scanner **walk** — one mechanism on [`scanner.md`](scanner.md).  
**Authority:** scanner passes 1–3. Package door as a *named door*, not bytes to edit.  
**Adjacent, not this file:** [`docs/systems-manifest-ascii.md`](../systems-manifest-ascii.md) is maps-owned Hands reading. Maps is HELD. This pass does **not** write it. The scanner is not Core.  
**Not:** cold-doors pass 7. Not Hands A13/B12/C12 verbs pasted here. Not a register patch (pass 5).  
**Emission:** `[GAP]`. No `src/`. LIVE stays LIVE.

```
pull/ff → refresh kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append walk mechanism to scanner.md
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**What single walk does a lawful rescan run, how does every S-block and every door apply it (or forbid a fake), and what does it refuse to add — especially versus LIVE-as-idle and versus the Hands / Core ASCII?**

The scanner's mechanism is not arrive / through-star / continue. Those three verbs belong to Hands. This walk **reads three sources, then speaks two columns**.

Pass 4 is the mechanism map. It does not patch the ten-door table (pass 5).

---

## 1. Already flat (do not redo)

| Pass | Holds |
|---|---|
| 1 | stamp ≠ activity |
| 2 | S1–S8 fields |
| 3 | register / receipt / `which` stay three |

---

## 2. Operator as the scanner states it (T1)

Working sentence (scanner wins; execute quotes, does not invent a Core verb):

> LIVE is route health. It is not idle.  
> CLOSED 6/6 is activity. It is not STALE.  
> `which` is ownership. It is not activity.

Walk:

```
 for each named door:
   read register row     → stamp
   read receipt if any   → activity
   read which(path)      → station
   speak stamp AND activity
   never: LIVE ⇒ idle
   never: CLOSED ⇒ STALE
   never: work ⇒ STALE flip
```

Execute draws **one walk box** on [`scanner.md`](scanner.md). Not on systems-manifest-ascii. Not “emit POINTER.” Not “append to D.”

---

## 3. Application register (T2)

Every S-block and the three grain doors. `New machine?` must be `no`.

Rows execute will fill:

| # | Role | What arrives | What is walked | What continues | New machine? |
|---|---|---|---|---|---|
| S1 stamp | | | | | |
| S2 activity | | | | | |
| S3 `which` | | | | | |
| S4 idle | | | | | |
| S5 LIVE | | | | | |
| S6 CLOSED | | | | | |
| S7 STALE | | | | | |
| S8 miss | | | | | |
| D#1 | | | | | |
| D#2 | | | | | |
| D#10 | | | | | |

Expected: all `New machine?` = no. Kit scanner is not Core. Hands keeps its three verbs.

---

## 4. Scanner versus Core ASCII (T3)

```
 scanner.md                     systems-manifest-ascii.md
 ----------                     ------------------------
 kit                            maps (HELD — do not write)
 rescan walk                    Hands reading of the manifest
 stamp + activity               A–D / D1 tape / G2
 LIVE ≠ idle                    not this mechanism

 wrapper-as-Core                [X]
 Hands verbs pasted here        [X]
 G2 when / arity / adjacency    [GAP]
```

---

## 5. What execute may write

- Append “Pass 4 — walk” to [`scanner.md`](scanner.md).
- One README status tick.
- Mark this plan EXECUTED.

---

## 6. What execute must not do

- Edit `docs/systems-manifest-ascii.md` or any maps file.
- Patch [`cold-doors.md`](cold-doors.md).
- Edit `READ_ME_FIRST.md`.
- Copy A13 onto this walk.
- Fill G2.
- Start pass 5.

---

## 7. Single execute act

When the human says proceed (not this tick):

1. Re-read scanner spine + grain. Quote those, not A13.
2. Draw one walk box. Fill the register. Every `New machine?` = no.
3. Draw scanner vs Core ASCII seam. Stop.

Success: one walk; two columns spoken; Core ASCII untouched.  
Failure: Hands verbs here; maps file edited; LIVE flipped.

---

## Queued — later passes, not this one

| Pass | Act |
|---|---|
| 5 | patch the ten-door table, or refuse |
| 6 | receipt |

---

## 8. Governing check

```text
One pass, one act.
Read three. Speak two.
Hands keeps its verbs.
Core ASCII is maps. Do not write it.
Φ stays [GAP].
```
