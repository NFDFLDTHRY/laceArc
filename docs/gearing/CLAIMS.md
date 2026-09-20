# Shaft claim / release — current-state protocol

**Layer:** III (agent coordination for Shadow gearing). Not Core.  
**Umbrella:** Doc stations + single entrypoint live under [`docs/coord/`](../coord/README.md) (`coord.sh`). This file remains the shaft-only protocol; `gear:*` stations delegate here.  
**Law:** One shaft per agent. Zero or one drop per shaft per tick. If you cannot tell whether a shaft is held, it is held.  
**Goal:** Every agent always works against **current** `origin/main`, without editing another agent’s keys.

POINTER emission remains `[GAP]`. This file does not authorize `src/`.

---

## Why

Shared HTML + one `CONTRACTS` blob caused merge grind.  
Shaft files (`contracts-*.js`) removed key collisions.  
Claims remove **time** collisions: who may write which shaft *now*, on which base SHA.

---

## Partition (claim file ↔ data file)

| Claim file | Owns data file | Keys |
|---|---|---|
| `claims/axle.claim` | `contracts-axle.js` | axle |
| `claims/gears.claim` | `contracts-gears.js` | A B C AB BC CA |
| `claims/trainA.claim` | `contracts-trainA.js` | A1..A9 |
| `claims/trainB.claim` | `contracts-trainB.js` | B1..B5 |
| `claims/trainC.claim` | `contracts-trainC.js` | C1..C10 |
| `claims/cells.claim` | `contracts-cells.js` | t0..t6 |
| `claims/escape.claim` | `contracts-escape.js` | E1 E2 R1 |
| `claims/audits.claim` | `contracts-audits.js` | X1..X6 |

`docs/shadow-clock-gearing.html` — **renderer, frozen** — designated editor only. Not a claimable shaft unless the human names a designated editor session.

---

## Claim file shape (exact)

```
STATUS: FREE|HELD
SHAFT: <axle|gears|trainA|trainB|trainC|cells|escape|audits>
FILE: docs/gearing/contracts-<shaft>.js
AGENT: <id or name>
BASE: <full origin/main SHA at claim or last refresh>
SINCE: <ISO-8601 timestamp>
NOTE: <optional one line>
```

- Only the holder edits **their** `.claim` file (and their `contracts-*.js`).
- Never edit another shaft’s `.claim` or `.js`.
- Do not maintain a shared STATUS.md that everyone rewrites — that reintroduces grind. Status is **derived** by reading all `.claim` files (see `claim.sh status`).

---

## Protocol

### 0. Always start from current main

```bash
git fetch origin main
git checkout main
git pull --ff-only origin main
./docs/gearing/claim.sh status
```

If you cannot ff-only, stop and reconcile before claiming.

### 1. Claim exactly one shaft

```bash
./docs/gearing/claim.sh claim <shaft> "<agent-id>"
```

Succeeds only if `STATUS` is `FREE`, or already `HELD` by the same `AGENT`.  
Writes `HELD`, sets `BASE` to current `origin/main` SHA, sets `SINCE`.

If held by another agent → **do not** take it. Pick another FREE shaft or wait.

### 2. Work only on that shaft

Reading order before edits: shoe → graphics → systems-manifest → staking/law-why → hologram → gear-contracts → **then** your `contracts-*.js`.

Panel text is a COPY of the walk artifact. If they disagree, walk artifact wins.

### 3. Before you drop (commit)

```bash
git fetch origin main
./docs/gearing/claim.sh check <shaft> "<agent-id>"
```

`check` fails if:

- claim is not HELD by you, or
- `origin/main` moved past `BASE` (clock turned)

If the base moved:

```bash
git pull --ff-only origin main   # or rebase your local commit as required
# re-read sources on the new tip
./docs/gearing/claim.sh refresh <shaft> "<agent-id>"
# re-walk your panel against current tip, then drop
```

A stale reading is not wrong. It is a reading of a clock that has turned. Refresh and walk again.

### 4. Release

After your commit is on `main` (or you abandon the shaft):

```bash
./docs/gearing/claim.sh release <shaft> "<agent-id>"
```

Only the holding `AGENT` may release (or the human).  
Sets `STATUS: FREE` and clears `AGENT` / `BASE` / `SINCE` / `NOTE`.

### 5. Human override

If a claim is stuck (agent gone):

```bash
./docs/gearing/claim.sh force-free <shaft>
# Optional reason retained in NOTE:
./docs/gearing/claim.sh force-free <shaft> "<reason>"
```

Human-only. Record why in the commit message. The command accepts HELD or already-FREE claims and clears `AGENT`, `BASE` and `SINCE`. Without a reason it also clears `NOTE`, preserving the original direct-command behavior; with a supplied reason it retains that exact argument in `NOTE`.

The [coordination umbrella](../coord/README.md) requires a reason and forwards it to this backend. Supplying an argument does not grant override authority or establish that a claim is stale. The [isolated regression fixture](../coord/tests/force-free-dispatch.sh) checks both entrypoints using synthetic claims; real holds are never test fixtures.

---

## Done means (per drop)

- Your claim was HELD by you for the whole edit
- `check` passed on the tip you commit against (or you `refresh`ed after a turn)
- Diff touches **only** your `contracts-*.js` and optionally your `.claim` (claim→FREE on release)
- No renderer diff; no other shaft files
- Commit docs only if the human asks; push only if the human says push

---

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.  
If a crate did it for you, you may not.  
The clock is a shadow. Lace is not in it.

---

## Full repo resync

When the steward fires a resync (`docs/gearing/RESYNC.md` STATUS: FIRED), every BASE is stale.

```bash
./docs/gearing/resync.sh status
git fetch origin main && git pull --ff-only origin main
./docs/gearing/claim.sh status
# release or refresh any held shaft, then claim with BASE == TIP
```

If you cannot tell whether resync is live, it is live. See `docs/gearing/RESYNC.md`.
