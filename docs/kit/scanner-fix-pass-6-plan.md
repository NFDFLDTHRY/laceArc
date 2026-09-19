# Scanner fix — Pass 6 PLAN

**Status:** EXECUTED — receipt on `docs/kit/scanner-fix-receipt.md`. CLOSED 6/6. LIVE stays LIVE. Emission `[GAP]`.  
**Station:** kit (HELD Grok-kit).  
**Object:** scanner-fix receipt. Close this iteration 6/6.  
**Authority:** [`scanner.md`](scanner.md) passes 1–5. Pointer under the ten-door table. Door #1 receipt `fab1864`.  
**Form:** [`quiet-door-1-receipt.md`](quiet-door-1-receipt.md) as **form**, not as a second package-door close.  
**Not:** cold-doors pass 7. Not door #1 pass 7. Not door #2. Not Core ASCII.  
**Emission:** `[GAP]`. No `src/`. LIVE stays LIVE.

```
pull/ff → refresh kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → write docs/kit/scanner-fix-receipt.md
        → stamp scanner.md CLOSED 6/6
        → mark this plan EXECUTED
        → check · commit · release · STOP
```

Release is this pass. Six are done. Kit does not stay HELD for a pass 7.

---

## 0. Question (one act)

**Did this iteration split LIVE from idle, keep three sources three, refuse an Activity column on a closed register, and leave G2 a gap — and what is leftover for a later named door, not pass 7?**

Pass 6 is the receipt. It does not add fields, grain, or a new operator.

---

## 1. Already flat (do not redo)

| Pass | Product |
|---|---|
| 1 | spine: stamp ≠ activity; #1 LIVE + CLOSED |
| 2 | S1–S8 fields |
| 3 | register / receipt / `which` grain |
| 4 | walk: read three, speak two |
| 5 | REFUSE column; pointer under the table |

---

## 2. Receipt execute will fill (empty until proceed)

**What landed** — one row per pass.

| Pass | Question | Product | Still open |
|---|---|---|---|
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |
| 6 | this receipt | | |

**What this iteration did not do** (not pass 7):

- Rewrite `READ_ME_FIRST.md`
- Flip LIVE to STALE
- Add an Activity column
- Rewrite #10 OWNS
- Fill G2
- Resume renderer
- Open Rust
- Start quiet door #2

Correctness: no Fail if a later rescan that calls #1 low-traffic is now lying, and LIVE is still LIVE. Gaps remain gaps.

---

## 3. What execute may write

- Create [`docs/kit/scanner-fix-receipt.md`](scanner-fix-receipt.md).
- One CLOSED line on [`scanner.md`](scanner.md) header.
- One README status tick.
- Mark this plan EXECUTED.
- Release kit.

---

## 4. What execute must not do

- Edit `READ_ME_FIRST.md`, live law, or AGENTS.
- Flip stamps on the ten-door rows.
- Fill G2.
- Open door #2 or cold-doors pass 7.
- Claim law / hologram / maps / graphics.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Re-read scanner 1–5. Quote products, do not redraw them.
2. Write the receipt. Stamp CLOSED 6/6.
3. Release kit. Stop.

Success: six of six; LIVE still LIVE; G2 `[GAP]`; kit FREE.  
Failure: a seventh pass; LIVE flipped; emission filled.

---

## 6. Governing check

```text
One pass, one act.
Six is the close. Leftovers are other doors.
LIVE is not idle. CLOSED is not STALE.
Φ stays [GAP].
```
