# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 5 PLAN

**Status:** PLAN — NOT EXECUTED.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 5.  
**Pass name:** **CHECK THE FOUNDATION — is `wasm64-unknown-unknown` actually the right compilation target?**  
**Planning station:** maps · `Astra-alignment-restart`.  
**Pinned current main before planning claim:** `cb4b3a24c4974d7bbeaa87bdd675289acc5b0647`.  
**Planning claim commit:** `7b5afab79f21aad1d72ed81dd970e543b5b10a92`.  
**Implementation:** none. No Core birth, no `src/`, no Cargo project, no target change merely by writing this plan.  
**Human instruction:** the previous “wasm64 seal” is **re-opened for audit** by this Pass-5 request. Until Pass 5 executes and a verdict is accepted, the repository's current wasm64 target language is a **historical/current proposal under review**, not an untouchable premise.

Pass 5 is part of the **building-materials inventory**.

The question is not:

> Does WebAssembly support 64-bit addresses?

The uploaded WebAssembly 3.0 specification already establishes that.

The question is:

> **Does the Lace system we are actually trying to build require the Rust target `wasm64-unknown-unknown`, and do its benefits outweigh its toolchain/runtime/device costs relative to lawful alternatives?**

---

## 0. Newly pinned building materials

Human-supplied file:

`WebAssembly.pdf`

SHA-256:

`687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`

This exactly matches the hash historically recorded by the repository's `wasm-spec-3` shelf.

Therefore Pass 5 may upgrade the source identity from:

```
gitignored / locally sighted PDF
```

to:

```
human-supplied source material
with matching historical hash
```

without changing any semantic conclusion automatically.

Source facts from this PDF include:

- WebAssembly is a portable, low-level virtual ISA;
- the core specification does **not** define a particular Web/browser embedding;
- integer values include both i32 and i64;
- address types are `i32 | i64`;
- memory/table types carry an address type;
- the 64-bit address-space feature permits i64-addressed memories and tables;
- current core execution semantics are single-threaded.

These facts establish **capability**.

They do not select the project target.

### 0-B — Human-supplied WebGPU host/GPU material

Human-supplied file:

`WebGPU.pdf`

SHA-256:

`6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1`

This exactly matches the source hash already recorded by `docs/clipboards/webgpu-clipboard.md` for the **WebGPU W3C Candidate Recommendation Draft, 15 September 2026**.

Therefore Pass 5 does **not** create a duplicate WebGPU clipboard. The existing shelf is the clipboard; this human-supplied PDF upgrades its source identity for this campaign from historically local/gitignored evidence to a user-supplied source with matching hash.

Pass-5-relevant source facts:

- WebGPU is a host/GPU API, not a Rust/Wasm compilation target;
- WebGPU has independent adapter/device features and limits;
- script-owned memory is generally not directly accessible by a GPU driver;
- data may cross user-agent process boundaries, staging memory, and GPU memory;
- `GPUBuffer` and binding sizes use 64-bit API size types, but usable resource sizes are separately constrained by device limits and allocation success;
- portable default `maxBufferSize` is **256 MiB**;
- portable default `maxStorageBufferBindingSize` is **128 MiB**;
- adapters/devices may expose better limits, but those are negotiated/observed capabilities, not implied by the integer type;
- CPU mapping and GPU use are distinct buffer states;
- WebGPU is exposed in secure Window/Worker contexts, but adapter acquisition can still fail.

New inventory rule:

```
Wasm linear-memory capacity
        !=
GPUBuffer capacity
        !=
storage-binding capacity
        !=
portable zero-copy shared capacity
```

A wasm64 decision must therefore not rely on an assumption that a large Wasm resident set automatically becomes an equally large WebGPU working set.

WebGPU remains **Layer III / host-GPU material**. It does not become Core, the authoritative Lace carrier, or a replacement compilation target.

### 0-C — Human-supplied WGSL shader-language material

Human-supplied file:

`WebGPU Shading Language.pdf`

SHA-256:

`73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d`

This exactly matches the source hash already recorded by `docs/clipboards/wgsl-clipboard.md` and `docs/clipboards/wgsl-mechanisms.md` for the **WebGPU Shading Language W3C Candidate Recommendation Draft, 15 September 2026**.

Therefore Pass 5 does **not** create another WGSL clipboard. The existing shader-language shelf is the source-grounded clipboard; this human-supplied PDF upgrades the source identity for this campaign to a user-supplied source with matching hash.

Pass-5-relevant source facts:

- WGSL is the shader language used by WebGPU to express GPU programs;
- ordinary GPU-materialized integer scalar values are `i32` and `u32`;
- `AbstractInt` has a 64-bit two's-complement value domain, but it is an **abstract** numeric type used in source/early evaluation and does not establish a general runtime `i64`/`u64` shader scalar;
- WGSL pointers are address-space-typed memory views, are not storable, cannot be returned from functions, and cannot be converted to or from integer values;
- host-shareable buffer data must obey WGSL's explicit byte layout/alignment rules;
- `global_invocation_index`, when available through the `linear_indexing` language extension, is `u32`; a dispatch whose linear index would exceed the `u32` range fails;
- baseline atomic scalar types are `atomic<i32>` / `atomic<u32>`; the `atomic_vec2u_min_max` extension provides a special unsigned-64-bit atomic representation as `atomic<vec2<u32>>`, but does not establish a general runtime u64 scalar model;
- minimum supported shader-local memory budgets include 8 KiB private, 8 KiB function, and 16 KiB workgroup storage for the quantified limits in this CRD;
- WGSL language/enable extensions are independently exposed capabilities and cannot be presumed merely because WebGPU itself is present.

This adds another inventory boundary:

```
Lace logical Index
        !=
Rust usize / Wasm pointer
        !=
WGSL pointer
        !=
WGSL concrete integer scalar
        !=
GPU dispatch index
```

A 64-bit Lace logical index crossing into a WGSL shader therefore requires an explicit, tested representation contract. It must not be assumed to become one native shader integer because the host side uses `u64` or wasm64.

WGSL remains **Layer III / shader-language material**. It does not become Lace WORD, Core schema, the authoritative carrier, or a replacement Rust/Wasm compilation target.

### 0-D — Human-supplied WebNN HOST-NN inference material

Human-supplied file:

`Web Neural Network API.pdf`

SHA-256:

`e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`

This exactly matches the source hash already recorded by `docs/clipboards/webnn-clipboard.md`, `docs/clipboards/webnn-mechanisms.md`, and `docs/clipboards/webnn-ascii-machinery.md` for the **Web Neural Network API W3C Candidate Recommendation Draft, 10 September 2026**.

Therefore Pass 5 does **not** create another WebNN clipboard. The existing HOST-NN shelf is the source-grounded clipboard; this human-supplied PDF upgrades the source identity for this campaign to a user-supplied source with matching hash.

Pass-5-relevant source facts:

- WebNN is a low-level, hardware-agnostic neural-network inference API over implementation-selected CPU, GPU, and dedicated ML acceleration;
- `MLContextOptions.powerPreference` and `accelerated` are preferences/hints; the user agent selects the concrete execution device and WebNN does not generally expose device enumeration;
- an `MLContext` can also be created from a specific WebGPU `GPUDevice`, but that bridge does not make WebNN identical to WebGPU;
- `MLOperandDataType` includes `int64` and `uint64`, but operator support is implementation- and operator-specific and must be queried with `opSupportLimits()`;
- `opSupportLimits()` exposes `maxTensorByteLength` plus per-operator data-type/rank support, making tensor capacity a separate runtime capability domain;
- an `MLTensor` has implementation-defined backing allocation, including possible alignment and memory-pool constraints;
- a `Uint8Array` may represent a slice of `WebAssembly.Memory` for WebNN buffer input, but WebNN buffer/tensor operations define their own copy/ownership semantics;
- `exportToGPU()` can bridge an exportable `MLTensor` to a WebGPU `GPUBuffer`, but zero-copy is explicitly **not guaranteed**, and while exported the GPU device has exclusive access to that tensor's contents;
- compiled `MLGraph` objects are immutable and dispatch runs asynchronously on the context timeline; WebNN is graph/tensor inference machinery, not arbitrary shader authoring.

