# WebNN CRD 2026-09-10 — Pass 1 PLAN (PDF admission · HOST-NN inference API reference)

**Status:** **HELD** / **NOT EXECUTED** — plan only; awaiting human **Proceed**.  
**Station:** clipboards (claim note: `webnn Pass 1 PLAN only`)  
**Base at plan:** `3b7a4b3` (= `origin/main` after Graphic A ASCII pass 4 plan) · refresh `git pull --ff-only` before any execute  
**Emission:** still `[GAP]` (`docs/pointer-emission.md` = DRAFT, not human-accepted)  
**Push:** **DO NOT PUSH** this plan turn.  
**Kebab strand:** stick to `webnn-*` for all products of this shelf (`webnn-pass-1-plan.md`, future `webnn-clipboard.md`, …).

---

## SPECIAL BANNER — HOST-NN / WebNN SPECIAL · Shadow · companion to WebGPU/WGSL · ≠ wasm64 · emission [GAP]

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

This is **not** an anti-model LLM/theory clipboard (Xiao–Zhu / Petersen / AgentScope / Kauffman / Rowlands).  
This is **not** the wasm-spec-3 **compile-target ISA** shelf.  
This is **not** the WebGPU **HOST/GPU Web API** clipboard (different Spec; companion shelf).  
This is **not** the WGSL **SHADER-LANG** clipboard (different Spec; companion shelf).  
It is the **host neural-network inference Web API** technical reference (hardware-accelerated NN inference) adjacent to Lace **projection / hologram / host embed** Shadow surfaces.

---

## PDF identity (verified at plan time)

| Field | Value |
|---|---|
| Title | **Web Neural Network API** (WebNN) |
| Status | **W3C Candidate Recommendation Draft, 10 September 2026** |
| URL (this version) | https://www.w3.org/TR/2026/CRD-webnn-20260910/ |
| Latest / Editor’s Draft | https://www.w3.org/TR/webnn/ · https://webmachinelearning.github.io/webnn/ |
| Previous CRD | https://www.w3.org/TR/2026/CRD-webnn-20260904/ |
| Editors (masthead) | Ningxin Hu (Intel), Dwayne Robinson (Microsoft); Former: Chai Chaoweeraprasit (Microsoft) |
| Abstract | Dedicated low-level API for neural network inference hardware acceleration |
| Pages | **353** (`pdfinfo`) |
| Text layer | **Present** (Skia/PDF; `pdftotext` works) |
| Attachment path | `/home/box/agent-data/agents/96c07526-1d6e-41cc-85df-8eafeb8b76ea/attachments/e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc.pdf` |
| SHA-256 (`sha256sum`) | `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` |
| Planned working link (gitignored; create on execute) | `refs/local/webnn-crd-20260910.pdf` |
| Printed ↔ PDF offset | HTML-print CRD: body page numbers not clearly offset like LaTeX specs — treat **PDF one-based** as primary pin; record any printed↔PDF relation on execute if found |
| Git | **Never `git add` the PDF** (`.gitignore` already ignores `refs/local/` and `*.pdf`) |

### Constructive spine (TOC light skim — `pdftotext` plan-time)

| Spec chapter | Role for admission |
|---|---|
| **1 Introduction** | Scope / dedicated low-level NN inference API framing (identity) |
| **2 Use cases** | Application + framework use cases (context only; not PAGE spine) |
| **3 Accessibility Considerations** | A11y — fold with G security/privacy keep-read |
| **4 Security Considerations** | Host threat model; guidelines for new ops (**FORBID-as-Lace-law**) |
| **5 Privacy Considerations** | Fingerprinting · execution-time · **§5.3 WebGPU Comparison** |
| **6 Ethical Considerations** | Cite as needed; not Pass 1 spine sheet |
| **7 Programming Model** | Overview · **Device Selection** · Operators · Task Source · Permissions |
| **8 API** | `navigator.ml` · **ML** · **MLContext** · **MLGraph** · operands · **MLTensor** · **MLGraphBuilder** · ops · dispatch / tensor I/O / `exportToGPU` |
| **9 Algorithms** | Broadcasting · casting · misc (supporting; PAGE H cite) |
| **10 Examples** | Cite as needed; not Pass 1 spine sheet |
| **11 Operator Emulation** | squeeze / unsqueeze / flatten (operator catalogue adjunct) |
| **12–13** Appendices · Acknowledgements | Cite as needed |
| **14 Changes** | CRD evolution / API surface modernization (PAGE H) |

**Plan-time spot pins (not full execute):** PDF p.1 masthead CRD 10 Sep 2026 · TOC Ch.1–14 on early pages · §7 Programming Model · §8 API (MLContext / MLGraph / MLTensor / MLGraphBuilder / `dispatch`) · §4–5 Security/Privacy · §14 Changes. Re-pin every PAGE locus on execute.

