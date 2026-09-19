# Projection iteration 4 / pass 4 plan — first load paints

**Status:** EXECUTED. Emission `[GAP]`. Title `i4p4`. First SW claim does not reload. Cold pageshow does not reboot. Layout rAF before adapter.  
**Station:** hologram  
**Evidence:** `i4p3` paints after reload. First open of the SHA (and first open of the WebAPK) is a dark stage. Reload then `GPU on`.

i4p2 identity, i4p1 resume, i4p3 shaders stay frozen. This pass is **boot order**, not look.

---

## Why reload works and first load does not

```
  FIRST OPEN                         RELOAD
  ──────────                         ──────
  parse HTML                         SW already controlling
  bootGpu()                          bootGpu()
  SW install → controllerchange      no new controller
       │
       v
  location.reload()   ← kills first GPU
  OR pageshow reboot  ← kills first GPU
       │
       v
  black / GPU reboot latch           second boot has size + adapter
```

Smoking guns in `docs/clock/lace-projection.html`:

1. `controllerchange` → `location.reload()` always. First claim of the SW is not an Update. It aborts the first `requestAdapter` / first configure.
2. `pageshow` always `requestReboot`. First load fires `pageshow` with `persisted=false` while `bootGpu` is still in the worker. `needReboot` then `killGpuSession` in `finally`. Chrome Android often returns a dead device on that second boot until a real reload.
3. First `bootGpu()` does not stamp `lastRebootAt`, so the 900ms debounce does not protect it.
4. `resize()` bails if canvas `< 64px`. First WebAPK paint can be 0×0 for a frame. Reload has layout.

---

## Tickets (this pass only)

### T1 — First SW claim is not a reload

`controllerchange` reloads **only** if `navigator.serviceWorker.controller` was already set when `register()` ran (an Update). First install: stamp `SW wait→on`, do not `location.reload()`.

### T2 — First pageshow is not a reboot

`pageshow` with `!ev.persisted` on a cold boot is ignored if `gpuBooting` or a boot has not yet drawn. Keep reboot for `bfcache`, `visible` after hide, `lost`, `draw`.

Stamp `lastRebootAt` at the start of `bootGpu` so the 900ms window actually covers the first boot.

### T3 — Configure after a layout frame

Before `ctx.configure`, wait `requestAnimationFrame` (one) if `canvasCssSize` is `< 64`. Do not `keepFallback` on a 0×0 first frame. rAF already retries `resize()`; do not start adapter work until size is real **or** innerWidth is real.

### T4 — HUD `boot 1st|rel`

Stamp whether this document load saw a prior controller. So a black first open is diagnosable without a laptop.

### T5 — Title `i4p4`

New rawcdn SHA. Pin `LATEST.json`. `id lace-iii` unchanged. No shader restyle. No Pages.

---

## Done means

Cold open of the `i4p4` SHA (kill tab, paste URL, or tap the one icon) paints without a manual reload. Reload still paints. `persist on` / `id lace-iii` still stamped.

---

## Steward test

If first open only works after the user hits Reload, T1/T2 missed. If Update starts cloning icons, you left `id`. Cubes stay glyphs. Emission `[GAP]`.
