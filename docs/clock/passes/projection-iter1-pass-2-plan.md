# Projection iteration 1 / pass 2 plan — shaders, not a JPEG stage

**Status:** EXECUTED. Shader floor. REF toggle. JPEG is not the stage. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** title `i1` (bytes arrived). Stage is `clockwork-view-lattice.jpg` as `body` background. That was a dead-man’s switch, not a renderer.

The templates are **look language**. They are not Graphic D and not the scene graph.

---

## What “equivalent” means (and does not)

Does: procedural lattice floor, glass+ember cubes, filament orbs, cyan traces, camera follows `floor(t)`, D1 eleven rows only.

Does not: blit the still. Sample the still as albedo. Invent extra WORDs to fill the photo’s crowd.

---

## Tickets

### T1 — Body background off by default

Lookrefs behind a toggle `REF` (off). Stage is the canvas.

### T2 — Floor shader

WGSL: dark plate + emissive grid + sparse hot points. Not 42 CPU cylinders. One full-screen or one ground quad with a grid function.

### T3 — Glyph materials in the existing mesh pass

WORD: thin shell + bright core (fresnel already started).  
Orb: layered noise, two spheres max.  
PTR: ribbon on the floor plane.

### T4 — Proof

HUD stays `i1p2`. Screenshot must show generated cubes, not the photo’s glyph faces. If the faces match the JPEG stamp-for-stamp, we cheated.

### T5 — Sealed

No emitter. Worker bake can stay. WebNN still probe.

---

## Execution (when you say go pass 2)

`lace-projection.html` shaders + default background none. STOP.

---

## Steward test

If the stage is still the attachment JPEG, T1 failed.  
If we add rows to look busy, we left the shoe.
