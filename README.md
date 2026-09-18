# laceArc

Put a shoe lace in your hands or get out of here.

Lace is one continuously growing strand. Every word occurrence is more wire. Each word has a persistent star. Meaning is not stored. Only structure, sequence, and participation.

This repository is the home of that model. It is not a graph database, not a lexicon, and not an implementation yet.

## The rule

The entire mechanism is one rule, said two ways:

**Geometry**

> Input word arrives. Route new wire through that word’s star. Continue.

**Storage**

> Input arrives. Append a new section to the Lace. Use pointers to participate in what already exists.

Same rule. Same strand. 3D stars and N-dimensional participation are readings of that line, not extra stores.

## What this repo contains

| Path | Role |
|---|---|
| [docs/graphics/](docs/graphics/) | Canonical source graphics. These define the project. |
| [docs/systems-manifest.md](docs/systems-manifest.md) | Contract map extracted from those graphics: pieces, couplings, seams, open gaps. |
| [docs/graphics-close-reading.md](docs/graphics-close-reading.md) | Row-level second pass over panel D1. What the eleven rows close, and three gaps they open. |
| [docs/agent-interaction-model.md](docs/agent-interaction-model.md) | [PROPOSAL] How several agents mesh: the elephant clock. Stewards only, never Core concurrency. |
| [docs/shadow-clock-gear-contracts-second-reading.md](docs/shadow-clock-gear-contracts-second-reading.md) | [PROPOSAL] Bounded counter-reading of the gear contracts. Five findings outstanding; one absorbed by the primary. |
| [docs/law-why-these-documents.md](docs/law-why-these-documents.md) | Repo law: why the five adjacent documents were staked, and the only allowed implementation posture (Rust `no_std`, zero foreign deps). |
| [docs/staking-the-workspace.md](docs/staking-the-workspace.md) | Exact Hands vs Shadow staking ASCII (companion to law-why). |
| [docs/shadow-clock-hologram.md](docs/shadow-clock-hologram.md) | Holder machine {A,B,C} clock hologram; gears traced to contract boundary. Shadow only. |
| [docs/shadow-clock-agent-brief.md](docs/shadow-clock-agent-brief.md) | Standing brief for agents: define gear interaction contracts and walk all sources. |
| [docs/shadow-clock-gear-contracts.md](docs/shadow-clock-gear-contracts.md) | Walk artifact: every mesh contracted, stamped, cited. Shadow only. |
| [docs/system-mathematical-model.md](docs/system-mathematical-model.md) | Dual-universe formal model: Hands Contract I + Shadow {A,B,C}; emission sealed [GAP]. |
| [docs/shadow-clock-gearing.html](docs/shadow-clock-gearing.html) | Interactive Layer-III projection: {A,B,C} as physical clock gearing + mesh contracts — **WebGPU 3D required** (Chrome Android flags; no 2D primary view; raw.githack). |
| [docs/gearing/](docs/gearing/) | Shared-interactive Layer-III contract data (`window.LACE_CONTRACTS` additive scripts). |
| [docs/gearing/CLAIMS.md](docs/gearing/CLAIMS.md) | Multi-agent shaft claim/release protocol for Shadow gearing (Layer III). |
| [docs/gearing/RESYNC.md](docs/gearing/RESYNC.md) | Full-repo resync signal (FIRED/CLEAR); Layer III only. |
| [docs/clip-and-five-refs-prompt.md](docs/clip-and-five-refs-prompt.md) | Agent prompt: clipboard-looking mapping sheets while walking the five stake references. |
| [docs/kauffman-clipboard-prompt.md](docs/kauffman-clipboard-prompt.md) | Agent prompt: clipboard mapping for Kauffman *Knots and Physics* 4ed (dokumen.pub slug / ISBN 9814383007). |
| [docs/rowlands-clipboard-prompt.md](docs/rowlands-clipboard-prompt.md) | Agent prompt: ASCII clipboard for Rowlands *Zero to Infinity* (Series on Knots and Everything). |
| [docs/xiao-clipboard-prompt.md](docs/xiao-clipboard-prompt.md) | Agent prompt: ASCII clipboard for Xiao & Zhu *Foundations of Large Language Models*. |
| [docs/petersen-zech-clipboard-prompt.md](docs/petersen-zech-clipboard-prompt.md) | Agent prompt: ASCII clipboard for Petersen & Zech *Mathematical theory of deep learning*. |
| [docs/agentscope-clipboard-prompt.md](docs/agentscope-clipboard-prompt.md) | Agent prompt: ASCII clipboard for Bi et al. AgentScope (Diagnosing with Insights). |
| [docs/rust-nostd-crate-map-prompt.md](docs/rust-nostd-crate-map-prompt.md) | Agent prompt: ASCII map of Hands → Rust `#![no_std]` first-party crates (intuitive tree; no `src/` yet). |
| [docs/rust-nostd-branch-contracts-prompt.md](docs/rust-nostd-branch-contracts-prompt.md) | Agent prompt: next plan — per-branch `#![no_std]` contracts on top of the crate map (plan only; no `src/`). |
| [docs/gearing-code-1to1-prompt.md](docs/gearing-code-1to1-prompt.md) | Agent prompt: force 1:1 between WebGPU gearing visual keys and code units (Layer III; emission [GAP]). |
| [docs/pointer-emission-prompt.md](docs/pointer-emission-prompt.md) | Agent prompt: draft `docs/pointer-emission.md` as unanswered questions only (DRAFT; human accepts later; no `src/`). |
| [docs/gearing-html-iterate-prompt.md](docs/gearing-html-iterate-prompt.md) | Agent prompt: iterate WebGPU gearing HTML / shafts under claim law, 1:1 keys, Layer III. |
| [docs/gearing-html-fix-prompt.md](docs/gearing-html-fix-prompt.md) | Agent prompt: designated-editor FIX pass for WebGPU gearing HTML (mobile HUD/camera/chrome). |
| [docs/shadow-clock-shared-interactive-prompt.md](docs/shadow-clock-shared-interactive-prompt.md) | Prompt that defined the shared-interactive gearing architecture (Layer III). |
| [docs/system-mathematical-model.md](docs/system-mathematical-model.md) | Two-algebra model: Hands L and Shadow H. Emission remains [GAP]. |
| [LICENSE](LICENSE) | Apache-2.0 |
| [AGENTS.md](AGENTS.md) | Standing orders for any Grok / Grok Bot / Grok Build session in this tree. |
| [CLAUDE.md](CLAUDE.md) | Pointer that loads those standing orders into Claude Code sessions. |
| [.claude/](.claude/) | Session setup for Claude Code on the web: startup hook and repository checks. No runtime. |
| [docs/grok-bot-profile.md](docs/grok-bot-profile.md) | Name, job, ASCII description, staking explanation, and first task to paste into Grok Bot. |
| [docs/references.md](docs/references.md) | Adjacent books. Citations only. PDFs are not in this public repo. |
| [docs/reason-model-map.md](docs/reason-model-map.md) | Physical shoe lace as reason model. How five adjacent works may and may not touch Core. |
| [docs/clipboard-five-stakes.md](docs/clipboard-five-stakes.md) | Five-page KEEP/FORBID clipboard of the stake texts. Emission still [GAP]. |
| [docs/kauffman-4ed-clipboard.md](docs/kauffman-4ed-clipboard.md) | Kauffman 4ed hitch / diagram / Reidemeister / slide / virtual sheets. Not Core. |
| [docs/rowlands-zero-to-infinity-clipboard.md](docs/rowlands-zero-to-infinity-clipboard.md) | Rowlands empty-start / no extra rooms / rewrite name-clash sheets. Not Core. |
| [docs/xiao-zhu-foundations-clipboard.md](docs/xiao-zhu-foundations-clipboard.md) | Xiao–Zhu arrival-order / intern / MASK / embed / next-token sheets. Not Core. |
| [docs/agentscope-clipboard.md](docs/agentscope-clipboard.md) | AgentScope taxonomy for the HOLDER. ReAG stays off Graphic D. Not Core. |
| [docs/rust-nostd-crate-map.md](docs/rust-nostd-crate-map.md) | Plan map of first-party `#![no_std]` doors. No `src/`. Emission sealed. |
| [docs/gearing-code-1to1.md](docs/gearing-code-1to1.md) | 47 visual keys ↔ planned Shadow units. Chip-only drift noted. Not Core. |
| [docs/pointer-emission.md](docs/pointer-emission.md) | DRAFT questions only. Not accepted. Emission remains [GAP]. |
| [docs/philosophy-map.md](docs/philosophy-map.md) | HCC-A, Coffee Cup, Water as the clock-gearbox. Clusters by tick. Not Core rows. |
| [docs/hologram/](docs/hologram/) | Hologram touches (PR / Story Defense). Shadow. Not Graphic E. |
| [docs/history-recovered-2026-09-18.md](docs/history-recovered-2026-09-18.md) | Recovered June–September history against current law. Rejected walkers stay rejected. |
| [docs/history-recovered-pass-2-2026-09-18.md](docs/history-recovered-pass-2-2026-09-18.md) | Pass 2: No Containers, scheduler, card-number mismatch, C machine. Not Core. |
| [docs/history-recovered-pass-3-2026-09-18.md](docs/history-recovered-pass-3-2026-09-18.md) | Pass 3: graphics counterparts, 7 Sep pointer-is-lace, P02 EE≠trace, codec not raw. Not Core. |
| [docs/history-recovered-pass-4-2026-09-18.md](docs/history-recovered-pass-4-2026-09-18.md) | Pass 4 full extract: ShoeLacey pin, SL-D-0002, conservation coarseness, walker source. Not Core. |
| [docs/history-recovered-pass-4-sit.md](docs/history-recovered-pass-4-sit.md) | Pass 4 steward sit-map (ShoeLacey ≠ laceArc). Not Core. |
| [docs/history-recovered-pass-5-2026-09-18.md](docs/history-recovered-pass-5-2026-09-18.md) | Pass 5 extract dump: surface branches, Aug 15 ruling, P02 v0.1→v0.1.1, Pixel probe. Not Core. |
| [docs/history-recovered-pass-6-plan.md](docs/history-recovered-pass-6-plan.md) | Pass 6 plan only (not executed): surfaces, commits beyond heads, opens taxonomy. Not Core. |
| [docs/history-recovered-pass-5-sit.md](docs/history-recovered-pass-5-sit.md) | Pass 5 sit-map against current law. Closed loop stays forbidden. |

There is no `src/` on purpose. Code that appears before the pointer-emission rule is locked will invent a second machine.

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

The graphics show WORD entries, POINTER entries, and pointer-to-pointer chains. They do not specify:

- when a POINTER is written
- pointer arity beyond the `ref_A` / `ref_B` example
- whether adjacent WORD rows are already a relation without a POINTER
- tokenization (`PIE` vs `pie`, phrase vs word)
- document / conversation / provenance as entry types
- a read or query operator

The pointer-emission rule *is* dimensionality. Until it is written down as part of Core, do not implement “higher-D touch” as a separate layer.

## Status

Model repository. Apache-2.0. No runtime.

Same strand. More dimensions. A richer universe.
