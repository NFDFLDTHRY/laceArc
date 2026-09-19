# CLIPBOARD — laceArc ← WebGPU W3C CRD 2026-09-15 (HOST/GPU API)

**[III] Shadow / read-only host-API projection. Hands win. POINTER emission = `[GAP]`.**  
**SPECIAL:** This is **HOST / GPU Web API** admission — Shadow projection / hologram / canvas embed surfaces. **NOT** Core. **NOT** Lace store. **NOT** POINTER emission / Φ. **NOT** the wasm64 compile-target shelf.

```
+======================================================================+
|  HOST / GPU API REFERENCE — WebGPU W3C CRD 2026-09-15                |
|  Shadow / projection / hologram / host-embed surfaces ONLY.            |
|  NOT Lace Core.  NOT Lace store.  NOT POINTER emission / Phi.        |
|  FORBID: GPUDevice/Queue/Buffer/Texture as Lace strand or store.     |
|  FORBID: queue.submit / draw / dispatch as POINTER emission.         |
|  KEEP-read: host/GPU mechanics for Shadow projection work.           |
|  WebGPU ≠ wasm64 compile target — different layer.                   |
|  No src/ until pointer-emission accepted.  One strand.               |
+======================================================================+
```

**Source:** *WebGPU* — **W3C Candidate Recommendation Draft, 15 September 2026**. This version: https://www.w3.org/TR/2026/CRD-webgpu-20260915/ · Latest: https://www.w3.org/TR/webgpu/ · Editor’s Draft: https://gpuweb.github.io/gpuweb/. Editors (masthead): Kai Ninomiya, Brandon Jones, Jim Blandy (et al.). Working PDF (gitignored): `refs/local/webgpu-crd-20260915.pdf` → attachment `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1.pdf`. **321** pages; text layer present (Skia/PDF). SHA-256: `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1`. **Printed ↔ PDF:** HTML-print CRD — body page numbers **not** clearly offset like LaTeX specs; **PDF one-based** is the primary pin. **Never git-add the PDF.** Eye entries are short fragments/paraphrases, not dumps.

**Authority:** [graphics A–D](../graphics/README.md), [systems manifest](../systems-manifest.md), [staking law](../staking-the-workspace.md), [live law](../law-why-these-documents.md), [AGENTS.md](../../AGENTS.md) Implementation Law. Comparisons cite clock/hologram/wasm shelves as **adjacent**, not as this CRD’s authority over Core.

**Relation (do not conflate):**

| Artifact | Role |
|---|---|
| This clipboard | Host/GPU **Web API** mechanism map (Shadow) |
| [`wasm-spec-3-*`](wasm-spec-3-pass-1-plan.md) (Pass 1–6 EXECUTED) | **Compile-target ISA / wasm64** — **different layer**. Cite-only; do not disturb |
| [`clock/README.md`](../clock/README.md) · `lace-projection.html` | Layer III viewer: WebGPU 3D + D1 time; glyphs ≠ schema |
| [`clock/wasm/README.md`](../clock/wasm/README.md) | Shadow projection bake (`wasm32`/Workers) — not this CRD’s authority |
| [`hologram/`](../hologram/README.md) · [`visual-primitives.md`](../hologram/visual-primitives.md) | Hologram / WGSL live draw path — Shadow only |
| [`pointer-emission.md`](../pointer-emission.md) | Still **DRAFT / `[GAP]`** |
| [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) | Lace **Core** ASCII — separate board |

**Stamp legend (host/GPU API tuned):**

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-host-API** | May sit beside Lace as host/GPU / projection mechanics; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or Core operator set |
| **FORBID-as-Lace-store** | Must not treat GPUBuffer / GPUTexture / bind-group backing as Lace’s 1D strand |
| **FORBID-as-Lace-strand** | Must not treat GPUDevice / Adapter / Queue as the lace cord or Graphic D |
| **FORBID-as-emission-rule** | Must not use `queue.submit`, draw, dispatch, or encoder finish as POINTER when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔canvas / host-embed sketches are proposals only; not accepted law |
| **FORBID-as-compile-target-swap** | Must not claim WebGPU replaces wasm64 / wasm-spec-3 target shelf |

