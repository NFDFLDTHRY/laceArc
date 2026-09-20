# WebNN CRD 2026-09-10 — ASCII SOURCE MACHINERY (HOST-NN · Wave A P-N1…P-N9 · P4-X)

**Status:** Pass 4 **EXECUTED** · Pass 5 **EXECUTED** (P5-X CONFIRM · Shadow Order Proposal) · Pass 6 **EXECUTED** (**DIAGRAM SOUND WITH OPENS**) · Wave A panels **P-N1…P-N9** 1:1 with **M-N1…M-N9** · P4-X/P5-X/P6-X all **PASS**. Emission `[GAP]`.  
**Source:** *Web Neural Network API* (WebNN) — **W3C Candidate Recommendation Draft, 10 September 2026**. Editors: Ningxin Hu, Dwayne Robinson (et al.).  
**PDF:** `refs/local/webnn-crd-20260910.pdf` → attachment `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` (**353** pp., text layer; **never git-add**). SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`. PDF one-based primary.  
**Algorithms (unchanged):** [`webnn-mechanisms.md`](webnn-mechanisms.md) — **M-N1…M-N9** (cite only; do not rewrite).  
**Admission:** [`webnn-clipboard.md`](webnn-clipboard.md) · plan [`webnn-pass-4-plan.md`](webnn-pass-4-plan.md).  
**Mesh (cite-only):** [`pointer-emission.md`](../pointer-emission.md) = DRAFT/`[GAP]` · [`clock/README.md`](../clock/README.md) · [`hologram/`](../hologram/README.md) · webgpu-* (**HOST/GPU** — different Spec) · wgsl-* (**SHADER-LANG** — different Spec) · wasm-spec-3 (**wasm64** — different layer).  
**Not this file:** Lace Core ASCII = [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**.

```
+======================================================================+
|  HOST-NN / WebNN SPECIAL — W3C CRD 2026-09-10                        |
|  Pass 4 = ASCII SOURCE MACHINERY + Wave A panels P-N1…P-N9 + P4-X.   |
|  Shadow / projection / hologram / host-embed surfaces ONLY.            |
|  Companion to WebGPU (HOST/GPU · P-G*) and WGSL (SHADER-LANG · P-S*).|
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA panels (P-T* / M-T* / FM-W* stay).|
|  NOT WebGPU host/GPU panels (P-G* / M-G* / FM-Wgpu* stay there).     |
|  NOT WGSL shader-lang panels (P-S* / M-S* / FM-Wgsl* stay there).    |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: MLContext / MLGraph / builder as Lace strand / Graphic D.   |
|  FORBID: MLTensor / operands as Lace store / append surface.         |
|  FORBID: dispatch / ML task source as emission / Phi.                |
|  FORBID: operators / op graph as Lace WORD / Core schema.            |
|  FORBID: conflating WebNN with WebGPU Device/Queue, WGSL, or wasm64.  |
|  FORBID: validation as Lace cut · exportToGPU as accept emission.    |
|  KEEP-read-as-host-NN-API: host-NN mechanics for Shadow projection.  |
|  ASCII fences = Spec/host-NN glyphs ONLY; stamps live UNDER fences.  |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Status: Pass 4–6 EXECUTED. Emission [GAP]. Order Proposal = Pass 5. |
+======================================================================+
```

**Opening contract**

1. Models **WebNN CRD host-NN procedures**, not Lace Core.  
2. Companion to `webnn-mechanisms.md` + `webnn-clipboard.md`.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No panel closes it. Shadow / Layer III only.  
5. Inside fences: **Spec/host-NN glyphs only** — no Lace WORD / Graphic D / Φ / strand as WebNN objects; **never the word `POINTER` inside diagram fences**.  
6. Stamps live **under** fences (not inside) and match Wave A M-N* teeth.  
7. KEEP-read-as-host-NN-API for Shadow projection / hologram; FORBID Context/Graph/builder as Lace strand; FORBID Tensor/operands as Lace store; FORBID operators as WORD; FORBID dispatch as emission; FORBID WebNN as WebGPU / WGSL / wasm64.  
8. Hands win; steward refuses store/strand/WORD/emission/WebGPU/WGSL/wasm64 lookalikes.

Law: WebNN = **HOST-NN Shadow only** · MLContext/MLGraph ≠ strand · MLTensor/operands ≠ Lace store · `dispatch` ≠ Φ · operators ≠ WORD · WebNN ≠ WebGPU Device/Queue · WebNN ≠ WGSL · WebNN ≠ wasm64 · validation ≠ Lace cut · `exportToGPU` ≠ accept emission · Hands win · `[GAP]` sealed · **FORBID-as-Core-write** · **NON-binding** · **representation correctness of CRD procedures in ASCII > new art**.

---

## Stamp legend

| Stamp | Meaning (summary) |
|---|---|
| **KEEP-read-as-host-NN-API** | May sit beside Lace as host-NN inference / projection mechanics; does not write Core |
| **KEEP-read** | May sit beside Lace as CRD constructive reading; does not write Core |
| **FORBID-as-Core-write** | Must not become array rewrite / second store / Core operator set / AGENTS rewrite |
| **FORBID-as-Lace-store** | Must not treat MLTensor / operands / constant tensors as Lace 1D strand / append |
| **FORBID-as-Lace-strand** | Must not treat MLGraph / MLContext / device selection / builder as lace cord / Graphic D |
| **FORBID-as-emission-rule** | Must not use `dispatch` / graph execute / ML task source / validation as emission when/arity/adjacency |
| **FORBID-as-Lace-WORD** | Must not treat WebNN operators / op graph as Lace WORD / Core schema language |
| **SILENT-for-Lace-append** | Spec procedure silent for Lace append; do not smuggle as scheduler / Φ gate |
| **PROPOSAL-only** | Lace↔host-NN / `exportToGPU` bridge sketches are proposals only; not accepted law |
| **FORBID-as-WebGPU-conflation** | Must not claim WebNN is / replaces WebGPU Device·Queue·Buffer |
| **FORBID-as-WGSL-conflation** | Must not claim WebNN is / replaces WGSL / shader-lang |
| **FORBID-as-compile-target-swap** | Must not claim WebNN replaces wasm64 / wasm-spec-3 target |
| **FORBID-as-Core** | Must not promote builder/build/export path into Lace Core doors / `src/` birth |
| **FORBID** / **FORBID fill-GAP** / **FORBID accept-GAP** | Must not treat export / calling WebNN as filling or accepting emission `[GAP]` |

---

## SOURCE MACHINERY overview (host-NN side only · Core / Φ / WebGPU / WGSL / wasm64 off-board)

Spine matches **M-N1…M-N9** / **P-N1…P-N9**. Constructive Spec path only. **count=1**.

```
  [navigator.ml / createContext · MLContext] --- M-N1 / P-N1
           |                                    FORBID-as-Lace-strand
           |                                    FORBID-as-WebGPU-conflation
           |                                    KEEP-read-as-host-NN-API
           v
  [MLGraphBuilder · input / constant] ---------- M-N2 / P-N2
           |                                    FORBID-as-Lace-strand
           |                                    FORBID-as-Core-write
           |                                    (D7 cross-link)
           v
  [MLOperand · tensors / descriptors] ---------- M-N3 / P-N3
           |                                    FORBID-as-Lace-store
           v
  [operators · op graph catalogue] ------------- M-N4 / P-N4
           |                                    FORBID-as-Lace-WORD
           |                                    FORBID-as-WGSL-conflation
           v
  [build → MLGraph · at-most-one] -------------- M-N5 / P-N5
           |                                    FORBID-as-Lace-strand
           |                                    (D7 cross-link)
           v
  [dispatch · ML task source] ------------------ M-N6 / P-N6
           |                                    FORBID-as-emission-rule
           |                                    SILENT-for-Lace-append
           |                                    (D7 cross-link)
           +--> [MLTensor · exportToGPU] ----------- M-N7 / P-N7
           |     FORBID-as-Lace-store · PROPOSAL-only
           |     FORBID-as-WebGPU-conflation · FORBID accept-GAP
           +--> [validation · opSupportLimits] ----- M-N8 / P-N8
           |     SILENT-for-Lace-append
           |     FORBID-as-emission-rule
           +--> [security / privacy / §5.3] -------- M-N9 / P-N9
           |     FORBID-as-Core-write
           |     FORBID-as-WebGPU-conflation
           |
           x --> Lace Core / Graphic D / Phi
                 / WebGPU Device·Queue id / WGSL swap / wasm64 ISA swap
                 FORBIDDEN off this board

  Lace Core OFF this board --> docs/systems-manifest-ascii.md
  Phi = [GAP]
  WebNN = HOST-NN Shadow only
        (not WebGPU Device/Queue; not WGSL; not wasm64 compile target)
