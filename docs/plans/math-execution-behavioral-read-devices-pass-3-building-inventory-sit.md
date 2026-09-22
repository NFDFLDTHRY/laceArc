# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 3 BUILDING-INVENTORY SIT

**Status:** PRE-PLAN ANALYSIS — NOT PASS 3 EXECUTION.
**Campaign:** Mathematical Execution Model — Behavioral Read Devices.
**Question:** is the six-reference technical building inventory itself correct, and is it modeled at the right abstraction for the current mathematical execution model S1–S10?
**Repository baseline:** Pass 2 complete; S9 generic read-device algebra + S10 observability court admitted; TARGET UNDECIDED; R3 carrier lifetime open; RM-A open; implementation closed.
**Implementation:** none.
**Target selection:** none.
**Carrier selection:** none.

---

## 0. Direct inventory verdict

The inventory has **the correct six source identities**, and the current SM-X-PLAT authority fence is correct.

The current **model of the inventory is not yet complete**.

Current repo shorthand places:

~~~text
Wasm · WebGPU · WGSL · WebNN · rustc · Cargo
~~~

on one broad platform / hardware / toolchain shelf.

That is adequate as an authority class.

It is too flat as an engineering/capability model.

The six sources occupy different planes, have directional dependencies, expose different lifetimes, and leave at least one required boundary outside their collective scope.

Pass-3 planning verdict:

~~~text
SOURCE SET:                 CORRECT
SOURCE HASH IDENTITY:       CORRECT
AUTHORITY FENCE:            CORRECT
CAPABILITY STRATIFICATION:  INCOMPLETE
INTEROP TOPOLOGY:           UNDER-MODELED
WASM HOST/EMBEDDER SOURCE:  MISSING
DURABLE CARRIER SOURCE:     CONDITIONALLY MISSING WHILE R3 REMAINS OPEN
WHOLE-INSTALLED-APP SCOPE:  NOT REPRESENTED BY THESE SIX ALONE
TARGET:                     UNDECIDED
~~~

---

## 1. Staked source identities

The six uploaded sources match the exact SHA-256 identities already recorded by Alignment Restart Pass 5.

| Source | SHA-256 | Actual source role |
|---|---|---|
| WebAssembly Specification 3.0 | 687e7364fca680205913985a2c40de4e1f82c5f22ac94fef436d26d145f70fce | core virtual ISA / validation / runtime semantics |
| WebGPU CRD 2026-09-15 | 6bc31a9e312fccd95bbeda5530dee1272579d4a7461dd3cf7600f47ca764afe1 | browser GPU API / resources / command submission / capabilities |
| WGSL CRD 2026-09-15 | 73dc9e35250c65261762407f5e5cc52d3bfdecf43fe45fff632ce71ce9f5eb6d | shader language executed through WebGPU pipelines |
| WebNN CRD 2026-09-10 | e1153218aee857e92a97171684680bb8916955248071190646ea403d1df53fdc | compiled neural-network inference graph API across CPU/GPU/NPU |
| rustc book | 4a30e62099f42a05efcb5d7777e2812a3711d742906ec3ef2b2092e0f4e74d3 | Rust compiler / target/codegen/toolchain facts |
| Cargo Book | 9d7048e11d030361117cbba11a811c35ad11d6afbfd7b9953f11940663c0a5 | Rust package/build orchestration / target/profile/dependency workflow |

No identity correction is required.

---

## 2. The six are not peer building blocks

A more faithful source-derived topology is:

~~~text
                         BUILD PLANE
                +---------------------------+
                | Cargo -> rustc -> artifact|
                +-------------+-------------+
                              |
                              | chosen Rust target
                              v
                     WebAssembly module
                              |
                  +-----------+-----------+
                  |  HOST / EMBEDDER      |
                  |  [SOURCE GAP HERE]    |
                  +-----+-----------+-----+
                        |           |
             imports /  |           | browser APIs
             exports    |           |
                        |           +----------------------+
                        |                                  |
                        v                                  v
               Wasm runtime state                    WebGPU API
                                                   / resources /
                                                  command timelines
                                                        |
                                                        v
                                                       WGSL
                                                 shader programs
                                                        |
                                                        v
                                                  GPU execution

                  HOST / EMBEDDER
                        |
                        +------------------------------+
                                                       |
                                                       v
                                                    WebNN
                                             compiled MLGraph /
                                             tensor inference
                                            CPU / GPU / NPU hint
                                                       |
                             +-------------------------+------------------+
                             |                                            |
                             | createContext(GPUDevice) /                 |
                             | exportable tensor                          |
                             v                                            v
                          WebGPU                               ArrayBuffer(View)
                           interop                             / Wasm-memory bytes
