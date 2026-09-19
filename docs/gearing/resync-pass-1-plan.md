# RESYNC — Pass 1 PLAN

**Status:** HELD / NOT EXECUTED. Plan only.
**Station:** gearing-meta.
**Agent:** Grok-resync-p1.
**Claim BASE:** `a6c36e7d7801dfcdbb2ab151519ca53326c32235`.
**Emission:** `[GAP]`. No `src/`. Renderer stays frozen. Hands stay Hands.

This plans one steward act on the stuck FIRED signal. It does not clear. It does not fire again. It does not open Core.

```
pull/ff → claim gearing-meta
        → measure the signal against doctor + the fire's own reason
        → write this plan
        → STOP
execute (later, one authorized tick):
        → one act named in §4
        → check · commit · release · STOP
```

---

## 0. Question

**What is actually wrong with RESYNC, and what is the single next legal act?**

Not: a campaign of script rewrites. Not: a re-walk of the coherence log. Not: a Hands rewrite.

---

## 1. Measured at `a6c36e7` (claim BASE)

| Probe | Result |
|---|---|
| `docs/gearing/RESYNC.md` STATUS | `FIRED` |
| `TIP_AT_FIRE` | `01055888cf5764fea5bb84c64dc53844a8ec0f59` |
| `FIRED_AT` | `2026-09-19T03:32:56Z` |
| `FIRED_BY` (file) | Claude-Projection, on the human's steward signal; script would have signed "LaceArc (steward)" |
| live tip / HEAD | `a6c36e7` = `origin/main` |
| commits since `TIP_AT_FIRE` | **27** |
| gear shafts | all eight FREE |
| doc stations | all FREE at measure (this claim holds gearing-meta for the plan) |
| `./docs/coord/coord.sh doctor` | FIRED, all FREE, **safe to clear** |
| `resync.sh` attribution | `FIRED_BY` / `CLEARED_BY` hardcoded `LaceArc (steward)` |

Fire reason, quoted from the signal:

> churn, not contention. The tree moved far enough that READINGS of docs/ are stale even though no claim is. Re-read Hands then Shadow before your next drop; that is the obligation this fire carries.

Clearing line already in the same block:

> the clear condition is already met by inspection, so any agent running `doctor --auto-clear` will clear this.

That is the wart: **the protocol says clear; the reason says readings are stale; nobody recorded a Hands-then-Shadow re-read; the signal has been left FIRED so a fire nobody observes would not vanish, and then left FIRED after it was observed.**

---

## 2. What is not wrong

- No stuck BASE on a live claim. Doctor is not lying about FREE.
- FIRED does not open renderer, Core, or emission. That fence holds.
- `LIVE_TIP_RULE: origin/main` is the effective tip while FIRED. `TIP_AT_FIRE` is the signal commit, not the drop tip. Confusing those two is an agent error, not a script bug that pass 1 must fix.
- Kit door THEN/NOW and clipboards/maps churn after the fire are why readings went stale. They are not this station's repair.

---

## 3. Two legal next acts, only one is pass 1

| Act | Why it is legal | Why it is not enough alone |
|---|---|---|
| `doctor --auto-clear` / `resync.sh clear` | Doctor already prints safe-to-clear. ASCII CLEAR: shafts FREE. | Discharges the *signal* without a receipt that the *reason* (re-read Hands then Shadow) happened. Attribution on clear will again say "LaceArc (steward)". |
| Record a one-block receipt on `RESYNC.md` then clear | Same station. Same file the script already rewrites. Keeps the fire's reason from vanishing. | A long Hands/Shadow essay is a different campaign. Pass 1 is not that essay. |

Pass 1 execution, when authorized, is the second row **kept short**:

1. Do not regenerate the ASCII diagram.
2. Do not edit `claim.sh`, shafts, HTML, Hands, emission, or `coord.sh` unless a one-line doctor path is broken — it is not.
3. Optional same-tick: stop hardcoding `FIRED_BY`/`CLEARED_BY` as `"LaceArc (steward)"` so the next fire/clear names the caller. That is gearing-meta. It is not required to clear.
4. Write a short NOTE/receipt on `RESYNC.md` that the fire's re-read obligation is either **undischarged** (leave FIRED) or **discharged at this SHA** (then clear).
5. If discharged: `./docs/gearing/resync.sh clear`, then fix the CLEARED_BY line by hand if the script still lies.
6. Check · commit · release · STOP.

**Pass 1 does not decide the discharge.** The human says whether the Hands-then-Shadow re-read is done. Until that word, execute must not clear.

---

## 4. Permitted product of execute (when called)

Exactly:

- this plan marked EXECUTED, and
- either (a) `RESYNC.md` still FIRED with one receipt that the reason is undischarged, or (b) `RESYNC.md` CLEAR with one receipt that the reason was discharged at a named SHA.

No third file. No `src/`. No second fire.

---

## 5. Forbidden

- Treating auto-clear as the pass.
- Filling pointer-emission to soothe the fire.
- Claiming renderer because RESYNC mentioned "re-read Shadow".
- Re-walking A1–A14 or verification pass 4 under this ticket.
- A pass-2 list inside this file.

Shoe in hands. Then fetch. Then, only if authorized, the one act in §4.