This adds another inventory boundary:

```
Lace logical Index
        !=
Rust usize / Wasm pointer
        !=
WGSL runtime integer / pointer
        !=
WebNN tensor element data type
        !=
WebNN tensor byte capacity
        !=
selected accelerator identity
```

WebNN therefore cannot settle wasm32 versus wasm64 merely because it exposes 64-bit tensor element types or an unsigned-64-bit tensor-size field.

A host-side `u64` logical index, a WebNN `uint64` tensor element, and a 64-bit Wasm pointer are three different claims that must be tested independently.

WebNN remains **Layer III / HOST-NN inference material**. It does not become Lace WORD, Core schema, the authoritative carrier, or a replacement Rust/Wasm compilation target.

---

## 1. Pass-5 thesis

[
oxed{
	ext{Logical Lace address width} 
eq 	ext{Wasm linear-memory pointer width}
}
]

[
oxed{
	ext{Wasm capability} 
eq 	ext{Rust target suitability}
}
]

[
oxed{
	ext{Rust target suitability} 
eq 	ext{browser/device viability}
}
]

[
\boxed{
\text{Wasm / Rust integer width} \neq \text{WGSL runtime integer / pointer domain}
}
]

[
\boxed{
\text{Wasm pointer width} \neq \text{WebNN tensor element width / accelerator domain}
}
]

[
oxed{
	ext{The target must be derived from the required implementation domain, not inherited from an old seal.}
}
]

---

## 2. The eight widths/domains that must not be conflated

Pass 5 must explicitly separate:

### W1 — Lace logical Index width

How many distinct retained positions must one supported implementation be able to name?

Current branch contracts explicitly leave index width unresolved.

A logical index may be represented by a fixed-width integer even if the host pointer width is different.

### W2 — Lace supported domain

How many retained entries/bytes does the implementation claim to support before it must refuse further growth?

Every finite implementation must state this.

The source does not promise physically infinite storage.

### W3 — resident working-set address width

How much Lace state must be simultaneously addressable inside one Wasm linear memory?

This is the width most directly affected by memory32 vs memory64.

It may be far smaller than total persistent Lace history if the carrier is windowed/segmented.

### W4 — Rust ABI pointer / `usize` width

What width does the selected Rust target use for pointers and `usize`?

The current rust-target shelf says `wasm64-unknown-unknown` makes pointers/`usize` 8 bytes.

That is a toolchain/ABI consequence, not a Lace law.

### W5 — embedder/device maximum

How much i64-addressed Wasm memory can the actual browser/device instantiate/grow/use at acceptable cost?

The core spec deliberately does not define this ceiling.

This belongs to the Web embedding + actual device.

### W6 — WebGPU resource / binding domain

How much Lace-derived data must be simultaneously visible to one WebGPU operation?

This is independently bounded by `GPUDevice.limits`, including `maxBufferSize`, `maxStorageBufferBindingSize`, buffer-count/binding limits, workgroup limits, and actual allocation success.

The API's 64-bit size fields are not evidence that a multi-gigabyte GPU resource is available.

If Layer III uses WebGPU, Pass 5 must state the GPU-visible window/chunking contract separately from the Wasm linear-memory working set.

### W7 — WGSL runtime representation / index domain

How are Lace logical positions, offsets, counts, and derived references represented once data enters a WGSL shader?

This is **not** the Wasm pointer domain.

Pass 5 must distinguish:

- `AbstractInt` source/early-evaluation range;
- concrete shader integer scalars `i32` / `u32`;
- address-space-typed WGSL pointers;
- resource byte offsets/layout;
- built-in dispatch indices such as `global_invocation_index`;
- any explicitly encoded wide logical index such as a pair of `u32` values.

No one of these may impersonate another.

### W8 — WebNN tensor / operator / accelerator domain

How much Lace-derived or model-derived data must enter WebNN, in what tensor element representation, through which operators, and on what actual implementation-selected backend?

This is **not** the Wasm pointer domain and is also distinct from WGSL.

Pass 5 must distinguish:

- WebNN tensor element data type;
- tensor byte length and allocation viability;
- per-operator supported data types and ranks;
- MLContext backend/device selection;
- Wasm-memory → tensor copy/write behavior;
- MLTensor → GPUBuffer export behavior;
- graph build/dispatch/readback cost;
- whether 64-bit integer tensors are actually needed by any Layer III workload.

No WebNN capability may be used as a proxy for Wasm linear-memory width.

---

## 3. Existing assumption to re-open

Current shelf language says:

```
Lace Rust #![no_std]
      ->
wasm64-unknown-unknown
```

and historically calls the target “sealed.”

Pass 5 reclassifies that for the duration of this audit:

```
CURRENT TARGET ASSUMPTION:
    wasm64-unknown-unknown

STATUS:
    UNDER REVIEW

NOT:
    already wrong

NOT:
    already correct
```

Do not mass-rewrite historical receipts before the verdict.

---

## 4. Decision candidates

Pass 5 must compare **implementation scenarios**, not merely target names.

### T-A — wasm64 / monolithic memory64

```
Rust: wasm64-unknown-unknown
usize/pointers: 64-bit
Wasm memory: i64-addressed
authoritative/working strand: one large linear-memory domain
```

Question:
- is a >4 GiB simultaneously resident linear-memory domain actually required?

### T-B — wasm64 / windowed or external carrier

```
Rust: wasm64-unknown-unknown
logical indices: 64-bit or declared
persistent Lace: external/windowed
linear memory: bounded working set
```

Question:
- if the working set is already comfortably below 4 GiB, what does 64-bit pointer ABI still buy?

### T-C — wasm32 / 32-bit working set + wide logical indices

```
Rust: wasm32-unknown-unknown
Wasm memory: i32-addressed
logical Lace Index: explicit u64 / pair / other admitted representation
persistent Lace: potentially larger than resident memory
working set: <= memory32 supported domain
```

Question:
- can Lace preserve its logical supported domain without requiring every retained position to be a native pointer?

The uploaded Wasm spec includes i64 **values** independently of i64 memory addressing, so “we need 64-bit logical integers” must not be treated as sufficient proof that the Rust pointer ABI must be 64-bit.

### T-D — wasm32 target + Memory64 feature

**UNESTABLISHED / PROBE-ONLY.**

Do not assume Rust/LLVM can lawfully or usefully emit an i64-addressed linear memory while retaining a wasm32 pointer ABI.

Execution must determine:
- whether the built-in target/toolchain permits it;
- what `usize`/pointer semantics result;
- whether LLVM/core code generation remains coherent.

If this is not a supported target mode, strike it.

### T-E — custom target

Last-resort comparison only.

Current rustc materials warn custom target JSON is unstable and compiler-version sensitive.

Pass 5 should not choose a custom target unless both built-in target families fail a stated requirement.

### T-F — target not yet selectable

A legitimate verdict if the carrier/working-set requirement is still too under-specified.

The pass must be willing to conclude:

```
the target question is premature
```

rather than forcing a choice.

---

## 5. Requirements must be derived from Lace first

Before comparing targets, execution must build:

`docs/plans/source-lab-lace-alignment-pass-5-target-requirements.md`

Required rows:

| Requirement | Source / authority | Required value | Why | Does target choice affect it? |
|---|---|---|---|---|

At minimum:

### RQ1 — logical Index cardinality

Source:
- branch contracts: index width currently unselected;
- indices permanent; no wrap/reuse.

Question:
- minimum supported position count for the first admitted implementation?

If no human/domain requirement exists:
- write `OPEN`.

### RQ2 — entry-size range

Need an upper/lower representation estimate for:
- WORD section;
- POINTER section;
- metadata required by the currently admitted substrate.

