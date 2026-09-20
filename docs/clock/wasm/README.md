# Projection bake: current JavaScript path and historical wasm attempt

**Layer III, not Core.** Status checked by source inspection on 2026-09-20 at `0b2012bb221184f684f672f63260c6b1ecd9427b`. No toolchain installation, compilation, browser, or device test was performed for this update.

## Current loading path

[The viewer](../lace-projection.html) loads [projection-bake-worker.js](../projection-bake-worker.js), a JavaScript vertex bake that transfers its buffers and explicitly returns `wasm: false`. If worker startup fails, the viewer tries a fetched Blob worker and then its inline JavaScript bake. No `.wasm` module is loaded by this path.

The worker reports whether SharedArrayBuffer is exposed in an isolated context; that flag does not change this bake into shared-memory or threaded Wasm execution. Hosting isolation and actual device capability require separate observations.

## Historical attempt (2026-09-18)

The original note arrived in commit `5f11c129710626f4c7c5ae15cc8f9828ae89b8fe` with the projection worker. It reported `rustc` present and the `wasm32-unknown-unknown` libcore unavailable in that session, deferred `rustup target add`, and proposed SIMD Wasm as a later drop. Those are the earlier session's environment report and intended work, not a current toolchain measurement or a completed implementation.

## Separate Core target

The repository's proposed Core targets `wasm64-unknown-unknown`, as recorded in [the context pass](../../prompts/context-pass.md#2-where-it-stands-the-gate). That target is separate from the historical wasm32 projection-bake attempt. Core remains gated by human acceptance of [pointer emission](../../pointer-emission.md); the JavaScript viewer, worker, and development service worker do not satisfy that gate or implement the proposed [production distribution model](../../kit/distribution-model.md).

Current source versus the pinned development build is recorded at the [clock shelf](../README.md#source-evidence-and-release-status-2026-09-20). This documentation update changes neither runtime nor release metadata.
