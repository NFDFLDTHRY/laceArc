# WGSL CRD 2026-09-15 — Pass 4 PLAN (SHADER-LANG ASCII source-machinery / Wave A P-S* + P4-X)

**Status:** **EXECUTED** · plan turn 2026-09-18 ~21:53 PT · execute ~2026-09-18 21:57 PT  
**Station:** clipboards (HELD `WGSL Pass 4 plan HELD` · claim BASE `f6e54d4` = `origin/main` at claim/refresh)  
**Tip at plan:** `f6e54d4` (= `origin/main` after `git pull --ff-only`)  
**Spec:** *WebGPU Shading Language* (WGSL) — **W3C Candidate Recommendation Draft, 15 September 2026** · editors Alan Baker, Mehmet Oguz Derin, David Neto (et al.)  
**Clipboard under test:** `docs/clipboards/wgsl-clipboard.md` (Pass 1–3 EXECUTED · PAGE A–H, X · D1–D6 + FM-Wgsl1…9 + D7 · **P3-M CONFIRM×9 · CONFLICT×0**)  
**Mechanisms (done):** `docs/clipboards/wgsl-mechanisms.md` — Wave A **M-S1…M-S9** (algorithms stand; do not rewrite)  
**New artifact (execute only):** `docs/clipboards/wgsl-ascii-machinery.md` — **do not create at plan time**  
**Ancestors:** [`wgsl-pass-1-plan.md`](wgsl-pass-1-plan.md) · [`wgsl-pass-2-plan.md`](wgsl-pass-2-plan.md) · [`wgsl-pass-3-plan.md`](wgsl-pass-3-plan.md)  
**Templates mirrored (adapt SHADER-LANG; don’t clone host-API or ISA morals):** [`webgpu-pass-4-plan.md`](webgpu-pass-4-plan.md) · [`wasm-spec-3-pass-4-plan.md`](wasm-spec-3-pass-4-plan.md) (rigor / P4-X spirit only — **not** fidelity-steward-of-already-drawn; this shelf’s ASCII is **first draw**) · [`agentscope-pass-4-plan.md`](agentscope-pass-4-plan.md) (product shape only)  
**ASCII schema samples (read-only):** [`webgpu-ascii-machinery.md`](webgpu-ascii-machinery.md) (opening contract + overview + one panel craft) · [`wasm-spec-3-ascii-machinery.md`](wasm-spec-3-ascii-machinery.md) (P-T* shape cite-only)  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) (`lace-projection.html`) · [`clock/wasm/README.md`](../clock/wasm/README.md) (different layer) · [`hologram/`](../hologram/README.md) · [`hologram/visual-primitives.md`](../hologram/visual-primitives.md) (WGSL live path) · **webgpu-*** Pass 1–5 EXECUTED / Pass 6 HELD (**HOST/GPU companion** — cite-only; **do not edit**) · wasm-spec-3 Pass 1–6 (**wasm64** — cite-only; different layer)  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — not this shelf’s anti-model PAGE  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `wgsl-*` for all products of this shelf.  
**Panel-id prefix:** **P-S\*** (S = shader-lang) 1:1 with **M-S\***. WebGPU uses **P-G\*** / **M-G\***; wasm-spec-3 uses **P-T\*** / **M-T\***. Pass 3 reserved **P-S1…P-S9**.

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/wgsl-w3c-crd-20260915.pdf` |
| Attachment SHA-256 | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` |
| Pages | **381** · text layer yes · PDF one-based primary (Pass 1–3 certified) |
| Git | **Never `git add` the PDF** |

Law: WGSL = **SHADER-LANG Shadow only** · shader module ≠ strand · entry point ≠ Φ · address space ≠ Lace store · WGSL ≠ WORD · discard ≠ Lace cut · barrier/uniformity ≠ Φ · WGSL ≠ WebGPU Device/Queue · WGSL ≠ wasm64 · builtins ≠ Core ops · Hands win · `[GAP]` sealed · **representation correctness of CRD procedures in ASCII > new art**.

