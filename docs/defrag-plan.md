# Defrag plan (PREPARE only)

Status: **PASS 1 on main `94cdba8`. PASS 2 DONE locally** (clipboards + kit). Not committed until asked.
POINTER emission stays `[GAP]`. Tip at pass-2 start: `33b7e79`.

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

