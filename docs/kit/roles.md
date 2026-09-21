# Roles — who holds which station, and why

**Status:** kit · steward · `[PROPOSAL]` until the human affirms. Not Core. **Current constructor + sampling architecture reconciled; exact sampling-derived retention/materialization `[GAP]`; pointer contract not accepted.** No `src/`.
**Evidence:** every row cites [the census](../plans/lace-context-iter7-pass-1-actors.md) (commit hashes and station lines). A role here is a description of demonstrated behaviour, not a grant: **permissions are the human's**, and the law station's allow-list (F3) is a ruling that has not been taken.
**Applied here (no ruling needed):** role cards; the trailer convention; an **advisory** unsigned-commit count in `check-docs.sh`. **Not applied (needs the human):** a `CONTRIBUTING.md` line (law); claim durations in `coord.sh` (coord, code); the law allow-list; push for cloud sessions.

## The cards

| Actor group | Role | Stations | Because (locator) | Must not |
|---|---|---|---|---|
| Claude Code session (`Claude-Projection`; Opus 5 ↔ Fable 5.1) | steward / instrument-keeper; auditor | maps · kit · coord | signs 225 of 225; premature claim released (`129bfbe`); force-frees only on instruction (`e001b2d`); built the instruments (`a1631a3`, `5dfdfd5`) | hold clipboards for bulk work |
| this editor (Fable 5.1, cloud; `Claude-Fable-*`) | shape + environment + reduction editor | maps · prompts | iterations 6–7 and the reduction; 0 rulings taken; bundles, no push | law; renderer without a probe task |
| Grok Bot (`LaceArc`, `LaceArc (steward)`) and `Grok-*` | bulk builder | clipboards · renderer · hologram · gearing-meta | the nine shelves, the companion passes 7–25, the proven install; four force-frees (`e001b2d`, `dde37c3`); six restores in 26 min if the prefix-device campaign is theirs | **law · graphics · history**; a hold without a declared duration; the `AGENT` field as a task |
| Codex (`Codex-*`) | bounded executor | clipboards, one pass per claim | names itself in receipts; held `prompts` ~20 h with one commit (station NOTE) | overnight holds; a second pass on one claim |
| Astra (`Astra-evidence`) | adversarial reviewer / evidence | history · maps read-only | claim → publish → release in 7 and 23 min (`695f62d`…`c4fa5d5`) | — |
| any actor that did not write a candidate σ; two for the D1 run | auditor of the candidate | maps (record only) | E7 STEP 4 independence is the only independence the environment knows | repair the candidate in the explanation |
| the human | rulings · acceptance · device probes · attachments | law | — | delegable to no one |

## Joining (any agent, any model)

1. `git pull --ff-only origin main`; read `AGENTS.md`, then the door (`docs/plans/reduction-pass-1-findings.md` §5 until a shelf exists).
2. Paste [the diagram-prompt](../prompts/lace-context-diagram-prompt.md); to start a campaign, paste [the generator](../prompts/six-pass-proposal-generator.md) with the human's sentence.
3. `coord.sh which <file>` → `claim <station> "<Identity>"` — an identity, never a task name. State how long you expect to hold it in `NOTE` (voluntary until coord rules; `doctor` will read it when it does).
4. Edit only what the station owns. `gate` before commit. One station per commit.
5. **Sign the commit** (below). `release`.
6. If you cannot see the PNGs, every structural judgment is `[BLOCKED]`; say so in the receipt.

## The trailer

Every commit ends with an actor trailer. Two forms are already in the tree; either satisfies the advisory check:

```
Co-Authored-By: <Model name> <noreply@vendor>       # Claude Code's form; keep Claude-Session: <url> when present
Agent: <Model or bot name> · <session or bot id> · <station>
```

An unsigned commit is not refused — the tree has no gate without a human ruling — but it is counted, and the count is printed at every session start. **Unsigned work cannot be assigned work.**

## What waits on the human (also on the rulings brief)

| Item | Station | Why it is theirs |
|---|---|---|
| `CONTRIBUTING.md`: "every commit carries an actor trailer" | law | law station |
| `coord.sh`: a declared claim duration; `doctor` lists overdue holds | coord | code, and a protocol change every agent runs |
| `law.station` allow-list: the human + one named editor | law · coord | it decides who may touch the gate |
| push credential for cloud sessions, or bundles landed each sitting | — | account setting |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Hands that sign the knot can be asked to tie the next one. **Constructor is known in the reconciled draft; arbitrary relation/sample selection remains `[GAP]`, and human acceptance remains absent.**
