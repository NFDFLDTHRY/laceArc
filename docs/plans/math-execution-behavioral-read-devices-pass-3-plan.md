# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 3 PLAN

**Status:** EXECUTED 2026-09-21.
**Campaign:** Mathematical Execution Model — Behavioral Read Devices.
**Pass:** 3.
**Pass name:** **MAP THE BUILDING FLOOR — technical capability graph, host boundary, and accelerator authority.**
**Pre-plan analysis:** [Pass 3 building-inventory sit](math-execution-behavioral-read-devices-pass-3-building-inventory-sit.md).
**Inherits:** current S1–S10 mathematical execution model; Alignment Restart Passes 5–6 target/domain/carrier court; current clipboards and SM-X-PLAT authority fence.
**Source corpus:** WebAssembly 3.0 · WebGPU 2026-09-15 · WGSL 2026-09-15 · WebNN 2026-09-10 · rustc book · Cargo Book, at the six already-staked SHA identities.
**Implementation:** none.
**Target:** TARGET UNDECIDED.
**R3 carrier:** OPEN.
**RM-A:** OPEN / MISSING-A.
**Full source-specific behavioral devices:** still deferred.
**Execution claims:** maps `b744002b598814566e36e456c2ab80767d55cf72` · clipboards `08f5cc54290659cb8587167ec171344dd09adc5c`.
**Capability inventory:** `c76f86bf4e89993eb18fa1660cae9b8dba80a019`.
**Interop boundaries:** `8426b647bb29edafc29fd403c8bfb58bf03757d4`.
**Source-gap ledger:** `74c5cb8d5ac01dabe37ac98d9482b2d490e36b9e`.
**Clipboard taxonomy:** `bec490a787bbc9bfdfc2d6f5be19d05e17970199`.
**Wasm host-scope correction:** `22f649f3f359713572c07d4348e6448bffa476c8`.
**Primary model S11:** `d9477389f83672b9949be299556ae8eab47e65f6`.
**Findings:** `b825ae20086bc2e02c46aa02474492ca7073b3db`.
**Final verdict:** **SOURCE SET CORRECT · CAPABILITY GRAPH SOUND WITH SOURCE GAPS · HOST DEPENDENCE PROVED / SOURCE MISSING · ACCELERATOR NON-AUTHORITY PROVED · TECHNICAL CROSSWALK SOUND WITH OPTIONAL ACCELERATORS · S11 ADMITTED WITH SOURCE GAPS.**

---

## 0. Pass-3 question

> **Can the project replace its flat six-item technical shelf with a source-grounded capability/dependency graph that tells us exactly which building material can realize each S1–S10 mathematical obligation, which interop edges really exist, which boundaries remain unsourced, and which technical states remain derived rather than authoritative?**

Pass 3 is not a target-selection pass.

It is an **inventory-model correction pass**.

---

## 1. Starting verdict inherited from the sit

Pass 3 begins with these hypotheses to attack:

~~~text
SOURCE SET:                 CORRECT
SOURCE HASH IDENTITY:       CORRECT
AUTHORITY FENCE:            CORRECT
CAPABILITY STRATIFICATION:  INCOMPLETE
INTEROP TOPOLOGY:           UNDER-MODELED
WASM HOST/EMBEDDER SOURCE:  MISSING
DURABLE CARRIER SOURCE:     CONDITIONAL ON R3
WHOLE-INSTALLED-APP SCOPE:  OUTSIDE THE SIX-SOURCE COMPUTE SHELF
~~~

If the detailed mapping contradicts any row, the row must change.

---

## 2. Authority rule

The existing SM-X-PLAT fence remains the governing authority rule:

Technical/platform/toolchain sources may establish:

- available primitives;
- type/address/resource models;
- resource ceilings;
- synchronization/execution constraints;
- build/target facts;
- interop contracts;
- physical feasibility constraints.

They may **not** establish:

- WORD/root/Join semantics;
- RM-A;
- pointer acceptance;
- behavioral truth;
- source-variable observability;
- human acceptance;
- target choice by analogy.

Pass 3 may refine the inventory taxonomy without weakening this fence.

---

## 3. Claims / stations required when executing

Pass 3 will touch two authority surfaces and must claim them separately according to repo coordination law.

### maps

Needed for:

- Pass-3 plan products/findings;
- conditional S11 in math-execution-model;
- any root-level map that depends on the corrected technical topology.

