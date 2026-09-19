# Cold doors — Pass 1 PLAN

**Status:** PLAN only. Not run.
**Station:** kit.
**Agent:** Grok-kit.
**Plan BASE:** `8840f0875dbca23d968afb8bf77c8cb3d386d9d0`.
**Emission:** `[GAP]`. No `src/`. Renderer stays paused. Seven Rust doors stay shut.

Human asked for pass 1 of the quiet-door list named after history pass 6.

```
pull/ff → claim kit
        → name the list
        → write this plan
        → STOP
execute (later, one authorized tick):
        → one register named in §4
        → check · commit · release · STOP
```

---

## 0. Question

**Against live `origin/main`, which quiet doors are LIVE routing, DATED snapshot, STALE pin, or PAUSED — and which of those facts already live on the kit package door?**

Not: rewrite law copies. Not: unpause the renderer. Not: open `strand/`…`core/`. Not: a maps or clipboards pass.

---

## 1. The list this plan owns

Named from the quiet side of the tree after pass 6. Hot shelves are excluded on purpose.

| # | Door | Path | Station | Why it is on this list |
|---|---|---|---|---|
| 1 | Package door | `docs/kit/READ_ME_FIRST.md` | kit | Already has THEN `4fe984b` / NOW `044257c`. Pattern, not a rewrite. |
| 2 | Kit index | `docs/kit/README.md` | kit | Shelf door for this station. |
| 3 | Court door | `docs/README.md` | law | Quiet. Indexes Hands, the gate, and the shelves. |
| 4 | Live law | `docs/law-why-these-documents.md` | law | Quiet. Four copies still differ (restructure R1). Notice, do not repair. |
| 5 | History door | `docs/history/README.md` | history | Quiet after pass 6. Door already names the new extract. |
| 6 | Clock door | `docs/clock/README.md` | hologram | Quiet. Layer III prose + viewer paths. |
| 7 | Hologram door | `docs/hologram/README.md` | hologram | Quiet. |
| 8 | Gearing door | `docs/gearing/README.md` + `RESYNC.md` | gearing-meta | Quiet after RESYNC pass 1 CLEAR. |
| 9 | Coord door | `docs/coord/README.md` | coord | Quiet. Protocol umbrella. |
| 10 | Graphics door | `docs/graphics/README.md` | law | Quiet. Source of record index. |

Off the list for pass 1:

| Object | Why out |
|---|---|
| Clipboards door | Moving (WebGPU). |
| Plans / maps door | Moving (verification). |
| Prompts door | Cleared mid-claim; not this hygiene. |
| Renderer HTML | Paused. List it as PAUSED; do not open a pass. |
| Seven Rust doors in `docs/plans/rust-nostd-branch-contracts.md` | Shut until emission is accepted. Maps station. Not a README door. |
| Water/HCC “admission door” | Constraint, not a path. |

---

## 2. What pass 1 is allowed to write

Kit only.

On execute, one new file:

- `docs/kit/cold-doors.md` — the register.

And the kit shelf door must link it (`docs/kit/README.md` row). That is already this plan's duty when the plan itself lands.

The register classifies each row in §1 with:

| Stamp | Meaning |
|---|---|
| LIVE | Routes to live law / tip. No pin pretending to be the tip. |
| DATED | Honest snapshot. Pin visible. Body not rewritten. |
| STALE | Pin or absence-claim outlives the tree. |
| PAUSED | Human halt. No next pass from this register. |
| SHUT | Law gate. Not a door we open. |

THEN/NOW is allowed only as a *reading* of an existing pin. Pass 1 does not retarget another station's pin.

---

## 3. What pass 1 must not do

- Edit `AGENTS.md`, `docs/law-why-these-documents.md`, `docs/staking-the-workspace.md`, or `docs/README.md`.
- Regenerate transport copies (`agent-control.md`, `grok-bot-profile.md`).
- Touch `docs/pointer-emission.md`.
- Touch renderer HTML or githack install URLs.
- Claim hologram, law, history, maps, clipboards, or a gear shaft.
- Invent a second package door.
- Treat check-docs “shelf door links every file” as a license to rewrite foreign READMEs.

Four law copies differing stays a **noticed** R1. Repair is a later law-station pass, if the human names one.

---

## 4. Single execute act

When the human says proceed:

1. Re-read Hands graphics README (names only; no graphic rewrite).
2. Read each path in §1 at the execute BASE.
3. Write `docs/kit/cold-doors.md` with one row per door: stamp, pin or “none”, one-line evidence, station.
4. Add that file to `docs/kit/README.md` if the plan landing did not already reserve the row.
5. Stop. No pass 2.

Success: every row in §1 has a stamp and a locator. Failure: a foreign body was edited, renderer was touched, or a Rust door was treated as open.

---

## 5. Governing check

```text
LOCATED != READ != ACCEPTED != PROVEN
A quiet shelf is not an empty shelf.
A THEN pin is not a STALE banner if the door says so.
Φ stays [GAP].
```

Kit owns the register. Each door's station still owns the door.
