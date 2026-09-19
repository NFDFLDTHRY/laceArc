# WGSL CRD 2026-09-15 — Pass 3 PLAN (SHADER-LANG system mechanisms / Wave A M-S* + P3-M mesh)

**Status:** **HELD / NOT EXECUTED** — plan only this turn.  
**Station:** clipboards (HELD `wgsl-pass-3-plan` · BASE `ccc68724d07095e5673ee380783bbdc4fc6c5326`)  
**Base at plan:** `ccc6872` (= `origin/main` after refresh). Refresh `git pull --ff-only` before any execute.  
**Spec:** *WebGPU Shading Language* (WGSL) — **W3C Candidate Recommendation Draft, 15 September 2026** · editors Alan Baker, Mehmet Oguz Derin, David Neto (et al.)  
**Clipboard under test:** `docs/clipboards/wgsl-clipboard.md` (Pass 1–2 EXECUTED · PAGE A–H, X · D1–D6 + FM-Wgsl1…9 + D7)  
**ASCII companion:** **absent** — Pass 4 shape later (`wgsl-ascii-machinery.md` · future **P-S\***); Wave A cards align to PAGE themes / **future** ascii — do **not** invent ascii at Pass 3  
**Ancestors:** [`wgsl-pass-1-plan.md`](wgsl-pass-1-plan.md) · [`wgsl-pass-2-plan.md`](wgsl-pass-2-plan.md)  
**Templates mirrored (adapt stamps; don’t clone host-API or ISA morals):** [`webgpu-pass-3-plan.md`](webgpu-pass-3-plan.md) · [`wasm-spec-3-pass-3-plan.md`](wasm-spec-3-pass-3-plan.md) · [`xiao-zhu-pass-3-plan.md`](xiao-zhu-pass-3-plan.md) · [`agentscope-pass-3-plan.md`](agentscope-pass-3-plan.md)  
**Mechanism schema samples (read-only):** [`webgpu-mechanisms.md`](webgpu-mechanisms.md) header + stamp legend + one card · [`wasm-spec-3-mechanisms.md`](wasm-spec-3-mechanisms.md) header  
**New artifact (execute only):** `docs/clipboards/wgsl-mechanisms.md` — **do not create at plan time**  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) (`lace-projection.html`) · [`clock/wasm/README.md`](../clock/wasm/README.md) (different layer) · [`hologram/`](../hologram/README.md) · [`hologram/visual-primitives.md`](../hologram/visual-primitives.md) (WGSL live path) · **webgpu-*** Pass 1–5 EXECUTED / Pass 6 HELD (**HOST/GPU companion** — different Spec; **do not edit**) · wasm-spec-3 Pass 1–6 (**wasm64 compile-target** — cite-only; different layer)  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — **not** this shelf’s anti-model PAGE; do not rewrite  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `wgsl-*` for all products of this shelf.  
**Card-id prefix:** **M-S\*** (S = shader-lang). WebGPU uses **M-G\***; wasm-spec-3 uses **M-T\***. No prior WGSL reservation — **M-S1…M-S9** adopted. Future ascii panels **P-S1…P-S9** (Pass 4).

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/wgsl-w3c-crd-20260915.pdf` |
| Attachment SHA-256 | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` |
| Pages | **381** · text layer yes · printed ↔ PDF: HTML-print CRD — **PDF one-based** primary (Pass 1–2 certified) |
| Git | **Never `git add` the PDF** |

Law: WGSL = **SHADER-LANG Shadow only** · shader module ≠ strand · entry point ≠ Φ · address space ≠ Lace store · WGSL ≠ WORD · discard ≠ Lace cut · barrier/uniformity ≠ Φ · WGSL ≠ WebGPU Device/Queue · WGSL ≠ wasm64 · builtins ≠ Core ops · Hands win · `[GAP]` sealed.

