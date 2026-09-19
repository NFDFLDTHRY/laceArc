# Clock (Layer III)

Shadow holder machine. **Not Core. Not Graphic D. Cubes are not WORD rows.** The source of record is [the four graphics](../graphics/README.md); nothing on this shelf amends them.

Moved here in defrag pass 3. Pass plans shelved in restructure phase 5.

## Shadow prose

| File | Role |
|---|---|
| [shadow-clock-hologram.md](shadow-clock-hologram.md) | `{A,B,C}` gearing diagram |
| [shadow-clock-agent-brief.md](shadow-clock-agent-brief.md) | Standing brief |
| [shadow-clock-gear-contracts.md](shadow-clock-gear-contracts.md) | Mesh contracts |
| [shadow-clock-gear-contracts-second-reading.md](shadow-clock-gear-contracts-second-reading.md) | `[PROPOSAL]` counter-reading |
| [gearing-code-1to1.md](gearing-code-1to1.md) | Visual key ↔ code unit; the 47-name bijection |
| [philosophy-map.md](philosophy-map.md) | HCC-A / Cup / Water as gears |
| [agent-interaction-model.md](agent-interaction-model.md) | Elephant clock `[PROPOSAL]` |
| [system-mathematical-model.md](system-mathematical-model.md) | Hands L + Shadow H; emission `[GAP]` |

## Gear manifests

One per gear. Each links its own executed passes.

| File | Gear |
|---|---|
| [hcc-a-systems-manifest.md](hcc-a-systems-manifest.md) | **H** — the driver. Stations H1–H11, phases S0–S7 |
| [coffee-cup-systems-manifest.md](coffee-cup-systems-manifest.md) | **C** — event time. Stages C1–C5 + loop |
| [water-systems-manifest.md](water-systems-manifest.md) | **W** — the clutch. OBS ≠ POINTER |
| [train-h-c-w-systems-manifest.md](train-h-c-w-systems-manifest.md) | **H × C × W** composition |
| [hcc-a-mechanisms-plan.md](hcc-a-mechanisms-plan.md) | `[PLAN]` ASCII systems map of HCC-A internals |

## Viewer app (Layer III)

Read-only projection. It shows the strand; it never decides what goes on it.

| File | Role |
|---|---|
| [lace-projection.html](lace-projection.html) | Merged Layer III viewer: WebGPU 3D + D1 time. Glyphs ≠ schema |
| [hcc-a-projection.html](hcc-a-projection.html) | HCC-A systems-manifest projection |
| [projection-bake-worker.js](projection-bake-worker.js) | Bake worker |
| [sw.js](sw.js) · [manifest.webmanifest](manifest.webmanifest) | Service worker and web manifest — installable. `file://` will not install |
| [wasm/](wasm/README.md) | wasm notes; the wasm32 sysroot is still missing |

**Install (PWA):** `https://raw.githack.com/NFDFLDTHRY/laceArc/main/docs/clock/lace-projection.html?i=1`
**Audit a tick:** SHA-pinned raw.githack. Do not Add-to-Home-Screen a SHA URL.

## Provenance

| | |
|---|---|
| [passes/](passes/README.md) | **Executed pass plans** — 30 across six campaigns |

**A new pass plan goes in [`passes/`](passes/README.md), and the product it serves links it once the pass is executed.** A pass plan nobody links is provenance nobody can find.

## Deliberately elsewhere

- frozen viewer: [`docs/shadow-clock-gearing.html`](../shadow-clock-gearing.html)
- shafts: [`docs/gearing/`](../gearing/README.md)
- templates: [`docs/hologram/`](../hologram/README.md)

POINTER emission stays `[GAP]`. No `src/`.
