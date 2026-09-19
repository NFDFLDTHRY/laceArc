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

## Pass 2 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~20:52 PT |
| Station | clipboards · agent `webgpu Pass 2 EXECUTE` |
| Plan | [webgpu-pass-2-plan.md](webgpu-pass-2-plan.md) (was HELD; plan commits after rebase `e1c9d32` · `7675112`; claim BASE `044257c` = origin/main) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README + lace-projection (WebGPU 3D) → clock/wasm README (different layer) → hologram/README + visual-primitives (WGSL cite) → wasm-spec-3 Pass 1–6 banner (**cite-only**; untouched) → Pass 1 clipboard → this plan → PDF |
| PDF | **PRESENT** — cite Pass 1: `refs/local/webgpu-crd-20260915.pdf` → `6bc31a9e…64afe1.pdf`; **321** pp.; text layer; PDF one-based primary; SHA match; gitignored; **never staged** |
| Product | D1–D6 leftovers (+ D7 Shadow command-encoder→submit miniature); A–H/X morals untouched; **no** ascii Wave A; mechanisms deferred |
| Amended | Core graphics · systems-manifest(-ascii) · five-stakes · src/ · wasm-spec-3 · clock · hologram · law | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| T5 five-stakes | **skip** (default) |
| T7 ascii/mechanisms/wasm | **skip** — no ascii Wave A; mechanisms deferred; wasm-spec-3 untouched |
| D7 | **included** — command encoder → finish → `queue.submit` sketch (PAGE F · CmdBuf/encoder PDF **160–165** · submit PDF **218**); **FORBID-as-Core** · **FORBID-as-emission-rule** · **SILENT-for-Lace-append** |
| FM-Wgpu1…Wgpu9 | all pinned (no OPEN) |

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

## Explicitly not this pass (Pass 1–2 stand; Pass 3 mechanisms done)

- No `webgpu-ascii-machinery.md` / Wave A panels (**Pass 4**; future **P-G\*** titles reserved by M-G\*).
- `webgpu-mechanisms.md` — **Pass 3 EXECUTED** (M-G1…M-G9); see P3-M / P3-R below.
- No five-stakes rewrite (default **skip**).
- wasm-spec-3 products **untouched** (cite-only).
- No `src/`. Emission still `[GAP]`.

---

## Pass 2 deltas

Pass 1 filled PAGE A–H, X against the CRD. These deltas are **host/GPU leftovers / false friends / coherence** only. They do not invent emission. A–H/X morals are unchanged. FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / PROPOSAL-only / FORBID-as-compile-target-swap are not softened. WebGPU remains **HOST/GPU Shadow only**.

### D1 — What this clipboard / shelf is not

- Not Core / not a sixth graphic / not systems-manifest-ascii.
- Not `pointer-emission.md` / not a Φ fill / not acceptance of emission by calling WebGPU.
- Not Lace’s 1D strand, star index, or Graphic D scheduler.
- Not permission to treat **GPUBuffer / GPUTexture / bind-group** as Lace store.
- Not permission to treat **GPUDevice / Adapter / Queue** as lace cord / Core door / Graphic D.
- Not permission to treat **`queue.submit` / draw / dispatch / encoder finish** as POINTER when / arity / adjacency.
- Not permission to treat **WGSL** as Lace WORD.
- Not permission to treat **canvas configure / present** as accepting pointer-emission.
- Not a **wasm64 compile-target** swap (wasm-spec-3 shelf stands; different layer).
- Not permission to treat **validation / device-lost** as Lace cut or Φ gate.
- Not permission to treat **`mapAsync` / CPU readback** as Lace append authority.
- Not a rewrite of clock / hologram / AGENTS Implementation Law.
- Not permission to add `src/` before emission acceptance.
- Not an anti-model LLM leftover shelf; not an ISA leftover shelf (FM-W\* stay on wasm-spec-3).

### D2 — ON-TARGET / KEEP / FORBID / MAP strip

Compact spine on this clipboard (not five-stakes). Matches Pass 1 morals.

