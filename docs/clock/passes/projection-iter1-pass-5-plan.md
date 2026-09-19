# Projection iteration 1 / pass 5 plan — Chrome Android audit

**Status:** EXECUTED. HUD A–J + 512 icon. Title i1p5. Emission `[GAP]`.  
**Station:** hologram  
**Target only:** Chrome on Android (treat “Android 17” as current Chrome Android).  
**Out of scope:** iOS, desktop, Firefox, WebNN on/off.

We shipped install/update/shaders without walking Chrome’s installability and GPU path on that phone. Pass 5 is a **checklist + fixes that the audit forces**. No new look.

---

## Must be true on Chrome Android + githack `main?i=1`

| # | Check | Fail if |
|---|---|---|
| A | Title `i1p4` or later | old SW/CDN |
| B | `manifest.webmanifest` fetched, `content-type` includes `json` or `manifest` | githack MIME |
| C | Icon **192 PNG and 512 PNG** | Chrome installability |
| D | SW controlling the page (`PWA on`) | register failed |
| E | `beforeinstallprompt` fires **or** already installed (`display-mode: standalone`) | button never gets a real prompt |
| F | Install button calls `prompt()` only when event exists | dead button |
| G | Update → waiting SW → one reload → new title | loop or no-op |
| H | `navigator.gpu` adapter + first frame | black canvas |
| I | Worker `projection-bake-worker.js` same origin | bake timeout, no glyphs |
| J | No `apple-touch-icon` required | ignore iOS |

---

## Tickets

### T1 — Write the audit into the HUD

Stamp `A17` (Android Chrome target). Log A–J as `ok`/`fail` in ASCII panel so a screenshot is the receipt.

### T2 — 512 PNG icon

Chrome often wants 512. Generate `icon-512.png` first-party like 192.

### T3 — Fix only what A–J fail

Do not restyle the lattice this pass.

### T4 — Title `i1p5` after fixes

---

## Execution (when you say go pass 5)

HUD audit + 512 icon + any A–J repair. STOP.

---

## Steward test

If the screenshot cannot show which of A–J failed, the audit is theater.  
If we add cubes instead of reading Chrome’s install criteria, we failed.
