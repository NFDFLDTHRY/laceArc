# CLIPBOARD — laceArc ← WebNN W3C CRD 2026-09-10 (HOST-NN inference API)

**[III] Shadow / read-only host-NN projection. Hands win. POINTER emission = `[GAP]`.**  
**SPECIAL:** This is **HOST-NN inference Web API** admission — Shadow projection / hologram / host-embed surfaces. **NOT** Core. **NOT** Lace store. **NOT** POINTER emission / Φ. **NOT** WebGPU Device/Queue. **NOT** WGSL. **NOT** the wasm64 compile-target shelf.

```
+======================================================================+
|  HOST-NN / WebNN SPECIAL — W3C CRD 2026-09-10                        |
|  Shadow / projection / hologram / host-embed surfaces ONLY.            |
|  Companion to WebGPU (HOST/GPU) and WGSL (SHADER-LANG).              |
|  This is the HOST-NN inference API — MLContext · MLGraph · MLTensor  |
|  · operators · dispatch.  NOT shader-lang.  NOT compile-target.      |
|  NOT Lace Core.  NOT Lace store.  NOT POINTER emission / Phi.        |
|  FORBID: WebNN as Lace WORD / Core operator / schema language.       |
|  FORBID: MLGraph as strand; MLTensor as store/append; execute/       |
|          dispatch as Phi / POINTER emission.                         |
|  FORBID: conflating WebNN with WebGPU Device/Queue, WGSL, or wasm64. |
|  FORBID: operator graph as Lace Core ops.                            |
|  KEEP-read: host-NN inference mechanics for Shadow projection work.  |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  Emission [GAP] sealed.  No src/ until pointer-emission accepted.    |
|  One strand.  Cite-only webgpu-* / wgsl-* / wasm-spec-3-* products.  |
+======================================================================+
```

**Source:** *Web Neural Network API* (WebNN) — **W3C Candidate Recommendation Draft, 10 September 2026**. This version: https://www.w3.org/TR/2026/CRD-webnn-20260910/ · Latest: https://www.w3.org/TR/webnn/ · Editor’s Draft: https://webmachinelearning.github.io/webnn/ · Previous CRD: https://www.w3.org/TR/2026/CRD-webnn-20260904/. Editors (masthead): Ningxin Hu (Intel), Dwayne Robinson (Microsoft); Former: Chai Chaoweeraprasit (Microsoft). Working PDF (gitignored): `refs/local/webnn-crd-20260910.pdf` → attachment `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc.pdf`. **353** pages; text layer present (Skia/PDF). SHA-256: `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`. **Printed ↔ PDF:** HTML-print CRD — body page numbers **not** clearly offset like LaTeX specs; **PDF one-based** is the primary pin. **Never git-add the PDF.** Eye entries are short fragments/paraphrases, not dumps.

**Authority:** [graphics A–D](../graphics/README.md), [systems manifest](../systems-manifest.md), [staking law](../staking-the-workspace.md), [live law](../law-why-these-documents.md), [AGENTS.md](../../AGENTS.md) Implementation Law. Comparisons cite clock/hologram/webgpu/wgsl/wasm shelves as **adjacent**, not as this CRD’s authority over Core.

**Relation (do not conflate):**

| Artifact | Role |
|---|---|
| This clipboard | Host-NN **inference Web API** mechanism map (Shadow) |
| [`webgpu-*`](webgpu-pass-1-plan.md) (Pass 1–5 EXECUTED; Pass 6 HELD) | **HOST/GPU** companion — Device/Queue/Buffer/Texture/canvas. **Cite-only; do not edit.** WebNN ≠ WebGPU Device/Queue; `exportToGPU` is a bridge cite, not identity |
| [`wgsl-*`](wgsl-pass-1-plan.md) (Pass 1–5 EXECUTED; Pass 6 PLAN HELD) | **SHADER-LANG** companion. **Cite-only; do not edit.** WebNN ≠ WGSL; operators ≠ shader entry points |
| [`wasm-spec-3-*`](wasm-spec-3-pass-1-plan.md) (Pass 1–6 EXECUTED) | **Compile-target ISA / wasm64** — **different layer**. Cite-only; do not disturb |
| [`clock/README.md`](../clock/README.md) · hologram / visual-primitives | Shadow surfaces may later cite host-NN; glyphs ≠ schema |
| [`clock/wasm/README.md`](../clock/wasm/README.md) | Shadow projection bake — not WebNN authority; not Core |
| [`pointer-emission.md`](../pointer-emission.md) | Still **DRAFT / `[GAP]`** — `dispatch` / graph execute must not fill when/arity/adjacency |
| [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) | Lace **Core** ASCII — separate board |