---

## Pass 1 (PDF-sighted) receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~20:45 PT |
| Station | clipboards · agent `webgpu Pass 1 EXECUTE` |
| Plan | [webgpu-pass-1-plan.md](webgpu-pass-1-plan.md) (was HELD; base `0b97eec` / plan commits `5d5b60c` · `ec93e50`) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README + lace-projection (WebGPU 3D) → clock/wasm README (different layer) → hologram/visual-primitives (WGSL cite) → wasm-spec-3 Pass 1 banner (**cite-only**) → this plan → PDF |
| PDF | **PRESENT** — `refs/local/webgpu-crd-20260915.pdf`; SHA `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1`; **321** pp.; text layer yes; title WebGPU · W3C CRD **15 September 2026**; Ninomiya/Jones/Blandy; `git check-ignore` OK; **never staged** |
| Method | `pdftotext -f N -l N -layout`; PDF one-based primary (no clear printed↔PDF offset) |
| Product | PAGE **A–H, X** below; **no** ascii Wave A this pass; mechanisms deferred |
| Amended | Core graphics · systems-manifest(-ascii) · five-stakes · src/ · wasm-spec-3 products | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| Five-stakes | **skip** (default) |

### Per-page stamp summary

| PAGE | Focus | Primary stamps | PDF pin |
|---|---|---|---|
| A | Identity / Intro / Fundamentals | **KEEP-read-as-host-API** | PDF 1; TOC 2–6; §1 PDF 7; §3 PDF 13; timelines PDF 19 |
| B | Security & Privacy (Ch.2) | KEEP-read-as-host-API; **FORBID-as-Core-write** (not Lace law) | §2 PDF 7–8; §2.1.1 PDF 8; Privacy §2.2 PDF 11 |
| C | Adapter / Device / Queue | KEEP-read-as-host-API; **FORBID-as-Lace-strand** | §4 PDF 41; Adapter PDF ~46–47; Device PDF 50; Queue PDF 218 |
| D | Buffer / Texture / Binding | KEEP-read-as-host-API; **FORBID-as-Lace-store** | Buffer PDF 53; Bind Group PDF 100; Texture IDL ~PDF 222 fragment |
| E | Pipelines + WGSL boundary | KEEP-read-as-host-API; FORBID WGSL as Lace WORD | §9 PDF 108–110; override ex. PDF 120 |
| F | Commands / Encoders / Passes | KEEP-read-as-host-API; **FORBID-as-emission-rule** | CmdBuf PDF 160; Dispatch PDF 185–186; draw PDF 200; `submit` PDF 218/222 |
| G | Canvas / presentation | KEEP-read-as-host-API; **PROPOSAL-only** Lace↔canvas | §21 PDF 228; configure PDF 230; `GPUCanvasConfiguration` PDF 235 |
| H | Errors / validation / device lost | KEEP-read-as-host-API; **SILENT-for-Lace-append** | §22 PDF 238; error scopes ~PDF 241–243 |
| X | False friends / steward refuse | **SILENT-for-Lace-append**; Φ `[GAP]`; **FORBID-as-compile-target-swap** | hard refuse tests below |

---

## PAGE A — Identity / Introduction / Fundamentals

| Field | Content |
|---|---|
| PDF pin | Masthead PDF **1** (CRD 15 Sep 2026 · URL `…/CRD-webgpu-20260915/`); TOC PDF **2–6**; §1 Introduction PDF **7**; §3 Fundamentals PDF **13**; §3.4.1 Timelines PDF **19** |
| Eye | “WebGPU exposes an API for performing operations, such as rendering and computation, on a Graphics Processing Unit.” · “WebGPU sees physical GPU hardware as GPUAdapters… connection… via GPUDevice… GPUQueues… GPUBuffer and GPUTexture are the physical resources…” · Timelines: **Content** / **Device** / **Queue** (script · UA GPU ops · GPU compute units) |
| Stamps | **KEEP-read-as-host-API** identity of CRD 2026-09-15 as host/GPU API for Shadow projection |
| Moral | WebGPU is the **host GPU API** Shadow projection may call, not the lace. Timelines are browser/GPU concurrency, not Lace append order. |

