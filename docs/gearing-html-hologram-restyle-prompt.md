# Gearing HTML — hologram template restyle ASCII prompt

Paste everything inside the outer box to an agent. **Designated-editor tick(s)** on `docs/shadow-clock-gearing.html` (and CSS/inline only). Layer III. Emission `[GAP]`. No `src/`. No CDN / npm / Three.js / `fetch` for contracts.

**Visual authority (templates):** the three hologram clockwork views — not plastic toy gears.

| Template | Path | Look |
|---|---|---|
| Lattice | `docs/hologram/clockwork-view-lattice.jpg` | Glass cubes, etched faces, orange/amber cores, dark circuit floor |
| Crossing | `docs/hologram/clockwork-view-crossing.png` | Live cyan/white mesh beams, arcs between stations |
| Traces | `docs/hologram/clockwork-view-traces.jpg` | Floor cyan traces, green clusters, residual heat after ticks |

Also read: `docs/hologram/README.md`, `docs/hologram/visual-primitives.md` (§2.5 stacks / photosphere), `docs/gearing-code-1to1.md`, `docs/gearing-html-iterate-prompt.md`.

```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  ASCII PROMPT  ·  GEARING HTML ← HOLOGRAM TEMPLATES          ║
║  Restyle pixels · keep LACE_CONTRACTS 1:1 · [GAP] · NO src/ · NO CDN     ║
╚══════════════════════════════════════════════════════════════════════════╝

  YOU ARE restyling docs/shadow-clock-gearing.html to MATCH the three
  hologram clockwork-view templates.
  YOU ARE NOT inventing emission or Core types from cubes/orbs/arrows.
  YOU ARE NOT editing contracts-*.js unless a key id must rename (avoid).
  YOU ARE keeping every existing contract key selectable.


                    ┌────────────── VISUAL AUTHORITY ──────────────┐
                    │  hologram/clockwork-view-lattice.jpg           │
                    │  hologram/clockwork-view-crossing.png          │
                    │  hologram/clockwork-view-traces.jpg            │
                    │  hologram/visual-primitives.md §2.5 stacks     │
                    └──────────────────┬───────────────────────────┘
                                       │ look like THIS
                                       v
                    ┌────────────── ANTI-MODEL (current failure) ──┐
                    │  Flat black void + plastic extruded gears      │
                    │  Edge-on CAD rim · empty stage · toy axle      │
                    └──────────────────┬───────────────────────────┘
                                       │ leave this look
                                       v
                         RESTYLE HTML → QA vs templates → STOP


┌──────────────────────────────────────────────────────────────────────────┐
│ CLIPBOARD                                                                │
│ laceArc ← restyle WebGPU gearing to hologram lattice/crossing/traces     │
│ law: templates own pixels · keys own contracts · cubes ≠ Core rows       │
├──────────────────────────────────────────────────────────────────────────┤
│ [clip]                                                                   │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE A — GATE                                                  │     │
│   │                                                                │     │
│   │  [ ] Human named designated editor (or this prompt is the ask) │     │
│   │  [ ] fetch/ff origin/main                                      │     │
│   │  [ ] Open the three template files and keep them visible       │     │
│   │  [ ] Surface = RENDERER HTML only this tick (no shaft JS)      │     │
│   │  [ ] Read hologram/README: cubes/orbs/arrows ≠ Graphic D       │     │
│   │                                                                │     │
│   │  Fail any ⇒ STOP.                                              │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE B — SUCCESS = LOOKS LIKE THE TEMPLATES                    │     │
│   │                                                                │     │
│   │  S1  Dark circuit / grid floor (lattice), not empty void       │     │
│   │  S2  Stations read as glass cubes or stacked cells with        │     │
│   │      emissive cores (orange/amber heat) — not plastic teeth    │     │
│   │  S3  A / B / C visually distinct (hue + core) and ALL visible  │     │
│   │      in one phone frame (¾ or photosphere stack — not edge-on) │     │
│   │  S4  Mesh AB/BC/CA = crossing beams / arcs (cyan/white),       │     │
│   │      not invisible “contact bands” only                        │     │
│   │  S5  Hands lace = bright cord/trace through/near axle,         │     │
│   │      kin to gold/white flow in traces template                 │     │
│   │  S6  After ticks / selection: residual floor traces readable   │     │
│   │      (traces template) — optional fade, not a second store     │     │
│   │  S7  Neon-noir palette: black ground · orange cores ·          │     │
│   │      cyan links · green clusters — match templates             │     │
│   │  S8  Every LACE_CONTRACTS key still reachable (HUD/chips/pick) │     │
│   │  S9  WebGPU or blocking error; no 2D primary; no CDN/Three     │     │
│   │  S10 Layer III + [GAP] copy intact (may stay collapsed)        │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE C — KEY → VISUAL MAPPING (keep ids; change mesh only)     │     │
│   │                                                                │     │
│   │   contract key     │ template kin                              │     │
│   │   ─────────────────┼───────────────────────────────────────── │     │
│   │   A / B / C        │ glass cube stations (or stacked cells)    │     │
│   │                    │ cores tinted: A cool·B amber·C green      │     │
│   │   axle             │ shared shaft / spine through stations     │     │
│   │   AB BC CA         │ crossing beams / arcs between stations    │     │
│   │   t0–t6            │ floor cells / altitude marks (stack)      │     │
│   │   A1–A9, B1–B5,    │ secondary cubes OR green cluster orbs     │     │
│   │   C1–C10           │ along that train — chip pick OK if crowded│     │
│   │   E1 E2 R1         │ escapement marks on floor/spine           │     │
│   │   X1–X6            │ audit stamps (dim / warning hue)          │     │
│   │   Hands lace       │ bright cord / gold-white flow             │     │
│   │                                                                │     │
│   │   FORBID: new contract keys invented for decoration            │     │
│   │   FORBID: renaming keys without updating 1:1 map both sides    │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE D — STACK / PHOTOSPHERE (from visual-primitives §2.5)     │     │
│   │                                                                │     │
│   │   Gears are NOT a flat 2D cog train.                           │     │
│   │   Draw stacked 3D surface cells (photosphere-like).            │     │
│   │   H→C→W flatten is schematic only — hologram is the stack.     │     │
│   │                                                                │     │
│   │   Unlawful: granules as owned edge-objects; dynamo as Core;    │     │
│   │   flux tube as POINTER emission; three stores for three scales │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE E — IMPLEMENTATION BOUNDS                                 │     │
│   │                                                                │     │
│   │   · Single HTML file + existing relative contracts-*.js        │     │
│   │   · WebGPU only (procedural meshes / lines / instancing OK)    │     │
│   │   · No Three.js · no CDN · no npm · no build · no fetch bodies │     │
│   │   · Do not load the JPG/PNG as the primary clock authority;    │     │
│   │     they are LOOK REFERENCES. Optional tiny reference strip    │     │
│   │     in the UI is OK if relative paths only.                    │     │
│   │   · Plastic gear extrusion may be deleted or demoted to debug  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE F — 1:1 / LAW CHECK                                       │     │
│   │                                                                │     │
│   │  [ ] Update docs/gearing-code-1to1.md PAGE F if pick/visual    │     │
│   │      binding changed (same keys; note hologram skin)           │     │
│   │  [ ] hologram/README respected: no cube→Graphic D types        │     │
│   │  [ ] No emit_pointer UI · no Core row kinds                    │     │
│   │  [ ] Mobile: S1–S7 still pass at ~390px width                  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE G — QA AGAINST TEMPLATES                                  │     │
│   │                                                                │     │
│   │  Side-by-side (or flip):                                       │     │
│   │    lattice.jpg  ↔  page floor + cubes                          │     │
│   │    crossing.png ↔  page mesh beams when AB/BC/CA active        │     │
│   │    traces.jpg   ↔  page residual traces / green clusters       │     │
│   │                                                                │     │
│   │  If a stranger would say “toy gears on black,” you failed.     │     │
│   │  If they say “that neon lattice clock,” you passed.            │     │
│   │                                                                │     │
│   │  Device: ____________________________________________________  │     │
│   │  githack SHA link: __________________________________________  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE H — OUT OF SCOPE                                          │     │
│   │                                                                │     │
│   │   · Filling pointer-emission                                   │     │
│   │   · src/ / crates / crates.io                                  │     │
│   │   · Editing stake clipboards                                   │     │
│   │   · Making hologram images Core source of record               │     │
│   │     (graphics A–D remain Hands authority)                      │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE X — CROSS-CUT                                             │     │
│   │                                                                │     │
│   │  temptation              │ deadbolt                            │     │
│   │  ───────────────────────┼──────────────────────────────────── │     │
│   │  keep plastic gears     │ FORBID as primary look               │     │
│   │  Three.js for glass     │ FORBID — WebGPU only                 │     │
│   │  cube = WORD row        │ FORBID — hologram README             │     │
│   │  beam = POINTER emit    │ [GAP] — beam is mesh view only       │     │
│   │  flatten to 2D strip    │ stacks §2.5 — hologram is 3D         │     │
│   │                                                                │     │
│   │  PRODUCT: restyled docs/shadow-clock-gearing.html              │     │
│   │           + 1:1 note if picks changed                          │     │
│   │  AFTER: STOP · commit/push only if human asks                  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│ [clip]                                                                   │
└──────────────────────────────────────────────────────────────────────────┘


  FLOW (ASCII)

       fetch/ff main
              │
              v
         open lattice + crossing + traces (+ visual-primitives §2.5)
              │
              v
         PAGE A gate → restyle HTML toward S1–S10
              │
              v
         PAGE F 1:1 note → PAGE G template QA
              │
              v
         STOP


  FORBIDDEN
    invent emission · src/ · CDN · Three.js · fetch contracts
    plastic-gear primary look · cube as Core type · new orphan keys
    paraphrase away the three templates


  STEWARD TEST
    shoe lace in hands, or no.
    If the page does not rhyme with lattice/crossing/traces, redo pixels.
    If a cube starts writing Graphic D, you left the shoe.


╔══════════════════════════════════════════════════════════════════════════╗
║  END ASCII PROMPT — restyle to hologram templates; keep keys; [GAP]      ║
╚══════════════════════════════════════════════════════════════════════════╝
```