~~~

This graph does **not** mean all edges are mandatory.

It means the source roles are typed and directional.

---

# PART A — BUILD PLANE

## 3. Cargo

The Cargo source says Cargo:

- introduces package/manifest/lock metadata;
- resolves/fetches dependencies;
- invokes rustc or another build tool;
- configures targets, features and profiles;
- can compile standard-library crates through unstable build-std;
- can fetch from registries such as crates.io by default.

Therefore Cargo is:

~~~text
BUILD ORCHESTRATOR
~~~

not:
- a runtime;
- a browser API;
- a Lace store;
- proof that third-party dependencies are permitted.

### LaceArc consequence

The repo's zero-external-dependency rule is a **project build policy** imposed on Cargo usage.

Cargo itself does not provide that rule.

A future implementation must configure/use Cargo in a way that preserves the project law rather than treating Cargo defaults as architecture.

---

## 4. rustc

The rustc source defines:

- crate compilation;
- target selection through --target;
- codegen/link behavior;
- compiler configuration and target features;
- distinct Wasm targets and their support burdens.

Therefore rustc is:

~~~text
COMPILER / TARGET TRANSLATION PLANE
~~~

not:
- runtime semantics for Lace;
- browser embedding;
- durable storage;
- GPU dispatch;
- a proof of target availability on a particular installed machine.

Cargo typically constructs rustc invocations, but rustc can be driven independently.

### Current target relation

Pass 5 correctly separated:

~~~text
logical Lace Index
!= Rust usize
!= native pointer
!= Wasm address
~~~

Nothing in the new S9/S10 behavioral mathematics changes that result.

---

# PART B — CORE EXECUTION PLANE

## 5. WebAssembly core

The WebAssembly 3.0 source is explicit:

- Wasm is a portable low-level virtual ISA;
- modules contain functions/tables/memories/globals/imports/exports;
- linear memory is mutable raw bytes with bounded address semantics;
- address types are i32 or i64;
- execution is decode -> validate -> instantiate/invoke;
- there is **no ambient access to the environment**;
- interaction with I/O/resources occurs only through imported capabilities supplied by an embedder;
- the core spec explicitly does **not** define a specific embedding-environment API.

This means the current technical inventory must distinguish:

~~~text
WASM CORE
!=
BROWSER HOST / EMBEDDER
~~~

### Important correction

The WebAssembly core PDF is not a complete specification for:

- how JavaScript loads/instantiates a module;
- browser-level WebAssembly.Memory object behavior;
- host calls;
- access to storage;
- access to WebGPU/WebNN;
- browser lifecycle;
- PWA/offline behavior.

The core document itself says those are environment-specific concerns.

This is not a theoretical repo gap.

It is an explicit scope boundary in the source.

---

# PART C — GPU PLANE

## 6. WebGPU

The WebGPU source defines a host API over GPU capability:

- GPUAdapter and GPUDevice;
- buffers/textures/resources;
- queues and command buffers;
- compute/render pipelines;
- feature and limit negotiation;
- content/device/queue timelines;
- internally asynchronous operations;
- device loss and invalidation;
- resource usage compatibility and synchronization;
- fallible memory allocation.

Its memory-model discussion also makes clear that script-owned CPU memory, driver staging memory, and GPU memory may require transfers/copies depending on implementation.

Therefore WebGPU is:

~~~text
HOST GPU RESOURCE + COMMAND API
~~~

not:
- the shader language itself;
- a persistent carrier;
- a guarantee of zero-copy;
- a guarantee of actual hardware limits beyond exposed/negotiated capabilities;
- a Lace semantic engine.

### Mathematical-model relation

WebGPU can realize bounded **derived** compute/projection work.

