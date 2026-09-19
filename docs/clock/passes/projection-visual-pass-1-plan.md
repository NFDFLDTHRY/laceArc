# Projection visual pass 1 plan — kill the black void

**Status:** EXECUTED on `docs/clock/lace-projection.html`. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** mobile shot of `lace-projection.html` on raw.githack — HUD + slider, empty black stage.  
**Page:** `docs/clock/lace-projection.html`

---

## What the shot proves

WebGPU did not put a picture on the stage. Fallback lookrefs did not take over. In-app Chrome / githack often has no WebGPU. A canvas with `height:100%` can also be 0px tall until layout.

Pass 1 is **visibility**, not photoreal glass.

---

## Tickets

### T1 — Fail closed to templates

Show `clockwork-view-{lattice,crossing,traces}` if any of:

- no `navigator.gpu`
- no adapter / device
- pipeline or first-frame throw
- canvas width or height is 0 after layout

Do not leave a black rectangle that looks like a renderer.

### T2 — Stage geometry

`100dvh` / explicit canvas size from `visualViewport`. Safe-area. HUD and dock must not own the only painted pixels.

### T3 — Time UI still meaningful on fallback

Slider can cross-fade or highlight which lookref is “when” (lattice → traces → crossing) without inventing rows. D1 indices stay captions, not new geometry.

### T4 — Not this pass

Volumetric SDF glass, glyph faces on cubes, cracked floor albedo, matching the stills pixel-for-pixel. That is later, after something is visible.

### T5 — Sealed

No emitter. Cubes still glyphs. No CDN.

---

## Execution (when you say go pass 1)

Edit `docs/clock/lace-projection.html` only. STOP.

---

## Steward test

If a phone without WebGPU still sees black, you failed.  
If fallback writes Graphic D, you left the shoe.
