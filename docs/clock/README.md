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

Existing Layer III software replays the fixed eleven-row D1 specimen and displays conceptual-reference interpretations. It does not ingest a strand or decide when to emit a POINTER.

| File | Role |
|---|---|
| [lace-projection.html](lace-projection.html) | JavaScript + WGSL WebGPU viewer of D1 time; glyphs ≠ schema |
| [hcc-a-projection.html](hcc-a-projection.html) | Canvas 2D projection of the HCC-A analysis; persistent conceptual-reference qualification is present in source, browser layout remains unobserved |
| [projection-bake-worker.js](projection-bake-worker.js) | JavaScript vertex bake with transferable buffers; returns `wasm: false` |
| [sw.js](sw.js) · [manifest.webmanifest](manifest.webmanifest) | Development PWA shell; historical Android installation evidence is recorded in the deployment policy |
| [wasm/](wasm/README.md) | Historical wasm32 bake attempt, current JavaScript path, and separate proposed wasm64 Core target |
| [Runtime regression checks](tests/README.md) | Built-in Node checks of the current Layer III sources; distinct browser/device completion steps |

### Source, evidence, and release status (2026-09-20)

**Current scope:** [pass 3](../plans/repo-update-pass-3-evidence.md) was published at `335429cc0352c2e93c8009c6db57dd977ec783bb`. [Pass 4](../plans/repo-update-pass-4-evidence.md) adds local lifecycle, page→SW freshness, fallback-control and install-event repairs. Its [runtime fixture](tests/README.md) passes all 74 synthetic checks; the same fixture passes 51 and fails 23 against the published pass 3 base. Earlier worker recovery, material, diagnostic and release guards remain passing. These results do not establish browser, GPU, touch, offline or device behavior; the capability limitations are recorded in the pass receipt.

The ordinary HCC-A and nostd viewer qualifications were published at `5e40a20`; AB/BC/CA binding prose was corrected at `bad05ca`. The HCC-A page has a persistent source qualification even though its Markdown parser selects headings and table rows. Its narrow/wide layout remains unobserved. The frozen gearing viewer still awaits the designated-editor condition; its prepared patch remains **NOT_APPLIED** ([pass 2 §10](../plans/repo-update-pass-2-evidence.md#10-prepared-frozen-renderer-edit)). These source corrections do not close that separate renderer gate or establish browser-visible results.

The service worker still precaches only the two icons and uses network-first loading for HTML and JavaScript. Other same-origin resources are cached on use, except explicit no-store requests, which now bypass CacheStorage reads and writes. This prevents an old cached release pointer from satisfying a fresh release check. It is not the complete offline production carrier proposed in the [distribution model](../kit/distribution-model.md). The viewer labels successful WebNN context creation at that strength, with no inference claim. Its audit checks HTTP success and a parsed manifest object; icons remain explicitly unverified.

During GPU unavailability, playback is explicitly paused/unavailable while manual scrubbing still updates the phase and reference image. The prior play intent is retained through failure; scrubbing chooses paused intent. A successful submission restores the control. This is source/synthetic behavior, not a new observation of rendered recovery or installation.

[LATEST.json](LATEST.json) still names **ixp2 at `3b619929182e98ccaa348a2fc696b98c2e416a2e`**. The [pinned ixp2 development URL](https://rawcdn.githack.com/NFDFLDTHRY/laceArc/3b619929182e98ccaa348a2fc696b98c2e416a2e/docs/clock/lace-projection.html) and its relative resources remain at that commit; a change on main does not update them. This update does not promote a release or verify that URL on a device. The [ixp2 pass receipt](passes/projection-interaction-pass-2-plan.md) records an executed change, but its observation is the preceding ixp1 image with a lone green volume. Its required ixp2 combined view remains an unverified success criterion in that receipt.

**Install (PWA):** repo law is [`docs/kit/githack-pwa-deploy.md`](../kit/githack-pwa-deploy.md).

```
https://rawcdn.githack.com/NFDFLDTHRY/laceArc/<FULL_COMMIT_SHA>/docs/clock/lace-projection.html
```

The manifest and service-worker scope are relative to that pinned path. A new commit is a new URL. The current-source Update action resolves only a pointer with the exact app identity/path and a full SHA, with 2500 ms per provider including body reads; exhaustion retains the pin and permits retry. Selection is available without SW registration; a same pin reports that limitation. Installed identity, cache retention, and successful rendering require their own observations. The repository's current branch and its release pointer are distinct.

**Preview / audit:** `raw.githack.com` against `main` or a SHA is fine to *look*. Do not Add-to-Home-Screen those.

## Provenance

| | |
|---|---|
| [passes/](passes/README.md) | **60 historical executed pass records**: 30 tabled at the door and 30 linked through [projection iterations](passes/projection-iterations.md) |

**A new pass plan goes in [`passes/`](passes/README.md), and the product it serves links it once the pass is executed.** A pass plan nobody links is provenance nobody can find.

**Historical quiet-door #6:** [ASCII reading](quiet-door-6-ascii.md) and [receipt](quiet-door-6-receipt.md), recorded CLOSED 6/6 at `f568275`. The ASCII header links all six pass plans. These are dated readings of the clock entrance, not current runtime or installation evidence; apply the current conceptual-reference qualification above to their retained imagery.

## Deliberately elsewhere

- frozen viewer: [`docs/shadow-clock-gearing.html`](../shadow-clock-gearing.html)
- shafts: [`docs/gearing/`](../gearing/README.md)
- templates: [`docs/hologram/`](../hologram/README.md)

POINTER emission stays `[GAP]`. No `src/`.
