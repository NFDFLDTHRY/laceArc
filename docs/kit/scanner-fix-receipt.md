# Scanner fix — receipt

**Status:** CLOSED. Six of six.  
**Station:** kit.  
**Object:** how a quiet-door rescan must speak.  
**Pin:** `PENDING` (stamped on the execute commit).  
**Diagram:** [`scanner.md`](scanner.md).  
**Not:** live law. Not Hands. Not cold-doors pass 7. Not door #1 pass 7. Not door #2.  
**Emission:** `[GAP]`. No `src/`.

Human law: six passes is one iteration. Leftovers are other doors or other stations. This file does not open pass 7.

---

## What landed

| Pass | Question | Product | Still open |
|---|---|---|---|
| 1 | Can a rescan keep LIVE and still report activity? | spine on `scanner.md`; #1 LIVE + CLOSED `fab1864` | — |
| 2 | In / Does / Break / Gap for stamp vs activity | S1–S8 fields | campaign-window length |
| 3 | Register row vs receipt vs `which` | three-source grain; #10 law vs graphics | #10 OWNS |
| 4 | One walk vs Hands / Core ASCII | read three, speak two; all `New machine?` = no | G2 `[GAP]` |
| 5 | Patch the ten-door table, or refuse? | REFUSE column; pointer under the table | — |
| 6 | Did the iteration keep the split? | this receipt | G2 `[GAP]` |

Correctness: no Fail. A later rescan that calls #1 low-traffic is lying. LIVE is still LIVE. Gaps remain gaps.

---

## What this iteration did not do

Not pass 7.

- Rewrite `READ_ME_FIRST.md`
- Flip LIVE to STALE
- Add an Activity column
- Rewrite #10 OWNS
- Fill G2
- Resume renderer
- Open Rust
- Start quiet door #2

THEN `4fe984b` and NOW `044257c` stay as written on the package door.

```text
LIVE is route health. It is not idle.
CLOSED 6/6 is activity. It is not STALE.
Six is the close.
Φ stays [GAP].
```
