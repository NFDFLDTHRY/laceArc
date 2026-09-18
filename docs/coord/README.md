# Coordination umbrella — doc stations + gear shafts

**Layer:** III (agent coordination). Not Core.  
**Emission:** remains `[GAP]`. This shelf does not authorize `src/`.  
**Law:** If you cannot tell which station owns a path, it is held. Fail closed.

Claim/RESYNC on gearing shafts only covered eight `contracts-*.js` files. Agents still ground on docs, prompts, clipboards, and HTML. A stuck `RESYNC` FIRED with all shafts FREE caused perpetual BASE-stale panic. This umbrella adds **doc stations** and a single entrypoint that also delegates gear work to the existing claim protocol.

---

## Entrypoint

```bash
./docs/coord/coord.sh status
./docs/coord/coord.sh which <path>
./docs/coord/coord.sh claim <station> "<agent>"
./docs/coord/coord.sh release <station> "<agent>"
./docs/coord/coord.sh check <station> "<agent>"
./docs/coord/coord.sh refresh <station> "<agent>"
./docs/coord/coord.sh doctor [--auto-clear]
./docs/coord/coord.sh gate <station> "<agent>" <path> [...]
```

Gearing shafts stay under `docs/gearing/claim.sh`. Stations named `gear:<shaft>` strip the prefix and call that script. Do not rewrite the shaft protocol.

---

## Standing rule (every agent, before edit)

1. `git pull --ff-only origin main`
2. `./docs/coord/coord.sh which <file>`
3. `./docs/coord/coord.sh claim <station> "<AgentName>"`
4. Edit only files owned by that station
5. `./docs/coord/coord.sh check <station> "<AgentName>"` before commit
6. Commit / push
7. `./docs/coord/coord.sh release <station> "<AgentName>"`
8. Optionally `./docs/coord/coord.sh doctor --auto-clear` after release if you are steward

Docs-only work never requires a gearing shaft claim.  
`RESYNC` FIRED only blocks gear claims with BASE mismatch; `doctor --auto-clear` clears stuck FIRED when **all** gear claims and **all** doc stations are FREE.

Paste-ready ASCII: `docs/prompts/coord-protocol-prompt.md`.

---

## Doc stations

Station files: `docs/coord/stations/<name>.station` — see [stations/README.md](stations/README.md).

| Station | Owns |
|---|---|
| clipboards | `docs/clipboards/**` |
| prompts | `docs/prompts/**` |
| maps | `docs/reason-model-map.md` `docs/rust-nostd-*.md` `docs/atomic-primitives-map.md` `docs/clock/gearing-code-1to1.md` `docs/coherence-audit*.md` `docs/clock/system-mathematical-model.md` `docs/defrag-plan.md` `docs/plans/**` `docs/namespace-register.md` — and `docs/*.md` as a **catch-all**, so a new file at the court root never fails closed |
| history | `docs/history-recovered*` `docs/history/**` |
| hologram | `docs/hologram/**` `docs/clock/**` (1:1 + math stay maps: exact path wins) |
| renderer | the three Layer III viewers: `docs/shadow-clock-gearing.html` (frozen; designated editor, per `gearing/CLAIMS.md`), `docs/hologram/nostd-pipeline.html`, `docs/clock/hcc-a-projection.html` |
| kit | `docs/kit/**` `.claude/**` (hooks + session config are operating kit) |
| law | `AGENTS.md` `CLAUDE.md` staking, law-why, manifest, graphics, close-reading, `pointer-emission.md`, references, CONTRIBUTING, README, `.gitignore`, `LICENSE`, `docs/README.md` |
| coord | docs/coord/** (this umbrella) |
| gearing-meta | `docs/gearing/*.md` `docs/gearing/*.sh` `docs/gearing/RESYNC.md` (not `contracts-*.js`) |

## Gear stations (delegate to claim.sh)

`gear:axle` `gear:gears` `gear:trainA` `gear:trainB` `gear:trainC` `gear:cells` `gear:escape` `gear:audits`

`docs/gearing/contracts-<shaft>.js` → `gear:<shaft>`.
`docs/gearing/claims/<shaft>.claim` → `gear:<shaft>` (written by `claim.sh` for the holder).

---

## Station file shape

```
STATUS: FREE|HELD
STATION: <name>
OWNS: <one-line description>
AGENT: <id or ->
BASE: <full sha or ->
SINCE: <ISO-8601 or ->
NOTE: <optional>
```

---

## Behavior notes

- `claim` / `check` / `refresh` / `doctor` always `git fetch origin main`.
- `claim` fails if HELD by another agent; sets `BASE` to current `origin/main` SHA.
- `which` prefers the longest / most specific OWNS match. Unknown path → error.
- `gate` = `which` + `check`: exit 0 only if every path maps to the named station and check passes.
- `doctor --auto-clear`: if RESYNC is FIRED and every gear claim and doc station is FREE → runs `./docs/gearing/resync.sh clear`.

Shaft claim protocol (unchanged): `docs/gearing/CLAIMS.md`.  
Resync signal: `docs/gearing/RESYNC.md`.
