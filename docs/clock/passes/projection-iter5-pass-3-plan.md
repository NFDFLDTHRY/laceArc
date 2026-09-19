# Projection iteration 5 / pass 3 plan — stop framing empty space

**Status:** EXECUTED. Emission `[GAP]`. Title `i5p3`. Camera on D1 centroid. Floor louder. Ember through cube tops. Gold chords thicker.  
**Station:** hologram  
**Evidence:** `i5p2` shot `t=0004 PTR`, `ms 107`, `GPU on`. Navy void. Two teal boxes + green orbs clipped to the edges. No circuit. No gold chord. No orange core.

i5p2 tickets did not land in the picture. This pass is **framing + floor**, then ember. D1 still 11. No JPEG.

---

## Why the shot is empty

```
  t=0004 PTR a=3 b=0
  camera look = midpoint of that chord, y=0.2
  eye = look.xz + orbit 7.2, y=9
       │
       v
  look sits in EMPTY CELL
  glyphs sit at the frustum rim
  floor is under a navy clear
```

i5p2 aimed the camera at the **live PTR**, which is a gap. The lookrefs aim at a **field**. Floor shader can be loud and still read as void if the lens is between cubes.

Teal boxes: looking at cube tops, glass fresnel is low so the shell should be thin — the shot is still milky. Ember is either discarded or smaller than the top face. Treat as “ember not reading,” not as a win.

---

## Tickets (this pass only)

### T1 — Camera looks at the D1 lattice, not the live gap

Look-at = centroid of `posOf(0..10)` on xz, y ≈ 0.55.  
Eye y ≈ 11, orbit ≈ 5.5 around that centroid.  
Do **not** chase `floor(t)` PTR midpoints.

### T2 — Floor must occupy the middle of the frame

Raise circuit albedo until the navy gap in the i5p2 shot is cells, not clear-color. Thicken coarse cyan. Orange ticks every few cells. Floor y = 0.02. If the quad is still invisible, the fragment is wrong — fix that, do not paste a JPEG.

### T3 — Ember on the top face

WORD core 0.46, drawn. Glass alpha on high `ndv` (looking at a face) stays ≤ 0.05 so the top is orange, not teal milk. Hash marks stay as *specks*, not a second shell.

### T4 — Gold chord must cross the frame

PTR ribbon y = 0.55, width up. With T1, the 3→0 chord at t=0004 should run through the shot, not off-screen.

### T5 — Title `i5p3`

New rawcdn SHA. Pin `LATEST.json`. `id lace-iii` / lazy lookrefs / `ms` stay.

---

## Done means

`i5p3` at `t=0004`: floor cells in the **center**, at least two cubes fully in frame, orange on a cube top, a gold chord. Still 11 rows.

---

## Steward test

If the middle of the phone is still navy, T1/T2 missed. If you added WORDs to fill the photo, you left the shoe. Emission `[GAP]`.