```
stamp under fence: KEEP-read-as-host-NN-API | Core/Phi/WebGPU/WGSL/wasm64 FORBIDDEN off-board | FM-Webnn6·7·8

**P4-X:** Rigor matrix lives below (this file) and on the clipboard Pass 4 receipt. This file holds **exactly one** canonical SOURCE MACHINERY overview (above). **count=1**.

**P5-O:** Overview count=1 confirmed (Pass 5). Core / Graphic D / Φ / WebGPU Device·Queue / WGSL / wasm64 ISA remain FORBIDDEN off-board.

### Order proposal (Shadow) — SOURCE MACHINERY as shelf hygiene *(short mirror)*

**Full text:** clipboard Pass 5 **P5-P**. **Stamps:** KEEP-read-as-host-NN-API · FORBID-as-Core-write · FORBID-as-Lace-WORD · FORBID-as-Lace-store · FORBID-as-Lace-strand · FORBID-as-emission-rule · FORBID-as-Core · FORBID fill-GAP · FORBID accept-GAP · FORBID-as-WebGPU-conflation · FORBID-as-WGSL-conflation · FORBID-as-compile-target-swap · SILENT-for-Lace-append · PROPOSAL · NON-binding.

This overview **proposes** HOST-NN shelf hygiene beside Shadow projection / hologram — observe → name → diagram-check → stamp-check → list OPENs → decide (commit/release/defer/stop). It is **not** Core, not an AGENTS.md amendment, not Graphic D, not a Φ scheduler, and **NON-binding** on `systems-manifest-ascii.md` / graphics / webgpu-* / wgsl-* / wasm-spec-3. Keep-outs stand: MLGraph≠strand · MLTensor≠store/append · dispatch≠Φ · WebNN≠WORD · WebNN≠WebGPU Device/Queue · WebNN≠WGSL · WebNN≠wasm64 · builder≠Core ctor · exportToGPU≠accept `[GAP]`. Projection/hologram = **Shadow consumers** (cite-only). Recommended reader order (proposal only): clipboard → mechanisms → ascii-machinery → pass plans. Emission `[GAP]`. See clipboard P5-P for stage→hygiene table + P5-X. **FM-Webnn1…Webnn9**.

---

## Wave A panels (1:1 with M-N*)

### P-N1 — Context / device selection (`createContext` · MLContext · backends / `opSupportLimits`)

| Field | Content |
|---|---|
| Mechanism cite | **M-N1** · §7.2 Device Selection PDF **23** · §8.2 `createContext` PDF **28–29** · §8.3 MLContext PDF **29–30** · §8.3.9 `opSupportLimits` PDF **46** · §7.5 `"webnn"` PDF **25** |
| Sighting | Pass 1 PAGE B · Pass 3 M-N1 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-host-NN-API** · **FORBID-as-Lace-strand** · **FORBID-as-Core-write** · **FORBID-as-WebGPU-conflation** |
| PAGE cite | **B** |
| False friend | **FM-Webnn2** · **FM-Webnn6** |
| Projection / hologram | `clock/README.md` · `hologram/` — Shadow host-NN acquire only |
| webgpu | cite-only · `createContext(GPUDevice)` ≠ Device identity (**FM-Webnn6**) |
| wgsl | cite-only · ≠ this shelf |
| wasm64 | cite-only · ≠ compile target (**FM-Webnn8**) |
| Emission | `[GAP]` |
| Implements | M-N1 alg 1–6: SecureContext → `createContext` → UA select → `MLContext` → optional `opSupportLimits` → refuse as Graphic D / Device merge → halt |

```
  SecureContext Window|Worker · "webnn" policy
           |
           v
  navigator.ml                    (§8.1–8.2 PDF 28–29)
           |
           |  createContext(options?)
           |  OR createContext(gpuDevice)
           |  powerPreference / accelerated
           v
  +------------------+
  | MLContext        |  global NN execution state
  |  [[contextType]] |  "default" | "webgpu"
  +--------+---------+
           |
           |  optional opSupportLimits()
           v
  host-NN context handle
  # NOT Graphic D · NOT lace cord · NOT Device identity
