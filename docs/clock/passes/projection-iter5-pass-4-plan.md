# Projection iteration 5 / pass 4 plan — leave i5p2, then make the floor unmissable

**Status:** PLAN. Not executed. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** shot titled **`i5p2`**, stamp `i5p2`, `t=0009 PTR`, `PWA on`, `boot rel`. Two teal cubes in a navy void. No circuit. No gold. No ember.

i5p3 is already on main (`972d298`, `LATEST.json` title `i5p3`). This phone never loaded it. The WebAPK is frozen on the i5p2 SHA. Update did not jump, or was not used.

---

## Two failures, not one

```
  INSTALLED APP          origin/main
  i5p2 SHA  ────────X──── i5p3 SHA 972d298
  (this shot)              camera on GRID
                           (never seen)
```

1. **Identity path:** PWA `start_url` is a SHA. `Update` must `location.replace` the `LATEST.json` SHA. This shot proves that did not happen.
2. **Picture:** even i5p2/i5p3 shaders still lose to clear-color navy. Floor/ember/gold are too polite.

Pass 4 does both. Still 11 D1 rows. No JPEG.

---

## Tickets (this pass only)

### T0 — Update must leave i5p2

If `goLatest` fetch of `raw.githubusercontent.com` fails on the WebAPK, fall back to `api.github.com` (already there) and **still replace**. Stamp `jump SHA` before replace. Cold-open of the i5p4 rawcdn URL is the test if Update is stuck. Title on the phone must read `i5p4`, not `i5p2`.

### T1 — Floor is the stage, not a tint

Circuit fragment: cell wells dark, traces **blown out** cyan (near 0.4, 1, 1), orange ticks every cell, not 8%. Clear color = floor well so the “void” is the same material. If the middle of the frame is still navy after T0, the floor quad is not in the pass — fix draw order, do not raise camera.

### T2 — Cube tops are ember

Skip glass on high `ndv` (`discard` the shell when looking at the face). Core 0.46 shows as orange squares, not teal milk with brown specks.

### T3 — Gold chord at y=0.55, width 0.08

Must read as a bar across the lattice at `t=0004` and `t=0009`, not a hairline.

### T4 — Title `i5p4`

New rawcdn SHA. Pin `LATEST.json`. `id lace-iii` unchanged.

---

## Done means

Phone title is **`i5p4`**. Middle of the screen is circuit. At least two full cubes, orange on top, a gold bar. Not an i5p2 screenshot.

---

## Steward test

If the title still says i5p2, T0 missed — you are grading a dead SHA. If you added WORDs to fill the photo, you left the shoe. Emission `[GAP]`.
