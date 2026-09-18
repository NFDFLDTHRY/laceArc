# Defrag plan (PREPARE only)

Status: **PASS 1–4 on main.** PASS 5 executing (stale-path sweep).
POINTER emission stays `[GAP]`. Maps BASE refreshed to live tip before this tick.

Shoe test: filing, not wrapping the cord.

## Why

93 files under `docs/`. Law is intact. Index is not.
A new agent sorts by filename and treats a prompt, a recovery, or a cube as Graphic D.

## Do not touch

- Graphics A–D bytes (Hands)
- `systems-manifest.md` body as a rewrite
- `pointer-emission.md` answers
- `src/`
- shaft `contracts-*.js` (unless a later designated tick)
- PDFs
- filling Petersen from “helpfulness”

## Four shelves (target layout)

Keep git history: `git mv` only. No content rewrite except README pointers and one-line headers `Shelf: Hands|Shadow|History|Prompts|Kit`.

```
docs/graphics/          Hands pictures
docs/                    Hands prose STAYS at root for now
                         (manifest, law, staking, reason-model-map,
                          pointer-emission, close-reading, references)

docs/clock/           ← optional later; NOW leave shadow-clock-* + gearing/
docs/hologram/          already a shelf
docs/history/           git mv history-recovered-*
docs/prompts/           git mv *-prompt.md
docs/clipboards/        git mv *clipboard*
docs/kit/               agent-control, task-template, downstream-audit,
                        grok-bot-profile, READ_ME_FIRST.md
```

**Phase 0 (this prepare):** no moves. README shelf table only.
**Phase 1:** `git mv` prompts + history only (most grind, least Hands risk).
**Phase 2:** clipboards + kit.
**Phase 3:** decide clock path (`docs/clock/` vs leave).
Never move Graphics A–D or the manifest.

## Duplicate / stale (decide, do not merge blindly)

| Item | Decision to take when executing |
|---|---|
| `rust-nostd-crate-map.md` vs `rust-nostd-branch-contracts.md` | One plan-of-record; the other points at it. Both stay `[PLAN]` |
| `READ_ME_FIRST.md` pins `4fe984b` | Retarget to live tip or mark STALE |
| Petersen clipboard | Prompt only — add `STATUS: unfilled` in README |
| `lace-projection-brief.md` | **Missing on `820b4d6`**. Do not invent it |
| RESYNC `STATUS: FIRED` | Steward CLEAR when shafts stay FREE and you mean it |
| Gear-contracts primary vs second-reading | Keep both; second stays `[PROPOSAL]` |
| Coherence audit log | Append-only; defrag ticks go there, not a new novel |
| Local HTML restyle | Separate human word: commit / discard / another designated tick |

## README work (Phase 0 product)

Add a shelf index above the long table:

1. Hands (graphics + manifest + law + emission DRAFT)
2. Shadow clock + hologram
3. History (do not revive walkers)
4. Prompts (tickets, not law)
5. Clipboards (KEEP/FORBID)
6. Kit / rust plans

One row: **Open `[GAP]`** → `docs/pointer-emission.md` (not accepted).

## Order of execution (when you say go)

1. Fetch/ff. If RESYNC FIRED, BASE = tip.
2. Phase 0 README only. Stop. You look.
3. Phase 1 `git mv` prompts + history. Fix links. Stop.
4. Phase 2 clipboards + kit + rust pointer.
5. CLEAR resync only if you say CLEAR.

One phase per commit. No “also restyle the clock” in a defrag commit.

## Success

A stranger can name Hands vs Shadow from the folder list.
Emission file still DRAFT.
No `src/`.
No second store.

## Failure

Moving Graphic D.
Rewriting history recoveries into law.
Filling `[GAP]` because the index looks tidy.
Merging shadow clock into Core docs.
Approving a missing projection brief by inventing it.

---

## PASS 2 PLAN (clipboards + kit) — do not run until “go pass 2”

Tip to rebase onto: live `origin/main` (pass 1 is `94cdba8`).
Clock HTML restyle stays out of this commit.

### Move (`git mv`)

```
docs/clipboards/
  clipboard-five-stakes.md
  kauffman-4ed-clipboard.md
  rowlands-zero-to-infinity-clipboard.md
  xiao-zhu-foundations-clipboard.md
  agentscope-clipboard.md
  README.md          (new door: KEEP/FORBID; not Core; Petersen unfilled)

docs/kit/
  agent-control.md
  agent-task-template.md
  downstream-audit.md
  grok-bot-profile.md
  README.md          (new door: portable steward kit; not Hands)
READ_ME_FIRST.md  →  docs/kit/READ_ME_FIRST.md
```

