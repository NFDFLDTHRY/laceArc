# Projection iteration 4 / pass 3 plan — floor + ember + short wires

**Status:** PLAN. Not executed. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** `i4p2` shot `t=0010 PTR`. `GPU on` · `persist on` · `id lace-iii` · `n=5958`.  
Identity and resume stay frozen. The picture is still wrong.

Authority: `docs/hologram/clockwork-view-lattice.jpg`, `clockwork-view-traces.jpg`, `clockwork-view-crossing.png`, `lookref-lattice-hub-uplink.png`, `visual-primitives.md` §0.

---

## What the shot shows

| Lookref | i4p2 now |
|---|---|
| Circuit / cracked floor under glyphs | Black tank. No plane |
| Orange molten inside glass | Empty teal boxes |
| Cyan bloom wire *through* two cubes | Long dim tubes shooting off into void |
| Tight lattice spacing | Camera still on a sparse 2.4-unit grid |

Wires are PTR ribbons at y=0.55 with midpoints. At t=0010 several PTRs are live, so the stage is a bundle of chords. That is lawful. They must not look like infinite neon sticks, and they must sit on a floor.

---

## Tickets (this pass only)

### T1 — Floor is a plane again

Solid-pass floor albedo up until cells read at 8.4/6.2. Keep quieter than glyphs. `born < 0` only. No JPEG.

Likely cause: floor quad is dark and grid lines are too thin after i4p1 raise still lost against clear color `0.05,0.08,0.12`. Raise both clear and floor traces.

### T2 — Ember occupies the shell

Core `0.32` + halo already bake. Glass rim from i4p1 made faces empty — good — but the solid interior is not reading. Check pass discard: halo `[0.90,0.28,0.06]` is ember (`r>0.85`) and stays on the solid pass. If still invisible, draw ember **after** glass as a third tiny pass, or bump core albedo and size to `0.40`.

Cubes stay glyphs.

### T3 — PTR is a segment, not a searchlight

Cap ribbon length visually: keep A→B chords, thicken halo, add a head/tail fade in the fragment using distance along the segment if we pass it — or simply shorten mid-height sag so chords stay between cube centers and do not read as floor lasers.

Do not add new keys. Do not invent emission.

### T4 — Title `i4p3`

New rawcdn SHA. Update `LATEST.json` in the follow-up pin commit. `id lace-iii` unchanged.

### T5 — Sealed

No Pages. No sixth icon. No emitter. Persist/reboot/id frozen.

---

## Done means

`i4p3` at `t=0002` and `t=0010`: floor cells visible, orange inside at least one cube, PTR chords stop at cubes. Title `i4p3`. `id lace-iii` still stamped.

---

## Steward test

If the floor is a photo, redo. If a tube writes Graphic D, you left the shoe.
