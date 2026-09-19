# Projection iteration 3 / pass 3 plan — shaders toward the hologram templates

**Status:** PLAN. Not executed. Emission `[GAP]`.  
**Station:** hologram  
**Target:** Chrome Android 17, rawcdn SHA.  
**Evidence:** `i3p2` shots `t=0003 PIE` and `t=0009 PTR`. Camera distance and floor quietness are accepted. The mesh still reads as **opaque plastic toys on graph paper**.

Authority pictures (not the phone shots):

- `docs/hologram/clockwork-view-lattice.jpg`
- `docs/hologram/clockwork-view-traces.jpg`
- `docs/hologram/clockwork-view-crossing.png`
- `docs/hologram/lookref-lattice-hub-uplink.png`

Law: [`docs/hologram/visual-primitives.md`](../../hologram/visual-primitives.md) §0 SCENE language.

---

## Gap (i3p2 vs templates)

| Template cue | i3p2 now |
|---|---|
| Fine circuit / cracked floor, dim cyan, bloom | Graph-paper lines, no circuit cells, no bloom |
| Translucent glass cube; orange molten *inside* | Solid terracotta block |
| Green plasma / neural volume | Plastic lime sphere with one spec |
| Cyan filament / crossing beam through glass | Flat ribbon on the floor |
| Wisps, heat, shallow falloff | Hard edges, uniform albedo |

Cubes stay **glyphs / clustering regions**. Not WORD rows. Not a second store.

---

## Tickets (this pass only)

### T1 — Glass shell + ember core (WORD)

Bake already emits shell cube + smaller core. Fragment today lights both as opaque.

Do: shell = high fresnel, low body alpha, faint cyan rim. Core = opaque ember, brighter, stays inside. Do not add a third mesh type.

### T2 — Floor is a circuit plane

Replace graph-paper `fract` lines with a **cell + trace** floor: darker wells, thin cyan traces on cell edges, occasional ember tick. Keep born `< 0`. No JPEG on the stage.

### T3 — PTR as filament, not tape

Ribbon fragment: additive cyan, brighter along the spine, softer edges. Crossing look = beam through glass, not a chalk line on the grid.

### T4 — PIE orb as volume accent

Same sphere mesh. Fragment: green core + translucent halo, not a billiard ball.

### T5 — Title `i3p3`

New rawcdn SHA. Installed `i3p2` will not move. Camera `8.4/6.2` stays.

### T6 — Sealed

No Three.js. No Pages. No emitter. No SDF rewrite of the whole page this tick (mesh + WGSL only). No cube-as-row.

---

## Done means

Phone shot of `i3p3` at `t=0003` and `t=0009` rhymes with lattice + crossing: glass, ember inside, faint circuit floor, luminous PTR wire. Not plastic CAD.

---

## Steward test

If a cube looks like a toy brick, the shader is wrong. If a cube starts writing Graphic D, you left the shoe.