Do not invent a final encoding.

Use symbolic size formulas where representation remains open.

### RQ3 — total persistent Lace domain

Does the first implementation require:
- entire Lace resident in linear memory;
- persistent external carrier;
- segmented/windowed history;
- another mechanism?

If unresolved:
- target conclusion may remain conditional.

### RQ4 — resident working set

What must be addressable simultaneously to execute:
- append;
- L-M19 grounding;
- L-M20 sampling;
- L-M21 search;
- required views?

A full-history read must not be assumed merely because an older diagram drew one.

### RQ5 — restart / durability

Linear Wasm memory does not define browser persistence.

If the authoritative history must survive reload:
- the target width cannot be selected as though linear memory were automatically the carrier.

### RQ6 — concurrency

Do current required behaviors need:
- one writer only;
- readers;
- shared linear memory;
- Wasm threads?

The uploaded core spec currently models single-threaded configurations.

Threading/SharedArrayBuffer capability is a separate environment question.

### RQ7 — target-environment population

Which environments must the first supported release run on?

Current project emphasis:
- Pixel 9a / Chrome / installed WebApp path.

Do not silently optimize for desktop Wasmtime if the required deployment is Chrome Android.

### RQ8 — Layer III GPU-visible working set

If WebGPU participates in required projection/view work, determine:

- largest Lace-derived window one GPU operation must consume;
- whether one buffer/binding must hold it or chunking is lawful;
- whether results require readback;
- whether copy/staging cost is acceptable;
- whether WebGPU is required capability or optional acceleration.

This is a Layer III requirement. It must not rewrite Core semantics or silently choose the authoritative carrier.

### RQ9 — shader representation of wide logical indices

If any Layer III shader must observe Lace logical positions beyond the `u32` range, execution must state and test the representation.

Questions:

- does the shader actually need the full logical index, or only a bounded local/window index;
- if the full index is needed, is it encoded as two `u32` lanes, a structure, or another admitted host-shareable representation;
- which operations are required on the wide value: equality, ordering, addition, subtraction, range checks, atomics, hashing;
- can those operations be implemented exactly and cheaply enough in WGSL;
- does the selected representation preserve host↔shader byte layout without translation bugs;
- can dispatch/window base + local `u32` index avoid carrying a full wide index per invocation.

If no required shader consumes wide logical positions, record that explicitly rather than solving a problem the project does not have.

### RQ10 — WebNN acceleration and tensor-domain requirement

If WebNN participates in required Layer III work, determine:

- which exact graph/operator workloads use it;
- largest tensor byte length required by those workloads;
- required tensor element types and ranks;
- whether any operation actually requires `int64` or `uint64`;
- whether the workload needs default UA-selected acceleration or a WebGPU-backed MLContext;
- copy cost from Wasm-owned buffers into MLTensor;
- readback cost;
- MLTensor↔GPUBuffer bridge cost and ownership transition;
- fallback behavior when an operator/data type/rank is unsupported.

If WebNN is optional acceleration rather than required capability, record that explicitly.

Do not choose wasm64 merely to mirror WebNN's 64-bit tensor data types or `maxTensorByteLength` field.

---

## 6. WebAssembly 3.0 source court

Execution must create/update the Wasm shelf only after rereading the newly supplied PDF.

### Established by the core spec

#### S-W1 — i64 value capability

The language has i64 numeric values.

This means a 32-bit memory-address target can still perform 64-bit arithmetic/data operations in principle.

It does **not** establish Rust ABI behavior.

#### S-W2 — address types

`addrtype ::= i32 | i64`.

#### S-W3 — memory type

`memtype ::= addrtype limits page`.

Therefore address width is a memory-type property.

#### S-W4 — binary evidence

The binary limits grammar distinguishes:
- i32 limits: flags `0x00` / `0x01`;
- i64 limits: flags `0x04` / `0x05`.

An actual artifact can therefore be checked for memory64 structurally.

#### S-W5 — 64-bit address-space history

Spec 3.0 records the addition of i64 address types for memories/tables and address-type-dependent memory/table operands.

#### S-W6 — embedding boundary

Core Wasm does not define:
- Web JS API maximums;
- Chrome memory limits;
- device virtual-address reservation;
- installed-PWA behavior.

These require separate material.

#### S-W7 — current core threading model

Current core configuration semantics are single-threaded.

Do not infer browser shared-memory availability from the core spec.

---

## 6A. WebGPU source court — host/GPU constraints on the target audit

Re-read the human-supplied `WebGPU.pdf` against the existing WebGPU shelf. Do not convert WebGPU into a compile target or Core authority.

### S-G1 — separate execution/memory domain

The WebGPU memory model distinguishes script-owned memory, user-agent/process transfer, driver/staging memory, and GPU memory. Copies may be required. An implementation may optimize them away, but zero-copy aliasing is not a portable contract.

### S-G2 — 64-bit size type != large portable capacity

WebGPU uses 64-bit size types for several buffer/binding quantities, while separately applying device limits.

Portable defaults relevant to this inventory include:

- `maxBufferSize = 256 MiB`;
- `maxStorageBufferBindingSize = 128 MiB`;
- `maxComputeWorkgroupStorageSize = 16 KiB`;
- `maxComputeInvocationsPerWorkgroup = 256`.

These defaults are source facts, not Pixel measurements.

### S-G3 — actual device limits are evidence

Adapters expose supported limits/features; devices validate against the exact capabilities selected at creation. A user agent may expose better limits or return no adapter.

Therefore Pass 5 must record the actual Pixel adapter/device limits before using WebGPU capacity in a target verdict.

### S-G4 — mapping is not a universal shared-memory bridge

A mapped `GPUBuffer` exposes mapped bytes to host code and has explicit availability/mapping state. GPU work and host mapping are coordinated, not modeled as both sides freely dereferencing one giant shared Lace memory.

### S-G5 — target-selection consequence

WebGPU cannot by itself choose wasm32 or wasm64.

It can falsify an architecture that assumes:

```
large Wasm memory
      ->
equally large one-shot GPU resource
      ->
cheap/no-copy GPU projection
```

The target audit must treat CPU/Wasm resident working set and GPU-visible working set as separate constraints.

### Pass-5 WebGPU probes

#### P-GPU-LIMITS

On the same Pixel/Chrome/install path used for target testing:

- request adapter/device;
- record adapter and device limits/features;
- especially `maxBufferSize`, `maxStorageBufferBindingSize`, storage-buffer counts, and compute-workgroup limits;
- record adapter-null/device-loss failures verbatim.

#### P-GPU-TRANSFER

For bounded Lace-derived windows:

- measure upload/copy time across several sizes;
- measure compute dispatch separately;
- measure readback separately if required;
- repeat with fixed data/workload;
- record whether extra host allocations/copies are observed by the chosen API path;
- never promote implementation-specific zero-copy behavior into a portable rule.

#### P-GPU-WINDOW

Determine the largest useful GPU-visible view window that can be legally created/bound and completes within the intended latency/energy envelope.

This probe is Layer III evidence only. It does not select the Lace carrier.

### Pass-5 decision-matrix addition

Add criterion **D15 — WebGPU interop / projection-window fit**:

- required Wasm→GPU window size;
- number/size of GPU resources and bindings;
- actual device limits;
- transfer/readback cost;
- whether any claimed wasm64 benefit survives the GPU window/copy boundary.

### Additional assumptions to attack

**A-9:** “A giant wasm64 linear memory gives WebGPU one giant equally addressable working set.”  
Attack: separate resource/binding domain and possible copy/staging boundaries.

**A-10:** “WebGPU uses `GPUSize64`, therefore huge GPU buffers are a portable baseline.”  
Attack: type width != device limit != successful allocation.

### Additional falsifiers

**F18 — GPUSize64 = practical capacity.** A 64-bit API field is treated as capacity evidence.

**F19 — zero-copy by assumption.** Wasm linear memory is treated as directly GPU-visible without device evidence.