```
stamp under fence: KEEP-read-as-host-NN-API | FORBID-as-Lace-strand | FORBID-as-Core-write | FORBID-as-WebGPU-conflation | FM-Webnn2 · FM-Webnn6

---

### P-N2 — Graph builder (MLGraphBuilder ctor · `input` / `constant` · graph construction)

| Field | Content |
|---|---|
| Mechanism cite | **M-N2** · §7.1 Overview PDF **21–22** · §8.9 MLGraphBuilder IDL / ctor / `input`/`constant` PDF **62** |
| Sighting | Pass 1 PAGE C · Pass 2 **D7** · Pass 3 M-N2 |
| Lace stamp | **KEEP-read** · **FORBID-as-Lace-strand** · **FORBID-as-Core-write** · **FORBID-as-Core** |
| PAGE cite | **C** |
| False friend | **FM-Webnn1** · **FM-Webnn9** |
| Projection / hologram | Builder ≠ Graphic D factory; may *cite* host-NN graph construct only |
| webgpu / wgsl / wasm64 | cite-only · ≠ this shelf |
| Emission | `[GAP]` |
| Implements | M-N2 alg 1–6: valid Context → `new MLGraphBuilder` → `input`/`constant`/ops → refuse as Core ctor → halt · **D7** steps 2–3 |

```
  MLContext (from P-N1)
           |
           |  new MLGraphBuilder(context)   (§8.9 PDF 62)
           v
  +---------------------------+
  | MLGraphBuilder            |  graph factory
  |   [[hasBuilt]] = false    |
  +-------------+-------------+
                |
                |  input(name, descriptor)
                |  constant(…)
                |  gemm / relu / … → MLOperand
                v
  graph under construction
  # NOT Lace Core constructor · NOT Graphic D factory
  # D7 cross-link (Pass 2 miniature steps 2–3)
