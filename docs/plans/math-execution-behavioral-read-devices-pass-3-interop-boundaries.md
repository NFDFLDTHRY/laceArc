# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 3 interoperability / boundary map

**Status:** EXECUTED PASS-3 ARTIFACT.
**Execution base:** 08f5cc54290659cb8587167ec171344dd09adc5c.
**Scope:** source-backed technical edges, ownership/copy/lifetime boundaries, and explicitly unsupported edges.
**Implementation:** none.
**Target/carrier/RM-A:** unchanged.

---

## 1. Source-backed capability graph

~~~text
Cargo
  |
  | orchestrates
  v
rustc
  |
  | selected target/codegen
  v
Wasm artifact
  |
  | instantiated by
  v
HOST / EMBEDDER
[SOURCE GAP IN CURRENT CORPUS]
  |\
  | \________________________
  |                          \
  v                           v
Wasm imports/exports        WebGPU
                              |
                              | shader modules/pipelines
                              v
                             WGSL
                              |
                              v
                         GPU execution

HOST / EMBEDDER
  |
  +-------------------------> WebNN
                                |
                                | optional conditional interop
                                v
                              WebGPU

HOST-visible bytes
  |
  +--> ArrayBufferView / Uint8Array
         |
         +--> may reference WebAssembly.Memory bytes
         |
         +--> WebNN input/copy path
~~~

This graph distinguishes **source-established edges** from the unsourced host bridge.

---

## 2. Edge E1 — Cargo -> rustc

**Source status:** SOURCE-SPECIFIED.

Cargo's source says it invokes rustc or another build tool with the parameters needed to build package targets.

### Boundary

- Cargo owns build orchestration.
- rustc owns Rust compilation/codegen semantics.
- Cargo metadata does not become runtime state.

### Authority

None over Lace semantics.

\[
Cargo\to rustc
\]

is a build edge only.

---

## 3. Edge E2 — rustc -> Wasm artifact

**Source status:** SOURCE-SPECIFIED as a target/codegen possibility; actual LaceArc artifact remains NOT_RUN.

rustc can target Wasm triples and emit target artifacts.

### Boundary

The selected Rust target determines:
- target cfg/pointer width;
- enabled target features;
- toolchain support burden;
- generated artifact assumptions.

### Fence

\[
DocumentedTarget\not\Rightarrow SelectedTarget.
\]

Pass 3 awards no target-selection credit.

---

## 4. Edge E3 — host/embedder -> Wasm

**Source status:** DEPENDENCE SOURCE-SPECIFIED by Wasm core; concrete browser binding MISSING-SOURCE.

Wasm core says:
- imports are supplied by the embedder;
- exports are accessed through the embedding environment;
- instantiation/invocation occur within the embedding environment;
- no ambient environment access exists.

### HOST-1

Let \(g\) be S9 external/context information not already present inside Wasm runtime state.

Given:

\[
NoAmbientAccess(Wasm)
\]

and external interaction only via imported/embedder-provided capabilities,

\[
g\notin State_{Wasm}
\Rightarrow
g\to\mathcal D
\text{ requires host/embedder mediation}.
\]

**Verdict: HOST DEPENDENCE PROVED.**

### Open

The current six-source corpus does not define the browser-specific Wasm JavaScript embedding API.

Therefore concrete:
- module loading;
- JS function imports;
- exported function calls;
- browser WebAssembly.Memory object behavior

remain source-incomplete here.

---

## 5. Edge E4 — host -> WebGPU

**Source status:** SOURCE-SPECIFIED.

WebGPU is exposed as a Web API through content-timeline interfaces and creates adapters/devices/resources.

### Ownership

- user-facing WebGPU interface exists on content timeline;
- internal object state lives on device/queue timelines;
- device owns created internal objects.

### Lifetime

Device/resource lifetime is fallible:
- objects may be invalid/unusable;
- device may be lost;
- allocations may fail.

### Authority

Derived accelerator state only.

\[
GPUResource\notin AuthoritativeLace.
\]

---

## 6. Edge E5 — WebGPU -> WGSL

**Source status:** SOURCE-SPECIFIED.

WebGPU creates shader modules and compute/render pipelines from WGSL shader programs.

WGSL entry points execute only through the API pipeline/dispatch/draw environment.

### Boundary

- WebGPU is API/resource/scheduling plane.
- WGSL is shader language/execution code.

### False friend

\[
WebGPU\neq WGSL.
\]

and:

\[
WGSLPtr\neq LacePointer.
\]

---

## 7. Edge E6 — host -> WebNN

**Source status:** SOURCE-SPECIFIED.

WebNN is exposed in Window/Worker secure contexts and supports:
- context creation;
- graph construction/compilation;
- tensors;
- dispatch/read/write.

### Lifetime

MLContext and tensors have runtime lifetimes; context may be lost.

### Authority

Inference result only.

No Lace write authority.

---

## 8. Edge E7 — WebNN <-> WebGPU

**Source status:** SOURCE-SPECIFIED but conditional.

