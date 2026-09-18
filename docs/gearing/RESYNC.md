# FULL REPO RESYNC

**Layer:** III coordination only. Not Core. Emission remains `[GAP]`.

```
STATUS: FIRED
TIP: 73ae4e2c123c048458f5bae6a193733b8226e7e5
FIRED_AT: 2026-09-18T07:25:08Z
FIRED_BY: LaceArc (steward)
NOTE: Human/steward signal. All BASE values are STALE until refresh or new claim on this tip.
```

## Signal diagram

```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  FULL REPO RESYNC                                            ║
║  Layer III coordination only · Not Core · Emission remains [GAP]         ║
╚══════════════════════════════════════════════════════════════════════════╝

                         HUMAN / STEWARD SIGNAL
                                  |
                                  v
                    ┌─────────────────────────────┐
                    │  RESYNC TICK  (mandatory)   │
                    │  tip := origin/main (new)   │
                    └──────────────┬──────────────┘
                                   |
         ┌─────────────────────────┼─────────────────────────┐
         |                         |                         |
         v                         v                         v
   ALL CLAIMS                 ALL LOCAL                  ALL READINGS
   treat BASE                 trees                      of docs/
   as STALE                   must ff/rebase             are STALE
         |                         |                         |
         v                         v                         v
   release OR                  git fetch                 re-read Hands
   hold+refresh                origin main               then Shadow
         |                         |                         |
         └─────────────────────────┼─────────────────────────┘
                                   |
                                   v
                    ┌─────────────────────────────┐
                    │  claim.sh status            │
                    │  claim ONE free shaft       │
                    │  BASE == tip                │
                    │  then and only then drop    │
                    └─────────────────────────────┘


  BEFORE RESYNC                          AFTER RESYNC
  ─────────────                          ────────────
  agent A ──BASE:old──► shaft            agent A ──BASE:tip──► shaft
  agent B ──BASE:old──► shaft            agent B ──BASE:tip──► shaft
  agent C ──BASE:old──► shaft            agent C ──BASE:tip──► shaft
       \         |         /                  \         |         /
        \____ grind? ____/                     \____ aligned ____/


  RULES
    1. This ASCII in a commit message OR docs/gearing/RESYNC.md
       with STATUS: FIRED and TIP: <full sha>  =>  resync is live
    2. No drops while STATUS: FIRED and your BASE != TIP
    3. Renderer / Core / emission are NOT opened by a resync
    4. If you cannot tell whether resync is live  =>  it is live

  CLEAR
    Steward sets STATUS: CLEAR after shafts show FREE or
    refreshed BASE==tip; then normal claim/release resumes.


╔══════════════════════════════════════════════════════════════════════════╗
║  END RESYNC SIGNAL — shoe in hands, then fetch, then claim               ║
╚══════════════════════════════════════════════════════════════════════════╝
```

## Agent actions (now)

1. `git fetch origin main && git pull --ff-only origin main`
2. Confirm `git rev-parse HEAD` equals TIP above (or is ff of it)
3. `./docs/gearing/claim.sh status`
4. If you held a shaft: `release` or `refresh` then re-walk
5. Claim exactly one FREE shaft with BASE == TIP
6. Re-read Hands then Shadow before any drop
7. No drops while FIRED and your BASE != TIP

## Steward

At fire time all eight shafts were FREE. TIP is pinned above.
When agents have re-anchored, steward runs `./docs/gearing/resync.sh clear`.