### clipboards

Needed for:

- correcting the flat platform/toolchain classification in clipboards README;
- adding a source-grounded technical capability graph or entrance summary under docs/clipboards;
- reconciling individual clipboard entrances only where current wording falsely implies peer status or unsupported direct interop.

No law/graphics station should be needed unless execution discovers an actual authority contradiction.

---

## 4. Required Pass-3 products

### P3-A — technical capability inventory

Create:

docs/plans/math-execution-behavioral-read-devices-pass-3-capability-inventory.md

It must classify each source into a plane and list:

- source-defined primitives;
- source-defined lifetime/state;
- source-defined capability limits;
- source-defined failure modes;
- what it can realize from S1–S10;
- what it cannot establish;
- whether it is required, optional, conditional, or merely candidate machinery.

### P3-B — interoperability and boundary map

Create:

docs/plans/math-execution-behavioral-read-devices-pass-3-interop-boundaries.md

It must map every source-backed edge:

- Cargo -> rustc;
- rustc -> target artifact;
- host/embedder -> Wasm imports/exports;
- host -> WebGPU -> WGSL;
- host -> WebNN;
- WebNN <-> WebGPU;
- host-visible Wasm bytes -> WebNN input.

It must separately list unsupported/unproven edges.

### P3-C — missing-source / deferred-source ledger

Create:

docs/plans/math-execution-behavioral-read-devices-pass-3-source-gaps.md

At minimum:

- **GAP-HOST:** browser/embedder contract for Wasm;
- **GAP-CARRIER:** durable browser carrier source, conditional on R3;
- **GAP-APP:** whole installed/offline application lifecycle sources, outside the current compute shelf unless a later pass explicitly brings them in.

The artifact must say whether each gap blocks:
- current mathematical modeling;
- source-specific behavioral-device modeling;
- implementation planning;
- target court;
- durable product claim.

### P3-D — findings

Create:

docs/plans/math-execution-behavioral-read-devices-pass-3-findings.md

### P3-E — clipboard taxonomy correction

If the source audit confirms the sit, update docs/clipboards/README.md so the technical inventory is no longer represented as six peer items under one flat role.

A candidate classification to test:

~~~text
BUILD / ORCHESTRATION
    Cargo
    rustc

CORE PORTABLE EXECUTION
    WebAssembly core

HOST / EMBEDDER
    [MISSING-SOURCE]

GPU API / RESOURCE CONTROL
    WebGPU

GPU PROGRAM LANGUAGE
    WGSL

NEURAL INFERENCE API
    WebNN

CARRIER / DURABILITY
    [R3-CONDITIONAL SOURCE GAP]

DISTRIBUTION / INSTALLED APP
    separate shelf / not these six
~~~

Do not adopt this exact taxonomy if source reading disproves it.

### Conditional P3-F — S11

Only if earned, append:

**S11 — Technical realization boundary and capability graph**

to docs/math-execution-model.md.

S11 may map technical capability onto S1–S10.

It may not select an implementation.

---

## 5. Capability graph to test

The source-backed starting graph is:

~~~text
Cargo
  |
  v
rustc
  |
  | selected target
  v
Wasm artifact
  |
  v
HOST / EMBEDDER  <-------------------------------+
  |                                                |
  +--> Wasm imports/exports                       |
  |                                                |
  +--> WebGPU --> WGSL --> GPU execution          |
  |         ^                                      |
  |         |                                      |
  |         +-------- WebNN GPU interop -----------+
  |
  +--> WebNN --> compiled inference on CPU/GPU/NPU
  |
  +--> external context G / browser facilities
~~~

The exact browser host edge remains **unsourced** in the current six-reference corpus.

No direct Wasm→WebGPU or Wasm→WebNN edge should be drawn unless a host bridge is explicit.

---

## 6. Availability / evidence ladder

Pass 3 must prevent specification capability from becoming device evidence.

For each required capability, record the highest attained rung:

### T0 — SOURCE-SPECIFIED

The staked source defines the capability.

### T1 — TOOLCHAIN-SUPPORTED

The selected/available toolchain can produce the required artifact or target mode.

### T2 — HOST-EXPOSED

The target browser/runtime exposes the required API.

### T3 — DEVICE-ADMITTED

The actual target device admits the required feature/limit/operator.

### T4 — EXECUTED

The required workload has run on the target.

### T5 — CORRECT

