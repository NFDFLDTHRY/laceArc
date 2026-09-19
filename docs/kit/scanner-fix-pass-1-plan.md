# Scanner fix — Pass 1 PLAN

**Status:** EXECUTED — spine on `docs/kit/scanner.md`. Package door unchanged. LIVE stays LIVE. Emission `[GAP]`.  
**Station:** kit (HELD Grok-kit).  
**Object:** the quiet-door **rescan**, not the package door bytes.  
**Miss:** after door #1 CLOSED 6/6 (`fab1864`), a rescan still called it "low traffic" because LIVE was treated as idle.  
**Not:** cold-doors pass 7. Not a rewrite of `READ_ME_FIRST.md`. Not quiet-door #1 pass 7. Not door #2.  
**Authority:** [`cold-doors.md`](cold-doors.md) stamps. [`quiet-door-1-receipt.md`](quiet-door-1-receipt.md) CLOSED 6/6.  
**Emission:** `[GAP]`. No `src/`. Pins stay. LIVE stays LIVE.

```
pull/ff → claim kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → write docs/kit/scanner.md spine: LIVE ≠ idle
        → one pointer in docs/kit/README.md
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**Can a rescan keep LIVE (the door still routes) and still report activity (this door just had a 6-pass) — without collapsing those into STALE, without rewriting the package door, and without opening cold-doors pass 7?**

Pass 1 is the **spine of the scanner**. Later passes hang fields, grain, mechanism, register patch, receipt.

---

## 1. Already flat (do not redo)

| Object | Holds |
|---|---|
| Cold-doors 1–6 | register closed; ten doors LIVE; none STALE |
| Door #1 6-pass | CLOSED `fab1864`; door bytes untouched; THEN/NOW unmoved |
| LIVE | routes to live law or tip — **not** "nobody touched this" |
| STALE | pin or absence-claim that outlives the tree |

Lossy if: LIVE rewritten to STALE because we worked the door; package door rewritten; THEN/NOW moved; G2 filled.

---

## 2. Split execute will draw (shape only; not frozen)

```
  SCAN
    |
    +-- stamp     LIVE | DATED | STALE | PAUSED | SHUT
    |              (route health — cold-doors table)
    |
    +-- activity  QUIET | WORKED | CLOSED
                   (what this campaign did)

  Door #1 sit at last rescan:
    stamp    = LIVE          (true)
    activity = CLOSED 6/6    (true; receipt fab1864)
    idle     = false         (the miss)

  Doors 2–10 at that rescan:
    stamp    = LIVE
    activity = QUIET         (true for that campaign)
```

`which` is station ownership. It is not activity.

---

## 3. What execute may write

Kit only.

- Create [`docs/kit/scanner.md`](scanner.md) spine.
- One pointer sentence in [`docs/kit/README.md`](README.md).
- Mark this plan EXECUTED.

Do **not** patch the ten-door table this pass. That is a later pass (register grain), queued.

---

## 4. What execute must not do

- Edit `READ_ME_FIRST.md`.
- Retarget THEN / NOW / `e21cf39`.
- Relabel LIVE as STALE because work happened.
- Open cold-doors pass 7 or door #1 pass 7.
- Start door #2.
- Fill G2.
- Claim law / hologram / maps / graphics.

---

## 5. Single execute act

When the human says proceed (not this tick):

1. Draw the stamp/activity split. Quote the miss: LIVE was read as idle.
2. Sit door #1 as LIVE + CLOSED. Sit 2–10 as LIVE + QUIET *for that campaign*.
3. Point from the kit README. Stop.

Success: a later rescan cannot call door #1 low-traffic without lying.  
Failure: LIVE flipped to STALE; package door rewritten; cold-doors pass 7 opened.

---

## Queued — later passes, not this one

| Pass | Act |
|---|---|
| 2 | fields (In / Does / Break / Gap) for stamp vs activity |
| 3 | grain: register row vs receipt vs `which` |
| 4 | mechanism: how a rescan must walk |
| 5 | patch the ten-door table with an activity column (or refuse and keep the split file-only) |
| 6 | receipt |

---

## 6. Governing check

```text
One pass, one act.
LIVE is route health. It is not idle.
CLOSED 6/6 is activity. It is not STALE.
Φ stays [GAP].
```
