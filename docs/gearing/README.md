# Gearing contract shafts (Layer III)

Additive `window.LACE_CONTRACTS` scripts loaded by [`../shadow-clock-gearing.html`](../shadow-clock-gearing.html) via relative `<script src>` (no `fetch`, no CDN).

| File | Role |
|---|---|
| [`contracts-axle.js`](contracts-axle.js) | Shared axle / Reality deadbolt |
| [`contracts-gears.js`](contracts-gears.js) | Coarse A, B, C + meshes AB, BC, CA |
| [`contracts-trainA.js`](contracts-trainA.js) | Walk 1 train A teeth |
| [`contracts-trainB.js`](contracts-trainB.js) | Walk 2 train B teeth |
| [`contracts-trainC.js`](contracts-trainC.js) | Walk 3 train C / FSM |
| [`contracts-cells.js`](contracts-cells.js) | Time cells `t0`–`t6` |
| [`contracts-escape.js`](contracts-escape.js) | Escapement / recursion |
| [`contracts-audits.js`](contracts-audits.js) | Walk 7 audits `X1`–`X6` |

## Multi-agent claim / release

| Path | Role |
|---|---|
| [`CLAIMS.md`](CLAIMS.md) | Full shaft claim/release protocol (Layer III only) |
| [`claim.sh`](claim.sh) | Executable: `status` \| `claim` \| `release` \| `check` \| `refresh` \| `force-free` |
| [`claims/`](claims/README.md) | Per-shaft FREE/HELD state, one file per shaft (status derived; no shared STATUS.md) |
| [`RESYNC.md`](RESYNC.md) | Full-repo resync signal: FIRED/CLEAR, TIP_AT_FIRE, the live-tip rule |
| [`resync.sh`](resync.sh) | Executable: `fire` \| `status` \| `clear` — steward word only |
| [`resync-pass-1-plan.md`](resync-pass-1-plan.md) | Pass 1 plan: stuck-FIRED diagnosis; execute is a later authorized tick |

One shaft per agent. Zero or one drop per shaft per tick. Always `git fetch` + ff-only `main` before claim. Never edit another shaft’s `.claim` or `contracts-*.js`. Renderer stays frozen / designated editor only. Not Core; POINTER emission remains `[GAP]`.

```bash
./docs/gearing/claim.sh status
./docs/gearing/claim.sh claim axle "YourAgent"
./docs/gearing/claim.sh check axle "YourAgent"
./docs/gearing/claim.sh release axle "YourAgent"
```

**Renderer requirement:** the HTML stage is **WebGPU 3D only** (Chrome Android: enable WebGPU + WebNN flags). No 2D SVG primary clock. POINTER emission remains `[GAP]` — do not invent it here.