The source supports:
- WebNN context creation from a GPUDevice;
- exportable MLTensor associated with GPUDevice;
- \`exportToGPU()\` returning GPUBuffer.

### Ownership transition

While exported:
- the GPU device has exclusive access to tensor contents;
- WebNN operations depending on the tensor reject;
- destroying the GPUBuffer returns the tensor to WebNN use.

This is a real custody/lifetime transition.

It is not a Lace ownership transition.

### Copy rule

The source explicitly says export is **not guaranteed zero-copy**.

If backing memory is not GPU-accessible:
- copy to GPUBuffer may be required;
- copy back on GPUBuffer destruction may be required.

Therefore:

\[
\boxed{Interop\not\Rightarrow ZeroCopy.}
\]

**COPY-1: PROVED.**

---

## 9. Edge E8 — Wasm-memory bytes -> WebNN input

**Source status:** SOURCE-SPECIFIED only at host-visible byte/view level.

WebNN buffer validation accepts \`Uint8Array\` as a generic byte representation, with the source explicitly giving a slice of \`WebAssembly.Memory\` as an example.

### What is supported

~~~text
WebAssembly.Memory bytes
  -> host ArrayBuffer/Uint8Array view
  -> WebNN input buffer path
~~~

### What is not established

- direct Wasm call into WebNN;
- zero-copy execution;
- stable physical identity between Wasm memory and tensor;
- semantic identity between tensor contents and Lace rows.

---

## 10. WebGPU transfer boundary

WebGPU's memory-model discussion permits several implementations:

~~~text
script memory
  -> process/shared transfer
  -> driver staging
  -> GPU memory
~~~

or fewer copies where implementation permits.

Therefore:
- physical data movement is implementation-dependent;
- copy avoidance is optimization evidence, not semantic law;
- buffer equality by content does not imply storage identity.

---

## 11. Unsupported / unproved edges

The six current sources do **not** establish:

### U1 — direct Wasm -> WebGPU

No direct edge is sourced.

A browser host/embedder binding is required in the implementation graph.

### U2 — direct Wasm -> WebNN

No direct edge is sourced.

Host-visible views/API calls mediate the source-supported route.

### U3 — WebGPU -> authoritative Lace

Forbidden by project authority.

### U4 — WGSL pointer -> Lace pointer/index

No semantic mapping exists.

### U5 — WebNN graph -> Lace topology

\[
MLGraph\neq LaceGraph.
\]

WebNN "graph" means compiled operator/dataflow model.

### U6 — Cargo dependency graph -> Lace topology

Build graph is unrelated to Lace structure.

### U7 — GPU/ML state -> durable carrier

No source support.

### U8 — spec-defined capability -> actual Pixel support

No source support.

Requires higher evidence rung.

---

## 12. Evidence-rung table for key edges

| Capability | T0 | T1 | T2 | T3 | T4 | T5 | T6 |
|---|---|---|---|---|---|---|---|
| Cargo build-std mechanism | YES | historical LaceArc build rows NOT_RUN | n/a | n/a | NO | NO | NO |
| rustc Wasm target docs | YES | current LaceArc toolchain probe not established here | n/a | n/a | NO | NO | NO |
| Wasm core memory/import/export semantics | YES | target artifact NOT_RUN here | browser binding source missing | NO | NO | NO | NO |
| WebGPU API | YES | n/a | not established by spec alone | not established by spec alone | not by Pass 3 | not by Pass 3 | not by Pass 3 |
| WGSL shader capability | YES | n/a | depends on WebGPU host | depends on admitted device/features | not by Pass 3 | not by Pass 3 | not by Pass 3 |
| WebNN API/operators | YES | n/a | not established by spec alone | operator/device admission not established | not by Pass 3 | not by Pass 3 | not by Pass 3 |
| WebNN↔WebGPU export | YES | n/a | host implementation required | support implementation-dependent | not by Pass 3 | not by Pass 3 | not by Pass 3 |

This table is deliberately conservative.

---

## 13. ACCEL-1 — accelerator non-authority

### Premises

1. Current Lace law has one authoritative append-only retained history.
2. S3/S9 accelerator work is reconstructible/derived unless separately promoted by law.
3. WebGPU resources can be lost/destroyed.
4. WebNN tensors/contexts have runtime lifetimes and may be lost/destroyed/exported.
5. Neither source defines Lace append authority.

### Result

\[
\boxed{
Loss(AcceleratorState)
\not\Rightarrow
Change(LaceTruth)
}
\]

for a conforming LaceArc implementation.

If accelerator loss changes authoritative Lace truth, the state had been improperly promoted into authority.

**ACCEL-1: PROVED.**

---

## 14. ML-1 — inference does not promote evidence

For neural model output:

\[
y_{ML}=F_\theta(x).
\]

Even if:

\[
x\in SEE-L,
\]

the result includes model/parameter dependence.

Therefore:

\[
\boxed{
Compute_{WebNN}(x)
\not\Rightarrow
EvidenceClass(y)=SEE-L.
}
\]

S10 EP-1 and source-specific witness rules still govern the claim.

The WebNN source's emotion-analysis warning is a concrete falsifier against treating classifier output as HCC internal truth.

**ML-1: PROVED.**

---

## 15. Compute-plane invariance

Pass 3 records:

\[
\boxed{
ComputePlane(y)
\not\Rightarrow
EvidenceClass(y).
}
\]

CPU/Wasm, WebGPU/WGSL and WebNN are execution locations/mechanisms.

They do not determine:
- SEE-L;
- SEE-G;
- SEE-Q;
- SEE-H;
- SEE-CF;
- SEE-U.

Evidence class follows provenance and source/device law.

---

## 16. Interop verdict

**INTEROP GRAPH SOUND WITH HOST SOURCE GAP.**

**HOST-1 PROVED.**

**ACCEL-1 PROVED.**

**ML-1 PROVED.**

**COPY-1 PROVED.**

No direct Wasm→GPU/NN edge is admitted without host mediation.