---

## Relation to WebGPU / WGSL / wasm64 shelves (cite-only)

| Artifact | Role vs this Pass 1 |
|---|---|
| [`docs/clipboards/webgpu-*`](webgpu-pass-1-plan.md) (Pass 1–5 EXECUTED; Pass 6 HELD) | **HOST/GPU** companion — Device/Queue/Buffer/Texture/canvas. **Do not edit** webgpu products. WebNN ≠ WebGPU Device/Queue; `exportToGPU` is a bridge cite, not identity. |
| [`docs/clipboards/wgsl-*`](wgsl-pass-1-plan.md) (Pass 1–5 EXECUTED; Pass 6 PLAN HELD) | **SHADER-LANG** companion. **Do not edit** wgsl products. WebNN ≠ WGSL; operators ≠ shader entry points. |
| [`docs/clipboards/wasm-spec-3-*`](wasm-spec-3-pass-1-plan.md) (Pass 1–6 EXECUTED) | **Compile-target ISA / wasm64 seal** — different layer. Cite read-only. **Do not disturb**. WebNN does **not** replace wasm64 target. |
| [`docs/clock/wasm/README.md`](../clock/wasm/README.md) | Shadow **projection bake** note — not WebNN authority; not Core. |
| [`docs/clock/README.md`](../clock/README.md) · hologram / visual-primitives | Shadow surfaces may later cite host-NN; glyphs ≠ schema. This CRD is the **host NN inference API**. |
| [`docs/pointer-emission.md`](../pointer-emission.md) | Still **DRAFT / `[GAP]`**. `MLContext.dispatch` / graph execute **must not** fill when/arity/adjacency. |
| [`AGENTS.md`](../../AGENTS.md) · graphics → systems-manifest · law-why | Source of record for Lace. WebNN clipboard is **Shadow host-NN mechanics** — do not conflate with [`systems-manifest-ascii.md`](../systems-manifest-ascii.md). |

**Stamp orientation:** KEEP-read WebNN as **host-NN inference API mechanics** for Shadow projection / host-embed work. FORBID promoting MLContext / MLGraph / MLTensor / operators / dispatch into Lace strand, Lace store, Core types, WORD, or Φ.

---

## Schema chosen (execute)

**PDF-sighted admission clipboard only** this pass (same job class as greenfield host-API shelf; **not** hybrid ASCII Wave A; **not** mechanisms).

1. Models **WebNN CRD procedures**, not Lace Core.  
2. Companion future ASCII / mechanisms (Pass 3–4 shape) deferred — **explicitly later passes, not Pass 1**.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No PAGE closes it.  
5. Stamps live on PAGE sheets (legend below).  
6. Hands win; steward refuses store/emission/WORD/WebGPU/WGSL/wasm64 lookalikes listed below.  
7. **Do not invent Φ.** No `src/`. One strand.

**Page naming:** stick to kebab prefix `webnn-*` for all products of this strand.

---

## Pass 1 products ON EXECUTE (do **not** create at plan time)

### a. `docs/clipboards/webnn-clipboard.md` — PDF-sighted PAGE sheets A–H, X

Admission clipboard for the **host-NN inference Web API**. Not a five-stakes rewrite; not an anti-model A–X mythology clone; not a wasm compile-target twin; not a WebGPU/WGSL twin.

| PAGE | Focus (from Spec TOC) | KEEP / FORBID orientation |
|---|---|---|
| **A** | **Overview / Identity** — §1 Introduction + §7.1 Programming Model Overview | KEEP-read-as-host-NN-API identity of CRD 2026-09-10 |
| **B** | **Context / Devices / backends** — §7.2 Device Selection + §8.1–8.3 `navigator.ml` / ML / MLContext / `createContext` / `opSupportLimits` | KEEP-read context/device selection; **FORBID-as-Lace-strand** / Core door (MLContext ≠ Graphic D) |
| **C** | **Graph builder** — §8.4 MLGraph + §8.9 MLGraphBuilder (ctor · input/constant · `build`) | KEEP-read graph construction; **FORBID MLGraph as Lace strand** / Core graph |
| **D** | **Tensors / buffers / operands** — §8.5–8.8 MLOperand · MLTensor · create/read/write/exportable/constant · `exportToGPU` | KEEP-read tensor/buffer mechanics; **FORBID-as-Lace-store** (MLTensor ≠ store/append) |
| **E** | **Operators** — §7.3 + §8.9.5+ operator catalogue + §11 Operator Emulation | KEEP-read op catalogue; **FORBID operator graph as Lace Core ops** / WORD |
| **F** | **Execution** — §8.3.1 `dispatch()` + §7.4 Task Source + Permissions (§7.5) | KEEP-read dispatch/task path; **FORBID-as-emission-rule** (execute ≠ Φ) |
| **G** | **Security / Privacy / Accessibility** — §3–5 (incl. §5.3 WebGPU Comparison) | KEEP-read host threat/privacy model; FORBID-as-Lace-law |
| **H** | **Changes / API surface** — §14 Changes + §9 Algorithms (broadcast/cast support) | KEEP-read CRD evolution / algo surface; SILENT-for-Lace-append |
| **X** | **Cross-cut keep-outs / false friends / steward refuse** | SILENT-for-Lace-append; Φ `[GAP]`; WebNN ≠ WebGPU ≠ WGSL ≠ wasm64 ≠ Lace WORD/strand/store |