The output passed its mathematical/device falsifier.

### T6 — SUSTAINED

The capability survives the required lifecycle/load/repetition.

This is an evidence ladder, not a new system architecture.

### Rule

\[
T_k
\not\Rightarrow
T_{k+1}.
\]

A standards document normally supplies T0, not T3–T6.

---

# PART A — BUILD PLANE COURT

## 7. Cargo audit

Test and record:

- package/manifest/lock orchestration;
- dependency resolution;
- rustc invocation;
- profiles/targets;
- unstable build-std behavior relevant to no_std;
- default registry/dependency behavior.

### Fences

Cargo:
- does not grant permission for external crates;
- does not guarantee reproducible runtime behavior merely because Cargo.lock exists;
- does not define browser/runtime capability;
- does not choose Lace semantics.

### Project-policy mapping

The zero-external-dependency rule must be represented as:

~~~text
LaceArc build law
    constrains
Cargo configuration / manifest / dependency graph
~~~

not:

~~~text
Cargo guarantees zero dependencies
~~~

---

## 8. rustc audit

Map:

- target selection;
- target support tier/burden;
- codegen/link options;
- no_std / core / alloc build implications;
- target features and pointer-width facts.

Preserve Pass-5 distinction:

\[
LaceIndex
\neq
usize
\neq
native\ pointer
\neq
WasmAddress.
\]

No target wins in Pass 3.

---

# PART B — WASM / HOST COURT

## 9. WebAssembly core audit

Map source-defined:

- module structure;
- imports/exports;
- function execution;
- linear memory;
- i32/i64 address types;
- validation;
- traps;
- instantiation/invocation;
- no ambient environment access.

### HOST-1 theorem target

Attempt:

> If Wasm core provides no ambient environment access and all external capabilities arrive through imports supplied by an embedder, then any S9 external-context input G that originates outside the module requires an embedder/host path.

Formal candidate:

\[
g\notin State_{Wasm}
\land
NoAmbientAccess
\Rightarrow
g\to\mathcal D
\text{ requires imported/host mediation}.
\]

This does not select JavaScript bindings.

It proves the host plane cannot remain implicit.

### Required gap result

Pass 3 must record:

~~~text
browser Wasm host/embedder source:
MISSING
~~~

unless a current repo source is found that actually closes it.

Do not infer it from WebAssembly core.

---

# PART C — GPU COURT

## 10. WebGPU audit

Map:

- adapter/device lifecycle;
- feature/limit negotiation;
- resource creation;
- buffers/textures;
- command encoding/submission;
- content/device/queue timelines;
- mapping/transfers;
- device loss;
- fallible allocation;
- usage scopes/synchronization.

### ACCEL-1 theorem target

A GPU resource/result may be used as derived working state if:

1. authoritative input is pointable/replayable;
2. GPU state can be lost without changing Lace truth;
3. output can be checked/replayed as required;
4. only a separately lawful host/Core transition may append authoritative Lace.

Target statement:

\[
GPUState
\notin
AuthoritativeLace.
\]

This should be derived from current Lace authority plus WebGPU resource lifecycle, not from aesthetic preference.

---

## 11. WGSL audit

Map:

- compute entry points;
- storage/workgroup/private/function address spaces;
- host-shareable layout;
- statically typed shader values;
- workgroup/subgroup execution;
- atomics/barriers;
- shader/pipeline lifecycle;
- limits.

### False-friend court

Explicitly prove/refuse:

\[
WGSLPtr
\neq
LacePointer.
\]

and:

\[
WGSLAddress
\neq
LaceIndex.
\]

### Kernel suitability map

For S3/S9 candidate kernels, classify operations by source-supported GPU shape:

- embarrassingly/data parallel;
- reduction;
- scan-like;
- synchronization-sensitive;
- host-serial/authority-sensitive.

This is a **capability classification**, not a kernel implementation plan.

---

# PART D — WEBNN COURT

## 12. WebNN audit

Map:

- graph construction vs execution;
- immutable compiled graph;
- tensors/operands;
- supported operators;
- asynchronous dispatch;
- execution-device abstraction;
- device hints vs actual selection;
- WebGPU interop;
- WebAssembly-memory byte input path;
- output/readback/export lifetimes.

### ML-1 authority theorem target

A neural inference result is a model computation:

\[
y_{ML}
=
F_{\theta}(x).
\]

Its technical execution does not change its S10 epistemic class.

