# Cold doors — Pass 5 PLAN

**Status:** PLAN only. Not run.
**Station:** kit.
**Agent:** Grok-kit.
**Plan BASE:** `8a75850914ef9bf1b2f05077538c713ada51a6de`.
**Emission:** `[GAP]`. No `src/`. Renderer stays paused. Seven Rust doors stay shut.

Pass 4 said stop. The human named pass 5.

```
pull/ff → claim kit
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append one package-door pin + remainder section to docs/kit/cold-doors.md
        → check · commit · release · STOP
```

---

## 0. Question

**Do the package door's THEN and NOW pins still resolve on this tree, and do the NOW claims still hold at the execute tip — without retargeting those pins?**

Passes 1–4 classified doors, companions, the transport fence, and the R1 sit. The remaining kit-owned measurement is the package door itself: THEN `4fe984b`, NOW `044257c`.

This pass also names what is left **off kit**, so the campaign does not invent a sixth kit measurement.

Not: rewrite `READ_ME_FIRST.md`. Not: move NOW to the current tip. Not: close R1. Not: unpause the renderer. Not: open Rust doors. Not: fill emission.

---

## 1. On the list (read-only)

| Object | Why |
|---|---|
| `docs/kit/READ_ME_FIRST.md` | Package door. THEN/NOW live here. |
| Commit `4fe984bb098d5ca21c9704234df4fddd53056efb` | THEN pin. Resolve or not. At that pin the door says emission was absent. |
| Commit `044257ceb95e78612d302a204a9438c72d06aa96` | NOW pin. Resolve or not. |
| `docs/pointer-emission.md` header | NOW claim: exists as DRAFT, not accepted. |
| Absence of `src/` | NOW claim. |
| Live `AGENTS.md` + live law | Door routes here. Confirm they still exist as the named targets. |

Off the list for writes: live law, stake, AGENTS, transport copies, renderer, maps, clipboards, history.

---

## 2. What execute may write

Kit only.

- Append “Pass 5 — package-door pins and remainder” to [`docs/kit/cold-doors.md`](cold-doors.md).
- Pin table: THEN / NOW / execute tip. Resolvable? NOW claims still true?
- Remainder table: work that is **not** this station (R1 law; renderer hologram; Rust maps; emission). No claims on those stations.
- One README line to mark the plan EXECUTED after the tick.

THEN/NOW strings stay where they are. A pin that still resolves and whose labeled reading still holds is not STALE.

---

## 3. What execute must not do

- Retarget NOW to the execute tip.
- Rewrite the audit body or the package-door routing block.
- Edit law / AGENTS / transports.
- Treat an old NOW pin as a defect because the tip has moved. The door already says NOW is a re-read, not the tip.
- Claim hologram, maps, or law.

---

## 4. Single execute act

When the human says proceed:

1. `git cat-file` / `git log -1` on THEN and NOW. Record full SHA or UNREACHABLE.
2. Confirm `docs/pointer-emission.md` still DRAFT, `src/` still absent, live law and AGENTS still the named targets.
3. Write the pin table and the off-kit remainder. Mark `[GAP]` rather than guess.
4. Stop. No pass 6.

Success: both pins have a fate; NOW claims are confirmed or named false; remainder is off kit. Failure: the package door was rewritten, or a foreign station was claimed.

---

## 5. Governing check

```text
A NOW pin is a reading, not the tip.
An old honest pin is not a STALE banner.
Remainder off kit is not a kit repair.
Φ stays [GAP].
```
