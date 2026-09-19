# Projection iteration 3 / pass 1 plan — stage is black in the installed app

**Status:** PLAN. Not executed. Emission `[GAP]`.  
**Station:** hologram  
**Target:** Chrome Android 17, installed WebAPK from rawcdn SHA.  
**Evidence:** standalone LaceArc III, title `i2p4`, Core time, `t=0010 PTR`, play ran, HUD `installed`. Stage is a black void. REF off. Holder-doors shot earlier was the same void.

Install path is correct. The page is running. The lattice is not.

---

## What the shot already proves

| Signal | Meaning |
|---|---|
| title `i2p4` + `RAWCDN SHA` | right file, SHA-pinned host |
| `installed` | display-mode standalone; WebAPK is the product |
| `t=0010 PTR` + Play/pause | JS time loop is alive |
| no lookref photo, no grid, no cube | either GPU painted near-black, or fallback never took the stage |

`keepFallback()` would put JPEGs on stage. The shot is not those JPEGs. So `main()` almost certainly took the WebGPU branch and then drew a void.

---

## Likely causes (read against `lace-projection.html`)

1. **Clear + materials are night on night.** `clearValue` is `{r:0.02,g:0.03,b:0.05}`. Floor shader base is `(0.02,0.05,0.08)`. Cube lighting is `0.28 + 0.55*diff` then fog toward `(0.02,0.04,0.06)`. On a phone OLED this is a black rectangle.

2. **`gpuLive` is never set true.** `hideFallback()` is a no-op. Fallback CSS default is `display:none`. There is no HUD stamp for adapter / canvas WxH / draw count. We cannot tell GPU-on from GPU-dead-and-silent.

3. **First `resize()` can run at 2×2** if `clientWidth` is 0 before standalone chrome lays out. Depth texture and viewport then stay tiny unless another resize fires. `visualViewport` is a fallback; it is not proven on WebAPK.

4. **Lookrefs are the wrong fail-closed.** User already rejected JPEGs as the stage. Fail-closed must be **visible geometry + a text why**, not a photo of the hologram.

5. **Worker bake is not the first suspect.** Time loop works; if bake threw, `keepFallback` would have run. Still stamp `vCount` so a 0-vert buffer cannot hide.

---

## Tickets (this pass only)

### T1 — Exposure and floor that a thumb can see

Opaque floor grid with bright cyan lines on a dark-not-black field. Ember cubes and cyan PTR beads at least 3× current albedo. Clear color not OLED-black. No fog-to-void. No `discard` that eats the live row.

### T2 — HUD tells the truth

Stamps: `GPU on|off`, `W×H`, `n=vert`. If adapter missing, stamp `GPU off` and paint a full-screen **shader or CSS grid**, not a JPEG.

### T3 — Resize after standalone chrome

`resize()` on `load`, `pageshow`, `visualViewport.resize`, and first `rAF`. Refuse to draw until `canvas.width >= 64`.

### T4 — Title `i3p1`

New SHA URL after execute. Installed `i2p4` will not move. That is deploy law.

### T5 — Sealed

No Pages. No floating `main`. No Three.js. No emitter. No lookref-as-stage. Cubes stay glyphs.

---

## Done means

Phone shot of the **installed** app (or the new rawcdn SHA before install) shows floor grid + at least one cube/bead at `t=0000` without tapping REF.

---

## Steward test

If you cannot see the tooth on the shoe, you may not call the clock drawn.
