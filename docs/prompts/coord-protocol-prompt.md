# Coord protocol — paste-ready for agents

Layer III only. Not Core. Emission remains [GAP]. No src/.

**Current command/mapping audit:** repository update pass 2, 2026-09-20, against base `10fe4947` with the local dispatch/reason repair. This prompt documents the dispatcher and its isolated checks; it grants no editing, override, commit or publication authority. Re-read live ownership before each task.

```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  COORD UMBRELLA                                              ║
║  docs/coord/coord.sh  —  doc stations + gear:* → claim.sh                 ║
╚══════════════════════════════════════════════════════════════════════════╝

  BEFORE EVERY EDIT
  ─────────────────
  1. git pull --ff-only origin main
  2. ./docs/coord/coord.sh which <file>
  3. ./docs/coord/coord.sh claim <station> "<AgentName>"
  4. edit ONLY files owned by that station
  5. ./docs/coord/coord.sh gate <station> "<AgentName>" <paths...>
  6. commit / push only within the authorized task; one station per commit
  7. ./docs/coord/coord.sh release <station> "<AgentName>"
  8. (steward) ./docs/coord/coord.sh doctor --auto-clear

  DOC STATIONS (no gear shaft needed)
    clipboards  prompts  maps  history  hologram
    renderer    kit      law   graphics  gearing-meta  coord

  GEAR STATIONS (delegate to docs/gearing/claim.sh)
    gear:<shaft>, where shaft is:
    axle gears trainA trainB trainC cells escape audits
    contracts-<shaft>.js  →  gear:<shaft>

  COMMANDS
    status | which <path> | claim | release | check | refresh
    doctor [--auto-clear] | gate <station> "<agent>" <path> [...]
    force-free <station> "<reason>"  (separate authorized override only)

  RULES
    • Fail closed: unknown station / cannot tell which → ERROR (treat as held)
    • Docs-only work never requires a gearing shaft claim
    • RESYNC FIRED + all FREE → doctor --auto-clear (stops stuck BASE panic)
    • claim/check/refresh/doctor fetch origin/main; gate checks the claim
    • A BASE mismatch requires reanchoring; do not merely rewrite BASE
    • An available force-free command is not authority to clear a hold
    • Do not rewrite claim.sh; do not touch src/; do not invent emission

  READ
    docs/coord/README.md
    docs/gearing/CLAIMS.md   (shaft protocol — still authoritative for gear:*)
    docs/gearing/RESYNC.md

╔══════════════════════════════════════════════════════════════════════════╗
║  END COORD — shoe in hands, then which, then claim                       ║
╚══════════════════════════════════════════════════════════════════════════╝
```

## Ownership that directory names alone do not reveal

The dispatcher uses the most specific owned path. This table records the current map, not a proposed reassignment; run `which` on each actual target.

| Path | Current station |
|---|---|
| `docs/clock/lace-projection.html`, `docs/clock/sw.js`, `docs/clock/LATEST.json` | hologram |
| `docs/clock/hcc-a-projection.html`, `docs/shadow-clock-gearing.html`, `docs/hologram/nostd-pipeline.html` | renderer |
| `docs/clock/gearing-code-1to1.md`, `docs/clock/system-mathematical-model.md` | maps |
| `docs/graphics/**`, `docs/graphics-close-reading.md` | graphics |
| `docs/coord/**` | coord |
| `docs/gearing/contracts-<shaft>.js` | `gear:<shaft>` |

**Verified dispatch and reason path:** the [pass 2 repair](../plans/repo-update-pass-2-evidence.md) addresses the rejected gear dispatch recorded in [pass 1 U21](../plans/repo-update-pass-1-evidence.md). The umbrella requires a reason and forwards it to the gear backend, which retains it in `NOTE`. An already-FREE doc station rejects the override; an already-FREE gear claim accepts it and retains the supplied reason. The direct gear command still permits its existing no-reason invocation, which clears `NOTE`. The [15-case isolated fixture](../coord/tests/force-free-dispatch.sh) checks both entrypoints and untouched sentinels; no live hold was used as a fixture. Ordinary claim/release/check/refresh behavior is unchanged.

The direct shaft override remains human-only under [CLAIMS.md](../gearing/CLAIMS.md#5-human-override). An available command does not grant authority, determine staleness or authorize editing state files. Preserve the applicable human instruction and reason; override is not a normal editing step.

Follow the governing [coordination protocol](../coord/README.md) and [standing orders](../../AGENTS.md); this ticket cannot expand them.
