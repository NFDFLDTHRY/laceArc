# WebGPU CRD 2026-09-15 — Pass 1 PLAN (PDF admission · HOST/GPU API reference)

**Status:** **HELD / NOT EXECUTED** — plan only (2026-09-18 ~20:42 PT).  
**Station:** clipboards (claim note: `webgpu Pass 1 PLAN only`)  
**Base at plan:** `0b97eec` (= `origin/main` after wasm-spec-3 Pass 6 push) · refresh `git pull --ff-only` before any execute  
**Emission:** still `[GAP]` (`docs/pointer-emission.md` = DRAFT, not human-accepted)  
**Push:** **DO NOT PUSH** this plan turn. **DO NOT EXECUTE** Pass 1 products in this commit.  
**Kebab strand:** stick to `webgpu-*` for all products of this shelf (`webgpu-pass-1-plan.md`, future `webgpu-clipboard.md`, …).

---

## SPECIAL BANNER — HOST/GPU API reference · Shadow · not Core · not Lace store · not emission

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

This is **not** an anti-model LLM/theory clipboard (Xiao–Zhu / Petersen / AgentScope / Kauffman / Rowlands).  
This is **not** the wasm-spec-3 **compile-target ISA** shelf.  
It is the **host/GPU Web API** technical reference adjacent to Lace **projection / hologram / host embed** surfaces.

---

## PDF identity (verified at plan time)

| Field | Value |
|---|---|
| Title | **WebGPU** |
| Status | **W3C Candidate Recommendation Draft, 15 September 2026** |
| URL (this version) | https://www.w3.org/TR/2026/CRD-webgpu-20260915/ |
| Latest / Editor’s Draft | https://www.w3.org/TR/webgpu/ · https://gpuweb.github.io/gpuweb/ |
| Editors (masthead) | Kai Ninomiya, Brandon Jones, Jim Blandy (et al.) |
| Pages | **321** (`pdfinfo`) |
| Text layer | **Present** (Skia/PDF; `pdftotext` works) |
| Attachment path | `/home/box/agent-data/agents/96c07526-1d6e-41cc-85df-8eafeb8b76ea/attachments/6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1.pdf` |
| SHA-256 (`sha256sum`) | `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1` |
| Planned working link (gitignored; create on execute) | `refs/local/webgpu-crd-20260915.pdf` |
| Printed ↔ PDF offset | HTML-print CRD: body page numbers not clearly offset like LaTeX specs — treat **PDF one-based** as primary pin; record any printed↔PDF relation on execute if found |
| Git | **Never `git add` the PDF** (`.gitignore` already ignores `refs/local/` and `*.pdf`) |

### Constructive spine (TOC light skim — `pdftotext` plan-time)

| Spec chapter | Role for admission |
|---|---|
| **1 Introduction** | Scope / GPU Web API framing (context) |
| **2 Malicious use** (Security + Privacy) | Host threat model; KEEP-read as host constraints, not Lace law |
| **3 Fundamentals** | Objects, asynchrony, timelines, memory/resource model |
| **4 Initialization** | `navigator.gpu` · Adapter · **Device** |
| **5–7 Buffers / Textures / Samplers** | GPU resources (**FORBID-as-Lace-store**) |
| **8 Resource Binding** | Bind groups / pipeline layouts |
| **9 Shader Modules** | WGSL boundary note (shader language ≠ Lace WORD) |
| **10 Pipelines** | Render / compute pipeline objects |
| **11–15 Copies · Command buffers · Encoding · Programmable passes · Debug** | Command path |
| **16–18 Compute / Render / Bundles** | Pass encoders |
| **19 Queues** | `GPUQueue` / `submit` (**FORBID-as-emission**) |
| **20 Queries** | Timing/occlusion (Shadow instrumentation only) |
| **21 Canvas Rendering** | Presentation / swap (**projection surface**) |
| **22 Errors & Debugging** | Validation / device lost |
| **23–26** Detailed ops · types · feature index · appendices | Cite as needed; not Pass 1 spine |

**Plan-time spot pins (not full execute):** PDF p.1 masthead CRD 15 Sep 2026 · TOC Ch.1–26 on early pages · p.8 already in §2.1 Security · p.50 `§4.4 GPUDevice` · p.100 bind-group creation · p.120 WGSL override example · p.230 canvas configuration · Index ~p.280+. Re-pin every PAGE locus on execute.

---

## Relation to wasm64 shelf / clock projection / hologram (cite-only)

