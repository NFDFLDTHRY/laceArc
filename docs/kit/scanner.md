# Scanner

**Station:** kit.  
**Executed:** [scanner-fix-pass-1-plan.md](scanner-fix-pass-1-plan.md).  
**Object:** how a quiet-door **rescan** must speak. Not the package door bytes.  
**Not:** live law. Not Hands. Not cold-doors pass 7. Not door #1 pass 7. Not door #2.  
**Emission:** `[GAP]`. No `src/`.

Miss this file exists to stop: after door #1 CLOSED 6/6 (`fab1864`), a rescan called it "low traffic" because LIVE was read as idle.

LIVE is route health. It is not idle.

---

## Split

```
  SCAN
    |
    +-- stamp     LIVE | DATED | STALE | PAUSED | SHUT
    |              (route health — cold-doors table)
    |
    +-- activity  QUIET | WORKED | CLOSED
                   (what this campaign did)

  which(path) = station ownership
  which is not activity
  LIVE is not idle
  CLOSED 6/6 is not STALE
```

---

## Sit at the last false rescan

| # | Door | Stamp | Activity | Idle? |
|---|---|---|---|---|
| 1 | Package | LIVE | CLOSED 6/6 (`fab1864`) | no |
| 2 | Kit index | LIVE | QUIET | yes *for that campaign* |
| 3 | Court | LIVE | QUIET | yes |
| 4 | Live law | LIVE | QUIET | yes |
| 5 | History | LIVE | QUIET | yes |
| 6 | Clock | LIVE | QUIET | yes |
| 7 | Hologram | LIVE | QUIET | yes |
| 8 | Gearing | LIVE | QUIET | yes |
| 9 | Coord | LIVE | QUIET | yes |
| 10 | Graphics | LIVE | QUIET on this door *as door*; graphics station HELD separately | not a stamp flip |

A later rescan that calls #1 low-traffic is lying.

The ten-door table in [`cold-doors.md`](cold-doors.md) is **not** patched this pass. Activity lives here until a later named pass.

THEN `4fe984b` and NOW `044257c` stay as written on the package door.

```text
LIVE is route health.
CLOSED 6/6 is activity.
Φ stays [GAP].
```