Therefore:

\[
x\in SEE\!-\!L
\not\Rightarrow
y_{ML}\in SEE\!-\!L.
\]

A source-specific proof is still required for any output claim.

### Emotion-analysis falsifier

Use the WebNN source's emotion-analysis accessibility warning as a bounded falsifier:

If an implementation maps WebNN "emotion analysis" output directly to HCC Emotion truth, Pass 3 fails.

### Device-selection fence

An acceleration preference or accelerated context does not prove actual GPU/NPU identity where the source leaves selection to the user agent.

---

# PART E — INTEROP COURT

## 13. Interop edge table

For every edge, record:

| Edge | Source says | Copy/ownership rule | Lifetime | Project authority |
|---|---|---|---|---|
| Cargo -> rustc | build orchestration | build artifacts | build-time | none over Lace semantics |
| rustc -> Wasm | target/codegen candidate | artifact | build-time | none over Lace semantics |
| host -> Wasm | MISSING SOURCE | OPEN | runtime | required bridge |
| host -> WebGPU | WebGPU API | API resources | device lifetime | derived only |
| WebGPU -> WGSL | shader/pipeline contract | resource bindings | dispatch/pipeline | derived only |
| host -> WebNN | WebNN API | tensors/graph | context lifetime | inference only |
| WebNN <-> WebGPU | source-supported conditional interop | copy may occur / exclusive export | resource lifetime | derived only |
| Wasm-memory bytes -> WebNN | source-supported through host-visible buffer view | copy/transfer rules context-specific | dispatch/input | derived only |

Pass 3 must correct any row the source disproves.

---

## 14. COPY-1 — zero-copy refusal

Attempt a general rule:

\[
Interop
\not\Rightarrow
ZeroCopy.
\]

Source support:
- WebGPU memory model allows staging/copies depending on implementation;
- WebNN export can require a copy;
- Wasm-to-WebNN byte compatibility says representation compatibility, not shared physical ownership.

Any later performance plan that assumes zero-copy must produce separate evidence.

---

# PART F — MATHEMATICAL EXECUTION MODEL CROSSWALK

## 15. S1–S4 crosswalk

For each core mechanism, map:

- minimal CPU/runtime primitive;
- candidate Wasm realization;
- whether GPU acceleration is lawful;
- whether WebNN has any justified role;
- witness/authority boundary.

Required rows:
- Arrive;
- Root recovery;
- RootTouch;
- Join;
- finite grounding;
- capacity/refusal;
- carrier access.

No row may silently assign RM-A.

---

## 16. S3 sampling/search crosswalk

Classify:

- prefix scan;
- root lookup/recovery;
- Reach traversal;
- contiguous sampling;
- recurrence/overlap analysis;
- frontier search;
- projection.

For each, state:

~~~text
mathematical obligation
candidate execution plane(s)
required input window
output authority
replay/witness requirement
device evidence rung required before implementation claim
~~~

---

## 17. S9 device crosswalk

For:

\[
\mathcal D_\theta=(Q,G,\Omega,\Delta,\omega)
\]

map each field against technical planes.

### Q

Default ownership is application/device-local state.

Do not force GPU/NN custody.

### G

Mark host/embedder dependency explicitly.

### Omega

Map possible CPU/Wasm, GPU/WGSL, and bounded WebNN subcases.

### Delta

Map general transition/control to host/Wasm candidate; accelerator subgraphs remain optional.

### omega

Stable witnesses must use mathematical/logical provenance.

Refuse native technical addresses as semantic identities unless an encoding contract explicitly maps them.

---

## 18. S10 crosswalk

For SEE-L/G/Q/H/CF/U:

- map which technical source can transport/compute a value;
- separately preserve its epistemic stamp;
- record that compute location does not change evidence class.

Target invariant:

\[
ComputePlane(y)
\not\Rightarrow
EvidenceClass(y).
\]

This is a major Pass-3 bridge between technical inventory and behavioral mathematics.

---

# PART G — CARRIER / APPLICATION SCOPE

## 19. R3 carrier gate

Pass 3 must leave:

\[
R3=[OPEN].
\]

It should record:

### Volatile product branch

Wasm/application runtime state may be enough for the declared lifetime, subject to future implementation proof.

### Durable product branch

A primary source for the chosen browser persistence API becomes mandatory.

No source should be chosen merely to complete the diagram.

---

## 20. Distribution/application boundary

