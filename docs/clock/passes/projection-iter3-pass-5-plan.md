# Projection iteration 3 / pass 5 plan — shaders to the hologram lookrefs

**Status:** EXECUTED. Emission `[GAP]`. Title `i3p5`. Solid then glass pipelines. Ember halo. Sphere 20. Spine+halo PTR.  
**Station:** hologram  
**Target:** Chrome Android 17, rawcdn SHA.  
**Evidence:** `i3p4` shots `t=0001 DESSERT` and `t=0002 PTR`. Second load lives. Cubes are icy boxes. The orb is a golf ball. The wire is a thread.

Authority (not the phone shots):

- `docs/hologram/clockwork-view-lattice.jpg`
- `docs/hologram/clockwork-view-traces.jpg`
- `docs/hologram/clockwork-view-crossing.png`
- `docs/hologram/lookref-lattice-hub-uplink.png`
- `docs/hologram/lookref-lattice-trail-annotations.jpg`
- `docs/hologram/lookref-lattice-glyph-arrows.jpg`
- `docs/hologram/visual-primitives.md` §0

i3p4 lifecycle stays. This pass is **draw order + mesh density + floor language**.

---

## Why i3p4 is still not the lookref

| Lookref | i3p4 now | Cause |
|---|---|---|
| Orange molten *inside* glass | Teal slab, core missing or buried | One pipeline, `depthWrite` on glass, core loses |
| Soft glass rim + inner dark | Flat face shading | No separate glass pass |
| Green plasma volume | 8-segment golf ball | `sphere(..., 8)` |
| Cyan bloom filament through cubes | Hairline (green in one shot) | One thin ribbon, lit as a solid |
| Cracked / motherboard floor | Graph paper | Single `fract` cell edge |
| Wisps / bloom | None | No halo mesh, no additive pass |

Cubes stay **clustering-region glyphs**. Not WORD rows.

---

## How we get there (no JPEG stage)

Chrome Android has no cheap full-screen bloom. Fake it with **two pipelines + halo meshes**.

### T1 — Two pipelines

- **SOLID:** depth write on. Ember cores, PTR beads, floor.
- **GLASS:** depth write **off**, depth test on, src-alpha blend. Shells and plasma drawn **after** solids.

Ember must be visible through the shell. That is the lattice cube.

### T2 — Ember occupancy

Keep shell + core. Core albedo stays hot orange. Add a slightly larger dim orange halo cube (`~0.28`) on the solid pass so the interior reads as molten, not a speck.

### T3 — Orb density

`sphere(0.62, 8)` → `sphere(0.62, 20)`. Same plasma fragment. Facets go away.

### T4 — Filament = spine + halo

Bake two ribbons per PTR: tight cyan spine, wider dimmer halo. Halo uses the glass/additive pipeline. Mid height stays at cube center (`0.55`). Not a floor chalk line.

### T5 — Floor language

Dual-scale: coarse wells + fine traces + sparse ember ticks + a crack term from hashed cell IDs. Still `born < 0`. Still a shader, not a photo.

### T6 — Title `i3p5`

New rawcdn SHA. Camera `8.4/6.2` and i3p4 reboot stay.

### T7 — Sealed

No Three.js. No JPEG on the stage. No emitter. No cube-as-row. No Pages.

---

## Done means

Phone shot of `i3p5` at `t=0001` and `t=0002` shows: glass you can see *into*, orange inside, smooth plasma, a luminous wire, a circuit floor that is quieter than the glyphs.

---

## Steward test

If it still looks like ice cubes on graph paper, the second pipeline did not land. If a cube writes Graphic D, you left the shoe.
