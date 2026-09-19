# Projection visual pass 3 plan — first paint + CPU WASM SIMD

**Status:** EXECUTED. Worker + ribbon lattice. wasm32 libcore missing here. Emission `[GAP]`.  
**Station:** hologram  
**Page:** `docs/clock/lace-projection.html`  
**Not Core.** No `src/` Lace. No crates.io. No CDN/npm.

Load is abysmal because the **main thread** builds a lattice of fat cylinder beams and high-seg spheres, then compiles WGSL, before anything moves. WebGPU is the *draw*. The stall is CPU mesh + shader compile.

---

## Constraints that will bite

| Fact | Consequence |
|---|---|
| raw.githack often has no COOP/COEP | `SharedArrayBuffer` / wasm pthread may be dead |
| In-app WebView | WASM may load; GPU may not |
| Lookrefs already on stage (pass 1) | First paint must stay the stills until workers finish |
| Implementation law | No crates.io; first-party wasm only |

Multicore = **Workers**. If SAB is missing, workers still run; they copy buffers. Do not promise pthread.

---

## Tickets

### T1 — Cheap mesh (must land even if wasm is late)

Floor lattice = **line list** (or 2-vert strips), not 8-ring cylinders × 42 spans.  
Spheres: 8–10 seg until idle, then refine.  
This is the load fix if wasm is cold.

### T2 — First paint never waits on wasm

Order: lookrefs visible → start GPU *or* keep stills → worker/wasm bakes geom → upload.  
If wasm fetch/compile fails, T1 JS path stays.

### T3 — First-party WASM SIMD module

Tiny module next to the page (`docs/clock/wasm/` or built artifact in that folder). Job only:

- pack lattice line vertices  
- pack D1 cube/orb/trace vertices  
- optional: SIMD transform of instance matrices for the time walk  

Not a renderer. Not Core append. Not POINTER emission.

Build: `rustc`/`clang --target=wasm32` with `+simd128`. Zero crates.io. One task: **bake projection vertices**.

### T4 — Multicore

`new Worker` × min(hardwareConcurrency, 4):

- worker A: floor lattice  
- worker B: D1 glyphs  
- main: WebGPU upload + time  

Message: transferable `ArrayBuffer`. SAB only if `crossOriginIsolated`. Else copies.

### T5 — Sealed

No invented D1 rows. Cubes stay glyphs. No Three.js. No crates.io “engine.”

---

## Execution (when you say go pass 3)

T1 + T2 in the HTML this tick. T3/T4 wasm+workers if the toolchain is here; otherwise stub the worker API and leave wasm as the next drop. Do not stall the page on a missing compiler.

---

## Steward test

If first paint is still a black or frozen chrome until wasm finishes, T2 failed.  
If wasm writes a POINTER, delete it.