**PAGE-name justification (TOC → spine):** A from Ch.1+§7.1; B from §7.2+§8.1–8.3; C from §8.4+§8.9 builder; D from §8.5–8.8 tensors/operands; E from §7.3+§8.9 ops+§11; F from §8.3.1+§7.4; G from Ch.3–5; H from Ch.14+Ch.9; X steward refuse across all. Use-cases Ch.2 and Ethics Ch.6 are cite-as-needed, not dedicated PAGE sheets.

Each PAGE: PDF pin (PDF one-based; printed if discoverable), eye-quote or locus, stamp(s) from legend below. Method: `pdftotext -f N -l N -layout`.

### b. Explicitly **not** this pass

- No `webnn-ascii-machinery.md` / Wave A panels yet (**later pass**; mechanisms/ASCII are **not** Pass 1).  
- No `webnn-mechanisms.md`.  
- No five-stakes rewrite (default **skip**).  
- Do not amend webgpu-* / wgsl-* / wasm-spec-3-* products (read-only citation only).  
- Do **not** create the clipboard or PDF symlink in the **plan** commit — execute does that.

---

## Stamp legend (HOST-NN API tuned)

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

(Reuse KEEP-read / FORBID-as-Core-write / SILENT-for-Lace-append phrasing from webgpu/wgsl/wasm opening contracts where compatible.)

---

## Refuse lines (this plan **and** Pass 1 execute)

- No `src/`  
- No inventing POINTER emission / Φ  
- No importing WebNN as Core WORD / POINTER ops  
- No conflating WebNN with WebGPU Device/Queue, WGSL, or wasm64  
- No promoting MLGraph as strand; MLTensor as store/append; `dispatch`/execute as Φ  
- No treating operator graph as Lace Core ops  
- No five-stakes rewrite unless an explicit conflict ticket opens (default **skip**)  
- No executing Pass 1 products in **this** plan commit  
- No `git add` of the PDF; no push  
- Do not disturb webgpu-* / wgsl-* / wasm-spec-3-* clipboard/ascii/mechanisms/pass plans except cite-only  
- Mechanisms / ASCII are **later passes** — not Pass 1

---

## Non-goals (this plan **and** Pass 1 execute)

- No ascii Wave A / panels yet (later pass unless human asks)  
- No `webnn-mechanisms.md` yet (later pass)  
- No `src/`, no inventing POINTER emission / Φ  
- No promoting WebNN context/graph/tensor as Lace store or strand  
- No treating WebNN as wasm64 compile-target replacement  
- No conflating with WebGPU HOST/GPU or WGSL SHADER-LANG shelves  
- No five-stakes rewrite (default **skip**)  
- No creating `webnn-clipboard.md` or `refs/local/webnn-crd-20260910.pdf` in the plan commit  
- No push

---

## Hands skim order (execute T1)

1. Shoe / physical-cord premise (law)  
2. Graphics A–D (`docs/graphics/`)  
3. `docs/systems-manifest.md` (+ know `systems-manifest-ascii.md` is Core ASCII — separate)  
4. `docs/staking-the-workspace.md` · `docs/law-why-these-documents.md` · `AGENTS.md`  
5. `docs/pointer-emission.md` status = DRAFT / `[GAP]`  
6. `docs/clock/README.md` · hologram notes (Shadow only) · `docs/clock/wasm/README.md` (different layer)  
7. webgpu Pass 1 banner / relation table (**cite-only**; do not edit)  
8. wgsl Pass 1 banner / relation table (**cite-only**; do not edit)  
9. wasm-spec-3 Pass 1 banner / relation table (**cite-only**; do not edit)  
10. This plan · then PDF via `refs/local/webnn-crd-20260910.pdf`

---

## Coord / PDF / execute checklist

### Plan turn (this commit) — DONE when plan lands + station released

```
./docs/coord/coord.sh claim clipboards "webnn Pass 1 PLAN only"
# write docs/clipboards/webnn-pass-1-plan.md only (HELD / NOT EXECUTED)
# commit plan file
./docs/coord/coord.sh release clipboards "webnn Pass 1 PLAN only"
# commit station release
# DO NOT push · DO NOT create webnn-clipboard.md · DO NOT create symlink yet
```

