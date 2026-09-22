# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 3 findings

**Status:** EXECUTED 2026-09-21.
**Campaign:** Mathematical Execution Model — Behavioral Read Devices.
**Pass:** 3 — MAP THE BUILDING FLOOR.
**Plan:** [math-execution-behavioral-read-devices-pass-3-plan.md](math-execution-behavioral-read-devices-pass-3-plan.md).
**Pre-plan sit:** [math-execution-behavioral-read-devices-pass-3-building-inventory-sit.md](math-execution-behavioral-read-devices-pass-3-building-inventory-sit.md).
**Execution claims:** maps \`b744002b598814566e36e456c2ab80767d55cf72\` · clipboards \`08f5cc54290659cb8587167ec171344dd09adc5c\`.
**Capability inventory:** \`c76f86bf4e89993eb18fa1660cae9b8dba80a019\`.
**Interop boundaries:** \`8426b647bb29edafc29fd403c8bfb58bf03757d4\`.
**Source gaps:** \`74c5cb8d5ac01dabe37ac98d9482b2d490e36b9e\`.
**Clipboard taxonomy correction:** \`bec490a787bbc9bfdfc2d6f5be19d05e17970199\`.
**Wasm clipboard host-scope correction:** \`22f649f3f359713572c07d4348e6448bffa476c8\`.
**Primary model S11:** \`d9477389f83672b9949be299556ae8eab47e65f6\`.
**Implementation:** none.
**Target:** TARGET UNDECIDED.
**R3 carrier:** OPEN.
**RM-A:** OPEN / MISSING-A.
**Pointer acceptance:** absent.
**Full HCC/Cup/Water devices:** still deferred.

---

## 1. Direct Pass-3 answer

The six staked technical references are the correct six sources for the current **compute/toolchain building shelf**.

The inventory model was not correct when represented as six peer items.

Pass 3 replaces that flat view with a typed source-grounded capability graph:

~~~text
BUILD / ORCHESTRATION
    Cargo -> rustc -> selected target artifact
                          |
                          v
PORTABLE CORE EXECUTION
    WebAssembly core
                          |
                          v
HOST / EMBEDDER
    [GAP-HOST: MISSING PRIMARY SOURCE]
             /                         \
            v                           v
GPU API / RESOURCE CONTROL         NEURAL INFERENCE
    WebGPU                          WebNN
      |
      v
GPU PROGRAM LANGUAGE
    WGSL

CARRIER / DURABILITY
    [source required only if R3 selects durable]

INSTALLED APP / DISTRIBUTION
    separate source surface
~~~

This corrects engineering topology while preserving the existing \`SM-X-PLAT\` authority fence.

---

## 2. Source identity result

The six supplied sources matched the already-recorded Pass-5 SHA identities exactly.

| Source | SHA-256 | Pass-3 role |
|---|---|---|
| WebAssembly 3.0 | \`687e7364fca680205913985a2c40de4e1f82c5f22ac94fef436d26d145f70fce\` | portable core ISA/runtime |
| WebGPU 2026-09-15 | \`6bc31a9e312fccd95bbeda5530dee1272579d4a7461dd3cf7600f47ca764afe1\` | host GPU API/resource control |
| WGSL 2026-09-15 | \`73dc9e35250c65261762407f5e5cc52d3bfdecf43fe45fff632ce71ce9f5eb6d\` | GPU shader language |
| WebNN 2026-09-10 | \`e1153218aee857e92a97171684680bb8916955248071190646ea403d1df53fdc\` | compiled neural inference API |
| rustc book | \`4a30e62099f42a05efcb5d7777e2812a3711d742906ec3ef2b2092e0f4e74d3\` | compiler/target/codegen |
| Cargo Book | \`9d7048e11d030361117cbba11a811c35ad11d6afbfd7b9953f11940663c0a5\` | package/build orchestration |

**Verdict: SOURCE SET CORRECT.**

---

## 3. Source-role result

### Cargo

Build/package orchestration.

It can configure dependencies, profiles, targets and \`build-std\`, and invoke rustc.

It does not:
- define runtime Lace behavior;
- grant permission for external dependencies;
- prove a browser/device capability.

### rustc

Rust compiler and target/codegen machinery.

It can produce a candidate Wasm artifact after a target/toolchain is selected.

It does not:
- select the target by documentation alone;
- equate \`usize\` with Lace Index;
- provide browser host semantics.

### WebAssembly core

Portable low-level ISA/runtime semantics.

It defines:
- modules;
- functions;
- memories;
- tables;
- imports/exports;
- validation;
- instantiation/invocation.

It explicitly delegates specific embedding-environment behavior outside the core specification.

### WebGPU

Host GPU API/resource/control plane.

It defines:
- adapters/devices;
- buffers/textures;
- queues;
- command/pipeline state;
- capabilities/limits;
- device/resource lifecycle.

It is not WGSL and not a durable Lace carrier.

### WGSL

GPU shader language beneath WebGPU pipelines.

Its pointers/references are memory views, not Lace identities.

### WebNN

Compiled neural-inference graph API.

It can use CPU/GPU/NPU execution and conditionally interoperate with WebGPU.

It is not a general S9 machine and does not turn inference into epistemic truth.

---

## 4. Evidence ladder result

Pass 3 admits the technical evidence ladder:

\[
T_0=\text{SOURCE-SPECIFIED}
\]

\[
T_1=\text{TOOLCHAIN-SUPPORTED}
\]

\[
T_2=\text{HOST-EXPOSED}
\]

\[
T_3=\text{DEVICE-ADMITTED}
\]

\[
T_4=\text{EXECUTED}
\]

\[
T_5=\text{CORRECT}
\]

\[
T_6=\text{SUSTAINED}
\]

with:

\[
\boxed{
T_k\not\Rightarrow T_{k+1}.
}
\]

This is a major inventory correction.

A W3C/Rust source normally establishes T0.

It does not prove that the target browser/device exposes, admits, executes, computes correctly, or sustains the capability.

---

## 5. HOST-1 result

The WebAssembly core source says:
- no ambient access to the execution environment;
- external interaction occurs through embedder-provided imports;
- specific environment APIs are outside core scope.

Therefore for an S9 external/context value \(g\) outside Wasm runtime state:

\[
g\notin State_{Wasm}
\Rightarrow
g\to\mathcal D
\text{ requires host/embedder mediation}.
\]

\[
\boxed{
HOST\!-\!1=\text{PROVED}.
}
\]

The concrete browser Wasm embedding source is absent from the current six-source corpus.

\[
\boxed{
GAP\!-\!HOST=[MISSING\ PRIMARY\ SOURCE].
}
\]

This is the most important current technical source gap.

---

## 6. ACCEL-1 result

Current Lace law requires one authoritative retained history.

WebGPU and WebNN resources have runtime/device lifetimes and can be lost/destroyed.

Neither source grants Lace append authority.

Therefore:

\[
\boxed{
GPUState\notin AuthoritativeLace
}
\]

and more generally:

\[
\boxed{
Loss(AcceleratorState)
\not\Rightarrow
Change(LaceTruth).
}
\]

If loss of an accelerator resource changed authoritative Lace truth, the implementation would have promoted derived state into forbidden second authority.

**ACCEL-1: PROVED.**

---

## 7. ML-1 result

For WebNN model output:

\[
y_{ML}=F_\theta(x),
\]

even if:

\[
x\in SEE\!-\!L,
\]

the output depends on a model/parameterization.

Thus:

\[
\boxed{
x\in SEE\!-\!L
\not\Rightarrow
y_{ML}\in SEE\!-\!L.
}
\]

The WebNN source itself provides a useful falsifier by warning that emotion-analysis systems can mis-label users.

Therefore:

\[
WebNNEmotionClassifierOutput
\neq
HCCEmotionTruth.
\]

**ML-1: PROVED.**

---

## 8. COPY-1 result

The sources establish real interoperability but explicitly do not guarantee shared physical storage.

WebGPU allows implementation-dependent transfers/staging/copies.

WebNN says \`exportToGPU()\` may require copying to a GPUBuffer and copying back afterward.

WebNN also permits host buffer views that may refer to WebAssembly.Memory bytes, but this is representation/API compatibility.

Therefore:

\[
\boxed{
Interop\not\Rightarrow ZeroCopy.
}
\]

**COPY-1: PROVED.**

Any future zero-copy claim is higher-rung implementation/device evidence.

---

## 9. Interop result

Source-backed edges:

- Cargo -> rustc;
- rustc -> candidate target artifact;
- embedder -> Wasm imports/exports;
- host -> WebGPU -> WGSL;
- host -> WebNN;
- conditional WebNN <-> WebGPU;
- host-visible WebAssembly.Memory bytes -> WebNN buffer input.

Not established by current six sources:

- direct Wasm -> WebGPU;
- direct Wasm -> WebNN;
- WebGPU -> authoritative Lace;
- WGSL pointer -> Lace pointer/index;
- WebNN tensor -> durable Lace store;
- WebNN graph -> Lace topology;
- universal zero-copy;
- browser persistence from Wasm memory.

**Verdict: INTEROP GRAPH SOUND WITH HOST SOURCE GAP.**

---

## 10. S1–S4 technical crosswalk result

| Mathematical obligation | Candidate realization plane | Accelerator role | Authority |
|---|---|---|---|
| Arrive | host/CPU/Wasm | none required | authoritative Core transition |
| root recovery | CPU/Wasm | optional bounded GPU assistance | derived read |
| RootTouch | host/CPU/Wasm | none required | authoritative append under current law |
| Join | host/CPU/Wasm | none required | authoritative append under current law |
| finite grounding | CPU/Wasm | optional selection/precompute assistance | retained Join remains Core |
| capacity/refusal | host/Core runtime | accelerator limits only govern accelerator path | Core/carrier boundary |
| carrier access | host/runtime after R3/backend decision | accelerator is not carrier | R3 OPEN |

No row gains RM-A.

---

## 11. S3 sampling/search result

S3 remains implementation-neutral.

Candidate technical roles:

- CPU/Wasm: natural replay/scan/frontier path;
- WebGPU/WGSL: optional bounded data-parallel sampling/reduction/projection;
- WebNN: no default structural role.

Accelerator output remains derived and must preserve witness/replay obligations.

**Verdict: TECHNICAL CROSSWALK SOUND WITH OPTIONAL ACCELERATORS.**

---

## 12. S9 device result

For:

\[
\mathcal D_\theta=(Q,G,\Omega,\Delta,\omega),
\]

Pass 3 maps:

- \(Q\): ordinary application/host/Wasm working state by default;
- \(G\): host/embedder mediation when external to Wasm;
- \(\Omega\): CPU/Wasm reads, optional WebGPU/WGSL kernels, WebNN only for explicit inference subproblems;
- \(\Delta\): general host/Wasm candidate control with optional accelerator subfunctions;
- \(\omega\): logical/replayable witness, not native technical address by default.

The missing host source affects concrete realization of \(G\), not the mathematical validity of S9.

---

## 13. S10 result

Pass 3 adds the technical invariant:

\[
\boxed{
ComputePlane(y)
\not\Rightarrow
EvidenceClass(y).
}
\]

Running the same mathematical claim on:
- CPU/Wasm;
- WebGPU/WGSL;
- WebNN

does not itself decide whether the output is SEE-L/G/Q/H/CF/U.

Epistemic authority remains provenance/source/device-law dependent.

---

## 14. Carrier result

None of the six sources closes R3.

### Volatile branch

A runtime-only carrier may be sufficient for a declared volatile product lifetime, subject to later implementation proof.

### Durable branch

A primary source for the selected browser persistence/carrier API becomes mandatory.

Thus:

\[
\boxed{
GAP\!-\!CARRIER=[DEFERRED\ BY\ R3].
}
\]

No OPFS, IndexedDB or other backend was selected.

---

## 15. Installed-application result

The six technical references are a compute/toolchain shelf, not a complete installed-WebApp source inventory.

They do not collectively define:
- service-worker lifecycle;
- installability;
- Cache Storage;
- durable browser storage;
- generic Window/Worker application lifecycle;
- update/install behavior.

Thus:

\[
\boxed{
GAP\!-\!APP=[SEPARATE\ SOURCE\ SURFACE].
}
\]

No additional campaign was created in Pass 3.

---

## 16. Clipboard reconciliation result

### README

\`docs/clipboards/README.md\` now preserves one technical **authority class** while displaying the source roles as a typed engineering topology.

The historical ten-campaign count remains unchanged.

### Individual entrances

Audit result:

- **Wasm clipboard:** required one current source-scope correction. It now explicitly says Wasm core is not browser-host authority and records GAP-HOST.
- **WebGPU clipboard:** already correctly classified as HOST/GPU Web API.
- **WGSL clipboard:** already correctly classified as shader language under WebGPU.
- **WebNN clipboard:** already correctly classified as host neural-inference API.
- **rustc clipboard:** already correctly classified as toolchain/target evidence.
- **Cargo clipboard:** already correctly classified as build-std/toolchain evidence.

No completed campaign was reopened.

---

## 17. Historical heterogeneous-compute proposal audit

\`docs/plans/lace-context-iter7-pass-2-compute-and-inventory.md\` remains explicitly:

\[
[PROPOSAL]
\]

and contains a current qualification stating its one-writer/frontier/host arrangements are unaccepted design premises with R5/R9 and proof obligations open.

Its dated body still contains historical choices such as wasm64-as-Core and specific WebGPU/WebNN roles.

Pass 3 does **not** promote those.

No edit was required because the document already declares its proposal/history status and current qualification.

---

## 18. Technical false-friend ledger

The following are now explicitly fenced:

| Technical term | Not equivalent to |
|---|---|
| Wasm address | Lace logical Index |
| Rust \`usize\` | Lace logical Index |
| Wasm table/reference | Graphic-D POINTER |
| WGSL pointer/reference | Graphic-D POINTER |
| GPUBuffer offset | Lace logical Index |
| WebNN MLOperand edge | Lace relation |
| WebNN MLGraph | Lace graph/Star |
| Cargo dependency graph | Lace topology |
| WebGPU timeline | Coffee Cup causal time |
| GPU timestamp | source event time unless explicitly admitted as G |
| WebNN emotion inference | HCC Emotion truth |
| ML tensor | Lace store |
| GPU memory | durable carrier |

---

## 19. Falsifier board

| Falsifier | Result |
|---|---|
| F1 six peers | **HELD** |
| F2 Wasm = browser | **HELD** |
| F3 ambient access | **HELD** |
| F4 spec = device support | **HELD** |
| F5 Cargo grants dependency law | **HELD** |
| F6 rustc target selects itself | **HELD** |
| F7 Wasm address = Lace index | **HELD** |
| F8 WGSL pointer false friend | **HELD** |
| F9 GPU authority | **HELD** |
| F10 device loss changes truth | **HELD** |
| F11 zero-copy assumption | **HELD** |
| F12 WebNN = general device | **HELD** |
| F13 WebNN epistemic promotion | **HELD** |
| F14 hidden device identity | **HELD** |
| F15 MLGraph = Lace graph | **HELD** |
| F16 Cargo graph = Lace graph | **HELD** |
| F17 volatile memory = persistence | **HELD** |
| F18 premature storage selection | **HELD** |
| F19 app shelf hidden | **HELD** |
| F20 host gap hidden | **HELD** |
| F21 accelerator required by default | **HELD** |
| F22 compute plane changes witness class | **HELD** |
| F23 RM-A from machinery | **HELD** |
| F24 S11 selects implementation | **HELD** |

**24/24 falsifiers held.**

---

## 20. Primary-model result

Pass 3 earned bounded:

**S11 — Technical realization boundary and capability graph**

inside \`docs/math-execution-model.md\`.

S11 records:
- typed technical topology;
- T0–T6 evidence ladder;
- HOST-1;
- address false-friend fence;
- ACCEL-1;
- ML-1;
- COPY-1;
- S1–S4 technical boundary;
- S3 accelerator boundary;
- S9 field realization map;
- S10 compute-plane invariance;
- R3/app source gaps.

S11 does not select:
- target;
- carrier;
- storage API;
- accelerator;
- Rust architecture;
- source-specific behavioral device.

No global systems ASCII edit was required: the Core systems companion's existing platform authority fence remained true, and Pass 3 changed the mathematical/technical realization model rather than the Core substrate topology.

---

## 21. Completion board

| Gate | Result |
|---|---|
| G1 current main and claims pinned | PASS |
| G2 six source SHA identities reverified | PASS |
| G3 six sources inspected at relevant technical loci | PASS |
| G4 clipboard technical taxonomy reread | PASS |
| G5 S1–S10 reread as mathematical court | PASS |
| G6 source role of each technical reference classified | PASS |
| G7 typed capability graph | PASS |
| G8 host/embedder boundary explicit | PASS |
| G9 source-backed interop edges mapped | PASS |
| G10 unsupported direct edges listed | PASS |
| G11 T0–T6 evidence ladder | PASS |
| G12 Cargo/rustc build-plane distinction | PASS |
| G13 Wasm core/browser distinction | PASS |
| G14 WebGPU/WGSL distinction | PASS |
| G15 WebNN inference role bounded | PASS |
| G16 Wasm/WebNN/WebGPU interop without zero-copy assumption | PASS |
| G17 S1–S4 technical crosswalk | PASS |
| G18 S3 sampling/search crosswalk | PASS |
| G19 S9 field crosswalk | PASS |
| G20 S10 evidence-class invariance | PASS |
| G21 HOST-1 | PASS |
| G22 ACCEL-1 | PASS |
| G23 ML-1 | PASS |
| G24 COPY-1 | PASS |
| G25 R3 carrier source gap conditional | PASS |
| G26 installed-app scope separated | PASS |
| G27 technical false-friend ledger | PASS |
| G28 clipboard README corrected only after audit | PASS |
| G29 individual entrances changed only where stale | PASS — Wasm only |
| G30 old compute/inventory proposal kept historical | PASS |
| G31 F1–F24 | PASS — 24/24 held |
| G32 no target/carrier/RM-A/acceptance/implementation selection | PASS |
| G33 S11 only after court survived | PASS |
| G34 findings indexed | FINAL INDEX STEP |
| G35 all claims released | FINAL RELEASE STEP |

---

## 22. Final Pass-3 verdicts

### Source inventory

**SOURCE SET CORRECT.**

### Capability model

**CAPABILITY GRAPH SOUND WITH SOURCE GAPS.**

### Host boundary

**HOST DEPENDENCE PROVED / SOURCE MISSING.**

### Accelerator authority

**ACCELERATOR NON-AUTHORITY PROVED.**

### S1–S10 technical crosswalk

**TECHNICAL CROSSWALK SOUND WITH OPTIONAL ACCELERATORS.**

### Inventory completeness

**COMPUTE/TOOLCHAIN SHELF COMPLETE WITH HOST GAP.**

**WHOLE-APP INVENTORY INCOMPLETE BY DESIGN.**

**DURABLE-CARRIER SOURCE DEFERRED BY R3.**

### Primary model

**S11 ADMITTED WITH SOURCE GAPS.**

---

## 23. Stop

Pass 3 stops here.

It does not automatically:
- acquire GAP-HOST source;
- select wasm32/wasm64;
- select volatile/durable R3;
- choose browser persistence;
- create Rust/Cargo source;
- write WGSL kernels;
- build WebNN graphs;
- run Pixel probes;
- formalize full HCC/Cup/Water devices;
- solve RM-A;
- open Pass 4.