Pass 3 should explicitly classify:

~~~text
the six technical refs
=
compute/toolchain shelf

not
=
complete installed-WebApp shelf
~~~

If later implementation planning needs:
- PWA installation;
- service worker lifecycle;
- Cache Storage;
- browser storage;
- Worker/Document lifecycle;

those should enter as their own sourced campaign, not as assumptions attached to Wasm.

---

# PART H — INVENTORY RECONCILIATION

## 21. Clipboard README correction

If the execution audit holds, update the technical source role table from one flat row into a typed map.

Keep the current campaign/source count historical accounting intact unless a new source is actually staked.

Do not count the missing host source as a campaign.

Mark it explicitly as a source request/gap.

---

## 22. Existing individual clipboard entrances

Audit only current entrance/role language.

Correct if necessary:
- WGSL as subordinate execution language to WebGPU;
- WebNN as bounded inference/compiled graph acceleration;
- rustc/Cargo as build plane;
- Wasm as core runtime ISA, not browser host;
- WebGPU as API/resource plane, not shader language.

Do not reopen already-completed source mechanism mapping unnecessarily.

---

## 23. Historical compute/inventory proposal

Audit older compute/inventory docs against current S1–S10 and Pass-3 map.

Anything that still assumes:
- sealed wasm64;
- old broad emission gap;
- one fixed WebGPU/WebNN role;
- unsourced one-writer technical topology

must remain dated proposal/history.

Do not silently promote it.

---

# PART I — FALSIFIERS

## 24. Pass-3 falsifier board

### F1 — six peers

Wasm/WebGPU/WGSL/WebNN/rustc/Cargo are still described as equivalent technical layers.

### F2 — Wasm = browser

The Wasm core spec is treated as defining its browser embedding.

### F3 — ambient access

Wasm code is assumed to access browser/GPU/storage resources without host mediation.

### F4 — spec = device support

A standards feature becomes a Pixel/browser fact without admission/execution evidence.

### F5 — Cargo grants dependency law

Cargo behavior is mistaken for project zero-dependency policy.

### F6 — rustc target selects itself

A documented target becomes the chosen target.

### F7 — wasm address = Lace index

Native/runtime address width closes logical Index encoding.

### F8 — WGSL pointer false friend

Shader pointer becomes Lace POINTER or logical identity.

### F9 — GPU authority

GPU buffer/state becomes authoritative Lace.

### F10 — device loss changes truth

Loss of GPU state destroys or changes authoritative Lace truth.

### F11 — zero-copy assumption

Interop is represented as guaranteed shared physical storage.

### F12 — WebNN = general device

Compiled neural graph API is used as if it can directly realize arbitrary S9 transitions.

### F13 — WebNN epistemic promotion

Inference result becomes SEE-L/ground truth because input was Lace-grounded.

### F14 — hidden device identity

WebNN preference is treated as proof of GPU/NPU execution.

### F15 — MLGraph = Lace graph

WebNN graph terminology is identified with Lace topology.

### F16 — Cargo graph = Lace graph

Dependency graph terminology leaks into substrate semantics.

### F17 — volatile memory = persistence

Wasm/WebGPU/WebNN runtime memory is called a durable carrier.

### F18 — premature storage selection

R3 is closed by choosing OPFS/IndexedDB/etc. during inventory mapping.

### F19 — app shelf hidden

Installability/offline/browser lifecycle is assumed to be covered by the six sources.

### F20 — host gap hidden

The missing Wasm browser/embedder source disappears behind prose.

### F21 — accelerator required by default

Optional accelerator candidates become mathematical necessities.

### F22 — compute plane changes witness class

Running a calculation on GPU/NN changes S10 epistemic authority.

### F23 — RM-A from machinery

A technical mechanism supplies retain-when.

### F24 — S11 selects implementation

The conditional mathematical-model addition turns capability mapping into architecture selection.

---

## 25. Execution sequence

~~~text
PRE-FLIGHT
main + maps/clipboards claims + source SHAs
        |
        v
SIX-SOURCE DIRECT AUDIT
actual role / limits / lifecycle / failure
        |
        v
CAPABILITY STRATIFICATION
build / Wasm / host / GPU / shader / ML / carrier / app
        |
        v
INTEROP GRAPH
source-backed edges vs unproved edges
        |
        v
AVAILABILITY LADDER
T0 source -> T6 sustained
        |
        v
