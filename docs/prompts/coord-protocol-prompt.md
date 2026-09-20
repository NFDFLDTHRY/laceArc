# Coord protocol — paste-ready for agents

Layer III only. Not Core. Emission remains [GAP]. No src/.

**Current command/mapping audit:** repository update pass 1, 2026-09-20, base `0b2012b`. This prompt documents the existing dispatcher; it grants no editing, override, commit or publication authority. Re-read live ownership before each task.

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

**Known dispatcher limitation:** at the audited base, `force-free gear:<shaft>` reaches a delegate that accepts only claim/release/check/refresh and rejects force-free. This is [U21](../plans/repo-update-pass-1-evidence.md), a static finding awaiting a separately scoped code fix. Do not work around it by editing state files or clearing a real hold as a test. A documented override still requires applicable steward/human authority and a recorded reason; it is not a normal editing step.

Follow the governing [coordination protocol](../coord/README.md) and [standing orders](../../AGENTS.md); this ticket cannot expand them.
