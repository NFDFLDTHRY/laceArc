# WebNN CRD 2026-09-10 — mechanism cards (HOST-NN system procedures)

**Status:** Pass 3 EXECUTED (Wave A **M-N1…M-N9**; P3-M mesh on clipboard). Pass 4 ASCII: see [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md) (**P-N1…P-N9**). Algorithms unchanged. Emission `[GAP]`.  
**Source:** *Web Neural Network API* (WebNN) — **W3C Candidate Recommendation Draft, 10 September 2026**. Editors: Ningxin Hu, Dwayne Robinson (et al.).  
**PDF:** `refs/local/webnn-crd-20260910.pdf` → attachment `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` (**353** pp., text layer; **never git-add**). SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`. PDF one-based primary.  
**Sighting this pass:** `pdftotext -f N -l N -layout` on §7.1–7.5 Overview/Device/Operators/Task Source/Permissions · §8.2–8.3 createContext/MLContext/`dispatch`/`createTensor`/`exportToGPU`/`opSupportLimits` · §8.4–8.9 MLGraph/Operand/MLTensor/Builder/`build` · §3–5 Security/Privacy/§5.3 · §9 Algorithms · §11 Emulation · §14 Changes; Pass 1–2 pins reused.  
**Companion:** [`webnn-clipboard.md`](webnn-clipboard.md) · plan [`webnn-pass-3-plan.md`](webnn-pass-3-plan.md) · Pass 2 **D7** (builder→build→dispatch miniature; cross-link from **M-N2 / M-N5 / M-N6**; do not rewrite) · [`pointer-emission.md`](../pointer-emission.md) = DRAFT/`[GAP]`.  
**Not this file:** Lace Core ASCII = [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**. **webgpu-*** **M-G\*** / FM-Wgpu\* = **HOST/GPU companion** — cite-only; different Spec. **wgsl-*** **M-S\*** / FM-Wgsl\* = **SHADER-LANG companion** — cite-only; different Spec. **wasm-spec-3** **M-T\*** / FM-W\* = **compile-target ISA** — cite-only; different layer.  
**P3-M:** thin mechanism coherence mesh lives on [`webnn-clipboard.md`](webnn-clipboard.md) (9 rows · emission `[GAP]` every row).  
**Ascii:** Pass 4 → [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md) (**P-N1…P-N9**).

```
+======================================================================+
|  HOST-NN / WebNN SPECIAL — W3C CRD 2026-09-10                        |
|  Pass 3 = Wave A system mechanisms (M-N1…M-N9) + P3-M mesh.          |
|  Shadow / projection / hologram / host-embed surfaces ONLY.            |
|  Companion to WebGPU (HOST/GPU · M-G*) and WGSL (SHADER-LANG · M-S*).|
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA mechanisms (M-T* / FM-W* stay).  |
|  NOT WebGPU host/GPU mechanisms (M-G* / FM-Wgpu* stay there).        |
|  NOT WGSL shader-lang mechanisms (M-S* / FM-Wgsl* stay there).       |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: WebNN as Lace WORD / Core operator / schema language.       |
|  FORBID: MLGraph as strand; MLTensor as store/append; execute/       |
|          dispatch as Phi / POINTER emission.                         |
|  FORBID: conflating WebNN with WebGPU Device/Queue, WGSL, or wasm64.  |
|  FORBID: MLGraphBuilder as Core constructor; operator graph as ops.  |
|  KEEP-read: host-NN inference mechanics for Shadow projection work.  |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  No ascii Wave A this pass (Pass 4+).  Mechanisms = execute product. |
|  Emission [GAP] sealed.                                              |
+======================================================================+
```

Law: WebNN = **HOST-NN Shadow only** · MLGraph ≠ strand · MLTensor ≠ store/append · `dispatch`/execute ≠ Φ · WebNN ≠ WORD · WebNN ≠ WebGPU Device/Queue · WebNN ≠ WGSL · WebNN ≠ wasm64 · builder ≠ Core constructor · `exportToGPU` ≠ identity merge / emission accept · Hands win · `[GAP]` sealed · **FORBID-as-Core-write** · **NON-binding**.

This file is **Shadow / Layer III documentation of CRD host-NN procedures**, not Lace `src/`, not Graphic D, not Φ.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-host-NN-API** | May sit beside Lace as host-NN inference / projection mechanics; does not write Core |
| **KEEP-read** | May sit beside Lace as CRD constructive reading; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, Core operator / type set, or AGENTS/law rewrite |
| **FORBID-as-Lace-store** | Must not treat MLTensor / operands / constant tensors as Lace’s 1D strand / append surface |
| **FORBID-as-Lace-strand** | Must not treat MLGraph / MLContext / device selection / builder as the lace cord or Graphic D |
| **FORBID-as-emission-rule** | Must not use `dispatch` / graph execute / ML task source / validation as POINTER when/arity/adjacency |
| **FORBID-as-Lace-WORD** | Must not treat WebNN operators / op graph as Lace WORD / Core schema language |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler / Φ gate |
| **PROPOSAL-only** | Lace↔host-NN / `exportToGPU` bridge sketches are proposals only; not accepted law |
| **FORBID-as-WebGPU-conflation** | Must not claim WebNN is / replaces WebGPU Device·Queue·Buffer |
| **FORBID-as-WGSL-conflation** | Must not claim WebNN is / replaces WGSL / shader-lang |
| **FORBID-as-compile-target-swap** | Must not claim WebNN replaces wasm64 / wasm-spec-3 target shelf |
| **FORBID-as-Core** | Must not promote builder/build/export path into Lace Core doors / `src/` birth |
| **FORBID** / **FORBID fill-GAP** / **FORBID accept-GAP** | Must not treat export / calling WebNN as filling or accepting emission `[GAP]` |

---

## Wave A — CRD constructive spine (blocking) — 1:1 with P-N1…P-N9 (Pass 4 EXECUTED)

### M-N1 — Context / device selection (`createContext` · MLContext · backends / `opSupportLimits`)

| Field | Content |
|---|---|
| Kind | context-device |
| Spec locus | §7.2 Device Selection PDF **23**; §8.2 `createContext(options)` / `createContext(gpuDevice)` PDF **28–29**; §8.3 MLContext IDL PDF **29–30**; §8.3.9 `opSupportLimits()` PDF **46**; §7.5 Permissions `"webnn"` PDF **25** |
| Sighting method | `pdftotext -f 23 -l 23` / `-f 25 -l 30` / `-f 46 -l 46` (this pass); Pass 1 PAGE B |
| Eye-quote | “An MLContext interface represents a global state of neural network execution.” · “To create a context given realm … and options (a GPUDevice or MLContextOptions)” · `Promise<MLContext> createContext(optional MLContextOptions…)` · `Promise<MLContext> createContext(GPUDevice gpuDevice)` · “The opSupportLimits() exposes level of support that differs across implementations at operator level.” |
| Inputs | Optional `MLContextOptions` (`powerPreference`, `accelerated`) **or** a `GPUDevice`; SecureContext; Permissions Policy `"webnn"` |
| Outputs | `MLContext` (promise may reject `SecurityError` / `NotSupportedError`); later `opSupportLimits()` probe |
| Invariants | Context is host-NN execution state — **not** Graphic D / lace cord / Core door; `createContext(GPUDevice)` binds a WebGPU device for a **webgpu** context type — **not** Device identity merge; UA selects CPU/NPU/GPU combo — not Lace device enum |
| Algorithm | See below |
| Complexity / termination | One async createContext; halt when promise settles (context or reject) |
| Worked miniature | Pass 2 **D7** step 1: obtain `MLContext` via `navigator.ml.createContext(…)` (KEEP-read; Context ↛ Graphic D — **FM-Webnn2** / **FM-Webnn6**) |
| Lace stamp | **KEEP-read-as-host-NN-API**; **KEEP-read**; **FORBID-as-Lace-strand**; **FORBID-as-Core-write**; **FORBID-as-WebGPU-conflation** (`createContext(GPUDevice)` ≠ Device identity) |
| Hands cite | Graphics A–D · systems-manifest (one store) · AGENTS Implementation Law · PAGE B |
| Panel cite | **P-N1** · PAGE **B** |
| False friend | **FM-Webnn2** · **FM-Webnn6** |
| Companion cite | webgpu-* cite-only — GPUDevice argument is **HOST/GPU companion** hook, not identity (**FM-Webnn6**); do not edit |
| Projection / hologram cite | `clock/README.md` · `hologram/` — Shadow host-NN acquire only; glyphs ≠ schema |
| wasm64 cite | wasm-spec-3 cite-only — **different layer**; context ≠ wasm64 compile target (**FM-Webnn8**) |
| Open gaps | Φ / emission `[GAP]`; which embed may createContext for Lace projection — out of scope |

**Algorithm**

1. **Preconditions.** SecureContext Window or Worker; `navigator.ml` available (§8.1–8.2); Document allowed to use `"webnn"` (§7.5 PDF **25**).  
2. **State.** No context yet; choose `MLContextOptions` **or** supply a `GPUDevice`.  
3. **Steps.**  
   1. Call `navigator.ml.createContext(options)` or `createContext(gpuDevice)` (§8.2 PDF **28–29**).  
   2. UA runs “create a context” (§8.2): set `[[contextType]]` `"default"` or `"webgpu"`, power/accelerated slots; return failure if unsupported.  
   3. On success, obtain `MLContext` — “global state of neural network compute workload and execution processes” (§8.3 PDF **29–30**).  
   4. Optionally probe `context.opSupportLimits()` (§8.3.9 PDF **46**) — operator support only; not Lace capability bins.  
   5. Refuse Context / device selection as Graphic D, lace cord, or Core door; refuse `createContext(GPUDevice)` as WebGPU Device identity merge.  
4. **Choice points.** `powerPreference` / `accelerated` vs GPUDevice path — host selection only (§7.2 PDF **23**).  
5. **Halt.** Context promise settled (object or reject).  
6. **Output certificate.** Host-NN context handle (Shadow reading only).

---

### M-N2 — Graph builder (MLGraphBuilder ctor · `input` / `constant` · graph construction)

| Field | Content |
|---|---|
| Kind | graph-builder |
| Spec locus | §7.1 Overview PDF **21–22**; §8.9 MLGraphBuilder IDL / ctor PDF **62**; `input` / `constant` methods PDF **62** |
| Sighting method | `pdftotext -f 21 -l 22` / `-f 62 -l 63` (this pass); Pass 1 PAGE C · Pass 2 D7 |
| Eye-quote | “The MLGraphBuilder interface serves as a builder (factory) to construct a computational graph (its graph) that is then compiled to create an MLGraph.” · `constructor(MLContext context)` · `MLOperand input(USVString name, MLOperandDescriptor descriptor)` · `MLOperand constant(…)` · “An MLGraphBuilder can build if its [[hasBuilt]] is false and its [[context]] is not lost.” |
| Inputs | Valid `MLContext` (M-N1); operand descriptors / buffers / scalars / constant tensors for `input`/`constant` |
| Outputs | `MLGraphBuilder` session; distinct `MLOperand` edges from `input`/`constant`/operator methods |
| Invariants | Builder is host-NN graph factory — **not** Lace Core constructor / Graphic D factory; each method returns a distinct new `MLOperand` without mutating others; builder session ends after one `build` (`[[hasBuilt]]`) |
| Algorithm | See below |
| Complexity / termination | Finite ctor + operand/op method calls; halt when builder ready or context lost / already built |
| Worked miniature | **Pass 2 D7** steps 2–3 — `MLGraphBuilder(context)` → `input`/`constant`/ops (do not rewrite D7) |
| Lace stamp | **KEEP-read**; **FORBID-as-Lace-strand**; **FORBID-as-Core-write** (builder ≠ Core constructor); **FORBID-as-Core** |
| Hands cite | Graphics A–D · AGENTS Implementation Law · PAGE C · D7 |
| Panel cite | **P-N2** · PAGE **C** |
| False friend | **FM-Webnn1** · **FM-Webnn9** |
| Companion cite | webgpu-* / wgsl-* / wasm-spec-3 — cite-only; different Spec/layer |
| Projection / hologram cite | Builder ≠ Graphic D factory; projection may later *cite* host-NN graph construct only |
| Open gaps | Φ / emission `[GAP]`; which operators a Lace embed may compose — out of scope |

**Algorithm**

1. **Preconditions.** Valid non-lost `MLContext` (M-N1).  
2. **State.** No builder; `[[hasBuilt]]` will start false.  
3. **Steps.**  
   1. `builder = new MLGraphBuilder(context)` (§8.9 PDF **62**).  
   2. Declare graph inputs: `builder.input(name, descriptor)`.  
   3. Declare constants: `builder.constant(…)` overloads (buffer / scalar / `MLTensor`).  
   4. Compose operators via builder methods (`gemm`, `relu`, …) — each returns a distinct `MLOperand` (§7.1 PDF **21–22**).  
   5. Refuse builder as Lace Core constructor / Graphic D factory; refuse graph-under-construction as lace strand.  
4. **Choice points.** Which inputs/constants/ops form the graph; labels for diagnostics.  
5. **Halt.** Builder ready for `build` (M-N5), or invalid (lost / already built).  
6. **Output certificate.** Host-NN graph-building session (Shadow only) · **D7** cross-link.

---

### M-N3 — Tensors / operands (MLOperand · create / describe operand graph inputs)

| Field | Content |
|---|---|
| Kind | tensors-operands |
| Spec locus | §8.5 MLOperandDescriptor PDF **51–52**; §8.6 Operand / validate operand PDF **51–53**; §7.1 edges PDF **21–22**; §8.3.2 `createTensor` PDF **35** (runtime tensor create; graph-edge half here) |
| Sighting method | `pdftotext -f 21 -l 22` / `-f 35 -l 35` / `-f 51 -l 53` (this pass); Pass 1 PAGE D |
| Eye-quote | “MLOperands are a representation of data that flows within the computational graph, and are the edges of the graph.” · “An MLOperandDescriptor describes the shape (dimensions) and data type of an operand.” · “To validate operand given MLGraphBuilder builder and MLOperand operand, return true if operand.[[builder]] is builder…” |
| Inputs | `MLOperandDescriptor` (`dataType`, `shape`); builder session (M-N2); optional runtime `MLTensorDescriptor` for `createTensor` |
| Outputs | `MLOperand` graph edges; descriptors equal-by-dataType+shape; optional `MLTensor` from `createTensor` (runtime binding — see also M-N7) |
| Invariants | Operands / descriptors describe host-NN graph data flow — **not** Lace store / append surface / second strand; validate-operand is builder hygiene, not Lace cut |
| Algorithm | See below |
| Complexity / termination | Finite descriptor/operand create; halt when edges typed or validation fails |
| Worked miniature | D7 step 3 — `input`/`constant` declare edges (PAGE D) |
| Lace stamp | **KEEP-read**; **FORBID-as-Lace-store** |
| Hands cite | Piece 1/6 · Graphic D (one strand) · PAGE D |
| Panel cite | **P-N3** · PAGE **D** |
| False friend | **FM-Webnn3** |
| Companion cite | cite-only; operands ≠ GPUBuffer / WGSL types / wasm memory as Lace store |
| Projection / hologram cite | Operand/tensor ≠ strand/append; may hold inference bytes for Shadow only |
| Open gaps | Φ / emission `[GAP]`; which descriptor shapes may mirror Lace views — never as append authority |

**Algorithm**

1. **Preconditions.** Valid `MLGraphBuilder` (M-N2) for graph edges; or valid `MLContext` for `createTensor` (M-N1).  
2. **State.** Choose `dataType` + `shape` (and readable/writable for tensors).  
3. **Steps.**  
   1. Form `MLOperandDescriptor` (§8.5 PDF **51–52**) — equality by dataType+shape.  
   2. Create graph-edge operands via builder `input`/`constant`/ops (§7.1 PDF **21–22**).  
   3. Validate operand belongs to this builder before `build` (§8.6 PDF **53**).  
   4. Optionally `await context.createTensor(descriptor)` (§8.3.2 PDF **35**) for runtime tensors (M-N7).  
   5. Refuse operands/tensors as Lace store / append surface.  
4. **Choice points.** Scalar vs N-D shape; constant vs input vs intermediate.  
5. **Halt.** Operands/descriptors ready, or TypeError / invalid state.  
6. **Output certificate.** Host-NN operand/tensor descriptors (Shadow transfer only).

---

### M-N4 — Operators / op graph (operator catalogue · connect ops into graph)

| Field | Content |
|---|---|
| Kind | operators |
| Spec locus | §7.3 Operators (non-normative catalogue) PDF **24–25**; normative ops from §8.9.5+ PDF **~68+**; §11 Operator Emulation PDF **295** |
| Sighting method | `pdftotext -f 24 -l 25` / `-f 68 -l 68` / `-f 295 -l 295` (this pass); Pass 1 PAGE E |
| Eye-quote | “The WebNN API defines a set of operators required by well-known CNN and RNN, transformer and generative models…” · Categories: Tensor creation/manipulation, Mathematics, Activation, Convolution, … · “Operations present in other neural network inference APIs can often be emulated using operations present in WebNN.” |
| Inputs | Builder (M-N2); one or more input `MLOperand`s; operator-specific options/activations |
| Outputs | New distinct `MLOperand`(s) holding the operator; operator label for diagnostics |
| Invariants | Operators are host-NN math/graph nodes — **not** Lace WORD / Core ops / schema language; **not** WGSL entry points / shader-lang; emulation is Spec guidance, not Lace rewrite |
| Algorithm | See below |
| Complexity / termination | Finite per-op method call; halt when new operand returned or validation error |
| Worked miniature | §7.1 gemm/relu style: method creates operator + returns new `MLOperand` (PDF **21–22**) |
| Lace stamp | **KEEP-read**; **FORBID-as-Lace-WORD**; **FORBID-as-Core-write**; **FORBID-as-WGSL-conflation** |
| Hands cite | systems-manifest · PAGE E |
| Panel cite | **P-N4** · PAGE **E** |
| False friend | **FM-Webnn5** · **FM-Webnn7** |
| Companion cite | wgsl-* cite-only — operators ≠ shader entry points (**FM-Webnn7**); webgpu-* cite-only |
| Projection / hologram cite | Op graph ≠ WORD; hologram may *cite* inference ops without becoming schema |
| Open gaps | Φ / emission `[GAP]`; per-operator deep cards deferred Wave B |

**Algorithm**

1. **Preconditions.** Builder can still build (M-N2); input operands validated for this builder (M-N3).  
2. **State.** Choose operator + options from catalogue (§7.3 PDF **24–25**).  
3. **Steps.**  
   1. Invoke builder method for the operator (normative §8.9.5+ PDF **~68+**).  
   2. Spec creates operator node, wires inputs/activations, returns distinct new `MLOperand`(s) (§7.1).  
   3. Optional: consult §11 Emulation PDF **295** when platform lacks a direct op — still host-NN, not Lace.  
   4. Refuse operator graph as Lace WORD / Core operator set; refuse WebNN as WGSL / shader-lang.  
4. **Choice points.** Which catalogue op; options (e.g. activation nested); label string.  
5. **Halt.** New operand(s) in graph, or validation/TypeError.  
6. **Output certificate.** Host-NN operator edge (Shadow only).

---

### M-N5 — Compilation / build (`build` → MLGraph; at-most-one-graph hygiene)

| Field | Content |
|---|---|
| Kind | build-compile |
| Spec locus | §7.1 Overview / `build` note PDF **21–22**; §8.4 MLGraph PDF **50**; §8.9.4 `build` PDF **67–68** |
| Sighting method | `pdftotext -f 21 -l 22` / `-f 50 -l 50` / `-f 67 -l 68` (this pass); Pass 1 PAGE C · Pass 2 D7 |
| Eye-quote | “The MLGraphBuilder.build() method compiles the graph in the background without blocking the calling thread, and returns a Promise that resolves to an MLGraph. Each MLGraphBuilder can build at most one MLGraph.” · “The MLGraph interface represents a compiled computational graph. A compiled graph once constructed is immutable…” · `Promise<MLGraph> build(MLNamedOperands outputs)` |
| Inputs | `MLGraphBuilder` that can build; `MLNamedOperands` outputs map |
| Outputs | `Promise<MLGraph>` — compiled immutable graph with input/output descriptors |
| Invariants | Compiled `MLGraph` is immutable host-NN model — **not** Lace strand / Graphic D; at-most-one-graph per builder (`[[hasBuilt]]`); destroy frees host resources, does not cut Lace |
| Algorithm | See below |
| Complexity / termination | Async compile; halt when promise settles (graph or reject) |
| Worked miniature | **Pass 2 D7** step 4 — `graph = await builder.build(outputs)` (do not rewrite D7) |
| Lace stamp | **KEEP-read**; **FORBID-as-Lace-strand** (MLGraph ≠ strand); **FORBID-as-Core-write**; **FORBID-as-Core** |
| Hands cite | Graphics A–D · PAGE C · D7 |
| Panel cite | **P-N5** · PAGE **C** |
| False friend | **FM-Webnn1** · **FM-Webnn9** |
| Companion cite | cite-only; MLGraph ≠ GPU pipeline / WGSL module / wasm module |
| Projection / hologram cite | Compiled graph ≠ lace cord; Shadow inference artifact only |
| Open gaps | Φ / emission `[GAP]`; weight-preprocessing / platform init details — out of scope |

**Algorithm**

1. **Preconditions.** Builder can build (`[[hasBuilt]]` false; context not lost) (M-N2).  
2. **State.** Named output operands selected.  
3. **Steps.**  
   1. Call `builder.build(outputs)` (§8.9.4 PDF **67–68**).  
   2. Validate named outputs / operands / constants per Spec steps (empty names, validate operand, BFS collect operands/operators/inputs).  
   3. Create `MLGraph`, set `[[context]]`, descriptors, `[[isDestroyed]]` false (§8.4 PDF **50**).  
   4. Mark builder `[[hasBuilt]]` — at most one MLGraph.  
   5. Refuse MLGraph as Lace strand / Graphic D / Core graph.  
4. **Choice points.** Which outputs define the compiled subgraph; context type affects init timing (§8.9).  
5. **Halt.** Promise resolves to immutable `MLGraph`, or rejects TypeError / lost.  
6. **Output certificate.** Host-NN compiled graph (Shadow only) · **D7** cross-link.

---

### M-N6 — Execution / dispatch (`dispatch` · ML task source · permissions `"webnn"`)

| Field | Content |
|---|---|
| Kind | dispatch-execute |
| Spec locus | §8.3.1 `dispatch()` PDF **32–33**; §7.4 Task Source PDF **25**; §7.5 Permissions Policy `"webnn"` PDF **25**; overview bind tensors PDF **23** |
| Sighting method | `pdftotext -f 23 -l 23` / `-f 25 -l 25` / `-f 32 -l 33` (this pass); Pass 1 PAGE F · Pass 2 D7 |
| Eye-quote | “Schedules the computational workload of a compiled MLGraph on the MLContext’s [[timeline]].” · “dispatch() itself provides no signal that graph execution has completed. Rather, callers can await the results of reading back the output tensors.” · “The ML task source is a task source to be used for all tasks related to asynchronous compilation and execution of MLGraphs and creation of MLContexts.” |
| Inputs | `MLContext`; compiled `MLGraph`; `MLNamedTensors` inputs and outputs |
| Outputs | `undefined` (schedule only); later readable output tensors via `readTensor` (not Φ) |
| Invariants | `dispatch` schedules host-NN compute — **not** POINTER when/arity/adjacency; no completion signal ↛ Φ gate; ML task source ≠ Lace append scheduler; permissions gate host feature only |
| Algorithm | See below |
| Complexity / termination | Sync validate + enqueue on `[[timeline]]`; completion observed via readback, not dispatch return |
| Worked miniature | **Pass 2 D7** step 5 — `context.dispatch(graph, inputs, outputs)` (do not rewrite D7) |
| Lace stamp | **KEEP-read**; **FORBID-as-emission-rule**; **SILENT-for-Lace-append** (no completion signal ↛ Φ gate) |
| Hands cite | AGENTS Implementation Law · pointer-emission `[GAP]` · PAGE F · D7 |
| Panel cite | **P-N6** · PAGE **F** |
| False friend | **FM-Webnn4** |
| Companion cite | cite-only; dispatch ≠ `queue.submit` / draw / wasm instantiate as emission |
| Projection / hologram cite | dispatch ≠ Φ; projection may schedule inference without accepting emission |
| Open gaps | Φ / emission `[GAP]`; ISSUE 5/7 completion/error signaling during dispatch — Spec open; do not finish from Lace |

**Algorithm**

1. **Preconditions.** Same-context non-destroyed `MLGraph` (M-N5); matching non-destroyed / non-exported tensors (M-N7); `"webnn"` allowed.  
2. **State.** Bind named input/output `MLTensor`s to graph descriptors.  
3. **Steps.**  
   1. `context.dispatch(graph, inputs, outputs)` (§8.3.1 PDF **32–33**).  
   2. Validate context match, destroy flags, no duplicate tensors, descriptor match, not exported.  
   3. Enqueue compute request on `graph.[[context]].[[timeline]]`.  
   4. Do **not** treat return/`undefined` as completion; optional later `readTensor` still ≠ Φ.  
   5. Refuse dispatch / ML task source as POINTER emission / Lace append / Φ gate.  
4. **Choice points.** Which named tensors bind; sync throw vs timeline abort when lost.  
5. **Halt.** Workload scheduled (or TypeError / InvalidStateError).  
6. **Output certificate.** Host-NN scheduled execution (Shadow only) · **D7** cross-link · emission remains `[GAP]`.

---

### M-N7 — MLTensor / buffers / exportToGPU (read·write·destroy · GPUBuffer bridge cite)

| Field | Content |
|---|---|
| Kind | mltensor-buffers |
| Spec locus | §8.7–8.8 MLTensorDescriptor / MLTensor PDF **57–58**; §8.3.2–8.3.3 createTensor / createExportableTensor PDF **35–36**; `writeTensor` / `readTensor` PDF **~40–42**; §8.3.8 `exportToGPU` PDF **42–43** |
| Sighting method | `pdftotext -f 35 -l 36` / `-f 42 -l 43` / `-f 57 -l 58` (this pass); Pass 1 PAGE D |
| Eye-quote | “The MLTensor interface represents a tensor which may be used as an input or output to an MLGraph.” · “Exports an exportable MLTensor to its associated GPUDevice as a GPUBuffer, and rents it to that GPUDevice until the returned GPUBuffer is destroyed.” · “There is no guarantee that exporting an MLTensor is zero-copy.” |
| Inputs | `MLContext`; `MLTensorDescriptor` (± `GPUDevice` for exportable); buffer sources for write; exportable tensor for `exportToGPU` |
| Outputs | `MLTensor`; `ArrayBuffer` / written bytes via read/write; `GPUBuffer` rental from `exportToGPU` |
| Invariants | MLTensor memory ≠ Lace store; `exportToGPU` is a **bridge cite** — **not** Buffer identity merge, **not** emission accept; while exported, WebNN ops on that tensor throw; destroy ≠ Lace cut |
| Algorithm | See below |
| Complexity / termination | Async create; sync export return; rental ends on GPUBuffer destroy |
| Worked miniature | createTensor → write/read path (PDF **35** example sketch); export bridge cite only (D7 choice (b) deferred — do not invent) |
| Lace stamp | **KEEP-read**; **FORBID-as-Lace-store**; **PROPOSAL-only** (export bridge); **FORBID-as-WebGPU-conflation**; **FORBID** accept-GAP / **FORBID fill-GAP** |
| Hands cite | systems-manifest (one store) · PAGE D · D1/D6 |
| Panel cite | **P-N7** · PAGE **D** |
| False friend | **FM-Webnn3** · **FM-Webnn6** · **FM-Webnn9** |
| Companion cite | webgpu-* cite-only — returned `GPUBuffer` is HOST/GPU companion object, not WebNN=WebGPU merge (**FM-Wgpu*** live there; do not edit) |
| Projection / hologram cite | export ≠ identity merge; calling/exporting does **not** accept `pointer-emission.md` |
| Open gaps | Φ / emission `[GAP]` (FORBID fill); detailed transfer recipes deferred Wave B |

**Algorithm**

1. **Preconditions.** Valid `MLContext` (M-N1); for exportable path, non-lost `GPUDevice` the context can export to.  
2. **State.** Choose descriptor (readable/writable); optionally exportable.  
3. **Steps.**  
   1. `tensor = await context.createTensor(descriptor)` or `createExportableTensor(descriptor, gpuDevice)` (PDF **35–36**).  
   2. Optional: `writeTensor` / `readTensor` for CPU-visible contents (still ≠ Lace append).  
   3. Optional: `buffer = context.exportToGPU(tensor)` (PDF **42–43**) — rents GPUBuffer; WebNN ops blocked while exported; destroy buffer returns tensor to WebNN.  
   4. Refuse MLTensor as Lace store; refuse export as WebGPU identity merge or as accepting/filling emission `[GAP]`.  
4. **Choice points.** Readable/writable/constant/exportable; zero-copy vs copy (implementation-defined).  
5. **Halt.** Tensor ready; export rental active until GPUBuffer destroyed; or TypeError / InvalidStateError.  
6. **Output certificate.** Host-NN tensor ± GPUBuffer bridge cite (Shadow / PROPOSAL-only).

---

### M-N8 — Error / validation vs Lace append (`opSupportLimits` / validation / async fail paths ≠ Lace cut)

| Field | Content |
|---|---|
| Kind | error-validation |
| Spec locus | §8.3.9 `opSupportLimits` PDF **46**; §9 Algorithms / Broadcasting PDF **287**; §14 Changes PDF **299**; builder/`dispatch` validation steps (PDF **32–33**, **67–68**); PAGE H/X SILENT mesh |
| Sighting method | `pdftotext -f 46 -l 46` / `-f 287 -l 287` / `-f 299 -l 299` (this pass); Pass 1 PAGE B+H |
| Eye-quote | “The opSupportLimits() exposes level of support that differs across implementations at operator level.” · “Broadcasting describes how WebNN treats tensors with different shapes during graph construction and computation.” · §14 Changes — non-normative change log since prior CR |
| Inputs | Context / builder / graph / tensors under Spec validation; optional support-limits probe |
| Outputs | Boolean validation results; TypeError / DOMException reject paths; `MLOpSupportLimits` record; algorithm outcomes (e.g. broadcast shapes) |
| Invariants | Validation / support limits / Changes / broadcasting are host-NN hygiene — **SILENT** for Lace append; **not** Φ gate / Lace cut / emission rule |
| Algorithm | See below |
| Complexity / termination | Finite checks per API call; halt on throw/reject or success path |
| Worked miniature | `dispatch` descriptor validation false → TypeError (PDF **32–33**); `build` operand validation (PDF **67–68**) |
| Lace stamp | **KEEP-read**; **SILENT-for-Lace-append**; **FORBID-as-emission-rule** (validation ≠ Φ gate / Lace cut) |
| Hands cite | PAGE H · PAGE X · AGENTS Implementation Law |
| Panel cite | **P-N8** · PAGE **B+H** |
| False friend | PAGE H/X SILENT mesh (validation ↛ Lace cut); FM rows as apt |
| Companion cite | cite-only; ≠ WebGPU device-lost as Lace cut (webgpu M-G9 different shelf) |
| Projection / hologram cite | Spec fail paths ≠ Lace append scheduler |
| Open gaps | Φ / emission `[GAP]`; ISSUE error-reporting gaps in Spec — do not invent Lace cuts from them |

**Algorithm**

1. **Preconditions.** Any Wave A API call in progress (M-N1…M-N7).  
2. **State.** Operands/tensors/graphs under Spec checks.  
3. **Steps.**  
   1. Apply Spec validation (descriptor match, builder ownership, destroy/export flags, permissions).  
   2. Optionally probe `opSupportLimits()` (PDF **46**) for operator support — not Lace capability law.  
   3. Apply §9 Algorithms (e.g. broadcasting PDF **287**) during construct/compute — host math only.  
   4. Treat §14 Changes (PDF **299**) as Spec history cite — not Lace changelog authority.  
   5. Refuse validation/support/Changes as Lace cut, append scheduler, or Φ / emission rule.  
4. **Choice points.** Sync throw vs promise reject vs timeline abort when lost.  
5. **Halt.** Error surfaced to script, or validation passed.  
6. **Output certificate.** Host-NN validation outcome (SILENT for Lace append).

---

### M-N9 — Security / privacy boundary (§3–5 threat / privacy / a11y · §5.3 WebGPU comparison)

| Field | Content |
|---|---|
| Kind | security-privacy |
| Spec locus | §3 Accessibility PDF **15**; §4 Security PDF **15–16**; §5 Privacy / Fingerprinting / Execution Time / §5.3 WebGPU Comparison PDF **19–20** |
| Sighting method | `pdftotext -f 15 -l 20` (this pass); Pass 1 PAGE G |
| Eye-quote | “This API is considered a powerful feature… all interfaces defined by this specification are only available in a secure context.” · “Unlike WebGPU, this API does not intrinsically support custom shader authoring…” · “This API is disabled by default in all cross-origin frames using the § 7.5 Permissions Policy Integration.” |
| Inputs | Browsing context (secure / permissions policy); optional GPUDevice-backed context (cite WebGPU security) |
| Outputs | Availability gates (SecureContext, `"webnn"` policy); threat/privacy/a11y guidance for implementers/authors |
| Invariants | Security/privacy/a11y text is host-NN / web-platform hygiene — **not** Lace law / AGENTS rewrite; §5.3 comparison ≠ identity merge with WebGPU; ≠ wasm64 swap |
| Algorithm | See below |
| Complexity / termination | Policy/secure-context checks per entry; guidance is non-algorithmic reading |
| Worked miniature | createContext rejects with `SecurityError` when not allowed to use `"webnn"` (PDF **28–29**) |
| Lace stamp | **KEEP-read**; **FORBID-as-Core-write** (≠ Lace law / AGENTS); **FORBID-as-WebGPU-conflation** (§5.3 ≠ identity merge) |
| Hands cite | PAGE G · PAGE X · AGENTS Implementation Law (do not rewrite from CRD) |
| Panel cite | **P-N9** · PAGE **G** |
| False friend | **FM-Webnn6** · PAGE X · **FM-Webnn8** (≠ wasm64) |
| Companion cite | webgpu-* cite-only for §5.3 / GPUDevice security notes; wasm-spec-3 cite-only (**FM-Webnn8**) |
| Projection / hologram cite | Threat text ≠ Lace law; Shadow embeds still under web platform gates |
| Open gaps | Φ / emission `[GAP]`; fingerprinting bucket policy — implementer concern, not Lace |

**Algorithm**

1. **Preconditions.** Document / worker attempting WebNN entry points.  
2. **State.** SecureContext + Permissions Policy `"webnn"` (default allowlist `'self'`).  
3. **Steps.**  
   1. Enforce SecureContext + powerful-feature expectations (§4 PDF **15–16**).  
   2. Enforce Permissions Policy; cross-origin frames disabled by default (§7.5).  
   3. Read §5 privacy mitigations / §5.3 WebGPU comparison (PDF **19–20**) as **different API** guidance — not shelf merge.  
   4. Read §3 a11y guidance (PDF **15**) as author guidance — not Lace ethics rewrite.  
   5. Refuse promoting this text into Lace law / AGENTS; refuse §5.3 as WebGPU identity; refuse WebNN as wasm64 target.  
4. **Choice points.** Embedding policy grants; GPUDevice-backed context inherits WebGPU security cite.  
5. **Halt.** Feature available under gates, or SecurityError / denied.  
6. **Output certificate.** Host-NN security/privacy boundary reading (Shadow only; NON-binding on Core).

---

## Wave B–D seeds (defer — not blocking)

- Per-operator deep cards beyond catalogue boundary  
- Multi-context / NPU device edge cases  
- Detailed `exportToGPU` transfer recipes beyond bridge cite  
- clock/hologram viewer NN embed implementation  

---

## Cross-links (standing)

| Target | Role |
|---|---|
| [`webnn-clipboard.md`](webnn-clipboard.md) | PAGE A–H/X · D1–D6 · FM-Webnn1…9 · D7 · **P3-M / P3-R** |
| [`webnn-pass-3-plan.md`](webnn-pass-3-plan.md) | This pass plan (EXECUTED) |
| [`webgpu-mechanisms.md`](webgpu-mechanisms.md) | HOST/GPU M-G\* — **cite-only; do not edit** |
| [`wgsl-mechanisms.md`](wgsl-mechanisms.md) | SHADER-LANG M-S\* — **cite-only; do not edit** |
| wasm-spec-3 mechanisms | wasm64 M-T\* — **cite-only; do not edit** |
| [`pointer-emission.md`](../pointer-emission.md) | Still DRAFT / `[GAP]` |

**Steward refuse (shoe in hands):** MLGraph ≠ strand · MLContext ≠ Graphic D · MLTensor ≠ store · `dispatch` ≠ Φ · operators ≠ WORD · builder ≠ Core constructor · WebNN ≠ WebGPU Device/Queue · WebNN ≠ WGSL · WebNN ≠ wasm64 · `exportToGPU` ≠ accept emission · validation ≠ Lace cut · security text ≠ Lace law. Emission `[GAP]`. No `src/`. Ascii: [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md).