**F20 — WebGPU promotion.** WebGPU becomes a replacement compile target, authoritative Lace carrier, or Core mechanism because it constrains Layer III working sets.

## 6B. WGSL source court — shader representation constraints on the target audit

Re-read the human-supplied `WebGPU Shading Language.pdf` against the existing WGSL shelf.

Do **not** turn WGSL into Core, a compile target, or Lace's authoritative memory model.

### S-S1 — shader language, not host ISA

WGSL expresses programs executed in WebGPU shader stages. The Rust/Wasm target produces host-side code. WGSL is a separate shader-language execution domain.

### S-S2 — abstract 64-bit integer range != runtime u64 scalar

WGSL's `AbstractInt` covers integers representable in 64-bit two's-complement form, but it is abstract. The ordinary concrete integer scalar types materialized in shader execution are `i32` and `u32`.

```
host u64 / wasm64 usize
        !=
native WGSL u64 scalar
```

If a 64-bit logical Lace index must enter shader execution, Pass 5 must specify an encoding rather than assuming one.

### S-S3 — WGSL pointers are not host pointers

WGSL pointer/reference types are parameterized by address space, store type, and access mode. They are not storable, cannot be returned from functions, cannot be converted to integers, and integers cannot be converted into pointers.

A Rust pointer, Wasm linear-memory address, and WGSL pointer are three different concepts.

### S-S4 — host-shareable byte layout is an explicit ABI boundary

Storage/uniform buffer contents shared or copied between host and GPU must use host-shareable WGSL types and obey WGSL layout/alignment rules.

Pass 5 must not assume a Rust structure can be copied byte-for-byte into a shader merely because its field names/types look similar.

Any candidate wide-index structure requires an explicit host↔WGSL layout receipt.

### S-S5 — dispatch indexing is u32-bounded

The `linear_indexing` language extension exposes linear dispatch indices such as `global_invocation_index` as `u32`. If the computed linear index would exceed the `u32` range, the dispatch fails.

Therefore one-invocation-per-global-Lace-position cannot silently scale past that boundary. A larger logical domain requires a window/base/chunk scheme or another explicit mechanism.

### S-S6 — atomic width is a separate capability

Baseline atomic scalar store types are `i32` and `u32`. The `atomic_vec2u_min_max` extension introduces `atomic<vec2<u32>>` as a special unsigned-64-bit atomic representation, with extension-specific operations.

Do not infer from its existence that WGSL has general runtime u64 arithmetic or universally available 64-bit atomics.

### S-S7 — shader-local memory budgets are much smaller domains

The CRD's minimum supported quantified limits include:

- private variables statically accessed by one shader: **8192 bytes**;
- function-address-space variables declared in one function: **8192 bytes**;
- workgroup-address-space variables statically accessed by one shader: **16384 bytes**.

These are separate again from WebGPU storage-buffer capacity and from Wasm linear memory.

### S-S8 — WGSL extensions are capability gates

Features such as `subgroups`, `f16`, `linear_indexing`, `buffer_view`, `unrestricted_pointer_parameters`, and related language features are not generic assumptions.

Where Pass 5 relies on one, the actual implementation/device support must be recorded.

### Pass-5 WGSL probes

#### P-WGSL-WIDE-INDEX

Build a disposable compute shader that receives a logical index encoded as two `u32` words. Test only operations actually required by Layer III, such as equality, ordering, bounded-delta add/subtract, window membership, and host-reference round-trip.

Do not invent a full software-u64 package unless a required behavior needs it.

#### P-WGSL-WINDOW-BASE

Test the alternative:

```
wide host logical base
        +
u32 shader-local index
        =
wide logical position outside the shader
```

Determine whether the shader can operate entirely on local/window indices while the host preserves the full logical identity.

#### P-WGSL-LAYOUT

Create one non-Core host↔shader probe record containing a two-`u32` logical index, representative counters/offsets, and explicit padding/layout expectations.

Round-trip it through a storage buffer and verify every field. Record Rust/Wasm-side offsets separately from WGSL `AlignOf` / `SizeOf` expectations.

#### P-WGSL-DISPATCH

When `linear_indexing` is supported, verify `global_invocation_index`, chunk/window base behavior, and the validation boundary for dispatch geometry approaching the `u32` linear-index limit.

#### P-WGSL-ATOMICS

Only if Layer III needs atomics:

- record baseline atomic operations used;
- probe `atomic_vec2u_min_max` availability separately;
- prove whether the required operation exists for the chosen representation;
- otherwise keep wide-index atomic behavior `OPEN`.

### Pass-5 decision-matrix addition

Add criterion **D16 — WGSL representation fit**:

- can required logical indices be represented exactly in shader code;
- does the representation require wide software arithmetic;
- can a window-base + local-u32 model avoid that cost;
- does host↔shader layout round-trip exactly;
- do required atomics/features exist on the actual Pixel;
- does the shader boundary erase any supposed advantage of a 64-bit Wasm pointer ABI.

### Additional assumptions to attack

**A-11:** “wasm64 means WGSL gets 64-bit pointers/integers.”  
Attack: separate shader type and pointer system.

**A-12:** “WGSL AbstractInt is a runtime i64.”  
Attack: abstract early-evaluation domain != concrete GPU-materialized scalar.

**A-13:** “A global Lace index can be used directly as `global_invocation_index` forever.”  
Attack: that built-in is `u32` and dispatch geometry is bounded accordingly.

### Additional falsifiers

**F21 — host pointer width leaks into WGSL.** Rust/Wasm pointer width is treated as shader pointer/integer width.

**F22 — AbstractInt promoted to runtime-u64 evidence.** Compile/source-domain range is used as proof of a concrete shader u64.

**F23 — unchecked host↔WGSL struct copy.** A wide-index representation is copied across the buffer boundary without a layout round-trip receipt.

## 6C. WebNN source court — HOST-NN constraints on the target audit

Re-read the human-supplied `Web Neural Network API.pdf` against the existing WebNN shelf.

Do **not** turn WebNN into Core, the compile target, the authoritative carrier, or a substitute for WebGPU/WGSL.

### S-N1 — inference graph domain, not host address space

WebNN constructs, compiles, and executes neural-network computational graphs.

Its tensors and operands are a separate execution/data domain from Wasm linear memory.

A larger WebNN tensor does not imply the host Wasm module needs equally wide native pointers.

### S-N2 — 64-bit tensor types != 64-bit pointer ABI

WebNN's operand type vocabulary includes `int64` and `uint64`.

That is tensor **element** representation, not a host address type and not evidence for wasm64.

Pass 5 must ask whether any required WebNN operation actually uses those types.

### S-N3 — allowed type != supported type

The specification distinguishes allowed data types from required interoperable data types and permits implementations to support fewer of the allowed types.

`opSupportLimits()` exposes actual operator-level support.

Therefore the existence of `uint64` in the enum is not a Pixel capability receipt.

### S-N4 — tensor-size field != practical tensor capacity

`MLOpSupportLimits.maxTensorByteLength` is an unsigned 64-bit quantity, but the returned value is an implementation capability limit.

Actual tensor creation/allocation can also fail for implementation-defined allocation reasons.

Do not read the IDL field width as portable capacity.

### S-N5 — tensor backing is implementation-defined

`MLTensor` backing storage is implementation-defined and may require particular byte alignment or a particular memory pool.

It is not Wasm linear memory merely because the API accepts ArrayBuffer-backed input.

### S-N6 — Wasm-memory input is a bridge, not identity

The buffer validation rules allow a `Uint8Array` as a generic byte slice, including a slice of a `WebAssembly.Memory` instance.

That establishes an input bridge.

It does not establish shared authoritative storage or zero-copy tensor backing.

### S-N7 — WebNN↔WebGPU export is exclusive and not guaranteed zero-copy

An exportable `MLTensor` can be exported as a `GPUBuffer`.

