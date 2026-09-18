# Coord protocol — paste-ready for agents

Layer III only. Not Core. Emission remains [GAP]. No src/.

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
  5. ./docs/coord/coord.sh check <station> "<AgentName>"   # before commit
  6. commit / push
  7. ./docs/coord/coord.sh release <station> "<AgentName>"
  8. (steward) ./docs/coord/coord.sh doctor --auto-clear

  DOC STATIONS (no gear shaft needed)
    clipboards  prompts  maps  history  hologram
    renderer    kit      law   gearing-meta

  GEAR STATIONS (delegate to docs/gearing/claim.sh)
    gear:axle gears trainA trainB trainC cells escape audits
    contracts-<shaft>.js  →  gear:<shaft>

  COMMANDS
    status | which <path> | claim | release | check | refresh
    doctor [--auto-clear] | gate <station> "<agent>" <path> [...]

  RULES
    • Fail closed: unknown station / cannot tell which → ERROR (treat as held)
    • Docs-only work never requires a gearing shaft claim
    • RESYNC FIRED + all FREE → doctor --auto-clear (stops stuck BASE panic)
    • claim/check/refresh/doctor always fetch origin/main
    • Do not rewrite claim.sh; do not touch src/; do not invent emission

  READ
    docs/coord/README.md
    docs/gearing/CLAIMS.md   (shaft protocol — still authoritative for gear:*)
    docs/gearing/RESYNC.md

╔══════════════════════════════════════════════════════════════════════════╗
║  END COORD — shoe in hands, then which, then claim                       ║
╚══════════════════════════════════════════════════════════════════════════╝
```

Standing law for the session: follow the eight steps above for every file you edit.