---

## PAGE B — Security & Privacy (malicious use)

| Field | Content |
|---|---|
| PDF pin | §2 Malicious use (TOC) PDF **2**; §2 open / §2.1 Security PDF **7–8**; §2.1.1 CPU-based UB PDF **8**; §2.2 Privacy PDF **11** |
| Eye | “This section is non-normative. It describes the risks associated with exposing this API on the Web.” · “strictly validating all the commands before they reach GPU, ensuring that a page can only work with its own data.” · Fingerprint binning / ≤32 distinguishable configurations |
| Stamps | **KEEP-read-as-host-API** host threat model; **FORBID-as-Core-write** (WebGPU security text ≠ Lace law / AGENTS.md) |
| Moral | Host threat model informs Shadow embed hygiene. It does not rewrite graphics A–D or fill Φ. |

---

## PAGE C — Adapter / Device / Queue

| Field | Content |
|---|---|
| PDF pin | §4 Initialization / `navigator.gpu` PDF **41**; §4.3 GPUAdapter PDF **~46–47**; §4.4 GPUDevice PDF **50**; §19.2 GPUQueue IDL PDF **218** |
| Eye | `navigator.gpu` → `requestAdapter()` → `requestDevice()` · “GPUDevice is the top-level interface through which WebGPU interfaces are created” · `device.queue` · `GPUQueue.submit(sequence<GPUCommandBuffer>)` |
| Stamps | **KEEP-read-as-host-API** device/queue mechanics; **FORBID-as-Lace-strand** / **FORBID-as-Core-write** (Adapter/Device/Queue ↛ Graphic D / Core door / lace cord) |
| Steward refuse | “GPUDevice / Adapter is Graphic D / Core door” → **FORBID-as-Lace-strand** |

---

## PAGE D — Buffer / Texture / Sampler / Binding

| Field | Content |
|---|---|
| PDF pin | §5 GPUBuffer PDF **53**; §8.2.1 Bind Group Creation PDF **100**; bind-group example PDF **108**; GPUTexture IDL (text-layer near PDF **222**) |
| Eye | “A GPUBuffer represents a block of memory that can be used in GPU operations. Data is stored in linear layout…” · `createBindGroup()` / layout entries · textures as GPU-backed image resources |
| Stamps | **KEEP-read-as-host-API** GPU resources; **FORBID-as-Lace-store** (**GPUBuffer ≠ Lace strand**; texture/bind-group ≠ second store / Graphic D) |
| Steward refuse | “GPUBuffer is the Lace strand” / “WebGPU texture/bind-group is a second Lace store” → **FORBID-as-Lace-store** |

---

## PAGE E — Pipelines + Shader modules / WGSL boundary

| Field | Content |
|---|---|
| PDF pin | §9 Shader Modules PDF **108–109**; `createShaderModule` / WGSL source PDF **109–110**; pipeline-overridable WGSL constants EXAMPLE 27 PDF **120** |
| Eye | `code` = “The WGSL source code for the shader module.” · `@id(…) override …` pipeline-overridable constants · compute/render pipeline objects created from stages |
| Stamps | **KEEP-read-as-host-API** pipeline/shader path (incl. hologram WGSL live path cite); **FORBID-as-Core-write** (WGSL ≠ Lace WORD; shader module ≠ Core operator) |
| Moral | WGSL is the **host shader language** for Shadow draw. It is not WORD and does not open `src/`. |

---

## PAGE F — Commands / Encoders / Compute & Render passes

