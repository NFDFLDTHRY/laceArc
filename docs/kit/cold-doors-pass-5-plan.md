# Cold doors — Pass 5 PLAN

**Status:** PLAN only. Not run. Amended: one act. Remainder queued.
**Station:** kit.
**Agent:** Grok-kit.
**Plan BASE:** `8a75850914ef9bf1b2f05077538c713ada51a6de`.
**Amend BASE:** `ffbfde467fb64f8fe56b357f34ab3cec69d6abfa`.
**Emission:** `[GAP]`. No `src/`. Renderer stays paused. Seven Rust doors stay shut.

Pass 4 said stop. The human named pass 5. The first draft of this plan packed a remainder table into the same tick. That is a second act. It is queued, not this pass.

```
pull/ff → claim kit
        → write / amend this plan
        → STOP
execute (later, one authorized tick):
        → append one package-door pin table to docs/kit/cold-doors.md
        → check · commit · release · STOP
```

---

## 0. Question (this pass, one act)

**Do the package door's THEN and NOW pins still resolve on this tree, and do the NOW claims still hold at the execute tip — without retargeting those pins?**

THEN `4fe984bb098d5ca21c9704234df4fddd53056efb`. NOW `044257ceb95e78612d302a204a9438c72d06aa96`.

Not: rewrite `READ_ME_FIRST.md`. Not: move NOW to the current tip. Not: remainder table. Not: close R1. Not: unpause the renderer. Not: open Rust doors. Not: fill emission.

---

## 1. On the list (read-only)

| Object | Why |
|---|---|
| `docs/kit/READ_ME_FIRST.md` | Package door. THEN/NOW live here. |
| Commit THEN | Resolve or not. At that pin the door says emission was absent. |
| Commit NOW | Resolve or not. |
| `docs/pointer-emission.md` header | NOW claim: exists as DRAFT, not accepted. |
| Absence of `src/` | NOW claim. |
| Live `AGENTS.md` + live law | Door routes here. Named targets still there? |

---

## 2. What execute may write

Kit only.

- Append “Pass 5 — package-door pins” to [`docs/kit/cold-doors.md`](cold-doors.md).
- Pin table: THEN / NOW / execute tip. Resolvable? NOW claims still true?
- One README line to mark the plan EXECUTED after the tick.

THEN/NOW strings stay where they are. A pin that still resolves and whose labeled reading still holds is not STALE.

---

## 3. What execute must not do

- Write an off-kit remainder table (queued).
- Retarget NOW to the execute tip.
- Rewrite the audit body or the package-door routing block.
- Edit law / AGENTS / transports.
- Treat an old NOW pin as a defect because the tip has moved.
- Claim hologram, maps, or law.

---

## 4. Single execute act

When the human says proceed:

1. `git cat-file` / `git log -1` on THEN and NOW. Record full SHA or UNREACHABLE.
2. Confirm the NOW claims on this tip: emission file DRAFT, `src/` absent, live law and AGENTS still the named targets.
3. Write the pin table. Mark `[GAP]` rather than guess.
4. Stop.

Success: both pins have a fate; NOW claims are confirmed or named false. Failure: the package door was rewritten, or the remainder table was written in this tick.

---

## Queued — next named pass, not this one

Off-kit remainder table: R1 law-station; renderer hologram PAUSED; Rust maps SHUT; emission `[GAP]`. Write that table only when the human names the next pass.

---

## 5. Governing check

```text
One pass, one act.
A NOW pin is a reading, not the tip.
Queued remainder is not a subpass.
Φ stays [GAP].
```