While exported, WebNN operations depending on the tensor are unavailable and the GPU device has exclusive access.

The specification explicitly states that export may copy the tensor to the GPUBuffer and copy it back when the GPUBuffer is destroyed.

This bridge must be measured, not idealized.

### S-N8 — device selection is a hint domain

Default WebNN context creation takes power/acceleration preferences, while the user agent selects the actual underlying CPU/GPU/NPU combination.

The API deliberately limits direct device exposure.

A WebNN performance result must therefore record the observed context path and support surface without pretending a specific hidden accelerator was selected unless independently evidenced.

### S-N9 — build/dispatch are asynchronous lifecycle costs

`MLGraphBuilder.build()` compiles/optimizes a graph into an immutable `MLGraph`.

`dispatch()` enqueues execution and does not itself signal completion; readback is a synchronization/observation path.

Pass 5 must separate graph-build cost, steady-state dispatch cost, upload/write cost, export cost, and readback cost.

### Pass-5 WebNN probes

#### P-WEBNN-SUPPORT

On the actual Pixel/Chrome installed-app path, record:

- `navigator.ml` availability;
- context creation success;
- `context.accelerated`;
- `opSupportLimits().maxTensorByteLength`;
- preferred input layout;
- required data types/ranks for every WebNN operator the candidate Layer III workload would use.

Do not dump the entire operator catalogue if the project only needs a subset.

#### P-WEBNN-INT64

Only if a candidate workload needs 64-bit integer tensor elements:

- test creation of `int64` / `uint64` tensors;
- query support for each required operator;
- run exact-value round trips and required arithmetic/index operations;
- record unsupported or implementation-defined cases.

Do not infer general 64-bit WebNN arithmetic from enum membership.

#### P-WEBNN-WASM-BRIDGE

Use a `Uint8Array` view over a disposable `WebAssembly.Memory` region as WebNN input.

Measure and verify:

- byte-accurate transfer;
- write/create-constant behavior;
- whether source mutation after the API call affects tensor contents;
- transfer cost over representative sizes.

This proves bridge semantics without calling the MLTensor Wasm memory.

#### P-WEBNN-CAPACITY

Probe tensor creation at representative increasing sizes bounded by `maxTensorByteLength`, available device memory, and responsible test limits.

Record:

- descriptor;
- data type;
- shape;
- byte length;
- success/failure;
- context mode;
- observed memory pressure.

Do not chase a theoretical maximum to the point of destabilizing the device.

#### P-WEBNN-EXPORT-GPU

For a WebGPU-compatible exportable tensor:

- create/export/use/destroy/return;
- verify exclusive-access behavior while exported;
- measure export + GPU use + return cost;
- compare against non-exported write/read path;
- record that zero-copy status is **not assumed** even if timing suggests it.

#### P-WEBNN-DEVICE

Compare, where supported:

- default context;
- `accelerated: true`;
- `accelerated: false`;
- relevant `powerPreference`;
- `createContext(gpuDevice)`.

Record support/performance behavior, but do not claim hidden CPU/GPU/NPU identity that the API does not expose.

#### P-WEBNN-GRAPH-LIFECYCLE

For one representative graph:

- build/compile time;
- first dispatch;
- repeated dispatch;
- writeTensor cost;
- readTensor cost;
- graph/tensor reuse behavior.

Separate setup cost from steady-state inference.

### Pass-5 decision-matrix addition

Add criterion **D17 — WebNN acceleration / tensor-domain fit**:

- does required Layer III work actually use WebNN;
- required tensor capacity and operator support;
- required integer width inside tensors;
- Wasm↔MLTensor transfer cost;
- MLTensor↔GPUBuffer transfer/ownership cost;
- graph build and repeated-dispatch cost;
- backend/device-selection uncertainty;
- whether WebNN offload makes host pointer width less relevant to the accelerated workload.

### Additional assumptions to attack

**A-14:** “WebNN has `uint64`, therefore the project needs wasm64.”  
Attack: tensor element type != host pointer ABI.

**A-15:** “`maxTensorByteLength` is unsigned long long, therefore enormous tensors are portable.”  
Attack: field width != returned implementation limit != successful allocation.

**A-16:** “WebNN export to WebGPU is zero-copy shared memory.”  
Attack: zero-copy is explicitly not guaranteed and ownership is exclusive while exported.

**A-17:** “`accelerated: true` means the app selected a specific GPU/NPU.”  
Attack: it is a preference; the user agent chooses the concrete execution device.

**A-18:** “WebNN can replace arbitrary WGSL/WebGPU compute.”  
Attack: WebNN is a compiled neural-network graph/operator API, not custom shader authoring.

### Additional falsifiers

**F24 — WebNN tensor width promoted to Wasm pointer width.** Tensor `uint64` existence is used as evidence for wasm64.

**F25 — maxTensorByteLength field width promoted to capacity.** IDL width substitutes for queried and allocated capacity.

**F26 — WebNN/WebGPU zero-copy assumed.** `exportToGPU()` is treated as shared memory without measurement/source qualification.

**F27 — acceleration hint promoted to device identity.** A preference is reported as proof of actual NPU/GPU selection.

**F28 — MLTensor promoted to Lace store.** WebNN tensor allocation or graph state is used as the authoritative append-only carrier.

---

## 7. Toolchain court — Rust target facts

Re-read current:
- `docs/clipboards/rust-target-clipboard.md`;
- locator carry;
- rustc source material;
- Cargo build-std clipboard.

Pass 5 must compare at least:

| Question | wasm64 | wasm32 |
|---|---|---|
| Rust support tier | ? | ? |
| stable/nightly | ? | ? |
| prebuilt core | ? | ? |
| build-std needed | ? | ? |
| pointer/`usize` width | ? | ? |
| default/required target features | ? | ? |
| panic behavior | ? | ? |
| C/FFI consequence | ? | ? |
| linker availability | ? | ? |
| expected memory address type | ? | ? |
| reproducibility burden | ? | ? |
| target-specific LLVM risk | ? | ? |

Fill only from pointable toolchain materials or executed receipts.

No folklore.

---

## 8. Carrier/target coupling audit

This is one of Pass 5's most important jobs.

Create a scenario table:

| Carrier model | Total history | Resident set | Does wasm64 materially help? | Why |
|---|---:|---:|---|---|

At minimum evaluate:

### C-A — all-in-linear-memory

If the authoritative strand must remain entirely resident and exceed 4 GiB:
- wasm64 may be necessary/strongly justified.

But this architecture itself must be justified.

### C-B — external authoritative log + memory window

If authoritative history is durable outside Wasm linear memory and Core works on bounded windows:
- total Lace size may exceed memory32 without requiring 64-bit pointers.

Logical indices must still remain non-wrapping.

### C-C — segmented linear-memory representation

Assess only if current Wasm/Rust target can support it lawfully.

Do not invent multi-memory use as accepted architecture merely because Spec 3.0 supports multiple memories.

### C-D — hybrid working state

Small resident append/search/sampling window + persistent history + derived indexes/views.

Again, candidate architecture only.

The target verdict must state which carrier premise it depends on.

---

## 9. Pointer-size cost model

Do not compare only maximum capacity.

For each target, model the cost of pointer-width inflation.

Required symbolic accounting:

```
extra_wasm64_bytes
  =
4 * N_pointer_sized_fields
+ alignment effects
+ wider index/pointer temporaries
+ any compiler/runtime consequences
```

Where concrete structures are not yet defined:
- use symbolic counts;
- do not invent measured totals.

Execution may build a **non-Core probe struct layout** only if it clearly labels the result as toolchain evidence, not implementation selection.

Questions:
- Does a 64-bit pointer ABI double important working-set metadata?
- Does that reduce effective cache/memory capacity enough to matter on the target device?
- Are most Lace references logical indices rather than host pointers?

---

## 10. Required build probes

Pass 5 should prepare and, where the environment permits, execute disposable **Lab target probes**, not Core code.

No GitHub Actions.