| Field | Content |
|---|---|
| PDF pin | §12 Command Buffers PDF **160**; §16.1.2 Dispatch PDF **185–186**; draw IDL PDF **200**; GPUQueue IDL PDF **218**; `submit(commandBuffers)` prose PDF **222** (“Schedules the execution… Submitted command buffers cannot be used again.”) |
| Eye | Encode → finish command buffer → `queue.submit` · `dispatchWorkgroups` / `draw` / `drawIndexed` on pass encoders · queue timeline executes GPU work |
| Stamps | **KEEP-read-as-host-API** command encoding; **FORBID-as-emission-rule** (`queue.submit` / draw / dispatch / encoder finish ↛ POINTER when/arity/adjacency / Φ) |
| Steward refuse | “`queue.submit` emits POINTER” / “draw/dispatch fills Φ” → **FORBID-as-emission-rule** |

---

## PAGE G — Canvas / presentation

| Field | Content |
|---|---|
| PDF pin | §21 Canvas Rendering PDF **228**; `getContext('webgpu')` · `configure()` PDF **230**; `GPUCanvasConfiguration` members PDF **235** |
| Eye | `canvas.getContext('webgpu')` · configure with `device`, `format`, `usage` (incl. `RENDER_ATTACHMENT`), `colorSpace`, `alphaMode` · `getCurrentTexture()` presentation path |
| Stamps | **KEEP-read-as-host-API** projection/present surface; **PROPOSAL-only** for any Lace↔canvas / host-embed sketches; **FORBID** “Canvas configure accepts pointer-emission.md” |
| Steward refuse | “Canvas configure accepts pointer-emission.md” → **FORBID** / GAP remains |

---

## PAGE H — Errors / validation / device lost

| Field | Content |
|---|---|
| PDF pin | §22 Errors & Debugging PDF **238**; `GPUDeviceLostReason` / `lost` promise PDF **238**; error scopes / `dispatch error` ~PDF **241–243** |
| Eye | “During the normal course of operation of WebGPU, errors are raised via dispatch error.” · After device lost, validation/error tracking need not run; `lost` promise resolves · validation / OOM / internal error kinds |
| Stamps | **KEEP-read-as-host-API** validation & device-lost; **SILENT-for-Lace-append** (error scopes ≠ Lace scheduler / Φ gate) |
| Moral | Spec error procedure is silent for Lace append. Device loss is not emission acceptance. |

---

## PAGE X — Cross-cut / false friends / steward refuse

| Field | Content |
|---|---|
| Stamps | **SILENT-for-Lace-append**; Φ **`[GAP]`**; all FORBIDs above retained; **FORBID-as-compile-target-swap** |
| False friends | GPUBuffer/Texture ↔ Lace strand/store · GPUDevice/Adapter/Queue ↔ Graphic D / lace cord · `queue.submit`/draw/dispatch ↔ POINTER when / Φ · WGSL ↔ Lace WORD · WebGPU ↔ wasm64 compile target · canvas configure ↔ accepting `pointer-emission.md` · hologram/clock WebGPU viewer ↔ Core |
| Steward refuse (must reject) | (1) “GPUBuffer is the Lace strand” → **FORBID-as-Lace-store** · (2) “GPUDevice / Adapter is Graphic D / Core door” → **FORBID-as-Lace-strand** · (3) “`queue.submit` emits POINTER” / “draw/dispatch fills Φ” → **FORBID-as-emission-rule** · (4) “WebGPU texture/bind-group is a second Lace store” → **FORBID-as-Lace-store** · (5) “WebGPU replaces wasm64 / wasm-spec-3 compile target” → **FORBID-as-compile-target-swap** · (6) “Canvas configure accepts pointer-emission.md” → **FORBID** / GAP remains |
| Moral | Shoe in hands, or no. WebGPU is the **host GPU API** Shadow may call, not the lace. GPUBuffer is not Graphic D. `queue.submit` is not append. WGSL is not WORD. WebGPU is not the wasm64 target. Φ stays `[GAP]`. |

---

## Explicitly not this pass

- No `webgpu-ascii-machinery.md` / Wave A panels (Pass 4 shape later unless human asks).
- No `webgpu-mechanisms.md`.
- No five-stakes rewrite (default **skip**).
- wasm-spec-3 products **untouched** (cite-only).
- No `src/`. Emission still `[GAP]`.
