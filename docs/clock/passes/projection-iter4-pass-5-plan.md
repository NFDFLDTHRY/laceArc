# Projection iteration 4 / pass 5 plan — first paint is deterministic

**Status:** PLAN. Not executed. Emission `[GAP]`.  
**Station:** hologram  
**Evidence:** `i4p4` sometimes paints, sometimes a dark stage. Reload still the luckier path. `boot 1st|rel` exists. Identity holds.

i4p2 id, i4p3 shaders, i4p4 “no reload on first SW claim” stay. This pass kills the remaining **non-deterministic** boots.

---

## Why i4p4 is still a coin flip

```
  FIRST OPEN (still)
  ─────────────────
  bootGpu
       │
       ├─ SW install skipWaiting + clients.claim   ← page stolen, no reload
       ├─ requestAdapter() null (GPU process cold)
       ├─ getCurrentTexture throws frame 0
       │       catch → requestReboot("draw")        ← NOT debounced
       │       killGpuSession + second adapter
       └─ hidden→visible / focus during first 900ms
              sometimes ignored, sometimes not
```

Reload wins because the GPU process, canvas size, and SW are already warm. First open is three races. T1 of i4p4 stopped `location.reload`. It did not stop `clients.claim`, first-frame throw, or adapter-null.

Concrete guns:

1. [`docs/clock/sw.js`](../sw.js) `install` → `skipWaiting`, `activate` → `clients.claim`. First load is claimed mid-`requestAdapter`. No reload, but the client is hijacked.
2. `frame` catch → `requestReboot("draw")`. `"draw"` is outside the 900ms list. One thrown `getCurrentTexture` after `configure` destroys the device.
3. `requestAdapter()` null on cold Chrome Android is `keepFallback` — a black CSS stage that looks like “didn’t render”.
4. No watchdog. If rAF never sets `gpuLive`, the page stays dark with `GPU ?` or a stale `GPU reboot`.

---

## Tickets (this pass only)

### T1 — Do not claim the first client

`install`: cache icons, **no** `skipWaiting`.  
`activate`: delete old caches, **no** `clients.claim`.  
Update button already `postMessage({type:"skip"})` + `reg.update()`. First open runs **uncontrolled**. Next navigation is controlled. First paint no longer shares the page with a new SW.

### T2 — First frames may throw

`getCurrentTexture` / encode catch: increment `drawFails`. If `< 12`, skip that frame, `requestAnimationFrame` again. Do **not** `requestReboot("draw")`. At 12, reboot once.

Do not `killGpuSession` because one swapchain was not ready.

### T3 — Adapter retry

`requestAdapter` null → wait 300ms, retry, max 3. Only then `keepFallback`. Same for `requestDevice` throw.

### T4 — Watchdog

2.5s after `bootGpu` returns (or from start): if `!gpuLive`, one reboot (`wdog`). If still dead, leave GPU stamp `GPU silent` — not a lie of `GPU on`. HUD `wdog 0|1`.

### T5 — Title `i4p5`

New rawcdn SHA. Pin `LATEST.json`. `id lace-iii` unchanged. No shader restyle. No Pages.

---

## Done means

Three cold opens in a row (kill tab, paste SHA) each paint without tapping Reload. `boot 1st` on those opens. Reload still paints. `id lace-iii` still stamped.

---

## Steward test

If it still paints “sometimes”, T1 or T2 missed. If Update clones an icon, `id` broke. Cubes stay glyphs. Emission `[GAP]`.