```
stamp under fence: KEEP-read | FORBID-as-Lace-strand | FORBID-as-Core-write | FORBID-as-Core | FM-Webnn1 · FM-Webnn9 | D7

---

### P-N3 — Tensors / operands (MLOperand · create / describe operand graph inputs)

| Field | Content |
|---|---|
| Mechanism cite | **M-N3** · §8.5 MLOperandDescriptor PDF **51–52** · §8.6 Operand PDF **51–53** · §7.1 edges PDF **21–22** · §8.3.2 `createTensor` PDF **35** |
| Sighting | Pass 1 PAGE D · Pass 3 M-N3 |
| Lace stamp | **KEEP-read** · **FORBID-as-Lace-store** |
| PAGE cite | **D** |
| False friend | **FM-Webnn3** |
| Projection / hologram | Operand/tensor ≠ strand/append; may hold inference bytes for Shadow only |
| webgpu / wgsl / wasm64 | cite-only · ≠ GPUBuffer / WGSL types / wasm mem as Lace store |
| Emission | `[GAP]` |
| Implements | M-N3 alg 1–6: descriptor → graph-edge operands → validate-operand → optional `createTensor` → refuse as store → halt |

```
  MLGraphBuilder (from P-N2)
           |
           |  MLOperandDescriptor { dataType, shape }
           |  input / constant / ops → MLOperand edges
           v
  +------------------+
  | MLOperand        |  graph data-flow edge (§7.1)
  +--------+---------+
           |
           |  validate operand belongs to builder
           |  optional: context.createTensor(desc)
           v
  typed graph edges / runtime tensors
  # NOT Lace 1D strand · NOT append surface
```
stamp under fence: KEEP-read | FORBID-as-Lace-store | FM-Webnn3

---

### P-N4 — Operators / op graph (operator catalogue · connect ops into graph)

| Field | Content |
|---|---|
| Mechanism cite | **M-N4** · §7.3 Operators PDF **24–25** · §8.9.5+ normative ops PDF **~68+** · §11 Emulation PDF **295** |
| Sighting | Pass 1 PAGE E · Pass 3 M-N4 |
| Lace stamp | **KEEP-read** · **FORBID-as-Lace-WORD** · **FORBID-as-Core-write** · **FORBID-as-WGSL-conflation** |
| PAGE cite | **E** |
| False friend | **FM-Webnn5** · **FM-Webnn7** |
| Projection / hologram | Op graph ≠ WORD; hologram may *cite* inference ops without becoming schema |
| webgpu | cite-only |
| wgsl | cite-only · operators ≠ shader entry points (**FM-Webnn7**) |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-N4 alg 1–6: choose op → builder method → new `MLOperand` → optional emulation → refuse as WORD/WGSL → halt |

```
  MLGraphBuilder + input MLOperands
           |
           |  builder.gemm / relu / conv2d / …
           |  catalogue §7.3 · normative §8.9.5+
           v
  +------------------+
  | operator node    |  host-NN math / graph node
  +--------+---------+
           |
           |  returns distinct new MLOperand(s)
           |  optional §11 emulation (still host-NN)
           v
  op graph edges
  # NOT Lace WORD · NOT Core schema · NOT WGSL entry
```
stamp under fence: KEEP-read | FORBID-as-Lace-WORD | FORBID-as-Core-write | FORBID-as-WGSL-conflation | FM-Webnn5 · FM-Webnn7

---

### P-N5 — Compilation / build (`build` → MLGraph; at-most-one-graph hygiene)

| Field | Content |
|---|---|
| Mechanism cite | **M-N5** · §7.1 / `build` note PDF **21–22** · §8.4 MLGraph PDF **50** · §8.9.4 `build` PDF **67–68** |
| Sighting | Pass 1 PAGE C · Pass 2 **D7** · Pass 3 M-N5 |
| Lace stamp | **KEEP-read** · **FORBID-as-Lace-strand** · **FORBID-as-Core-write** · **FORBID-as-Core** |
| PAGE cite | **C** |
| False friend | **FM-Webnn1** · **FM-Webnn9** |
| Projection / hologram | Compiled graph ≠ lace cord; Shadow inference artifact only |
| webgpu / wgsl / wasm64 | cite-only · MLGraph ≠ GPU pipeline / WGSL module / wasm module |
| Emission | `[GAP]` |
| Implements | M-N5 alg 1–6: can-build → `build(outputs)` → validate → create immutable `MLGraph` → `[[hasBuilt]]` → refuse as strand → halt · **D7** step 4 |

```
  MLGraphBuilder ([[hasBuilt]] false)
           |
           |  await builder.build(namedOutputs)
           |  (§8.9.4 PDF 67–68)
           v
  +---------------------------+
  | MLGraph                   |  compiled immutable graph
  |   [[context]]             |  at most one per builder
  |   input/output descriptors|
  +-------------+-------------+
                |
                v
  host-NN compiled model
  # NOT lace cord · NOT Graphic D · NOT Core graph
  # D7 cross-link (Pass 2 miniature step 4)