### Do not move in pass 2

| File | Why |
|---|---|
| Graphics A–D, manifest, law, staking, reason-model-map, close-reading, pointer-emission.md, references.md | Hands |
| shadow-clock-*, gearing/, hologram/, philosophy-map.md | Shadow — pass 3 |
| rust-nostd-crate-map.md, rust-nostd-branch-contracts.md | Decide pointer only; leave at `docs/` |
| agent-interaction-model.md | `[PROPOSAL]` elephant clock — Shadow-adjacent, not kit |
| petersen-zech-clipboard-prompt.md | Already in `docs/prompts/`; product never written |
| coherence-audit-log.md | Stay at `docs/` root (append-only live log) |
| shadow-clock-gearing.html dirty restyle | Separate tick |

### Decisions locked in the same commit (small text, not physics)

1. Petersen: README clipboards door says `STATUS: unfilled` (prompt only).
2. `READ_ME_FIRST.md`: first line `STALE pin 4fe984b` + “read live AGENTS.md / tip”. Do not pretend the package is current.
3. Rust: one sentence in both plan files: `crate-map.md` = tree; `branch-contracts.md` = serial birth cards. Neither is plan-of-record for emission.
4. No inventing `lace-projection-brief.md`.
5. No RESYNC CLEAR.

### Link blast

Rewrite `docs/NAME` → `docs/clipboards/NAME` and `docs/kit/NAME` in README, AGENTS, law-why, references, kit internals, clipboards’ cross-links.
Relative links from `docs/*.md` that named those files by basename.

Expected touch set (from pass-1 pattern): README, AGENTS, references, law-why, grok-bot-profile (after move), clipboards themselves, coherence-audit-log if it cites kit.

### Commit shape

One commit. Message: shelves only. No HTML. No `src/`. No `[GAP]` fill.

### After

Stop. Pass 3 is clock path (`docs/clock/` vs leave), not this.

---

## PASS 3 PLAN (Shadow clock path) — do not run until “go pass 3”

Question from the original plan: `docs/clock/` vs leave.

**Locked recommendation: split.** Move Shadow *prose*. Do **not** move the renderer or `docs/gearing/`.

Why not move HTML / gearing / hologram images:

- `shadow-clock-gearing.html` loads `gearing/contracts-*.js` and `hologram/clockwork-view-*` by relative path.
- GitHack URL in README is `docs/shadow-clock-gearing.html`.
- Claim/resync scripts live next to the JS shafts.
- Cubes staying beside hologram templates is the right category. A `docs/clock/` dump of the `.html` would look like Core.

### Move (`git mv`) → `docs/clock/`

```
shadow-clock-agent-brief.md
shadow-clock-gear-contracts.md
shadow-clock-gear-contracts-second-reading.md
shadow-clock-hologram.md
gearing-code-1to1.md
philosophy-map.md
agent-interaction-model.md
system-mathematical-model.md
README.md   (new door: Layer III prose; HTML stays put; cubes ≠ rows)
```

`system-mathematical-model.md` is dual-universe. It goes with Shadow formalization, not Hands. First line already seals `[GAP]`.

### Leave

| Path | Why |
|---|---|
| `docs/shadow-clock-gearing.html` | relative scripts + githack |
| `docs/gearing/` | shaft JS + CLAIMS + RESYNC |
| `docs/hologram/` | already a shelf |
| Hands root | graphics, manifest, law, staking, reason-model-map, close-reading, pointer-emission, references |
| rust-nostd-* | stay at `docs/` |
| coherence-audit-log.md | live log at root |
| `src/` | still absent |

### Same-commit text only

1. `docs/clock/README.md`: Layer III; not Core; emission `[GAP]`; link to HTML and `docs/gearing/`.
2. README shelf Shadow row: prose → `docs/clock/`; view → HTML + gearing + hologram.
3. No RESYNC CLEAR unless you say CLEAR.
4. No inventing `lace-projection-brief.md`.
5. Second gear-contracts reading stays `[PROPOSAL]`.

### Link blast

`docs/shadow-clock-*.md` → `docs/clock/shadow-clock-*.md`  
`docs/clock/gearing-code-1to1.md` → `docs/clock/gearing-code-1to1.md`  
`docs/clock/philosophy-map.md` / `agent-interaction-model.md` / `system-mathematical-model.md` same pattern.