| KEEP-read-as-host-API | FORBID |
|---|---|
| CRD 2026-09-15 identity / fundamentals / timelines (PAGE A) | Timelines ⇒ Lace append order (A) |
| Host security & privacy threat model (B) | WebGPU security text ⇒ Lace law / AGENTS.md (B; **FORBID-as-Core-write**) |
| Adapter / Device / Queue mechanics (C) | GPUDevice/Adapter/Queue ⇒ lace cord / Graphic D / Core door (C; **FORBID-as-Lace-strand**) |
| Buffer / Texture / Sampler / Binding (D) | GPUBuffer/Texture/bind-group ⇒ Lace strand or second store (D; **FORBID-as-Lace-store**) |
| Pipelines + WGSL shader path (E) | WGSL ⇒ Lace WORD / Core operator (E; **FORBID-as-Core-write**) |
| Commands / encoders / compute & render passes (F) | `submit`/draw/dispatch ⇒ POINTER when/arity/adjacency / Φ (F; **FORBID-as-emission-rule**) |
| Canvas / presentation surface (G) | Canvas configure ⇒ accept `pointer-emission.md` (G; **PROPOSAL-only** / FORBID) |
| Errors / validation / device lost (H) | Validation / device-lost ⇒ Lace cut / append scheduler / Φ gate (H; **SILENT-for-Lace-append**) |
| Host/GPU as Shadow projection API (X) | WebGPU ⇒ wasm64 compile-target swap (X; **FORBID-as-compile-target-swap**) |

**MAP arrows (coherence with Hands / projection / hologram / wasm64 — all exits FORBIDDEN into Core write):**

```
A ──KEEP-read-as-host-API──► Shadow host/GPU identity     ──[X]──► Core / sixth graphic
B ──KEEP-read──► host threat model                        ──[X]──► Lace law / AGENTS rewrite
C ──KEEP-read──► Device/Queue mechanics                   ──[X]──► Graphic D / lace cord / Core door
D ──KEEP-read──► Buffer/Texture/Binding                   ──[X]──► Lace 1D strand / second store
E ──KEEP-read──► WGSL / pipeline (hologram live path cite)──[X]──► WORD / Core ops / src/
F ──KEEP-read──► encoder → submit / draw / dispatch       ──[X]──► pointer-emission when-rule / Φ
G ──PROPOSAL-only──► canvas / present (projection surface)──[X]──► accept pointer-emission.md
H ──SILENT──► validation / device-lost                    ──[X]──► Lace cut / append / Φ gate
X ──SILENT──► false friends / steward refuse              ──[X]──► wasm64 swap · invent Φ
clock/hologram ──cite──► Shadow viewer using this API     ──[X]──► Core authority
wasm-spec-3 ──cite-only──► wasm64 compile target          ──[X]──► conflate with WebGPU
mapAsync/readback ──KEEP-read──► CPU↔GPU transfer         ──[X]──► Lace append authority
emission = [GAP]  ·  Hands win  ·  no src/ until human-accepted emission
```

### D3 — Failure modes (FM-Wgpu1…Wgpu9)