```
pull/ff → claim clipboards → Hands + shader-lang mesh skim
        → open PDF (refs/local; no git add) light only if panel needs locus pin
        → do NOT rewrite M-S* algorithms (cite them)
        → forge SOURCE MACHINERY overview (shader-lang / Spec-side only; Core/Φ off-board)
        → for each P-S*: ASCII panel implementing M-S* steps + matching stamp under fence
        → P4-X rigor matrix (fidelity · stamp · false-friend fence · no POINTER in fences)
        → cross-walk M↔P · Pass 4 receipt on clipboard
        → mark plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — WGSL SHADER-LANG SPECIAL · Shadow · emission [GAP]

```
+======================================================================+
|  WGSL / SHADER-LANG SPECIAL — W3C CRD 2026-09-15                     |
|  Pass 4 = ASCII SOURCE MACHINERY + Wave A panels P-S1…P-S9 + P4-X.   |
|  Shadow / projection / hologram shader surfaces ONLY.                 |
|  Companion to WebGPU HOST/GPU API (P-G* / M-G* stay on webgpu shelf).|
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA panels (P-T* / M-T* / FM-W* stay).|
|  NOT WebGPU host/GPU panels (P-G* / M-G* / FM-Wgpu* stay there).     |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: WGSL as Lace WORD / Core operator / schema language.        |
|  FORBID: shader module as strand; entry point as Phi.                |
|  FORBID: address space / memory model as Lace store.                 |
|  FORBID: discard as Lace cut · barrier/uniformity as Phi gate.       |
|  FORBID: conflating WGSL with WebGPU Device/Queue or with wasm64.    |
|  KEEP-read: shader-lang mechanics for Shadow projection draw path.   |
|  ASCII fences = Spec/shader-lang glyphs ONLY; NO Lace POINTER word   |
|  inside fences; stamps live UNDER fences.                            |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Ascii file = EXECUTED.  Status: Pass 4 EXECUTED. Emission [GAP].    |
|  Emission [GAP] sealed.  Order Proposal = Pass 5. Audit = Pass 6.    |
+======================================================================+
```

This is **not** another anti-model LLM/theory ASCII pass.  
This is **not** wasm-spec-3 **compile-target ISA** ASCII (P-T\* / M-T\* / FM-W\* live on that shelf).  
This is **not** WebGPU **HOST/GPU API** ASCII (P-G\* / M-G\* / FM-Wgpu\* live on that shelf).  
It is **shader-language hygiene in diagrams**: CRD **constructive procedures** drawn as SOURCE MACHINERY overview + **P-S1…P-S9** 1:1 with **M-S1…M-S9**, with hard FORBID stamps under fences (existing stamp vocabulary only — **do not invent new stamp names**), plus **P4-X** rigor that each panel implements its card without smuggling Lace tokens into fences.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-15 |
| 2 | **Leftovers** — D1–D6 + FM-Wgsl1…9 + D7 module-lifecycle miniature |
| 3 | **System mechanisms** — M-S1…M-S9 + P3-M mesh (CONFIRM×9) |
| **4** | **Rigorous analysis + ASCII map** of those mechanisms — one SOURCE MACHINERY board + panels **P-S1…P-S9** 1:1 with **M-S\***, cross-walk, **P4-X** rigor matrix |
| 5 (later) | **Order Proposal** (Shadow shelf hygiene) — **not this pass** |
| 6 (later) | **Deep diagram audit** — **not this pass** |

Sibling shelves: WebGPU Pass 4 drew ASCII of Wave A (P-G\* first draw).  
wasm-spec-3 Pass 4 was fidelity-steward of **already-drawn** ascii — **different shape**; this shelf’s ascii is still **absent** (Pass 3 deferred it). Mirror **webgpu Pass 4** product shape + wasm-spec-3 **P4-X rigor spirit**, retargeted to **SHADER-LANG**.

Still **Shadow / Layer III**. Not Core. Not `src/`. **No Wave B.** **No Order Proposal** (Pass 5). **No deep diagram audit** (Pass 6). Ascii file created **only at execute**.

---

## What “rigorous ASCII of system mechanisms” means here

Each panel is a **diagram of the CRD’s shader-lang procedure**, not of Lace:

1. Cites its **M-S\*** card and implements that card’s numbered algorithm steps (reverse-walkable)  
2. Uses **Spec/shader-lang glyphs only inside the fence** (module / `translation_unit` / types / `var`/`let`/`const`/`override` / address spaces / expressions / statements / `discard` / functions / entry points / `@` attributes / `workgroup_size` / builtins / barriers / uniformity / validation errors, …)  
3. Carries the **same Lace stamp** as the card (hard FORBIDs carried **under** the fence)  
4. Does **not** place Lace `POINTER` / `WORD` / Graphic D / Φ / strand rows **inside** the fence as if they were WGSL objects — **FORBID the word POINTER inside diagram fences**  
5. Does **not** close Φ / invent emission / swap WebGPU host API / swap wasm64 / birth `src/`  
6. Survives **P4-X**: Implements OK · Fence OK (Spec-side; no POINTER word) · Stamp OK · False-friend fence OK · Overview attach OK · PASS/FIX

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-shader-lang / FORBID-* / PROPOSAL-only / SILENT stamps stand |
| D1–D6 + FM-Wgsl1…Wgsl9 + D7 | Pass 2 stands (D7 module lifecycle Shadow miniature; cross-link from M-S1/P-S1) |
| M-S1…M-S9 + P3-M | Pass 3 EXECUTED · CONFIRM×9 · CONFLICT×0 — **algorithms stand** |
| Five-stakes | **Out of scope** (default skip) |
| Ascii Wave A / `wgsl-ascii-machinery.md` | **Absent** — create at **execute only** |
| webgpu-* products | Untouched (cite-only; Pass 1–5 EXECUTED · Pass 6 HELD) |
| wasm-spec-3 products | Untouched (cite-only; Pass 1–6 EXECUTED · wasm64 seal) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| clock / hologram | Shadow surfaces citing WGSL — not amended |
| `src/` / Cargo | Absent; stay absent |
| Order Proposal | **Not this pass** (Pass 5 if wanted) |
| Deep diagram audit | **Not this pass** (Pass 6 if wanted) |

Pass 4 **diagrams** Wave A; it does not rewrite card morals, reopen Pass 2 leftovers wholesale, invent Wave B panels, write Order Proposal, or amend webgpu-* / wasm-spec-3 / emission / Core boards.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1–3 FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-host-API-swap / FORBID-as-compile-target-swap / PROPOSAL-only / SILENT | Pass 1–3 confirmed |
| Invent **new** stamp names beyond Pass 3 / wgsl-mechanisms legend | steering lock |
| Promote WGSL types / source / identifiers into Lace WORD or Core schema | PAGE B / X · FM-Wgsl4 |
| Promote shader module / stage / workgroup into lace cord / Graphic D | PAGE F · FM-Wgsl1 |
| Treat entry point / builtins / barriers / uniformity as POINTER emission / Φ | PAGE F/G/H |
| Treat WGSL address spaces / buffers / memory model as Lace strand / second store | PAGE C · FM-Wgsl3 |
| Treat `discard` as Lace cut / append refuse / Φ gate | PAGE E · FM-Wgsl5 |
| Claim WGSL replaces / is the WebGPU Device·Queue·Buffer host API | FORBID-as-host-API-swap · FM-Wgsl7 |
| Claim WGSL replaces wasm64 / wasm-spec-3 compile target | FORBID-as-compile-target-swap · FM-Wgsl8 |
| Put Lace `POINTER` word **inside** any diagram fence | Spec/shader-lang fences only; stamps under fences |
| Put Lace Core ASCII on this board | Core board = `systems-manifest-ascii.md` — do not conflate |
| Rewrite M-S* algorithm bodies (except cited typo/pin fix) | cards are algorithm source |
| Wave B full panels | deferred seeds only |
| Order Proposal (Pass 5 shape) | deferred — **Pass 5** |
| Deep diagram audit (Pass 6 shape) | deferred — **Pass 6** |
| Create `wgsl-ascii-machinery.md` at **plan** time | execute-only artifact |
| Amend webgpu-* clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend wasm-spec-3 clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes / clock / hologram | wrong stations / default skip |
| Add `src/`, `Cargo.toml`, or invent emission via shader-lang story | Implementation Law |
| Git-add PDF · push without ask | standing rules |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals, wasm M-T* / FM-W* ISA morals, or WebGPU M-G* / FM-Wgpu* host morals onto this shelf | wrong false-friend class |
| Clone wasm-spec-3 Pass 4 “already-drawn fidelity steward” as if ascii already exists | this shelf’s ascii is **first draw** |
| Execute diagrams / P4-X / clipboard receipt in the **plan** commit | plan = HELD / NOT EXECUTED |

---

## Artifact — `wgsl-ascii-machinery.md` (execute only — **not created at plan time**)

### Opening contract (≤8 lines · required · book/spec-side only)

1. Models **WGSL CRD shader-lang procedures**, not Lace Core.  
2. Companion to `wgsl-mechanisms.md` + `wgsl-clipboard.md`.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No panel closes it. Shadow / Layer III only.  
5. Inside fences: **Spec/shader-lang glyphs only** — **no Lace POINTER / WORD / Graphic D as WGSL objects**; **never the word `POINTER` inside diagram fences**.  
6. Stamps live **under** fences (not inside) and match Wave A M-S* teeth.  
7. KEEP-read-as-shader-lang for Shadow projection / hologram; FORBID module/stage as Lace strand; FORBID address space as Lace store; FORBID WGSL as WORD; FORBID entry/builtins/discard/uniformity as emission; FORBID WGSL as WebGPU host API; FORBID WGSL as wasm64.  
8. Hands win; steward refuses WORD/store/strand/emission/host-API/wasm64 lookalikes.

### Stamp legend (copy vocabulary — invent none)

Reuse Pass 3 legend from `wgsl-mechanisms.md` exactly:

| Stamp | Meaning (summary) |
|---|---|
| **KEEP-read-as-shader-lang** | May sit beside Lace as WGSL / Shadow draw mechanics; does not write Core |
| **FORBID-as-Core-write** | Must not become array rewrite / second store / Core operator set / schema language |
| **FORBID-as-Lace-WORD** | Must not treat WGSL source / identifiers / types / expr algebra as Lace WORD |
| **FORBID-as-Lace-store** | Must not treat address spaces / buffers / memory model as Lace 1D strand |
| **FORBID-as-Lace-strand** | Must not treat shader module / stage / workgroup as lace cord / Graphic D |
| **FORBID-as-emission-rule** | Must not use entry / builtins / barriers / discard / uniformity as POINTER when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔shader / hologram draw sketches are proposals only; not accepted law |
| **FORBID-as-host-API-swap** | Must not claim WGSL replaces WebGPU Device·Queue·Buffer host API |
| **FORBID-as-compile-target-swap** | Must not claim WGSL replaces wasm64 / wasm-spec-3 target |
| **FORBID-as-Core** | Must not promote shader-lang lifecycle into Lace Core doors / `src/` birth |
| **FORBID fill-GAP** | Must not treat citing/compiling WGSL as filling emission `[GAP]` |

### Panel schema (mandatory · P-S* ↔ M-S*)

| Field | Required |
|---|---|
| Title | Must match M-S* title (1:1) |
| Mechanism cite | M-S* + Spec§ + PDF pin (Pass 1–3 pin reuse or light `pdftotext`) |
| Sighting | method note |
| Lace stamp | **same tooth as M-S\*** (hard FORBIDs explicit under fence) |
| PAGE cite | A–H as per P3-M |
| False friend | **FM-Wgsl\*** keep-outs |
| Projection / hologram | cite-only (clock / hologram) |
| webgpu | cite-only · ≠ this shelf (**FM-Wgsl7**) |
| wasm64 | cite-only · ≠ this shelf (**FM-Wgsl8**) |
| Implements | which M-S* algorithm steps the diagram shows |
| Fenced ASCII | ≤76 cols; **Spec/shader-lang glyphs only** inside fence; **no POINTER word** in fence; **no invent Φ / POINTER inside fences** |
| Stamp line | **under** fence |

### SOURCE MACHINERY overview (required · Spec/shader-lang side only · singular)

One top-level board of the CRD constructive spine matching **M-S1…M-S9** (exact art free; Core/Φ/WebGPU Device·Queue / wasm64 ISA off-board). Spine shape (plan seed — execute may refine glyphs, not morals):

```
  [module / parse / textual structure] --- M-S1 / P-S1
           |                              FORBID-as-Lace-WORD
           |                              FORBID-as-Lace-strand
           |                              FORBID-as-host-API-swap
           |                              (D7 cross-link)
           v
  [types · plain / vector / memory-view] - M-S2 / P-S2
           |                              FORBID-as-Core-write
           |                              FORBID-as-Lace-WORD
           v
  [address spaces · var/let/const] ------- M-S3 / P-S3
           |                              FORBID-as-Lace-store
           v
  [expressions · early eval / ops] ------- M-S4 / P-S4
           |                              FORBID-as-Lace-WORD
           v
  [statements · control / discard] ------- M-S5 / P-S5
           |                              SILENT-for-Lace-append
           |                              FORBID-as-emission-rule
           v
  [functions · entry points / stages] ---- M-S6 / P-S6
           |                              FORBID-as-emission-rule
           |                              FORBID-as-Lace-strand
           v
  [@ attributes · workgroup_size] -------- M-S7 / P-S7
           |                              FORBID-as-Lace-strand
           |                              FORBID-as-Core-write
           v
  [built-ins · texture / atomic / sync] -- M-S8 / P-S8
           |                              FORBID-as-Core-write
           |                              FORBID-as-emission-rule
           v
  [execution · uniformity · validation] -- M-S9 / P-S9
           |                              SILENT-for-Lace-append
           |                              FORBID-as-emission-rule
           |
           x --> Lace Core / Graphic D / Phi
                 / WebGPU Device·Queue swap / wasm64 ISA swap
                 FORBIDDEN off this board

  Lace Core OFF this board --> docs/systems-manifest-ascii.md
  Phi = [GAP]
  WGSL = SHADER-LANG Shadow only
        (not WebGPU host API; not wasm64 compile target)
