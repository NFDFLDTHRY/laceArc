# laceArc

Put a shoe lace in your hands or get out of here.

Lace is one continuously growing strand. Every word occurrence is more wire. Each word has a persistent star. Meaning is not stored. Only structure, sequence, and participation.

This repository is the home of that model. Lace Core is not implemented. Layer III viewers, coordination scripts, and documentation checks exist alongside the model.

## The rule

The entire mechanism is one rule, said two ways:

**Geometry**

> Input word arrives. Route new wire through that word’s star. Continue.

**Storage**

> Input arrives. Append a new section to the Lace. Use pointers to participate in what already exists.

Same rule. Same strand. 3D stars and N-dimensional participation are readings of that line, not extra stores.

## What this repo contains

Shelves (defrag pass 1–4). Hands stay at `docs/` root. Do not treat a prompt, clipboard, clock cube, plan, or recovery as Graphic D.

| Shelf | Path | What it is |
|---|---|---|
| The court | [docs/](docs/README.md) | Everything at the `docs/` root, and which of it is Hands |
| Hands | [docs/graphics/](docs/graphics/) | Four canonical PNGs, the source of record. The manifest and close-reading derive from them; law governs work; reason maps are interpretations |
| Retention/materialization `[GAP]` / implementation gate | [docs/pointer-emission.md](docs/pointer-emission.md) | **Reconciled DRAFT, not accepted.** LAND/root/RootTouch/binary Join plus the human-ruled sampling architecture are current; the exact sampling-derived retention/materialization rule remains `[GAP]` |
| Shadow prose | [docs/clock/](docs/clock/README.md) | Conceptual clock readings, proposed contracts and math. H/C/W interpretations do not impose holder components |
| Shadow view | [gearing](docs/shadow-clock-gearing.html), [HCC](docs/clock/hcc-a-projection.html), [Lace specimen](docs/clock/lace-projection.html), [no_std plan](docs/hologram/nostd-pipeline.html) | Four Layer III viewers; current-source, pinned release and device observations are separate states |
| Coord | [docs/coord/](docs/coord/README.md) | Doc stations + gear claim umbrella (Layer III) |
| History | [docs/history/](docs/history/README.md) | Recoveries. Do not revive walkers |
| Prompts | [docs/prompts/](docs/prompts/README.md) | Agent tickets. Not law |
| Clipboards | [docs/clipboards/](docs/clipboards/README.md) | Five stake-text families plus Wasm, WebGPU, WGSL, WebNN and rust-target source mappings |
| Kit | [docs/kit/](docs/kit/README.md) | Steward controls. PWA install law: [githack-pwa-deploy.md](docs/kit/githack-pwa-deploy.md) |
| Plans | [docs/plans/](docs/plans/README.md) | Plans, proposals, executed findings and receipts, each with its own status. Arrival in Git is not execution or acceptance |

