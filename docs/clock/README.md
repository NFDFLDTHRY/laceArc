# Clock (Layer III)

Conceptual-reference analyses and Layer III visualizations. HCC-A, Coffee Cup, and Water are conceptual reference documents; their former classification as required holder machinery is superseded by the [human correction of 2026-09-20](../law-why-these-documents.md#conceptual-reference-documents). Gear and holder labels in the retained analyses describe interpretations, not required runtime components. **Not Core. Not Graphic D. Cubes are not WORD rows.** The source of record is [the four graphics](../graphics/README.md).

Moved here in defrag pass 3. Pass plans shelved in restructure phase 5.

## Shadow prose

| File | Role |
|---|---|
| [shadow-clock-hologram.md](shadow-clock-hologram.md) | `{A,B,C}` gearing diagram |
| [shadow-clock-agent-brief.md](shadow-clock-agent-brief.md) | Standing brief |
| [shadow-clock-gear-contracts.md](shadow-clock-gear-contracts.md) | Mesh contracts |
| [shadow-clock-gear-contracts-second-reading.md](shadow-clock-gear-contracts-second-reading.md) | `[PROPOSAL]` counter-reading |
| [gearing-code-1to1.md](gearing-code-1to1.md) | Visual key ↔ code unit; the 47-name bijection |
| [philosophy-map.md](philosophy-map.md) | Three conceptual references; earlier required-gear interpretation superseded |
| [agent-interaction-model.md](agent-interaction-model.md) | Elephant clock `[PROPOSAL]` |
| [system-mathematical-model.md](system-mathematical-model.md) | Hands L + Shadow H; emission `[GAP]` |

## Conceptual-reference manifests

These retain analyses of source concepts and the earlier gear interpretation. Each links its reading passes; those passes do not establish required machinery.

| File | Gear |
|---|---|
| [hcc-a-systems-manifest.md](hcc-a-systems-manifest.md) | Cognition model; H1–H11 and S0–S7 label its analysis |
| [coffee-cup-systems-manifest.md](coffee-cup-systems-manifest.md) | Causality and intervention; five event stages |
| [water-systems-manifest.md](water-systems-manifest.md) | Communication and shared reference; OBS ≠ POINTER |
| [train-h-c-w-systems-manifest.md](train-h-c-w-systems-manifest.md) | Earlier combined interpretation; no required H × C × W subsystem |
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

**Install (PWA):** repo law is [`docs/kit/githack-pwa-deploy.md`](../kit/githack-pwa-deploy.md).

```
https://rawcdn.githack.com/NFDFLDTHRY/laceArc/<FULL_COMMIT_SHA>/docs/clock/lace-projection.html
```

That origin+path owns the manifest, service worker, and storage. A new commit is a new URL. Update = open the new SHA and install that.

**Preview / audit:** `raw.githack.com` against `main` or a SHA is fine to *look*. Do not Add-to-Home-Screen those.

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
