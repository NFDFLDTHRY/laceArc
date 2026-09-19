# Projection iteration 5 / pass 5 plan — floor is a pass, not a hope

**Status:** PLAN. Not executed. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** `i5p4` title (SHA is live), `t=0005 WHOLE`, `ms 83`. Three teal cubes with brown specks, one green disc, navy everywhere. No circuit. No gold. No molten core.

T0 of i5p4 worked. The picture still loses to clear-color.

---

## What the shot actually is

| Lookref | i5p4 |
|---|---|
| Cracked circuit filling the frame | Uniform navy = **clearValue** |
| Orange molten occupying the cube | Teal shell + brown hash stamps |
| Wispy green plasma | Lambert disc |
| Gold traces between nodes | Absent |

The floor fragment can be as loud as we want. If the quad is not in the framebuffer, the phone stays navy. i5p3/i5p4 “raise albedo” did not change that. Treat it as **not drawn**, not “too dim.”

Likely: one 24×24 quad sharing the glyph pipeline, depth-tested against cubes, then glass pass. Background pixels never hit that quad, or the quad loses the depth race.

---

## Tickets (this pass only)

### T1 — Floor is its own draw

Bake a 40×40 `y=0` quad. Draw it **first**, depth write **off**, no glass, no `appear`. Fill the clear. Then glyphs. If the middle is still navy, the floor shader is not bound — stop and fix that before T2.

### T2 — Ember is the cube; glass is the rim

WORD = opaque orange core (no hash-as-content). Glass only where fresnel is high (`ndv` low). Face-on = orange, not teal milk. Hash marks off.

### T3 — Gold chords on the lattice

PTR ribbons y=0.55, width 0.08, solid pass, no `appear` fade that hides them at t=0005. Past PTRs (born 2, 4) must still show.

### T4 — Plasma is not a ball

Keep the sphere mesh. Fragment: noise, broken silhouette via alpha, green filaments. Not a filled disc.

### T5 — Title `i5p5`

New rawcdn SHA. Pin `LATEST.json`. Kill i5p4 tab. Title must read `i5p5`. `id lace-iii` unchanged. Still 11 D1 rows.

---

## Done means

`i5p5` at `t=0005`: circuit under the cubes, orange occupying at least one cube, a gold bar, plasma not a disc. Navy middle = fail.

---

## Steward test

If you JPEG the floor, T1 missed. If you mint WORDs to match the photo, you left the shoe. Emission `[GAP]`.
