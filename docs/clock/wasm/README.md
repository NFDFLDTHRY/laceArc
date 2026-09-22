# Projection bake: current JavaScript path and historical wasm attempt

**Layer III, not Core.** Status checked by source inspection on 2026-09-20 at `0b2012bb221184f684f672f63260c6b1ecd9427b`. No toolchain installation, compilation, browser, or device test was performed for this update.

## Current loading path

[The viewer](../lace-projection.html) loads [projection-bake-worker.js](../projection-bake-worker.js), a JavaScript vertex bake that transfers its buffers and explicitly returns `wasm: false`. If worker startup fails, the viewer tries a fetched Blob worker and then its inline JavaScript bake. No `.wasm` module is loaded by this path.

The worker reports whether SharedArrayBuffer is exposed in an isolated context; that flag does not change this bake into shared-memory or threaded Wasm execution. Hosting isolation and actual device capability require separate observations.

## Historical attempt (2026-09-18)

The original note arrived in commit `5f11c129710626f4c7c5ae15cc8f9828ae89b8fe` with the projection worker. It reported `rustc` present and the `wasm32-unknown-unknown` libcore unavailable in that session, deferred `rustup target add`, and proposed SIMD Wasm as a later drop. Those are the earlier session's environment report and intended work, not a current toolchain measurement or a completed implementation.

## Current Core target court

**Compilation target: TARGET UNDECIDED.** The historical wasm32 projection-bake attempt above is not a target decision, and source/toolchain support for wasm64 does not select wasm64.

- `wasm64-unknown-unknown` remains a **conditional Tier-3 / higher-burden candidate**. Current target requirements do not establish the >4 GiB simultaneously resident Lace requirement that would justify selecting it, and actual toolchain/browser/device proof remains separate.
- `wasm32-unknown-unknown` remains a **lawful lower-burden candidate**, but current evidence does not prove it sufficient for the eventual supported domain, carrier, working set, or device path.
- permanent logical Lace positions are not the same thing as Rust/Wasm native pointer width;
- total persistent Lace history is not required by current law to equal simultaneously resident Wasm linear memory;
- source-specified capability is not executed build/browser/device evidence.

The current viewer path remains JavaScript and reports `wasm: false`; no `.wasm` module is loaded here. Core also remains gated by human acceptance of [pointer emission](../../pointer-emission.md) and every task-specific premise. This documentation does not choose a target, perform a build/probe, or implement the proposed [production distribution model](../../kit/distribution-model.md).

Current source versus the pinned development build is recorded at the [clock shelf](../README.md#source-evidence-and-release-status-2026-09-20). This documentation update changes neither runtime nor release metadata.