```
pull/ff → claim clipboards → Hands + shader-lang mesh skim
        → open PDF (refs/local; no git add)
        → inventory Wave A mechanisms from CRD constructive spine
           (module/parse → types → address spaces/vars → expressions
            → statements → functions/entry points → attributes
            → built-ins → execution/uniformity/validation)
        → write constructive cards M-S1…M-S9 (Shadow · shader-lang only)
        → P3-M mechanism mesh on wgsl clipboard
           (card ↔ PAGE ↔ FM-Wgsl* ↔ projection/hologram ↔ webgpu cite-only
            ↔ wasm64 cite-only ↔ emission [GAP])
        → receipt · mark plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — WGSL SHADER-LANG SPECIAL · Shadow · emission [GAP]

```
+======================================================================+
|  WGSL / SHADER-LANG SPECIAL — W3C CRD 2026-09-15                     |
|  Pass 3 = Wave A system mechanisms (M-S1…M-S9) + P3-M mesh.          |
|  Shadow / projection / hologram shader surfaces ONLY.                 |
|  Companion to WebGPU HOST/GPU API (M-G* stay on webgpu shelf).       |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA mechanisms (M-T* / FM-W* stay).  |
|  NOT WebGPU host/GPU mechanisms (M-G* / FM-Wgpu* stay there).        |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: WGSL as Lace WORD / Core operator / schema language.        |
|  FORBID: shader module as strand; entry point as Phi.                |
|  FORBID: address space / memory model as Lace store.                 |
|  FORBID: discard as Lace cut · barrier/uniformity as Phi gate.       |
|  FORBID: conflating WGSL with WebGPU Device/Queue or with wasm64.    |
|  KEEP-read: shader-lang mechanics for Shadow projection draw path.   |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  No ascii Wave A this pass (Pass 4).  Mechanisms file = execute only.|
|  Status this commit: HELD / NOT EXECUTED — plan only.                |
|  Emission [GAP] sealed.                                              |
+======================================================================+
```

This is **not** another anti-model LLM/theory mechanism pass.  
This is **not** wasm-spec-3 **compile-target ISA** Wave A (M-T\* / FM-W\* live on that shelf).  
This is **not** WebGPU **HOST/GPU API** Wave A (M-G\* / FM-Wgpu\* live on that shelf).  
It is **shader-language hygiene**: CRD **constructive procedures** cardified along the Shadow projection/hologram spine, stamped KEEP-read-as-shader-lang / FORBID-as-Core-write / FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / SILENT-for-Lace-append / PROPOSAL-only / FORBID-as-host-API-swap / FORBID-as-compile-target-swap (existing lace-shelf vocabulary — **do not invent new stamp names**), plus a thin **P3-M** mesh locking cards to PAGE / FM-Wgsl\* / projection·hologram cites / webgpu cite-only / wasm64 cite-only / emission `[GAP]`.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-15 |
| 2 | **Leftovers** — D1–D6 + FM-Wgsl1…9 + D7 module-lifecycle miniature; coherence spine |
| **3** | **System mechanisms of the shader language** — constructive CRD algorithms along the projection/hologram spine, stamped KEEP/FORBID for Shadow hygiene, plus P3-M mesh |

Sibling shelves (WebGPU / Xiao–Zhu / Petersen / AgentScope / wasm-spec-3) used Pass 3 for Wave A cards + mechanism mesh.  
This shelf’s ask is the **same shape**, retargeted: **M-S\*** (not M-G\* / M-T\* / M-A\*) cardify **WGSL CRD shader-lang procedures**, not host Device/Queue/submit, not wasm ISA, not LLM/diagnosis pipelines.

Still **Shadow / Layer III**. Not Core. Not `src/`. **No ascii Wave A yet** (Pass 4 → `wgsl-ascii-machinery.md`). Mechanisms file created **only at execute**.

---

## What “system mechanism” means here

A **system mechanism** is a named procedure the WGSL CRD defines or runs as **shader-language** machinery:

1. Named inputs / outputs / invariants  
2. A constructive algorithm (**spec-side** numbered steps a steward could follow on paper)  
3. A PDF locus (Pass 1–2 pin reuse or fresh `pdftotext`)  
4. A Lace stamp oriented to **shader-lang hygiene** using **existing** vocabulary only:
   - **KEEP-read-as-shader-lang**
   - **FORBID-as-Core-write**
   - **FORBID-as-Lace-WORD**
   - **FORBID-as-Lace-store**
   - **FORBID-as-Lace-strand**
   - **FORBID-as-emission-rule**
   - **SILENT-for-Lace-append**
   - **PROPOSAL-only**
   - **FORBID-as-host-API-swap**
   - **FORBID-as-compile-target-swap**
   - **FORBID-as-Core**
   - (as apt) **FORBID fill-GAP** — do not treat citing/compiling WGSL as filling emission `[GAP]`

Prefer the CRD’s own **constructive spine** already implied by PAGE A–H + D7 (module → types → memory/vars → expressions → statements → functions/entry → attributes → builtins → execution/uniformity/validation) over metaphors. Align titles to **future ascii P-S\*** (Pass 4) — do not invent panels now.

Not: Lace Φ, Graphic D writes, a second store beside the strand, WebGPU Device/Queue swap, wasm64 ISA swap, or emission fill.

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-shader-lang / FORBID-* / PROPOSAL-only / SILENT stamps stand |
| D1–D6 + FM-Wgsl1…Wgsl9 + D7 | Pass 2 stands (shader module lifecycle Shadow miniature on clipboard) |
| Five-stakes | **Out of scope** for this shelf (default skip) |
| Ascii Wave A / `wgsl-ascii-machinery.md` | **Absent** — Pass 4; do not create |
| `wgsl-mechanisms.md` | **Absent** (create at execute only) |
| webgpu-* products | Untouched (cite-only; Pass 1–5 EXECUTED · Pass 6 HELD) |
| wasm-spec-3 products | Untouched (cite-only; Pass 1–6 EXECUTED · wasm64 seal) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| clock / hologram | Shadow surfaces citing WGSL — not amended |
| `src/` / Cargo | Absent; stay absent |

Pass 3 does **not** reopen Pass 2 leftovers, rewrite FM-Wgsl\*, invent emission, invent ascii panels, or amend webgpu-*/wasm-spec-3 unless a stamp conflict forces a one-line clipboard tighten.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1–2 FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-host-API-swap / FORBID-as-compile-target-swap / PROPOSAL-only / SILENT | Pass 1–2 confirmed |
| Promote WGSL types / source / identifiers into Lace WORD or Core schema | PAGE B / X moral |
| Promote shader module / stage / workgroup into lace cord / Graphic D | PAGE F moral |
| Treat entry point / builtins / barriers / uniformity as POINTER emission / Φ | PAGE F/G/H moral |
| Treat WGSL address spaces / buffers / memory model as Lace strand / second store | PAGE C moral |
| Treat `discard` as Lace cut / append refuse / Φ gate | PAGE E moral |
| Claim WGSL replaces / is the WebGPU Device·Queue·Buffer host API | FORBID-as-host-API-swap · FM-Wgsl7 |
| Claim WGSL replaces wasm64 / wasm-spec-3 compile target | FORBID-as-compile-target-swap · FM-Wgsl8 |
| Invent **new** stamp names beyond lace-shelf / webgpu-mechanisms vocabulary | steering confirmation |
| Create `wgsl-ascii-machinery.md` / Wave A panels | **no ascii Wave A yet** (Pass 4) |
| Create mechanisms file at **plan** time | execute-only artifact |
| Amend webgpu-* clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend wasm-spec-3 clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes / clock / hologram | wrong stations / default skip |
| Add `src/`, `Cargo.toml`, or invent emission via shader-lang story | Implementation Law |
| Git-add PDF · push without ask | standing rules |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals, wasm M-T\* / FM-W\* ISA morals, or WebGPU M-G\* / FM-Wgpu\* host morals onto this shelf | wrong false-friend class |
| Treat `docs/clock/wasm/README.md` bake or hologram lookrefs as this CRD’s Core authority | Shadow ≠ Core |
| Open new PAGEs for Ch.16 / Ch.18 | cite-as-needed only |

---

## Artifact A — Mechanism cards (primary)

### File (execute only — **not created at plan time**)

`docs/clipboards/wgsl-mechanisms.md`

### Card schema (mandatory — match webgpu-mechanisms / AgentScope / Xiao–Zhu / wasm-spec-3 house; retarget stamps to shader-lang)

For each **M-S\***:

| Field | Required |
|---|---|
| Kind | e.g. module-parse / types / address-spaces-vars / expressions / statements / functions-entry / attributes / builtins / execution-uniformity-validation |
| Spec locus | § / EXAMPLE + **PDF page** (PDF one-based primary) |
| Sighting method | `pdftotext -f N -l N -layout` (or Pass 1–2 pin reuse) |
| Eye-quote | ≤2 short fragments |
| Inputs | |
| Outputs | |
| Invariants | what must hold for the CRD’s procedure |
| Algorithm | numbered constructive steps (**spec-side**, not Lace-side) |
| Complexity / termination | brief |
| Worked miniature | point to CRD example / Pass 2 **D7** where apt (do not rewrite D7) |
| Lace stamp | **KEEP-read-as-shader-lang** / **FORBID-as-Core-write** / **FORBID-as-Lace-WORD** / **FORBID-as-Lace-store** / **FORBID-as-Lace-strand** / **FORBID-as-emission-rule** / **SILENT-for-Lace-append** / **PROPOSAL-only** / **FORBID-as-host-API-swap** / **FORBID-as-compile-target-swap** / **FORBID-as-Core** (as apt; existing vocabulary only) |
| Hands cite | Graphics / Pieces / AGENTS Implementation Law · projection ≠ store |
| Panel cite | **future P-S\*** (Pass 4) · PAGE A–H/X |
| False friend | **FM-Wgsl\*** cross-link where apt |
| Projection / hologram cite | clock `lace-projection.html` / hologram `visual-primitives.md` WGSL path — **Shadow only**; glyphs ≠ schema |
| webgpu cite | webgpu-* cite-only — **HOST/GPU companion**; different Spec; not this CRD |
| wasm64 cite | wasm-spec-3 cite-only — **different layer**; not this CRD |
| Open gaps | Φ / emission `[GAP]` notes |

### Wave A — CRD constructive spine (blocking) — aligned to PAGE themes / future ascii

These are the **system mechanisms** to card. Titles match the shader-lang constructive spine suggested for future ascii `P-S1…P-S9`; execute may refine pins. Prefer CRD algorithms over metaphors. Justified from clipboard PAGE A–H pins + Spec TOC spine:

| ID | Mechanism | Seed locus (Pass 1–2 / TOC) | Stamp seed | False friend |
|---|---|---|---|---|
| **M-S1** | **Module / parse / textual structure** (compose module · textual structure · directives · scope · lifecycle cite) | PAGE A · Masthead PDF **1**; TOC **2–10**; §1 PDF **11–14**; §2 Module PDF **15–16**; §2.2 Errors PDF **17**; §3 PDF **23**; §4 PDF **40**; §5 PDF **45** · **Pass 2 D7** | KEEP-read-as-shader-lang; **FORBID-as-Lace-WORD** (module text ↛ WORD); **FORBID-as-Lace-strand** (module ↛ lace cord); **FORBID-as-host-API-swap** (lifecycle host hooks cite-only) | **FM-Wgsl1** · **FM-Wgsl4** · **FM-Wgsl7** |
| **M-S2** | **Types** (plain / integer / vector / memory-view / texture·sampler) | PAGE B · §6 PDF **49**; plain §6.2 PDF **56**; i32 §6.2.3 PDF **59**; vectors §6.2.6 PDF **61**; memory views §6.5 PDF **72**; textures §6.6 PDF **90** | KEEP-read-as-shader-lang; **FORBID-as-Core-write**; **FORBID-as-Lace-WORD** (types ↛ Lace schema / WORD) | **FM-Wgsl4** |
| **M-S3** | **Address spaces / variables** (`var`/`let`/`const`/`override` · address spaces · layout · no-heap) | PAGE C · §7 PDF **101**; `var` §7.3 PDF **106**; no-heap PDF **90**; §14 Memory PDF **200**; address spaces §14.3 PDF **201–202**; layout §14.4 PDF **202** | KEEP-read-as-shader-lang; **FORBID-as-Lace-store** (memory ≠ strand / second store) | **FM-Wgsl3** |
| **M-S4** | **Expressions** (early evaluation · ops · address-of / indirection) | PAGE D · §8 PDF **110+** (Early Evaluation §8.1 PDF **110**) | KEEP-read-as-shader-lang; **FORBID-as-Lace-WORD** (expression algebra ↛ WORD / Core ops) | **FM-Wgsl4** (adjacent) |
| **M-S5** | **Statements** (control flow · `discard` · `const_assert`) | PAGE E · §9 PDF **140**; control flow §9.4 PDF **149**; discard ~PDF **159**; §10 Assertions PDF **166** | KEEP-read-as-shader-lang; **SILENT-for-Lace-append**; **FORBID-as-emission-rule** (`discard` ↛ Lace cut / Φ) | **FM-Wgsl5** |
| **M-S6** | **Functions / entry points** (user-defined · stages · interface · entry ≠ Φ) | PAGE F · §11 PDF **166–167**; §13 Entry PDF **181**; interface §13.3 PDF **182** | KEEP-read-as-shader-lang; **FORBID-as-emission-rule** (entry ≠ Φ); **FORBID-as-Lace-strand** (stage/workgroup ↛ lace cord) | **FM-Wgsl1** · **FM-Wgsl2** |
| **M-S7** | **Attributes** (`@` attributes · `workgroup_size` · stage attrs) | PAGE F · §12 PDF **173**; `workgroup_size` §12.15 / Attribute PDF **179–180** | KEEP-read-as-shader-lang; **FORBID-as-Lace-strand** (`workgroup_size` ↛ Graphic D); **FORBID-as-Core-write** | **FM-Wgsl1** |
| **M-S8** | **Built-in functions** (constructors · numeric · texture · atomic · sync/barrier · subgroup) | PAGE G · §17 PDF **264**; numeric §17.5 PDF **284**; texture §17.7 PDF **313**; atomic §17.8 PDF **338**; sync §17.11 PDF **347–348**; subgroup §17.12 PDF **348** | KEEP-read-as-shader-lang; **FORBID-as-Core-write**; **FORBID-as-emission-rule** (builtins/barriers ↛ Core ops / Φ fillers) | **FM-Wgsl9** · **FM-Wgsl6** |
| **M-S9** | **Execution / uniformity / validation** (errors · uniformity analysis · workgroups · vs Lace append) | PAGE H · §2.2 Errors PDF **17**; §15 Execution / Uniformity PDF **213+**; workgroups §15.3 PDF **241** | KEEP-read-as-shader-lang; **SILENT-for-Lace-append**; **FORBID-as-emission-rule** (uniformity/validation ≠ Lace law / Φ gate) | **FM-Wgsl6** |

**Context (not separate Wave A cards):** PAGE X steward refuse + **FM-Wgsl7** (≠ WebGPU host API) + **FM-Wgsl8** (≠ wasm64) sit in every Open-gaps / mesh row as needed. Ch.16 Keyword·Token Summary · Ch.18 Grammar remain **cite-as-needed** — not Wave A cards, not Core grammar.

**Prefix note:** **M-S\*** = shader-lang (this shelf). **M-G\*** = WebGPU host/GPU (cite-only). **M-T\*** = wasm-spec-3 compile-target ISA (cite-only). Do not reuse M-G/M-T ids on this shelf.

Waves B–D (defer with one-line seeds only): detailed diagnostic-filter recipes, full Valid Usage edge cases, subgroup ballot minutiae beyond spine, FP mode edge cases, Ch.16/18 grammar expansion, clock/hologram viewer implementation — **not** blocking for Pass 3.

Pass 3 success = **Wave A cards complete** + **P3-M mesh** + receipt. No ascii Wave A. Mechanisms file created **only at execute**. Cross-link Pass 2 **D7** from **M-S1** (module lifecycle) — do not rewrite D7.

---

## Artifact B — Mechanism mesh on wgsl clipboard (required, thin)

Edit `docs/clipboards/wgsl-clipboard.md` only for:

### P3-M — Mechanism coherence mesh

Table columns:

| Mechanism (M-S*) | Future panel (P-S*) | Clipboard PAGE | FM-Wgsl* | Projection / hologram (cite) | webgpu (cite-only) | wasm64 (cite-only) | Emission | KEEP/FORBID tooth | Same story? |
|---|---|---|---|---|---|---|---|---|---|

Must show **one tooth per Wave A card**.  
Projection/hologram column cites `clock/README.md` (`lace-projection.html`) and/or `hologram/visual-primitives.md` (WGSL live path) as **Shadow surfaces** — do not amend those files.  
webgpu column cites webgpu-* as **HOST/GPU companion** (FM-Wgsl7) — do not amend webgpu-* products.  
wasm64 column cites wasm-spec-3 as **different layer** (FM-Wgsl8) — do not amend wasm-spec-3 products.  
Emission column must read **`[GAP]`** on every row that could smuggle when/arity/adjacency.  
CONFLICT = stop and report (do not soften).

Suggested teeth (execute confirms):

| M-S* | Future P-S* | PAGE | FM-Wgsl* | Projection / hologram | webgpu | wasm64 | Emission |
|---|---|---|---|---|---|---|---|
| M-S1 | P-S1 | A | FM-Wgsl1 · FM-Wgsl4 · FM-Wgsl7 | Shadow module identity; **D7** cross-link | ≠ Device/Queue | ≠ compile target | `[GAP]` |
| M-S2 | P-S2 | B | FM-Wgsl4 | types ≠ schema; hologram may *draw* | cite-only | cite-only | `[GAP]` |
| M-S3 | P-S3 | C | FM-Wgsl3 | address space ≠ strand/store | ≠ GPUBuffer swap | ≠ linear mem strand | `[GAP]` |
| M-S4 | P-S4 | D | FM-Wgsl4 | expr algebra ≠ WORD | cite-only | cite-only | `[GAP]` |
| M-S5 | P-S5 | E | FM-Wgsl5 | discard ≠ Lace cut; SILENT | cite-only | cite-only | `[GAP]` |
| M-S6 | P-S6 | F | FM-Wgsl1 · FM-Wgsl2 | entry ≠ Φ; stage ≠ lace cord | ≠ pipeline host API | cite-only | `[GAP]` |
| M-S7 | P-S7 | F | FM-Wgsl1 | workgroup_size ≠ Graphic D | cite-only | cite-only | `[GAP]` |
| M-S8 | P-S8 | G | FM-Wgsl9 · FM-Wgsl6 | builtins/barriers ≠ Core/Φ | cite-only | cite-only | `[GAP]` |
| M-S9 | P-S9 | H | FM-Wgsl6 | uniformity/validation ≠ Lace law | cite-only | cite-only | `[GAP]` |

### P3-5S — Five-stakes (default skip)

Only if mesh finds unexpected five-stakes drift: one receipt line. Do **not** rewrite five-stakes KEEP/FORBID otherwise (this shelf is not an anti-model PAGE).

### P3-R — Pass 3 receipt

Status, PDF cite, Wave A file path, mesh summary, webgpu/wasm-spec-3/projection/hologram untouched, emission still `[GAP]`, ascii still absent (Pass 4), Pass 1–2 stamps / FM-Wgsl\* / D7 stand (or stamp-conflict note).

Optional thin stub at plan time: **none** — plan file alone. Clipboard “Pass 3 planned” line is **not** required until execute.

---

## Coherence with Pass 1–2 PAGE spine (standing rule)

| PAGE | Pass 3 use |
|---|---|
| A | **→ M-S1** · FM-Wgsl1 · FM-Wgsl4 · FM-Wgsl7 · **D7** cross-link |
| B | **→ M-S2** · FM-Wgsl4 |
| C | **→ M-S3** · FM-Wgsl3 |
| D | **→ M-S4** · FM-Wgsl4 (adjacent) |
| E | **→ M-S5** · FM-Wgsl5 |
| F | **→ M-S6 · M-S7** · FM-Wgsl1 · FM-Wgsl2 |
| G | **→ M-S8** · FM-Wgsl9 · FM-Wgsl6 |
| H | **→ M-S9** · FM-Wgsl6 |
| X | FM-Wgsl7 · FM-Wgsl8 + steward refuse; SILENT; Φ `[GAP]`; mesh every row |

**Default:** PAGE A–H/X morals **read-only**. Open a stamp-tighten edit only if a card forces a clearer FORBID line — never a PAGE rewrite, never new PAGEs, never invent Φ, never invent ascii.

---

## Tickets

### T0 — Claim / base

Held at plan by `wgsl-pass-3-plan` · BASE `ccc68724d07095e5673ee380783bbdc4fc6c5326`. Before execute: `git pull --ff-only` · refresh claim if clock turned · agent id e.g. `wgsl Pass 3 EXECUTE`.

### T1 — Hands + shader-lang mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → clock/README + lace-projection → clock/wasm README (different layer) → hologram/README + visual-primitives (WGSL live path cite) → webgpu Pass 1–5 banner / PAGE E WGSL boundary (**cite-only**; do not edit) → wasm-spec-3 Pass 1–6 banner (**cite-only**; do not edit) → Pass 1–2 clipboard (A–H/X + D1–D6 + FM-Wgsl\* + D7) → this plan → house mechanism schema sample (webgpu-mechanisms header + stamp legend + one card) → PDF.

### T2 — PDF gate

Confirm `refs/local/wgsl-w3c-crd-20260915.pdf` resolves; SHA matches Pass 1–2 (`73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d`); `git check-ignore`; abort if PDF staged; `pdfinfo` → Pages 381.

### T3 — Inventory + sight Wave A loci

`pdftotext` on seed pins (Module/Lifecycle · Types · Address spaces/`var` · Expressions · Statements/`discard` · Functions/Entry · Attributes/`workgroup_size` · Built-ins/barriers · Execution/Uniformity/Errors). Reuse Pass 1–2 pins where valid. Do not invent steps the CRD does not state.

### T4 — Write `wgsl-mechanisms.md` Wave A (M-S1…M-S9)

Full schema; constructive **spec-side** algorithms; shader-lang stamps (existing vocabulary only); FM-Wgsl\* links; projection/hologram + webgpu + wasm64 cite-only; emission `[GAP]` notes. Cross-link Pass 2 D7 from **M-S1** (do not rewrite D7).

### T5 — P3-M mesh + P3-R receipt on wgsl clipboard

### T6 — Five-stakes (skip unless CONFLICT)

### T7 — Ascii (default **skip**)

**No ascii Wave A.** Receipt: “ascii deferred Pass 4; future P-S\* titles reserved by M-S\*; deliverable `wgsl-ascii-machinery.md`.”

### T8 — Mark plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "wgsl Pass 3 EXECUTE"
# commit: wgsl-mechanisms.md + clipboard P3-M/P3-R + this plan EXECUTED
# never stage refs/local/*.pdf
./docs/coord/coord.sh release clipboards "wgsl Pass 3 EXECUTE"
```