```
stamp under fence: KEEP-read | FORBID-as-Lace-strand | FORBID-as-Core-write | FORBID-as-Core | FM-Webnn1 · FM-Webnn9 | D7

---

### P-N6 — Execution / dispatch (`dispatch` · ML task source · permissions `"webnn"`)

| Field | Content |
|---|---|
| Mechanism cite | **M-N6** · §8.3.1 `dispatch()` PDF **32–33** · §7.4 Task Source PDF **25** · §7.5 `"webnn"` PDF **25** |
| Sighting | Pass 1 PAGE F · Pass 2 **D7** · Pass 3 M-N6 |
| Lace stamp | **KEEP-read** · **FORBID-as-emission-rule** · **SILENT-for-Lace-append** |
| PAGE cite | **F** |
| False friend | **FM-Webnn4** |
| Projection / hologram | dispatch ≠ Φ; may schedule inference without accepting emission |
| webgpu / wgsl / wasm64 | cite-only · dispatch ≠ `queue.submit` / draw / wasm instantiate as emission |
| Emission | `[GAP]` |
| Implements | M-N6 alg 1–6: validate tensors → `dispatch` → enqueue on `[[timeline]]` → no completion signal → refuse as emission → halt · **D7** step 5 |

```
  MLContext + MLGraph + MLNamedTensors
           |
           |  context.dispatch(graph, inputs, outputs)
           |  (§8.3.1 PDF 32–33)
           v
  +---------------------------+
  | schedule on [[timeline]]  |  ML task source
  | return undefined          |  no completion signal
  +-------------+-------------+
                |
                |  later: readTensor (still host-NN)
                v
  host-NN scheduled execution
  # NOT emission when/arity · NOT Phi gate
  # NOT Lace append scheduler
  # D7 cross-link (Pass 2 miniature step 5)
```
stamp under fence: KEEP-read | FORBID-as-emission-rule | SILENT-for-Lace-append | FM-Webnn4 | D7

---

### P-N7 — MLTensor / buffers / exportToGPU (read·write·destroy · GPUBuffer bridge cite)

| Field | Content |
|---|---|
| Mechanism cite | **M-N7** · §8.7–8.8 MLTensor PDF **57–58** · §8.3.2–8.3.3 createTensor PDF **35–36** · read/write PDF **~40–42** · §8.3.8 `exportToGPU` PDF **42–43** |
| Sighting | Pass 1 PAGE D · Pass 3 M-N7 |
| Lace stamp | **KEEP-read** · **FORBID-as-Lace-store** · **PROPOSAL-only** · **FORBID-as-WebGPU-conflation** · **FORBID** accept-GAP / **FORBID fill-GAP** |
| PAGE cite | **D** |
| False friend | **FM-Webnn3** · **FM-Webnn6** · **FM-Webnn9** |
| Projection / hologram | export ≠ identity merge; calling/exporting does **not** accept emission |
| webgpu | cite-only · returned `GPUBuffer` is HOST/GPU companion, not shelf merge (**FM-Webnn6**) |
| wgsl / wasm64 | cite-only |
| Emission | `[GAP]` (FORBID fill) |
| Implements | M-N7 alg 1–6: createTensor / createExportableTensor → read/write → optional `exportToGPU` rental → refuse as store / accept-GAP → halt |

```
  MLContext
           |
           |  createTensor(desc)
           |  OR createExportableTensor(desc, gpuDevice)
           v
  +------------------+
  | MLTensor         |  input/output tensor memory
  +--------+---------+
           |
           |  writeTensor / readTensor
           |  optional: exportToGPU(tensor) → GPUBuffer rental
           |  (WebNN ops blocked while exported)
           v
  host-NN tensor ± GPUBuffer bridge cite
  # NOT Lace store · NOT Buffer identity merge
  # NOT accept / fill emission [GAP]
```
stamp under fence: KEEP-read | FORBID-as-Lace-store | PROPOSAL-only | FORBID-as-WebGPU-conflation | FORBID accept-GAP | FORBID fill-GAP | FM-Webnn3 · FM-Webnn6 · FM-Webnn9

---

### P-N8 — Error / validation vs Lace append (`opSupportLimits` / validation / async fail paths ≠ Lace cut)

| Field | Content |
|---|---|
| Mechanism cite | **M-N8** · §8.3.9 `opSupportLimits` PDF **46** · §9 Algorithms / Broadcasting PDF **287** · §14 Changes PDF **299** · builder/`dispatch` validation · PAGE H/X SILENT mesh |
| Sighting | Pass 1 PAGE B+H · Pass 3 M-N8 |
| Lace stamp | **KEEP-read** · **SILENT-for-Lace-append** · **FORBID-as-emission-rule** |
| PAGE cite | **B+H** |
| False friend | PAGE H/X SILENT mesh (validation ↛ Lace cut) |
| Projection / hologram | Spec fail paths ≠ Lace append scheduler |
| webgpu / wgsl / wasm64 | cite-only · ≠ WebGPU device-lost as Lace cut |
| Emission | `[GAP]` |
| Implements | M-N8 alg 1–6: Spec validation → optional `opSupportLimits` → §9 algorithms → §14 cite → refuse as Lace cut / Φ gate → halt |

```
  any Wave A API call (P-N1…P-N7)
           |
           |  descriptor / ownership / destroy / export checks
           |  optional opSupportLimits()
           |  §9 broadcasting / algorithms
           v
  +---------------------------+
  | validation outcome        |  throw / reject / pass
  | MLOpSupportLimits record  |
  +-------------+-------------+
                |
                v
  host-NN hygiene only
  # SILENT for Lace append · NOT Phi gate · NOT Lace cut