Suggested shelf:

`docs/plans/tools/target-audit/`

No `src/`.

### P-BUILD64

Minimal `#![no_std]` target probe:
- build for `wasm64-unknown-unknown`;
- pinned toolchain receipt;
- exact build-std recipe;
- record linker;
- inspect imports/exports/features;
- structurally verify i64 memory type.

### P-BUILD32

Same logic:
- build for `wasm32-unknown-unknown`;
- same source algorithm;
- same optimization/panic assumptions where possible;
- inspect artifact.

### P-ABI

For both:
- report `size_of::<usize>()`;
- pointer width cfg;
- selected target features;
- target spec receipt.

### P-I64-LOGICAL

On wasm32:
- demonstrate 64-bit logical index arithmetic independent of native pointer width;
- no claim that an arbitrary u64 is dereferenceable.

### P-MEM64-ON-W32

Only as an exploratory probe:
- determine whether the toolchain permits memory64 under wasm32;
- if unsupported or incoherent, close T-D as unavailable.

No custom target may be introduced merely to force this probe to pass.

---

## 11. Actual device/browser probes

The target cannot be decided by compiler inspection alone.

Pass 5 inherits but **re-opens**:

### P-64a — instantiate

Can the actual Pixel/Chrome installed-app path instantiate an i64-addressed memory module?

### P-64b — usable capacity

How far can memory64 actually grow?

Record:
- start size;
- every grow step;
- last successful size;
- exact failure;
- browser/app mode;
- device memory pressure context.

This is the central capacity observation.

### P-32b — matching memory32 capacity

Run an equivalent memory32 growth probe.

### P-64c — address-cost benchmark

Same deterministic memory kernel compiled for 32- and 64-bit targets.

Required:
- multiple sizes;
- warmup;
- repeated runs;
- median / spread;
- same browser/device;
- no GPU involvement.

Measure:
- sequential writes;
- sequential reads;
- random/windowed access if relevant to Lace;
- append-like pattern.

### P-INST

Installed WebApp path with each target.

### P-RELOAD

If persistence/carrier is part of target reasoning:
- prove separately;
- Wasm linear memory reload survival must not be assumed.

---

## 12. Missing primary material — explicit blockers

The uploaded **core** spec cannot settle Web embedding limits.

Before a definitive target verdict that depends on browser memory ceilings, Pass 5 should require:

### M-A — WebAssembly JavaScript Interface specification

Need primary source for:
- `WebAssembly.Memory`;
- Memory64 JS representation;
- maximum memory constraints;
- BigInt/i64 boundary where relevant.

Historical A3 remains unresolved unless that document has since been staked.

### M-B — Chrome / V8 Memory64 support source

A current primary browser/engine source if the project claims family support beyond the one tested device.

Device execution can establish the user's Pixel; it does not establish every supported Chrome/Android environment.

### M-C — current rustc target source

The existing rust-target clipboard is already present, but execution must verify its date/version is compatible with the toolchain actually probed.

If the source is stale:
- record the mismatch;
- do not silently update target facts from model knowledge.

---

## 13. Decision matrix

Execution must produce:

`docs/plans/source-lab-lace-alignment-pass-5-target-audit.md`

Required matrix:

| Criterion | Weight/status | wasm64 | wasm32 | conditional/hybrid | Evidence |
|---|---|---|---|---|---|

No numeric score is required unless every criterion has a meaningful quantitative scale.

Required criteria:

### D1 — semantic fit
Does target width constrain Lace semantics?

Expected default:
- target must not define semantics.

### D2 — logical index support
Can required logical Index range be represented safely?

### D3 — resident working-set capacity
Can required working set fit?

### D4 — total supported Lace domain
Depends on carrier + logical indexing, not just linear memory.

### D5 — browser/device availability
Actual target machine.

### D6 — performance
Measured target device, not blog-only.

### D7 — memory overhead
Pointer-size/layout cost.

### D8 — toolchain maturity
Tier, nightly, LLVM risk, CI/testing.

### D9 — reproducibility
Build recipe + pinned components.

### D10 — installation/runtime path
Installed WebApp evidence.

### D11 — feature surface
Does target require more Wasm features than needed?

### D12 — future headroom
What problem does the extra width solve, and when?

### D13 — complexity debt
How much special toolchain/probe/maintenance work does the target create?

### D14 — migration cost
If starting wasm32 and later moving wasm64, what changes?
If starting wasm64 and later moving wasm32, what changes?

Do not assume migration is trivial.

### D15 — WebGPU interop / projection-window fit

- required Wasm→GPU window size;
- number/size of GPU resources and bindings;
- actual device limits;
- transfer/readback cost;
- whether any claimed wasm64 benefit survives the GPU window/copy boundary.

### D16 — WGSL representation fit

- representation of logical indices and offsets inside shaders;
- exact host↔shader layout;
- dispatch-index width;
- required language/enable extensions;
- atomic requirements;
- cost of wide-index emulation versus bounded local/window indexing.

A target does not gain credit merely because the host can address a larger memory if required shader work still operates on bounded resources and 32-bit concrete indices.

### D17 — WebNN acceleration / tensor-domain fit

- whether required Layer III work uses WebNN at all;
- required tensor byte lengths and data types;
- actual per-operator support;
- Wasm→MLTensor transfer cost;
- MLTensor↔GPUBuffer bridge/ownership cost;
- graph build and steady-state dispatch/readback cost;
- backend-selection uncertainty;
- whether WebNN offload changes the host-resident working-set requirement.

WebNN receives no target credit merely because its tensor vocabulary contains 64-bit integers.

---

## 14. Decision rules

### wasm64 is CORRECT only if

all relevant conditions survive:

1. a real project requirement benefits materially from i64-addressed linear memory or 64-bit pointer ABI;
2. that requirement cannot be satisfied more cleanly by wide logical indices + bounded working memory/carrier;
3. the selected Rust toolchain builds reproducibly enough for project policy;
4. actual Chrome/Pixel execution supports the needed module;
5. practical memory capacity exceeds the wasm32-supported requirement by enough to matter;
6. measured performance/memory overhead is acceptable;
7. the target does not force unnecessary platform/toolchain debt;
8. the target's required feature set is supported by the actual deployment environment;
9. any required WebGPU path works within actual GPU resource/binding limits without assuming whole-memory zero-copy aliasing;
10. any required WGSL path has an exact representation for logical indices/offsets without assuming host pointer width becomes shader integer width;
11. any required WebNN path fits actual tensor/operator/device support and measured transfer costs without treating tensor element width as host pointer width.

### wasm64 is OVER-SPECIFIED if

- the required resident working set fits memory32;
- total history can lawfully live in a separate/windowed carrier;
- logical indices can remain wide independently;
- and wasm64 adds material toolchain/performance/memory cost without needed capability.

### wasm64 is CONDITIONALLY CORRECT if

its value depends on an unresolved carrier/domain requirement.

### wasm64 is WRONG if

it fails a required target environment or imposes unacceptable cost while a supported alternative satisfies all requirements.

### target remains UNDECIDED if

the project has not specified the carrier/working-set/domain requirement sufficiently to choose honestly.

---

## 15. Particular assumptions Pass 5 must attack

### A-1
“Lace indices are forever, therefore pointers must be 64-bit.”

**Attack:** logical index != native pointer.

### A-2
“Wasm 3.0 has Memory64, therefore Rust wasm64 is the natural target.”

**Attack:** ISA capability != target suitability.

### A-3
“More address space is automatically better.”

**Attack:** wider pointers, bounds costs, Tier-3/nightly/toolchain debt.

### A-4
“4 GiB memory32 means Lace can only ever hold 4 GiB total.”

**Attack:** only if all authoritative history must live in one linear memory.

### A-5
“wasm64's theoretical 64-bit address space is the project domain.”

**Attack:** embedder/device cap binds first.

### A-6
“Chrome ships Memory64, therefore the Pixel deployment is proven.”