| Artifact | Role vs this Pass 1 |
|---|---|
| [`docs/clipboards/wasm-spec-3-*`](wasm-spec-3-pass-1-plan.md) (Pass 1–6 EXECUTED) | **Compile-target ISA / wasm64 seal** — different layer. Cite read-only. **Do not disturb** wasm-spec-3 products. WebGPU does **not** replace wasm64 target. |
| [`docs/clock/wasm/README.md`](../clock/wasm/README.md) | Shadow **projection bake** note (`wasm32`/`Workers`) — not WebGPU authority; not Core. |
| [`docs/clock/README.md`](../clock/README.md) · `lace-projection.html` | Layer III viewer: **WebGPU 3D + D1 time**; glyphs ≠ schema. This CRD is the **host API** behind that Shadow surface. |
| [`docs/clock/shadow-clock-hologram.md`](../clock/shadow-clock-hologram.md) · [`docs/hologram/`](../hologram/README.md) | Hologram / lookrefs — Shadow only; not Graphics A–D. |
| [`docs/hologram/visual-primitives.md`](../hologram/visual-primitives.md) | Notes live draw path uses **WGSL** in `shadow-clock-gearing.html` — KEEP-read shader path; FORBID treating WGSL/WebGPU objects as Core. |
| [`docs/pointer-emission.md`](../pointer-emission.md) | Still **DRAFT / `[GAP]`**. `queue.submit` / draw / dispatch **must not** fill when/arity/adjacency. |
| [`AGENTS.md`](../../AGENTS.md) · graphics → systems-manifest · law-why | Source of record for Lace. WebGPU clipboard is **Shadow host/GPU mechanics** — do not conflate with [`systems-manifest-ascii.md`](../systems-manifest-ascii.md). |

**Stamp orientation:** KEEP-read WebGPU as **host/GPU API mechanics** for Shadow projection / canvas / hologram work. FORBID promoting WebGPU device/queue/buffer/texture into Lace strand, Lace store, Core types, or Φ.

---

## Schema chosen (execute)

**PDF-sighted admission clipboard only** this pass (same job class as greenfield host-API shelf; **not** hybrid ASCII Wave A).

1. Models **WebGPU CRD procedures**, not Lace Core.  
2. Companion future ASCII (Pass 4 shape) deferred unless human asks.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No PAGE closes it.  
5. Stamps live on PAGE sheets (legend below).  
6. Hands win; steward refuses store/emission/compile-target lookalikes listed below.  
7. **Do not invent Φ.** No `src/`. One strand.

**Page naming:** stick to kebab prefix `webgpu-*` for all products of this strand.

---

## Pass 1 products ON EXECUTE (do **not** create at plan time)

### a. `docs/clipboards/webgpu-clipboard.md` — PDF-sighted PAGE sheets A–H, X

Admission clipboard for the **host/GPU Web API**. Not a five-stakes rewrite; not an anti-model A–X mythology clone; not a wasm compile-target twin.

| PAGE | Focus | KEEP / FORBID orientation |
|---|---|---|
| **A** | Identity / Introduction / Fundamentals (timelines, objects) | KEEP-read-as-host-API identity of CRD 2026-09-15 |
| **B** | Security & Privacy (Ch.2 malicious use) | KEEP-read host threat model; FORBID-as-Lace-law |
| **C** | Core objects — Adapter / Device / Queue | KEEP-read device/queue mechanics; **FORBID-as-Lace-strand** / Core door |
| **D** | Resources — Buffer / Texture / Sampler / Binding | KEEP-read GPU resources; **FORBID-as-Lace-store** (GPUBuffer ≠ strand) |
| **E** | Pipelines + Shader modules / **WGSL boundary** | KEEP-read pipeline/shader path; FORBID WGSL as Lace WORD / Core |
| **F** | Commands / Encoders / Compute & Render passes | KEEP-read command encoding; **FORBID-as-emission-rule** |
| **G** | Canvas / presentation (Ch.21) | KEEP-read projection/present surface; PROPOSAL-only for Lace↔canvas sketches |
| **H** | Errors / validation / device lost | KEEP-read validation; SILENT-for-Lace-append |
| **X** | Cross-cut / false friends / steward refuse | SILENT-for-Lace-append; Φ `[GAP]`; WebGPU ≠ wasm64 |

Each PAGE: PDF pin (PDF one-based; printed if discoverable), eye-quote or locus, stamp(s) from legend below. Method: `pdftotext -f N -l N -layout`.

### b. Explicitly **not** this pass

- No `webgpu-ascii-machinery.md` / Wave A panels yet (**Pass 4 shape later** unless human asks).  
- No `webgpu-mechanisms.md`.  
- No five-stakes rewrite (default **skip**).  
- Do not amend wasm-spec-3 products (read-only citation only).

---

## Stamp legend (host/GPU API tuned)

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

(Reuse KEEP-read / FORBID-as-Core-write / SILENT-for-Lace-append phrasing from wasm/AgentScope opening contracts where compatible.)

---

## Non-goals (this plan **and** Pass 1 execute)

- No ascii Wave A / panels yet (Pass 4 shape later unless human asks)  
- No `src/`, no inventing POINTER emission / Φ  
- No promoting WebGPU buffer/texture/device as Lace store or strand  
- No treating WebGPU as wasm64 compile-target replacement  
- No five-stakes rewrite unless an explicit conflict ticket opens (default **skip**)  
- No executing Pass 1 products in **this** plan commit  
- No `git add` of the PDF; no push  
- Do not disturb wasm-spec-3 clipboard/ascii/mechanisms/pass plans except cite-only  
- Do not treat `docs/clock/wasm/README.md` bake notes or hologram lookrefs as this CRD’s authority

