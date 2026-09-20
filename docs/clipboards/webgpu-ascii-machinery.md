# WebGPU CRD 2026-09-15 — ASCII SOURCE MACHINERY (HOST/GPU · Wave A P-G1…P-G9 · P4-X)

**Current source correction, 2026-09-20 — repository update pass 3:** P-G8 now distinguishes GPUQueue IDL PDF **218** from submit scheduling/nonreuse prose PDF **222**, matching current M-G8 and the [bounded correction receipt](webgpu-clipboard.md#repository-update-pass-3--submit-source-locators). Earlier P4/P5 receipts and sighting references remain dated records; this locator repair does not execute Pass 6 or change the algorithm.

**Status:** Pass 4 **EXECUTED** · Pass 5 **EXECUTED** (Shadow Order Proposal + light P5-X CONFIRM) · Wave A panels **P-G1…P-G9** 1:1 with **M-G1…M-G9** · P4-X/P5-X all **PASS**. Emission `[GAP]`.  
**Source:** *WebGPU* — **W3C Candidate Recommendation Draft, 15 September 2026**. Editors: Kai Ninomiya, Brandon Jones, Jim Blandy (et al.).  
**PDF:** `refs/local/webgpu-crd-20260915.pdf` → attachment `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1` (**321** pp., text layer; **never git-add**). PDF one-based primary.  
**Algorithms (unchanged):** [`webgpu-mechanisms.md`](webgpu-mechanisms.md) — **M-G1…M-G9** (cite only; do not rewrite).  
**Admission:** [`webgpu-clipboard.md`](webgpu-clipboard.md) · plans [`webgpu-pass-4-plan.md`](webgpu-pass-4-plan.md) · [`webgpu-pass-5-plan.md`](webgpu-pass-5-plan.md).  
**Mesh (cite-only):** [`pointer-emission.md`](../pointer-emission.md) = DRAFT/`[GAP]` · [`clock/README.md`](../clock/README.md) · [`hologram/`](../hologram/README.md) · wasm-spec-3 (**wasm64** — different layer).  
**Not this file:** Lace Core ASCII = [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**.

```
+======================================================================+
|  HOST / GPU API REFERENCE — WebGPU W3C CRD 2026-09-15                |
|  Pass 4 = ASCII SOURCE MACHINERY + Wave A panels P-G1…P-G9 + P4-X.   |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA panels (P-T* / M-T* / FM-W* stay).|
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: GPUDevice/Queue/Buffer/Texture as Lace strand or store.     |
|  FORBID: queue.submit / draw / dispatch as emission / Phi.           |
|  FORBID: WGSL as WORD · canvas as emission accept · WebGPU as wasm64.|
|  FORBID: validation/device-lost as Lace cut · mapAsync as append.    |
|  KEEP-read: host/GPU mechanics for Shadow projection / hologram.     |
|  ASCII fences = Spec/API-side glyphs ONLY; stamps live UNDER fences. |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Status: Pass 4+5 EXECUTED (Order Proposal Shadow). Emission [GAP]. |
+======================================================================+
```

**Opening contract**

1. Models **WebGPU CRD host/GPU procedures**, not Lace Core.  
2. Companion to `webgpu-mechanisms.md` + `webgpu-clipboard.md`.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No panel closes it. Shadow / Layer III only.  
5. Inside fences: **API/spec-side glyphs only** — never Lace WORD / Graphic D / Φ / strand as if they were WebGPU objects; **never the word `POINTER` inside diagram fences**.  
6. Stamps live **under** fences (not inside) and match Wave A M-G* teeth.  
7. KEEP-read host/GPU for Shadow projection / hologram; FORBID Buffer/Device as Lace store/strand; FORBID submit as emission; FORBID WGSL as WORD; FORBID WebGPU as wasm64.  
8. Hands win; steward refuses store/emission/WORD/wasm64 lookalikes.

Law: WebGPU = **HOST/GPU Shadow only** · GPUBuffer ≠ strand · GPUDevice ≠ Core/Graphic D · `queue.submit`/draw/dispatch ≠ Φ · texture/bind-group ≠ second store · WGSL ≠ WORD · canvas ≠ accept emission · WebGPU ≠ wasm64 compile target · validation/device-lost ≠ Lace cut · `mapAsync`/CPU readback ≠ append authority · Hands win · `[GAP]` sealed.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-host-API** | May sit beside Lace as host/GPU / projection mechanics; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or Core operator / type set |
| **FORBID-as-Lace-store** | Must not treat GPUBuffer / GPUTexture / bind-group backing as Lace’s 1D strand |
| **FORBID-as-Lace-strand** | Must not treat GPUDevice / Adapter / Queue as the lace cord or Graphic D |
| **FORBID-as-emission-rule** | Must not use `queue.submit`, draw, dispatch, encoder finish, or map/readback as emission when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔canvas / host-embed sketches are proposals only; not accepted law |
| **FORBID-as-compile-target-swap** | Must not claim WebGPU replaces wasm64 / wasm-spec-3 target shelf |
| **FORBID-as-Core** | Must not promote encoder/submit path into Lace Core doors / `src/` birth |
| **FORBID fill-GAP** | Must not treat canvas configure / present as filling emission `[GAP]` |

---

## SOURCE MACHINERY overview (API side only · Core / Φ / wasm64 ISA off-board)

Spine matches **M-G1…M-G9** / **P-G1…P-G9**. Constructive host/GPU path only.

```
  [navigator.gpu / requestAdapter] ------- M-G1 / P-G1
           |                              FORBID-as-Lace-strand
           v
  [requestDevice · device.queue] --------- M-G2 / P-G2
           |                              FORBID-as-Lace-strand
           +--> [createBuffer · mapAsync] ---- M-G3 / P-G3
           |     FORBID-as-Lace-store · FORBID map as append
           +--> [createTexture · createView] - M-G4 / P-G4
           |     FORBID-as-Lace-store
           v
  [bindGroupLayout · bindGroup] ---------- M-G5 / P-G5
           |                              FORBID-as-Lace-store
           v
  [shaderModule + pipeline · WGSL] ------- M-G6 / P-G6
           |                              FORBID WGSL as WORD
           v
  [commandEncoder · passes · finish] ----- M-G7 / P-G7
           |                              FORBID-as-emission-rule
           |                              (D7 cross-link)
           v
  [queue.submit · canvas configure] ------ M-G8 / P-G8
           |                              FORBID submit as Phi
           |                              canvas PROPOSAL-only
           |                              FORBID fill-GAP
           +--> [errors · device.lost] ------- M-G9 / P-G9
           |                              SILENT-for-Lace-append
           |
           x --> Lace Core / Graphic D / Phi / wasm64 ISA swap
                 FORBIDDEN off this board

  Lace Core OFF this board --> docs/systems-manifest-ascii.md
  Phi = [GAP]
  WebGPU = HOST/GPU Shadow only (not wasm64 compile target)
```
stamp under fence: KEEP-read-as-host-API | Core/Phi/wasm64 FORBIDDEN off-board | FM-Wgpu7

**P4-X:** Rigor matrix lives below (this file) and on the clipboard Pass 4 receipt. This file holds **exactly one** canonical SOURCE MACHINERY overview (above).

**P5-O:** Overview count=1 confirmed (Pass 5). Core / Graphic D / Φ / wasm64 ISA remain FORBIDDEN off-board.

### Order proposal (Shadow) — SOURCE MACHINERY as shelf hygiene *(short mirror)*

**Full text:** clipboard Pass 5 **P5-P**. **Stamps:** KEEP-read-as-host-API · FORBID-as-Core-write · FORBID-as-Lace-store · FORBID-as-Lace-strand · FORBID-as-emission-rule · FORBID-as-Core · FORBID fill-GAP · FORBID-as-compile-target-swap · SILENT-for-Lace-append · PROPOSAL · NON-binding.

This overview **proposes** HOST/GPU shelf hygiene beside Shadow projection / hologram — observe → name → diagram-check → stamp-check → list OPENs → decide (commit/release/defer/stop). It is **not** Core, not an AGENTS.md amendment, not Graphic D, not a Φ scheduler, and **NON-binding** on `systems-manifest-ascii.md` / graphics / rust-nostd / wasm-spec-3. Keep-outs stand: Buffer≠strand · Device≠Graphic D · submit/draw≠Φ · WGSL≠WORD · canvas≠fill `[GAP]` · WebGPU≠wasm64 · lost≠cut · mapAsync≠append. Projection/hologram = **Shadow consumers** (cite-only). Recommended reader order (proposal only): clipboard → mechanisms → ascii-machinery → pass plans. Emission `[GAP]`. See clipboard P5-P for stage→hygiene table + P5-X.

---

## Wave A panels (1:1 with M-G*)

### P-G1 — Adapter request (`navigator.gpu` → `requestAdapter`)

| Field | Content |
|---|---|
| Mechanism cite | **M-G1** · §4.1–4.3 · PDF **41**, **46–47** |
| Sighting | Pass 1 PAGE C · Pass 3 M-G1 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-host-API** · **FORBID-as-Lace-strand** · **FORBID-as-Core-write** |
| PAGE cite | **C** |
| False friend | **FM-Wgpu2** — Adapter ⇒ Core / Graphic D / lace cord |
| Projection / hologram | `clock/README.md` (`lace-projection.html`) — Shadow host acquire only |
| wasm64 | cite-only · ≠ compile target (**FM-Wgpu7**) |
| Emission | `[GAP]` |
| Implements | M-G1 alg 1–6: SecureContext → `requestAdapter` → UA select → `GPUAdapter` features/limits → refuse as Graphic D → halt |

```
  SecureContext Window|Worker
           |
           v
  navigator.gpu                    (§4.1 PDF 41)
           |
           |  requestAdapter(options?)
           |  powerPreference / forceFallback / xrCompatible
           v
  +------------------+
  | GPUAdapter?      |  features · limits · info
  +--------+---------+
           |
           |  null if no suitable adapter
           v
  host GPU capability handle
  # NOT Graphic D · NOT lace cord · NOT Core door
```
stamp under fence: KEEP-read-as-host-API | FORBID-as-Lace-strand | FORBID-as-Core-write | FM-Wgpu2

---

### P-G2 — Device / Queue (`requestDevice` · `device.queue`)

| Field | Content |
|---|---|
| Mechanism cite | **M-G2** · §4.4 GPUDevice PDF **50** · GPUQueue PDF **218** |
| Sighting | Pass 1 PAGE C · Pass 3 M-G2 · D7 step 1 cite |
| Lace stamp | **KEEP-read-as-host-API** · **FORBID-as-Lace-strand** · **FORBID-as-Core-write** |
| PAGE cite | **C** |
| False friend | **FM-Wgpu2** — Device/Queue ⇒ Core / Graphic D / lace cord |
| Projection / hologram | Device ≠ Graphic D; viewer may hold device for draw only |
| wasm64 | cite-only · ≠ wasm64 ISA (**FM-Wgpu7**) |
| Emission | `[GAP]` |
| Implements | M-G2 alg 1–6: adapter → `requestDevice` → `GPUDevice` + `queue` → refuse as lace cord → halt |

```
  GPUAdapter (from P-G1)
           |
           |  requestDevice(descriptor?)
           |  required features / limits
           v
  +---------------------------+
  | GPUDevice                 |  "top-level interface"
  |   .queue : GPUQueue       |  (§4.4 PDF 50 · §19.2)
  |   createBuffer / Texture  |
  |   createCommandEncoder …  |
  +-------------+-------------+
                |
                v
  submission endpoint = device.queue
  # NOT Graphic D · NOT lace cord · NOT Core door
```
stamp under fence: KEEP-read-as-host-API | FORBID-as-Lace-strand | FORBID-as-Core-write | FM-Wgpu2

---

### P-G3 — Buffer alloc / map (`createBuffer` · `mapAsync` / `getMappedRange` / `unmap`)

| Field | Content |
|---|---|
| Mechanism cite | **M-G3** · §5.1 GPUBuffer PDF **53** · §5.2 Mapping PDF **60** |
| Sighting | Pass 1–2 PAGE D · FM-Wgpu1 · FM-Wgpu9 · Pass 3 M-G3 |
| Lace stamp | **KEEP-read-as-host-API** · **FORBID-as-Lace-store** · **FORBID-as-emission-rule** (map/readback) · **SILENT-for-Lace-append** |
| PAGE cite | **D** |
| False friend | **FM-Wgpu1** (GPUBuffer ⇒ Lace strand) · **FM-Wgpu9** (mapAsync ⇒ append) |
| Projection / hologram | Buffer/map ≠ strand/append; may hold vertex/uniform bytes for Shadow draw |
| wasm64 | cite-only · ≠ linear mem strand |
| Emission | `[GAP]` |
| Implements | M-G3 alg 1–6: `createBuffer` → `mapAsync` → `getMappedRange` → `unmap` → refuse as strand/append → halt |

```
  GPUDevice
           |
           |  createBuffer({ size, usage, mappedAtCreation? })
           v
  +------------------+
  | GPUBuffer        |  linear GPU memory (§5.1)
  +--------+---------+
           |
           |  await mapAsync(mode, offset, size)
           |  ab = getMappedRange(offset, size)
           |  buffer.unmap()
           v
  CPU ArrayBuffer view  <-->  GPU buffer
  # transfer only — NOT Lace 1D strand
  # map/readback NOT Lace append authority
```
stamp under fence: KEEP-read | FORBID-as-Lace-store | FORBID-as-emission-rule (map) | SILENT | FM-Wgpu1 · FM-Wgpu9

---

### P-G4 — Texture / view (create / view / usages)

| Field | Content |
|---|---|
| Mechanism cite | **M-G4** · §6 Textures · GPUTexture IDL PDF **66** · usages ~PDF **70–72** |
| Sighting | Pass 1–2 PAGE D · FM-Wgpu4 · Pass 3 M-G4 |
| Lace stamp | **KEEP-read-as-host-API** · **FORBID-as-Lace-store** |
| PAGE cite | **D** |
| False friend | **FM-Wgpu4** — Texture ⇒ second Lace store / Graphic D backing |
| Projection / hologram | hologram/clock may *draw* with textures; glyphs ≠ schema |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-G4 alg 1–6: `createTexture` → select usages → `createView` → refuse as second store → halt |

```
  GPUDevice
           |
           |  createTexture({ size, format, usage, … })
           v
  +------------------+
  | GPUTexture       |
  +--------+---------+
           |
           |  usages: COPY_SRC|DST · TEXTURE_BINDING
           |          STORAGE_BINDING · RENDER_ATTACHMENT
           |  view = texture.createView(desc?)
           v
  GPUTextureView  -->  bind / attach
  # GPU image resource — NOT second Lace store
```
stamp under fence: KEEP-read-as-host-API | FORBID-as-Lace-store | FM-Wgpu4

---

### P-G5 — Bind group layout (`createBindGroupLayout` / `createBindGroup`)

| Field | Content |
|---|---|
| Mechanism cite | **M-G5** · §8.2.1 PDF **100** · EXAMPLE 25 PDF **108** |
| Sighting | Pass 1–2 PAGE D · FM-Wgpu4 · Pass 3 M-G5 |
| Lace stamp | **KEEP-read-as-host-API** · **FORBID-as-Lace-store** |
| PAGE cite | **D** |
| False friend | **FM-Wgpu4** — bind-group ⇒ second Lace store |
| Projection / hologram | Bind ≠ second Lace store; may wire uniforms/samplers for Shadow draw |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-G5 alg 1–6: `createBindGroupLayout` → `createBindGroup` → optional pipeline layout → refuse as store → halt |

```
  GPUDevice + resources (buffers/textures/samplers)
           |
           |  createBindGroupLayout({ entries: […] })
           v
  GPUBindGroupLayout
           |
           |  createBindGroup({ layout, entries: […] })
           v
  GPUBindGroup  -->  setBindGroup on pass
           |
           |  optional createPipelineLayout([layout…])
           v
  host binding schema wired to shaders
  # NOT second Lace store · NOT Graphic D
```
stamp under fence: KEEP-read-as-host-API | FORBID-as-Lace-store | FM-Wgpu4

---

### P-G6 — Render / Compute pipeline + WGSL boundary

| Field | Content |
|---|---|
| Mechanism cite | **M-G6** · §9 Shader Modules PDF **108–110** · EXAMPLE 27 PDF **120** |
| Sighting | Pass 1 PAGE E · FM-Wgpu5 · Pass 3 M-G6 · hologram visual-primitives cite |
| Lace stamp | **KEEP-read-as-host-API** · **FORBID-as-Core-write** (WGSL ≠ WORD; pipeline ≠ Core ops) |
| PAGE cite | **E** |
| False friend | **FM-Wgpu5** — WGSL ⇒ Lace WORD / Core operator |
| Projection / hologram | `hologram/visual-primitives.md` — WGSL live path; glyphs ≠ schema |
| wasm64 | cite-only · WGSL ≠ wasm text / ISA |
| Emission | `[GAP]` |
| Implements | M-G6 alg 1–6: `createShaderModule({code})` → create pipelines → optional constants → refuse WGSL as WORD → halt |

```
  GPUDevice (+ pipeline layout from P-G5)
           |
           |  createShaderModule({ code: wgslSource })
           |  code = WGSL source (§9 PDF 109)
           v
  GPUShaderModule
           |
           +--> createComputePipeline(…)
           +--> createRenderPipeline(…)
           |    optional constants: { @id overrides }
           v
  GPUComputePipeline | GPURenderPipeline
           |
           v
  setPipeline on pass encoder
  # WGSL = host shader language — NOT Lace WORD
  # pipeline ≠ Core operator set · ≠ src/ birth
```
stamp under fence: KEEP-read-as-host-API | FORBID-as-Core-write | FM-Wgpu5

---

### P-G7 — Command encoder / passes (encode · compute/render pass · finish)

| Field | Content |
|---|---|
| Mechanism cite | **M-G7** · §12–13 PDF **160–165** · dispatch PDF **185–186** · draw PDF **200** · **Pass 2 D7** |
| Sighting | Pass 2 D7 · Pass 3 M-G7 · PAGE F |
| Lace stamp | **KEEP-read-as-host-API** · **FORBID-as-emission-rule** · **FORBID-as-Core** · **SILENT-for-Lace-append** |
| PAGE cite | **F** |
| False friend | **FM-Wgpu3** — encode/draw/dispatch ⇒ emission / Φ |
| Projection / hologram | Encoder ≠ Φ; Shadow may encode draw for viewer only |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-G7 alg 1–6: `createCommandEncoder` → passes/draw/dispatch → `finish` → refuse as emission · **D7** cross-link → halt |
| D7 cross-link | Pass 2 **D7** encoder→submit miniature (do not rewrite); submit itself = P-G8 |

```
  GPUDevice + pipelines/resources (P-G3…P-G6)
           |
           |  encoder = createCommandEncoder()
           |  [[state]] = "open"  (§13.1)
           v
  +----------------------------------+
  | GPUCommandEncoder                |
  |  beginComputePass / RenderPass   |
  |  setPipeline · setBindGroup      |
  |  dispatchWorkgroups / draw …     |
  |  end pass · copies / clears      |
  +----------------+-----------------+
                   |
                   |  commandBuffer = encoder.finish()
                   v
  GPUCommandBuffer  (not yet executed)
  # encode/finish/draw/dispatch ≠ emission / Phi
  # see Pass 2 D7 (Shadow miniature; stands)
```
stamp under fence: KEEP-read | FORBID-as-emission-rule | FORBID-as-Core | SILENT | FM-Wgpu3 | D7

---

### P-G8 — Submit / present (`queue.submit` · canvas configure / `getCurrentTexture`)

| Field | Content |
|---|---|
| Mechanism cite | **M-G8** · §19.2 GPUQueue IDL PDF **218**; submit scheduling/nonreuse prose PDF **222** · §21 Canvas PDF **228–230**, **235** |
| Sighting | Pass 1 PAGE F+G · FM-Wgpu3 · FM-Wgpu6 · Pass 3 M-G8 · D7 step 5 |
| Lace stamp | **KEEP-read-as-host-API** (submit) · **FORBID-as-emission-rule** · canvas **PROPOSAL-only** · **FORBID fill-GAP** |
| PAGE cite | **F+G** |
| False friend | **FM-Wgpu3** (submit ⇒ Φ) · **FM-Wgpu6** (canvas ⇒ accept emission) |
| Projection / hologram | submit ≠ emission; `lace-projection.html` may present Shadow frames without accepting Φ |
| wasm64 | cite-only |
| Emission | `[GAP]` (**FORBID fill**) |
| Implements | M-G8 alg 1–6: `queue.submit` → refuse as emission; optional `getContext('webgpu')` → `configure` → `getCurrentTexture` → PROPOSAL-only · FORBID fill-GAP → halt |

```
  GPUCommandBuffer(s) from P-G7 · device.queue
           |
           |  device.queue.submit([commandBuffer, …])
           |  "Schedules the execution…" (PDF 222)
           |  submitted buffers cannot be reused
           v
  Queue timeline  (GPU work scheduled)
           |
           |  optional present path:
           |  ctx = canvas.getContext('webgpu')
           |  ctx.configure({ device, format, usage, … })
           |  tex = ctx.getCurrentTexture()
           v
  host compositor present  (Shadow frames only)
  # submit ≠ Phi / emission when
  # canvas configure ≠ accept pointer-emission.md
  # emission remains [GAP]
```
stamp under fence: KEEP-read submit | FORBID-as-emission-rule | canvas PROPOSAL-only | FORBID fill-GAP | FM-Wgpu3 · FM-Wgpu6

---

### P-G9 — Error / device-lost vs Lace append

| Field | Content |
|---|---|
| Mechanism cite | **M-G9** · §22 Errors PDF **238** · scopes ~PDF **241–243** |
| Sighting | Pass 1–2 PAGE H · FM-Wgpu8 · Pass 3 M-G9 |
| Lace stamp | **KEEP-read-as-host-API** · **SILENT-for-Lace-append** · **FORBID-as-emission-rule** |
| PAGE cite | **H** |
| False friend | **FM-Wgpu8** — validation / device-lost ⇒ Lace cut / Φ gate |
| Projection / hologram | device-lost ≠ Lace cut; viewer may reacquire — still Shadow |
| wasm64 | cite-only · trap ≠ this shelf’s lost |
| Emission | `[GAP]` |
| Implements | M-G9 alg 1–6: dispatch error → scopes → `device.lost` → refuse as Lace cut / Φ gate → halt |

```
  GPUDevice operations
           |
           |  Valid Usage fail --> dispatch error (§22)
           |  optional [[errorScopeStack]]
           |    validation | out-of-memory | internal
           v
  GPUError  -->  uncapturederror / scope pop
           |
           |  fatal: device.lost resolves
           |  post-lost: most validation skipped
           v
  host error / lost signal only
  # SILENT for Lace append
  # NOT Lace cut · NOT Phi gate · NOT append rule
```
stamp under fence: KEEP-read | SILENT-for-Lace-append | FORBID-as-emission-rule | FM-Wgpu8

---

## Cross-walk M ↔ P

| P | M | stamp (hard teeth) | PAGE | FM-Wgpu* | projection/hologram | wasm64 | emission |
|---|---|---|---|---|---|---|---|
| **P-G1** | M-G1 | KEEP · **FORBID-as-Lace-strand** · FORBID-as-Core-write | C | FM-Wgpu2 | Shadow host acquire | ≠ target (FM-Wgpu7) | `[GAP]` |
| **P-G2** | M-G2 | KEEP · **FORBID-as-Lace-strand** · FORBID-as-Core-write | C | FM-Wgpu2 | Device ≠ Graphic D | ≠ ISA | `[GAP]` |
| **P-G3** | M-G3 | KEEP · **FORBID-as-Lace-store** · **FORBID-as-emission-rule** (map) · SILENT | D | FM-Wgpu1 · FM-Wgpu9 | ≠ strand/append | cite-only | `[GAP]` |
| **P-G4** | M-G4 | KEEP · **FORBID-as-Lace-store** | D | FM-Wgpu4 | Texture ≠ store | cite-only | `[GAP]` |
| **P-G5** | M-G5 | KEEP · **FORBID-as-Lace-store** | D | FM-Wgpu4 | Bind ≠ second store | cite-only | `[GAP]` |
| **P-G6** | M-G6 | KEEP · **FORBID-as-Core-write** | E | FM-Wgpu5 | WGSL ≠ WORD | cite-only | `[GAP]` |
| **P-G7** | M-G7 | KEEP · **FORBID-as-emission-rule** · FORBID-as-Core · SILENT · **D7** | F | FM-Wgpu3 | Encoder ≠ Φ | cite-only | `[GAP]` |
| **P-G8** | M-G8 | KEEP submit · **FORBID-as-emission-rule** · canvas **PROPOSAL-only** · **FORBID fill-GAP** | F+G | FM-Wgpu3 · FM-Wgpu6 | submit ≠ emission | cite-only | `[GAP]` (FORBID fill) |
| **P-G9** | M-G9 | KEEP · **SILENT-for-Lace-append** · FORBID-as-emission-rule | H | FM-Wgpu8 | lost ≠ Lace cut | cite-only | `[GAP]` |

P3-M CONFIRM×9 · CONFLICT×0 **stands** (not reopened). Every emission cell `[GAP]`.

---

## P4-X — Rigor matrix

Columns: `node · P · M · stamp · Implements OK · Fence OK (API-only; no POINTER word) · Stamp OK · False-friend fence OK · Overview attach OK · PASS/FIX`

### Panels

| node | P | M | stamp | Impl | Fence | Stamp | FF fence | Overview | Verdict |
|---|---|---|---|---|---|---|---|---|---|
| adapter | P-G1 | M-G1 | FORBID-as-Lace-strand | Y | Y | Y | Y (FM-Wgpu2) | Y | **PASS** |
| device/queue | P-G2 | M-G2 | FORBID-as-Lace-strand | Y | Y | Y | Y (FM-Wgpu2) | Y | **PASS** |
| buffer/map | P-G3 | M-G3 | FORBID-as-Lace-store + map FORBID | Y | Y | Y | Y (FM-Wgpu1·9) | Y | **PASS** |
| texture/view | P-G4 | M-G4 | FORBID-as-Lace-store | Y | Y | Y | Y (FM-Wgpu4) | Y | **PASS** |
| bind group | P-G5 | M-G5 | FORBID-as-Lace-store | Y | Y | Y | Y (FM-Wgpu4) | Y | **PASS** |
| pipeline+WGSL | P-G6 | M-G6 | FORBID-as-Core-write | Y | Y | Y | Y (FM-Wgpu5) | Y | **PASS** |
| encoder/passes | P-G7 | M-G7 | FORBID-as-emission-rule · D7 | Y | Y | Y | Y (FM-Wgpu3) | Y | **PASS** |
| submit/present | P-G8 | M-G8 | FORBID-as-emission-rule · PROPOSAL · fill-GAP | Y | Y | Y | Y (FM-Wgpu3·6) | Y | **PASS** |
| error/lost | P-G9 | M-G9 | SILENT-for-Lace-append | Y | Y | Y | Y (FM-Wgpu8) | Y | **PASS** |

### Overview spine nodes

| overview node | attach P/M | Fence OK | Stamp / off-board OK | Verdict |
|---|---|---|---|---|
| navigator.gpu / requestAdapter | P-G1 / M-G1 | Y | Y | **PASS** |
| requestDevice · device.queue | P-G2 / M-G2 | Y | Y | **PASS** |
| createBuffer · mapAsync | P-G3 / M-G3 | Y | Y | **PASS** |
| createTexture · createView | P-G4 / M-G4 | Y | Y | **PASS** |
| bindGroupLayout · bindGroup | P-G5 / M-G5 | Y | Y | **PASS** |
| shaderModule + pipeline · WGSL | P-G6 / M-G6 | Y | Y | **PASS** |
| commandEncoder · passes · finish | P-G7 / M-G7 | Y | Y | **PASS** |
| queue.submit · canvas configure | P-G8 / M-G8 | Y | Y | **PASS** |
| errors · device.lost | P-G9 / M-G9 | Y | Y | **PASS** |
| forbidden Core / Φ / wasm64 exit | off-board · FM-Wgpu7 | Y | Y | **PASS** |

### Special gates (re-walk; not rubber-stamped)

| Gate | Result |
|---|---|
| **P-G3 / M-G3** · FM-Wgpu1 · FM-Wgpu9 | **PASS** — buffer/map stamped FORBID-as-Lace-store + map FORBID-as-emission-rule under fence |
| **P-G1–P-G2** · FM-Wgpu2 | **PASS** — Adapter/Device/Queue FORBID-as-Lace-strand under fences |
| **P-G7–P-G8** · FM-Wgpu3 · FM-Wgpu6 | **PASS** — encode/submit FORBID-as-emission-rule; P-G8 canvas PROPOSAL-only · FORBID fill-GAP; P-G7 cites D7 |
| **P-G6** · FM-Wgpu5 | **PASS** — WGSL FORBID-as-Core-write under fence |
| **P-G4–P-G5** · FM-Wgpu4 | **PASS** — texture/bind FORBID-as-Lace-store |
| **P-G9** · FM-Wgpu8 | **PASS** — SILENT-for-Lace-append under fence |
| **Overview wasm64 exit** · FM-Wgpu7 | **PASS** — wasm64 ISA swap marked FORBIDDEN off-board |
| **No POINTER-in-fence** | **PASS** — audited overview + all 9 panel fences; word absent inside fences; stamps under fences |

**P4-X verdict:** all cells **Y** → **PASS** × (9 panels + 10 overview nodes + 8 special gates). No FIX remaining.

---

## Waves B–D (deferred — one-line seeds)

| Wave | Seed (not blocking) |
|---|---|
| B | Color/depth attachment load/store recipes beyond spine; canvas HDR/alpha edge cases |
| C | Multi-queue / timestamp queries; shader compilation detail beyond WGSL boundary |
| D | clock/hologram viewer implementation notes (cite-only; do not amend those files) |

**No** full Wave B panels this pass (default skip). Pass 5 Order Proposal = **EXECUTED** (clipboard P5-P + short mirror above).

---

## Steward refuse (panels + stamps)

With only P-G* + stamps (+ P3-M / M-G* cites), steward must refuse:

1. “GPUBuffer is the Lace strand” → **P-G3 / M-G3** + **FM-Wgpu1** + FORBID-as-Lace-store.  
2. “GPUDevice / Adapter is Graphic D / Core door” → **P-G1/P-G2** + **FM-Wgpu2** + FORBID-as-Lace-strand.  
3. “`queue.submit` emits POINTER” / “draw/dispatch fills Φ” → **P-G7/P-G8** + **FM-Wgpu3** + FORBID-as-emission-rule; emission `[GAP]`.  
4. “Texture / bind-group is a second Lace store” → **P-G4/P-G5** + **FM-Wgpu4**.  
5. “WGSL is Lace WORD” → **P-G6** + **FM-Wgpu5** + FORBID-as-Core-write.  
6. “Canvas configure accepts pointer-emission.md” → **P-G8** + **FM-Wgpu6** + PROPOSAL-only; GAP remains.  
7. “WebGPU replaces wasm64 / wasm-spec-3 compile target” → overview off-board + **FM-Wgpu7**.  
8. “Validation / device-lost is a Lace cut / Φ gate” → **P-G9** + **FM-Wgpu8** + SILENT.  
9. “`mapAsync` / CPU readback is Lace append authority” → **P-G3** + **FM-Wgpu9** + FORBID-as-emission-rule.  
10. “Calling WebGPU / configuring canvas accepts pointer-emission.md” → **P-G8** + D1/D6; GAP remains.  
11. “This fence contains Lace POINTER as a WebGPU object” → opening contract · Fence OK fail · stamps belong **under** fences.

These panels are CRD **host/GPU** procedures drawn for Shadow projection / hologram / canvas embed surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, and do not swap wasm64.

---

## Pass 4 execute receipt (ascii file)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~21:07 PT |
| Artifact | this file · overview + **P-G1…P-G9** + cross-walk + P4-X |
| Algorithms | M-G* **unchanged** (cite only) |
| Fence audit | **no POINTER word** inside any diagram fence |
| Emission | still `[GAP]` |
| PDF staged | **No** |

---

## Pass 5 pointer (ascii)

Light accuracy steward + Shadow Order Proposal EXECUTED on clipboard (**P5-X / P5-F / P5-O / P5-P / P5-R**). Canonical overview = this file’s singular SOURCE MACHINERY fence (count=1; P5-O stand). Short Order Proposal mirror under overview. Emission still `[GAP]`.
