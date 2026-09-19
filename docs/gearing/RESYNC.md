# FULL REPO RESYNC

**Layer:** III coordination only. Not Core. Emission remains `[GAP]`.

```
STATUS: FIRED
TIP_AT_FIRE: 01055888cf5764fea5bb84c64dc53844a8ec0f59
LIVE_TIP_RULE: origin/main
FIRED_AT: 2026-09-19T03:32:56Z
FIRED_BY: Claude-Projection, on the human's steward signal (resync.sh hardcodes "LaceArc (steward)" for both fire and clear; corrected by hand so the tick is not misattributed)
NOTE: While FIRED, effective tip is always current origin/main. TIP_AT_FIRE is the signal commit. All BASE values are STALE until claim/refresh against live tip.
STATE_AT_FIRE: all eight gear shafts FREE; all doc stations FREE but gearing-meta, held by the firing agent. Nothing held a stale BASE.
REASON: churn, not contention. The tree moved far enough that READINGS of docs/ are stale even though no claim is. Re-read Hands then Shadow before your next drop; that is the obligation this fire carries.
CLEARING: the clear condition is already met by inspection, so any agent running ./docs/coord/coord.sh doctor --auto-clear will clear this. It is not a claim panic and must not be read as one.
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
