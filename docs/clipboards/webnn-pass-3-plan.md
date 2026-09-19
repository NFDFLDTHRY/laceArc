# WebNN CRD 2026-09-10 — Pass 3 PLAN (HOST-NN system mechanisms / Wave A M-N* + P3-M mesh)

**Status:** **HELD / NOT EXECUTED** — plan only; leave HELD until human says go Pass 3.  
**Station:** clipboards (plan claim: `WebNN Pass 3 PLAN HELD`; execute claim e.g. `webnn Pass 3 EXECUTE`)  
**Base at plan:** claim BASE `77ae5de` (= `origin/main` after refresh). Refresh `git pull --ff-only` before any execute.  
**Spec:** *Web Neural Network API* (WebNN) — **W3C Candidate Recommendation Draft, 10 September 2026** · editors Ningxin Hu, Dwayne Robinson (et al.)  
**Clipboard under test:** `docs/clipboards/webnn-clipboard.md` (Pass 1 EXECUTED · PAGE A–H, X)  
**Pass 2 prerequisite:** [`webnn-pass-2-plan.md`](webnn-pass-2-plan.md) is still **HELD / NOT EXECUTED**. **Pass 3 execute MUST NOT start until Pass 2 is EXECUTED** (D1–D6 + FM-Webnn1…Webnn9 present on clipboard; optional D7 if included). If Pass 2 is still HELD at execute request → **STOP** and report gate.  
**ASCII companion:** **absent** — Pass 4+ shape later (`webnn-ascii-machinery.md` · future **P-N\***); Wave A cards align to PAGE themes / **future** ascii — do **not** invent ascii at Pass 3  
**Ancestors:** [`webnn-pass-1-plan.md`](webnn-pass-1-plan.md) (EXECUTED) · [`webnn-pass-2-plan.md`](webnn-pass-2-plan.md) (HELD — gate)  
**Templates mirrored (adapt stamps; don’t clone host-GPU or shader-lang morals wholesale):** [`webgpu-pass-3-plan.md`](webgpu-pass-3-plan.md) · [`wgsl-pass-3-plan.md`](wgsl-pass-3-plan.md) · [`wasm-spec-3-pass-3-plan.md`](wasm-spec-3-pass-3-plan.md)  
**Mechanism schema samples (read-only):** [`webgpu-mechanisms.md`](webgpu-mechanisms.md) header + stamp legend + one card · [`wgsl-pass-3-plan.md`](wgsl-pass-3-plan.md) card schema  
**New artifact (execute only):** `docs/clipboards/webnn-mechanisms.md` — **do not create at plan time**  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) · [`clock/wasm/README.md`](../clock/wasm/README.md) (different layer) · [`hologram/`](../hologram/README.md) · **webgpu-*** (**HOST/GPU companion** — M-G\* / FM-Wgpu\* stay there; **do not edit**) · **wgsl-*** (**SHADER-LANG companion** — M-S\* / FM-Wgsl\* stay there; **do not edit**) · wasm-spec-3 (**wasm64 compile-target** — M-T\* / FM-W\* stay there; **do not disturb**)  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — **not** this shelf’s anti-model PAGE; do not rewrite  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `webnn-*` for all products of this shelf.  
**Card-id prefix:** **M-N\*** (N = neural / host-NN). WebGPU uses **M-G\***; WGSL uses **M-S\***; wasm-spec-3 uses **M-T\***. No prior WebNN reservation — **M-N1…M-N9** adopted. Future ascii panels **P-N1…P-N9** (Pass 4+).  
**Emission:** still `[GAP]` · **Push:** **DO NOT PUSH** this plan turn · **no `src/`** · **no mechanisms file / ASCII this plan turn**

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webnn-crd-20260910.pdf` |
| Attachment SHA-256 | `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` |
| Pages | **353** · text layer yes · printed ↔ PDF: HTML-print CRD — **PDF one-based** primary (Pass 1 certified) |
| Git | **Never `git add` the PDF** |

Law: WebNN = **HOST-NN Shadow only** · MLGraph ≠ strand · MLTensor ≠ store/append · `dispatch`/execute ≠ Φ · WebNN ≠ WORD · WebNN ≠ WebGPU Device/Queue · WebNN ≠ WGSL · WebNN ≠ wasm64 · builder ≠ Core constructor · `exportToGPU` ≠ identity merge / emission accept · Hands win · `[GAP]` sealed · **FORBID-as-Core-write** · **NON-binding**.

```
pull/ff → claim clipboards → Hands + host-NN mesh skim
        → GATE: Pass 2 EXECUTED? (D1–D6 + FM-Webnn* on clipboard)
           NO  → STOP; report prerequisite; do not invent FM rows here
           YES → continue
        → open PDF (refs/local; no git add)
        → inventory Wave A mechanisms from CRD constructive spine
           (context/device → graph builder → tensors/operands
            → operators → build/compile → dispatch/execute
            → MLTensor/buffers/export → error/validation
            → security/privacy boundary)
        → write constructive cards M-N1…M-N9 (Shadow · host-NN API only)
        → P3-M mechanism mesh on webnn clipboard
           (card ↔ PAGE A–H ↔ FM-Webnn* ↔ webgpu/wgsl/wasm cite-only
            ↔ projection/hologram ↔ emission [GAP])
        → receipt · mark plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — WebNN HOST-NN SPECIAL · Shadow · emission [GAP]