| ID | Misread | Hands / law deadbolt | PDF pin (Pass 1 reuse + Pass 2 verify) |
|---|---|---|---|
| **FM-Wgpu1** | **GPUBuffer** ⇒ Lace **1D strand** | **FORBID-as-Lace-store** · Piece 1/6 · PAGE D | §5.1 GPUBuffer PDF **53** — “A GPUBuffer represents a block of memory… Data is stored in linear layout…” (cite D) |
| **FM-Wgpu2** | **GPUDevice / Adapter / Queue** ⇒ **Core / Graphic D** / lace cord / Core door | **FORBID-as-Lace-strand** · PAGE C | §4.4 GPUDevice PDF **50** — “top-level interface through which WebGPU interfaces are created”; §19.2 GPUQueue IDL PDF **218** — `submit(sequence<GPUCommandBuffer>)` (cite C) |
| **FM-Wgpu3** | **`queue.submit` / draw / dispatch** ⇒ POINTER **when** / arity / adjacency (**Φ** fill) | **FORBID-as-emission-rule** · pointer-emission `[GAP]` · PAGE F | §16.1.2 Dispatch PDF **185–186**; draw IDL PDF **200**; `submit` PDF **218** — “Schedules the execution of the command buffers by the GPU on this queue.” (cite F) |
| **FM-Wgpu4** | **Texture / bind-group** ⇒ **second Lace store** / Graphic D backing | **FORBID-as-Lace-store** · PAGE D | §8.2.1 Bind Group Creation PDF **100** — `createBindGroup()` / `GPUBindingResource`; Texture usages / GPUTexture region (TOC §6; Pass 1 cite ~PDF **222** fragment) (cite D) |
| **FM-Wgpu5** | **WGSL** ⇒ Lace **WORD** / Core operator / schema language | **FORBID-as-Core-write** · PAGE E | §9 Shader Modules PDF **109–110** — `code` = “The WGSL source code for the shader module.”; EXAMPLE 27 override constants PDF **120** (cite E) |
| **FM-Wgpu6** | **Canvas configure / present** ⇒ **accept** `pointer-emission.md` / close Φ | **PROPOSAL-only** · **FORBID** accept-GAP · PAGE G | §21 Canvas Rendering PDF **228–230** — `getContext('webgpu')` · `configure()`; `GPUCanvasConfiguration` PDF **235** (cite G) |
| **FM-Wgpu7** | **WebGPU** ⇒ **wasm64 compile target** / replaces wasm-spec-3 shelf | **FORBID-as-compile-target-swap** · PAGE X | PAGE X steward refuse (5) + wasm-spec-3 Pass 1–6 cite-only (different layer; **not** this CRD) |
| **FM-Wgpu8** | **Validation / device-lost** ⇒ Lace **cut** / authorized rewrite / Φ gate / append rule | **SILENT-for-Lace-append** · **FORBID-as-emission-rule** · PAGE H | §22 Errors & Debugging PDF **238–240** — “errors are raised via dispatch error” · `GPUDevice.lost` / device-lost validation skip (cite H) |
| **FM-Wgpu9** | **`mapAsync` / `getMappedRange` / CPU readback** ⇒ Lace **append authority** / strand write gate | **FORBID-as-emission-rule** · **SILENT-for-Lace-append** · PAGE D | §5.1 GPUBuffer IDL PDF **53** — `mapAsync` / `getMappedRange` / `unmap`; mapping EXAMPLE 18 PDF **55–60** (cite D) |

No FM row left `[OPEN]`. Pins reused/verified from Pass 1; Pass 2 re-sighted Buffer/Device/Queue/BindGroup/WGSL/Dispatch/draw/submit/Canvas/§22/`mapAsync` via `pdftotext -f N -l N -layout`.

### D4 — Interface coherence (Hands + projection + hologram + wasm64)

