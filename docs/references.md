# Reference and clipboard sources

These works are **not** the source of record for the Lace substrate. The substrate source of record is `docs/graphics/`, then `docs/systems-manifest.md`.

They are source material for the **laceArc laboratory**. Their clipboards may expose behavioral goals, possible machinery, algorithms, mathematics, failure modes, and physical/platform constraints. Do not import those directly into Core because a passage feels similar to wire, star, strand, token, or graph; route them through laboratory evidence and testing instead.

**Current machine-construction routing — Behavioral Read Devices Pass 5/6:** the five research sources now also feed a tested optional machine-operator library **above Lace**, without becoming Core; see the [source-machine atlas](plans/math-execution-behavioral-read-devices-pass-5-source-machine-atlas.md), [machine factorization](plans/math-execution-behavioral-read-devices-pass-5-machine-factorization.md), and [`math-execution-model.md` S12](math-execution-model.md#s12--behavioral-machine-construction-factorization). The behavioral-goal sources have current mathematical blueprints: [HCC-A](plans/math-execution-behavioral-read-devices-pass-5-hcc-device-blueprint.md), [Coffee Cup](plans/math-execution-behavioral-read-devices-pass-5-coffee-cup-device-blueprint.md), and [Water](plans/math-execution-behavioral-read-devices-pass-5-water-device-blueprint.md). These are mathematical device realizations, not code/runtime selection.

Do not commit PDF binaries to this public repository.

## Holdings (local / project workspace only)

Keep copies off `main`. Suggested local names (gitignored):

- `refs/local/kauffman-knots-and-physics-4ed.pdf`
- `refs/local/rowlands-zero-to-infinity.pdf`
- `refs/local/xiao-zhu-foundations-of-llms.pdf`
- `refs/local/petersen-zech-mathematical-theory-of-deep-learning.pdf`
- `refs/local/bi-et-al-agentscope-2609.02371.pdf`

An earlier Grok workspace used `artifacts/refs/`. These are workspace conventions, not guarantees about a fresh checkout. Record the actual attachment path and source identity in each reading receipt; keep PDF bytes outside Git.

## Catalog

### Knot series (metaphor neighborhood)

#### 1. Louis H. Kauffman — *Knots and Physics*, 4th edition

- Series on Knots and Everything, Vol. 53
- World Scientific, 2013
- ISBN 978-981-4383-00-4 / 978-981-4383-01-1

Lace talks in wire, over/under, threading, and projection. That is metaphor kinship, not a license to implement a knot polynomial.

#### 2. Peter Rowlands — *Zero to Infinity: The Foundations of Physics*

- Series on Knots and Everything, Vol. 41
- World Scientific, 2007
- ISBN 978-981-270-914-1

Same series nexus. Not Rowlands’ physics stack.

### Language and learning (contrast neighborhood)

#### 3. Tong Xiao and Jingbo Zhu — *Foundations of Large Language Models*

- arXiv:2501.09223v2 [cs.CL], 15 Jun 2025 / dated June 17, 2025 in the text
- NLP Lab, Northeastern University & NiuTrans Research
- Selection from https://github.com/NiuTrans/NLPBook
- License printed in the PDF: Creative Commons Attribution-NonCommercial 4.0
- https://arxiv.org/abs/2501.09223

Pre-training, generation, prompting, alignment, inference. Adjacent because Lace ingests words. Contrast: this book treats language as modeled knowledge; Lace forbids stored meaning. Do not import tokenizers, embeddings, or prompt stacks as Core.

CC BY-NC: even though arXiv hosts it, do not re-license it under this repo’s Apache-2.0. Cite and link.

#### 4. Philipp Petersen and Jakob Zech — *Mathematical theory of deep learning*

- arXiv:2407.18384v4 [cs.LG], 15 Jan 2026 / dated January 16, 2026 in the text
- Universität Wien; Universität Heidelberg
- https://arxiv.org/abs/2407.18384

Approximation, ReLU calculus, depth. Adjacent if someone asks whether a star is a network. It is not. Do not replace the 1D array with a trained model.

### Agent diagnosis (steward neighborhood)

#### 5. Jiayi Bi, Yanjie Gao, Yuanmin Xie, Liqun Li, Tianyin Xu, Fan Yang, Mao Yang — *Diagnosing with Insights: Structured Analysis of Agent Failures via Behavioral Abstractions*

- arXiv:2609.02371v1 [cs.AI], 2 Sep 2026
- Tsinghua; Microsoft Research; Microsoft; UIUC
- Tool name in the paper: AGENTSCOPE
- https://arxiv.org/abs/2609.02371

Reasoning-Action graphs and neural invariants for agent failure localization. Adjacent to the LaceArc *Grok Bot* (how a steward fails), not to Lace storage. Do not add ReAG or a failure taxonomy as a second store beside the append-only line.

### Conceptual references: cognition, causality, and communication

Workspace attachments. Not committed as binaries. Map: `docs/clock/philosophy-map.md`.
The [human correction and clarification](law-why-these-documents.md#conceptual-reference-documents) classifies documents 6–8 as conceptual reference / behavioral-goal sources. Their existing source clipboards are [HCC-A](clock/hcc-a-systems-manifest.md), [Coffee Cup](clock/coffee-cup-systems-manifest.md), and [Water](clock/water-systems-manifest.md), with the [H×C×W comparison](clock/train-h-c-w-systems-manifest.md) composing candidate correspondences. Earlier H/C/W gear assignments are not automatically required holder machinery or runtime dependencies, but the source-described machinery remains legitimate material for laboratory testing.

#### 6. HCC-A v1.0 — Human Cognitive Compiler Architecture

Conceptual model of how perception and existing interpretations contribute to story, meaning, emotion, identity, and behavior. Its compiler, ledger, and engines are concepts within that model. They do not become required LaceArc components, and ledger merge/re-index/delete is not a Graphic D operation.

#### 7. The Coffee Cup — A Walk-Through of How You Actually See

Conceptual reference for event causality and intervention: conditions, release, trajectory, impact, and aftermath, including how aftermath changes future conditions. These stages do not prescribe a Lace runtime clock or append gate.

#### 8. Where the Water Is Loud + Dual Proofing Systems

Conceptual reference for communication and shared footing. The story, Proof Ledger, River model, and proposed interface examine pointable observations, differences, unknowns, and pressure. OBS / DELTA / UNK / INVALID are concepts in that reference, not required LaceArc machinery or POINTER emission. **Current target qualification:** later human law supersedes the raw source's blocking-UNK / lexical-INVALID behavior: UNK is a nonblocking expected-evidence shape, and INVALID requires later evidence-backed refutation.

#### 8b. Model of Perceived Reality and Story Defense  (hologram touch)

Image: `docs/hologram/perceived-reality-story-defense.png` (attachment `13960.png`).  
Overlap of two PR fields; why a true claim can fail to land; story defense; curation of exposure. Diagnoses the holder. Not Graphic E. Not array rows.

#### 8c. 3D clockwork views (suggested projection)

`docs/hologram/clockwork-view-lattice.jpg`, `clockwork-view-crossing.png`, `clockwork-view-traces.jpg`.  
Layer III camera on the lace clock. Floor = projected line. Orbs = star-as-seen. Arrows = drawn participation, not emission.

#### 8d. Visual primitives (worldline / streamlines)

`docs/hologram/visual-primitives.md`. Life-line kin; CTC forbidden; tubes = routes; torus = holder view only. ASTRA screenshots are shape catalog, not authority.

### History (ancestry, not foundation)

#### 9. Lace memory recovery — 18 September 2026

Workspace attachment `Lace_Memory_Recovery_2026-09-18.md`. Map: `docs/history/history-recovered-2026-09-18.md`.

June–September conversation extract. Records rejected walkers, invented guards, fidelity mirrors, and the 26 August placement of HCC-A / Coffee Cup / Water as ancestry. Does not amend law. Does not revive code.

#### 10. Lace memory recovery pass 2 — 18 September 2026

Workspace attachment `Lace_Memory_Recovery_Pass_2_2026-09-18.md`. Map: `docs/history/history-recovered-pass-2-2026-09-18.md`.

Direct reads of ten historical documents. No Containers, eleven-rule scheduler (later allocation correction), card-number mismatch, rejected continuation slot, C-machine false attribution. Does not reverse 29 August. Does not amend law.

#### 11. Lace memory recovery pass 3 — 18 September 2026

Workspace attachment `Lace_Memory_Recovery_Pass_3_2026-09-18.md`. Map: `docs/history/history-recovered-pass-3-2026-09-18.md`.

Visual counterparts of Graphics A–D (composition match, byte mismatch). User 7 Sep: 1D array; pointer is more lace. P02 v0.3: same derivations ≠ same recorded history. Codec roundtrip is normalized, not raw. DESIGN.md guesses and known-bad. Cat/cat-1 fragment only. Does not settle emission. Does not replace graphics.

#### 12. Lace memory recovery pass 4 — 18 September 2026

Workspace attachment `Lace_Memory_Recovery_Pass_4_2026-09-18.md`. Map: `docs/history/history-recovered-pass-4-2026-09-18.md`.

Historical repo NFDFLDTHRY/ShoeLacey at `cda3bb34`. SL-D-0002 degree-sloped scheduling (`4:3:2:1` illustrative). SL-C-0002 coarseness loss. Three opens. Walker source intern+guard. XOR probe not contact law. Continuation-slot reject. Not laceArc law.

#### 13. Lace memory recovery pass 5 — 18 September 2026

Workspace attachment `Lace_Memory_Recovery_Pass_5_2026-09-18.md`. Dump: `docs/history/history-recovered-pass-5-2026-09-18.md`. Sit-map: `docs/history/history-recovered-pass-5-sit.md`.

Ten ShoeLacey branch heads. Aug 15 owner-ruling (connect-the-ends is historical; closed loop stays forbidden). Aug 17 context pass (not accepted). P02 v0.1→v0.1.1 (binary sufficiency withdrawn). WELD-1 / scoped UNK remain proposed. Pixel rust probe is not a Lace test. Cat still Issue 43 / OPEN-SEARCH.


## Series frame (from Rowlands front matter)

Knots as a meeting place for apparently separate ideas. That is the only series claim laceArc needs.

## Rule for readers and bots

If a sentence in any of these works would change WORD, POINTER, star, or the governing rule, discard it for Core and keep it as reading notes. `docs/pointer-emission.md` exists as a reconciled but unaccepted draft (WORD landing, root, RootTouch, binary `Join`, finite grounding, the human-ruled sampling architecture); the open Core-adjacent question is **RM-A retain-when**. It will not be closed from these volumes, nor from HCC-A / Coffee Cup / Water OBS format, nor by this catalog: only the four graphics, an explicit human ruling, and the human's in-repo acceptance of the exact draft can move it. *(Wording reconciled by [reference audit pass 3](plans/reference-audit-pass-3-plan.md), 2026-09-22; the older sentence read "remains a `[GAP]` until written".)*

Five-page KEEP/FORBID clip of stakes 1–5: `docs/clipboards/clipboard-five-stakes.md`. Projection of `docs/reason-model-map.md`. Not Core.

#### History — sixth and seventh extraction records

The [sixth extraction plan](history/history-recovered-pass-6-plan.md) records execution and points to its [recovered material](history/history-recovered-pass-6-2026-09-18.md) and [sit-note](history/history-recovered-pass-6-sit.md). The [seventh extraction](history/history-recovered-pass-7-2026-09-18.md) has a separate [evidence capture](history/history-recovered-pass-7-evidence-2026-09-18.json). Current history routing lives in the [history index](history/README.md). Located, read, accepted and proven remain different claims. These records do not amend staking or settle pointer emission.

## Technology reference shelves

These are the platform/toolchain face of the laboratory. Their clipboards expose executable mechanisms, target facts, and physical limits that may enable or falsify implementation candidates. They are not additional canonical graphics, admitted Core dependencies, or a source of missing Lace semantics. The [clipboard index](clipboards/README.md) distinguishes executed readings from pending work.

| Reference family | Current route | Scope |
|---|---|---|
| WebAssembly | [Wasm Spec 3 clipboard](clipboards/wasm-spec-3-clipboard.md) | Target/runtime capability reading; Alignment Restart Pass 5 verdict is **TARGET UNDECIDED**. Neither wasm32 nor wasm64 supplies encoding, emission, carrier law, acceptance, or a build by citation |
| WebGPU | [WebGPU clipboard](clipboards/webgpu-clipboard.md) | Host/GPU projection reading; device execution requires its own observation |
| WGSL | [WGSL clipboard](clipboards/wgsl-clipboard.md) | Shader-language reading; not a Lace operator |
| WebNN | [WebNN clipboard](clipboards/webnn-clipboard.md) | Host neural-network reference; proposed roles retain their source/acceptance limits |
| Rust target/toolchain | [rust-target clipboard](clipboards/rust-target-clipboard.md) | Completed staking/mapping records and current attachment queue; toolchain rulings and builds remain separate |