```
+======================================================================+
|  HOST-NN / WebNN SPECIAL — W3C CRD 2026-09-10                        |
|  Pass 3 = Wave A system mechanisms (M-N1…M-N9) + P3-M mesh.          |
|  Shadow / projection / hologram / host-embed surfaces ONLY.            |
|  Companion to WebGPU (HOST/GPU · M-G*) and WGSL (SHADER-LANG · M-S*).|
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA mechanisms (M-T* / FM-W* stay).  |
|  NOT WebGPU host/GPU mechanisms (M-G* / FM-Wgpu* stay there).        |
|  NOT WGSL shader-lang mechanisms (M-S* / FM-Wgsl* stay there).       |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: WebNN as Lace WORD / Core operator / schema language.       |
|  FORBID: MLGraph as strand; MLTensor as store/append; execute/       |
|          dispatch as Phi / POINTER emission.                         |
|  FORBID: conflating WebNN with WebGPU Device/Queue, WGSL, or wasm64.  |
|  FORBID: MLGraphBuilder as Core constructor; operator graph as ops.  |
|  KEEP-read: host-NN inference mechanics for Shadow projection work.  |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  No ascii Wave A this pass (Pass 4+).  Mechanisms file = execute only.|
|  Status this commit: HELD / NOT EXECUTED — plan only.                |
|  Emission [GAP] sealed.  Pass 2 EXECUTED is a hard execute gate.     |
+======================================================================+
```

This is **not** another anti-model LLM/theory mechanism pass.  
This is **not** wasm-spec-3 **compile-target ISA** Wave A (M-T\* / FM-W\* live on that shelf).  
This is **not** WebGPU **HOST/GPU API** Wave A (M-G\* / FM-Wgpu\* live on that shelf — do **not** clone GPUBuffer/submit cards wholesale).  
This is **not** WGSL **SHADER-LANG** Wave A (M-S\* / FM-Wgsl\* live on that shelf).  
It is **host-NN inference Web API hygiene**: CRD **constructive procedures** cardified along the Shadow projection/hologram spine, stamped with **existing** shelf vocabulary only (KEEP-read-as-host-NN-API / FORBID-as-Core-write / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-Lace-WORD / SILENT-for-Lace-append / PROPOSAL-only / FORBID-as-WebGPU-conflation / FORBID-as-WGSL-conflation / FORBID-as-compile-target-swap / … — **invent none**), plus a thin **P3-M** mesh locking cards to PAGE A–H / FM-Webnn\* keep-outs / companion cites / emission `[GAP]`.

---

## PREREQUISITE GATE — Pass 2 EXECUTED before Pass 3 execute

| Check | Required state at Pass 3 execute |
|---|---|
| `webnn-pass-2-plan.md` Status | **EXECUTED** (not HELD) |
| Clipboard deltas | **D1–D6** present on `webnn-clipboard.md` |
| Failure modes | **FM-Webnn1…Webnn9** table present with Hands/law deadbolt + PDF pin (or `[OPEN]` with cause) |
| Optional D7 | If Pass 2 included it, cross-link from M-N2/M-N5/M-N6 as apt — **do not rewrite** D7 |
| Pass 1 | PAGE A–H, X stand (already EXECUTED) |

**At plan time (this commit):** Pass 2 is still **HELD**. This plan may be written and committed HELD.  
**At execute time:** if Pass 2 is still HELD → **refuse execute**; report “Pass 3 blocked on Pass 2 EXECUTED (D1–D6 + FM-Webnn*)”. Do **not** invent FM-Webnn\* rows inside Pass 3 to bypass the gate. Do **not** soft-execute partial Wave A without the FM mesh targets.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-10 |
| 2 | **Leftovers** — D1–D6 + FM-Webnn1…9 (+ optional D7); coherence spine (**HELD at this plan — gate**) |
| **3** | **System mechanisms of the host-NN API** — constructive CRD algorithms along the projection/hologram spine, stamped KEEP/FORBID for Shadow hygiene, plus P3-M mesh |