**Stamp legend (HOST-NN API tuned):**

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-host-NN-API** | May sit beside Lace as host-NN inference / projection mechanics; does not write Core |
| **KEEP-read** | May be read for Shadow host-embed context; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or Core operator set |
| **FORBID-as-Lace-store** | Must not treat MLTensor / operand buffers / constant tensors as Lace’s 1D strand or append surface |
| **FORBID-as-Lace-strand** | Must not treat MLContext / MLGraph / device selection as the lace cord or Graphic D |
| **FORBID-as-emission-rule** | Must not use `dispatch`, graph execute, or task-source scheduling as POINTER when/arity/adjacency |
| **FORBID-as-Lace-WORD** | Must not import WebNN operators / graphs as Lace WORD / Core ops |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔host-NN / `exportToGPU` bridge sketches are proposals only; not accepted law |
| **FORBID-as-WebGPU-conflation** | Must not treat WebNN MLContext/Graph/Tensor as WebGPU Device/Queue/Buffer; bridge ≠ identity |
| **FORBID-as-WGSL-conflation** | Must not treat WebNN operators as WGSL / shader-lang |
| **FORBID-as-compile-target-swap** | Must not claim WebNN replaces wasm64 / wasm-spec-3 target shelf |

---

## Pass 1 (PDF-sighted) receipt — P1-R

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~22:19 PT |
| Station | clipboards · agent `webnn Pass 1 EXECUTE` |
| Plan | [webnn-pass-1-plan.md](webnn-pass-1-plan.md) (was HELD; plan commits ~`cd02180`/`2f28909` → rebased `3917723`/`bc04c36`; claim BASE `58b12f9` = origin/main) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README + hologram notes (Shadow) → clock/wasm README (different layer) → webgpu Pass 1 banner (**cite-only**) → wgsl Pass 1 banner (**cite-only**) → wasm-spec-3 Pass 1 banner (**cite-only**) → this plan → PDF |
| PDF | **PRESENT** — `refs/local/webnn-crd-20260910.pdf`; SHA `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`; **353** pp.; text layer yes; title Web Neural Network API · W3C CRD **10 September 2026**; Hu/Robinson; `git check-ignore` OK; **never staged** |
| Method | `pdftotext -f N -l N -layout`; PDF one-based primary (no clear printed↔PDF offset) |
| Product | PAGE **A–H, X** below; **no** ascii Wave A this pass; **no** mechanisms |
| Amended | Core graphics · systems-manifest(-ascii) · five-stakes · src/ · webgpu-* · wgsl-* · wasm-spec-3 products | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| Five-stakes | **skip** (default) |

### Per-page stamp summary

