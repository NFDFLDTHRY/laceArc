# Projection iteration 5 / pass 1 plan — first paint is 38 KB, not 728 KB

**Status:** EXECUTED. Emission `[GAP]`. Title `i5p1`. Lookrefs lazy. Bake parallel with adapter. No 300ms sleep. HUD ms.  
**Station:** hologram  
**Evidence:** i4p6 yes–no–yes sat on load lag. HTML+worker ≈ 38 KB. Three lookref JPEGs ≈ 728 KB, fetched on every open. Adapter then worker is serial. Controlled load sleeps 300 ms.

New iteration. i4p2 `id`, i4p3 shaders, i4p6 destroy-on-hide stay. This pass is **bytes and order**, not look.

---

## Critical path now

```
  parse HTML
       │
       ├─ <img> lattice.jpg  185 KB
       ├─ <img> traces.jpg   338 KB     ← always, REF off or on
       └─ <img> crossing.png 205 KB
  script
       │
       ├─ 2 rAF
       ├─ +300 ms if SW controlling
       ├─ requestAdapter / requestDevice
       └─ THEN fetch worker.js + bake     ← serial
  first GPU frame
```

GitHack is origin. 728 KB of photos before (or beside) a 34 KB page is the lag. Serial adapter→worker is the rest.

---

## Tickets (this pass only)

### T1 — Lookrefs off the critical path

Remove `src=` from the three `#fallback img` elements. Load them **only** when REF is on (`body.ref`) or GPU-off fallback is showing. `new Image()` / set `src` then. First paint must not request those three files.

Keep the files in the repo. Do not delete templates.

### T2 — Worker with adapter, not after

Start `bakeScene()` in parallel with `requestAdapter`. Join before `writeBuffer`. First open must not wait for GPU to finish before the worker URL even starts.

Inline the bake into the HTML as a last resort only if the worker fetch is still the stall — prefer keep worker.

### T3 — Drop the 300 ms sleep

i4p6 T1 (`killGpuSession` on hide) stays. Controlled-load `setTimeout(300)` goes. HUD `load n` stays so yes–no–yes is still visible.

### T4 — HUD `ms`

Stamp `performance.now()` at first `gpuLive` as `ms NNN`. Cold open target: **under 1500 ms** on Chrome Android 5G to GitHack. Not a contract with Core.

### T5 — Title `i5p1`

New rawcdn SHA. Pin `LATEST.json`. `id lace-iii` unchanged. No shader restyle. No Pages. No emitter.

---

## Done means

Network log of a kill-tab open shows HTML + worker + icons, **not** the three lookrefs. Title `i5p1`. `ms` stamp present. Open / reload / reload still paint.

---

## Steward test

If first paint still pulls 728 KB of JPEG, T1 missed. If a cube writes Graphic D, you left the shoe. Emission `[GAP]`.