Sibling shelves (WebGPU / WGSL / wasm-spec-3 / Xiao–Zhu / …) used Pass 3 for Wave A cards + mechanism mesh.  
This shelf’s ask is the **same shape**, retargeted: **M-N\*** (not M-G\* / M-S\* / M-T\*) cardify **WebNN CRD host-NN procedures**, not Device/Queue/submit, not shader modules, not wasm ISA, not LLM/diagnosis pipelines.

Still **Shadow / Layer III**. Not Core. Not `src/`. **No ascii Wave A yet** (Pass 4+). Mechanisms file created **only at execute**.

---

## What “system mechanism” means here

A **system mechanism** is a named procedure the WebNN CRD defines or runs as **host-NN API** machinery:

1. Named inputs / outputs / invariants  
2. A constructive algorithm (**spec-side** numbered steps a steward could follow on paper)  
3. A PDF locus (Pass 1–2 pin reuse or fresh `pdftotext`)  
4. A Lace stamp oriented to **host-NN hygiene** using **existing** vocabulary only (named in Pass 1 clipboard stamp legend / Pass 2 plan):

| Stamp | Source |
|---|---|
| **KEEP-read-as-host-NN-API** | Pass 1 clipboard legend (preferred; host-NN parallel of WebGPU KEEP-read-as-host-API) |
| **KEEP-read** | Pass 1 (context/device etc.) |
| **FORBID-as-Core-write** | Pass 1–2 |
| **FORBID-as-Lace-store** | Pass 1–2 |
| **FORBID-as-Lace-strand** | Pass 1–2 |
| **FORBID-as-emission-rule** | Pass 1–2 |
| **FORBID-as-Lace-WORD** | Pass 1–2 |
| **SILENT-for-Lace-append** | Pass 1–2 |
| **PROPOSAL-only** | Pass 1–2 |
| **FORBID-as-WebGPU-conflation** | Pass 1–2 |
| **FORBID-as-WGSL-conflation** | Pass 1–2 |
| **FORBID-as-compile-target-swap** | Pass 1–2 |
| **FORBID-as-Core** | Pass 2 D7 stamp seed (as apt) |
| **FORBID** / **FORBID fill-GAP** / **FORBID accept-GAP** | Pass 1 PAGE X / Pass 2 D7 (as apt; do not invent new names) |

Prefer the CRD’s own **constructive spine** already implied by PAGE B–H + Pass 2 D7 seed (context → builder → operands/tensors → operators → build → dispatch → buffers/export → validation → security) over metaphors. Align titles to **future ascii P-N\*** (Pass 4+) — do not invent panels now.

Not: Lace Φ, Graphic D writes, a second store beside the strand, WebGPU Device/Queue swap, WGSL swap, wasm64 ISA swap, or emission fill.

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-host-NN-API / FORBID-* / PROPOSAL-only / SILENT stamps stand |
| D1–D6 + FM-Webnn1…Webnn9 + D7 | **Not yet** — Pass 2 still HELD; required before Pass 3 execute |
| Five-stakes | **Out of scope** for this shelf (default skip) |
| Ascii Wave A / `webnn-ascii-machinery.md` | **Absent** — Pass 4+; do not create |
| `webnn-mechanisms.md` | **Absent** (create at execute only) |
| webgpu-* products | Untouched (cite-only; M-G\* / FM-Wgpu\* live there) |
| wgsl-* products | Untouched (cite-only; M-S\* / FM-Wgsl\* live there) |
| wasm-spec-3 products | Untouched (cite-only; M-T\* / FM-W\* live there) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| clock / hologram | Shadow surfaces may later cite host-NN — not amended |
| `src/` / Cargo | Absent; stay absent |

