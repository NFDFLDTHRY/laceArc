# CLIPBOARD — laceArc ← WebNN W3C CRD 2026-09-10 (HOST-NN inference API)

**Current issue scope, 2026-09-20 — repository update pass 4:** the [dated source qualification](#repository-update-pass-4--dispatch-issue-scope) narrows Issues5/7 to execution-error reporting and preserves the separate dispatch/readback completion distinction. Historical D7/P5/P6 OPEN wording remains as recorded, qualified by this note; no API algorithm or campaign verdict changes.

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


## Pass 2 receipt — P2-R

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~22:30 PT |
| Station | clipboards · agent `webnn Pass 2 EXECUTE` |
| Plan | [webnn-pass-2-plan.md](webnn-pass-2-plan.md) (was HELD; claim BASE `ee37319` = origin/main after refresh) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README + hologram notes (Shadow) → clock/wasm README (different layer) → webgpu Pass 1–5 banner / relation (**cite-only**) → wgsl Pass 1–5 banner / relation (**cite-only**) → wasm-spec-3 Pass 1–6 banner (**cite-only**) → Pass 1 clipboard → this plan → PDF |
| PDF | **PRESENT** — cite Pass 1: `refs/local/webnn-crd-20260910.pdf` → `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc.pdf`; **353** pp.; text layer; PDF one-based primary; SHA match; gitignored; **never staged** |
| Product | D1–D6 leftovers (+ D7 Shadow builder→build→dispatch miniature); A–H/X morals untouched; **no** ascii Wave A; mechanisms deferred Pass 3+ |
| Amended | Core graphics · systems-manifest(-ascii) · five-stakes · src/ · webgpu-* · wgsl-* · wasm-spec-3 · clock · hologram · law | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| T5 five-stakes | **skip** (default) |
| T7 ascii/mechanisms/companions | **skip** — no ascii; no mechanisms; webgpu-* / wgsl-* / wasm-spec-3 untouched |
| D7 | **included** — MLGraphBuilder → `input`/`constant` → `build` → `dispatch` sketch (PAGE C/F · Builder PDF **62** · `build` PDF **67–68** · `dispatch` PDF **32–33**); **FORBID-as-Lace-strand** · **FORBID-as-Core** · **FORBID-as-emission-rule** · **SILENT-for-Lace-append** |
| FM-Webnn1…Webnn9 | all pinned (no OPEN) |

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

## Explicitly not this pass (Pass 1 deferrals — Pass 2 status)

- No `webnn-ascii-machinery.md` / Wave A panels yet (**Pass 4+**; Pass 2 does not invent ascii).
- `webnn-mechanisms.md` — **Pass 3 EXECUTED** (M-N1…M-N9); see P3-M / P3-R below. (Pass 2 had deferred mechanisms.)
- No five-stakes rewrite (default **skip**).
- webgpu-* / wgsl-* / wasm-spec-3-* products **untouched** (cite-only).
- No `src/`. Emission still `[GAP]`.

---

## Pass 2 deltas

Pass 1 filled PAGE A–H, X against the CRD. These deltas are **host-NN leftovers / false friends / coherence** only. They do not invent emission. A–H/X morals are unchanged. FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-WebGPU-conflation / FORBID-as-WGSL-conflation / FORBID-as-compile-target-swap / PROPOSAL-only / SILENT are not softened. WebNN remains **HOST-NN Shadow only**.

### D1 — What this clipboard / shelf is not

- Not Core / not a sixth graphic / not systems-manifest-ascii.
- Not `pointer-emission.md` / not a Φ fill / not acceptance of emission by calling WebNN.
- Not Lace’s 1D strand, star index, or Graphic D scheduler.
- Not permission to treat **MLGraph / MLContext / device selection** as lace cord / Graphic D / Core door.
- Not permission to treat **MLTensor / operands / constant tensors** as Lace store / append surface.
- Not permission to treat **`dispatch` / graph execute / ML task source** as POINTER when / arity / adjacency / Φ.
- Not permission to treat **WebNN operators / graphs** as Lace WORD / Core ops.
- Not permission to treat **MLGraphBuilder** as Lace Core constructor / Graphic D factory.
- Not a **WebGPU Device/Queue/Buffer** host-API swap (webgpu-* shelf stands; different Spec; `exportToGPU` bridge ≠ identity).
- Not a **WGSL / shader-lang** swap (wgsl-* shelf stands; different Spec).
- Not a **wasm64 compile-target** swap (wasm-spec-3 shelf stands; different layer).
- Not permission to treat **security / privacy / a11y** text as Lace law / AGENTS rewrite.
- Not permission to treat **broadcasting / Changes / algorithms** as Lace append scheduler / Φ gate.
- Not a rewrite of clock / hologram / AGENTS Implementation Law.
- Not permission to add `src/` before emission acceptance.
- Not an anti-model LLM leftover shelf; not an ISA leftover shelf; not a host/GPU leftover shelf; not a shader-lang leftover shelf (FM-W\* / FM-Wgpu\* / FM-Wgsl\* stay home).
- Not new PAGEs for Ch.2 Use cases / Ch.6 Ethics / Ch.10 Examples / Ch.12–13 Appendices (cite-as-needed only).

### D2 — ON-TARGET / KEEP / FORBID / MAP strip

Compact spine on this clipboard (not five-stakes). Matches Pass 1 morals.

| KEEP-read-as-host-NN-API | FORBID |
|---|---|
| CRD 2026-09-10 identity / programming-model overview (PAGE A) | Graph construction/execution ⇒ Lace append order (A) |
| Context / device selection / `createContext` / `opSupportLimits` (PAGE B) | MLContext / device hint ⇒ lace cord / Graphic D / Core door (B; **FORBID-as-Lace-strand**); `createContext(GPUDevice)` ⇒ Device identity (B; **FORBID-as-WebGPU-conflation**) |
| MLGraph / MLGraphBuilder / `build` (PAGE C) | MLGraph ⇒ Lace strand / Graphic D; builder ⇒ Core constructor (C; **FORBID-as-Lace-strand** / **FORBID-as-Core-write**) |
| MLOperand / MLTensor / create·read·write / `exportToGPU` (PAGE D) | MLTensor/operands ⇒ Lace store/append; export ⇒ Buffer identity / accept emission (D; **FORBID-as-Lace-store** / **FORBID-as-WebGPU-conflation** / **PROPOSAL-only**) |
| Operators / catalogue / emulation (PAGE E) | Operator graph ⇒ Lace WORD / Core ops; ops ⇒ WGSL entry points (E; **FORBID-as-Lace-WORD** / **FORBID-as-WGSL-conflation**) |
| `dispatch` / task source / permissions (PAGE F) | `dispatch`/execute/task source ⇒ POINTER when/arity/adjacency / Φ (F; **FORBID-as-emission-rule**) |
| Security / privacy / a11y / §5.3 WebGPU comparison (PAGE G) | WebNN security text ⇒ Lace law / AGENTS; §5.3 ⇒ identity merge (G; **FORBID-as-Core-write** / **FORBID-as-WebGPU-conflation**) |
| Algorithms / Changes (PAGE H) | Broadcast/cast/Changes ⇒ Lace append scheduler / Φ gate (H; **SILENT-for-Lace-append**) |
| Host-NN as Shadow projection API (PAGE X) | WebNN ⇒ WebGPU Device/Queue · WGSL · wasm64 swap (X; **FORBID-as-WebGPU-conflation** / **FORBID-as-WGSL-conflation** / **FORBID-as-compile-target-swap**) |

**MAP arrows (coherence with Hands / projection / hologram / WebGPU companion / WGSL companion / wasm64 — all exits FORBIDDEN into Core write):**

```
A ──KEEP-read-as-host-NN-API──► Shadow host-NN identity     ──[X]──► Core / sixth graphic
B ──KEEP-read──► MLContext / device selection               ──[X]──► Graphic D / lace cord / Core door
C ──KEEP-read──► MLGraph / MLGraphBuilder                   ──[X]──► Lace strand / Core constructor
D ──KEEP-read──► MLTensor / operands / exportToGPU bridge   ──[X]──► Lace store / Buffer identity / accept GAP
E ──KEEP-read──► operator catalogue (Shadow cite)           ──[X]──► WORD / Core ops / WGSL entry / src/
F ──KEEP-read──► dispatch / task source                     ──[X]──► pointer-emission when-rule / Φ
G ──KEEP-read──► host threat / privacy / a11y               ──[X]──► Lace law / AGENTS rewrite
H ──SILENT──► algorithms / Changes                          ──[X]──► Lace cut / append / Φ gate
X ──SILENT──► false friends / steward refuse                ──[X]──► WebGPU swap · WGSL swap · wasm64 swap · invent Φ
webgpu-* ──cite-only──► HOST/GPU companion (export bridge)  ──[X]──► conflate shelves / edit webgpu-*
wgsl-* ──cite-only──► SHADER-LANG companion                 ──[X]──► conflate shelves / edit wgsl-*
wasm-spec-3 ──cite-only──► wasm64 compile target            ──[X]──► conflate with WebNN
clock/hologram ──cite──► Shadow viewer may later cite NN    ──[X]──► Core authority
emission = [GAP]  ·  Hands win  ·  no src/ until human-accepted emission
```

### D3 — Failure modes (FM-Webnn1…Webnn9)

| ID | Misread | Hands / law deadbolt | PDF pin (Pass 1 reuse + Pass 2 verify) |
|---|---|---|---|
| **FM-Webnn1** | **MLGraph** ⇒ Lace **1D strand** / Graphic D / Core graph | **FORBID-as-Lace-strand** · PAGE C | §8.4 MLGraph PDF **50** — “compiled computational graph… once constructed is immutable”; §7.1 overview PDF **21–22** — MLGraphBuilder factory / “at most one MLGraph” (cite C) |
| **FM-Webnn2** | **MLContext / device selection / `createContext`** ⇒ **Core / Graphic D** / lace cord / Core door | **FORBID-as-Lace-strand** · **FORBID-as-Core-write** · PAGE B | §7.2 Device Selection PDF **23** — “global state of neural network execution”; `createContext` PDF **28–29**; §8.3 MLContext IDL PDF **29–30** (cite B) |
| **FM-Webnn3** | **MLTensor / operands / constant tensors** ⇒ Lace **store / append surface** / second strand | **FORBID-as-Lace-store** · PAGE D | §8.5–8.6 Operand PDF **51–53**; §8.8 MLTensor PDF **57–58** — “tensor which may be used as an input or output to an MLGraph”; `createTensor` PDF **35** (cite D) |
| **FM-Webnn4** | **`dispatch` / graph execute / ML task source** ⇒ POINTER **when** / arity / adjacency (**Φ** fill) | **FORBID-as-emission-rule** · pointer-emission `[GAP]` · PAGE F | §8.3.1 `dispatch` PDF **32–33** — “Schedules the computational workload…” · “dispatch() itself provides no signal that graph execution has completed.”; §7.4 Task Source PDF **25** (cite F) |
| **FM-Webnn5** | **WebNN operators / operator graph** ⇒ Lace **WORD** / Core operator set / schema language | **FORBID-as-Lace-WORD** · **FORBID-as-Core-write** · PAGE E | §7.3 Operators PDF **24–25** — catalogue for CNN/RNN/transformer; ops from §8.9.5+ PDF **~68+**; §11 Emulation PDF **295** — “emulated using operations present in WebNN” (cite E) |
| **FM-Webnn6** | **WebNN MLContext / Graph / Tensor** ⇒ **WebGPU Device / Queue / Buffer** (identity merge) | **FORBID-as-WebGPU-conflation** · PAGE B/D/G/X | `createContext(GPUDevice)` PDF **28–29**; `exportToGPU` PDF **42–43** — “no guarantee… zero-copy”; §5.3 WebGPU Comparison PDF **20** — “Unlike WebGPU, this API does not intrinsically support custom shader authoring…”; cite webgpu-* (different Spec) |
| **FM-Webnn7** | **WebNN** ⇒ **WGSL / shader-lang** / operators ⇒ shader entry points | **FORBID-as-WGSL-conflation** · PAGE E/X | §5.3 PDF **20** (no custom shader authoring); cite wgsl-* (different Spec) |
| **FM-Webnn8** | **WebNN** ⇒ **wasm64 compile target** / replaces wasm-spec-3 shelf | **FORBID-as-compile-target-swap** · PAGE X | PAGE X steward refuse (8) + wasm-spec-3 Pass 1–6 cite-only (different layer; **not** this CRD) |
| **FM-Webnn9** | **MLGraphBuilder** ⇒ Lace **Core constructor** / Graphic D factory; **`exportToGPU`** ⇒ accept `pointer-emission.md` / merge shelves | **FORBID-as-Core-write** · **FORBID-as-Lace-strand** · **PROPOSAL-only** · **FORBID** accept-GAP · PAGE C/D | §8.9 Builder PDF **62**; `build` PDF **67–68** — “Each MLGraphBuilder can build at most one MLGraph.”; `exportToGPU` PDF **42–43** (cite C/D) |

No FM row left `[OPEN]`. Pins reused/verified from Pass 1; Pass 2 re-sighted Device Selection / createContext / MLGraph / Builder/`build` / Operand/MLTensor / `dispatch` / Task Source / §5.3 / Emulation / `exportToGPU` via `pdftotext -f N -l N -layout`. Ch.2 / Ch.6 / Ch.10 / Ch.12–13 remain **cite-as-needed** (no new PAGEs).

### D4 — Interface coherence (Hands + projection + hologram + WebGPU companion + WGSL companion + wasm64)

**Only** KEEP-read-as-host-NN-API outputs may sit **beside** Lace: WebNN CRD as the **host-NN inference Web API** Shadow projection / hologram / host-embed may call. **Nothing** in A–H/X writes Graphic D, strand/, word/, pointer/, or fills `pointer-emission.md`. **webgpu-*** = **HOST/GPU Web API** companion — cite-only; WebNN does **not** replace Device/Queue/Buffer (**FM-Webnn6**). `exportToGPU` is a **bridge cite**, not identity; do **not** edit webgpu-*. **wgsl-*** = **SHADER-LANG** companion — cite-only; WebNN does **not** replace WGSL / shader entry points (**FM-Webnn7**). Do **not** edit wgsl-*. **wasm-spec-3** = **compile-target ISA / wasm64 seal** — cite-only; WebNN does **not** replace it (**FM-Webnn8**). **clock/** and **hologram/** are **Shadow surfaces** that may later *cite* host-NN — glyphs ≠ schema; they do not become Core authority for this CRD or vice versa. **`docs/clock/wasm/README.md`** is Shadow **projection bake** — **different layer** from this host-NN shelf; not Spec authority. Lace↔host-NN / `exportToGPU` sketches stay **PROPOSAL-only**; calling WebNN or exporting tensors does **not** accept emission. Ch.2 / Ch.6 / Ch.10 / Ch.12–13 remain cite-as-needed — not Core use-case/ethics/examples law, not new PAGEs. `[GAP]` remains. Shoe in hands, or no. **Do not invent Core maps** from this clipboard into five-stakes or reason-model.

### D5 — Source gate (cite Pass 1)

PDF is **PRESENT** (do not narrate absent). Pass 1 receipt (P1-R): `refs/local/webnn-crd-20260910.pdf` → attachment `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc.pdf`; **353** pages; text layer present (Skia/PDF); PDF one-based primary (no clear printed↔PDF offset); SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`; title Web Neural Network API · W3C CRD **10 September 2026** · URL `https://www.w3.org/TR/2026/CRD-webnn-20260910/`; `git check-ignore` OK; **never `git add`**. Pass 1 products: clipboard PAGE A–H, X · **no** ascii Wave A · mechanisms deferred · execute ~`186ba06` / station release tip historically ~`6be7d27` (rebase-aware: cite P1-R fields on clipboard). Method this pass: reuse Pass 1 pins; `pdftotext` verify for FM-Webnn\* + D7. Five-stakes left untouched (T5 skip).

### D6 — Sealed (still)

- Invent POINTER when / arity / adjacency (Φ stays `[GAP]`)
- Soften Pass 1 FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-WebGPU-conflation / FORBID-as-WGSL-conflation / FORBID-as-compile-target-swap / PROPOSAL-only / SILENT
- Promote MLGraph as Lace strand / Graphic D
- Promote MLContext / device selection as Graphic D / lace cord / Core door
- Promote MLTensor / operands / constant tensors as Lace store / append surface
- Use `dispatch` / graph execute / ML task source as POINTER emission / Φ
- Treat WebNN operators / graphs as Lace WORD / Core ops
- Treat MLGraphBuilder as Lace Core constructor / Graphic D factory
- Swap WebNN for WebGPU Device/Queue/Buffer (identity merge)
- Swap WebNN for WGSL / shader-lang
- Swap WebNN for wasm64 / wasm-spec-3 compile target
- Treat `exportToGPU` as identity merge / emission accept
- Treat security / privacy / a11y text as Lace law / AGENTS rewrite
- Treat broadcasting / Changes / algorithms as Lace append scheduler / Φ gate
- ~~Create `webnn-ascii-machinery.md` / Wave A panels~~ (**Pass 4 did**) · ~~create `webnn-mechanisms.md`~~ (**Pass 3 did**; see P3-M/P3-R; do not reopen inventively)
- Amend webgpu-* / wgsl-* / wasm-spec-3 products · law / graphics / systems-manifest / five-stakes / clock / hologram
- Invent Core maps into five-stakes / reason-model
- Add `src/` / Cargo.toml before emission acceptance
- Git-add the PDF · pretend OCR / claim PDF absent when present
- Clone Xiao–Zhu / Petersen / AgentScope LLM morals, wasm FM-W\* ISA morals, WebGPU FM-Wgpu\* host-GPU morals, or WGSL FM-Wgsl\* shader morals onto this shelf
- Open new PAGEs for Ch.2 / Ch.6 / Ch.10 / Ch.12–13

### D7 — Constructive miniature (Shadow only) — builder → build → dispatch sketch

**Choice (a).** Stamp: **FORBID-as-Lace-strand** · **FORBID-as-Core** · **FORBID-as-emission-rule** · **SILENT-for-Lace-append** · not POINTER when-rule · not Φ · not `src/` · builder ≠ Core constructor. Paper algorithm only (PAGE C/F · Builder PDF **62** · `build` PDF **67–68** · `dispatch` PDF **32–33**). Steps below are what the Spec states; no invented operators. `exportToGPU` bridge miniature (choice b) deferred.

1. Obtain an `MLContext` via `navigator.ml.createContext(options)` or `createContext(gpuDevice)` (PAGE B · PDF **28–29** — **KEEP-read**; Context ↛ Graphic D / Core door — **FM-Webnn2** / **FM-Webnn6**).
2. Construct `MLGraphBuilder(context)` (§8.9 PDF **62** — factory for graph construction; **≠** Lace Core constructor — **FM-Webnn9**).
3. Declare graph edges: `builder.input(…)` / `builder.constant(…)` and operator methods (`gemm`, `relu`, …) returning distinct `MLOperand`s (§7.1 PDF **21–22**).
4. Compile: `graph = await builder.build(outputs)` → `Promise<MLGraph>` (§8.9.4 PDF **67–68**). “Each MLGraphBuilder can build at most one MLGraph.” Compiled `MLGraph` is immutable (**≠** Lace strand — **FM-Webnn1**).
5. Execute: `context.dispatch(graph, inputs, outputs)` (§8.3.1 PDF **32–33**) — “Schedules the computational workload of a compiled MLGraph on the MLContext’s [[timeline]].” **NOTE:** “dispatch() itself provides no signal that graph execution has completed.” Callers may await `readTensor` for outputs — still **not** Φ / POINTER when (**FM-Webnn4**).

**[OPEN] (book continues; not settled for Lace):** ISSUE 5/7 completion/error signaling during `dispatch()` (Spec silent / open); which host embed may call this from Lace projection — out of scope here. Do **not** finish those from Lace.

**Lace refusal:** this sketches **host-NN graph construct → compile → schedule**. It does **not** emit POINTER, does **not** append to Graphic D, does **not** open Core doors / `src/`, and does **not** fill emission `[GAP]`. `dispatch` is not Φ. Builder is not a Core constructor.

---


---

## Pass 3 — Mechanism coherence (P3-M) + receipt (P3-R)

**Status:** **EXECUTED** · agent `webnn Pass 3 EXECUTE` · ~2026-09-18 22:38 PT · claim BASE `8b4f95e` (= `origin/main` after refresh; full `8b4f95e0ecd15ac2e7953e6a8a199d7aa4dbd513`).

### P3-M — Mechanism coherence mesh

| Mechanism (M-N*) | Future panel (P-N*) | Clipboard PAGE | FM-Webnn* | Companion (cite-only) | Projection / hologram (cite) | Emission | KEEP/FORBID tooth | Same story? |
|---|---|---|---|---|---|---|---|---|
| **M-N1** Context / device | P-N1 | B | **FM-Webnn2** · **FM-Webnn6** | ≠ WebGPU Device (cite webgpu-*) | Shadow host-NN acquire (`clock/` · `hologram/`) | `[GAP]` | KEEP-read-as-host-NN-API · **FORBID-as-Lace-strand** · FORBID-as-Core-write · **FORBID-as-WebGPU-conflation** | YES |
| **M-N2** Graph builder | P-N2 | C | **FM-Webnn1** · **FM-Webnn9** | cite-only | Builder ≠ Graphic D factory | `[GAP]` | KEEP-read · **FORBID-as-Lace-strand** · **FORBID-as-Core-write** · FORBID-as-Core · **D7** | YES |
| **M-N3** Tensors / operands | P-N3 | D | **FM-Webnn3** | cite-only | Operand/tensor ≠ strand/append | `[GAP]` | KEEP-read · **FORBID-as-Lace-store** | YES |
| **M-N4** Operators / op graph | P-N4 | E | **FM-Webnn5** · **FM-Webnn7** | ≠ WGSL (cite wgsl-*) | Op graph ≠ WORD | `[GAP]` | KEEP-read · **FORBID-as-Lace-WORD** · FORBID-as-Core-write · **FORBID-as-WGSL-conflation** | YES |
| **M-N5** Compilation / build | P-N5 | C | **FM-Webnn1** · **FM-Webnn9** | cite-only; **D7** cross-link | MLGraph ≠ lace cord | `[GAP]` | KEEP-read · **FORBID-as-Lace-strand** · FORBID-as-Core-write · FORBID-as-Core · **D7** | YES |
| **M-N6** Execution / dispatch | P-N6 | F | **FM-Webnn4** | cite-only; **D7** cross-link | dispatch ≠ Φ | `[GAP]` | KEEP-read · **FORBID-as-emission-rule** · **SILENT-for-Lace-append** · **D7** | YES |
| **M-N7** MLTensor / buffers / export | P-N7 | D | **FM-Webnn3** · **FM-Webnn6** · **FM-Webnn9** | export ≠ Buffer identity (cite webgpu-*) | export ≠ accept emission | `[GAP]` (FORBID fill) | KEEP-read · **FORBID-as-Lace-store** · **PROPOSAL-only** · FORBID-as-WebGPU-conflation · **FORBID** accept-GAP | YES |
| **M-N8** Error / validation | P-N8 | B+H | PAGE H/X SILENT mesh | cite-only | validation ≠ Lace cut | `[GAP]` | KEEP-read · **SILENT-for-Lace-append** · **FORBID-as-emission-rule** | YES |
| **M-N9** Security / privacy | P-N9 | G | **FM-Webnn6** · PAGE X · **FM-Webnn8** | ≠ WebGPU identity (§5.3); ≠ wasm64 | threat text ≠ Lace law | `[GAP]` | KEEP-read · **FORBID-as-Core-write** · **FORBID-as-WebGPU-conflation** | YES |

**CONFLICT:** none. PAGE A/X remain mesh context (not Wave A cards). Pass 1–2 morals / FM-Webnn\* / D7 **stand** (not rewritten).
**Pass 4 ASCII panels P-N1…P-N9 → [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md).**  
**Companions:** webgpu-* (HOST/GPU · M-G\*) · wgsl-* (SHADER-LANG · M-S\*) · wasm-spec-3 (wasm64 · M-T\*) — **cite-only; not amended**.  
**Projection/hologram / clock / law / graphics / systems-manifest / five-stakes / src / emission:** **not amended**.  
**Emission:** `[GAP]` on every row. **Ascii:** Pass 4 → [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md) (**P-N1…P-N9**).

### P3-5S — Five-stakes

**skip** (default) — no unexpected five-stakes drift; this shelf is not an anti-model PAGE.

### P3-R — Pass 3 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~22:38 PT |
| Station | clipboards · agent `webnn Pass 3 EXECUTE` |
| Plan | [webnn-pass-3-plan.md](webnn-pass-3-plan.md) (was HELD; gate CLEAR after Pass 2 tip `01f42a2`) |
| Claim BASE | `8b4f95e` (full `8b4f95e0ecd15ac2e7953e6a8a199d7aa4dbd513` = `origin/main` at refresh) |
| Pass 2 gate | **CLEAR** — Pass 2 **EXECUTED** (P2-R · D1–D6 + FM-Webnn1…9 + D7); re-verified at execute |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README + hologram (Shadow) → clock/wasm README (different layer) → webgpu mechanisms header / M-G\* (**cite-only**) → wgsl mechanisms / M-S\* schema (**cite-only**) → wasm-spec-3 banner (**cite-only**) → Pass 1–2 clipboard (A–H/X + D1–D6 + FM-Webnn\* + D7) → this plan → PDF |
| PDF | **PRESENT** — `refs/local/webnn-crd-20260910.pdf` → `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`; **353** pp.; text layer; PDF one-based; SHA match; gitignored; **never staged** |
| Artifact A | [`webnn-mechanisms.md`](webnn-mechanisms.md) · **M-N1…M-N9** full schema |
| Artifact B | P3-M mesh (9 rows) + this receipt |
| Hard stamps | M-N1 FORBID-as-Lace-strand + FORBID-as-WebGPU-conflation · M-N2/M-N5 FORBID-as-Lace-strand / FORBID-as-Core-write · M-N3/M-N7 FORBID-as-Lace-store · M-N4 FORBID-as-Lace-WORD · M-N6 FORBID-as-emission-rule · M-N7 PROPOSAL-only + FORBID accept-GAP · M-N8 SILENT-for-Lace-append · M-N9 FORBID-as-Core-write · **D7** cross-link M-N2/M-N5/M-N6 |
| T6 five-stakes | **skip** |
| T7 ascii | **done Pass 4** → [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md) |
| Amended | Core graphics · systems-manifest · five-stakes · src/ · webgpu-* · wgsl-* · wasm-spec-3 · clock · hologram · law · pointer-emission | **No** |
| Pass 1–2 / FM-Webnn\* / D7 | **stand** (D6 mechanisms-deferred line annotated; no PAGE rewrite) |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| PDF staged | **No** |
| Push | **No** (ask before push) |

---

## Pass 4 — ASCII SOURCE MACHINERY (P-N1…P-N9) + P4-X + receipt (P4-R)

**Status:** **EXECUTED** · agent `WebNN Pass 4 EXECUTE: ASCII P-N1…P-N9 + P4-X` · ~2026-09-18 22:45 PT · claim BASE `8a213ff` (= `origin/main` at rebase/refresh).

### Artifact

[`webnn-ascii-machinery.md`](webnn-ascii-machinery.md) — HOST-NN opening contract · stamp legend · **SOURCE MACHINERY overview** (count=1 · context→builder→operands→operators→build→dispatch→tensor/export→validation→security) · panels **P-N1…P-N9** 1:1 with **M-N1…M-N9** · cross-walk M↔P · **P4-X** rigor matrix.

### P4-X — Rigor matrix (summary)

| Block | Result |
|---|---|
| Panels P-N1…P-N9 (9) | **PASS** ×9 — Implements · Fence (Spec-only; no POINTER word) · Stamp · False-friend · Overview attach all Y |
| Overview spine (10) | **PASS** ×10 — nine constructive nodes + forbidden Core/Φ/WebGPU/WGSL/wasm64 exit |
| Special gates (13) | **PASS** ×13 — FM-Webnn1…9 / D7 / SILENT / no-POINTER-in-fence / no-invent-Φ |
| FIX remaining | **0** |

Hard stamps under fences: P-N1 FORBID-as-Lace-strand + FORBID-as-WebGPU-conflation + KEEP-read-as-host-NN-API · P-N2/P-N5 FORBID-as-Lace-strand + Core FORBIDs + **D7** · P-N3 FORBID-as-Lace-store · P-N4 FORBID-as-Lace-WORD + FORBID-as-WGSL-conflation · P-N6 FORBID-as-emission-rule + SILENT + **D7** · P-N7 FORBID-as-Lace-store + PROPOSAL-only + FORBID accept-GAP · P-N8 SILENT · P-N9 FORBID-as-Core-write + FORBID-as-WebGPU-conflation.

### P4-R — Pass 4 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~22:45 PT |
| Station | clipboards · agent `WebNN Pass 4 EXECUTE: ASCII P-N1…P-N9 + P4-X` |
| Plan | [webnn-pass-4-plan.md](webnn-pass-4-plan.md) (was HELD; now EXECUTED) |
| Claim BASE | `8a213ff` (full `8a213ff3ee73928b52ed1ff7a34143297fc4a8a6` = `origin/main` after rebase) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README + hologram (Shadow) → clock/wasm (different layer) → webgpu ascii/mechanisms (**cite-only**) → wgsl ascii/mechanisms (**cite-only**) → wasm-spec-3 banner (**cite-only**) → Pass 1–3 clipboard + M-N1…M-N9 → this plan → PDF gate |
| PDF | **PRESENT** — `refs/local/webnn-crd-20260910.pdf` → `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`; **353** pp.; text layer; PDF one-based; SHA match; gitignored; **never staged** |
| Artifact | [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md) · overview (**count=1**) + **P-N1…P-N9** + cross-walk + P4-X |
| Algorithms | M-N* **unchanged** (cite only; panel cites → P-N*) |
| P4-X | **PASS** × (9 panels + 10 overview + 13 special gates) · FIX=0 |
| Fence audit | **no POINTER word** inside any diagram fence |
| Amended | Core graphics · systems-manifest · five-stakes · src/ · webgpu-* · wgsl-* · wasm-spec-3 · clock · hologram · law · pointer-emission | **No** |
| Pass 1–3 / FM-Webnn* / D7 / P3-M | **stand** (CONFIRM×9 · CONFLICT×0) |
| Order Proposal | deferred **Pass 5** |
| Deep diagram audit | deferred **Pass 6** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| PDF staged | **No** |
| Push | **No** (ask before push) |

---

## Pass 5 — Shadow Order Proposal + light accuracy steward (P5-X / P5-F / P5-O / P5-P / P5-R)

**Status:** **EXECUTED** · 2026-09-18 ~22:54 PT · station clipboards · agent `WebNN Pass 5 EXECUTE`  
**Plan:** [`webnn-pass-5-plan.md`](webnn-pass-5-plan.md) (HELD → EXECUTED)  
**ASCII under test:** [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md) — SOURCE MACHINERY + **P-N1…P-N9** · P4-X all PASS  
**Mechanisms:** [`webnn-mechanisms.md`](webnn-mechanisms.md) — **M-N1…M-N9** (cite only; unchanged)  
**Law:** WebNN = **HOST-NN Shadow only**. Pass 4 SOURCE MACHINERY adopted as **Shadow Order Proposal** for shelf hygiene beside Shadow projection / hologram. Order Proposal **FORBID-as-Core-write**; **NON-binding** on Core / `src/` / Φ / systems-manifest-ascii / graphics. Emission Φ still `[GAP]`. **KEEP-read-as-host-NN-API**. **FM-Webnn1…Webnn9** stand.

**Hands + host-NN mesh skim (T1):** shoe / AGENTS Implementation Law → graphics A–D → systems-manifest → staking / law-why → pointer-emission DRAFT/`[GAP]` → clock/README (**Shadow consumer**) → hologram + visual-primitives (**Shadow consumer**) → webgpu-* banner (**HOST/GPU** cite-only; **do not edit**) → wgsl-* banner (**SHADER-LANG** cite-only; **do not edit**) → wasm-spec-3 banner (**wasm64** cite-only) → Pass 1–4 clipboard (P4-R / P4-X all PASS · **FM-Webnn1…Webnn9**) → ascii overview + P-N1…P-N9 → mechanisms M-N1…M-N9 → this Pass 5 plan → webgpu / wgsl Pass 5 Order Proposal shape (read-only; adapt to **HOST-NN**).

**PDF gate (T2):** `refs/local/webnn-crd-20260910.pdf` · SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` · 353 pp · `git check-ignore` OK · **never staged**. Re-sight not required (P5-X all CONFIRM / no FIX pin).

### P5-X — Light accuracy matrix (CONFIRM Pass 4 · reopen only OPENS/drift)

**Stance:** P4-X **all PASS** is baseline. Light steward re-walk — default **CONFIRM**. Reopen to FIX only if book OPENS surface as representation drift, stamp/fence/overview attach drifted since Pass 4 tip, or a steward refuse test fails against current card+panel. No second full P4 special-gate PDF campaign.

**Columns:** `overview node · P-N* · M-N* · stamp · Implements OK · Fence OK · Overview OK · Pin OK · PASS/FIX`

#### Wave A panels (P-N1…P-N9 ↔ M-N1…M-N9)

| overview node | P-N* | M-N* | stamp | Impl | Fence | Overview | Pin | PASS/FIX |
|---|---|---|---|---|---|---|---|---|
| navigator.ml / createContext · MLContext | P-N1 | M-N1 | KEEP-read-as-host-NN-API · FORBID-as-Lace-strand · FORBID-as-WebGPU-conflation | Y | Y | Y | Y (FM-Webnn2·6) | **PASS** |
| MLGraphBuilder · input / constant | P-N2 | M-N2 | FORBID-as-Lace-strand · FORBID-as-Core-write · FORBID-as-Core · D7 | Y | Y | Y | Y (FM-Webnn1·9) | **PASS** |
| MLOperand · tensors / descriptors | P-N3 | M-N3 | FORBID-as-Lace-store | Y | Y | Y | Y (FM-Webnn3) | **PASS** |
| operators · op graph catalogue | P-N4 | M-N4 | FORBID-as-Lace-WORD · FORBID-as-WGSL-conflation | Y | Y | Y | Y (FM-Webnn5·7) | **PASS** |
| build → MLGraph · at-most-one | P-N5 | M-N5 | FORBID-as-Lace-strand · FORBID-as-Core · D7 | Y | Y | Y | Y (FM-Webnn1·9) | **PASS** |
| dispatch · ML task source | P-N6 | M-N6 | FORBID-as-emission-rule · SILENT-for-Lace-append · D7 | Y | Y | Y | Y (FM-Webnn4) | **PASS** |
| MLTensor · exportToGPU | P-N7 | M-N7 | FORBID-as-Lace-store · PROPOSAL-only · FORBID accept-GAP · FORBID-as-WebGPU-conflation | Y | Y | Y | Y (FM-Webnn3·6·9) | **PASS** |
| validation · opSupportLimits | P-N8 | M-N8 | SILENT-for-Lace-append · FORBID-as-emission-rule | Y | Y | Y | Y (PAGE H/X) | **PASS** |
| security / privacy / §5.3 | P-N9 | M-N9 | FORBID-as-Core-write · FORBID-as-WebGPU-conflation | Y | Y | Y | Y (FM-Webnn6·8) | **PASS** |

#### Overview spine nodes (+ forbidden exit)

| overview node | attach P/M | Fence OK | Stamp / off-board OK | Pin OK | PASS/FIX |
|---|---|---|---|---|---|
| navigator.ml / createContext · MLContext | P-N1 / M-N1 | Y | Y | Y | **PASS** |
| MLGraphBuilder · input / constant | P-N2 / M-N2 | Y | Y | Y | **PASS** |
| MLOperand · tensors / descriptors | P-N3 / M-N3 | Y | Y | Y | **PASS** |
| operators · op graph catalogue | P-N4 / M-N4 | Y | Y | Y | **PASS** |
| build → MLGraph · at-most-one | P-N5 / M-N5 | Y | Y | Y | **PASS** |
| dispatch · ML task source | P-N6 / M-N6 | Y | Y | Y | **PASS** |
| MLTensor · exportToGPU | P-N7 / M-N7 | Y | Y | Y | **PASS** |
| validation · opSupportLimits | P-N8 / M-N8 | Y | Y | Y | **PASS** |
| security / privacy / §5.3 | P-N9 / M-N9 | Y | Y | Y | **PASS** |
| forbidden Core / Φ / WebGPU Device·Queue / WGSL / wasm64 exit | off-board · FM-Webnn6·7·8 | Y | Y | Y | **PASS** |

**P5-X counts:** panels **9 PASS** + overview spine **10 PASS** = **19 PASS · 0 FIX**.

**Book OPENS (non-blocking · representation impact?):**

| OPEN | Affects card+panel representation? | Pass 5 stance |
|---|---|---|
| ISSUE 5/7 completion/error signaling during `dispatch()` (Spec silent / open) | No — P-N6 still depicts spine + NOTE correctly; book-continues | **still OPEN** · non-blocking |
| which host embed may call this from Lace projection | No — PROPOSAL-only / cite; does not contradict P-N6/P-N7 | **still OPEN** · non-blocking |
| Waves B–D deferred | No — out of Wave A board | **still OPEN** · default skip |
| Order Proposal was deferred | This pass delivers it | **CLOSED** by P5-P |

**Steward refuse tests (P5-X + P5-P stamps):** all 11 plan tests still refuse via panel/M-N/FM teeth — no representation enables MLGraph=strand · MLTensor=store/append · dispatch=Φ · WebNN=WORD · WebNN=WebGPU Device/Queue · WebNN=WGSL · WebNN=wasm64 · builder=Core ctor · exportToGPU=accept GAP · validation=cut · Core promote · clock/hologram/webgpu-*/wgsl-*/wasm-spec-3 rewrite.

### P5-F — Fix drift

**None.** Matrix all PASS. No ascii panel/overview/cross-walk drift; no mechanism caption edit. Did not reopen Pass 4 FIX list (was already empty). Book OPENS left as book-continues `[OPEN]`.

### P5-O — Canonical SOURCE MACHINERY

Exactly **one** `## SOURCE MACHINERY overview` fence in `webnn-ascii-machinery.md` (grep count=1). P4-O stand **confirmed**. Lace Core / Graphic D / Φ / WebGPU Device·Queue / WGSL / wasm64 ISA remain FORBIDDEN off-board. Short P5-P mirror added **under** overview (outside the fence).

### Order proposal (Shadow) — SOURCE MACHINERY as shelf hygiene (HOST-NN)

**Stamps:** **KEEP-read-as-host-NN-API** · **FORBID-as-Core-write** · **FORBID-as-Lace-WORD** · **FORBID-as-Lace-store** · **FORBID-as-Lace-strand** · **FORBID-as-emission-rule** · **FORBID-as-Core** · **FORBID fill-GAP** · **FORBID accept-GAP** · **FORBID-as-WebGPU-conflation** · **FORBID-as-WGSL-conflation** · **FORBID-as-compile-target-swap** · **SILENT-for-Lace-append** · **PROPOSAL** / **PROPOSAL-only** · **NON-binding**

1. **This is a proposal, not Core.** It does not amend AGENTS.md, `systems-manifest-ascii.md`, Graphic D, reason-model-map, law, or graphics. Hands may refuse without breach of Core. It is Shadow / Layer III **HOST-NN shelf hygiene** only — how this WebNN CRD shelf stays ordered beside Shadow projection / hologram consumers. **NON-binding** on Core / `src/` / Φ / systems-manifest-ascii / graphics / webgpu-* / wgsl-* / wasm-spec-3 (cite only). **Order Proposal FORBID-as-Core-write.**

2. **Stage → hygiene table** (Pass 4/5 SOURCE MACHINERY read as steward order):

| Pipeline stage (ASCII) | Proposal for shelf / steward order |
|---|---|
| Context / device selection (P-N1) | Observe what is actually on the shelf (files, receipts, claim) before rewriting; **FORBID** MLContext / `createContext` as Lace strand / Graphic D / Core door (**FM-Webnn2 · FM-Webnn6**) |
| Graph builder (P-N2) | Stamp-check: builder ≠ Lace Core constructor / Graphic D factory (**FM-Webnn1 · FM-Webnn9** · **D7**) |
| Tensors / operands (P-N3) | Stamp-check: MLOperand / tensor ≠ Lace store / append / second strand (**FM-Webnn3**) |
| Operators / op graph (P-N4) | Stamp-check: operators ≠ Lace WORD / Core schema; ≠ WGSL (**FM-Webnn5 · FM-Webnn7**) |
| Compilation / build (P-N5) | Stamp-check: MLGraph ≠ lace cord / strand (**FM-Webnn1 · FM-Webnn9** · **D7**) |
| Execution / `dispatch` (P-N6) | **FORBID** `dispatch` / ML task source as Φ / POINTER when · **SILENT** for Lace append (**FM-Webnn4** · **D7**) |
| MLTensor / buffers / `exportToGPU` (P-N7) | Stamp-check: tensor ≠ store · export ≠ Buffer identity · export ≠ accept GAP (**FM-Webnn3 · FM-Webnn6 · FM-Webnn9**) |
| Error / validation (P-N8) | **FORBID** validation as Lace cut · **SILENT** for Lace append |
| Security / privacy (P-N9) | Stamp-check: threat/privacy text ≠ Lace law · ≠ WebGPU identity · ≠ wasm64 (**FM-Webnn6 · FM-Webnn8**) |
| FORBIDDEN exit → Core / Graphic D / Φ / WebGPU Device·Queue / WGSL / wasm64 | Decisive judgment = commit / release / defer / stop — **not** Φ fill / emission invent / host-API conflation / compile-target swap (**FM-Webnn6 · FM-Webnn7 · FM-Webnn8**) |
| Projection / hologram (Shadow consumers) | Named as **consumers** of KEEP-read-as-host-NN-API mechanics — not Core writers; cite-only; do not amend clock/hologram in this pass |

3. **Recommended reader shelf file order** (proposal only):  
   `clipboard (admit) → mechanisms (algorithms) → ascii-machinery (diagrams) → pass plans (history)`  
   with **clock/** and **hologram/** named as **Shadow consumers** (cite beside; do not amend) · **webgpu-*** HOST/GPU · **wgsl-*** SHADER-LANG · **wasm-spec-3** wasm64 cited **beside** as mesh / different Spec·layer — not as Spec authority and not as accepted birth / accepted emission.

4. **Steward loop** when touching this shelf: observe → name → diagram-check → stamp-check → list OPENs → decide (commit / release / defer / stop).

5. **Explicit keep-outs / FORBID** (HOST-NN class only — do **not** clone WebGPU Buffer/submit or WGSL shader keep-outs wholesale):
   - MLGraph ≠ strand / Graphic D (**FM-Webnn1**)
   - MLTensor / operands ≠ store / append (**FM-Webnn3**)
   - `dispatch` / ML task source ≠ Φ / POINTER when (**FM-Webnn4**)
   - WebNN operators / op graph ≠ WORD / Core schema (**FM-Webnn5**)
   - WebNN ≠ WebGPU Device/Queue/Buffer (**FM-Webnn6**)
   - WebNN ≠ WGSL / shader-lang (**FM-Webnn7**)
   - WebNN ≠ wasm64 compile target (**FM-Webnn8**)
   - MLGraphBuilder ≠ Core constructor / Graphic D factory (**FM-Webnn9**)
   - `exportToGPU` ≠ accept `pointer-emission.md` / fill `[GAP]` (**FM-Webnn9 · FM-Webnn6**)
   - MLContext / `createContext` ≠ Graphic D / Core door (**FM-Webnn2 · FM-Webnn6**)
   - validation ≠ Lace cut (**SILENT**)
   - promote ascii Order Proposal into Core / AGENTS.md / systems-manifest-ascii / Graphic D
   - amend clock / hologram / webgpu-* / wgsl-* / wasm-spec-3 as if Order Proposal owns them
   - **SILENT for Lace append**

6. **Honesty link:** light accuracy matrix **P5-X** above is how the proposal stays honest (every M-N* ↔ P-N* ↔ overview node CONFIRM-scored against Pass 4).

7. **Emission column remains `[GAP]`** sealed — no POINTER when / arity / adjacency invented.

Mirror (short): under SOURCE MACHINERY overview in [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md).

### P5-R — Pass 5 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~22:54 PT |
| Station | clipboards · agent `WebNN Pass 5 EXECUTE` |
| Plan | [`webnn-pass-5-plan.md`](webnn-pass-5-plan.md) → **EXECUTED** |
| Claim BASE | `26c8805` (= `origin/main` at claim after rebase of plan commits onto graphics i2p6 tip) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README (Shadow consumer) → hologram/visual-primitives (Shadow consumer) → webgpu-* cite-only → wgsl-* cite-only → wasm-spec-3 wasm64 cite-only → Pass 1–4 + ascii + mechanisms → sibling Pass 5 shapes |
| PDF | **PRESENT** — `refs/local/webnn-crd-20260910.pdf` · SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`; **353** pp.; gitignored; **never staged** |
| P5-X | **19 PASS · 0 FIX** (9 panels + 10 overview spine) · CONFIRM of P4-X |
| P5-F | **none** |
| P5-O | exactly one SOURCE MACHINERY overview fence (count=1); Core/Φ/WebGPU Device·Queue/WGSL/wasm64 off-board |
| P5-P | Order Proposal full text **this section**; short mirror under ascii overview |
| Wave B | **SKIP** (default) — still deferred |
| Pass 6 | **not opened** |
| Book OPENS | dispatch completion signaling / host-embed — still OPEN · non-blocking |
| FM-Webnn1…Webnn9 | **stand** (pinned; no invent) |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| Amended | reason-model-map · law · graphics · systems-manifest · systems-manifest-ascii · webgpu-* · wgsl-* · wasm-spec-3 · five-stakes · clock · hologram · `src/` · M-N* bodies · PAGE morals | **No** |
| Touched | clipboard · ascii-machinery · pass-5-plan (EXECUTED) · clipboards.station |
| PDF staged | **No** |
| Push | **No** (ask before push) |
| `src/` | absent |

---

## Pass 6 — Rigorous analysis & ASCII systems-diagram correctness (HOST-NN · DIAGRAM SOUND)

**Status:** **EXECUTED** · 2026-09-18 ~23:01 PT · station clipboards · agent `WebNN Pass 6 EXECUTE`  
**Plan:** [`webnn-pass-6-plan.md`](webnn-pass-6-plan.md) (HELD → EXECUTED)  
**ASCII under test:** [`webnn-ascii-machinery.md`](webnn-ascii-machinery.md) — SOURCE MACHINERY + **P-N1…P-N9** + Pass 5 Order Proposal short mirror  
**Mechanisms:** [`webnn-mechanisms.md`](webnn-mechanisms.md) — **M-N1…M-N9** (cite only; unchanged)  
**Law:** WebNN = **HOST-NN Shadow only**. Distinctive product = **DIAGRAM SOUND** deep accuracy audit — **not** a new Wave B. Order Proposal still **Shadow / NON-binding** · **FORBID-as-Core-write**. Emission Φ still `[GAP]`. **KEEP-read-as-host-NN-API**. **FM-Webnn1…Webnn9** stand. No invent stamps. Cite-only webgpu-* / wgsl-* / wasm-spec-3.

**Hands + host-NN mesh skim (T1):** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README (**Shadow consumer**) → hologram + visual-primitives (**Shadow consumer**) → webgpu-* banner (**HOST/GPU** cite-only; **do not edit**) → wgsl-* banner (**SHADER-LANG** cite-only; **do not edit**) → wasm-spec-3 banner (**wasm64** cite-only) → Pass 1–5 clipboard (P5-X **19 PASS** · P5-P · P4-X all PASS · **FM-Webnn1…Webnn9**) → ascii overview + P-N1…P-N9 → mechanisms M-N1…M-N9 → this Pass 6 plan → wasm-spec-3 / agentscope Pass 6 P6-A/P/X/F/O/R shape (read-only; adapt to **HOST-NN**).

**PDF gate (T2):** `refs/local/webnn-crd-20260910.pdf` · SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` · 353 pp · `git check-ignore` OK · **never staged**. Light re-sight: `createContext` / MLContext PDF **28–29**; `dispatch` PDF **32–33** (NOTE: no completion signal); MLGraph PDF **50**; `exportToGPU` PDF **42–43**. Pins agree with M-N*/P-N* cites.

### P6-A — Systems-diagram structure checklist

| # | Item | Evidence | Verdict |
|---|---|---|---|
| 1 | Fence integrity | 11 code fences (banner + overview + 9 panels); markers balanced (22); stamps live **under** fences | **PASS** |
| 2 | Spine completeness | overview: navigator.ml/`createContext`/MLContext (P-N1) → MLGraphBuilder/`input`/`constant` (P-N2) → MLOperand/tensors (P-N3) → operators (P-N4) → `build`→MLGraph (P-N5) → `dispatch`/ML task source (P-N6) → MLTensor/`exportToGPU` (P-N7) → validation/`opSupportLimits` (P-N8) → security/privacy/§5.3 (P-N9) → **FORBIDDEN** Core/Graphic D/Φ/WebGPU Device·Queue/WGSL/wasm64 exit | **PASS** |
| 3 | Singular overview | exactly one `## SOURCE MACHINERY overview` (grep count=1); P5-O / P4-O stand | **PASS** |
| 4 | Panel ids complete | **P-N1…P-N9** each: Spec cite · Lace stamp · Implements (via M-N*) · fence · under-fence stamp line | **PASS** |
| 5 | No orphan nodes | every overview box cites ≥1 P-N*/M-N*; FORBIDDEN exit marked; no unmarked INPUT required (spine is constructive Spec path) | **PASS** |
| 6 | Wave A coverage | M-N1…N9 / P-N1…N9 all appear on overview | **PASS** |
| 7 | Off-board / no Core bleed | Lace Core / Graphic D / Φ / WebGPU Device·Queue / WGSL / wasm64 only as **FORBIDDEN exits** / edge labels — not on-board stores | **PASS** |
| 8 | Glyph discipline | **no `POINTER` word inside any diagram fence**; Phi / Graphic D / Lace Core appear only as FORBIDDEN-exit / `# NOT …` refuse labels (not inventable Lace objects) | **PASS** |
| 9 | Stamp legend consistent | ascii legend ≡ clipboard stamp-legend **family** (**KEEP-read-as-host-NN-API** · KEEP-read · FORBID-as-Core-write · FORBID-as-Lace-WORD · store · strand · emission-rule · SILENT · PROPOSAL-only · FORBID-as-WebGPU/WGSL/compile-target-swap · FORBID-as-Core · FORBID fill/accept-GAP); P5-P also carries PROPOSAL · NON-binding | **PASS** |
| 10 | Stamp under-fence placement | **10** under-fence lines (overview + P-N1…P-N9); overview FORBID-* tokens scored as **edge labels / off-board exit** (label-vs-under-fence contract) — not inventable Lace objects inside fence | **PASS** |

**P6-A count:** **10 PASS · 0 OPEN**

### P6-P — Order Proposal rigor (still Shadow / NON-binding · keep-outs re-walk)

| Check | Result | Verdict |
|---|---|---|
| Claim–diagram bind | Stage→hygiene rows (P5-P) point at real overview nodes / P-N1…P-N9 + FORBIDDEN exit + Shadow consumers | **PASS** |
| Overclaim | No Core write / AGENTS amend / Φ schedule / `src/` birth / Core import of MLGraph/MLContext/builder as strand/WORD/emission | **PASS** |
| FORBID completeness | FORBID-as-Core-write · Lace-WORD · store · strand · emission-rule · Core · fill-GAP · accept-GAP · WebGPU-conflation · WGSL-conflation · compile-target-swap · SILENT · PROPOSAL · NON-binding · Hands-refusal all explicit; consistent with panel stamps | **PASS** |
| **P5-P keep-outs re-walk** | MLGraph≠strand · MLTensor≠store/append · dispatch≠Φ · WebNN≠WORD · WebNN≠WebGPU Device/Queue · WebNN≠WGSL · WebNN≠wasm64 · builder≠Core ctor · exportToGPU≠accept GAP — each still explicit and diagram-bound on clipboard P5-P + ascii short mirror | **PASS** |
| Shadow + NON-binding · KEEP-read-as-host-NN-API | Proposal still stamped Shadow / PROPOSAL / NON-binding; **KEEP-read-as-host-NN-API** intact; FORBID-as-Core-write intact | **PASS** |
| Steward loop soundness | observe→name→diagram-check→stamp-check→OPEN→decide; decide excludes POINTER-when / Φ fill / Core install / fill-GAP / WebGPU·WGSL·wasm64 conflation | **PASS** |
| File-order proposal | clipboard→mechanisms→ascii→plans = proposal-only; projection/hologram Shadow consumers; webgpu-*/wgsl-*/wasm64 cited beside only | **PASS** |
| Mirror fidelity | Ascii short mirror does **not** strengthen claims beyond clipboard P5-P | **PASS** |
| FORBID-as-Core intact | Proposal does not install into systems-manifest-ascii / Graphic D / AGENTS.md / `src/` | **PASS** |

**P6-P count:** **9 PASS · 0 OPEN** · Order Proposal remains **Shadow / NON-binding**. No wording tighten required.

### P6-X — Deep accuracy matrix (Spec↔M-N*↔P-N*↔overview)

Re-walked; did **not** inherit P4-X / P5-X blindly. Reopen only OPENS/drift — none surfaced as representation conflict. Columns: Cite · Stamp · Implements · Fence · Overview · FM · Verdict.

| P | M | Cite | Stamp | Implements | Fence | Overview | FM | Verdict |
|---|---|---|---|---|---|---|---|---|
| P-N1 | M-N1 | §7.2 / §8.2 PDF **28–29** · §8.3 · §8.3.9 · §7.5 | KEEP-read-as-host-NN-API · FORBID-as-Lace-strand · FORBID-as-Core-write · FORBID-as-WebGPU-conflation | M-N1 alg 1–6 depictable | SecureContext→navigator.ml→createContext→MLContext→opSupportLimits; `# NOT Graphic D/Device` | Y | FM-Webnn2 · FM-Webnn6 | **PASS** |
| P-N2 | M-N2 | §7.1 PDF **21–22** · §8.9 Builder PDF **62** | KEEP-read · FORBID-as-Lace-strand · FORBID-as-Core-write · FORBID-as-Core · D7 | M-N2 alg 1–6 · D7 steps 2–3 | new MLGraphBuilder→input/constant/ops; `# NOT Core ctor` | Y | FM-Webnn1 · FM-Webnn9 | **PASS** |
| P-N3 | M-N3 | §8.5–8.6 PDF **51–53** · §7.1 · §8.3.2 | KEEP-read · FORBID-as-Lace-store | M-N3 alg 1–6 | MLOperandDescriptor→MLOperand edges→validate; `# NOT Lace store` | Y | FM-Webnn3 | **PASS** |
| P-N4 | M-N4 | §7.3 PDF **24–25** · §8.9.5+ · §11 | KEEP-read · FORBID-as-Lace-WORD · FORBID-as-Core-write · FORBID-as-WGSL-conflation | M-N4 alg 1–6 | builder.op→operator node→new MLOperand; `# NOT WORD/WGSL` | Y | FM-Webnn5 · FM-Webnn7 | **PASS** |
| P-N5 | M-N5 | §8.4 MLGraph PDF **50** · §8.9.4 `build` PDF **67–68** | KEEP-read · FORBID-as-Lace-strand · FORBID-as-Core-write · FORBID-as-Core · D7 | M-N5 alg 1–6 · D7 step 4 | build→immutable MLGraph · [[hasBuilt]]; `# NOT lace cord` | Y | FM-Webnn1 · FM-Webnn9 | **PASS** |
| P-N6 | M-N6 | §8.3.1 `dispatch` PDF **32–33** · §7.4–7.5 | KEEP-read · FORBID-as-emission-rule · SILENT-for-Lace-append · D7 | M-N6 alg 1–6 · D7 step 5 | dispatch→[[timeline]] / no completion signal; `# NOT Phi gate` | Y | FM-Webnn4 | **PASS** |
| P-N7 | M-N7 | §8.7–8.8 PDF **57–58** · `exportToGPU` PDF **42–43** | KEEP-read · FORBID-as-Lace-store · PROPOSAL-only · FORBID-as-WebGPU-conflation · FORBID accept/fill-GAP | M-N7 alg 1–6 | createTensor→read/write→exportToGPU rental; `# NOT store/Buffer id/accept GAP` | Y | FM-Webnn3 · FM-Webnn6 · FM-Webnn9 | **PASS** |
| P-N8 | M-N8 | §8.3.9 PDF **46** · §9 · §14 · PAGE H/X | KEEP-read · SILENT-for-Lace-append · FORBID-as-emission-rule | M-N8 alg 1–6 | validation / opSupportLimits; `# SILENT · NOT Lace cut` | Y | PAGE H/X SILENT | **PASS** |
| P-N9 | M-N9 | §3–5 / §5.3 PDF **15–16** / **19–20** | KEEP-read · FORBID-as-Core-write · FORBID-as-WebGPU-conflation | M-N9 alg 1–6 | SecureContext / Permissions / §5.3 comparison; `# NOT Lace law / WebGPU id / wasm64` | Y | FM-Webnn6 · FM-Webnn8 | **PASS** |

**Special gates (HOST-NN):**

| Gate | Result |
|---|---|
| P-N1 · FM-Webnn2 · FM-Webnn6 · KEEP-read-as-host-NN-API | **PASS** — Context ≠ Graphic D / Device identity |
| P-N2 · FM-Webnn1 · FM-Webnn9 · D7 | **PASS** — builder ≠ Core ctor |
| P-N3 · FM-Webnn3 | **PASS** — operand/tensor ≠ Lace store |
| P-N4 · FM-Webnn5 · FM-Webnn7 | **PASS** — operators ≠ WORD / WGSL |
| P-N5 · FM-Webnn1 · FM-Webnn9 · D7 | **PASS** — MLGraph ≠ strand |
| P-N6 · FM-Webnn4 · D7 | **PASS** — dispatch ≠ Φ; SILENT; Spec NOTE (no completion signal) held |
| P-N7 · FM-Webnn3 · FM-Webnn6 · FM-Webnn9 | **PASS** — export ≠ Buffer identity · ≠ accept GAP |
| P-N8 · SILENT | **PASS** — validation ≠ Lace cut / Φ gate |
| P-N9 · FM-Webnn6 · FM-Webnn8 | **PASS** — threat ≠ Lace law · ≠ WebGPU · ≠ wasm64 |
| Overview forbidden exit · FM-Webnn6·7·8 | **PASS** — WebGPU/WGSL/wasm64 / Core/Φ off-board |
| No POINTER-in-fence · no invent Φ | **PASS** — audited all fences |
| False-friend fence scan | **PASS** — no Graphic D / 1D strand / POINTER art / WebGPU Device·Queue board / WGSL module board as if WebNN objects |

**P6-X count:** **9 PASS · 0 FIX** (panels) + special gates all **PASS**. FM-Webnn1…9 **held**.

**Book OPENS (non-blocking · representation impact?):**

| OPEN | Affects card+panel representation? | Pass 6 stance |
|---|---|---|
| ISSUE 5/7 completion/error signaling during `dispatch()` (Spec silent / open) | No — P-N6 still depicts spine + Spec NOTE correctly | **still OPEN** · non-blocking |
| which host embed may call this from Lace projection | No — PROPOSAL-only / cite; no panel contradiction | **still OPEN** · non-blocking |
| Waves B–D deferred | No — out of Wave A board | **still OPEN** · default skip |

**Steward refuse tests 1–12 (plan):** all still refuse via P6-A + P6-P + P6-X alone (MLGraph≠strand · MLContext≠Graphic D · MLTensor≠store · dispatch≠Φ · operators≠WORD · WebNN≠WebGPU/WGSL/wasm64 · builder≠Core ctor · exportToGPU≠accept GAP · validation≠cut · proposal≠Core rewrite).

### P6-F — Fixes

**None.** P6-A / P6-P / P6-X cite **0 FIX**. No ascii/mechanisms/proposal wording edits. Book OPENS left as book-continues `[OPEN]`. Did not soften FORBIDs. Did not invent Wave B. Did not edit webgpu-* / wgsl-* / wasm-spec-3 / Core / clock / hologram.

### P6-O — Canonical SOURCE MACHINERY

Exactly **one** `## SOURCE MACHINERY overview` fence in `webnn-ascii-machinery.md` (grep count=1). P5-O / P4-O **reconfirmed**. Lace Core / Graphic D / Φ / WebGPU Device·Queue / WGSL / wasm64 ISA remain FORBIDDEN off-board. No duplicate demotion needed.

### P6-R — Pass 6 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~23:01 PT |
| Station | clipboards · agent `WebNN Pass 6 EXECUTE` |
| Plan | [`webnn-pass-6-plan.md`](webnn-pass-6-plan.md) → **EXECUTED** |
| Claim BASE | `60eb30f` (= `origin/main` at claim; plan tip under local ahead) |
| Hands skim | complete (T1) |
| PDF | **PRESENT** — SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`; **353** pp.; gitignored; light re-sight createContext/dispatch/MLGraph/exportToGPU; **never staged** |
| P6-A | **10 PASS · 0 OPEN** |
| P6-P | **9 PASS · 0 OPEN** · Order Proposal still Shadow / NON-binding · KEEP-read-as-host-NN-API · keep-outs intact |
| P6-X | **9 PASS · 0 FIX** · special gates all PASS · FM-Webnn1…9 held |
| P6-F | **none** |
| P6-O | overview count=1; Core/Φ/WebGPU/WGSL/wasm64 off-board |
| **Verdict** | **DIAGRAM SOUND WITH OPENS** |
| Opens (non-blocking) | dispatch completion signaling / host-embed; Waves B–D deferred |
| Wave B | **SKIP** (default) — distinctive product = DIAGRAM SOUND audit |
| FM-Webnn1…Webnn9 | **stand** (pinned; no invent) |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| Amended | reason-model-map · law · graphics · systems-manifest · systems-manifest-ascii · webgpu-* · wgsl-* · wasm-spec-3 · five-stakes · clock · hologram · `src/` · M-N* bodies · PAGE morals | **No** |
| Touched | clipboard · ascii-machinery (Pass 6 pointer/receipt) · pass-6-plan (EXECUTED) · clipboards.station |
| PDF staged | **No** |
| Push | **No** (ask before push) |
| `src/` | absent |

**Overall verdict: DIAGRAM SOUND WITH OPENS** — SOURCE MACHINERY + P-N1…P-N9 coherent, non-leaking, reverse-walk accurate, stamp-correct, steward-refusable under Hands as **HOST-NN Shadow**. Prior book OPENS remain non-blocking (no representation conflict). Order Proposal still Shadow / NON-binding. Emission `[GAP]`. No Wave B.

**Steward test:** Shoe in hands — refuse install-as-Core, MLGraph=strand, MLContext=Graphic D, MLTensor=store, dispatch=Φ, operators=WORD, WebNN=WebGPU/WGSL/wasm64, builder=Core ctor, exportToGPU=accept GAP, validation=cut, proposal-rewrites-clock/hologram/companions — using P6-A + P6-P + P6-X alone.

## Repository update pass 4 — dispatch issue scope

**2026-09-20; base `335429cc0352c2e93c8009c6db57dd977ec783bb`.** The reference reviewer visually inspected one-based PDF pages **22, 32 and 33** during pass 4 planning. Source: supplied `12-Web-Neural-Network-API.pdf`, W3C CRD 2026-09-10, SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`. A full-text search located Issue5; it was not a full-document reread.

| Source page | Observed scope | Current carry |
|---|---|---|
| **22**, Issue5 | Proposed mechanism for reporting errors during `dispatch()`; issue778 | Execution-error reporting remains a source open |
| **32**, §8.3.1 NOTE | Dispatch itself supplies no completion signal; callers can await results from reading output tensors | Keep direct dispatch return and later readback observation distinct |
| **33**, Issue7 | Proposed mechanism for reporting errors during graph execution; the same issue778 | This second issue label concerns error reporting, not an absent readback route |

M-N6's current OPEN label now names execution-error reporting precisely. The “completion/error signaling” shorthand in D7 and the P5/P6 OPEN tables remains historical, qualified by the source distinctions above. M-N6's existing algorithm and P-N6's later-readTensor diagram already make the correct distinction and remain unchanged. The Issues5/7 error-reporting open is not closed by this correction. No new campaign verdict, API implementation, inference result, browser/device observation, R10 admission or emission ruling follows; the completed WebNN Pass 6 receipt is preserved. The source PDF remains unchanged and outside Git.