---

## Hands skim order (execute T1)

1. Shoe / physical-cord premise (law)  
2. Graphics A–D (`docs/graphics/`)  
3. `docs/systems-manifest.md` (+ know `systems-manifest-ascii.md` is Core ASCII — separate)  
4. `docs/staking-the-workspace.md` · `docs/law-why-these-documents.md` · `AGENTS.md`  
5. `docs/pointer-emission.md` status = DRAFT / `[GAP]`  
6. `docs/clock/README.md` · `lace-projection.html` note (WebGPU 3D viewer) · `docs/clock/wasm/README.md` (different layer)  
7. `docs/hologram/README.md` · `visual-primitives.md` (WGSL live path cite)  
8. wasm-spec-3 Pass 1 banner / relation table (**cite-only**; do not edit)  
9. This plan · then PDF via `refs/local/webgpu-crd-20260915.pdf`

---

## Coord / PDF / execute checklist

### Plan turn (this commit) — DONE when plan lands + station released

```
./docs/coord/coord.sh claim clipboards "webgpu Pass 1 PLAN only"
# write docs/clipboards/webgpu-pass-1-plan.md only
# commit plan file
./docs/coord/coord.sh release clipboards "webgpu Pass 1 PLAN only"
# commit station release
# DO NOT push · DO NOT create webgpu-clipboard.md yet
```

### Execute turn (future — when human says go)

```
git pull --ff-only
./docs/coord/coord.sh claim clipboards "webgpu Pass 1 EXECUTE"
# T1 Hands skim (order above)
# T2 PDF gate:
#   mkdir -p refs/local
#   ln -sfn <attachment> refs/local/webgpu-crd-20260915.pdf
#   sha256sum refs/local/webgpu-crd-20260915.pdf  # must match 6bc31a9e…64afe1
#   pdfinfo → Pages 321
#   git check-ignore -v refs/local/webgpu-crd-20260915.pdf
#   abort if any PDF is staged
# T3 Write webgpu-clipboard.md (PAGE A–H, X) with PDF pins + stamps
# T4 Mark this plan Status → EXECUTED + execution receipt
# T5 check · commit (docs only; never PDF) · release · STOP · ask before push
# Explicit: no ascii Wave A unless human asks
```

---

## Success criteria (execute must pass)

1. Plan was HELD/NOT EXECUTED until human go; execute creates `webgpu-clipboard.md` only (no ascii yet), not earlier.  
2. PDF identity receipt: WebGPU CRD **15 September 2026**, **321** pp., SHA `6bc31a9e…64afe1`, symlink `refs/local/webgpu-crd-20260915.pdf`, **never staged**.  
3. Clipboard PAGEs A–H, X pin PDF pages; stamps use host/GPU legend.  
4. Emission still `[GAP]`; no `src/`; wasm-spec-3 products untouched; five-stakes default skip; no ascii Wave A.  
5. Relation clear: WebGPU = **host/GPU / Shadow projection API**; wasm64 = **compile target**; hologram/clock = Shadow surfaces citing this API — not Core.

### Steward refuse (must reject these claims)

- “GPUBuffer is the Lace strand”  
- “GPUDevice / Adapter is Graphic D / Core door”  
- “`queue.submit` emits POINTER” / “draw/dispatch fills Φ”  
- “WebGPU texture/bind-group is a second Lace store”  
- “WebGPU replaces wasm64 / wasm-spec-3 compile target”  
- “Canvas configure accepts pointer-emission.md”

---

## Plan-time spot-check (not full execute)

| PDF p. | Content | Implication |
|---|---|---|
| 1 | Title · W3C CRD **15 September 2026** · URL `…/CRD-webgpu-20260915/` | Identity CONFIRM |
| 2–7 | TOC: Introduction → … → Canvas → Errors → Appendices (Ch.1–26) | Spine CONFIRM for A–H |
| 8 | §2.1.1 CPU-based undefined behavior (Security body) | PAGE B seed |
| 50 | §4.4 GPUDevice | PAGE C seed |
| 100 | §8.2.1 Bind Group Creation | PAGE D seed |
| 120 | WGSL pipeline-overridable constants example | PAGE E / WGSL boundary seed |
| 230 | Canvas configuration / `GPUCanvasConfiguration` | PAGE G seed |

Full PAGE walk = **execute only**.

---

## Steward test (plan)

Shoe in hands, or no.  
WebGPU is the **host GPU API** Shadow projection may call, not the lace.  
GPUBuffer is not Graphic D.  
`queue.submit` is not append.  
WGSL is not WORD.  
WebGPU is not the wasm64 target.  
Φ stays `[GAP]`.

---

## Execution receipt (Pass 1)

| Field | Value |
|---|---|
| Status | **NOT EXECUTED** (plan only) |
| When | — |
| Station | clipboards · plan claim `webgpu Pass 1 PLAN only` |
| Products | **none yet** — `webgpu-clipboard.md` deferred to execute |
| Emission | still `[GAP]` |
| Push | **NOT pushed** (per plan) |