Pass 3 does **not** reopen Pass 1 PAGEs, invent Pass 2 leftovers, rewrite FM-Webnn\*, invent emission, invent ascii panels, or amend webgpu-*/wgsl-*/wasm-spec-3 unless a stamp conflict forces a one-line clipboard tighten.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1 (or Pass 2-when-executed) FORBID-* / PROPOSAL-only / SILENT | confirmed |
| Promote MLContext / MLGraph / device selection into lace cord / Graphic D / Core door | PAGE B/C · FM-Webnn1/2 |
| Promote MLTensor / operands / constant tensors into Lace store / append surface | PAGE D · FM-Webnn3 |
| Treat `dispatch` / graph execute / ML task source as POINTER emission / Φ | PAGE F · FM-Webnn4 |
| Treat WebNN operators / graphs as Lace WORD / Core ops | PAGE E · FM-Webnn5 |
| Treat MLGraphBuilder as Lace Core constructor / Graphic D factory | PAGE C · FM-Webnn9 |
| Claim WebNN replaces / is the WebGPU Device·Queue·Buffer host API | FM-Webnn6 |
| Claim WebNN replaces / is WGSL / shader-lang | FM-Webnn7 |
| Claim WebNN replaces wasm64 / wasm-spec-3 compile target | FM-Webnn8 |
| Treat `exportToGPU` as identity merge or as accepting `pointer-emission.md` | PROPOSAL-only / FORBID |
| Treat security/privacy/a11y text as Lace law / AGENTS rewrite | PAGE G |
| Treat broadcasting / Changes algorithms as Lace append scheduler | PAGE H |
| Create `webnn-ascii-machinery.md` / Wave A panels | **no ascii yet** (Pass 4+) |
| Create mechanisms file at **plan** time | execute-only artifact |
| Execute Pass 3 while Pass 2 still HELD | hard gate |
| Invent FM-Webnn\* rows inside Pass 3 to bypass Pass 2 | wrong pass |
| Amend webgpu-* / wgsl-* / wasm-spec-3 clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes | wrong stations / default skip |
| Invent Core maps from WebNN → five-stakes / reason-model | no invent Φ |
| Add `src/`, `Cargo.toml`, or invent emission via host-NN story | Implementation Law |
| Git-add PDF · push without ask | standing rules |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals, wasm M-T\* / FM-W\* ISA morals, WebGPU M-G\* / FM-Wgpu\* host-GPU morals, or WGSL M-S\* / FM-Wgsl\* shader morals onto this shelf | wrong false-friend class |
| Invent new stamp names beyond Pass 1–2 / companion KEEP-read-as-host-API adaptation already named | invent none |

---

## Artifact A — Mechanism cards (primary)

### File (execute only — **not created at plan time**)

`docs/clipboards/webnn-mechanisms.md`

### Card schema (mandatory — match WebGPU / WGSL / AgentScope / wasm-spec-3 house; retarget stamps)

For each **M-N\***:

| Field | Required |
|---|---|
| Kind | e.g. context-device / graph-builder / tensors-operands / operators / build-compile / dispatch-execute / mltensor-buffers / error-validation / security-privacy |
| Spec locus | § / IDL / EXAMPLE + **PDF page** (PDF one-based primary) |
| Sighting method | `pdftotext -f N -l N -layout` (or Pass 1–2 pin reuse) |
| Eye-quote | ≤2 short fragments |
| Inputs | |
| Outputs | |
| Invariants | what must hold for the CRD’s procedure |
| Algorithm | numbered constructive steps (**spec-side**, not Lace-side) |
| Complexity / termination | brief |
| Worked miniature | point to CRD example / Pass 2 **D7** (when present) where apt — do not rewrite D7 |
| Lace stamp | existing vocabulary only (table above) |
| Hands cite | Graphics / Pieces / AGENTS Implementation Law · projection ≠ store |
| Panel cite | **future P-N\*** (Pass 4+) · PAGE A–H/X |
| False friend | **FM-Webnn\*** cross-link where apt (requires Pass 2 EXECUTED) |
| Companion cite | webgpu-* / wgsl-* / wasm-spec-3 — **cite-only**; different Spec/layer |
| Projection / hologram cite | clock / hologram — **Shadow only**; glyphs ≠ schema |
| Open gaps | Φ / emission `[GAP]` notes |

### Wave A — CRD constructive spine (blocking) — aligned to PAGE themes / future ascii

These are the **system mechanisms** to card. Titles follow the Spec constructive spine justified by clipboard PAGE B–H TOC/pins; execute may refine pins. Prefer CRD algorithms over metaphors:

