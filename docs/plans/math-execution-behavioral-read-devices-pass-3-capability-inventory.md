# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 3 technical capability inventory

**Status:** EXECUTED PASS-3 ARTIFACT.
**Campaign:** Mathematical Execution Model — Behavioral Read Devices.
**Pass:** 3 — MAP THE BUILDING FLOOR.
**Execution base:** 08f5cc54290659cb8587167ec171344dd09adc5c.
**Source court:** the six human-staked technical references at their already-recorded SHA identities.
**Mathematical court:** current \`docs/math-execution-model.md\` S1–S10 + Alignment Restart Passes 5–6.
**Implementation:** none.
**Target:** TARGET UNDECIDED.
**Carrier:** R3 OPEN.
**RM-A:** OPEN / MISSING-A.

---

## 0. Inventory verdict

The six source identities are correct.

The old flat presentation:

~~~text
Wasm · WebGPU · WGSL · WebNN · rustc · Cargo
~~~

is not a faithful capability model.

Pass 3 replaces it with a typed technical inventory:

~~~text
BUILD / ORCHESTRATION
    Cargo
    rustc

PORTABLE CORE EXECUTION
    WebAssembly core

HOST / EMBEDDER
    [MISSING PRIMARY SOURCE]

GPU API / RESOURCE CONTROL
    WebGPU

GPU PROGRAM LANGUAGE
    WGSL

NEURAL INFERENCE API
    WebNN

CARRIER / DURABILITY
    [R3-CONDITIONAL SOURCE GAP]

INSTALLED-APPLICATION / DISTRIBUTION
    separate source surface; not defined by these six
~~~

This is a classification of source roles, not an implementation selection.

---

## 1. Evidence ladder

For every technical capability Pass 3 distinguishes:

| Rung | Meaning |
|---|---|
| **T0 SOURCE-SPECIFIED** | a staked source defines the capability |
| **T1 TOOLCHAIN-SUPPORTED** | selected/available toolchain can produce/use required artifact/mode |
| **T2 HOST-EXPOSED** | target browser/runtime exposes the required API |
| **T3 DEVICE-ADMITTED** | actual target device admits required feature/limit/operator |
| **T4 EXECUTED** | the required workload ran on target |
| **T5 CORRECT** | output passed its mathematical/device falsifier |
| **T6 SUSTAINED** | capability survived required lifecycle/load/repetition |

Rule:

\[
T_k\not\Rightarrow T_{k+1}.
\]

The six reference documents primarily provide **T0** evidence.

Existing historical Pixel/browser probes may provide higher-rung evidence for specific surfaces, but Pass 3 does not import those observations as blanket current capability.

---

# PART A — BUILD PLANE

## 2. Cargo

### Source-defined role

Cargo is the Rust package/build orchestrator.

The source establishes:
- package and target metadata;
- dependency declaration/resolution;
- lockfile behavior at general Cargo scope;
- profiles/features;
- build targets;
- invocation of rustc or another build tool;
- unstable \`build-std\` support for compiling standard-library crates as part of the crate graph.

The current staked Cargo source specifically establishes:
- bare \`-Z build-std\` implicitly builds \`core\`, \`std\`, \`alloc\`, \`proc_macro\`;
- an explicit comma-separated list can select standard-library crates;
- \`core\` alone is expressible as a list;
- \`rust-src\`, nightly Cargo, nightly rustc, and passing the flag to all Cargo invocations are required for the documented current feature;
- \`build-std-features\` controls standard-library features.

### Source-defined lifetime

Build-time only.

Cargo metadata, resolver state, caches and artifacts are not runtime Lace state.

### Source-defined failure/debt

- dependency resolution/build can fail;
- unstable features may require nightly;
- source does not establish the exact build-std lockfile representation needed by the historical receipt proposal;
- source does not establish the exact compiler_builtins closure.

### S1–S10 realization relevance

Cargo may realize the **build recipe** for whichever implementation is later selected.

It realizes none of the S1–S10 mathematical semantics by itself.

### Hard fence

\[
CargoGraph\neq LaceTopology.
\]

Project law:

~~~text
zero external dependencies
~~~

constrains Cargo usage.

Cargo does not supply that law.

### Pass-3 classification

**BUILD ORCHESTRATOR · T0 source-specified · required only if Cargo is selected as the build driver.**

---

## 3. rustc

### Source-defined role

rustc compiles a Rust crate and controls:
- target selection;
- code generation;
- crate type/output;
- target features;
- linking behavior;
- compiler diagnostics/receipts;
- target-specific pointer-width/cfg facts.

The staked rustc source records distinct Wasm target behavior and support burden.

### Current target court

Pass 3 preserves:

\[
LaceIndex
\neq
Rust\ usize
\neq
native\ pointer
\neq
WasmAddress.
\]

Documented target existence/support tier is not target selection.

### Source-defined failure/debt

For current Wasm target candidates:
- support level/toolchain burden differs;
- some target features/proposals may be enabled/disabled differently;
- historical build recipe rows remain NOT_RUN;
- no target artifact is produced by Pass 3.

### S1–S10 relevance

rustc may compile a future Rust realization of:
- S1–S4 authoritative algorithms;
- S3 derived readers;
- S9/S10 host-side/device logic.

It does not establish those algorithms.

### Pass-3 classification

**COMPILER / TARGET TRANSLATION · T0 source-specified · target remains UNDECIDED.**

---

# PART B — PORTABLE CORE EXECUTION

## 4. WebAssembly core

### Source-defined role

WebAssembly 3.0 defines a portable low-level virtual ISA with:
- typed values;
- functions;
- structured control;
- tables;
- linear memories;
- globals;
- imports/exports;
- validation;
- instantiation/invocation;
- traps;
- address types \`i32 | i64\`.

The source says modules are the unit of deployment/loading/compilation.

### Critical source scope

The core specification explicitly says it does **not** define:
- how Wasm interacts with a specific execution environment;
- how the environment invokes it.

It says those belong to complementary embedding-environment APIs.

It also states that Wasm has no ambient environment access; external resource/I/O interaction is through functions supplied by the embedder and imported by the module.

### Source-defined lifetime

A Wasm instance has runtime state:
- memories;
- tables;
- globals;
- execution stack.

This is runtime state, not durable application storage.

### Source-defined failure/debt

- validation may fail;
- memory accesses may trap;
- memory growth may fail;
- implementation limits bind;
- embedding details are external to the core spec.

### S1–S10 realization relevance

Candidate general CPU/runtime substrate for:
- ordered Lace operations;
- prefix reads;
- derived sampling/search;
- local S9/S10 device logic.

No current mathematical section requires Wasm specifically.

### Hard fences

\[
WasmAddress\neq LaceIndex.
\]

\[
WasmReference\neq LacePointer.
\]

\[
WasmMemory\neq DurableCarrier.
\]

\[
WasmCore\neq BrowserHost.
\]

### Pass-3 classification

**PORTABLE CORE EXECUTION ISA · T0 source-specified · browser/embedder source gap remains.**

---

# PART C — GPU API / SHADER LANGUAGE

## 5. WebGPU

### Source-defined role

WebGPU is a Web API for GPU rendering/compute.

The source establishes:
- adapter/device objects;
- buffers/textures;
- bind groups;
- render/compute pipelines;
- command encoders/buffers;
- queues;
- content/device/queue timelines;
- feature and limit negotiation;
- asynchronous behavior;
- device loss/invalidation;
- fallible resource allocation;
- resource usage/synchronization rules.

The source also says user agents may expose normalized/binned limits rather than raw hardware limits.

### Memory/copy model

The source explicitly permits:
- process-boundary transfer;
- driver staging memory;
- dedicated GPU memory transfer;
- implementations that avoid some copies in favorable cases.

Therefore:

\[
WebGPUInterop\not\Rightarrow ZeroCopy.
\]

### Source-defined lifetime

GPU resources are device-owned runtime resources.

Loss/destruction of the device can invalidate dependent objects.

### S1–S10 realization relevance

Candidate optional accelerator for:
- bounded data-parallel derived reads;
- sampling/projection;
- some reductions/search substeps;
- visualization.

No WebGPU state gains Lace authority.

### ACCEL-1

Because current Lace law has one authoritative retained history and WebGPU resources are device-lifetime resources that can be lost/destroyed:

\[
\boxed{GPUState\notin AuthoritativeLace.}
\]

GPU state may be:
- derived working state;
- cache;
- output staging;
- projection state.

If losing it changes Lace truth, the implementation violates the current authority model.

### Pass-3 classification

**GPU API / RESOURCE CONTROL · optional derived accelerator · T0 source-specified.**

---

## 6. WGSL

### Source-defined role

WGSL is the shader language for WebGPU.

The source establishes:
- shader modules/entry points;
- compute/render shader stages;
- statically typed values;
- function/private/workgroup/uniform/storage address spaces;
- host-shareable buffer layouts;
- reference/pointer types as memory views;
- atomics/barriers/subgroups;
- shader/pipeline/execution lifecycle;
- explicit shader complexity/resource limits.

### Pointer false friend

WGSL explicitly treats pointers as typed memory views parameterized by address space, store type and access mode.

WGSL does not permit arbitrary integer↔pointer conversion.

Therefore:

\[
\boxed{WGSLPtr\neq LacePointer}
\]

and:

\[
\boxed{WGSLAddress\neq LaceIndex.}
\]

### Kernel suitability classes

Source-supported execution shapes include:

| Class | WGSL suitability |
|---|---|
| embarrassingly/data parallel | strong candidate |
| bounded reduction | candidate |
| scan-like | candidate with algorithm-specific workgroup/global coordination |
| synchronization-sensitive | constrained by WGSL/WebGPU memory/uniformity rules |
| host-serial authority transition | not naturally a shader responsibility |

This is capability classification, not a kernel plan.

### Pass-3 classification

**GPU PROGRAM LANGUAGE under WebGPU · optional derived accelerator language · T0 source-specified.**

---

# PART D — NEURAL INFERENCE

## 7. WebNN

### Source-defined role

WebNN is a low-level Web API for neural-network inference hardware acceleration.

The source establishes:
- \`MLGraphBuilder\` constructs graph data but does not execute it;
- \`build()\` compiles to immutable \`MLGraph\`;
- MLOperands represent graph data flow;
- MLTensors contain runtime data;
- \`dispatch()\` executes asynchronously;
- execution may use CPU, GPU or NPU;
- user options are preferences/hints unless a specific GPUDevice context is supplied;
- support limits are queryable.

### WebGPU interoperability

The source establishes:
- \`MLContext\` may be created from a \`GPUDevice\`;
- exportable MLTensors may be exported as GPUBuffer;
- export support is implementation-dependent;
- while exported, GPU access is exclusive;
- zero-copy is not guaranteed;
- export may require copy-out/copy-back.

### Wasm-memory byte bridge

The source explicitly says a \`Uint8Array\` may represent a slice of a \`WebAssembly.Memory\` instance for WebNN buffer input.

This is representation compatibility through the host API.

It is not:
- direct Wasm→WebNN invocation;
- zero-copy guarantee;
- shared semantic ownership.

### ML-1 epistemic authority

Let:

\[
y_{ML}=F_\theta(x).
\]

Technical inference does not upgrade evidence class.

Therefore:

\[
\boxed{x\in SEE-L\not\Rightarrow y_{ML}\in SEE-L.}
\]

A model output remains subject to S10 support/provenance rules.

The source itself gives a useful bounded falsifier: its emotion-analysis accessibility guidance warns that such systems can mis-label/mis-classify users.

Therefore:

~~~text
WebNN emotion classifier output
!= HCC Emotion truth
~~~

without a separately justified source/device model.

### Pass-3 classification

**COMPILED NEURAL INFERENCE API · optional bounded accelerator · T0 source-specified.**

---

# PART E — MISSING / CONDITIONAL PLANES

## 8. Host / embedder

Current six-source corpus does not contain the environment-specific Wasm Web embedding specification/API.

The Wasm core source itself proves that such an environment-specific layer exists outside core scope.

Therefore:

~~~text
HOST / EMBEDDER
= architectural requirement when Wasm must access G or Web APIs
= MISSING PRIMARY SOURCE in this six-source corpus
~~~

This gap does **not** block S1–S10 mathematics.

It **does** block a source-complete browser implementation map for:
- external/context input G entering a Wasm-hosted device;
- host-mediated Wasm↔WebGPU;
- host-mediated Wasm↔WebNN;
- browser-level Wasm memory object behavior.

---

## 9. Carrier / durability

No current technical source defines durable Lace persistence.

If:

\[
R3=volatile,
\]

a durable carrier source may be unnecessary for that product lifetime.

If:

\[
R3=durable,
\]

a primary source for the chosen browser persistence/carrier API becomes mandatory.

Pass 3 leaves:

\[
R3=[OPEN].
\]

No persistence API is selected.

---

## 10. Installed application / distribution

The six technical references are not a complete installed-WebApp source set.

They do not collectively define:
- service-worker lifecycle;
- installability;
- Cache Storage;
- durable browser storage;
- document/worker lifecycle generally;
- PWA update lifecycle.

Those belong to a separate distribution/application source surface.

---

# PART F — S1–S10 CROSSWALK

## 11. S1–S4 authoritative mechanics

| Mathematical obligation | General CPU/Wasm candidate | WebGPU/WGSL | WebNN | Authority result |
|---|---|---|---|---|
| Arrive one WORD | suitable candidate | unnecessary; host-serial authority path preferred | no justified role | authoritative only at lawful append boundary |
| unseen/root recovery | prefix scan/index candidate | bounded scan/reduction candidate | no default role | derived read |
| RootTouch | ordinary finite-set transition | unnecessary | none | append only through Core law |
| binary Join | ordinary finite transition | unnecessary | none | append only through Core law |
| finite grounding | iterative CPU/Wasm candidate | possible bounded acceleration for selection/precompute, not append authority | no default role | retained Join remains Core transition |
| capacity/refusal | ordinary runtime/carry logic | GPU limits may inform accelerator refusal only | tensor/operator limits inform WebNN refusal only | Core carrier refusal remains host/Core concern |
| carrier access | host/Wasm candidate after carrier selected | not durable authority | not durable authority | R3 open |

No row supplies RM-A.

---

## 12. S3 derived sampling/search

| Read | Candidate plane(s) | Technical note | Required authority |
|---|---|---|---|
| prefix scan | CPU/Wasm | sequential replay naturally expressible | derived |
| root lookup | CPU/Wasm; optional GPU reduction if justified | needs G1 policy later | derived |
| Reach traversal | CPU/Wasm; GPU only after bounded representation/algorithm proof | pointer-chasing may be poor GPU shape | derived |
| contiguous sampling | CPU/Wasm or WebGPU/WGSL | natural bounded data-parallel candidate | derived |
| recurrence/overlap | CPU/Wasm or WebGPU/WGSL reductions | must preserve replayable support | derived |
| explicit frontier search | CPU/Wasm; selective GPU assistance | stateful frontier may remain host-controlled | derived |
| projection | WebGPU/WGSL strong candidate | visualization/projection only | view |

WebNN has no default role in these structural reads unless a later admitted subproblem is explicitly formulated as a neural inference graph.

---

## 13. S9 device chassis

For:

\[
\mathcal D_\theta=(Q,G,\Omega,\Delta,\omega),
\]

technical mapping is:

### Q

Candidate application/host/Wasm working state.

GPU/ML custody is optional and workload-specific.

### G

External/context input requires a host/embedder path when it originates outside Wasm state.

This is where **GAP-HOST** matters most.

### Omega

Possible realization:
- CPU/Wasm structural reads;
- WebGPU/WGSL bounded derived kernels;
- WebNN only for admitted inference subproblems.

### Delta

General source-specific control/state transition is naturally host/Wasm candidate machinery.

WebGPU/WebNN may accelerate subfunctions but are not assumed to host arbitrary device semantics.

### omega

Witnesses must remain logical/replayable:

\[
\omega
\not=
GPUBufferOffset
\]

by default, and:

\[
\omega
\not=
WGSLPointer
\]

by default.

A technical address becomes part of a witness only through an explicit representation contract that maps it back to stable logical evidence.

---

## 14. S10 observability court

Pass 3 adds the invariant:

\[
\boxed{ComputePlane(y)\not\Rightarrow EvidenceClass(y).}
\]

Examples:

- GPU-computed structural reduction may remain SEE-L if the algorithm is purely derived from pointable Lace evidence and EP-1 support is preserved.
- WebNN inference over Lace-derived input is not automatically SEE-L.
- a GPU timestamp is SEE-G technical context unless a later source/device contract makes it event time.
- a device limit is SEE-G technical context, not Lace truth.

Technical placement changes execution, not epistemic authority.

---

## 15. Capability inventory verdict

### Source set

**SOURCE SET CORRECT.**

### Capability model

**CAPABILITY GRAPH SOUND WITH SOURCE GAPS.**

### Host boundary

**HOST DEPENDENCE PROVED / SOURCE MISSING.**

### Accelerator authority

**ACCELERATOR NON-AUTHORITY PROVED.**

### Technical crosswalk

**TECHNICAL CROSSWALK SOUND WITH OPTIONAL ACCELERATORS.**

### Completeness

**COMPUTE/TOOLCHAIN SHELF COMPLETE WITH HOST GAP.**

**WHOLE-APP INVENTORY INCOMPLETE BY DESIGN.**

**DURABLE-CARRIER SOURCE DEFERRED BY R3.**
