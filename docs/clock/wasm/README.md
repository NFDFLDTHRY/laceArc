# First-party projection bake wasm

**Not Core.** Vertex bake only.

`rustc` is here. `wasm32-unknown-unknown` **libcore is not installed**.
`rustup target add` is not this pass (network + not a Lace crate).

Until that target exists, CPU work is `docs/clock/projection-bake-worker.js`
(Workers, transferable buffers, SIMD wasm = next drop).

SharedArrayBuffer only if the host sends COOP/COEP (`crossOriginIsolated`).
githack usually does not.