| ID | Mechanism | Seed locus (Pass 1 clipboard) | Stamp seed | False friend (Pass 2) |
|---|---|---|---|---|
| **M-N1** | **Context / device selection** (`createContext` · MLContext · backends / `opSupportLimits`) | PAGE B · Device Selection PDF **23**; `createContext` PDF **28–29**; MLContext IDL PDF **29–30**; `opSupportLimits` PDF **46** | KEEP-read-as-host-NN-API / KEEP-read; **FORBID-as-Lace-strand**; **FORBID-as-Core-write**; **FORBID-as-WebGPU-conflation** (`createContext(GPUDevice)` ≠ Device identity) | **FM-Webnn2** · **FM-Webnn6** |
| **M-N2** | **Graph builder** (MLGraphBuilder ctor · `input` / `constant` · graph construction) | PAGE C · Builder PDF **62**; overview PDF **21–22** | KEEP-read; **FORBID-as-Lace-strand**; **FORBID-as-Core-write** (builder ≠ Core constructor) | **FM-Webnn1** · **FM-Webnn9** |
| **M-N3** | **Tensors / operands** (MLOperand · create / describe operand graph inputs) | PAGE D · Operand PDF **51–53**; `createTensor` PDF **35** | KEEP-read; **FORBID-as-Lace-store** | **FM-Webnn3** |
| **M-N4** | **Operators / op graph** (operator catalogue · connect ops into graph) | PAGE E · §7.3 PDF **24–25**; ops from PDF **~68+**; Emulation PDF **295** | KEEP-read; **FORBID-as-Lace-WORD**; **FORBID-as-Core-write**; **FORBID-as-WGSL-conflation** | **FM-Webnn5** · **FM-Webnn7** |
| **M-N5** | **Compilation / build** (`build` → MLGraph; at-most-one-graph hygiene) | PAGE C · `build` PDF **67**; MLGraph PDF **50** | KEEP-read; **FORBID-as-Lace-strand** (MLGraph ≠ strand); **FORBID-as-Core-write** | **FM-Webnn1** · **FM-Webnn9** |
| **M-N6** | **Execution / dispatch** (`dispatch` · ML task source · permissions `"webnn"`) | PAGE F · `dispatch` PDF **32–33**; Task Source PDF **25**; Permissions PDF **25** | KEEP-read; **FORBID-as-emission-rule**; **SILENT-for-Lace-append** (no completion signal ↛ Φ gate) | **FM-Webnn4** |
| **M-N7** | **MLTensor / buffers / exportToGPU** (read·write·destroy · GPUBuffer bridge cite) | PAGE D · MLTensor PDF **57–58**; `exportToGPU` PDF **42–43** | KEEP-read; **FORBID-as-Lace-store**; **PROPOSAL-only** (export bridge); **FORBID-as-WebGPU-conflation**; **FORBID** accept-GAP | **FM-Webnn3** · **FM-Webnn6** · **FM-Webnn9** |
| **M-N8** | **Error / validation vs Lace append** (`opSupportLimits` / validation / async fail paths ≠ Lace cut) | PAGE B+H · `opSupportLimits` PDF **46**; Algorithms PDF **287**; Changes PDF **299** | KEEP-read; **SILENT-for-Lace-append**; **FORBID-as-emission-rule** (validation ≠ Φ gate / Lace cut) | mesh PAGE H/X; FM rows as apt |
| **M-N9** | **Security / privacy boundary** (§3–5 threat / privacy / a11y · §5.3 WebGPU comparison) | PAGE G · §3–5 PDF **15–20**; §5.3 PDF **20** | KEEP-read; **FORBID-as-Core-write** (≠ Lace law / AGENTS); **FORBID-as-WebGPU-conflation** (§5.3 ≠ identity merge) | **FM-Webnn6** · PAGE X |

**Context (not separate Wave A cards):** PAGE A (identity/overview) remains KEEP-read-as-host-NN-API mesh context; PAGE X steward refuse + FM-Webnn6/7/8 (≠ WebGPU / ≠ WGSL / ≠ wasm64) sit in every Open-gaps / mesh row as needed.

**Justification from clipboard TOC spine:** Pass 1 PAGE map already orders host-NN constructive flow B→C→D→E→F (+ G security, H algorithms). M-N1…M-N7 walk that API lifecycle; M-N8/M-N9 cardify the hygiene boundaries Pass 1 stamped SILENT / FORBID-as-Core-write so they are mechanism-visible in P3-M (parallel to WebGPU M-G9 error/device-lost).

Waves B–D (defer with one-line seeds only): per-operator deep cards beyond catalogue boundary, multi-context / NPU device edge cases, detailed `exportToGPU` transfer recipes beyond bridge cite, clock/hologram viewer NN embed implementation — **not** blocking for Pass 3.

Pass 3 success = **Wave A cards complete** + **P3-M mesh** + receipt. No ascii Wave A. Mechanisms file created **only at execute**. Cross-link Pass 2 **D7** (when present) from **M-N2 / M-N5 / M-N6** (and export half of **M-N7** if D7 chose (b)) — do not rewrite D7.

---

## Artifact B — Mechanism mesh on webnn clipboard (required, thin)

Edit `docs/clipboards/webnn-clipboard.md` only for:

### P3-M — Mechanism coherence mesh

Table columns:

| Mechanism (M-N*) | Future panel (P-N*) | Clipboard PAGE | FM-Webnn* | Companion (cite-only) | Projection / hologram (cite) | Emission | KEEP/FORBID tooth | Same story? |
|---|---|---|---|---|---|---|---|---|

Must show **one tooth per Wave A card**.  
Companion column cites webgpu-* (HOST/GPU · M-G\*), wgsl-* (SHADER-LANG · M-S\*), wasm-spec-3 (wasm64 · M-T\*) as **different Spec/layer** — do not amend those files.  
Projection/hologram column cites clock/hologram as **Shadow surfaces** — do not amend those files.  
Emission column must read **`[GAP]`** on every row that could smuggle when/arity/adjacency.  
CONFLICT = stop and report (do not soften).