Ask before push.

---

## Execute checklist (when steward says go)

1. `git pull --ff-only` · refresh clipboards claim.  
2. T1 Hands + shader-lang mesh skim (no edits).  
3. T2 PDF gate (no `git add` PDF).  
4. T3 sight Wave A loci / reuse pins.  
5. T4 create `docs/clipboards/wgsl-mechanisms.md` with **M-S1…M-S9** full cards.  
6. T5 P3-M mesh + P3-R on `wgsl-clipboard.md`.  
7. T6/T7 skip unless CONFLICT (no ascii).  
8. Mark this plan **EXECUTED**.  
9. `coord.sh check` · commit · release.  
10. **STOP.** Do not push. Do not create ascii. Do not touch `src/` / Cargo / webgpu-* / wasm-spec-3 / emission / law / graphics / clock / hologram.

---

## Acceptance tests / success criteria (execute must pass)

1. `wgsl-mechanisms.md` exists with **M-S1…M-S9** fully filled (schema fields present).  
2. Each card has PDF pin + constructive **spec-side** algorithm + Lace stamp oriented to shader-lang hygiene (existing vocabulary only).  
3. Titles match Wave A spine: Module/parse · Types · Address spaces/vars · Expressions · Statements · Functions/entry points · Attributes · Built-ins · Execution/uniformity/validation.  
4. Hard stamps present: M-S1 **FORBID-as-Lace-WORD** + **FORBID-as-Lace-strand** + **FORBID-as-host-API-swap** + **D7** cross-link; M-S2 **FORBID-as-Core-write** / **FORBID-as-Lace-WORD**; M-S3 **FORBID-as-Lace-store**; M-S4 **FORBID-as-Lace-WORD**; M-S5 **SILENT-for-Lace-append** + **FORBID-as-emission-rule**; M-S6 **FORBID-as-emission-rule** + **FORBID-as-Lace-strand**; M-S7 **FORBID-as-Lace-strand**; M-S8 **FORBID-as-Core-write** + **FORBID-as-emission-rule**; M-S9 **SILENT-for-Lace-append**.  
5. P3-M mesh on wgsl clipboard: **9 rows**, columns include card ↔ PAGE ↔ FM-Wgsl\* ↔ projection/hologram ↔ webgpu cite-only ↔ wasm64 cite-only ↔ emission `[GAP]`; no CONFLICT (or CONFLICT reported and halted).  
6. No stamp invents POINTER when/arity/adjacency; Φ / emission still `[GAP]`.  
7. Pass 1–2 morals / FM-Wgsl\* / D7 not rewritten; **no ascii** created; webgpu-* / wasm-spec-3 / law / graphics / systems-manifest / five-stakes / clock / hologram / `src/` untouched.  
8. PDF never staged.  
9. Steward refuse tests (below) pass using only cards + P3-M.  
10. SHADER-LANG SPECIAL banner retained; WGSL ≠ Lace WORD ≠ strand ≠ store ≠ emission ≠ WebGPU Device/Queue ≠ wasm64 remains explicit.

