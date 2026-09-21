# WebGPU CRD 2026-09-15 — mechanism cards (HOST/GPU system procedures)

**Current source correction, 2026-09-20 — repository update pass 3:** M-G8 now distinguishes the GPUQueue IDL on PDF **218** from submit scheduling/nonreuse prose on PDF **222**. Both pages were visually inspected from the supplied PDF; see the [bounded correction receipt](webgpu-clipboard.md#repository-update-pass-3--submit-source-locators). Earlier sighting-method rows and campaign receipts remain dated records. No algorithm or campaign status changes.

**Status:** Pass 3 EXECUTED (Wave A **M-G1…M-G9**; P3-M mesh on clipboard). Pass 4 ASCII: see [`webgpu-ascii-machinery.md`](webgpu-ascii-machinery.md) (**P-G1…P-G9**). Algorithms unchanged. Emission `[GAP]`.  
**Source:** *WebGPU* — **W3C Candidate Recommendation Draft, 15 September 2026**. Editors: Kai Ninomiya, Brandon Jones, Jim Blandy (et al.).  
**PDF:** `refs/local/webgpu-crd-20260915.pdf` → attachment `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1` (**321** pp., text layer; **never git-add**). SHA-256 `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1`. PDF one-based primary.  
**Sighting this pass:** `pdftotext -f N -l N -layout` on §4 Adapter/Device · §5 Buffer/map · §6 Texture · §8 BindGroup · §9 WGSL · §12–13 CmdBuf/encoder · §16 Dispatch · draw IDL · §19 Queue submit · §21 Canvas · §22 errors; Pass 1–2 pins reused.  
**Companion:** [`webgpu-clipboard.md`](webgpu-clipboard.md) · ascii [`webgpu-ascii-machinery.md`](webgpu-ascii-machinery.md) · plan [`webgpu-pass-3-plan.md`](webgpu-pass-3-plan.md) · Pass 2 **D7** (encoder→submit miniature; cross-link from M-G7; do not rewrite) · [`pointer-emission.md`](../pointer-emission.md) = DRAFT/`[GAP]`.  
**Not this file:** Lace Core ASCII = [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**. wasm-spec-3 **M-T\*** / FM-W\* = **compile-target ISA** — cite-only; different layer.

```
+======================================================================+
|  HOST / GPU API REFERENCE — WebGPU W3C CRD 2026-09-15                |
|  Pass 3 = Wave A system mechanisms (M-G1…M-G9) + P3-M mesh.          |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA mechanisms (M-T* / FM-W* stay).  |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: GPUDevice/Queue/Buffer/Texture as Lace strand or store.     |
|  FORBID: queue.submit / draw / dispatch as POINTER emission / Phi.   |
|  FORBID: WGSL as WORD · canvas as emission accept · WebGPU as wasm64.|
|  FORBID: validation/device-lost as Lace cut · mapAsync as append.    |
|  KEEP-read: host/GPU mechanics for Shadow projection / hologram.     |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Pass 4 ASCII: webgpu-ascii-machinery.md (P-G*). Algorithms stand.   |
+======================================================================+
```

Law: WebGPU = **HOST/GPU Shadow only** · GPUBuffer ≠ strand · GPUDevice ≠ Core/Graphic D · `queue.submit`/draw/dispatch ≠ Φ · texture/bind-group ≠ second store · WGSL ≠ WORD · canvas ≠ accept emission · WebGPU ≠ wasm64 compile target · validation/device-lost ≠ Lace cut · `mapAsync`/CPU readback ≠ append authority · Hands win · `[GAP]` sealed.

This file is **Shadow / Layer III documentation of CRD host/GPU procedures**, not Lace `src/`, not Graphic D, not Φ.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-host-API** | May sit beside Lace as host/GPU / projection mechanics; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or Core operator / type set |
| **FORBID-as-Lace-store** | Must not treat GPUBuffer / GPUTexture / bind-group backing as Lace’s 1D strand |
| **FORBID-as-Lace-strand** | Must not treat GPUDevice / Adapter / Queue as the lace cord or Graphic D |
| **FORBID-as-emission-rule** | Must not use `queue.submit`, draw, dispatch, encoder finish, or map/readback as POINTER when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔canvas / host-embed sketches are proposals only; not accepted law |
| **FORBID-as-compile-target-swap** | Must not claim WebGPU replaces wasm64 / wasm-spec-3 target shelf |
| **FORBID-as-Core** | Must not promote encoder/submit path into Lace Core doors / `src/` birth |
| **FORBID fill-GAP** | Must not treat canvas configure / present as filling emission `[GAP]` |

---

## Wave A — CRD constructive spine (blocking) — 1:1 with P-G1…P-G9 (Pass 4)

### M-G1 — Adapter request (`navigator.gpu` → `requestAdapter`)

| Field | Content |
|---|---|
| Kind | adapter-request |
| Spec locus | §4.1 `navigator.gpu` · PDF **41**; §4.2 GPU · PDF **41**; §4.3 GPUAdapter · PDF **~46–47**; EXAMPLE 13 high-performance adapter PDF **46** |
| Sighting method | `pdftotext -f 41 -l 41` / `-f 46 -l 47` (this pass); Pass 1 PAGE C |
| Eye-quote | “A GPU object is available… exposed via navigator.gpu” · “GPU is the entry point to WebGPU.” · `Promise<GPUAdapter?> requestAdapter(optional GPURequestAdapterOptions…)` · “A GPUAdapter encapsulates an adapter, and describes its capabilities (features and limits).” |
| Inputs | Optional `GPURequestAdapterOptions` (`powerPreference`, `forceFallbackAdapter`, `xrCompatible`); browsing context with SecureContext |
| Outputs | `GPUAdapter?` (promise may resolve `null` if no suitable adapter / fallback refused) |
| Invariants | Adapter describes host GPU capabilities — not a Lace door; features/limits are WebGPU capability bins, not Graphic D schema; fallback adapter is still host/GPU, not Core |
| Algorithm | See below |
| Complexity / termination | One async host request; halt when promise settles (adapter or null) |
| Worked miniature | EXAMPLE 13 PDF **46**: `navigator.gpu.requestAdapter({ powerPreference: 'high-performance' })` |
| Lace stamp | **KEEP-read-as-host-API**; **FORBID-as-Lace-strand**; **FORBID-as-Core-write** (adapter ↛ Graphic D / Core door) |
| Hands cite | Graphics A–D · systems-manifest (one store) · AGENTS Implementation Law (no `src/` until emission) · PAGE C |
| Panel cite | **P-G1** · PAGE **C** |
| False friend | **FM-Wgpu2** — Adapter ⇒ Core / Graphic D / lace cord |
| Projection / hologram cite | `clock/README.md` (`lace-projection.html` WebGPU 3D) — Shadow host acquire only; glyphs ≠ schema |
| wasm64 cite | wasm-spec-3 cite-only — **different layer**; adapter ≠ wasm64 compile target (**FM-Wgpu7**) |
| Open gaps | Φ / emission `[GAP]`; which embed may request adapter for Lace projection — out of scope |

**Algorithm**

1. **Preconditions.** SecureContext Window or Worker; `navigator.gpu` singleton available (§4.1 PDF **41**).  
2. **State.** No adapter yet; optional `GPURequestAdapterOptions`.  
3. **Steps.**  
   1. Call `navigator.gpu.requestAdapter(options)` (§4.2 PDF **41**).  
   2. User agent selects an adapter matching options (or fallback / null per notes on PDF **46**).  
   3. On success, obtain `GPUAdapter` with `features`, `limits`, `info` (§4.3 PDF **46–47**).  
   4. Refuse treating the adapter as Graphic D, lace cord, or Core door.  
4. **Choice points.** `powerPreference` / `forceFallbackAdapter` / `xrCompatible` — host selection only.  
5. **Halt.** Adapter promise settled (object or null).  
6. **Output certificate.** Host GPU adapter handle (Shadow reading only).

---

### M-G2 — Device / Queue (`requestDevice` · `device.queue`)

| Field | Content |
|---|---|
| Kind | device-queue |
| Spec locus | §4.4 GPUDevice · PDF **50**; §19.2 GPUQueue IDL · PDF **218**; Adapter `requestDevice` · PDF **46–47** |
| Sighting method | `pdftotext -f 50 -l 50` / `-f 218 -l 218` (this pass); Pass 1 PAGE C |
| Eye-quote | “GPUDevice is the top-level interface through which WebGPU interfaces are created.” · `readonly attribute GPUQueue queue` · `Promise<GPUDevice> requestDevice(optional GPUDeviceDescriptor…)` · `undefined submit(sequence<GPUCommandBuffer>)` |
| Inputs | `GPUAdapter`; optional `GPUDeviceDescriptor` (required features/limits) |
| Outputs | `GPUDevice` with `queue`, factory methods (`createBuffer`, `createTexture`, `createCommandEncoder`, pipelines, …) |
| Invariants | Device is host/GPU top-level factory — **not** Graphic D; `device.queue` schedules GPU work — **not** Lace append; destroy ends device usability, does not cut Lace |
| Algorithm | See below |
| Complexity / termination | One async requestDevice; halt when device promise settles |
| Worked miniature | Pass 2 **D7** step 1: obtain `GPUDevice` (KEEP-read only; Device ↛ Graphic D — FM-Wgpu2) |
| Lace stamp | **KEEP-read-as-host-API**; **FORBID-as-Lace-strand**; **FORBID-as-Core-write** |
| Hands cite | Graphics A–D · AGENTS Implementation Law · PAGE C |
| Panel cite | **P-G2** · PAGE **C** |
| False friend | **FM-Wgpu2** — Device/Queue ⇒ Core / Graphic D / lace cord |
| Projection / hologram cite | Device ≠ Graphic D; projection viewer may hold a device for draw only |
| wasm64 cite | ≠ wasm64 ISA / module instance (**FM-Wgpu7**); cite-only |
| Open gaps | Φ / emission `[GAP]`; multi-device / lost-then-reacquire policy for Lace embeds — out of scope |

**Algorithm**

1. **Preconditions.** Valid `GPUAdapter` (M-G1).  
2. **State.** No device yet; optional descriptor of required features/limits.  
3. **Steps.**  
   1. Call `adapter.requestDevice(descriptor)` (§4.3–4.4).  
   2. On success, receive `GPUDevice` — “top-level interface through which WebGPU interfaces are created” (PDF **50**).  
   3. Use `device.queue` (`GPUQueue`, PDF **218**) as the submission endpoint for finished command buffers.  
   4. Refuse Device/Queue as lace cord, Graphic D, or Core door.  
4. **Choice points.** Required features/limits in descriptor — host capability negotiation only.  
5. **Halt.** Device ready (or request failed / lost — see M-G9).  
6. **Output certificate.** Host GPU device + default queue (Shadow only).

---

### M-G3 — Buffer alloc / map (`createBuffer` · `mapAsync` / `getMappedRange` / `unmap`)

| Field | Content |
|---|---|
| Kind | buffer-map |
| Spec locus | §5.1 GPUBuffer · PDF **53**; §5.2 Buffer Mapping · PDF **60**; EXAMPLE 18 map/unmap figure PDF **55–60** |
| Sighting method | `pdftotext -f 53 -l 55` / `-f 60 -l 60` (this pass); Pass 1–2 PAGE D / FM-Wgpu1 · FM-Wgpu9 |
| Eye-quote | “A GPUBuffer represents a block of memory that can be used in GPU operations. Data is stored in linear layout…” · `mapAsync` / `getMappedRange` / `unmap` · “Mapping a GPUBuffer is requested asynchronously with mapAsync()…” |
| Inputs | `GPUBufferDescriptor` (`size`, `usage`, optional `mappedAtCreation`); later map mode/offset/size |
| Outputs | `GPUBuffer`; optional mapped `ArrayBuffer` views for CPU read/write; unmapped buffer usable again by GPU |
| Invariants | Linear GPU memory ≠ Lace 1D strand; map/readback ≠ Lace append authority; mapped buffer cannot be used by GPU until `unmap()` |
| Algorithm | See below |
| Complexity / termination | Alloc O(1) host call; mapAsync awaits GPU idle on buffer; finite range views |
| Worked miniature | EXAMPLE 18 PDF **55–60** — mapAsync → mapped → getMappedRange → unmap timeline figure |
| Lace stamp | **KEEP-read-as-host-API**; **FORBID-as-Lace-store**; **FORBID-as-emission-rule** (map/readback ↛ append); **SILENT-for-Lace-append** |
| Hands cite | Piece 1/6 · Graphic D (one strand) · PAGE D |
| Panel cite | **P-G3** · PAGE **D** |
| False friend | **FM-Wgpu1** (GPUBuffer ⇒ Lace strand) · **FM-Wgpu9** (mapAsync/readback ⇒ append authority) |
| Projection / hologram cite | Buffer/map ≠ strand/append; may hold vertex/uniform bytes for Shadow draw only |
| wasm64 cite | ≠ linear mem strand / wasm memory (**FM-Wgpu7** cite-only) |
| Open gaps | Φ / emission `[GAP]`; which mapped bytes may mirror Lace views — never as append authority |

**Algorithm**

1. **Preconditions.** Valid `GPUDevice` (M-G2).  
2. **State.** No buffer; choose size/usage (and optional `mappedAtCreation`).  
3. **Steps.**  
   1. `buffer = device.createBuffer(descriptor)` (§5.1 PDF **53**).  
   2. To CPU-access: `await buffer.mapAsync(mode, offset, size)` (§5.2 PDF **60**) — UA ensures GPU finished using buffer.  
   3. `ab = buffer.getMappedRange(offset, size)` — synchronous view of mapped range.  
   4. `buffer.unmap()` before resubmitting GPU work that uses the buffer.  
   5. Refuse GPUBuffer as Lace strand; refuse map/readback as Lace append / Φ gate.  
4. **Choice points.** Usage flags; READ vs WRITE map mode; mappedAtCreation vs later mapAsync.  
5. **Halt.** Buffer allocated; map cycle complete when unmapped (or destroy).  
6. **Output certificate.** Host GPU buffer + optional CPU mapping (Shadow transfer only).

---

### M-G4 — Texture / view (create / view / usages)

| Field | Content |
|---|---|
| Kind | texture-view |
| Spec locus | §6 Textures · GPUTexture IDL PDF **66**; Texture Usages / `createTexture` ~PDF **70–72**; TOC §6; Pass 1 Texture cite ~PDF **222** fragment |
| Sighting method | `pdftotext -f 66 -l 66` / `-f 70 -l 72` (this pass); Pass 1–2 PAGE D / FM-Wgpu4 |
| Eye-quote | `interface GPUTexture { GPUTextureView createView(…); … }` · usages: `COPY_SRC` / `COPY_DST` / `TEXTURE_BINDING` / `STORAGE_BINDING` / `RENDER_ATTACHMENT` / `TRANSIENT_ATTACHMENT` · `createTexture(descriptor)` |
| Inputs | `GPUTextureDescriptor` (size, format, usage, mip/sample/dimension, …); optional view descriptor |
| Outputs | `GPUTexture`; `GPUTextureView` for bind/attach |
| Invariants | Texture is GPU image resource — **not** a second Lace store / Graphic D; usages gate host/GPU ops only; hologram may *draw* through textures without becoming schema |
| Algorithm | See below |
| Complexity / termination | Finite create + view; halt when texture/view objects returned (or validation error — M-G9) |
| Worked miniature | createTexture with `TEXTURE_BINDING` usage (PDF ~**70–72** example path) |
| Lace stamp | **KEEP-read-as-host-API**; **FORBID-as-Lace-store** (texture ≠ second store / Graphic D) |
| Hands cite | systems-manifest (one store) · PAGE D |
| Panel cite | **P-G4** · PAGE **D** |
| False friend | **FM-Wgpu4** — Texture ⇒ second Lace store / Graphic D backing |
| Projection / hologram cite | hologram/clock may *draw* with textures; glyphs ≠ schema; texture ≠ store |
| wasm64 cite | cite-only; different layer |
| Open gaps | WebGPU supplies no Lace retention rule; current sampling-derived retention/materialization `[GAP]`; HDR/alpha canvas edge cases deferred Wave B |

**Algorithm**

1. **Preconditions.** Valid `GPUDevice` (M-G2).  
2. **State.** Choose format, size, usage flags.  
3. **Steps.**  
   1. `texture = device.createTexture(descriptor)` (§6.1 / createTexture ~PDF **70**).  
   2. Select usages required for later bind/copy/render-attach (PDF **~70** usage flags).  
   3. `view = texture.createView(optional descriptor)` (PDF **66**).  
   4. Refuse texture/view as Lace second store or Graphic D backing.  
4. **Choice points.** Dimension / mip / sample count / usage combination — host Valid Usage.  
5. **Halt.** Texture (± view) ready for bind or attachment.  
6. **Output certificate.** Host GPU texture/view (Shadow image resource only).

---

### M-G5 — Bind group layout (`createBindGroupLayout` / `createBindGroup`)

| Field | Content |
|---|---|
| Kind | bind-group |
| Spec locus | §8.2.1 Bind Group Creation · PDF **100**; EXAMPLE 25 layout+bind+pipeline layout · PDF **108** |
| Sighting method | `pdftotext -f 100 -l 100` / `-f 108 -l 108` (this pass); Pass 1–2 PAGE D / FM-Wgpu4 |
| Eye-quote | “A GPUBindGroup is created via GPUDevice.createBindGroup().” · `required GPUBindGroupLayout layout` · `required sequence<GPUBindGroupEntry> entries` · EXAMPLE 25: uniform buffer + texture + sampler bindings |
| Inputs | Layout entries (binding index, visibility, buffer/texture/sampler/storage layouts); resources conforming to layout |
| Outputs | `GPUBindGroupLayout`; `GPUBindGroup`; often a `GPUPipelineLayout` composing layouts |
| Invariants | Bind group exposes resources to shaders — **not** a second Lace store; layout is host binding schema, not Graphic D / WORD schema |
| Algorithm | See below |
| Complexity / termination | Finite entry lists; halt when layout/group created (or validation error) |
| Worked miniature | EXAMPLE 25 PDF **108** — createBindGroupLayout → createBindGroup → pipeline layout |
| Lace stamp | **KEEP-read-as-host-API**; **FORBID-as-Lace-store** (bind-group ≠ second Lace store) |
| Hands cite | systems-manifest (one store) · PAGE D |
| Panel cite | **P-G5** · PAGE **D** |
| False friend | **FM-Wgpu4** — bind-group ⇒ second Lace store |
| Projection / hologram cite | Bind ≠ second Lace store; may wire uniforms/samplers for Shadow draw |
| wasm64 cite | cite-only |
| Open gaps | Φ / emission `[GAP]` |

**Algorithm**

1. **Preconditions.** Valid `GPUDevice`; resources (buffers/textures/samplers) already created (M-G3/M-G4).  
2. **State.** Empty layout intent; choose binding entries.  
3. **Steps.**  
   1. `layout = device.createBindGroupLayout({ entries: […] })` (EXAMPLE 25 PDF **108**).  
   2. `bindGroup = device.createBindGroup({ layout, entries: […] })` (§8.2.1 PDF **100**).  
   3. Optionally compose `createPipelineLayout` with the layout(s).  
   4. Refuse bind-group as Lace second store / Graphic D.  
4. **Choice points.** Visibility stages; buffer vs texture vs sampler entry kinds.  
5. **Halt.** Bind group ready to set on a pass encoder.  
6. **Output certificate.** Host binding objects (Shadow shader resource wiring only).

---

### M-G6 — Render / Compute pipeline + WGSL boundary

| Field | Content |
|---|---|
| Kind | pipeline-wgsl |
| Spec locus | §9 Shader Modules · PDF **108–110**; `code` = WGSL source PDF **109**; EXAMPLE 27 pipeline-overridable constants PDF **120**; Device pipeline factories PDF **50** |
| Sighting method | `pdftotext -f 109 -l 110` / `-f 120 -l 120` (this pass); Pass 1 PAGE E / FM-Wgpu5 |
| Eye-quote | `code` = “The WGSL source code for the shader module.” · `@id(…) override …` pipeline-overridable constants · `createShaderModule` / `createComputePipeline` / `createRenderPipeline` |
| Inputs | WGSL source string; pipeline descriptors (layout, stages, vertex/fragment/compute state, constants) |
| Outputs | `GPUShaderModule`; `GPUComputePipeline` and/or `GPURenderPipeline` |
| Invariants | WGSL is **host shader language** — **not** Lace WORD / Core operator; pipeline ≠ Core ops; hologram WGSL live path is Shadow draw only |
| Algorithm | See below |
| Complexity / termination | Compile/validate at module and/or pipeline creation; halt when pipelines returned (or error deferred to pipeline creation per notes PDF **110**) |
| Worked miniature | EXAMPLE 27 PDF **120** — WGSL `@id` overrides + JS `constants: { … }` |
| Lace stamp | **KEEP-read-as-host-API**; **FORBID-as-Core-write** (WGSL ≠ WORD; pipeline ≠ Core ops) |
| Hands cite | AGENTS Implementation Law · PAGE E · hologram `visual-primitives.md` (WGSL live path cite) |
| Panel cite | **P-G6** · PAGE **E** |
| False friend | **FM-Wgpu5** — WGSL ⇒ Lace WORD / Core operator / schema language |
| Projection / hologram cite | `hologram/visual-primitives.md` — “Live draw path… WGSL”; glyphs ≠ schema; WGSL ≠ WORD |
| wasm64 cite | cite-only; WGSL ≠ wasm text / ISA |
| Open gaps | Φ / emission `[GAP]`; shader compilation detail beyond boundary deferred Wave B |

**Algorithm**

1. **Preconditions.** Valid `GPUDevice`; pipeline layout / bind layouts as needed (M-G5).  
2. **State.** WGSL source prepared for entry points.  
3. **Steps.**  
   1. `module = device.createShaderModule({ code: wgslSource })` (§9 PDF **109–110**).  
   2. Create compute and/or render pipeline from module stages (`createComputePipeline` / `createRenderPipeline`, PDF **50**).  
   3. Optionally supply pipeline-overridable constants (EXAMPLE 27 PDF **120**).  
   4. Refuse WGSL as Lace WORD; refuse pipeline as Core operator set / `src/` birth.  
4. **Choice points.** Entry points; render vs compute; async pipeline creation variants.  
5. **Halt.** Pipeline objects ready for `setPipeline` on a pass.  
6. **Output certificate.** Host shader module + pipelines (Shadow draw/compute path only).

---

### M-G7 — Command encoder / passes (encode · compute/render pass · finish)

| Field | Content |
|---|---|
| Kind | command-encode |
| Spec locus | §12–13 Command Buffers / Encoding · PDF **160–165**; EXAMPLE 31 create→finish→submit PDF **~160–162**; §16.1.2 Dispatch PDF **185–186**; draw IDL PDF **200**; **Pass 2 D7** |
| Sighting method | `pdftotext -f 160 -l 162` / `-f 185 -l 186` / `-f 200 -l 200` (this pass); Pass 2 D7 |
| Eye-quote | `createCommandEncoder` → encode → `finish()` → `GPUCommandBuffer` · `dispatchWorkgroups` · `draw` / `drawIndexed` · EXAMPLE 31 clear-buffer encode path |
| Inputs | `GPUDevice`; open encoder; optional compute/render pass descriptors; pipelines, bind groups, draw/dispatch args |
| Outputs | Finished `GPUCommandBuffer` (not yet executed until submit — M-G8) |
| Invariants | Encoder builds host/GPU command list — **not** POINTER emission / Φ; finish ≠ Lace append; cross-link **D7** (do not rewrite) |
| Algorithm | See below |
| Complexity / termination | Finite command list; encoder state `"open"` → finish; halt when command buffer returned |
| Worked miniature | **Pass 2 D7** + EXAMPLE 31 PDF **~160–162**: createCommandEncoder → (encode) → finish → (submit in M-G8) |
| Lace stamp | **KEEP-read-as-host-API**; **FORBID-as-emission-rule**; **FORBID-as-Core**; **SILENT-for-Lace-append** |
| Hands cite | pointer-emission `[GAP]` · PAGE F · D7 |
| Panel cite | **P-G7** · PAGE **F** |
| False friend | **FM-Wgpu3** — encode/draw/dispatch ⇒ POINTER when / Φ |
| Projection / hologram cite | Encoder ≠ Φ; Shadow may encode draw for viewer only |
| wasm64 cite | cite-only |
| Open gaps | Φ / emission `[GAP]`; full Valid Usage tables — book continues (D7 [OPEN]) |

**Algorithm**

1. **Preconditions.** Valid `GPUDevice` (M-G2); pipelines/resources as needed (M-G3…M-G6).  
2. **State.** Encoder `[[state]]` initially `"open"` (§13.1 PDF **160**).  
3. **Steps.**  
   1. `encoder = device.createCommandEncoder()` (EXAMPLE 31 / §13.2).  
   2. Begin compute and/or render passes; `setPipeline`, set bind groups, `dispatchWorkgroups` / `draw` / `drawIndexed` as apt (PDF **185–186**, **200**).  
   3. End passes; optionally other encodes (copies, clears).  
   4. `commandBuffer = encoder.finish()` → `GPUCommandBuffer`.  
   5. Refuse encoder/finish/draw/dispatch as POINTER emission or Lace append (see **D7**).  
4. **Choice points.** Compute vs render pass; draw vs dispatch; which resources bound.  
5. **Halt.** Command buffer finished (encoder closed).  
6. **Output certificate.** Host `GPUCommandBuffer` ready for queue submit (Shadow schedule only).

---

### M-G8 — Submit / present (`queue.submit` · canvas configure / `getCurrentTexture`)

| Field | Content |
|---|---|
| Kind | submit-present |
| Spec locus | §19.2 GPUQueue IDL / `submit` signature · PDF **218**; submit scheduling and command-buffer nonreuse prose · PDF **222**; §21 Canvas · PDF **228–230**; `GPUCanvasConfiguration` PDF **235** |
| Sighting method | `pdftotext -f 218 -l 218` / `-f 228 -l 230` / `-f 235 -l 235` (this pass); Pass 1 PAGE F+G / FM-Wgpu3 · FM-Wgpu6 |
| Current locator qualification | Repository update pass 3, 2026-09-20: PDF **218** and **222** visually inspected; IDL and prose locators distinguished. The preceding method row records the earlier pass, not this new sighting |
| Eye-quote | `submit(commandBuffers)` — “Schedules the execution of the command buffers by the GPU on this queue.” · `canvas.getContext('webgpu')` · `configure()` · `GPUCanvasConfiguration` (`device`, `format`, `usage`, …) |
| Inputs | Sequence of finished `GPUCommandBuffer`s; optionally a canvas + `GPUCanvasConfiguration` |
| Outputs | GPU work scheduled on Queue timeline; optionally configured canvas presentation via `getCurrentTexture()` |
| Invariants | `queue.submit` ≠ POINTER emission / Φ; canvas configure / present = **PROPOSAL-only** for Lace↔canvas — **FORBID** accepting `pointer-emission.md` / filling `[GAP]` |
| Algorithm | See below |
| Complexity / termination | Submit schedules finite buffers (not reusable); configure replaces drawing buffer; present is host compositor path |
| Worked miniature | D7 step 5 + EXAMPLE 31: `device.queue.submit([commandBuffer])`; EXAMPLE 34 PDF **228** getContext('webgpu') |
| Lace stamp | **KEEP-read-as-host-API** (submit); **FORBID-as-emission-rule**; canvas **PROPOSAL-only** · **FORBID fill-GAP** |
| Hands cite | pointer-emission DRAFT/`[GAP]` · PAGE F+G · D1/D6 |
| Panel cite | **P-G8** · PAGE **F+G** |
| False friend | **FM-Wgpu3** (submit/draw ⇒ Φ) · **FM-Wgpu6** (canvas ⇒ accept emission) |
| Projection / hologram cite | submit ≠ emission; canvas PROPOSAL-only; `lace-projection.html` may present Shadow frames without accepting Φ |
| wasm64 cite | cite-only |
| Open gaps | WebGPU supplies no Lace retention rule; current retention/materialization **`[GAP]`** (FORBID fill); Lace↔canvas bridge remains proposal |

**Algorithm**

1. **Preconditions.** Finished `GPUCommandBuffer`(s) (M-G7); valid `device.queue`. Optional canvas for present.  
2. **State.** Command buffers ready; canvas may be unconfigured.  
3. **Steps (submit).**  
   1. `device.queue.submit([commandBuffer, …])` (IDL PDF **218**; scheduling/nonreuse prose PDF **222**).
   2. Buffers are scheduled on Queue timeline; **cannot be used again**.  
   3. Refuse submit as POINTER when/arity/adjacency or Φ fill.  
4. **Steps (present, optional).**  
   1. `context = canvas.getContext('webgpu')` (PDF **228**).  
   2. `context.configure({ device, format, usage, … })` (PDF **230**, members PDF **235**).  
   3. Acquire `getCurrentTexture()` for render-attach / present.  
   4. Stamp canvas path **PROPOSAL-only**; **FORBID** “configure accepts pointer-emission.md”.  
5. **Halt.** Work scheduled; canvas configured or left unused.  
6. **Output certificate.** Host GPU schedule (± canvas present) — Shadow only; emission still `[GAP]`.

---

### M-G9 — Error / device-lost vs Lace append

| Field | Content |
|---|---|
| Kind | error-lost |
| Spec locus | §22 Errors & Debugging · PDF **238**; `GPUDeviceLostReason` / `lost` · PDF **238**; error scopes / dispatch error ~PDF **241–243** |
| Sighting method | `pdftotext -f 238 -l 238` / `-f 241 -l 243` (this pass); Pass 1–2 PAGE H / FM-Wgpu8 |
| Eye-quote | “During the normal course of operation of WebGPU, errors are raised via dispatch error.” · After device lost, validation/error tracking need not run; `GPUDevice.lost` promise resolves · validation / out-of-memory / internal error kinds |
| Inputs | Device operations that may fail validation; optional pushed error scopes; lost reason |
| Outputs | Surfaced `GPUError` kinds via scopes / `uncapturederror`; or `lost` promise resolution; post-lost ops mostly skip usual validation |
| Invariants | Spec error / device-lost procedure is **silent for Lace append** — not a Lace cut, Φ gate, or append scheduler; lost ≠ emission acceptance |
| Algorithm | See below |
| Complexity / termination | Errors dispatched per op; lost is terminal for that device object |
| Worked miniature | Push/pop error scope stack (PDF **241–243**); observe `device.lost` (PDF **238**) |
| Lace stamp | **KEEP-read-as-host-API**; **SILENT-for-Lace-append**; **FORBID-as-emission-rule** (lost/validation ≠ Lace cut / Φ gate) |
| Hands cite | PAGE H · pointer-emission `[GAP]` · AGENTS (Hands win) |
| Panel cite | **P-G9** · PAGE **H** |
| False friend | **FM-Wgpu8** — validation / device-lost ⇒ Lace cut / Φ gate / append rule |
| Projection / hologram cite | device-lost ≠ Lace cut; viewer may reacquire device — still Shadow |
| wasm64 cite | cite-only; trap ≠ this shelf’s lost (different layer) |
| Open gaps | Φ / emission `[GAP]`; Lace policy on reacquire after lost — out of scope |

**Algorithm**

1. **Preconditions.** Active `GPUDevice` (or recently lost).  
2. **State.** Optional `[[errorScopeStack]]` on device (PDF **241**).  
3. **Steps.**  
   1. On failing Valid Usage, errors are raised via **dispatch error** (§22 PDF **238**).  
   2. If scopes pushed: classify validation / out-of-memory / internal; attach to current scope (PDF **241**).  
   3. On fatal loss: `device.lost` resolves; further validation/error tracking need not run; most ops appear to succeed except cases like `mapAsync` (PDF **238**).  
   4. Refuse treating validation/lost as Lace cut, append rule, or Φ gate.  
4. **Choice points.** Which error scope filter; whether to destroy/recreate device.  
5. **Halt.** Error reported to content timeline, or device marked lost.  
6. **Output certificate.** Host error/lost signal only — **SILENT** for Lace append.

---

## Waves B–D (deferred — one-line seeds)

| Wave | Seed (not blocking) |
|---|---|
| B | Color/depth attachment load/store recipes beyond spine; canvas HDR/alpha edge cases |
| C | Multi-queue / timestamp queries; shader compilation detail beyond WGSL boundary |
| D | clock/hologram viewer implementation notes (cite-only; do not amend those files) |

---

## Steward refuse (cards only)

With only M-G\* + P3-M, steward must refuse:

1. “GPUBuffer is the Lace strand” → **M-G3** + **FM-Wgpu1** + FORBID-as-Lace-store.  
2. “GPUDevice / Adapter is Graphic D / Core door” → **M-G1/M-G2** + **FM-Wgpu2** + FORBID-as-Lace-strand.  
3. “`queue.submit` emits POINTER” / “draw/dispatch fills Φ” → **M-G7/M-G8** + **FM-Wgpu3** + FORBID-as-emission-rule; emission `[GAP]`.  
4. “Texture / bind-group is a second Lace store” → **M-G4/M-G5** + **FM-Wgpu4**.  
5. “WGSL is Lace WORD” → **M-G6** + **FM-Wgpu5** + FORBID-as-Core-write.  
6. “Canvas configure accepts pointer-emission.md” → **M-G8** + **FM-Wgpu6** + PROPOSAL-only; GAP remains.  
7. “WebGPU replaces wasm64 / wasm-spec-3 compile target” → mesh wasm64 column + **FM-Wgpu7** + FORBID-as-compile-target-swap.  
8. “Validation / device-lost is a Lace cut / Φ gate” → **M-G9** + **FM-Wgpu8** + SILENT.  
9. “`mapAsync` / CPU readback is Lace append authority” → **M-G3** + **FM-Wgpu9** + FORBID-as-emission-rule.  
10. “Calling WebGPU / configuring canvas accepts pointer-emission.md” → **M-G8** + D1/D6; GAP remains.

These mechanisms are CRD **host/GPU** procedures — Shadow reading for Lace projection / hologram / canvas embed surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, and do not swap wasm64.