Suggested teeth (execute confirms; FM column requires Pass 2 EXECUTED):

| M-N* | Future P-N* | PAGE | FM-Webnn* | Companion | Emission |
|---|---|---|---|---|---|
| M-N1 | P-N1 | B | FM-Webnn2 · FM-Webnn6 | ≠ WebGPU Device (cite webgpu) | `[GAP]` |
| M-N2 | P-N2 | C | FM-Webnn1 · FM-Webnn9 | cite-only | `[GAP]` |
| M-N3 | P-N3 | D | FM-Webnn3 | cite-only | `[GAP]` |
| M-N4 | P-N4 | E | FM-Webnn5 · FM-Webnn7 | ≠ WGSL (cite wgsl) | `[GAP]` |
| M-N5 | P-N5 | C | FM-Webnn1 · FM-Webnn9 | cite-only; **D7** cross-link if present | `[GAP]` |
| M-N6 | P-N6 | F | FM-Webnn4 | cite-only; **D7** cross-link if present | `[GAP]` |
| M-N7 | P-N7 | D | FM-Webnn3 · FM-Webnn6 · FM-Webnn9 | export ≠ Buffer identity (cite webgpu) | `[GAP]` (FORBID fill) |
| M-N8 | P-N8 | B+H | PAGE H/X SILENT mesh | cite-only | `[GAP]` |
| M-N9 | P-N9 | G | FM-Webnn6 · PAGE X | ≠ WebGPU identity (§5.3); ≠ wasm64 (FM-Webnn8) | `[GAP]` |

### P3-5S — Five-stakes (default skip)

Only if mesh finds unexpected five-stakes drift: one receipt line. Do **not** rewrite five-stakes KEEP/FORBID otherwise (this shelf is not an anti-model PAGE).

### P3-R — Pass 3 receipt

Status, PDF cite, Wave A file path, mesh summary, Pass 2 prerequisite satisfied, companions untouched, emission still `[GAP]`, ascii still absent (Pass 4+), Pass 1–2 stamps / FM-Webnn\* / D7 stand (or stamp-conflict note).

Optional thin stub at plan time: **none** — plan file alone. Clipboard “Pass 3 planned” line is **not** required until execute.

---

## Coherence with Pass 1–2 PAGE spine (standing rule)

| PAGE | Pass 3 use |
|---|---|
| A | KEEP-read-as-host-NN-API identity; mesh context (not a Wave A card) |
| B | **→ M-N1 · (M-N8 limits half)** · FM-Webnn2 · FM-Webnn6 |
| C | **→ M-N2 · M-N5** · FM-Webnn1 · FM-Webnn9 · D7 cross-link |
| D | **→ M-N3 · M-N7** · FM-Webnn3 · FM-Webnn6 · FM-Webnn9 |
| E | **→ M-N4** · FM-Webnn5 · FM-Webnn7 |
| F | **→ M-N6** · FM-Webnn4 · D7 cross-link |
| G | **→ M-N9** · FM-Webnn6 · FORBID-as-Core-write |
| H | **→ M-N8** · SILENT-for-Lace-append |
| X | FM-Webnn6/7/8 + steward refuse; SILENT; Φ `[GAP]`; mesh every row |

**Default:** PAGE A–H/X morals **read-only**. Open a stamp-tighten edit only if a card forces a clearer FORBID line — never a PAGE rewrite, never new PAGEs, never invent Φ, never invent ascii.

---

## Tickets

### T0 — Claim / base + Pass 2 gate

Held at plan by `WebNN Pass 3 PLAN HELD` · BASE `77ae5de`. Before execute: `git pull --ff-only` · refresh claim · **verify Pass 2 EXECUTED** (D1–D6 + FM-Webnn1…9 on clipboard). If Pass 2 still HELD → **STOP**. Agent id e.g. `webnn Pass 3 EXECUTE`.

### T1 — Hands + host-NN mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → clock/README + hologram (Shadow) → clock/wasm README (different layer) → **webgpu** Pass 3 mechanisms header / M-G\* banner (**cite-only**; do not edit) → **wgsl** Pass 3 plan / M-S\* schema (**cite-only**; do not edit) → wasm-spec-3 Pass 1–6 banner (**cite-only**; do not edit) → Pass 1 clipboard (A–H/X) → Pass 2 clipboard deltas (D1–D6 + FM-Webnn\* + D7 if any) → this plan → house mechanism schema sample (webgpu-mechanisms header + one card) → PDF.

### T2 — PDF gate

Confirm `refs/local/webnn-crd-20260910.pdf` resolves; SHA matches Pass 1–2 (`e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`); `git check-ignore`; abort if PDF staged; `pdfinfo` → Pages 353.

### T3 — Inventory + sight Wave A loci

