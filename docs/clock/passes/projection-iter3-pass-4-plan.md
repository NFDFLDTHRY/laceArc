# Projection iteration 3 / pass 4 plan — second load must render

**Status:** EXECUTED. Emission `[GAP]`. Title `i3p4`. Reboot on lost/bfcache/draw throw. JS network-first.  
**Station:** hologram  
**Target:** Chrome Android 17, rawcdn SHA WebAPK and tab reload.  
**Evidence:** first paint of `i3p3` works; a second load (reload, leave+reopen PWA, or bfcache return) refuses the GPU stage.

i3p3 materials stay. This pass is **lifecycle**, not a restyle.

---

## Likely kill chain (do not guess a winner — close all four)

```
 first load
    │
    ├─ requestAdapter + requestDevice + Worker bake + rAF
    │
 second load
    │
    ├─ A  device.lost / adapter gone, no listener, rAF throws, catch → GPU off
    ├─ B  pageshow persisted (bfcache): old device, pageshow only resize()
    ├─ C  Worker("projection-bake-worker.js") cache-first / stale / 8s timeout
    └─ D  ctx.configure / getCurrentTexture throw, resize() uncaught
```

`main()` is one-shot. `pageshow` only calls `resize()`. There is no `device.lost`. Non-HTML assets are **cache-first**. Failed fetches can be `cache.put`.

---

## Tickets (this pass only)

### T1 — Re-enter `main` after death

`device.lost.then(reinit)`. `visibilitychange` → visible and lost → reinit. Guard with `gpuBooting` so two boots cannot overlap. Destroy old buffers/textures/context before the second boot.

### T2 — `pageshow` persisted is a new clock

If `event.persisted`, do not resize the corpse. Tear down and boot again.

### T3 — `resize` / frame must not throw the page off GPU

`configure` and `getCurrentTexture` in try/catch. Failure sets a `needReboot` flag; next frame reboots instead of `keepFallback` on the first glitch.

### T4 — Worker and SW

Network-first for `.js` (same as HTML). Do not `cache.put` non-OK responses. Worker URL `projection-bake-worker.js?i=3p4`. Keep 8s timeout; on timeout, one inline bake retry on the page thread before GPU-off.

### T5 — Title `i3p4`

New rawcdn SHA. Installed `i3p3` will not move. Camera `8.4/6.2` and i3p3 shaders stay.

### T6 — Sealed

No restyle. No JPEG stage. No emitter. No Pages.

---

## Done means

Same SHA, twice: first open paints, kill the tab or background the PWA, open again. Title `i3p4`. `GPU on` + `n=` both times. CSS-grid fallback only if the adapter is actually gone.

---

## Steward test

If it paints once and lies the second time, the clock did not survive a tick. That is the bug.