```
stamp under fence: KEEP-read | SILENT-for-Lace-append | FORBID-as-emission-rule | PAGE H/X SILENT

---

### P-N9 — Security / privacy boundary (§3–5 threat / privacy / a11y · §5.3 WebGPU comparison)

| Field | Content |
|---|---|
| Mechanism cite | **M-N9** · §3 Accessibility PDF **15** · §4 Security PDF **15–16** · §5 Privacy / §5.3 WebGPU Comparison PDF **19–20** |
| Sighting | Pass 1 PAGE G · Pass 3 M-N9 |
| Lace stamp | **KEEP-read** · **FORBID-as-Core-write** · **FORBID-as-WebGPU-conflation** |
| PAGE cite | **G** |
| False friend | **FM-Webnn6** · PAGE X · **FM-Webnn8** |
| Projection / hologram | Threat text ≠ Lace law; Shadow embeds still under web platform gates |
| webgpu | cite-only · §5.3 ≠ identity merge (**FM-Webnn6**) |
| wgsl | cite-only |
| wasm64 | cite-only · ≠ compile-target swap (**FM-Webnn8**) |
| Emission | `[GAP]` |
| Implements | M-N9 alg 1–6: SecureContext → Permissions Policy → §5/§5.3 read as different-API guidance → refuse as Lace law / WebGPU identity / wasm64 → halt |

```
  browsing context entry
           |
           |  SecureContext (powerful feature)
           |  Permissions Policy "webnn" (default 'self')
           |  cross-origin frames disabled by default
           v
  +---------------------------+
  | availability gates        |
  | §5 privacy mitigations    |
  | §5.3 WebGPU comparison    |  different API — not merge
  | §3 a11y author guidance   |
  +-------------+-------------+
                |
                v
  host-NN / web-platform boundary
  # NOT Lace law · NOT WebGPU identity · NOT wasm64 swap
