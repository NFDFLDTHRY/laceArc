# Projection visual pass 4 plan — track the tick, ship a WebApp

**Status:** EXECUTED. Follow-tick camera, brighter glyphs, WebNN probe, PWA files. Emission `[GAP]`.  
**Station:** hologram  
**Page:** `docs/clock/lace-projection.html`  
**Evidence:** mobile shot @ t=0006 PTR — scene works; dim; camera stares at empty lattice while the live glyph is off-frame.

---

## Tickets

### T1 — Exposure / presence

Raise key light and core emissive. Fog shorter. Glyph scale readable on a phone. Floor stays dimmer than the live tick so the tick reads.

### T2 — Camera follows the live index

`t` selects D1 row `floor(t)`. Eye looks at `posOf(that index)`, not the world origin.

```
 live = D1[floor(t)]
 look = posOf(live.i)
 eye  = look + orbit offset (phone-friendly, above and back)
```

Ease look so it does not snap. When the live row is a POINTER, look at the midpoint of its two refs (the trace that just appeared).

### T3 — WebNN is optional oil, not a second store

Available on the user’s Chrome Android flags. Pass 4 may *probe* `navigator.ml` / WebNN and stamp HUD: `WebNN on|off`.

Allowed: tone-curve / exposure assist on a lookref or on a tiny 1D time signal.  
Forbidden: invent rows, decide POINTER emission, replace Graphic D, block first paint on WebNN compile.

If WebNN throws, ignore. Same fail-closed as GPU.

### T4 — Installable Web App (the deliverable)

Same origin as the page (`docs/clock/`):

- `manifest.webmanifest` — name LaceArc Layer III, `display: standalone`, `start_url` this HTML, theme `#05070c`
- icons from existing hologram lookrefs (do not invent a logo brand)
- service worker: cache the HTML, worker JS, three lookrefs, manifest. No CDN. No cache of Core law files as if they were the app.

Install works on **https same-origin** (githack can install if SW scope is that origin). `file://` will not install. Document that.

### T5 — Sealed

D1 only. Cubes = glyphs. No crates.io. Wasm SIMD still waiting on libcore.

---

## Execution (when you say go pass 4)

Edit the HTML + add manifest + SW + icons refs. STOP.

---

## Steward test

If at t=0006 the camera is still aimed at empty floor, T2 failed.  
If WebNN writes a POINTER, delete it.  
If the app will not install without npm, you left the shoe.