| Path | Role |
|---|---|
| [docs/graphics/](docs/graphics/) | Canonical source graphics. These define the project. |
| [docs/systems-manifest.md](docs/systems-manifest.md) | Contract map extracted from those graphics: pieces, couplings, seams, open gaps. |
| [docs/graphics-close-reading.md](docs/graphics-close-reading.md) | Row-level second pass over panel D1. What the eleven rows close, and three gaps they open. |
| [docs/clock/agent-interaction-model.md](docs/clock/agent-interaction-model.md) | [PROPOSAL] How several agents mesh: the elephant clock. Stewards only, never Core concurrency. |
| [docs/clock/shadow-clock-gear-contracts-second-reading.md](docs/clock/shadow-clock-gear-contracts-second-reading.md) | [PROPOSAL] Bounded counter-reading of the gear contracts. Five findings outstanding; one absorbed by the primary. |
| [docs/law-why-these-documents.md](docs/law-why-these-documents.md) | Repo law: why the five adjacent documents were staked, and the only allowed implementation posture (Rust `no_std`, zero foreign deps). |
| [docs/staking-the-workspace.md](docs/staking-the-workspace.md) | Exact Hands vs Shadow staking ASCII (companion to law-why). |
| [docs/clock/shadow-clock-hologram.md](docs/clock/shadow-clock-hologram.md) | Recorded {A,B,C} clock interpretation; conceptual-reference classification governs its use. |
| [docs/clock/shadow-clock-agent-brief.md](docs/clock/shadow-clock-agent-brief.md) | Source-reading brief for the conceptual clock interpretation; no required holder machinery follows. |
| [docs/clock/shadow-clock-gear-contracts.md](docs/clock/shadow-clock-gear-contracts.md) | Walk artifact: every mesh contracted, stamped, cited. Shadow only. |
| [docs/clock/system-mathematical-model.md](docs/clock/system-mathematical-model.md) | Dual-universe formal model separating Hands from conceptual references. Its older emission status is dated; current constructor/selection status is in the manifest, pointer draft, and math-execution model. |
| [docs/shadow-clock-gearing.html](docs/shadow-clock-gearing.html) | Interactive Layer-III projection: {A,B,C} as physical clock gearing + mesh contracts — **WebGPU 3D required**. Preview on raw.githack. **Install** only via [GitHack PWA policy](docs/kit/githack-pwa-deploy.md). |
| [docs/gearing/](docs/gearing/) | Shared-interactive Layer-III contract data (`window.LACE_CONTRACTS` additive scripts). |
| [docs/coord/](docs/coord/) | Multi-agent coordination umbrella: doc stations + `coord.sh`; gear shafts still via claim.sh. |
| [docs/prompts/clip-and-five-refs-prompt.md](docs/prompts/clip-and-five-refs-prompt.md) | Agent prompt: clipboard-looking mapping sheets while walking the five stake references. |
| [docs/prompts/kauffman-clipboard-prompt.md](docs/prompts/kauffman-clipboard-prompt.md) | Agent prompt: clipboard mapping for Kauffman *Knots and Physics* 4ed (dokumen.pub slug / ISBN 9814383007). |
| [docs/prompts/rowlands-clipboard-prompt.md](docs/prompts/rowlands-clipboard-prompt.md) | Agent prompt: ASCII clipboard for Rowlands *Zero to Infinity* (Series on Knots and Everything). |
| [docs/prompts/xiao-clipboard-prompt.md](docs/prompts/xiao-clipboard-prompt.md) | Agent prompt: ASCII clipboard for Xiao & Zhu *Foundations of Large Language Models*. |
| [docs/prompts/petersen-zech-clipboard-prompt.md](docs/prompts/petersen-zech-clipboard-prompt.md) | Agent prompt: ASCII clipboard for Petersen & Zech *Mathematical theory of deep learning*. |
| [docs/prompts/agentscope-clipboard-prompt.md](docs/prompts/agentscope-clipboard-prompt.md) | Agent prompt: ASCII clipboard for Bi et al. AgentScope (Diagnosing with Insights). |
| [docs/prompts/rust-nostd-crate-map-prompt.md](docs/prompts/rust-nostd-crate-map-prompt.md) | Agent prompt: ASCII map of Hands → Rust `#![no_std]` first-party crates (intuitive tree; no `src/` yet). |
| [docs/prompts/rust-nostd-branch-contracts-prompt.md](docs/prompts/rust-nostd-branch-contracts-prompt.md) | Agent prompt: next plan — per-branch `#![no_std]` contracts on top of the crate map (plan only; no `src/`). |
| [docs/prompts/gearing-code-1to1-prompt.md](docs/prompts/gearing-code-1to1-prompt.md) | Agent prompt: force 1:1 between WebGPU gearing visual keys and code units (Layer III; emission [GAP]). |
| [docs/prompts/pointer-emission-prompt.md](docs/prompts/pointer-emission-prompt.md) | Historical outline task with current preservation instructions: retain the accumulated draft and grounded constraints; acceptance remains absent. |
| [docs/prompts/gearing-html-iterate-prompt.md](docs/prompts/gearing-html-iterate-prompt.md) | Agent prompt: iterate WebGPU gearing HTML / shafts under claim law, 1:1 keys, Layer III. |
| [docs/prompts/gearing-html-fix-prompt.md](docs/prompts/gearing-html-fix-prompt.md) | Agent prompt: designated-editor FIX pass for WebGPU gearing HTML (mobile HUD/camera/chrome). |
| [docs/prompts/gearing-html-hologram-restyle-prompt.md](docs/prompts/gearing-html-hologram-restyle-prompt.md) | Agent prompt: restyle WebGPU gearing HTML to hologram lattice/crossing/traces templates (keep keys; [GAP]). |
| [docs/prompts/coherence-audit-prompt.md](docs/prompts/coherence-audit-prompt.md) | Agent prompt: standing coherence audit (update docs as you go; emission [GAP]). |
| [docs/coherence-audit-log.md](docs/coherence-audit-log.md) | Append-only coherence audit tick log. |
| [docs/prompts/shadow-clock-shared-interactive-prompt.md](docs/prompts/shadow-clock-shared-interactive-prompt.md) | Prompt that defined the shared-interactive gearing architecture (Layer III). |
| [LICENSE](LICENSE) | Apache-2.0 |
| [AGENTS.md](AGENTS.md) | Standing orders for any Grok / Grok Bot / Grok Build session in this tree. |
| [CLAUDE.md](CLAUDE.md) | Pointer that loads those standing orders into Claude Code sessions. |
| [.claude/](.claude/) | Session setup for Claude Code on the web: startup hook and repository checks. No runtime. |
| [docs/references.md](docs/references.md) | Source catalog for behavioral-goal, research, and platform/toolchain material. Clipboards feed the lab; source citation alone does not enter Core. PDFs are not in this public repo. |
| [docs/reason-model-map.md](docs/reason-model-map.md) | Physical shoe lace as reason model plus source-boundary map. Research machinery may enter the lab without becoming Core. |
| [docs/clipboards/clipboard-five-stakes.md](docs/clipboards/clipboard-five-stakes.md) | Five-page KEEP/FORBID clipboard of the stake texts. Those adjacent sources do not supply Lace's sampling/retention machinery; current human rulings separately establish sampling as discovery, with retention/materialization still open. |
| [docs/clipboards/kauffman-4ed-clipboard.md](docs/clipboards/kauffman-4ed-clipboard.md) | Kauffman 4ed hitch / diagram / Reidemeister / slide / virtual sheets. Not Core. |
| [docs/clipboards/rowlands-zero-to-infinity-clipboard.md](docs/clipboards/rowlands-zero-to-infinity-clipboard.md) | Rowlands empty-start / no extra rooms / rewrite name-clash sheets. Not Core. |
| [docs/clipboards/xiao-zhu-foundations-clipboard.md](docs/clipboards/xiao-zhu-foundations-clipboard.md) | Xiao–Zhu arrival-order / intern / MASK / embed / next-token sheets. Not Core. |
| [docs/clipboards/agentscope-clipboard.md](docs/clipboards/agentscope-clipboard.md) | AgentScope taxonomy for the HOLDER. ReAG stays off Graphic D. Not Core. |
| [docs/clock/gearing-code-1to1.md](docs/clock/gearing-code-1to1.md) | 47 visual keys ↔ planned Shadow units; earlier picker observations are dated. AB/BC/CA binding descriptions were corrected in `bad05ca`; [pass 2](docs/plans/repo-update-pass-2-evidence.md#8-execution-dispositions) records the source checks, with browser/picker behavior still unverified. |
| [docs/pointer-emission.md](docs/pointer-emission.md) | **Reconciled DRAFT, not accepted.** Binary Join/current growth and sampling architecture are recorded; exact sampling-derived retention/materialization remains `[GAP]`. |
| [docs/clock/philosophy-map.md](docs/clock/philosophy-map.md) | Behavioral-goal source readings for HCC-A, Coffee Cup, and Water. Their source-described machinery remains candidate lab machinery; the required-gearbox interpretation is superseded by the [human correction](docs/law-why-these-documents.md#conceptual-reference-documents). |
| [docs/hologram/](docs/hologram/) | Hologram touches (PR / Story Defense). Shadow. Not Graphic E. |

There is no `src/` on purpose. The constructor prose is reconciled, but **reconciled is not accepted** and exact sampling-derived retention/materialization remains unresolved. Core code still waits on explicit human acceptance, task authorization, and every premise required by that task.

When code is ever allowed it is only Rust `#![no_std]`, with zero external dependencies. Every dependency is a first-party branch that does one mathematically stated and proven task. See [docs/law-why-these-documents.md](docs/law-why-these-documents.md).

## The four graphics

They are four presentations of one mechanism, not four subsystems.

1. [From Words to Worlds](docs/graphics/from-words-to-worlds.png) — growth story: empty strand → words → stars → documents → a single 3D object.
2. [Mechanisms in 3D](docs/graphics/mechanisms-in-3d.png) — how the wire behaves: routing, repetition, dictionary-as-route, touch, no collapse.
3. [N-Dimensional Relationships](docs/graphics/n-dimensional-relationships.png) — what a dimension adds (independent participation, not new meaning) and what a 2D graph hides.
4. [Data Structure: One 1D Array](docs/graphics/data-structure-1d-array.png) — the only store: an append-only array of WORD and POINTER entries. 3D views are projections.

Graphic 4 is storage. Graphics 1–3 are the same growth rule seen as topology.

## What is not Lace

These are named failures in the source graphics:

- A database lookup: word → stored entry
- A single flat edge between two nodes
- A stored definition (`PIE = "a dessert..."`)
- Semantic collapse of many passes into one network
- N-dimensional storage beside the line
- Cuts, resets, rewrites, deletions

A 2D node-edge picture may be drawn. It is a shadow. It must not write back.

## Contract seams

From the systems manifest:

1. **Lace Core** — one contract: strand + WORD + POINTER + star-as-formation + sequence-as-route + later participation + no second store.
2. **Arrival surface** — thin adapter: words in, appends out. Becomes a breach if it keeps parses, documents, or a lexicon of its own.
3. **Projection** — read-only views. Not a peer module.

Stars, dictionary routes, documents, touches, and dimensions do not separate into services. They are formations of the same line.

## Open before any implementation

The current reconciled draft now settles the physical growth/participation mechanics:

- every successful arrival appends a WORD occurrence
- unseen WORD becomes its root
- seen occurrence remains a WORD and RootTouches that root
- POINTER is binary `Join(a,b)` over two selected ordered earlier same-line WORD/POINTER points
- repeated Join grounds finite selected samples
- POINTER-to-POINTER is ordinary recursive participation
- adjacency alone is not a relation trigger

What remains open includes:

- **exact sampling-derived retention/materialization**
- tokenization / word equality (`PIE` vs `pie`, phrase vs word)
- document / conversation / provenance boundaries and labels
- a read/query/traversal operator
- concurrency and other independent implementation premises

The dot-to-dot N-D representation is a projection of recursive Join participation, not a separate “higher-D touch” store.

**Implementation is still blocked.** `docs/pointer-emission.md` is reconciled but not human-accepted, retention/materialization remains `[GAP]`, and task-specific proof/authorization requirements remain.

## Status

Model repository with Layer III viewers and steward tooling. Apache-2.0. No Lace Core implementation. Current work: [repository update pass 4](docs/plans/repo-update-pass-4-plan.md), executed locally; its [evidence record](docs/plans/repo-update-pass-4-evidence.md#10-execution-reanchor-and-choices) separates reproduced failures, local repairs, synthetic checks and pending client observations. HCC-A, Coffee Cup and Water remain conceptual references.

[Pass 3](docs/plans/repo-update-pass-3-evidence.md) was published through `335429c`, in eight station commits covering thirty paths. Its local-handoff receipt is preserved; the later [publication record](docs/plans/repo-update-pass-4-evidence.md#1-published-baseline-and-arrival) identifies those commits. Pass4 does not promote the pinned release. The re-supplied [rustc book matches A1](docs/clipboards/rust-target-clipboard.md#repository-update-pass-4--a1-re-sighting); the newly supplied [Cargo A4 mapping](docs/clipboards/rust-target-clipboard.md#repository-update-pass-4--a4-cargo-source-mapping) records crate-list syntax and source/lockfile requirements at source strength, with builds and artifact obligations still unverified.

[Pass 2](docs/plans/repo-update-pass-2-evidence.md#8-execution-dispositions) was published through `e14b13c`, including ordinary HCC/nostd source qualifications in `5e40a20` and the binding-description correction above. Its receipt preserves the earlier local handoff. Frozen gearing, browser/device observations and release promotion remain separate pending work; the pinned ixp2 release has not received those main-branch repairs. [Pass 1](docs/plans/repo-update-pass-1-evidence.md) remains the earlier branch/content and custody record.

Same strand. More dimensions. A richer universe.