`pdftotext` on seed pins (createContext/MLContext · Builder/`build`/MLGraph · Operand/MLTensor/`exportToGPU` · ops catalogue · `dispatch`/task source · Algorithms/Changes · §3–5 security/§5.3). Reuse Pass 1–2 pins where valid. Do not invent steps the CRD does not state.

### T4 — Write `webnn-mechanisms.md` Wave A (M-N1…M-N9)

Full schema; constructive **spec-side** algorithms; host-NN stamps (existing vocabulary only); FM-Webnn\* links; companion + projection/hologram cite-only; emission `[GAP]` notes. Cross-link Pass 2 D7 when present (do not rewrite D7).

### T5 — P3-M mesh + P3-R receipt on webnn clipboard

### T6 — Five-stakes (skip unless CONFLICT)

### T7 — Ascii (default **skip**)

**No ascii Wave A.** Receipt: “ascii deferred Pass 4+; future P-N\* titles reserved by M-N\*.”

### T8 — Mark plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "webnn Pass 3 EXECUTE"
# commit: webnn-mechanisms.md + clipboard P3-M/P3-R + this plan EXECUTED
# never stage refs/local/*.pdf
./docs/coord/coord.sh release clipboards "webnn Pass 3 EXECUTE"
```

Ask before push.

---

## Execute checklist (when steward says go — **after Pass 2 EXECUTED**)

1. `git pull --ff-only` · refresh clipboards claim.  
2. **Gate:** confirm Pass 2 EXECUTED (D1–D6 + FM-Webnn1…9). Else STOP.  
3. T1 Hands + host-NN mesh skim (no edits).  
4. T2 PDF gate (no `git add` PDF).  
5. T3 sight Wave A loci / reuse pins.  
6. T4 create `docs/clipboards/webnn-mechanisms.md` with **M-N1…M-N9** full cards.  
7. T5 P3-M mesh + P3-R on `webnn-clipboard.md`.  
8. T6/T7 skip unless CONFLICT (no ascii).  
9. Mark this plan **EXECUTED**.  
10. `coord.sh check` · commit · release.  
11. **STOP.** Do not push. Do not create ascii. Do not touch `src/` / Cargo / webgpu-* / wgsl-* / wasm-spec-3 / emission / law / graphics / clock / hologram.

---

## Acceptance tests / success criteria (execute must pass)

1. `webnn-mechanisms.md` exists with **M-N1…M-N9** fully filled (schema fields present).  
2. Each card has PDF pin + constructive **spec-side** algorithm + Lace stamp from **existing** vocabulary only.  
3. Titles match Wave A spine: Context/device · Graph builder · Tensors/operands · Operators/op graph · Compilation/build · Execution/dispatch · MLTensor/buffers/export · Error/validation · Security/privacy boundary.  
4. Hard stamps present: M-N1 **FORBID-as-Lace-strand** + **FORBID-as-WebGPU-conflation**; M-N2/M-N5 **FORBID-as-Lace-strand** / **FORBID-as-Core-write**; M-N3/M-N7 **FORBID-as-Lace-store**; M-N4 **FORBID-as-Lace-WORD**; M-N6 **FORBID-as-emission-rule**; M-N7 **PROPOSAL-only** + **FORBID** accept-GAP; M-N8 **SILENT-for-Lace-append**; M-N9 **FORBID-as-Core-write**.  
5. P3-M mesh on webnn clipboard: **9 rows**, columns include card ↔ PAGE ↔ FM-Webnn\* ↔ companion cite-only ↔ emission `[GAP]`; no CONFLICT (or CONFLICT reported and halted).  
6. No stamp invents POINTER when/arity/adjacency; Φ / emission still `[GAP]`.  
7. Pass 1–2 morals / FM-Webnn\* / D7 not rewritten; **no ascii** created; webgpu-* / wgsl-* / wasm-spec-3 / law / graphics / systems-manifest / five-stakes / clock / hologram / `src/` untouched.  
8. PDF never staged.  
9. Steward refuse tests (below) pass using only cards + P3-M.  
10. HOST-NN SPECIAL banner retained; WebNN ≠ Lace store ≠ emission ≠ WebGPU Device/Queue ≠ WGSL ≠ wasm64 remains explicit.  
11. Pass 2 was EXECUTED before this execute (gate logged in P3-R).

---

## Steward refuse tests

Shoe in hands, or no. With only M-N\* + P3-M (+ Pass 2 FM-Webnn\*), steward must refuse:

1. “MLGraph is the Lace strand / Graphic D” → **M-N2/M-N5** + **FM-Webnn1** + FORBID-as-Lace-strand.  
2. “MLContext / device selection is Graphic D / Core door” → **M-N1** + **FM-Webnn2** + FORBID-as-Lace-strand.  
3. “MLTensor is the Lace store / append surface” → **M-N3/M-N7** + **FM-Webnn3** + FORBID-as-Lace-store.  
4. “`dispatch` / graph execute emits POINTER” / “fills Φ” → **M-N6** + **FM-Webnn4** + FORBID-as-emission-rule; emission `[GAP]`.  
5. “Operator graph = Lace Core ops / WORD” → **M-N4** + **FM-Webnn5** + FORBID-as-Lace-WORD.  
6. “WebNN MLContext is WebGPU Device/Queue” → **M-N1/M-N7/M-N9** + **FM-Webnn6** + FORBID-as-WebGPU-conflation.  
7. “WebNN is WGSL / shader-lang” → **M-N4** + **FM-Webnn7** + FORBID-as-WGSL-conflation.  
8. “WebNN replaces wasm64 / wasm-spec-3 compile target” → PAGE X / mesh + **FM-Webnn8** + FORBID-as-compile-target-swap.  
9. “MLGraphBuilder is a Core constructor” / “`exportToGPU` accepts pointer-emission.md” → **M-N2/M-N5/M-N7** + **FM-Webnn9** + FORBID-as-Core-write / PROPOSAL-only / FORBID.  
10. “Calling WebNN / exporting tensors accepts pointer-emission.md” → **M-N7** + D1/D6; GAP remains.  
11. “Validation / opSupportLimits / Changes is a Lace cut / Φ gate” → **M-N8** + SILENT-for-Lace-append.  
12. “WebNN security/privacy text is Lace law / AGENTS rewrite” → **M-N9** + FORBID-as-Core-write.

These mechanisms are CRD **host-NN** procedures — Shadow reading for Lace projection / hologram / host-embed surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, and do not swap WebGPU / WGSL / wasm64.

---

## Success criteria (plan turn — this commit)

1. This file exists at `docs/clipboards/webnn-pass-3-plan.md`.  
2. Status **HELD / NOT EXECUTED**; HOST-NN SPECIAL banner present; emission `[GAP]`.  
3. **Pass 2 EXECUTED gate** stated clearly; Wave A **M-N1…M-N9** + full card schema + P3-M mesh + tickets + acceptance + steward refuse specified.  
4. **No** `webnn-mechanisms.md` created; **no** clipboard / ascii / src product deltas in this commit (plan only).  
5. Clipboards station released after plan commit.  
6. No push. No `src/`. PDF unstaged. Emission `[GAP]`. webgpu-* / wgsl-* / wasm-spec-3 untouched.

---

## Steward test (standing)

Shoe in hands, or no.  
WebNN is the **host NN inference API** Shadow projection may call, not the lace.  
MLGraph is not a strand. MLContext is not Graphic D.  
MLTensor is not the store. `dispatch` / execute do not emit POINTER.  
WebNN operators are not WORD. Builder is not a Core constructor.  
WebNN is not WebGPU Device/Queue. WebNN is not WGSL. WebNN is not the wasm64 target.  
`exportToGPU` does not accept emission. Validation is not a Lace cut.  
Security text is not Lace law.  
Φ stays `[GAP]`. No ascii until Pass 4+. No `src/` until human-accepted emission.  
Pass 3 execute waits on Pass 2 EXECUTED.

---

## Plan receipt (this turn)

| Field | Value |
|---|---|
| Status | **HELD / NOT EXECUTED** |
| When | 2026-09-18 ~22:26 PT |
| Agent | `WebNN Pass 3 PLAN HELD` |
| Base | claim BASE `77ae5de` (= origin/main after refresh) |
| Product | this plan only (HELD) |
| Pass 1 ancestor | EXECUTED · PAGE A–H, X |
| Pass 2 prerequisite | **HELD** — execute gated until Pass 2 EXECUTED (D1–D6 + FM-Webnn*) |
| Amended clipboard/ascii/mechanisms/src/maps/law/webgpu/wgsl/wasm | **No** (plan only) |
| PDF staged | No |
| PDF SHA-256 | `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` |
| Push | **No** |
| Emission | `[GAP]` |

### Execution receipt (fill on execute)

| Field | Value |
|---|---|
| Status | _pending_ |
| When | |
| Agent | `webnn Pass 3 EXECUTE` |
| Pass 2 gate | _must be EXECUTED before fill_ |
| Artifact A | `webnn-mechanisms.md` · M-N1…M-N9 |
| Artifact B | P3-M / P3-R on `webnn-clipboard.md` |
| T6 five-stakes | **skip** (default) |
| T7 ascii | **skip** (Pass 4+) |
| Amended map/law/graphics/src/webgpu/wgsl/wasm | **No** |
| PDF staged | **No** |
| Emission | `[GAP]` |
| Claim BASE | |