Do **not** rewrite `script src="gearing/..."`.

### Commit shape

One commit. Shelves only. No pixel pass. No `src/`. No `[GAP]` fill.

### After

Stop. There is no pass 4 in this plan unless you name one (rust door pick, RESYNC CLEAR, Petersen fill).

---

## PASS 4 PLAN (rust plans shelf) — do not run until “go pass 4”

What is left at `docs/` root after pass 3:

```
HANDS (do not move)
  systems-manifest.md
  graphics-close-reading.md
  law-why-these-documents.md
  staking-the-workspace.md
  reason-model-map.md
  pointer-emission.md     DRAFT / [GAP]
  references.md

OPS (do not move)
  coherence-audit-log.md
  defrag-plan.md

LOOSE
  rust-nostd-crate-map.md
  rust-nostd-branch-contracts.md
```

Pass 4 is only the rust pair. It is **not** RESYNC CLEAR. It is **not** Petersen. It is **not** accepting emission.

### Move (`git mv`) → `docs/plans/`

```
rust-nostd-crate-map.md          tree
rust-nostd-branch-contracts.md   serial birth cards
README.md                        door: PLAN only; neither fills Φ
```

### Do not do in pass 4

| Temptation | Deadbolt |
|---|---|
| CLEAR RESYNC because FIRED looks stale | Steward word only. `STATUS: FIRED` stays |
| Fill Petersen clipboard | Prompt-only until you ask |
| Accept `pointer-emission.md` | Human only |
| Invent `lace-projection-brief.md` | Still missing |
| Move Hands law/manifest | Root is the court |
| Move audit log or defrag-plan | Ops stay findable |
| Add `src/` or Cargo.toml | Forbidden |
| Merge crate-map into branch-contracts | Two jobs, two files |

### Same-commit text only

1. `docs/plans/README.md`: tree vs birth cards; both `[PLAN]`; emission `[GAP]`.
2. README shelf row: Plans → `docs/plans/`.
3. Existing one-liners in those two files keep working after path rewrite.

### Link blast

`docs/rust-nostd-*.md` → `docs/plans/rust-nostd-*.md`  
Prompts already in `docs/prompts/` stay.

### Commit shape

One commit. Shelves only.

### After

Defrag **filing** of folders is complete after pass 4. Remaining open work is not new shelves:

- POINTER emission `[GAP]`
- Petersen clipboard now exists (pass-4 plan text above is stale)
- RESYNC was CLEARED
- `lace-projection-brief.md` still absent

---

## PASS 5 PLAN (stale-path sweep) — do not run until “go pass 5”

No new folder. Pass 5 rewrites **old path strings** left by passes 1–4.

### Leave at `docs/` root (not a move)

Hands + ops + maps that belong at the court:

```
systems-manifest.md
graphics-close-reading.md
law-why / staking / reason-model-map
pointer-emission.md          DRAFT / [GAP]
references.md
coherence-audit-log.md
defrag-plan.md
atomic-primitives-map.md     maps; sibling of reason-model-map, not rust
```

Do **not** move `atomic-primitives-map.md` into `docs/plans/` (that shelf is rust `[PLAN]` only).

### Sweep by station (one station per commit)

| Station | What to fix |
|---|---|
| prompts | `docs/rust-nostd-*.md` → `docs/plans/rust-nostd-*.md` in rust + 1:1 prompts. Historical ASCII boxes may keep the old path as *then-write* and add a one-line NOW path |
| clipboards | Petersen “work already present” row still names pre-shelf paths; date it, don’t pretend those edits happened at the new path |
| maps | this plan file; any remaining rust root paths in coherence log |
| law | only if README/AGENTS still point at a dead rust root path (pass-4 law tick already moved catalog rows) |
| kit / hologram / history | only if `which` + grep still find dead `docs/<old-name>` |

Do **not** rewrite `claim.sh`. Do **not** touch renderer (currently HELD LaceArc). Do **not** invent emission. Do **not** invent the projection brief.

### Renderer hold (out of scope)

`renderer` is HELD by LaceArc with BASE `36003dd` while tip has moved. That is a refresh/release for that agent, not a defrag folder.

### Commit shape

One station, one commit. First ticket if you say go: **prompts**, then clipboards.

### After pass 5

Filing + path sweep done. Next work is Hands (`[GAP]`), not shelves.




