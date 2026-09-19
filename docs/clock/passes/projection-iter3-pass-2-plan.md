# Projection iteration 3 / pass 2 plan — pull the camera back, quiet the floor

**Status:** EXECUTED. Emission `[GAP]`. Title `i3p2`. Orbit 8.4/6.2. Floor ~0.35×.  
**Station:** hologram  
**Target:** Chrome Android 17, rawcdn SHA WebAPK.  
**Evidence:** `i3p1` shot, Core time, `t=0002 PTR`, `GPU on`, `970x1994`, `n=1674`. Lattice and cubes are visible. Camera is on top of the tooth. Floor lines eat the glyphs.

i3p1 fixed the void. This pass is distance and floor, not a restyle.

---

## What the shot already proves

| Signal | Keep |
|---|---|
| title `i3p1` | next title is `i3p2` |
| `GPU on` + real W×H + n | HUD stamps stay |
| orange cubes + green PIE orb + cyan grid | geometry exists |
| grid brighter than the cubes | floor is too loud |
| one cube fills half the phone | orbit radius 4.2 is too close |

---

## Tickets (this pass only)

### T1 — Camera twice as far

Today:

```
eye = look + (sin(ang)*4.2,  3.1,  cos(ang)*4.2)
fov  = 0.85
```

Do:

```
eye = look + (sin(ang)*8.4,  6.2,  cos(ang)*8.4)
```

Double the orbit radius **and** the height. Do not change look-at. Far plane already 80; leave it unless the doubled orbit clips.

### T2 — Floor fainter than the glyphs

Floor fragment today: line color `(0.25, 0.95, 1.0)` on base `(0.05, 0.12, 0.18)`, thick `smoothstep(0.035, 0.07)`.

Do: line albedo about **0.35×** current. Thinner lines. Hot ticks and follow-glow quieter. Worker ribbon floor (`0.12, 0.55, 0.75`) same fade. Cubes/orbs **unchanged**.

### T3 — Title `i3p2`

New rawcdn SHA. Installed `i3p1` will not move.

### T4 — Sealed

No JPEG stage. No Pages. No emitter. No restyle of cube/orb materials this tick. Cubes stay glyphs.

---

## Done means

Phone shot of `i3p2` shows several D1 cells in frame at `t=0002`, and the grid reads as a floor, not as the subject.

---

## Steward test

If the floor shouts louder than the cube, you pulled the wrong lever.