| PAGE | Focus | Primary stamps | PDF pin |
|---|---|---|---|
| A | Overview / Identity | **KEEP-read-as-host-NN-API** | Masthead PDF **1**; TOC PDF **3–7**; §1 PDF **8**; §7.1 PDF **21** |
| B | Context / Devices / backends | KEEP-read; **FORBID-as-Lace-strand** | §7.2 PDF **23**; §8.1–8.2 PDF **26**; `createContext` PDF **28–29**; §8.3 MLContext PDF **29–30**; `opSupportLimits` PDF **46** |
| C | Graph builder | KEEP-read; **FORBID-as-Lace-strand** (MLGraph ≠ strand) | §8.4 MLGraph PDF **50**; §8.9 MLGraphBuilder PDF **62**; `build` PDF **67** |
| D | Tensors / buffers / operands | KEEP-read; **FORBID-as-Lace-store** | §8.5–8.6 Operand PDF **51–53**; §8.7–8.8 MLTensor PDF **57–58**; `createTensor` PDF **35**; `exportToGPU` PDF **42–43** |
| E | Operators | KEEP-read; **FORBID-as-Lace-WORD** | §7.3 PDF **24–25**; §8.9.5+ ops (from PDF **~68+**); §11 Emulation PDF **295** |
| F | Execution | KEEP-read; **FORBID-as-emission-rule** | §8.3.1 `dispatch` PDF **32**; §7.4 Task Source PDF **25**; §7.5 Permissions PDF **25** |
| G | Security / Privacy / A11y | KEEP-read; **FORBID-as-Core-write** (≠ Lace law) | §3 PDF **15**; §4 PDF **15–17**; §4.1 PDF **18**; §5 PDF **18–19**; §5.3 WebGPU Comparison PDF **20** |
| H | Changes / Algorithms | KEEP-read; **SILENT-for-Lace-append** | §9 Algorithms PDF **287**; §14 Changes PDF **299** |
| X | Cross-cut keep-outs / steward refuse | **SILENT-for-Lace-append**; Φ `[GAP]`; all FORBIDs | hard refuse tests below |

---

## PAGE A — Overview / Identity

| Field | Content |
|---|---|
| PDF pin | Masthead PDF **1** (CRD 10 Sep 2026 · URL `…/CRD-webnn-20260910/`); TOC PDF **3–7**; §1 Introduction PDF **8**; §7.1 Programming Model Overview PDF **21** |
| Eye | “The Web Neural Network API defines a web-friendly hardware-agnostic abstraction layer that makes use of Machine Learning capabilities of operating systems and underlying hardware platforms…” · “The WebNN API is a specification for constructing, compiling, and executing computational graphs of neural networks.” · `MLGraph` = compiled immutable model; `MLGraphBuilder` = factory; `MLOperand`s = data edges |
| Stamps | **KEEP-read-as-host-NN-API** identity of CRD 2026-09-10 as host-NN inference API for Shadow projection |
| Moral | WebNN is the **host NN inference API** Shadow projection may call, not the lace. Graph construction/execution is browser/host compute, not Lace append order. |

---

## PAGE B — Context / Devices / backends

| Field | Content |
|---|---|
| PDF pin | §7.2 Device Selection PDF **23**; §8.1 `navigator.ml` + §8.2 ML / `MLContextOptions` / `createContext` PDF **26–29**; §8.3 MLContext IDL PDF **29–30**; §8.3.9 `opSupportLimits()` PDF **46** |
| Eye | “An MLContext interface represents a global state of neural network execution… underlying execution device…” · `navigator.ml.createContext(options)` / `createContext(gpuDevice)` · powerPreference / accelerated hints · “device selection mechanism is a hint only” (§4 cite) · `opSupportLimits()` queries operator support without device enumeration |
| Stamps | **KEEP-read** context/device selection; **FORBID-as-Lace-strand** / **FORBID-as-Core-write** (MLContext ≠ Graphic D / Core door / lace cord); **FORBID-as-WebGPU-conflation** (`createContext(GPUDevice)` bridge ≠ Device identity) |
| Steward refuse | “MLContext is Graphic D / Core door” → **FORBID-as-Lace-strand** |

---

## PAGE C — Graph builder

| Field | Content |
|---|---|
| PDF pin | §8.4 MLGraph interface PDF **50**; §8.9 MLGraphBuilder PDF **62**; §8.9.4 `build` method PDF **67**; overview builder cite §7.1 PDF **21–22** |
| Eye | “The MLGraph interface represents a compiled computational graph… once constructed is immutable…” · `MLGraphBuilder` constructor(context) · `input` / `constant` / `build(outputs)` → `Promise<MLGraph>` · “Each MLGraphBuilder can build at most one MLGraph.” |
| Stamps | **KEEP-read** graph construction; **FORBID-as-Lace-strand** (**MLGraph ≠ Lace strand** / Core graph / Graphic D) |
| Steward refuse | “MLGraph is the Lace strand / Graphic D” → **FORBID-as-Lace-strand** |