S1-S10 CROSSWALK
what each mathematical obligation can use
        |
        v
AUTHORITY THEOREMS
HOST-1 / ACCEL-1 / ML-1 / COPY-1
        |
        v
SOURCE GAP LEDGER
host now / carrier conditional / app separate
        |
        v
F1-F24
        |
        v
CLIPBOARD TAXONOMY CORRECTION
only if audit earns it
        |
        v
CONDITIONAL S11
technical realization boundary
        |
        v
FINDINGS / INDEX / RELEASE
~~~

---

## 26. Completion board

| Gate | Required |
|---|---|
| G1 | current main and claims pinned |
| G2 | six source SHA identities reverified |
| G3 | all six sources directly inspected at relevant technical loci |
| G4 | current clipboards technical taxonomy reread |
| G5 | current S1–S10 reread as mathematical court |
| G6 | source role of each technical reference classified |
| G7 | typed capability graph produced |
| G8 | host/embedder boundary explicit |
| G9 | every source-backed interop edge cited/mapped |
| G10 | unsupported direct edges listed |
| G11 | T0–T6 evidence ladder applied |
| G12 | Cargo/rustc build-plane distinction preserved |
| G13 | Wasm core/browser distinction preserved |
| G14 | WebGPU/WGSL API/language distinction preserved |
| G15 | WebNN inference role bounded |
| G16 | Wasm/WebNN/WebGPU interop mapped without zero-copy assumption |
| G17 | S1–S4 technical crosswalk |
| G18 | S3 sampling/search crosswalk |
| G19 | S9 Q/G/Omega/Delta/omega crosswalk |
| G20 | S10 evidence-class invariance across compute planes |
| G21 | HOST-1 tested |
| G22 | ACCEL-1 tested |
| G23 | ML-1 tested |
| G24 | COPY-1 tested |
| G25 | R3 carrier source gap remains conditional |
| G26 | installed-app scope separated |
| G27 | technical false-friend ledger complete |
| G28 | clipboard README corrected only if earned |
| G29 | individual entrances reconciled only where actually stale |
| G30 | old compute/inventory proposal kept historical where stale |
| G31 | F1–F24 disposition recorded |
| G32 | no target/carrier/RM-A/acceptance/implementation selected |
| G33 | S11 only if earned |
| G34 | findings indexed |
| G35 | all claims released |

---

## 27. Expected verdict families

### Source inventory

- SOURCE SET CORRECT
- SOURCE SET NEEDS ADDITION
- SOURCE IDENTITY CONFLICT

### Capability model

- CAPABILITY GRAPH SOUND
- CAPABILITY GRAPH SOUND WITH SOURCE GAPS
- CAPABILITY GRAPH UNDER-SPECIFIED

### Host boundary

- HOST DEPENDENCE PROVED / SOURCE MISSING
- HOST BOUNDARY PARTIALLY SOURCED
- HOST GAP FALSE

### Accelerator authority

- ACCELERATOR NON-AUTHORITY PROVED
- ACCELERATOR FENCE NEEDS REFINEMENT

### S1–S10 technical crosswalk

- TECHNICAL CROSSWALK SOUND WITH OPTIONAL ACCELERATORS
- TECHNICAL CROSSWALK UNDER-SPECIFIED

### Inventory completeness

- COMPUTE/TOOLCHAIN SHELF COMPLETE WITH HOST GAP
- WHOLE-APP INVENTORY INCOMPLETE
- DURABLE-CARRIER SOURCE DEFERRED BY R3

### Primary model

- S11 ADMITTED
- S11 ADMITTED WITH SOURCE GAPS
- S11 DEFERRED

---

## 28. Stop

Pass 3 stops after correcting the **model of the building inventory**.

It does not automatically:

- acquire the missing host source;
- choose wasm32 or wasm64;
- choose volatile or durable carrier;
- select IndexedDB/OPFS/other persistence;
- implement Rust;
- create Cargo.toml;
- write WGSL;
- build WebGPU kernels;
- build WebNN graphs;
- run device probes;
- formalize full HCC/Cup/Water devices;
- solve RM-A;
- update global ASCII;
- open Pass 4.

The exact Pass-3 question is:

> **Do our six staked technical references form the building inventory we think they do, and can we map them onto S1–S10 without confusing build tools, runtime ISA, browser host, GPU APIs, shader language, inference acceleration, persistence, or epistemic authority?**
