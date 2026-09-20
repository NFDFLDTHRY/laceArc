# The probe boundary ladder — another agent's search order, re-topped for this tree

**Status:** `[PROPOSAL]` · a reading note, the way the tree files other agents' output (C06: *data to analyze; grants no authority*). **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Source:** the human, 2026-09-19 22:31 PT, relaying a DeepSeek answer to *"what context would set Fable up for success, using the repo's template and policies."* Its core, paraphrased: walk the layer stack top-down; at each adjacent boundary run the same fixed probe suite on both sides and compare all observables; the first boundary where the lower layer violates the upper's contract is the divergence; the failure signature picks the smallest bridge; rerun; keep it if the contract is restored; if the top boundary already diverges, no lower bridge can fix it; if a lower one diverges, add no machinery above it.

## 1. Adopted

| Adopted | Why it fits | Where it lands |
|---|---|---|
| **Same suite, both sides, compare observables** | the human's V14 rule; *observed behaviour of a build is the floor* | every probe's plan |
| **Stop at the first divergence; add nothing above an unfound one** | a budget rule and a law rule at once | the probe campaign's order (§2) |
| **The order of the walk** | the pre-gate probes had no order | §2 |

## 2. The ladder, re-topped (the top is not POSIX)

| Rung | Upper contract | Lower layer | Same-suite probe | Expected observation | Already named as |
|---|---|---|---|---|---|
| 0 | **the Hands + the law** | the execution model | X8 soft diff; E3 fences over σ | agreement; no new atom | [execution model](reduction-pass-2-execution-model.md) X8 · environment E9 |
| 1 | the execution model | the compiled `.wasm` | parse sections; replay D1 | **absence**: empty import section; exact export set; D1 byte-identical | **G2 · G3 · G4** |
| 2 | the module | the JS host (sheet H) | install; call `continue` on the specimen; write garbage into the view range | `L` unchanged by host writes outside the hopper; exports behave as the cards say | **P-INST** · R5 |
| 3 | the JS host / Web API | Chrome (memory64, isolation, OPFS) | instantiate an `i64` memory; grow to failure; SW header synthesis; OPFS append + reload | the ceiling in bytes; `crossOriginIsolated` true or not; byte-identical read-back | **P-64a · P-64b · P-COI · P-CAR** |
| 4 | Chrome | Android 17 / Mali (Pixel 9a and family) | the same kernel for wasm32 and wasm64; WebGPU adapter with and without flags | the bounds-check ratio; whether the picture needs flags or Advanced Protection off | **P-64c** · T11 |
| 5 | the device | the installed, offline app | airplane mode; every screen; reload | zero network requests; the same `L` after reload | **G5** · P-INST |

**First divergence wins the budget.** Run rung 1 before rung 3; if rung 3's P-64b fails at 4 GiB, R2 is live and rung 4 is not worth a dollar yet.

## 3. Corrected before adoption

| DeepSeek said | This tree says |
|---|---|
| top boundary = *reference contract / POSIX expectation* | the top is the Hands and the law; **Core has no effects by design** — no imports, no stdout / errno / file system / network / signals / threads. At rung 1 the probe suite is **inverted**: the expected observation is absence, and any effect that appears is a fence violation (F-S3), not a divergence to bridge |
| *the required bridge is the smallest mechanism that restores the contract* | **the smallest mechanism that restores the contract and passes the fences; otherwise refuse the contract, do not bridge it.** A shim, emulation layer, scheduler, capability proxy or mapping layer is Layer III machinery and is exactly what failed campaigns here manufactured; a "scheduler or async adapter" that becomes a second clock inside Contract I is a breach (S6 `[X]`), and a "capability proxy" at rung 2 is sheet H's trust row (R5), a ruling |
| *the diagram is a search procedure, not a diagnosis* | agreed for the diagram-prompt (it maps; it does not define) — with one exception the ladder cannot see: **σ is not a divergence between layers; it is an absence at the top that only the human fills (R7).** A ladder run to completion would report *no divergence* and the app would still not exist |

## 4. What this note does not do

It does not run a probe, choose a bridge, or move any item off the [rulings brief](reduction-pass-5-rulings-brief.md). It orders work that was already specified.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Check the lace before the shoe, the shoe before the floor, the floor before you blame the road. Emission remains `[GAP]`.
