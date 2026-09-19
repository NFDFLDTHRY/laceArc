# Projection iteration 4 / pass 6 plan — break yes–no–yes

**Status:** EXECUTED. Emission `[GAP]`. Title `i4p6`. Destroy on hide. Controlled load waits 300ms. HUD load n. Early lost = recycle.  
**Station:** hologram  
**Evidence:** `i4p5` cold open paints. Reload #1 dark. Reload #2 paints. Pattern: **yes, no, yes**.

i4p5 T1–T4 stay (unclaimed first client, draw-skip, adapter retry, watchdog). This pass is the **odd reload**.

---

## What yes–no–yes means

```
  OPEN 1     no SW controller     GPU process cold-but-free     YES
  RELOAD 1   first controlled     previous device still dying   NO
  RELOAD 2   GPU recycled         adapter real                  YES
  RELOAD 3   dying again                                    (expect NO)
```

Not a shader bug. Not `id`. The **no** is the load that starts while Chrome Android still holds the last WebGPU device.

Guns still in the page:

1. `pagehide` only sets `gpuLive=false`. It does **not** `device.destroy()`. The GPU process is released whenever the browser feels like it — often *after* the next `requestAdapter`.
2. Reload #1 is the first load with `hadController === true` (SW now controlling). i4p5 stopped `clients.claim` on first open; the **next** navigation is still claimed by default. That fetch stack is new and races the dying device.
3. `bootGpu` on a controlled load starts immediately. No delay for recycle.
4. No cross-load counter, so we cannot see “this is the no” on the HUD.

---

## Tickets (this pass only)

### T1 — Destroy on hide

`pagehide` / `freeze` / `visibility=hidden`: `killGpuSession()` (destroy device + depth). Do not wait for the next document’s `bootGpu` to free the GPU.

### T2 — Controlled load waits

If `hadController`, wait **300ms** after the layout rAF, then `requestAdapter`. Uncontrolled first open stays immediate (already YES).

### T3 — HUD `load n`

`sessionStorage lace-iii-load` increment. Stamp `load 1|2|3`. Layer III only. Not Graphic D. So yes–no–yes is visible without a laptop.

### T4 — Lost in the first second is one recycle, not death

If `device.lost` fires before `gpuLive` or within 1s of `bootGpu`, reboot once (`recycle`). Do not `keepFallback`. Watchdog still one-shot.

### T5 — Title `i4p6`

New rawcdn SHA. Pin `LATEST.json`. `id lace-iii` unchanged. No shader restyle. No Pages.

---

## Done means

Kill tab. Open SHA. Reload. Reload. All three paint. HUD `load 1`, `load 2`, `load 3` with `GPU on` each time. Pattern must not be yes–no–yes.

---

## Steward test

If reload #1 is still dark, T1/T2 missed the recycle. If a sixth icon appears, `id` broke. Cubes stay glyphs. Emission `[GAP]`.