**Only** KEEP-read-as-host-API outputs may sit **beside** Lace: WebGPU CRD as the **host/GPU Web API** Shadow projection / hologram / canvas embed may call. **Nothing** in A–H/X writes Graphic D, strand/, word/, pointer/, or fills `pointer-emission.md`. **clock/** (`lace-projection.html`, WebGPU 3D + D1 time) and **hologram/** (`visual-primitives.md` WGSL live path) are **Shadow surfaces** that *cite* this API — glyphs ≠ schema; they do not become Core authority for this CRD or vice versa. **`docs/clock/wasm/README.md`** is Shadow **projection bake** (`wasm32`/Workers) — **different layer** from this host/GPU shelf; not Spec authority. **wasm-spec-3** = **compile-target ISA / wasm64 seal** — cite-only; WebGPU does **not** replace it (FM-Wgpu7). Canvas / host-embed sketches stay **PROPOSAL-only**; calling GPU or configuring canvas does **not** accept emission. `[GAP]` remains. Shoe in hands, or no.

### D5 — Source gate (cite Pass 1)

PDF is **PRESENT** (do not narrate absent). Pass 1 receipt: `refs/local/webgpu-crd-20260915.pdf` → attachment `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1.pdf`; **321** pages; text layer present (Skia/PDF); PDF one-based primary (no clear printed↔PDF offset); SHA-256 `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1`; title WebGPU · W3C CRD **15 September 2026** · URL `https://www.w3.org/TR/2026/CRD-webgpu-20260915/`; `git check-ignore` OK; **never `git add`**. Pass 1 products: clipboard PAGE A–H, X · **no** ascii Wave A · mechanisms deferred · execute ~`e05664e` / station note ~`8c81990`. Method this pass: reuse Pass 1 pins; `pdftotext` verify for FM-Wgpu\* + D7. Five-stakes left untouched (T5 skip).

### D6 — Sealed (still)

- Invent POINTER when / arity / adjacency (Φ stays `[GAP]`)
- Soften Pass 1 FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / PROPOSAL-only / FORBID-as-compile-target-swap
- Promote GPUBuffer / GPUTexture / bind-group as Lace store
- Promote GPUDevice / Adapter / Queue as Graphic D / lace cord / Core door
- Use `queue.submit` / draw / dispatch / encoder finish as POINTER emission / Φ
- Treat WGSL as Lace WORD / Core operator
- Treat canvas configure / present as accepting `pointer-emission.md`
- Swap WebGPU for wasm64 / wasm-spec-3 compile target
- Treat validation / device-lost as Lace cut / Φ gate / append rule
- Treat `mapAsync` / `getMappedRange` / CPU readback as Lace append authority
- Create `webgpu-ascii-machinery.md` / Wave A panels (still sealed) · ~~create `webgpu-mechanisms.md`~~ (**Pass 3 did**; ascii still absent)
- Amend wasm-spec-3 products · law / graphics / systems-manifest / five-stakes / clock / hologram
- Add `src/` / Cargo.toml before emission acceptance
- Git-add the PDF · pretend OCR / claim PDF absent when present
- Clone Xiao–Zhu / Petersen / AgentScope LLM morals or wasm FM-W\* ISA morals onto this host/GPU shelf

### D7 — Constructive miniature (Shadow only) — command encoder → submit sketch

**Choice (a).** Stamp: **FORBID-as-Core** · **FORBID-as-emission-rule** · **SILENT-for-Lace-append** · not POINTER when-rule · not Φ · not `src/`. Paper algorithm only (Ch.12–13 / PAGE F · CmdBuf/encoder PDF **160–165**; GPUQueue `submit` PDF **218**). Steps below are what the Spec states; no invented operators. Canvas configure miniature (choice b) deferred.

1. Obtain a `GPUDevice` (host/GPU init path — **KEEP-read-as-host-API** only; Device ↛ Graphic D / Core door — FM-Wgpu2).
2. Create a command encoder: `device.createCommandEncoder()` (§13.2 GPUCommandEncoder IDL PDF **~160–165**).
3. Encode GPU commands into the encoder (compute/render passes, copies, …) while encoder state is `"open"` (§13.1 `[[commands]]` list on Device timeline — host encode hygiene only).
4. Finish: `commandBuffer = commandEncoder.finish()` → yields a `GPUCommandBuffer` (EXAMPLE clear-buffer path PDF **~160–165**: create → finish → submit).
5. Submit: `device.queue.submit([commandBuffer])` — “Schedules the execution of the command buffers by the GPU on this queue.” (PDF **218**). Submitted buffers cannot be reused (Pass 1 cite PDF **222** prose).

**[OPEN] (book continues; not settled for Lace):** full per-pass Valid Usage tables; multi-queue / timeline interaction beyond Content/Device/Queue sketch; which host embed may call this from Lace projection — out of scope here. Do **not** finish those from Lace.

**Lace refusal:** this sketches **host/GPU command encode → queue schedule**. It does **not** emit POINTER, does **not** append to Graphic D, does **not** open Core doors / `src/`, and does **not** fill emission `[GAP]`. `queue.submit` is not Φ.

---

---

## Pass 3 — Mechanism coherence (P3-M) + receipt (P3-R)

**Status:** **EXECUTED** · agent `webgpu Pass 3 EXECUTE` · ~2026-09-18 21:00 PT · claim BASE `a6c36e7` (origin/main after rebase of plan commits) · tip at execute ahead of origin by plan commits + this commit.

### P3-M — Mechanism coherence mesh

| Mechanism (M-G*) | Future panel (P-G*) | Clipboard PAGE | FM-Wgpu* | Projection / hologram (cite) | wasm64 (cite-only) | Emission | KEEP/FORBID tooth | Same story? |
|---|---|---|---|---|---|---|---|---|
| **M-G1** Adapter request | P-G1 | C | **FM-Wgpu2** | Shadow host acquire only (`clock/README.md` · `lace-projection.html`) | ≠ compile target (**FM-Wgpu7**) | `[GAP]` | KEEP-read-as-host-API · **FORBID-as-Lace-strand** · FORBID-as-Core-write | YES |
| **M-G2** Device / Queue | P-G2 | C | **FM-Wgpu2** | Device ≠ Graphic D | ≠ wasm64 ISA | `[GAP]` | KEEP-read-as-host-API · **FORBID-as-Lace-strand** · FORBID-as-Core-write | YES |
| **M-G3** Buffer alloc / map | P-G3 | D | **FM-Wgpu1** · **FM-Wgpu9** | Buffer/map ≠ strand/append | ≠ linear mem strand | `[GAP]` | KEEP-read · **FORBID-as-Lace-store** · **FORBID-as-emission-rule** (map) · SILENT | YES |
| **M-G4** Texture / view | P-G4 | D | **FM-Wgpu4** | Texture ≠ store; hologram may *draw* | cite-only | `[GAP]` | KEEP-read · **FORBID-as-Lace-store** | YES |
| **M-G5** Bind group layout | P-G5 | D | **FM-Wgpu4** | Bind ≠ second Lace store | cite-only | `[GAP]` | KEEP-read · **FORBID-as-Lace-store** | YES |
| **M-G6** Pipeline + WGSL | P-G6 | E | **FM-Wgpu5** | WGSL live path cite (`hologram/visual-primitives.md`); WGSL ≠ WORD | cite-only | `[GAP]` | KEEP-read · **FORBID-as-Core-write** | YES |
| **M-G7** Command encoder / passes | P-G7 | F | **FM-Wgpu3** | Encoder ≠ Φ; **D7** cross-link | cite-only | `[GAP]` | KEEP-read · **FORBID-as-emission-rule** · FORBID-as-Core · SILENT | YES |
| **M-G8** Submit / present | P-G8 | F+G | **FM-Wgpu3** · **FM-Wgpu6** | submit ≠ emission; canvas **PROPOSAL-only** | cite-only | `[GAP]` (FORBID fill) | KEEP-read submit · **FORBID-as-emission-rule** · canvas PROPOSAL-only · FORBID fill-GAP | YES |
| **M-G9** Error / device-lost | P-G9 | H | **FM-Wgpu8** | device-lost ≠ Lace cut | cite-only | `[GAP]` | KEEP-read · **SILENT-for-Lace-append** · FORBID-as-emission-rule | YES |

**CONFLICT:** none. PAGE A/B/X remain mesh context (not Wave A cards). Pass 1–2 morals / FM-Wgpu\* / D7 **stand** (not rewritten).  
**Projection/hologram files:** cite-only — **not amended**. **wasm-spec-3 products:** cite-only — **not amended**.  
**Emission:** `[GAP]` on every row. **Ascii:** deferred Pass 4; future P-G\* titles reserved by M-G\*.

### P3-5S — Five-stakes

**skip** (default) — no unexpected five-stakes drift; this shelf is not an anti-model PAGE.

### P3-R — Pass 3 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~21:00 PT |
| Station | clipboards · agent `webgpu Pass 3 EXECUTE` |
| Plan | [webgpu-pass-3-plan.md](webgpu-pass-3-plan.md) (was HELD; plan after rebase `6a996f8` · release `0c68cdd` · FREE note `877df9a`) |
| Claim BASE | `a6c36e7` (= `origin/main` after maps release; local plan commits rebased onto it) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README + lace-projection (WebGPU 3D) → clock/wasm README (different layer) → hologram/README + visual-primitives (WGSL cite) → wasm-spec-3 Pass 1–6 banner (**cite-only**; untouched) → Pass 1–2 clipboard (A–H/X + D1–D6 + FM-Wgpu\* + D7) → this plan → house mechanism schema (wasm-spec-3 / Xiao–Zhu) → PDF |
| PDF | **PRESENT** — `refs/local/webgpu-crd-20260915.pdf` → `6bc31a9e…64afe1`; **321** pp.; text layer; PDF one-based; SHA match; gitignored; **never staged** |
| Artifact A | [`webgpu-mechanisms.md`](webgpu-mechanisms.md) · **M-G1…M-G9** full schema |
| Artifact B | P3-M mesh (9 rows) + this receipt |
| Hard stamps | M-G3 FORBID-as-Lace-store + map FORBID-as-emission-rule · M-G1/M-G2 FORBID-as-Lace-strand · M-G4/M-G5 FORBID-as-Lace-store · M-G6 FORBID-as-Core-write · M-G7/M-G8 FORBID-as-emission-rule · M-G8 canvas PROPOSAL-only · M-G9 SILENT · M-G7 **D7** cross-link |
| T6 five-stakes | **skip** |
| T7 ascii | **skip** (Pass 4; future P-G\* reserved) |
| Amended | Core graphics · systems-manifest(-ascii) · five-stakes · src/ · wasm-spec-3 · clock · hologram · law · pointer-emission | **No** |
| Pass 1–2 / FM-Wgpu\* / D7 | **stand** (D6 mechanisms-deferred line annotated; no PAGE rewrite) |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| PDF staged | **No** |
| Push | **No** (ask before push) |