```

Core, Φ, Lace strand, WebGPU Device/Queue, and wasm64 ISA stay **off-board**. Exactly **one** SOURCE MACHINERY overview on execute.

### Wave A panels (blocking · 1:1 with cards · titles must match M-S*)

| Panel | Mechanism (must match M-S* title) | Stamp seed (carry hard FORBIDs under fence) |
|---|---|---|
| **P-S1** | M-S1 Module / parse / textual structure (compose module · textual structure · directives · scope · lifecycle cite) | KEEP-read-as-shader-lang · **FORBID-as-Lace-WORD** · **FORBID-as-Lace-strand** · **FORBID-as-host-API-swap** · FORBID-as-Core · FORBID fill-GAP · PROPOSAL-only · **FM-Wgsl1 · FM-Wgsl4 · FM-Wgsl7** · **D7** cross-link |
| **P-S2** | M-S2 Types (plain / integer / vector / memory-view / texture·sampler) | KEEP-read · **FORBID-as-Core-write** · **FORBID-as-Lace-WORD** · **FM-Wgsl4** |
| **P-S3** | M-S3 Address spaces / variables (`var`/`let`/`const`/`override` · address spaces · layout · no-heap) | KEEP-read · **FORBID-as-Lace-store** · **FM-Wgsl3** |
| **P-S4** | M-S4 Expressions (early evaluation · ops · address-of / indirection) | KEEP-read · **FORBID-as-Lace-WORD** · **FM-Wgsl4** |
| **P-S5** | M-S5 Statements (control flow · `discard` · `const_assert`) | KEEP-read · **SILENT-for-Lace-append** · **FORBID-as-emission-rule** · **FM-Wgsl5** |
| **P-S6** | M-S6 Functions / entry points (user-defined · stages · interface · entry ≠ Φ) | KEEP-read · **FORBID-as-emission-rule** · **FORBID-as-Lace-strand** · **FM-Wgsl1 · FM-Wgsl2** |
| **P-S7** | M-S7 Attributes (`@` attributes · `workgroup_size` · stage attrs) | KEEP-read · **FORBID-as-Lace-strand** · **FORBID-as-Core-write** · **FM-Wgsl1** |
| **P-S8** | M-S8 Built-in functions (constructors · numeric · texture · atomic · sync/barrier · subgroup) | KEEP-read · **FORBID-as-Core-write** · **FORBID-as-emission-rule** · **FM-Wgsl9 · FM-Wgsl6** |
| **P-S9** | M-S9 Execution / uniformity / validation (errors · uniformity analysis · workgroups · vs Lace append) | KEEP-read · **SILENT-for-Lace-append** · **FORBID-as-emission-rule** · **FM-Wgsl6** |

Hard fence rules (execute must enforce):

- **P-S1** fence: module / parse / lifecycle are shader-lang text — **not** Lace WORD / lace cord; host `createShaderModule` cite-only (**FORBID-as-host-API-swap**); **D7** cross-link; no POINTER word in fence.  
- **P-S2** fence: types are shader values — **not** Lace WORD / Core schema; FORBID-as-Core-write + FORBID-as-Lace-WORD under fence.  
- **P-S3** fence: address spaces / `var` are shader memory — **not** Lace strand / second store; FORBID-as-Lace-store under fence.  
- **P-S4** fence: expression algebra is shader eval — **not** WORD / Core ops; FORBID-as-Lace-WORD under fence.  
- **P-S5** fence: `discard` / control flow are shader statements — **not** Lace cut / Φ gate; SILENT + FORBID-as-emission-rule under fence.  
- **P-S6** fence: entry points / stages are shader interface — **not** Φ / lace cord; FORBID-as-emission-rule + FORBID-as-Lace-strand under fence.  
- **P-S7** fence: `@` / `workgroup_size` are shader attrs — **not** Graphic D; FORBID-as-Lace-strand under fence.  
- **P-S8** fence: builtins / barriers are shader ops — **not** Core ops / Φ fillers; FORBID-as-Core-write + FORBID-as-emission-rule under fence.  
- **P-S9** fence: uniformity / validation are shader analysis — **not** Lace law / Φ gate; SILENT under fence.  
- **Overview** fence: Core / Φ / WebGPU Device·Queue swap / wasm64 ISA swap marked FORBIDDEN off-board; emission `[GAP]`.

### P4-X — Rigor matrix (required · primary steward deliverable)

Prefer locus: **clipboard** Pass 4 section (+ one-line pointer from ascii). Columns:

`overview node · P-S* · M-S* · stamp · Implements OK · Fence OK (Spec-only; no POINTER word) · Stamp OK · False-friend fence OK · Overview attach OK · PASS/FIX`

**Rows (blocking):**

- All **M-S1…M-S9 / P-S1…P-S9** (9)  
- Overview spine nodes (module → types → address spaces → expressions → statements → functions/entry → attributes → builtins → execution/uniformity · forbidden Core/Φ/host-API/wasm64 exit)

**Special gates (must not rubber-stamp):**

| Gate | Why |
|---|---|
| **P-S1 / M-S1** · **FM-Wgsl1 · FM-Wgsl4 · FM-Wgsl7** | Module ≠ WORD/strand; lifecycle ≠ WebGPU host swap; **D7** cross-link |
| **P-S3 / M-S3** · **FM-Wgsl3** | Address space ≠ strand/store — highest store false-friend risk |
| **P-S2 / P-S4 / M-S2 / M-S4** · **FM-Wgsl4** | Types/expr ≠ WORD / Core schema |
| **P-S5 / M-S5** · **FM-Wgsl5** | `discard` ≠ Lace cut |
| **P-S6 / M-S6** · **FM-Wgsl1 · FM-Wgsl2** | Entry ≠ Φ; stage ≠ lace cord |
| **P-S7 / M-S7** · **FM-Wgsl1** | `workgroup_size` ≠ Graphic D |
| **P-S8 / M-S8** · **FM-Wgsl9 · FM-Wgsl6** | Builtins/barriers ≠ Core/Φ |
| **P-S9 / M-S9** · **FM-Wgsl6** | Uniformity/validation ≠ Lace law |
| **Overview host-API exit** · **FM-Wgsl7** | WGSL ≠ WebGPU Device/Queue swap |
| **Overview wasm64 exit** · **FM-Wgsl8** | WGSL ≠ compile-target swap |
| **No POINTER-in-fence** | every fence audited |
| **No invent Φ in fences** | stamps under fences only |

Scoring: every cell Y → **PASS**; else **FIX** with exact edit target (ascii fence / stamp line / caption / overview). Any FIX must be resolved in the execute pass. P3-M YES×9 is **baseline only** — Pass 4 re-walks Implements and fence hygiene.

#### Plan-time contested seeds (execute must score; do not fix in plan commit)

| Seed | Contested finding (plan skim) | Likely FIX locus |
|---|---|---|
| Ascii absent | No `wgsl-ascii-machinery.md` yet | create at execute (whole artifact) |
| Panel cite | Mechanisms still say “future P-S*” | mechanisms status one-liner + panel cites → P-S* |
| Fence POINTER | Risk of Lace tokens leaking into fences if steward copies stamp text inside | hard audit all 9 fences + overview |
| P-S1 / D7 | Must cross-link Pass 2 D7 without rewriting D7 | P-S1 caption / Implements |
| Overview attach | Each P-S* must appear on singular SOURCE MACHINERY board | overview + P4-X Overview column |
| FM naming | Authority is **FM-Wgsl1…9** (not FM-Wgpu* / FM-W* / FM-T*) | panel false-friend rows |
| Host/wasm exits | FORBID-as-host-API-swap + FORBID-as-compile-target-swap must appear on overview | overview stamp line |
| Stamp invent | Must not invent stamps beyond mechanisms legend | stamp legend copy-check |

These seeds are **not** executed fixes — they seed P4-X rows.

### Cross-walk table (required)

`P-S* | M-S* | stamp | PAGE | FM-Wgsl* | projection/hologram | webgpu | wasm64 | emission`

Suggested (execute confirms from P3-M):

| P | M | PAGE | FM | Emission |
|---|---|---|---|---|
| P-S1 | M-S1 | A | FM-Wgsl1 · FM-Wgsl4 · FM-Wgsl7 (+ D7) | `[GAP]` |
| P-S2 | M-S2 | B | FM-Wgsl4 | `[GAP]` |
| P-S3 | M-S3 | C | FM-Wgsl3 | `[GAP]` |
| P-S4 | M-S4 | D | FM-Wgsl4 | `[GAP]` |
| P-S5 | M-S5 | E | FM-Wgsl5 | `[GAP]` |
| P-S6 | M-S6 | F | FM-Wgsl1 · FM-Wgsl2 | `[GAP]` |
| P-S7 | M-S7 | F | FM-Wgsl1 | `[GAP]` |
| P-S8 | M-S8 | G | FM-Wgsl9 · FM-Wgsl6 | `[GAP]` |
| P-S9 | M-S9 | H | FM-Wgsl6 | `[GAP]` |

### Waves B–D

One-line deferred seeds only (same as mechanisms file). **No** full panels this pass.  
**No** Pass 5 Order Proposal yet.  
**No** Pass 6 deep diagram audit yet.

### ASCII standard

Monospace fences; ≤76 cols; reverse-walkable to M-S algorithm steps; stamp **under** fence; **Spec/shader-lang labels only inside fence**; **no POINTER word inside any diagram fence**; **no invent Φ / POINTER inside fences**; Core/Φ/WebGPU Device·Queue/wasm64 ISA off overview board.

---

## Clipboard / mechanisms thin edits (execute only)

On `wgsl-clipboard.md`:

1. **Pass 4 receipt** — EXECUTED, path to ascii file, panel count P-S1…P-S9, P4-X verdict, emission `[GAP]`  
2. **P4-X matrix** (if not only in ascii)  
3. Optional one-liner under P3-M: “Pass 4 ASCII panels P-S1…P-S9 → wgsl-ascii-machinery.md”  
4. Do **not** rewrite PAGE morals, D1–D6, FM-Wgsl*, D7, or P3-M teeth  

On `wgsl-mechanisms.md`:

- Optional status one-liner — “Pass 4 ASCII: see wgsl-ascii-machinery.md (P-S1…P-S9). Algorithms unchanged.”  
- Optional panel-cite field updates: **future P-S\*** → **P-S\***  
- Do **not** rewrite algorithm bodies

---

## Tickets

### T0 — Claim / base

Held at plan (`WGSL Pass 4 plan HELD`). Before execute: `git pull --ff-only` · refresh claim · agent id e.g. `wgsl Pass 4 EXECUTE`.

### T1 — Hands + shader-lang mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README + lace-projection → clock/wasm (different layer) → hologram + visual-primitives (WGSL cite) → webgpu Pass 1–5 banner / PAGE E WGSL boundary (**cite-only**) → wasm-spec-3 banner (**cite-only**) → Pass 1–3 clipboard (A–H/X + FM-Wgsl* + D7 + P3-M) → M-S1…M-S9 → sibling ASCII sample (webgpu-ascii-machinery opening + overview + one panel).

### T2 — PDF gate

Confirm `refs/local/wgsl-w3c-crd-20260915.pdf` resolves; SHA `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d`; `git check-ignore`; abort if PDF staged. Light re-sight only if a panel needs a locus pin (§2 Module · §6 Types · §7/§14 Address spaces · §8 Expressions · §9 Statements · §11–13 Functions/Attributes/Entry · §17 Built-ins · §15 Execution/Uniformity · §2.2 Errors).

### T3 — Scaffold `wgsl-ascii-machinery.md`

Opening contract, SHADER-LANG banner, stamp legend, overview placeholder, P-S1…P-S9 stubs, cross-walk stub, P4-X stub. **Create only at execute.**

### T4 — Draw SOURCE MACHINERY overview (Spec-side; Core/Φ/host-API/wasm64 off-board)

Spine: module → types → address spaces → expressions → statements → functions/entry → attributes → builtins → execution/uniformity.

### T5 — Draw panels P-S1…P-S9 (Implements match M-S*; stamps match; hard FORBIDs under fences; no POINTER in fences)

### T6 — P4-X rigor matrix + fix any FIX rows (incl. false-friend fences + POINTER-in-fence audit)

### T7 — Cross-walk + Pass 4 receipt · thin mechanisms status · mark plan EXECUTED

### T8 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "wgsl Pass 4 EXECUTE"
# commit: wgsl-ascii-machinery.md + clipboard receipt/P4-X (+ mechanisms one-liner) + plan EXECUTED
# never stage refs/local/*.pdf
./docs/coord/coord.sh release clipboards "wgsl Pass 4 EXECUTE"
```