The current one-authority rule forbids GPU resource state from silently becoming authoritative Lace state.

---

## 7. WGSL

WGSL is explicitly the shader language for WebGPU.

It defines:

- shader modules;
- statically typed values;
- compute/render shader entry points;
- private/function/workgroup/storage address spaces;
- host-shareable buffer layouts;
- pointers/references as shader memory views;
- workgroup/subgroup/atomic/barrier behavior;
- shader creation/pipeline creation/execution lifecycle;
- language/resource limits.

WGSL therefore sits **under WebGPU execution**.

It is not an independent host runtime.

### Critical false friend

~~~text
WGSL ptr<...>
!= Lace logical Index
!= Graphic-D POINTER
~~~

WGSL pointer/reference types describe shader memory views.

They supply no Lace semantic authority.

---

# PART D — ML INFERENCE PLANE

## 8. WebNN

The WebNN source defines:

- a hardware-agnostic neural inference API;
- MLGraphBuilder as a graph-construction/data-definition API;
- compiled immutable MLGraph;
- tensors/operands/operators;
- asynchronous dispatch;
- hardware execution across CPU/GPU/NPU;
- implementation-controlled device selection, with developer preference hints;
- operator support/capability queries.

It also defines real interop surfaces:

- an MLContext can be created from a GPUDevice;
- exportable MLTensor can become a GPUBuffer;
- export may copy; zero-copy is not guaranteed;
- while exported, GPU access is exclusive;
- Uint8Array can represent bytes from a WebAssembly.Memory region.

Therefore WebNN is:

~~~text
BOUNDED COMPILED INFERENCE GRAPH ACCELERATOR
~~~

not:
- a general replacement for S9 device logic;
- a general programmable GPU language;
- an authoritative semantic judge;
- a guarantee of GPU/NPU execution;
- a guarantee of zero-copy interop.

### S10 consequence

The WebNN source itself includes inference use cases such as emotion analysis and warns that such classification can mis-label users.

That aligns directly with S10:

~~~text
model output
!= epistemic promotion
~~~

A WebNN output can become device-local/model evidence.

It does not become SEE-L merely because its input was Lace-derived.

---

# PART E — THE MISSING HOST PLANE

## 9. The six-source shelf has a sourced hole

The WebAssembly core source explicitly delegates embedding to complementary environment-specific APIs.

The current repo already noticed this in Pass 5 through the unresolved WebAssembly JavaScript API / WebAssembly.Memory evidence need.

That gap survives.

We currently have source authority for:

~~~text
Rust build -> Wasm core
~~~

and source authority for separate Web APIs:

~~~text
WebGPU
WebNN
~~~

but not a staked source describing the browser-side Wasm embedding contract that connects them.

### Why this matters after S9/S10

S9 defines:

\[
\mathcal D_\theta=(Q,G,\Omega,\Delta,\omega).
\]

The external/context domain \(G\) cannot magically enter Wasm core.

The Wasm source says environment access must come through imported/embedder capabilities.

Therefore any implementation mapping of:

\[
G\to\mathcal D
\]

needs a host/embedder contract.

Likewise, any route from Wasm to browser storage, WebGPU or WebNN must be host-mediated unless another sourced interface explicitly says otherwise.

### Inventory status

~~~text
HOST / EMBEDDER:
    MISSING-SOURCE
~~~

This is the most important modeling defect in the current six-item flat inventory.

---

# PART F — PERSISTENCE / CARRIER

## 10. None of the six sources closes R3

None of the six documents defines a durable application data carrier for Lace.

- Wasm linear memory is runtime mutable memory, not durable storage.
- WebGPU resources are device resources and can be lost/destroyed.
- WGSL shader memory is execution-local/resource-backed.
- WebNN tensors/contexts are inference execution state and can be destroyed/lost/exported.
- rustc and Cargo are build-time tools.

Therefore:

~~~text
DURABLE LACE CARRIER
!= any of the six sources
~~~

Pass 6 correctly left R3 lifetime open.

### Important nuance

Because R3 is still open, the missing storage source is **conditional**, not yet a reason to select IndexedDB, OPFS or another backend.

Correct status:

~~~text
if R3 selects volatile:
    no durable-carrier source is required for that product lifetime

