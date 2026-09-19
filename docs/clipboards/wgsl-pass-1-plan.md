# WGSL CRD 2026-09-15 — Pass 1 PLAN (PDF admission · SHADER-LANG reference)

**Status:** **EXECUTED** — Pass 1 products landed (2026-09-18 ~21:35 PT).  
**Station:** clipboards (execute claim: `wgsl Pass 1 EXECUTE`)  
**Base at plan:** `8840f08` (= `origin/main` after maps release / verification-iteration-2-plan refresh) · refresh `git pull --ff-only` before any execute  
**Emission:** still `[GAP]` (`docs/pointer-emission.md` = DRAFT, not human-accepted)  
**Push:** **DO NOT PUSH** this execute turn (ask before push). Pass 1 products landed.  
**Kebab strand:** stick to `wgsl-*` for all products of this shelf (`wgsl-pass-1-plan.md`, future `wgsl-clipboard.md`, …).

---

## SPECIAL BANNER — WGSL SHADER-LANG · Shadow · companion to WebGPU · ≠ wasm64 · emission [GAP]

```
+======================================================================+
|  WGSL / SHADER-LANG SPECIAL — W3C CRD 2026-09-15                     |
|  Shadow / projection / hologram shader surfaces ONLY.                 |
|  Companion to WebGPU HOST/GPU API clipboard (Passes 1–5 EXECUTED;    |
|  Pass 6 HELD).  This is the SHADER LANGUAGE Spec — not the host API. |
|  NOT Lace Core.  NOT Lace store.  NOT POINTER emission / Phi.        |
|  FORBID: WGSL as Lace WORD / Core operator / schema language.        |
|  FORBID: shader module as strand; entry point as Phi.                |
|  FORBID: WGSL types/memory model as Lace append-only strand.         |
|  FORBID: conflating WGSL with WebGPU Device/Queue or with wasm64.    |
|  KEEP-read: shader-lang mechanics for Shadow projection draw path.   |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  Emission [GAP] sealed.  No src/ until pointer-emission accepted.    |
|  One strand.                                                         |
+======================================================================+
```

This is **not** an anti-model LLM/theory clipboard (Xiao–Zhu / Petersen / AgentScope / Kauffman / Rowlands).  
This is **not** the wasm-spec-3 **compile-target ISA** shelf.  
This is **not** the WebGPU **HOST/GPU Web API** clipboard (different Spec; companion shelf).  
It is the **shader language** technical reference adjacent to Lace **projection / hologram** Shadow draw surfaces (WGSL live path cite in hologram).

---

## PDF identity (verified at plan time)