---

## Steward refuse tests

Shoe in hands, or no. With only M-S\* + P3-M, steward must refuse:

1. “Shader module / stage / workgroup is the Lace strand / Graphic D” → **M-S1/M-S6/M-S7** + **FM-Wgsl1** + FORBID-as-Lace-strand.  
2. “Entry point fills POINTER / Φ” → **M-S6** + **FM-Wgsl2** + FORBID-as-emission-rule; emission `[GAP]`.  
3. “Address space / buffer / memory model is the Lace 1D strand / second store” → **M-S3** + **FM-Wgsl3** + FORBID-as-Lace-store.  
4. “WGSL types / source / identifiers are Lace WORD / Core schema” → **M-S1/M-S2/M-S4** + **FM-Wgsl4** + FORBID-as-Lace-WORD / FORBID-as-Core-write.  
5. “`discard` is a Lace cut / append refuse / Φ gate” → **M-S5** + **FM-Wgsl5** + SILENT + FORBID-as-emission-rule.  
6. “Barrier / uniformity accepts POINTER / is a Φ gate / Lace scheduler” → **M-S8/M-S9** + **FM-Wgsl6** + FORBID-as-emission-rule + SILENT.  
7. “WGSL replaces WebGPU Device/Queue/Buffer host API” → PAGE X / mesh webgpu column + **FM-Wgsl7** + FORBID-as-host-API-swap.  
8. “WGSL replaces wasm64 / wasm-spec-3 compile target” → PAGE X / mesh wasm64 column + **FM-Wgsl8** + FORBID-as-compile-target-swap.  
9. “Builtins (numeric/texture/atomic) are Lace Core ops / Φ fillers” → **M-S8** + **FM-Wgsl9** + FORBID-as-Core-write.  
10. “Compiling / citing WGSL accepts pointer-emission.md” → **M-S1/M-S6** + D1/D6; PROPOSAL-only sketches; GAP remains.

