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
./docs/coord/coord.sh force-free <station> "<reason>"
./docs/coord/coord.sh check <station> "<agent>"
./docs/coord/coord.sh refresh <station> "<agent>"
./docs/coord/coord.sh doctor [--auto-clear]
./docs/coord/coord.sh gate <station> "<agent>" <path> [...]
```

The entrypoint itself is [coord.sh](coord.sh); the station files it reads are under [stations/](stations/README.md).

Gearing shafts stay under `docs/gearing/claim.sh`. Stations named `gear:<shaft>` strip the prefix and call that script. Do not rewrite the shaft protocol.

**Override dispatch, pass 2:** the umbrella forwards its required reason to the gear backend, which retains that supplied reason in `NOTE`. This repairs the rejected dispatch recorded by [pass 1 U21](../plans/repo-update-pass-1-evidence.md). Doc and gear behavior remains distinct: an already-FREE doc station rejects the override; an already-FREE gear claim accepts it and retains the reason. The direct gear command still permits its existing no-reason invocation and clears `NOTE` in that case. Command availability grants no override authority; the direct shaft override remains human-only.

The [isolated regression fixture](tests/force-free-dispatch.sh), run with `bash docs/coord/tests/force-free-dispatch.sh`, copies both scripts into a temporary directory and creates synthetic claims there. It checks reason preservation, entrypoint-specific FREE behavior, rejected operations and untouched sentinels without changing real claims or contacting a remote.

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
| hologram | `docs/hologram/**` `docs/clock/**` (1:1 + math stay maps: exact path wins); this currently includes `docs/clock/lace-projection.html`, `projection-bake-worker.js`, `sw.js`, and release metadata |
| renderer | three explicit viewer exceptions: `docs/shadow-clock-gearing.html` (frozen; designated editor, per `gearing/CLAIMS.md`), `docs/hologram/nostd-pipeline.html`, `docs/clock/hcc-a-projection.html` |
| kit | `docs/kit/**` `.claude/**` (hooks + session config are operating kit) |
| law | `AGENTS.md` `CLAUDE.md` staking, law-why, manifest, `pointer-emission.md`, references, CONTRIBUTING, README, `.gitignore`, `LICENSE`, `docs/README.md` |
| graphics | `docs/graphics/**` `docs/graphics-close-reading.md` — Hands A–D. Source of record. Not a second store. |
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
- `force-free` requires a reason. For doc stations it requires HELD and records the prior holder, timestamp and reason in `NOTE`. For gear claims it delegates to the shaft override, clears HELD or FREE state fields, and retains the supplied reason in `NOTE`. The doc command was restored under [iteration 2 pass 5, E3](../plans/verification-iter2-pass-5-plan.md); pass 2 repairs the later-identified gear dispatch and reason path. **It is an override, not an expiry**: nothing in this protocol decides a claim is stale or grants permission to clear it.

Shaft claim protocol: [CLAIMS.md](../gearing/CLAIMS.md); its direct no-reason override remains compatible.

Resync signal: `docs/gearing/RESYNC.md`.

## Quiet-door #9 records

These are dated records of the coordination-document reading, not live claim occupancy or a replacement protocol. Status checked against each header and the companion at `0b2012b`: passes 1–5 executed; pass 6 remains planned. Indexing it does not execute it.

| Record | Recorded state |
|---|---|
| [ASCII companion](quiet-door-9-ascii.md) | Passes 1–5 present; no closure receipt for pass 6 |
| [Pass 1](quiet-door-9-pass-1-plan.md) | EXECUTED: spine |
| [Pass 2](quiet-door-9-pass-2-plan.md) | EXECUTED: fields |
| [Pass 3](quiet-door-9-pass-3-plan.md) | EXECUTED: grain |
| [Pass 4](quiet-door-9-pass-4-plan.md) | EXECUTED: walk |
| [Pass 5](quiet-door-9-pass-5-plan.md) | EXECUTED: seam |
| [Pass 6](quiet-door-9-pass-6-plan.md) | PLAN: not run |