| Field | Value |
|---|---|
| Title | **WebGPU Shading Language** (WGSL) |
| Status | **W3C Candidate Recommendation Draft, 15 September 2026** |
| URL (this version) | https://www.w3.org/TR/2026/CRD-WGSL-20260915/ |
| Latest / Editor’s Draft | https://www.w3.org/TR/WGSL/ · https://gpuweb.github.io/gpuweb/wgsl/ |
| Previous CRD | https://www.w3.org/TR/2026/CRD-WGSL-20260831/ |
| Editors (masthead) | Alan Baker (Google), Mehmet Oguz Derin, David Neto (Google) |
| Former Editors | Myles C. Maxfield (Apple Inc.), dan sinclair (Google) |
| Pages | **381** (`pdfinfo`) |
| Text layer | **Present** (Skia/PDF; `pdftotext` works) |
| Attachment path | `/home/box/agent-data/agents/96c07526-1d6e-41cc-85df-8eafeb8b76ea/attachments/73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d.pdf` |
| SHA-256 (`sha256sum`) | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` |
| Planned working link (gitignored; create on execute) | `refs/local/wgsl-w3c-crd-20260915.pdf` |
| Printed ↔ PDF offset | HTML-print CRD: body page numbers not clearly offset like LaTeX specs — treat **PDF one-based** as primary pin; record any printed↔PDF relation on execute if found |
| Git | **Never `git add` the PDF** (`.gitignore` already ignores `refs/local/` and `*.pdf`) |

### Constructive spine (TOC light skim — `pdftotext` plan-time)

| Spec chapter | Role for admission |
|---|---|
| **1 Introduction** | Overview · syntax notation · math terms (context / identity) |
| **2 WGSL Module** | Shader lifecycle · **Errors** · Diagnostics · Limits (validation seed) |
| **3 Textual Structure** | Parsing · tokens · literals · keywords · identifiers · template lists |
| **4 Directives** | Extensions · global diagnostic filter |
| **5 Declaration and Scope** | Scope rules (with Types/Vars) |
| **6 Types** | Plain / buffer / memory-view / texture·sampler types (**FORBID-as-Lace-types**) |
| **7 Variable and Value Declarations** | `const` / `override` / `let` / `var` |
| **8 Expressions** | Const/override exprs · ops · address-of / indirection |
| **9 Statements** | Assignment · control flow · discard |
| **10 Assertions** | `const_assert` |
| **11 Functions** | User-defined · `const` functions · alias analysis |
| **12 Attributes** | `binding` / `builtin` / `group` / stage attrs · `workgroup_size` |
| **13 Entry Points** | Shader stages · interface · built-in I/O (**FORBID entry point as Φ**) |
| **14 Memory** | Locations · access mode · **address spaces** · layout · memory model (**≠ Lace strand**) |
| **15 Execution** | Program order · **uniformity** · workgroups · subgroups · FP eval |
| **16 Keyword and Token Summary** | Cite as needed; not Pass 1 spine sheet |
| **17 Built-in Functions** | Constructors · numeric · texture · atomic · barrier · subgroup · … |
| **18 Grammar…** / appendices / index | Cite as needed; not Pass 1 spine |

**Plan-time spot pins (not full execute):** PDF p.1 masthead CRD 15 Sep 2026 · TOC Ch.1–18 on early pages (~p.2–11) · §1 body ~p.12–15 · §2 Module/Errors ~p.16–19 · Types body ~p.55–80 · refs/pointers note ~p.90 · Expressions ~p.100–140 · Statements ~p.145–165 · Attributes/`workgroup_size` ~p.175–180 · Entry/interface ~p.190 · Memory layout ~p.200–210 · Uniformity ~p.220–240 · Built-ins from ~p.260+ · WebGPU cross-cite ~p.380. Re-pin every PAGE locus on execute.

---

## Relation to WebGPU / wasm64 / clock projection / hologram (cite-only)

| Artifact | Role vs this Pass 1 |
|---|---|
| [`docs/clipboards/webgpu-*`](webgpu-pass-1-plan.md) (Pass 1–5 **EXECUTED**; Pass 6 **HELD**) | **HOST/GPU Web API** companion shelf — different Spec. Cite read-only. **Do not edit** webgpu-* products except cite-only. WGSL is what WebGPU PAGE E called the “WGSL boundary”; this shelf admits the **language Spec** itself. |
| [`docs/clipboards/wasm-spec-3-*`](wasm-spec-3-pass-1-plan.md) (Pass 1–6 EXECUTED) | **Compile-target ISA / wasm64 seal** — different layer. Cite read-only. **Do not disturb**. WGSL ≠ wasm64. |
| [`docs/clock/wasm/README.md`](../clock/wasm/README.md) | Shadow **projection bake** note — not WGSL authority; not Core. |
| [`docs/clock/README.md`](../clock/README.md) · `lace-projection.html` | Layer III viewer: WebGPU 3D + D1 time; glyphs ≠ schema. |
| [`docs/hologram/`](../hologram/README.md) · [`visual-primitives.md`](../hologram/visual-primitives.md) | Notes live draw path uses **WGSL** in `shadow-clock-gearing.html` — KEEP-read shader path; FORBID treating WGSL as Core WORD / opening `src/`. |
| [`docs/pointer-emission.md`](../pointer-emission.md) | Still **DRAFT / `[GAP]`**. Entry points / builtins / uniformity **must not** fill when/arity/adjacency. |
| [`AGENTS.md`](../../AGENTS.md) · graphics → systems-manifest · law-why | Source of record for Lace. WGSL clipboard is **Shadow shader-lang mechanics** — do not conflate with [`systems-manifest-ascii.md`](../systems-manifest-ascii.md). |

**Stamp orientation:** KEEP-read WGSL as **shader-language mechanics** for Shadow projection / hologram draw. FORBID promoting WGSL modules, types, address spaces, entry points, or builtins into Lace WORD, strand, Core types, Φ, or wasm64 target.

---

## Schema chosen (execute)

**PDF-sighted admission clipboard only** this pass (same job class as WebGPU Pass 1 greenfield Spec shelf; **not** hybrid ASCII Wave A).

1. Models **WGSL CRD procedures**, not Lace Core.  
2. Companion future ASCII (Pass 4 shape) deferred unless human asks.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No PAGE closes it.  
5. Stamps live on PAGE sheets (legend below).  
6. Hands win; steward refuses WORD/strand/Device/Queue/wasm64 lookalikes listed below.  
7. **Do not invent Φ.** No `src/`. One strand.

**Page naming:** stick to kebab prefix `wgsl-*` for all products of this strand.

---

## Pass 1 products ON EXECUTE (do **not** create at plan time)

### a. `docs/clipboards/wgsl-clipboard.md` — PDF-sighted PAGE sheets A–H, X

Admission clipboard for the **shader language**. Not a five-stakes rewrite; not an anti-model A–X mythology clone; not a wasm compile-target twin; not a WebGPU Device/Queue twin.

**PAGE spine justification (from Spec TOC Ch.1–17):** WebGPU Pass 1 used host-API object/command spine (Adapter→Canvas). WGSL’s Spec is a **language** Spec, so the spine follows language layers: overview/syntax → types → memory/address → expressions → statements → functions/entry points → builtins → execution/uniformity/validation → keep-outs. Chapters 16/18 and deep grammar stay cite-as-needed, not dedicated sheets.

| PAGE | Focus | Spec § (TOC) | KEEP / FORBID orientation |
|---|---|---|---|
| **A** | Overview / Syntax — Introduction · Module · Textual Structure · Directives · Scope | Ch.1–5 | KEEP-read-as-shader-lang identity of CRD 2026-09-15 |
| **B** | Types | Ch.6 | KEEP-read shader types; **FORBID-as-Core-write** / Lace schema types |
| **C** | Memory / Address spaces (+ vars) | Ch.7 + Ch.14 | KEEP-read address spaces / layout / memory model; **FORBID-as-Lace-store** (WGSL memory ≠ append-only strand) |
| **D** | Expressions | Ch.8 | KEEP-read expression model; FORBID as Lace WORD algebra |
| **E** | Statements (+ Assertions) | Ch.9–10 | KEEP-read control flow / discard; **SILENT-for-Lace-append** |
| **F** | Functions / Attributes / Entry points | Ch.11–13 | KEEP-read stages/interface; **FORBID entry point as Φ**; shader module ≠ strand |
| **G** | Built-in Functions | Ch.17 | KEEP-read builtins (numeric/texture/atomic/barrier/…); FORBID as Core ops / Φ fillers |
| **H** | Execution / Uniformity / Validation | Ch.2 Errors + Ch.15 Execution | KEEP-read uniformity/workgroups/FP; validation ≠ Lace law |
| **X** | Cross-cut / false friends / steward refuse | — | SILENT-for-Lace-append; Φ `[GAP]`; WGSL ≠ WebGPU Device/Queue ≠ wasm64 ≠ WORD |

Each PAGE: PDF pin (PDF one-based; printed if discoverable), eye-quote or locus, stamp(s) from legend below. Method: `pdftotext -f N -l N -layout`.

### b. Explicitly **not** this pass

- No `wgsl-ascii-machinery.md` / Wave A panels yet (**Pass 4 shape later** unless human asks).  
- No `wgsl-mechanisms.md`.  
- No five-stakes rewrite (default **skip**).  
- Do not amend **webgpu-*** or **wasm-spec-3** products (read-only citation only).  
- Do **not** create `src/`. Do **not** invent Φ.

---

## Stamp legend (SHADER-LANG tuned)

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-shader-lang** | May sit beside Lace as WGSL / Shadow draw mechanics; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, Core operator set, or schema language |
| **FORBID-as-Lace-WORD** | Must not treat WGSL source / identifiers / types as Lace WORD |
| **FORBID-as-Lace-store** | Must not treat WGSL address spaces / buffers / memory model as Lace’s 1D append-only strand |
| **FORBID-as-Lace-strand** | Must not treat shader module / stage / workgroup as the lace cord or Graphic D |
| **FORBID-as-emission-rule** | Must not use entry points, builtins, barriers, or uniformity analysis as POINTER when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔shader / hologram draw sketches are proposals only; not accepted law |
| **FORBID-as-host-API-swap** | Must not claim WGSL replaces / is the WebGPU Device·Queue·Buffer host API shelf |
| **FORBID-as-compile-target-swap** | Must not claim WGSL replaces wasm64 / wasm-spec-3 target shelf |

(Reuse KEEP-read / FORBID-as-Core-write / SILENT-for-Lace-append phrasing from webgpu/wasm opening contracts where compatible; prefer **KEEP-read-as-shader-lang** over host-API wording on this shelf.)

---

## Non-goals (this plan **and** Pass 1 execute)

- No ascii Wave A / panels yet (Pass 4 shape later unless human asks)  
- No mechanism cards yet (later pass)  
- No `src/`, no inventing POINTER emission / Φ  
- No importing WGSL as Core WORD / POINTER ops  
- No treating WGSL memory/address spaces as Lace strand / store  
- No conflating WGSL with WebGPU Device / Queue / Buffer / Texture host objects  
- No treating WGSL as wasm64 compile-target replacement  
- No five-stakes rewrite unless an explicit conflict ticket opens (default **skip**)  
- No executing Pass 1 products in **this** plan commit  
- No `git add` of the PDF; no push  
- Do not disturb webgpu-* or wasm-spec-3 clipboard/ascii/mechanisms/pass plans except cite-only  
- Do not treat `docs/clock/wasm/README.md` bake notes or hologram lookrefs as this CRD’s authority over Core

---

## Hands skim order (execute T1)

1. Shoe / physical-cord premise (law)  
2. Graphics A–D (`docs/graphics/`)  
3. `docs/systems-manifest.md` (+ know `systems-manifest-ascii.md` is Core ASCII — separate)  
4. `docs/staking-the-workspace.md` · `docs/law-why-these-documents.md` · `AGENTS.md`  
5. `docs/pointer-emission.md` status = DRAFT / `[GAP]`  
6. `docs/clock/README.md` · `lace-projection.html` note · `docs/clock/wasm/README.md` (different layer)  
7. `docs/hologram/README.md` · `visual-primitives.md` (WGSL live path cite)  
8. **webgpu** Pass 1 banner / PAGE E WGSL boundary (**cite-only**; do not edit webgpu-*)  
9. wasm-spec-3 Pass 1 banner / relation table (**cite-only**; do not edit)  
10. This plan · then PDF via `refs/local/wgsl-w3c-crd-20260915.pdf`

---

## Coord / PDF / execute checklist

### Plan turn (this commit) — DONE when plan lands + station released

```
./docs/coord/coord.sh claim clipboards "wgsl Pass 1 plan HELD"
# write docs/clipboards/wgsl-pass-1-plan.md only
# commit plan file
./docs/coord/coord.sh release clipboards "wgsl Pass 1 plan HELD"
# commit station release
# DO NOT push · DO NOT create wgsl-clipboard.md yet · DO NOT symlink PDF yet
```

### Execute turn (future — when human says Proceed / go)

```
git pull --ff-only
./docs/coord/coord.sh claim clipboards "wgsl Pass 1 EXECUTE"
# T1 Hands skim (order above)
# T2 PDF gate:
#   mkdir -p refs/local
#   ln -sfn <attachment> refs/local/wgsl-w3c-crd-20260915.pdf
#   sha256sum refs/local/wgsl-w3c-crd-20260915.pdf  # must match 73dc9e35…c2f5eb6d
#   pdfinfo → Pages 381
#   git check-ignore -v refs/local/wgsl-w3c-crd-20260915.pdf
#   abort if any PDF is staged
# T3 Write wgsl-clipboard.md (PAGE A–H, X) with Spec § + PDF pins + SHADER-LANG stamps
# T4 Mark this plan Status → EXECUTED + execution receipt
# T5 check · commit (docs only; never PDF) · release · STOP · ask before push
# Explicit: no ascii Wave A / no mechanisms unless human asks
```

---

## Success criteria (execute must pass)

1. Plan was HELD/NOT EXECUTED until human Proceed; execute creates `wgsl-clipboard.md` only (no ascii / mechanisms yet), not earlier.  
2. PDF identity receipt: WGSL CRD **15 September 2026**, **381** pp., SHA `73dc9e35…c2f5eb6d`, symlink `refs/local/wgsl-w3c-crd-20260915.pdf`, **never staged**.  
3. Clipboard PAGEs A–H, X pin Spec § + PDF pages; stamps use SHADER-LANG legend.  
4. Emission still `[GAP]`; no `src/`; webgpu-* and wasm-spec-3 products untouched; five-stakes default skip; no ascii Wave A; no mechanisms.  
5. Relation clear: WGSL = **shader language** for Shadow draw; WebGPU = **host/GPU API** companion; wasm64 = **compile target**; hologram/clock = Shadow surfaces citing WGSL — not Core.

### Steward refuse (must reject these claims)

- “WGSL is Lace WORD / Core schema language”  
- “Shader module is the Lace strand / Graphic D”  
- “Entry point emits POINTER” / “builtin fills Φ”  
- “WGSL address space / buffer / memory model is a second Lace store”  
- “WGSL replaces WebGPU Device/Queue host API”  
- “WGSL replaces wasm64 / wasm-spec-3 compile target”  
- “Uniformity / workgroup / barrier accepts pointer-emission.md”

---

## Plan-time spot-check (not full execute)

| PDF p. | Content | Implication |
|---|---|---|
| 1 | Title · W3C CRD **15 September 2026** · URL `…/CRD-WGSL-20260915/` · Baker/Derin/Neto | Identity CONFIRM |
| 2–11 | TOC: Introduction → … → Built-in Functions → Grammar (Ch.1–18) | Spine CONFIRM for A–H |
| ~12–15 | §1 Introduction / overview / syntax notation | PAGE A seed |
| ~16–19 | §2 WGSL Module · Errors · Diagnostics | PAGE H / A seed |
| ~55–80 | §6 Types body (i32, vectors, memory views) | PAGE B seed |
| ~90 | No heap / no destroy variable note | PAGE C seed |
| ~100–140 | §8 Expressions | PAGE D seed |
| ~145–165 | §9 Statements / control flow | PAGE E seed |
| ~175–190 | Attributes · `workgroup_size` · entry/interface | PAGE F seed |
| ~200–210 | §14 Memory layout | PAGE C seed |
| ~220–240 | §15 Uniformity analysis | PAGE H seed |
| ~260+ | §17 Built-in Functions | PAGE G seed |

Full PAGE walk = **execute only**.

---

## Steward test (plan)

Shoe in hands, or no.  
WGSL is the **shader language** Shadow projection may compile into a WebGPU shader module, not the lace.  
WGSL ≠ WORD.  
Shader module ≠ strand.  
Entry point ≠ Φ.  
WGSL memory ≠ Lace append-only store.  
WGSL ≠ WebGPU Device/Queue.  
WGSL ≠ wasm64.  
Φ stays `[GAP]`.

---

## Execution receipt (Pass 1) — P1-R

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~21:35 PT |
| Station | clipboards · claim `wgsl Pass 1 EXECUTE` (BASE `22ac006` = origin/main after rebase; execute `c64a620`) |
| Products | [`wgsl-clipboard.md`](wgsl-clipboard.md) — PAGE **A–H, X** PDF-sighted; **no** ascii Wave A; PDF symlink `refs/local/wgsl-w3c-crd-20260915.pdf` (gitignored, never staged) |
| PDF | WGSL CRD **15 September 2026**, **381** pp., SHA `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` (re-verified on execute) |
| Emission | still `[GAP]` |
| Push | **NOT pushed** (per execute instructions) |