Ask before push. Do **not** push unless asked.

---

## Execute checklist (when steward says go)

1. Reconcile with `origin/main` · refresh clipboards claim.  
2. T1 Hands + shader-lang mesh skim (no Core edits).  
3. T2 PDF gate (no `git add` PDF).  
4. T3 create `docs/clipboards/wgsl-ascii-machinery.md` scaffold.  
5. T4 draw SOURCE MACHINERY overview.  
6. T5 draw **P-S1…P-S9** 1:1 with M-S* titles + stamps under fences.  
7. T6 P4-X matrix · fix FIX rows · audit no POINTER in fences.  
8. T7 cross-walk + clipboard Pass 4 receipt · mechanisms thin status.  
9. Mark this plan **EXECUTED**.  
10. `coord.sh check` · commit · release.  
11. **STOP.** Do not push. Do not invent Wave B. Do not write Order Proposal (Pass 5). Do not deep-audit diagrams (Pass 6). Do not touch `src/` / Cargo / webgpu-* / wasm-spec-3 / emission / law / graphics / clock / hologram / systems-manifest-ascii.

---

## Acceptance tests / success criteria (execute must pass)

1. `wgsl-ascii-machinery.md` exists with opening contract, SHADER-LANG banner, stamp legend, SOURCE MACHINERY overview, **P-S1…P-S9**, cross-walk, P4-X.  
2. Each P-S* cites matching M-S*, implements that card’s steps, matching stamp **under** fence, ≤76-col fence, **Spec/shader-lang glyphs only** inside fence; **no POINTER word inside any diagram fence**.  
3. Panel titles 1:1 with M-S*: Module/parse · Types · Address spaces/vars · Expressions · Statements · Functions/entry points · Attributes · Built-ins · Execution/uniformity/validation.  
4. Hard stamps present under fences: P-S1 FORBID-as-Lace-WORD + FORBID-as-Lace-strand + FORBID-as-host-API-swap + **D7**; P-S2 FORBID-as-Core-write + FORBID-as-Lace-WORD; P-S3 FORBID-as-Lace-store; P-S4 FORBID-as-Lace-WORD; P-S5 SILENT + FORBID-as-emission-rule; P-S6 FORBID-as-emission-rule + FORBID-as-Lace-strand; P-S7 FORBID-as-Lace-strand; P-S8 FORBID-as-Core-write + FORBID-as-emission-rule; P-S9 SILENT.  
5. Overview keeps Lace Core, Φ, WebGPU Device·Queue swap, and wasm64 ISA swap off-board; spine matches M-S1…M-S9; **singular** overview.  
6. P4-X all PASS (or fixed to PASS this pass) including false-friend fence + no-POINTER-in-fence columns.  
7. Cross-walk M↔P present; P3-M CONFIRM×9 not reopened unless stamp-conflict noted.  
8. No stamp invents POINTER when/arity/adjacency; Φ / emission still `[GAP]`.  
9. M-S* algorithms not rewritten; Pass 1–2 morals / FM-Wgsl* / D7 stand; webgpu-* / wasm-spec-3 / law / graphics / systems-manifest / five-stakes / clock / hologram / `src/` untouched.  
10. PDF never staged.  
11. Pass 4 receipt on wgsl clipboard.  
12. Steward refuse tests (below) pass using only panels + stamps + P3-M.  
13. No new stamp names invented beyond mechanisms legend.