if R3 selects durable:
    a primary source for the chosen browser carrier becomes mandatory
~~~

The inventory should expose this dependency rather than selecting a storage API early.

---

# PART G — WHOLE-APPLICATION SCOPE

## 11. Execution inventory vs installed-application inventory

The current six sources can reasonably be called the **compute/toolchain building shelf** after proper stratification.

They are not a complete inventory of an installable offline Web application.

They do not collectively define:

- browser application lifecycle;
- installability;
- service workers;
- Cache Storage;
- browser persistence;
- document/worker execution model in general;
- the Wasm JavaScript binding.

Some of those concerns exist elsewhere in current repo kit/distribution work.

They should not be silently folded into these six.

Pass 3 should therefore split:

~~~text
TECHNICAL BUILDING INVENTORY
    ├─ compute/toolchain shelf
    ├─ host/embedder shelf
    ├─ carrier/persistence shelf
    └─ distribution/application shelf
~~~

The six current sources populate mostly the first shelf plus two host accelerator APIs.

---

# PART H — S1–S10 CROSSWALK

## 12. S1–S4 — authoritative Lace mathematics

### Needed technical capability

- execute ordered algorithms;
- address finite state;
- enforce bounds/refusal;
- represent WORD/POINTER encoding once selected;
- execute binary Join/root/search/sampling algorithms.

### Six-source mapping

**Wasm:** candidate low-level execution substrate.

**rustc/Cargo:** candidate build route into that substrate.

**WebGPU/WGSL:** optional derived acceleration for bounded computations, not authority.

**WebNN:** no default role in authoritative Lace mechanics.

### Fence

No technical source supplies:
- WORD semantics;
- root law;
- Join law;
- RM-A;
- accepted row encoding.

---

## 13. S3 derived sampling/search

S3 contains computationally heavy but reconstructible reads.

Possible source-grounded realization classes include:

~~~text
CPU / Wasm:
    general scan/replay/read implementation candidate

WebGPU + WGSL:
    data-parallel bounded kernel candidate

WebNN:
    only if a later required subproblem is actually representable as a compiled neural graph
~~~

The math model does not require any accelerator.

Accelerator results remain derived and must preserve replay/witness rules.

---

## 14. S9 behavioral read devices

For:

\[
\mathcal D_\theta=(Q,G,\Omega,\Delta,\omega)
\]

the current technical shelf maps only partially.

### Q

Can be held in ordinary application/Wasm/host working state.

No source requires GPU/NN custody.

### G

Requires host/embedder input pathways when the context originates outside the Wasm module.

**Current sourced host bridge is missing.**

### Omega

May use:
- Wasm/CPU derived reads;
- WebGPU/WGSL bounded acceleration;
- WebNN only for explicitly admitted graph-inference subproblems.

### Delta

General source-specific transition logic is not naturally guaranteed by WebNN's fixed graph operator model.

Wasm/host control remains the general candidate.

### omega

Witnesses must name stable mathematical/Lace provenance.

A GPU buffer address, WGSL pointer, ML tensor identity or Wasm native address is not automatically a stable Lace witness.

---

## 15. S10 observability court

S10 says:

~~~text
Lace-grounded
!= Lace-identifiable
~~~

The technical sources must not weaken that rule.

### WebGPU

Machine limits, timing, adapter/device state and resource failure are technical/context observations.

They are not Lace semantic truth.

### WebNN

Inference outputs are model computations.

They must remain model/local/counterfactual evidence according to the source-specific device and S10 witness stamps.

The WebNN emotion-analysis example is especially instructive: the source itself acknowledges misclassification risk.

### WGSL

Shader-computed values inherit the provenance of their inputs and declared algorithm.

A shader result does not become SEE-L merely because it ran on a GPU.

---

# PART I — INTEROP CONTRACTS ACTUALLY SUPPORTED BY THE SOURCES

## 16. Confirmed interop edges

### Cargo -> rustc

Cargo constructs compiler invocations and target/profile/dependency configuration.

### rustc -> WebAssembly artifact

Possible only after a Rust target is chosen and toolchain support is established.

Target remains undecided.

### host -> WebGPU -> WGSL