```
stamp under fence: KEEP-read | FORBID-as-Core-write | FORBID-as-WebGPU-conflation | FM-Webnn6 · FM-Webnn8 | PAGE X

---

## Cross-walk M↔P

`P-N* | M-N* | stamp | PAGE | FM-Webnn* | projection/hologram | webgpu | wgsl | wasm64 | emission`

| P | M | stamp (hard) | PAGE | FM | projection/hologram | webgpu | wgsl | wasm64 | emission |
|---|---|---|---|---|---|---|---|---|---|
| P-N1 | M-N1 | FORBID-as-Lace-strand · FORBID-as-WebGPU-conflation · KEEP-read-as-host-NN-API | B | FM-Webnn2 · FM-Webnn6 | Shadow host-NN acquire | cite ≠ Device | cite | cite ≠ target | `[GAP]` |
| P-N2 | M-N2 | FORBID-as-Lace-strand · FORBID-as-Core-write · FORBID-as-Core · D7 | C | FM-Webnn1 · FM-Webnn9 | Builder ≠ Graphic D | cite | cite | cite | `[GAP]` |
| P-N3 | M-N3 | FORBID-as-Lace-store | D | FM-Webnn3 | ≠ strand/append | cite | cite | cite | `[GAP]` |
| P-N4 | M-N4 | FORBID-as-Lace-WORD · FORBID-as-WGSL-conflation | E | FM-Webnn5 · FM-Webnn7 | Op ≠ WORD | cite | cite ≠ entry | cite | `[GAP]` |
| P-N5 | M-N5 | FORBID-as-Lace-strand · FORBID-as-Core · D7 | C | FM-Webnn1 · FM-Webnn9 | MLGraph ≠ cord | cite | cite | cite | `[GAP]` |
| P-N6 | M-N6 | FORBID-as-emission-rule · SILENT · D7 | F | FM-Webnn4 | dispatch ≠ Φ | cite | cite | cite | `[GAP]` |
| P-N7 | M-N7 | FORBID-as-Lace-store · PROPOSAL-only · FORBID accept-GAP | D | FM-Webnn3 · FM-Webnn6 · FM-Webnn9 | export ≠ accept | cite ≠ Buffer id | cite | cite | `[GAP]` (FORBID fill) |
| P-N8 | M-N8 | SILENT-for-Lace-append · FORBID-as-emission-rule | B+H | PAGE H/X SILENT | validation ≠ cut | cite | cite | cite | `[GAP]` |
| P-N9 | M-N9 | FORBID-as-Core-write · FORBID-as-WebGPU-conflation | G | FM-Webnn6 · FM-Webnn8 · PAGE X | threat ≠ Lace law | cite ≠ identity | cite | cite ≠ target | `[GAP]` |

P3-M CONFIRM×9 · CONFLICT×0 **stands** (not reopened). Every emission cell `[GAP]`.

---

## P4-X — Rigor matrix

Columns: `node · P · M · stamp · Implements OK · Fence OK (Spec-only; no POINTER word) · Stamp OK · False-friend fence OK · Overview attach OK · PASS/FIX`

### Panels

| node | P | M | stamp | Impl | Fence | Stamp | FF fence | Overview | Verdict |
|---|---|---|---|---|---|---|---|---|---|
| context/device | P-N1 | M-N1 | FORBID-as-Lace-strand · FORBID-as-WebGPU-conflation · KEEP-read-as-host-NN-API | Y | Y | Y | Y (FM-Webnn2·6) | Y | **PASS** |
| graph builder | P-N2 | M-N2 | FORBID-as-Lace-strand · Core FORBIDs · D7 | Y | Y | Y | Y (FM-Webnn1·9) | Y | **PASS** |
| tensors/operands | P-N3 | M-N3 | FORBID-as-Lace-store | Y | Y | Y | Y (FM-Webnn3) | Y | **PASS** |
| operators/op graph | P-N4 | M-N4 | FORBID-as-Lace-WORD · FORBID-as-WGSL-conflation | Y | Y | Y | Y (FM-Webnn5·7) | Y | **PASS** |
| build/MLGraph | P-N5 | M-N5 | FORBID-as-Lace-strand · Core FORBIDs · D7 | Y | Y | Y | Y (FM-Webnn1·9) | Y | **PASS** |
| dispatch | P-N6 | M-N6 | FORBID-as-emission-rule · SILENT · D7 | Y | Y | Y | Y (FM-Webnn4) | Y | **PASS** |
| MLTensor/export | P-N7 | M-N7 | FORBID-as-Lace-store · PROPOSAL · accept-GAP | Y | Y | Y | Y (FM-Webnn3·6·9) | Y | **PASS** |
| validation | P-N8 | M-N8 | SILENT-for-Lace-append · FORBID-as-emission-rule | Y | Y | Y | Y (PAGE H/X) | Y | **PASS** |
| security/privacy | P-N9 | M-N9 | FORBID-as-Core-write · FORBID-as-WebGPU-conflation | Y | Y | Y | Y (FM-Webnn6·8) | Y | **PASS** |

### Overview spine nodes

| overview node | attach P/M | Fence OK | Stamp / off-board OK | Verdict |
|---|---|---|---|---|
| navigator.ml / createContext · MLContext | P-N1 / M-N1 | Y | Y | **PASS** |
| MLGraphBuilder · input / constant | P-N2 / M-N2 | Y | Y | **PASS** |
| MLOperand · tensors / descriptors | P-N3 / M-N3 | Y | Y | **PASS** |
| operators · op graph catalogue | P-N4 / M-N4 | Y | Y | **PASS** |
| build → MLGraph · at-most-one | P-N5 / M-N5 | Y | Y | **PASS** |
| dispatch · ML task source | P-N6 / M-N6 | Y | Y | **PASS** |
| MLTensor · exportToGPU | P-N7 / M-N7 | Y | Y | **PASS** |
| validation · opSupportLimits | P-N8 / M-N8 | Y | Y | **PASS** |
| security / privacy / §5.3 | P-N9 / M-N9 | Y | Y | **PASS** |
| forbidden Core / Φ / WebGPU / WGSL / wasm64 exit | off-board · FM-Webnn6·7·8 | Y | Y | **PASS** |

### Special gates (re-walk; not rubber-stamped)

| Gate | Result |
|---|---|
| **P-N1 / M-N1** · FM-Webnn2 · FM-Webnn6 | **PASS** — Context/device FORBID-as-Lace-strand + FORBID-as-WebGPU-conflation under fence; KEEP-read-as-host-NN-API present |
| **P-N2 / P-N5 / M-N2 / M-N5** · FM-Webnn1 · FM-Webnn9 | **PASS** — Builder/MLGraph FORBID-as-Lace-strand + Core FORBIDs; **D7** cross-link in caption/Implements/stamp |
| **P-N3 / M-N3** · FM-Webnn3 | **PASS** — Operand/tensor FORBID-as-Lace-store under fence |
| **P-N4 / M-N4** · FM-Webnn5 · FM-Webnn7 | **PASS** — Operators FORBID-as-Lace-WORD + FORBID-as-WGSL-conflation under fence |
| **P-N6 / M-N6** · FM-Webnn4 | **PASS** — `dispatch` FORBID-as-emission-rule + SILENT under fence; **D7**; no emission token in fence |
| **P-N7 / M-N7** · FM-Webnn3 · FM-Webnn6 · FM-Webnn9 | **PASS** — Tensor/export FORBID-as-Lace-store + PROPOSAL-only + FORBID accept-GAP / fill-GAP under fence |
| **P-N8 / M-N8** | **PASS** — SILENT-for-Lace-append + FORBID-as-emission-rule under fence |
| **P-N9 / M-N9** · FM-Webnn6 · FM-Webnn8 | **PASS** — FORBID-as-Core-write + FORBID-as-WebGPU-conflation under fence |
| **Overview WebGPU exit** · FM-Webnn6 | **PASS** — WebGPU Device·Queue identity marked FORBIDDEN off-board |
| **Overview WGSL exit** · FM-Webnn7 | **PASS** — WGSL swap marked FORBIDDEN off-board |
| **Overview wasm64 exit** · FM-Webnn8 | **PASS** — wasm64 ISA swap marked FORBIDDEN off-board |
| **No POINTER-in-fence** | **PASS** — audited overview + all 9 panel fences; word absent inside fences; stamps under fences |
| **No invent Φ in fences** | **PASS** — Phi named only as off-board `[GAP]` / stamp under fence |

**P4-X verdict:** all cells **Y** → **PASS** × (9 panels + 10 overview nodes + 13 special gates). No FIX remaining.

---

## Waves B–D (deferred — one-line seeds)

| Wave | Seed (not blocking) |
|---|---|
| B | Per-operator deep cards beyond catalogue boundary |
| C | Multi-context / NPU device edge cases; detailed `exportToGPU` transfer recipes |
| D | clock/hologram viewer NN embed implementation notes (cite-only; do not amend those files) |

**No** full Wave B panels. **Order Proposal = Pass 5**. **Deep diagram audit = Pass 6 EXECUTED** (clipboard P6-A/P/X/F/O/R · verdict **DIAGRAM SOUND WITH OPENS**).

---

## Steward refuse (panels + stamps)

With only P-N* + stamps (+ P3-M / M-N* cites), steward must refuse:

1. “MLGraph / MLGraphBuilder is the Lace strand / Graphic D factory” → **P-N2/P-N5** + **FM-Webnn1 · FM-Webnn9** + FORBID-as-Lace-strand.  
2. “MLContext / createContext is Graphic D / Core door” → **P-N1** + **FM-Webnn2** + FORBID-as-Lace-strand.  
3. “MLTensor / operands are a Lace store / append surface” → **P-N3/P-N7** + **FM-Webnn3** + FORBID-as-Lace-store.  
4. “`dispatch` emits POINTER” / “ML task source fills Φ” → **P-N6** + **FM-Webnn4** + FORBID-as-emission-rule; emission `[GAP]`.  
5. “WebNN operators are Lace WORD / Core schema” → **P-N4** + **FM-Webnn5** + FORBID-as-Lace-WORD.  
6. “WebNN is / replaces WebGPU Device·Queue·Buffer” → **P-N1/P-N7/P-N9** + **FM-Webnn6** + FORBID-as-WebGPU-conflation.  
7. “WebNN is / replaces WGSL / shader entry points” → **P-N4** + **FM-Webnn7** + FORBID-as-WGSL-conflation.  
8. “WebNN replaces wasm64 / wasm-spec-3 compile target” → overview off-board + **FM-Webnn8** + FORBID-as-compile-target-swap.  
9. “`exportToGPU` accepts pointer-emission.md / merges shelves” → **P-N7** + **FM-Webnn9** + PROPOSAL-only · FORBID accept-GAP.  
10. “Validation / opSupportLimits is a Lace cut / Φ gate” → **P-N8** + SILENT-for-Lace-append.  
11. “This fence contains Lace POINTER as a WebNN object” → opening contract · Fence OK fail · stamps belong **under** fences.  
12. “GPUBuffer / queue.submit morals apply unchanged here” → wrong shelf; adapt HOST-NN keep-outs only (cite webgpu-* separately).

These panels are CRD **host-NN** procedures drawn for Shadow projection / hologram / host-embed surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, and do not swap WebGPU / WGSL / wasm64.

---

## Pass 4 execute receipt (ascii file)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~22:45 PT |
| Artifact | this file · overview (**count=1**) + **P-N1…P-N9** + cross-walk + P4-X |
| Algorithms | M-N* **unchanged** (cite only) |
| Fence audit | **no POINTER word** inside any diagram fence |
| Emission | still `[GAP]` |
| PDF staged | **No** |
| Order Proposal | **EXECUTED** Pass 5 (clipboard P5-P + short mirror under overview) |
| Deep diagram audit | deferred **Pass 6** (not opened) |

---

## Pass 5 execute receipt (ascii file)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~22:54 PT |
| P5-O | overview **count=1** confirmed |
| P5-P mirror | short Order Proposal under overview (full text on clipboard) |
| P5-X | CONFIRM · **19 PASS · 0 FIX** (see clipboard) |
| Emission | still `[GAP]` |
| PDF staged | **No** |
| Pass 6 | **EXECUTED** — see Pass 6 receipt below · clipboard P6-R |

---

## Pass 6 execute receipt (ascii file)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~23:01 PT |
| Verdict | **DIAGRAM SOUND WITH OPENS** (full tables on clipboard Pass 6) |
| P6-A | **10 PASS · 0 OPEN** — fence integrity · singular overview · P-N1…P-N9 · no POINTER/Φ invent in fences · stamp legend · no Core bleed |
| P6-P | **9 PASS** — Shadow / NON-binding · KEEP-read-as-host-NN-API · P5-P keep-outs intact |
| P6-X | **9 PASS · 0 FIX** — Spec↔M-N*↔P-N*↔overview; FM-Webnn1…9 held; special gates PASS |
| P6-F | **none** |
| P6-O | overview **count=1** reconfirmed; Core/Φ/WebGPU/WGSL/wasm64 off-board |
| Pointer | clipboard [`webnn-clipboard.md`](webnn-clipboard.md) Pass 6 section (P6-A/P/X/F/O/R) |
| Plan | [`webnn-pass-6-plan.md`](webnn-pass-6-plan.md) → **EXECUTED** |
| Emission | still `[GAP]` |
| PDF staged | **No** |
| Wave B | **SKIP** |