---

## Steward refuse tests

Shoe in hands, or no. With only P-S* + stamps (+ P3-M / M-S* cites), steward must refuse:

1. “Shader module / stage / workgroup is the Lace strand / Graphic D” → **P-S1/P-S6/P-S7** + **FM-Wgsl1** + FORBID-as-Lace-strand.  
2. “Entry point fills POINTER / Φ” → **P-S6** + **FM-Wgsl2** + FORBID-as-emission-rule; emission `[GAP]`.  
3. “Address space / buffer / memory model is the Lace 1D strand / second store” → **P-S3** + **FM-Wgsl3** + FORBID-as-Lace-store.  
4. “WGSL types / source / identifiers / expr algebra are Lace WORD / Core schema” → **P-S1/P-S2/P-S4** + **FM-Wgsl4** + FORBID-as-Lace-WORD / FORBID-as-Core-write.  
5. “`discard` is a Lace cut / append refuse / Φ gate” → **P-S5** + **FM-Wgsl5** + SILENT + FORBID-as-emission-rule.  
6. “Barrier / uniformity accepts POINTER / is a Φ gate / Lace scheduler” → **P-S8/P-S9** + **FM-Wgsl6** + FORBID-as-emission-rule + SILENT.  
7. “WGSL replaces WebGPU Device/Queue/Buffer host API” → overview off-board + **FM-Wgsl7** + FORBID-as-host-API-swap.  
8. “WGSL replaces wasm64 / wasm-spec-3 compile target” → overview off-board + **FM-Wgsl8** + FORBID-as-compile-target-swap.  
9. “Builtins (numeric/texture/atomic) are Lace Core ops / Φ fillers” → **P-S8** + **FM-Wgsl9** + FORBID-as-Core-write.  
10. “Compiling / citing WGSL accepts pointer-emission.md” → **P-S1/P-S6** + D1/D6; PROPOSAL-only; GAP remains.  
11. “This fence contains Lace POINTER as a WGSL object” → opening contract · Fence OK fail · stamps belong **under** fences.