**Attack:** product support != tested installed-app behavior/capacity.

### A-7
“wasm32 is mature, therefore it is sufficient.”

**Attack:** must still satisfy actual supported-domain and resident-working-set requirements.

### A-8
“Target selection can be made before carrier selection.”

**Attack:** may be false; Pass 5 must determine the dependency direction.

### A-9
“A giant wasm64 linear memory gives WebGPU one giant equally addressable working set.”

**Attack:** WebGPU has a separate resource/binding domain and possible copy/staging boundaries.

### A-10
“WebGPU uses `GPUSize64`, therefore huge GPU buffers are a portable baseline.”

**Attack:** type width != device limit != successful allocation.

### A-11
“wasm64 means WGSL gets 64-bit pointers/integers.”

**Attack:** WGSL has its own pointer/address-space model and concrete runtime scalar types.

### A-12
“WGSL `AbstractInt` is a runtime i64.”

**Attack:** abstract early-evaluation range does not establish a concrete GPU runtime i64/u64 scalar.

### A-13
“A global Lace index can map directly to `global_invocation_index` forever.”

**Attack:** the built-in is `u32`; large logical domains require explicit window/base/chunk machinery if the shader needs them.

### A-14
“WebNN has `uint64`, therefore the project needs wasm64.”

**Attack:** tensor element type != host pointer ABI.

### A-15
“`maxTensorByteLength` is unsigned long long, therefore enormous tensors are portable.”

**Attack:** field width != queried implementation limit != successful allocation.

### A-16
“WebNN export to WebGPU is zero-copy shared memory.”

**Attack:** the specification explicitly permits copies and gives the GPU exclusive tensor access while exported.

### A-17
“`accelerated: true` means the application selected a specific GPU/NPU.”

**Attack:** it is a preference; actual selection belongs to the user agent.

### A-18
“WebNN can replace arbitrary WGSL/WebGPU compute.”

**Attack:** it is neural-network graph/operator inference machinery, not custom shader authoring.

---

## 16. Relation to current building-materials inventory

Pass 5 classifies target materials into seven buckets.

### CORE WASM MATERIAL

- uploaded WebAssembly Spec 3.0;
- binary format / address types / memory types / execution semantics.

Answers:
- what the language permits.

### COMPILER MATERIAL

- rustc target clipboard;
- rustc target spec;
- LLVM feature assumptions;
- Cargo build-std material.

Answers:
- what Rust emits and what it costs to build.

### EMBEDDER MATERIAL

- WebAssembly JavaScript Interface;
- browser/engine Memory64 support;
- install/environment constraints.

Answers:
- what the Web environment exposes.

### HOST / GPU MATERIAL

- uploaded WebGPU CRD 2026-09-15;
- existing WebGPU clipboard / mechanisms;
- adapter/device limits and features;
- buffer/binding/mapping/transfer model.

Answers:
- what Layer III GPU execution can actually expose;
- how large the GPU-visible window may be;
- where copy/staging boundaries may exist.

Does **not** answer:
- Lace semantics;
- authoritative carrier choice;
- wasm32 vs wasm64 by itself.

### SHADER-LANGUAGE MATERIAL

- uploaded WGSL CRD 2026-09-15;
- existing WGSL clipboard / mechanisms;
- concrete/abstract numeric type system;
- address spaces, pointers, host-shareable layout;
- shader-local limits, dispatch indices, atomics and extension gates.

Answers:
- what values and memory views GPU shader code can actually manipulate;
- how host-side logical indices must be encoded for shader use;
- which shader-local limits/features constrain Layer III algorithms.

Does **not** answer:
- Lace semantics;
- Rust/Wasm pointer width;
- authoritative carrier selection;
- wasm32 vs wasm64 by itself.

### HOST-NN / ACCELERATOR MATERIAL

- uploaded WebNN CRD 2026-09-10;
- existing WebNN clipboard / mechanisms / ASCII machinery;
- MLContext device-selection model;
- MLOperand / MLTensor data types and capacity limits;
- operator-level support limits;
- Wasm-buffer input bridge;
- WebNN↔WebGPU export bridge;
- graph build / dispatch / readback lifecycle.

Answers:
- what neural-network inference work can be offloaded through the browser;
- what tensor widths/ranks/operators are actually supported;
- how much tensor data may be resident;
- what copy/ownership boundaries exist around Wasm and WebGPU;
- what setup/dispatch/readback costs the acceleration path introduces.

Does **not** answer:
- Lace semantics;
- Rust/Wasm pointer width;
- authoritative carrier selection;
- WGSL shader semantics;
- wasm32 vs wasm64 by itself.

### DEVICE EVIDENCE

- Pixel 9a probes;
- installed app;
- actual capacity/performance.

Answers:
- what the target machine actually does.

No bucket may impersonate another.

---

## 17. Station order

```
PRE-FLIGHT
main + stations + source PDF hash
        |
        v
CLIPBOARDS
Wasm 3.0 source re-admission
WebGPU source re-admission (same existing shelf/hash)
WGSL source re-admission (same existing shelf/hash)
WebNN source re-admission (same existing shelf/hash)
rustc target
Cargo build-std
        |
        v
MAPS
derive Lace target requirements
        |
        v
MAPS / LAB
scenario matrix
logical-index vs pointer-width proof obligations
        |
        v
TARGET PROBES
wasm64 build
wasm32 build
artifact inspection
        |
        v
DEVICE PROBES
memory64 / memory32 capacity + cost
WebGPU limits + transfer/window cost
WGSL wide-index + layout + dispatch probes
WebNN support + tensor + bridge + lifecycle probes
        |
        v
EMBEDDER SOURCE
JS API / browser source gaps
        |
        v
MAPS
decision matrix + verdict
        |
        v
CLIPBOARDS / LAW / PROMPTS / KIT
ONLY if verdict changes current target wording
        |
        v
GLOBAL ASCII LAST
if target state changes or target audit needs a companion overlay
        |
        v
FINDINGS / INDEX / RELEASE
```

No mechanical station churn.

---

## 18. Global ASCII rule

Current companion:
- Pass 32 mechanism catalog;
- Pass 33 vertical alignment;
- Pass 34 traceability;
- Pass 35 behavioral assays;
- Pass 36 desired-behavior mechanisms.

If Pass 5 materially changes the companion:

**Pass 37 — Source → Lab → Lace Alignment Restart Pass 5 — compilation-target audit**

It must show:

```
LACE IMPLEMENTATION REQUIREMENTS
        |
        v
logical domain / resident working set / carrier
        |
        v
TARGET CANDIDATES
wasm64 | wasm32 | conditional
        |
        v
toolchain + embedder + device evidence
        +---- WebGPU resource / transfer constraints
        +---- WGSL integer / pointer / layout constraints
        +---- WebNN tensor / operator / accelerator constraints
        |
        v
TARGET VERDICT
```

Do not put target width into Contract I semantics.

---

## 19. Falsifiers

### F1 — old seal decides outcome
The previous wasm64 declaration is treated as proof.

### F2 — wasm capability = Rust suitability
Spec support alone decides target.

### F3 — logical index = native pointer
64-bit logical address requirement is converted directly to wasm64.

### F4 — linear memory = authoritative total storage
Carrier question silently assumed.

### F5 — theoretical address space = actual device capacity
64-bit address grammar is treated as usable 2^64 memory.

### F6 — product shipping = device proof
Chrome release fact substitutes for Pixel probe.

### F7 — secondary benchmark = local performance
SpiderMonkey/other measurements substitute for Pixel benchmark.

### F8 — wasm32 dismissed without requirements test
Alternative loses by name rather than evidence.

### F9 — wasm64 dismissed because Tier 3
Toolchain maturity cost is real but not semantic disqualification if needed capability survives.

### F10 — custom target smuggling
A custom JSON is introduced to manufacture a preferred answer.

### F11 — carrier selected to save target
Pass 5 chooses OPFS/segmentation solely to make wasm32 win.

