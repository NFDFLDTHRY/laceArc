# Projection interaction pass 1 plan — black is illegal; then orbit

**Status:** PLAN. Not executed. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** i5p6 “now nothing renders.” No new screenshot. Last good frame was i5p5 (`f=6`, teal cubes). i5p6 added cyan ribbons + dropped the glass shell.

New iteration. Shader-iteration 5 is closed. This pass **recovers a visible stage**, then adds the first **interaction**: finger orbit so a missed lace can be hunted, not guessed.

---

## Why i5p6 can be a black canvas

```
  worker bake  →  ribbons + orange cubes
  draw         →  floor 6 verts, then glyphs
  if bake throws / fCount bad / pipeline throws
       │
       v
  keepFallback  OR  gpuLive never sets
       │
       v
  opaque canvas, navy clear, no CSS grid   ← “nothing”
```

Possible guns (do not pick one without a stamp):

1. Worker `onmessage` / `fCount` mismatch → `gCount` 0 → `keepFallback` never if vCount still >6 from the well-quad-only path.
2. `pass.draw(gCount, 1, fCount)` firstVertex ignored/wrong → empty glyph draw, floor shader still navy.
3. Ember color gate: `(1, 0.28, 0.04)` should hit `r>0.85`. If it does not, verts discard on both passes.
4. Boot loop: draw throw → reboot → black.

Black with `GPU on` is worse than `GPU off` + CSS. Fail visible.

---

## Tickets (this pass only)

### T0 — Empty stage must say why

If no triangle commits in 1.5s: stamp `empty`, call `keepFallback` with the last caught message. Canvas may not sit navy in silence.

### T1 — Bake on the page if the worker is quiet

If worker timeout / error: run the same `bake()` inline (copy the ribbon+cube bake into the HTML). Do not wait 8s on a dead worker. Stamp `bake main`.

### T2 — Draw glyphs even if fCount is 0

If `fCount` is missing, `draw(vCount)` as i5p4 did. Floor pass is optional. Cubes and gold bars are not.

### T3 — One-finger orbit

Pointer on the canvas: dx → yaw, dy → pitch. Camera stays on GRID. This is Layer III view, not Core. Lets a gold bar hide off-axis no longer count as “invisible.”

### T4 — Title `ixp1`

New rawcdn SHA. Pin `LATEST.json`. **h1 and stamp both `ixp1`.** Kill i5p6. `id lace-iii`. Still 11 D1 rows.

---

## Done means

Cold open paints **something** (orange cube or cyan bar or CSS fallback with a reason). Drag orbits. Title `ixp1`. Navy silence = fail.

---

## Steward test

If you cannot see a cube or a reason, you may not add more shaders. Emission `[GAP]`.