These panels are CRD **shader-lang** procedures drawn for Shadow projection / hologram draw surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, do not swap WebGPU host API, and do not swap wasm64.

---

## Success criteria (plan turn — this commit)

1. This file exists at `docs/clipboards/wgsl-pass-4-plan.md`.  
2. Status **HELD / NOT EXECUTED**; WGSL SHADER-LANG SPECIAL banner present; emission `[GAP]` explicit.  
3. Opening contract requirements · SOURCE MACHINERY spine · **P-S1…P-S9** 1:1 with M-S* · cross-walk · P4-X · tickets · acceptance · steward refuse specified.  
4. Explicit: **Order Proposal = Pass 5**; **deep diagram audit = Pass 6**.  
5. **No** `wgsl-ascii-machinery.md` created; **no** clipboard / mechanisms / src product deltas in this commit (plan only + station claim/release).  
6. Clipboards station released after plan commit.  
7. No push. No `src/`. PDF unstaged. Emission `[GAP]`. webgpu-* / wasm-spec-3 untouched.

---

## Steward test (standing)

Shoe in hands, or no.  
WGSL is the **shader language** Shadow projection / hologram may compile into a WebGPU shader module, not the lace.  
ASCII maps **CRD procedures**, not Core.  
Module/stage/workgroup are not Graphic D. Address spaces are not the strand or a second store.  
Entry points / builtins / barriers / uniformity / discard do not emit POINTER.  
Types / expressions are not WORD.  
WGSL is not the WebGPU Device/Queue host API. WGSL is not the wasm64 compile target.  
Fences stay Spec/shader-lang side; **no POINTER word inside fences**; stamps under fences.  
Φ stays `[GAP]`. No Order Proposal until Pass 5. No deep diagram audit until Pass 6. No `src/` until human-accepted emission. NON-binding on Core.

