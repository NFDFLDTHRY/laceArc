# Gearing contract shafts (Layer III)

Additive `window.LACE_CONTRACTS` scripts loaded by [`../shadow-clock-gearing.html`](../shadow-clock-gearing.html) via relative `<script src>` (no `fetch`, no CDN).

| File | Role |
|---|---|
| `contracts-axle.js` | Shared axle / Reality deadbolt |
| `contracts-gears.js` | Coarse A, B, C + meshes AB, BC, CA |
| `contracts-trainA.js` | Walk 1 train A teeth |
| `contracts-trainB.js` | Walk 2 train B teeth |
| `contracts-trainC.js` | Walk 3 train C / FSM |
| `contracts-cells.js` | Time cells `t0`–`t6` |
| `contracts-escape.js` | Escapement / recursion |
| `contracts-audits.js` | Walk 7 audits `X1`–`X6` |

**Renderer requirement:** the HTML stage is **WebGPU 3D only** (Chrome Android: enable WebGPU + WebNN flags). No 2D SVG primary clock. POINTER emission remains `[GAP]` — do not invent it here.