---

## PAGE D — Tensors / buffers / operands

| Field | Content |
|---|---|
| PDF pin | §8.5 MLOperandDescriptor PDF **51**; §8.6 MLOperand PDF **53**; §8.7 MLTensorDescriptor PDF **57**; §8.8 MLTensor PDF **58**; §8.3.2 `createTensor` PDF **35**; §8.3.3 `createExportableTensor` PDF **36**; §8.3.8 `exportToGPU` PDF **42–43** |
| Eye | “The MLTensor interface represents a tensor which may be used as an input or output to an MLGraph.” · readable/writable/constant · `createTensor` / `readTensor` / `writeTensor` · `exportToGPU(tensor)` → `GPUBuffer` (bridge; “no guarantee… zero-copy”) · MLOperands as graph edges / constants / activations |
| Stamps | **KEEP-read** tensor/buffer mechanics; **FORBID-as-Lace-store** (**MLTensor ≠ store/append**; operand buffers ≠ Lace 1D strand); **PROPOSAL-only** for Lace↔`exportToGPU` sketches; **FORBID-as-WebGPU-conflation** (export bridge ≠ Buffer identity) |
| Steward refuse | “MLTensor is the Lace store / append surface” → **FORBID-as-Lace-store** |

---

## PAGE E — Operators

| Field | Content |
|---|---|
| PDF pin | §7.3 Operators (non-normative catalogue) PDF **24–25**; normative ops under §8.9.5+ (argMin/… from PDF **~68** onward); §11 Operator Emulation PDF **295** (squeeze / unsqueeze / flatten adjunct) |
| Eye | “The WebNN API defines a set of operators required by well-known CNN and RNN, transformer and generative models…” · categories: tensor creation/manipulation, quantization, casting, element-wise, matmul/gemm, conv, pooling, activation, normalization, reduction, RNN · “Operations present in other neural network inference APIs can often be emulated using operations present in WebNN.” |
| Stamps | **KEEP-read** op catalogue; **FORBID-as-Lace-WORD** / **FORBID-as-Core-write** (operator graph ≠ Lace Core ops / WORD); **FORBID-as-WGSL-conflation** (ops ≠ shader entry points) |
| Steward refuse | “Operator graph = Lace Core ops / WORD” → **FORBID-as-Lace-WORD** |

---

## PAGE F — Execution

| Field | Content |
|---|---|
| PDF pin | §8.3.1 `dispatch()` PDF **32–33**; §7.4 Task Source PDF **25**; §7.5 Permissions Policy Integration PDF **25**; dispatch example PDF **34** |
| Eye | “Schedules the computational workload of a compiled MLGraph on the MLContext’s…” · `dispatch(graph, inputs, outputs)` · “dispatch() itself provides no signal that graph execution has completed.” · ML task source for async compilation/execution · policy-controlled feature `"webnn"` default allowlist `'self'` |
| Stamps | **KEEP-read** dispatch/task path; **FORBID-as-emission-rule** (`dispatch` / graph execute / ML task source ↛ POINTER when/arity/adjacency / Φ) |
| Steward refuse | “`dispatch` / graph execute emits POINTER” / “fills Φ” → **FORBID-as-emission-rule** |

---

## PAGE G — Security / Privacy / Accessibility

| Field | Content |
|---|---|
| PDF pin | §3 Accessibility Considerations PDF **15**; §4 Security Considerations PDF **15–17**; §4.1 Guidelines for new operations PDF **18**; §5 Privacy Considerations PDF **18–19**; §5.1 Fingerprinting PDF **19**; §5.2 Execution Time Analysis PDF **20**; §5.3 WebGPU Comparison PDF **20** |
| Eye | “This API is considered a powerful feature… only available in a secure context.” · cross-origin frames disabled via Permissions Policy · device selection is hint-only; no device enumeration · “Unlike WebGPU, this API does not intrinsically support custom shader authoring…” · fingerprinting mitigations via standardized ops / options / `opSupportLimits` bucketing |
| Stamps | **KEEP-read** host threat/privacy/a11y model; **FORBID-as-Core-write** (WebNN security/privacy text ≠ Lace law / AGENTS.md); **FORBID-as-WebGPU-conflation** (§5.3 comparison ≠ identity merge) |
| Moral | Host threat model informs Shadow embed hygiene. It does not rewrite graphics A–D or fill Φ. |