These mechanisms are CRD **shader-lang** procedures — Shadow reading for Lace projection / hologram draw surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, do not swap WebGPU host API, and do not swap wasm64.

---

## Success criteria (plan turn — this commit)

1. This file exists at `docs/clipboards/wgsl-pass-3-plan.md`.  
2. Status **HELD / NOT EXECUTED**; WGSL SHADER-LANG SPECIAL banner present; emission `[GAP]` explicit.  
3. Wave A **M-S1…M-S9** + full card schema + P3-M mesh + tickets + acceptance + steward refuse specified.  
4. Prefix **M-S\*** justified (S = shader-lang; WebGPU M-G\* / wasm M-T\* noted).  
5. **No** `wgsl-mechanisms.md` created; **no** clipboard / ascii / src product deltas in this commit (plan only).  
6. Clipboards station released after plan commit.  
7. No push. No `src/`. PDF unstaged. Emission `[GAP]`. webgpu-* / wasm-spec-3 untouched.

---

## Steward test (standing)

Shoe in hands, or no.  
WGSL is the **shader language** Shadow projection / hologram may compile into a WebGPU shader module, not the lace.  
Module/stage/workgroup are not Graphic D. Address spaces are not the strand or a second store.  
Entry points / builtins / barriers / uniformity do not emit POINTER.  
Types / expressions are not WORD. `discard` is not a Lace cut.  
WGSL is not the WebGPU Device/Queue host API. WGSL is not the wasm64 compile target.  
Φ stays `[GAP]`. No ascii until Pass 4. No `src/` until human-accepted emission. NON-binding on Core.