---

## Plan receipt (plan turn)

| Field | Value |
|---|---|
| Status (plan) | **HELD / NOT EXECUTED** |
| When (plan) | 2026-09-18 ~21:53 PT |
| Station (plan) | clipboards · agent `WGSL Pass 4 plan HELD` |
| Claim BASE (plan) | `f6e54d4` |
| Tip at plan | `f6e54d4` (= origin/main) |
| Artifact created (plan) | this plan only |
| Ascii created (plan) | **No** (`wgsl-ascii-machinery.md` deferred to execute) |
| Pass 5 / Pass 6 | deferred (Order Proposal / deep diagram audit) |
| PDF SHA-256 verified | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` |
| Emission | `[GAP]` |
| Push | **No** |

### Execution receipt (fill on execute)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~21:57 PT |
| Agent | `WGSL Pass 4 EXECUTE ascii P-S1..P-S9 + P4-X` |
| Ascii created | [`wgsl-ascii-machinery.md`](wgsl-ascii-machinery.md) · overview count=1 · P-S1…P-S9 · P4-X **PASS** |
| Clipboard | Pass 4 receipt + P4-X mirror · P3-M ascii one-liner · D6 ascii seal lifted |
| Mechanisms | status one-liner + panel cites **P-S*** (algorithms unchanged) |
| P4-X | **PASS** × (9 panels + 10 overview + 12 special gates) · no FIX |
| Emission | `[GAP]` |
| PDF staged | **No** |
| Push | **No** |