### F12 — target selected to save carrier
Pass 5 chooses wasm64 solely to avoid a separate carrier question.

### F13 — unrun artifact claims
Target recipe or module feature is reported as verified without build/inspection.

### F14 — device limits guessed
Memory ceiling inferred instead of measured/primary-sourced.

### F15 — toolchain source stale without qualification
Old rustc page treated as current toolchain truth.

### F16 — target verdict becomes Core law
Compilation target is inserted into Lace semantics.

### F17 — target audit opens implementation gate
No.

### F18 — GPUSize64 = practical capacity
A 64-bit WebGPU API size type is treated as evidence that huge buffers/bindings are available.

### F19 — zero-copy by assumption
Wasm linear memory is treated as directly GPU-visible without source/device evidence.

### F20 — WebGPU target/Core promotion
WebGPU is treated as a replacement compile target, authoritative Lace carrier, or Core mechanism because it constrains Layer III working sets.

### F21 — host pointer width leaks into WGSL
Rust/Wasm pointer width is treated as WGSL pointer or concrete integer width.

### F22 — AbstractInt promoted to runtime-u64 evidence
WGSL's abstract integer range is used as proof of a concrete runtime `u64`/i64 shader scalar.

### F23 — unchecked host↔WGSL struct copy
A wide-index or offset representation is copied into a shader resource without a verified WGSL/Rust byte-layout round trip.

### F24 — WebNN tensor width promoted to Wasm pointer width
WebNN `uint64` / `int64` tensor types are treated as evidence for a 64-bit Wasm pointer ABI.

### F25 — maxTensorByteLength field width promoted to capacity
The unsigned-64-bit IDL type is treated as practical tensor capacity without querying support and allocation.

### F26 — WebNN/WebGPU zero-copy assumed
`exportToGPU()` is treated as shared memory without qualification or measurement.

### F27 — acceleration hint promoted to device identity
A WebNN preference is reported as proof that a specific GPU/NPU was selected.

### F28 — MLTensor promoted to Lace store
WebNN tensor/graph state is treated as authoritative append-only Lace storage.

---

## 20. Completion board

| Gate | Required |
|---|---|
| G1 | current main + stations pinned |
| G2 | uploaded WebAssembly 3.0 hash verified |
| G3 | Wasm core capability vs embedding boundary mapped |
| G4 | Lace logical Index requirement separated from pointer width |
| G5 | supported domain requirement stated or explicitly OPEN |
| G6 | resident working-set requirement stated or explicitly OPEN |
| G7 | carrier dependency made explicit |
| G8 | rustc wasm64 facts re-verified |
| G9 | rustc wasm32 comparison facts re-verified |
| G10 | Cargo build-std consequences included |
| G11 | T-A through T-F scenarios evaluated |
| G12 | wasm64 build probe run or honestly NOT-RUN |
| G13 | wasm32 build probe run or honestly NOT-RUN |
| G14 | actual artifact memory type inspected |
| G15 | pointer/`usize` width separated from logical index width |
| G16 | device Memory64 instantiation checked or honestly NOT-RUN |
| G17 | device capacity comparison checked or honestly NOT-RUN |
| G18 | local performance comparison checked or honestly NOT-RUN |
| G19 | JS embedding primary-source gap closed or explicitly blocks dependent claim |
| G20 | target decision matrix produced |
| G21 | no custom target chosen without necessity |
| G22 | no carrier architecture selected merely to force target answer |
| G23 | no Core semantics changed |
| G24 | current target wording changed only after verdict |
| G25 | Pass 32–36 preserved |
| G26 | global ASCII changed last only if needed |
| G27 | if changed, linear Pass 37 |
| G28 | uploaded WebGPU CRD hash verified against existing shelf |
| G29 | GPU resource/binding domain separated from Wasm linear-memory domain |
| G30 | actual WebGPU adapter/device limits recorded or honestly NOT-RUN |
| G31 | GPU transfer/window assumptions measured or explicitly conditional |
| G32 | WebGPU remains Layer III / host-GPU material; no Core or target-swap promotion |
| G33 | uploaded WGSL CRD hash verified against existing shelf |
| G34 | WGSL runtime integer/pointer domain separated from Wasm/Rust pointer domain |
| G35 | required wide logical-index shader representation proven or explicitly not required |
| G36 | host↔WGSL layout round-trip proven for any selected wide-index representation |
| G37 | dispatch-index / required WGSL extension limits checked or honestly NOT-RUN |
| G38 | WGSL remains Layer III / shader-language material; no Core/target-swap promotion |
| G39 | uploaded WebNN CRD hash verified against existing shelf |
| G40 | WebNN tensor/operator/device domain separated from Wasm pointer and WGSL domains |
| G41 | required WebNN operator/data-type/rank support queried or explicitly not required |
| G42 | any required int64/uint64 WebNN behavior proven on the actual Pixel or kept OPEN |
| G43 | Wasm-memory → WebNN tensor bridge semantics/cost measured or honestly NOT-RUN |
| G44 | WebNN→WebGPU export ownership/copy cost measured or honestly NOT-RUN |
| G45 | WebNN tensor capacity and allocation limit recorded or honestly NOT-RUN |
| G46 | WebNN device-selection claims limited to evidence actually exposed by the API |
| G47 | WebNN remains Layer III / HOST-NN material; no Core/carrier/target-swap promotion |
| G48 | all claims released |

---

## 21. Expected Pass-5 verdict

Exactly one primary verdict:

### TARGET CONFIRMED — WASM64

`wasm64-unknown-unknown` is justified by actual Lace requirements and target evidence.

### TARGET CONDITIONALLY WASM64

wasm64 is correct only under named carrier/domain conditions still awaiting acceptance/evidence.

### TARGET SHOULD BE WASM32

wasm32 satisfies all current requirements and wasm64 is unnecessary cost.

### TARGET CONDITIONALLY WASM32

wasm32 is sufficient only under named bounded-working-set/carrier conditions.

### TARGET UNDECIDED

The build-material inventory is not yet sufficient to choose without pretending.

A verdict must include:

```
WHY THIS TARGET
WHAT REQUIREMENT IT SATISFIES
WHAT COST IT ACCEPTS
WHAT DEVICE EVIDENCE SUPPORTS IT
WHAT WEBGPU RESOURCE / TRANSFER ASSUMPTIONS IT DEPENDS ON
WHAT WGSL REPRESENTATION / LAYOUT ASSUMPTIONS IT DEPENDS ON
WHAT WEBNN TENSOR / OPERATOR / TRANSFER ASSUMPTIONS IT DEPENDS ON
WHAT WOULD FALSIFY IT
WHAT WOULD TRIGGER RE-TARGETING
```

---

## 22. Stop

Pass 5 stops after:
- source/material inventory;
- target requirements;
- target scenario comparison;
- build/device/embedder evidence register;
- target verdict;
- current-target wording reconciliation only if warranted;
- optional Pass 37;
- findings/release.

It does **not** automatically:
- implement Core;
- select the authoritative carrier;
- create a custom target;
- choose a memory allocator;
- accept pointer emission;
- make WebGPU/WebNN part of Core;
- treat GPUBuffer / GPUTexture as the authoritative Lace carrier;
- assume whole-memory zero-copy Wasm↔GPU aliasing;
- assume Rust/Wasm pointer width becomes WGSL pointer/integer width;
- treat WGSL `AbstractInt` as a general runtime u64;
- copy host structs into shader resources without a verified layout contract;
- infer wasm64 from WebNN `int64` / `uint64` tensor types;
- treat `maxTensorByteLength` field width as practical capacity;
- assume WebNN↔WebGPU export is zero-copy;
- treat an MLTensor or MLGraph as the authoritative Lace carrier;
- open Pass 6.

The exact question is:

> **Given what Lace actually needs, what Rust/Wasm compilation target is the smallest, most supportable target that satisfies those needs on the real deployment environment?**