WebGPU creates shader modules/pipelines and dispatches WGSL shader work.

### host -> WebNN

WebNN constructs/compiles/dispatches neural graphs.

### WebNN <-> WebGPU

The source supports:
- WebNN context from an existing GPUDevice;
- exportable MLTensor to GPUBuffer;
- exclusive access while exported;
- possible copies.

### Wasm bytes -> WebNN buffer input

The WebNN source explicitly notes a Uint8Array may represent a slice of WebAssembly.Memory.

This is a **host-visible byte interoperability path**, not proof of shared semantic ownership or zero-copy.

---

## 17. Interop edges the six sources do not establish

They do not establish:

- Wasm directly invoking WebGPU without a host bridge;
- Wasm directly invoking WebNN without a host bridge;
- WebGPU mutating authoritative Lace;
- WGSL pointers representing Lace addresses;
- WebNN tensors serving as durable Lace storage;
- WebNN inference output becoming a Lace relation;
- zero-copy between Wasm, WebNN and GPU as a universal property;
- browser persistence from Wasm linear memory.

Those require separate source/implementation evidence.

---

# PART J — SPECIFICATION VS DEVICE EVIDENCE

## 18. Another inventory axis is currently under-modeled

A specification defining a capability does not prove the current browser/device exposes or sustains it.

Pass 3 should distinguish at least:

~~~text
SOURCE-SPECIFIED
    specification defines the capability

TOOLCHAIN-SUPPORTED
    chosen rustc/Cargo target/toolchain can produce/use the artifact

HOST-EXPOSED
    browser/runtime exposes the needed API

DEVICE-ADMITTED
    required feature/limit/operator is actually admitted on target device

EXECUTED
    real workload ran

CORRECT
    output passed its mathematical falsifier

SUSTAINED
    survives required lifecycle / load / repetition
~~~

This is especially important for:

- WebGPU features/limits;
- WebNN operator support;
- rustc target tiers;
- memory availability;
- device loss;
- optional acceleration.

The six reference documents establish primarily **SOURCE-SPECIFIED** facts.

They are not Pixel execution evidence.

---

## 19. Technical false-friend ledger

| Similar-looking term | Must not be equated |
|---|---|
| Wasm memory address | Lace logical Index |
| Rust usize / pointer | Lace logical Index |
| Wasm table/reference | Lace POINTER |
| WGSL ptr / reference | Lace POINTER |
| GPUBuffer offset | Lace logical Index |
| WebNN MLOperand graph edge | Lace retained relation |
| WebNN MLGraph | Lace graph / Star |
| Cargo dependency graph | Lace topology |
| WebGPU timeline | Coffee Cup causal time |
| GPU timestamp | source event time unless explicitly used as external context |
| WebNN Emotion Analysis output | HCC Emotion state / epistemic truth |
| ML tensor | Lace store |
| GPU memory | durable carrier |

This false-friend layer should become part of the technical inventory model.

---

## 20. Inventory answer after the sit

The current repo got two things right:

1. the six source documents are the correct staked technical references;
2. SM-X-PLAT correctly denies them semantic/write authority over Lace.

It got one major thing only partially right:

3. it models them as a flat technical shelf rather than a typed capability/dependency graph.

And it has two intentional/real gaps:

4. the browser Wasm **host/embedder contract is unsourced**;
5. durable carrier/persistence is **not in this shelf** and remains conditional on R3.

The missing host plane is actionable now.

The durable-carrier gap should remain exposed rather than prematurely filled.

---

## 21. What Pass 3 should do

Pass 3 should not select technology.

It should make the building inventory mathematically/architecturally honest by:

1. replacing the flat six-peer view with a typed capability graph;
2. mapping every technical capability to S1–S10 obligations and fences;
3. separating specification support from actual device admission/execution;
4. formalizing host/embedder dependence;
5. formalizing accelerator non-authority;
6. mapping real WebNN/WebGPU/Wasm interoperability without assuming zero-copy;
7. exposing the host-source gap;
8. preserving R3 carrier selection as open;
9. deciding which repo inventory/clipboard descriptions need correction;
10. only then preparing later source-specific behavioral-device realization work.

That is the basis for the Pass 3 plan.