---

## Plan receipt (this turn)

| Field | Value |
|---|---|
| Status | **HELD / NOT EXECUTED** |
| When | 2026-09-18 ~21:45 PT |
| Agent | `wgsl-pass-3-plan` |
| Base | `ccc68724d07095e5673ee380783bbdc4fc6c5326` (`ccc6872`) |
| Product | this plan only |
| Pass 1–2 ancestors | Pass 1 PAGE A–H,X · Pass 2 D1–D6 + FM-Wgsl\* + D7 EXECUTED |
| Wave A ids | **M-S1…M-S9** (S = shader-lang) |
| Execute artifact (later) | `docs/clipboards/wgsl-mechanisms.md` |
| Ascii | deferred Pass 4 (`wgsl-ascii-machinery.md` · P-S\*) |
| Amended clipboard/ascii/mechanisms/src/maps/law/webgpu/wasm-spec-3 | **No** |
| PDF staged | No |
| PDF SHA-256 | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` |
| Push | **No** |
| Emission | `[GAP]` |
| Execute | **not performed** — leave HELD |

### Execution receipt (fill on execute)

| Field | Value |
|---|---|
| Status | _(empty until execute)_ |
| When | |
| Agent | |
| Artifact A | `wgsl-mechanisms.md` · M-S1…M-S9 |
| Artifact B | P3-M / P3-R on `wgsl-clipboard.md` |
| T6 five-stakes | skip (default) |
| T7 ascii | **skip** (Pass 4) |
| Amended map/law/graphics/src/webgpu/wasm-spec-3/clock/hologram | **No** |
| PDF staged | **No** |
| Emission | `[GAP]` |
| Claim BASE | |