---

## PAGE H — Changes / API surface / Algorithms

| Field | Content |
|---|---|
| PDF pin | §9 Algorithms (Broadcasting …) PDF **287**; §14 Changes PDF **299**; status-of-document CRD evolution cite PDF **2–3** (MLTensor, abstract device selection, API modernization) |
| Eye | Broadcasting “heavily influenced by [NumPy]…” · §14 documents Classes of Changes since prior major publication · CRD notes MLTensor buffer sharing + abstract device selection + security/privacy/a11y strengthening |
| Stamps | **KEEP-read** CRD evolution / algo surface; **SILENT-for-Lace-append** (broadcast/cast/Change log ≠ Lace scheduler / Φ gate) |
| Moral | Spec algorithms and changelog are silent for Lace append. API modernization is not emission acceptance. |

---

## PAGE X — Cross-cut keep-outs / false friends / steward refuse

| Field | Content |
|---|---|
| Stamps | **SILENT-for-Lace-append**; Φ **`[GAP]`**; all FORBIDs above retained; **FORBID-as-compile-target-swap**; **FORBID-as-WebGPU-conflation**; **FORBID-as-WGSL-conflation** |
| False friends | MLTensor/operand ↔ Lace strand/store · MLContext/MLGraph/device selection ↔ Graphic D / lace cord · `dispatch`/execute/ML task source ↔ POINTER when / Φ · WebNN operators ↔ Lace WORD / Core ops · WebNN MLContext ↔ WebGPU Device/Queue · WebNN ops ↔ WGSL · WebNN ↔ wasm64 compile target · `exportToGPU` ↔ merge identity / accept `pointer-emission.md` |
| Steward refuse (must reject) | (1) “WebNN is a Lace WORD / Core operator set” → **FORBID-as-Lace-WORD** · (2) “MLGraph is the Lace strand / Graphic D” → **FORBID-as-Lace-strand** · (3) “MLTensor is the Lace store / append surface” → **FORBID-as-Lace-store** · (4) “`dispatch` / graph execute emits POINTER” / “fills Φ” → **FORBID-as-emission-rule** · (5) “Operator graph = Lace Core ops” → **FORBID-as-Lace-WORD** · (6) “WebNN MLContext is WebGPU Device/Queue” → **FORBID-as-WebGPU-conflation** · (7) “WebNN is WGSL / shader-lang” → **FORBID-as-WGSL-conflation** · (8) “WebNN replaces wasm64 / wasm-spec-3 compile target” → **FORBID-as-compile-target-swap** · (9) “`exportToGPU` merges WebNN into WebGPU identity / accepts pointer-emission.md” → **PROPOSAL-only** / **FORBID** / GAP remains |
| Moral | Shoe in hands, or no. WebNN is the **host NN inference API** Shadow may call, not the lace. MLGraph is not Graphic D. MLTensor is not the store. `dispatch` is not append / Φ. WebNN operators are not WORD. WebNN is not WebGPU Device/Queue. WebNN is not WGSL. WebNN is not the wasm64 target. Φ stays `[GAP]`. Mechanisms/ASCII wait for later passes. |

---

## Explicitly not this pass

- No `webnn-ascii-machinery.md` / Wave A panels yet (**later pass**; mechanisms/ASCII are **not** Pass 1).
- No `webnn-mechanisms.md` yet (**later pass**).
- No five-stakes rewrite (default **skip**).
- webgpu-* / wgsl-* / wasm-spec-3-* products **untouched** (cite-only).
- No `src/`. Emission still `[GAP]`.
