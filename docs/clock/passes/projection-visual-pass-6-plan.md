# Projection visual pass 6 plan — stale PWA + Holder blanks the stage

**Status:** EXECUTED. HUD v6. SW cache v6. Holder is overlay. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** phone on githack, Holder doors on, black stage, `PWA on`, `t=0002 PTR`.

---

## Did the WebApp get the code updated?

**Not reliably.** `PWA on` only means `sw.js` registered. It does not mean this commit.

| Path | What the phone has |
|---|---|
| raw.githack `main` | CDN may still be yesterday |
| Installed PWA | SW cache `lace-iii-d1-v*` until a **new** `sw.js` activates |
| SHA chat link | that SHA only; not the installed app |

Pass 5 renamed the cache to `v5-githack-main`. The phone shows PWA on — it may still be serving the HTML that hid the lattice when Holder is selected, or a GPU context that already hid lookrefs and then drew nothing.

You cannot tell from the shot which commit is running. That is the bug.

---

## Tickets

### T1 — Version stamp on the HUD

Paint `v5` / `pass6` (a string we write in the HTML) next to PWA. If the phone does not show that string, it is stale. No guessing.

### T2 — SW must announce a new version

On `controllerchange` or `reg.update()`, stamp `PWA upd` and reload once (or a button). Do not silently keep the old cache.

### T3 — Holder doors must not blank the stage

Mode `holder` is an overlay card. Canvas and lookrefs stay. Black void with doors selected is a fail.

### T4 — If GPU is live, keep drawing in every mode

`ascii` / `holder` hide only the aside, never `display:none` the canvas.

### T5 — Sealed

No emitter. Install URL remains githack `main`.

---

## Execution (when you say go pass 6)

HTML + SW only. Bump CACHE to `v6`. STOP.

---

## Steward test

If Holder doors still shows a black rectangle, T3 failed.  
If the HUD has no version string, T1 failed.
