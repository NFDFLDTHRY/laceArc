# Defrag plan (PREPARE only)

Status: **PASS 1 DONE locally** — prompts + history moved; links rewritten.
Not committed until the human asks. POINTER emission stays `[GAP]`.
Tip surveyed at start of pass: `6603c1b`.

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