### Execute turn (future — when human says Proceed / go)

```
git pull --ff-only
./docs/coord/coord.sh claim clipboards "webnn Pass 1 EXECUTE"
# T1 Hands skim (order above)
# T2 PDF gate:
#   mkdir -p refs/local
#   ln -sfn <attachment> refs/local/webnn-crd-20260910.pdf
#   sha256sum refs/local/webnn-crd-20260910.pdf
#     # must match e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc
#   pdfinfo → Pages 353
#   git check-ignore -v refs/local/webnn-crd-20260910.pdf
#   abort if any PDF is staged
# T3 Write webnn-clipboard.md (PAGE A–H, X) with Spec § + PDF page pins + stamps
# T4 Mark this plan Status → EXECUTED + execution receipt
# T5 check · commit (docs only; never PDF) · release · STOP · ask before push
# Explicit: no ascii / no mechanisms unless human asks (later passes)
```

---

## Success criteria (execute must pass)

1. Plan was HELD/NOT EXECUTED until human Proceed; execute creates `webnn-clipboard.md` only (no ascii/mechanisms yet), not earlier.  
2. PDF identity receipt: WebNN CRD **10 September 2026**, **353** pp., SHA `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`, symlink `refs/local/webnn-crd-20260910.pdf`, **never staged**.  
3. Clipboard PAGEs A–H, X pin Spec § + PDF pages; stamps use HOST-NN legend.  
4. Emission still `[GAP]`; no `src/`; webgpu/wgsl/wasm-spec-3 products untouched; five-stakes default skip; no ascii/mechanisms.  
5. Relation clear: WebNN = **HOST-NN inference / Shadow host-embed API**; WebGPU = **HOST/GPU**; WGSL = **SHADER-LANG**; wasm64 = **compile target** — not Core.

### Steward refuse (must reject these claims)

- “WebNN is a Lace WORD / Core operator set”  
- “MLGraph is the Lace strand / Graphic D”  
- “MLTensor is the Lace store / append surface”  
- “`dispatch` / graph execute emits POINTER” / “fills Φ”  
- “Operator graph = Lace Core ops”  
- “WebNN MLContext is WebGPU Device/Queue”  
- “WebNN is WGSL / shader-lang”  
- “WebNN replaces wasm64 / wasm-spec-3 compile target”  
- “`exportToGPU` merges WebNN into WebGPU identity / accepts pointer-emission.md”

---

## Plan-time spot-check (not full execute)

| PDF p. / locus | Content | Implication |
|---|---|---|
| 1 | Title · W3C CRD **10 September 2026** · URL `…/CRD-webnn-20260910/` | Identity CONFIRM |
| early TOC | Ch.1–14: Intro → Use cases → A11y/Security/Privacy/Ethics → Programming Model → API → Algorithms → Examples → Emulation → Appendices → Changes | Spine CONFIRM for A–H, X |
| §7 | Programming Model (Overview · Device Selection · Operators · Task Source) | PAGE A/B/E/F seed |
| §8.1–8.3 | `navigator.ml` · ML · MLContext · `createContext` · `dispatch` · tensor I/O · `exportToGPU` | PAGE B/F/D seed |
| §8.4 / §8.9 | MLGraph · MLGraphBuilder · `build` · ops | PAGE C/E seed |
| §8.5–8.8 | MLOperand · MLTensor | PAGE D seed |
| §4–5 | Security · Privacy (incl. WebGPU Comparison) | PAGE G seed |
| §14 | Changes | PAGE H seed |

Full PAGE walk = **execute only**.

---

## Steward test (plan)

Shoe in hands, or no.  
WebNN is the **host NN inference API** Shadow projection may call, not the lace.  
MLGraph is not Graphic D.  
MLTensor is not the store.  
`dispatch` is not append / Φ.  
WebNN operators are not WORD.  
WebNN is not WebGPU Device/Queue.  
WebNN is not WGSL.  
WebNN is not the wasm64 target.  
Φ stays `[GAP]`.  
Mechanisms/ASCII wait for later passes.

---

## Execution receipt (Pass 1) — placeholder until Proceed

| Field | Value |
|---|---|
| Status | **HELD** / **NOT EXECUTED** |
| When | — (awaiting Proceed) |
| Station | clipboards · plan claim `webnn Pass 1 PLAN only` |
| Products (on execute) | `webnn-clipboard.md` — PAGE **A–H, X** PDF-sighted; **no** ascii/mechanisms; PDF symlink `refs/local/webnn-crd-20260910.pdf` (gitignored, never staged) |
| PDF | WebNN CRD **10 September 2026**, **353** pp., SHA `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` |
| Emission | still `[GAP]` |
| Push | **NOT pushed** |
