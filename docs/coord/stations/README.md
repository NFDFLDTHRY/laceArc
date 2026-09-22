# Station files

One file per doc station, written by [`../coord.sh`](../coord.sh) on claim, release and refresh. Read the live state with `./docs/coord/coord.sh status`. **Do not edit by hand** — a hand edit is overwritten by the next claim.

`OWNS` in these files is a *description*. The authoritative path→station map is the `RULES` table inside [`../coord.sh`](../coord.sh); change the table first, then the description. Claim `coord` before either.

| Station file | Owns, in one line |
|---|---|
| [clipboards.station](clipboards.station) | `docs/clipboards/**` — the research and technical reference shelf: ten campaigns (the five stake texts — AgentScope, Kauffman, Petersen & Zech, Rowlands, Xiao & Zhu — plus WebAssembly 3.0, WebGPU, WGSL, WebNN and the rustc / Cargo toolchain shelf), each with its KEEP/FORBID clipboard, mechanisms register, ASCII machinery and pass plans; the door is [`docs/clipboards/README.md`](../../clipboards/README.md). The behavioral-goal clipboards (HCC-A, Coffee Cup, Water) live under `docs/clock/` and are hologram's |
| [prompts.station](prompts.station) | `docs/prompts/**` — agent tickets |
| [maps.station](maps.station) | reason-model, atomic map, coherence log, `docs/plans/**` |
| [history.station](history.station) | `docs/history/**` — recoveries |
| [hologram.station](hologram.station) | `docs/hologram/**` and `docs/clock/**` — Shadow images and prose |
| [renderer.station](renderer.station) | the three Layer III viewers |
| [kit.station](kit.station) | `docs/kit/**` and `.claude/**` — steward controls and hooks |
| [law.station](law.station) | standing orders, the laws, the manifest, the root README |
| [graphics.station](graphics.station) | `docs/graphics/**` and `docs/graphics-close-reading.md` — Hands A–D |
| [gearing-meta.station](gearing-meta.station) | `docs/gearing/` prose and scripts, **not** `contracts-*.js` |
| [coord.station](coord.station) | `docs/coord/**` — this umbrella |

Gear shafts have no file here. Their state is [`../../gearing/claims/`](../../gearing/claims/README.md), owned per shaft by `gear:<shaft>`.

Layer III coordination only. Not Core. POINTER emission stays `[GAP]`.
