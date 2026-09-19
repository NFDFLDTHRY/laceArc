# WebNN CRD 2026-09-10 — Pass 4 PLAN (HOST-NN ASCII source-machinery / Wave A P-N* + P4-X)

**Status:** **HELD / NOT EXECUTED** · plan turn 2026-09-18 ~22:42 PT  
**Station:** clipboards (HELD `Grok-webnn-pass4-plan` · claim BASE `77b6be6` = `origin/main` at claim/refresh after ff)  
**Tip at plan:** `77b6be6` (= `origin/main` after `git pull --ff-only`; prior claim `d744a70` superseded by graphics i2p2)  
**Spec:** *Web Neural Network API* (WebNN) — **W3C Candidate Recommendation Draft, 10 September 2026** · editors Ningxin Hu, Dwayne Robinson (et al.)  
**Clipboard under test:** `docs/clipboards/webnn-clipboard.md` (Pass 1–3 EXECUTED · PAGE A–H, X · D1–D6 + FM-Webnn1…9 + D7 · **P3-M CONFIRM×9 · CONFLICT×0**)  
**Mechanisms (done):** `docs/clipboards/webnn-mechanisms.md` — Wave A **M-N1…M-N9** (algorithms stand; do not rewrite)  
**New artifact (execute only):** `docs/clipboards/webnn-ascii-machinery.md` — **do not create at plan time**  
**Ancestors:** [`webnn-pass-1-plan.md`](webnn-pass-1-plan.md) · [`webnn-pass-2-plan.md`](webnn-pass-2-plan.md) · [`webnn-pass-3-plan.md`](webnn-pass-3-plan.md)  
**Templates mirrored (adapt HOST-NN; don’t clone GPUBuffer/submit or shader-lang morals):** [`webgpu-pass-4-plan.md`](webgpu-pass-4-plan.md) · [`wgsl-pass-4-plan.md`](wgsl-pass-4-plan.md) · [`wasm-spec-3-pass-4-plan.md`](wasm-spec-3-pass-4-plan.md) (rigor / P4-X spirit only — **not** fidelity-steward-of-already-drawn; this shelf’s ASCII is **first draw**) · [`agentscope-pass-4-plan.md`](agentscope-pass-4-plan.md) (product shape only)  
**ASCII schema samples (read-only):** [`webgpu-ascii-machinery.md`](webgpu-ascii-machinery.md) (opening contract + overview + one panel craft) · [`wgsl-ascii-machinery.md`](wgsl-ascii-machinery.md) (P-S* shape cite-only)  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) · [`clock/wasm/README.md`](../clock/wasm/README.md) (different layer) · [`hologram/`](../hologram/README.md) · [`hologram/visual-primitives.md`](../hologram/visual-primitives.md) · **webgpu-*** Pass 1–5 EXECUTED / Pass 6 HELD (**HOST/GPU companion** — cite-only; **do not edit**) · **wgsl-*** Pass 1–5 EXECUTED / Pass 6 PLAN HELD (**SHADER-LANG companion** — cite-only; **do not edit**) · wasm-spec-3 Pass 1–6 (**wasm64** — cite-only; different layer)  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — not this shelf’s anti-model PAGE  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `webnn-*` for all products of this shelf.  
**Panel-id prefix:** **P-N\*** (N = neural / host-NN) 1:1 with **M-N\***. WebGPU uses **P-G\*** / **M-G\***; WGSL uses **P-S\*** / **M-S\***; wasm-spec-3 uses **P-T\*** / **M-T\***. Pass 3 reserved **P-N1…P-N9**.

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webnn-crd-20260910.pdf` |
| Attachment SHA-256 | `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` |
| Pages | **353** · text layer yes · PDF one-based primary (Pass 1–3 certified) |
| Git | **Never `git add` the PDF** |

Law: WebNN = **HOST-NN Shadow only** · MLContext/MLGraph ≠ strand · MLTensor/operands ≠ Lace store · `dispatch` ≠ Φ · operators ≠ WORD · WebNN ≠ WebGPU Device/Queue · WebNN ≠ WGSL · WebNN ≠ wasm64 · validation ≠ Lace cut · `exportToGPU` ≠ accept emission · Hands win · `[GAP]` sealed · **FORBID-as-Core-write** · **NON-binding** · **representation correctness of CRD procedures in ASCII > new art**.

```
pull/ff → claim clipboards → Hands + host-NN mesh skim
        → open PDF (refs/local; no git add) light only if panel needs locus pin
        → do NOT rewrite M-N* algorithms (cite them)
        → forge SOURCE MACHINERY overview (host-NN / Spec-side only; Core/Φ off-board)
        → for each P-N*: ASCII panel implementing M-N* steps + matching stamp under fence
        → P4-X rigor matrix (fidelity · stamp · false-friend fence · no POINTER in fences)
        → cross-walk M↔P · Pass 4 receipt on clipboard
        → mark plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — WebNN HOST-NN SPECIAL · Shadow · emission [GAP]

```
+======================================================================+
|  HOST-NN / WebNN SPECIAL — W3C CRD 2026-09-10                        |
|  Pass 4 = ASCII SOURCE MACHINERY + Wave A panels P-N1…P-N9 + P4-X.   |
|  Shadow / projection / hologram / host-embed surfaces ONLY.            |
|  Companion to WebGPU (HOST/GPU · P-G*) and WGSL (SHADER-LANG · P-S*).|
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA panels (P-T* / M-T* / FM-W* stay).|
|  NOT WebGPU host/GPU panels (P-G* / M-G* / FM-Wgpu* stay there).     |
|  NOT WGSL shader-lang panels (P-S* / M-S* / FM-Wgsl* stay there).    |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: MLContext / MLGraph / builder as Lace strand / Graphic D.   |
|  FORBID: MLTensor / operands as Lace store / append surface.         |
|  FORBID: dispatch / ML task source as POINTER emission / Phi.        |
|  FORBID: operators / op graph as Lace WORD / Core schema.            |
|  FORBID: conflating WebNN with WebGPU Device/Queue, WGSL, or wasm64.  |
|  FORBID: validation as Lace cut · exportToGPU as accept emission.    |
|  KEEP-read-as-host-NN-API: host-NN mechanics for Shadow projection.  |
|  ASCII fences = Spec/host-NN glyphs ONLY; NO Lace POINTER word       |
|  inside fences; stamps live UNDER fences.                            |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Ascii file = execute only.  Status: HELD / NOT EXECUTED.            |
|  Emission [GAP] sealed.  Order Proposal = Pass 5. Audit = Pass 6.    |
+======================================================================+
```

This is **not** another anti-model LLM/theory ASCII pass.  
This is **not** wasm-spec-3 **compile-target ISA** ASCII (P-T\* / M-T\* / FM-W\* live on that shelf).  
This is **not** WebGPU **HOST/GPU API** ASCII (P-G\* / M-G\* / FM-Wgpu\* live on that shelf — **do not clone GPUBuffer / `queue.submit` keep-outs as if they were WebNN**).  
This is **not** WGSL **SHADER-LANG** ASCII (P-S\* / M-S\* / FM-Wgsl\* live on that shelf).  
It is **host-NN inference Web API hygiene in diagrams**: CRD **constructive procedures** drawn as SOURCE MACHINERY overview + **P-N1…P-N9** 1:1 with **M-N1…M-N9**, with hard FORBID stamps under fences (existing stamp vocabulary only — **do not invent new stamp names**), plus **P4-X** rigor that each panel implements its card without smuggling Lace tokens into fences.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-10 |
| 2 | **Leftovers** — D1–D6 + FM-Webnn1…9 + D7 host-NN lifecycle miniature |
| 3 | **System mechanisms** — M-N1…M-N9 + P3-M mesh (CONFIRM×9) |
| **4** | **Rigorous analysis + ASCII map** of those mechanisms — one SOURCE MACHINERY board + panels **P-N1…P-N9** 1:1 with **M-N\***, cross-walk, **P4-X** rigor matrix |
| 5 (later) | **Order Proposal** (Shadow shelf hygiene) — **not this pass** |
| 6 (later) | **Deep diagram audit** — **not this pass** |

Sibling shelves: WebGPU Pass 4 drew ASCII of Wave A (P-G\* first draw); WGSL Pass 4 drew P-S\*.  
wasm-spec-3 Pass 4 was fidelity-steward of **already-drawn** ascii — **different shape**; this shelf’s ascii is still **absent** (Pass 3 deferred it). Mirror **webgpu / wgsl Pass 4** product shape + wasm-spec-3 **P4-X rigor spirit**, retargeted to **HOST-NN**.

Still **Shadow / Layer III**. Not Core. Not `src/`. **No Wave B.** **No Order Proposal** (Pass 5). **No deep diagram audit** (Pass 6). Ascii file created **only at execute**.

---

## What “rigorous ASCII of system mechanisms” means here

Each panel is a **diagram of the CRD’s host-NN procedure**, not of Lace:

1. Cites its **M-N\*** card and implements that card’s numbered algorithm steps (reverse-walkable)  
2. Uses **Spec/host-NN glyphs only inside the fence** (`navigator.ml`, `createContext`, `MLContext`, `MLGraphBuilder`, `input`/`constant`, `MLOperand`, operators, `build` → `MLGraph`, `dispatch`, `MLTensor`, `readTensor`/`writeTensor`, `exportToGPU`, `opSupportLimits`, SecureContext / `"webnn"` policy, …)  
3. Carries the **same Lace stamp** as the card (hard FORBIDs carried **under** the fence)  
4. Does **not** place Lace `POINTER` / `WORD` / Graphic D / Φ / strand rows **inside** the fence as if they were WebNN objects — **FORBID the word POINTER inside diagram fences**  
5. Does **not** close Φ / invent emission / swap WebGPU host API / swap WGSL / swap wasm64 / birth `src/`  
6. Survives **P4-X**: Implements OK · Fence OK (Spec-side; no POINTER word) · Stamp OK · False-friend fence OK · Overview attach OK · PASS/FIX

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-host-NN-API / FORBID-* / PROPOSAL-only / SILENT stamps stand |
| D1–D6 + FM-Webnn1…Webnn9 + D7 | Pass 2 stands (D7 context→builder→build→dispatch Shadow miniature; cross-link from M-N2/M-N5/M-N6 / P-N*) |
| M-N1…M-N9 + P3-M | Pass 3 EXECUTED · CONFIRM×9 · CONFLICT×0 — **algorithms stand** |
| Five-stakes | **Out of scope** (default skip) |
| Ascii Wave A / `webnn-ascii-machinery.md` | **Absent** — create at **execute only** |
| webgpu-* products | Untouched (cite-only; Pass 1–5 EXECUTED · Pass 6 HELD) |
| wgsl-* products | Untouched (cite-only; Pass 1–5 EXECUTED · Pass 6 PLAN HELD) |
| wasm-spec-3 products | Untouched (cite-only; Pass 1–6 EXECUTED · wasm64 seal) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| clock / hologram | Shadow surfaces citing host-NN — not amended |
| `src/` / Cargo | Absent; stay absent |
| Order Proposal | **Not this pass** (Pass 5 if wanted) |
| Deep diagram audit | **Not this pass** (Pass 6 if wanted) |

Pass 4 **diagrams** Wave A; it does not rewrite card morals, reopen Pass 2 leftovers wholesale, invent Wave B panels, write Order Proposal, or amend webgpu-* / wgsl-* / wasm-spec-3 / emission / Core boards.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1–3 FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-WebGPU-conflation / FORBID-as-WGSL-conflation / FORBID-as-compile-target-swap / PROPOSAL-only / SILENT | Pass 1–3 confirmed |
| Invent **new** stamp names beyond Pass 3 / webnn-mechanisms legend | steering lock · webnn shelf only |
| Promote MLContext / MLGraph / builder into lace cord / Graphic D | PAGE B/C · FM-Webnn1 · FM-Webnn2 · FM-Webnn9 |
| Promote MLTensor / operands / constants into Lace strand / second store | PAGE D · FM-Webnn3 |
| Treat `dispatch` / ML task source as POINTER emission / Φ | PAGE F · FM-Webnn4 |
| Treat WebNN operators / op graph as Lace WORD / Core schema | PAGE E · FM-Webnn5 |
| Claim WebNN is / replaces WebGPU Device·Queue·Buffer | FORBID-as-WebGPU-conflation · FM-Webnn6 |
| Claim WebNN is / replaces WGSL / shader-lang | FORBID-as-WGSL-conflation · FM-Webnn7 |
| Claim WebNN replaces wasm64 / wasm-spec-3 compile target | FORBID-as-compile-target-swap · FM-Webnn8 |
| Treat validation / `opSupportLimits` as Lace cut / Φ gate | SILENT · PAGE H |
| Treat `exportToGPU` as accepting `pointer-emission.md` / Buffer identity | PROPOSAL-only · FORBID accept-GAP · FM-Webnn9 · FM-Webnn6 |
| Put Lace `POINTER` word **inside** any diagram fence | Spec/host-NN fences only; stamps under fences |
| Put Lace Core ASCII on this board | Core board = `systems-manifest-ascii.md` — do not conflate |
| Rewrite M-N* algorithm bodies (except cited typo/pin fix) | cards are algorithm source |
| Clone GPUBuffer / `queue.submit` / canvas / mapAsync keep-outs as if they were WebNN objects | wrong false-friend class (HOST/GPU shelf) |
| Wave B full panels | deferred seeds only |
| Order Proposal (Pass 5 shape) | deferred — **Pass 5** |
| Deep diagram audit (Pass 6 shape) | deferred — **Pass 6** |
| Create `webnn-ascii-machinery.md` at **plan** time | execute-only artifact |
| Amend webgpu-* / wgsl-* / wasm-spec-3 clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes / clock / hologram | wrong stations / default skip |
| Add `src/`, `Cargo.toml`, or invent emission via host-NN story | Implementation Law |
| Git-add PDF · push without ask | standing rules |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals, wasm M-T* / FM-W* ISA morals, WebGPU M-G* / FM-Wgpu* host morals, or WGSL M-S* / FM-Wgsl* shader morals onto this shelf | wrong false-friend class |
| Clone wasm-spec-3 Pass 4 “already-drawn fidelity steward” as if ascii already exists | this shelf’s ascii is **first draw** |
| Execute diagrams / P4-X / clipboard receipt in the **plan** commit | plan = HELD / NOT EXECUTED |

---

## Artifact — `webnn-ascii-machinery.md` (execute only — **not created at plan time**)

### Opening contract (≤8 lines · required · Spec/host-NN side only)

1. Models **WebNN CRD host-NN procedures**, not Lace Core.  
2. Companion to `webnn-mechanisms.md` + `webnn-clipboard.md`.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No panel closes it. Shadow / Layer III only.  
5. Inside fences: **Spec/host-NN glyphs only** — **no Lace POINTER / WORD / Graphic D as WebNN objects**; **never the word `POINTER` inside diagram fences**.  
6. Stamps live **under** fences (not inside) and match Wave A M-N* teeth.  
7. KEEP-read-as-host-NN-API for Shadow projection / hologram; FORBID Context/Graph/builder as Lace strand; FORBID Tensor/operands as Lace store; FORBID operators as WORD; FORBID dispatch as emission; FORBID WebNN as WebGPU / WGSL / wasm64.  
8. Hands win; steward refuses store/strand/WORD/emission/WebGPU/WGSL/wasm64 lookalikes.

### Stamp legend (copy vocabulary — invent none)

Reuse Pass 3 legend from `webnn-mechanisms.md` exactly:

| Stamp | Meaning (summary) |
|---|---|
| **KEEP-read-as-host-NN-API** | May sit beside Lace as host-NN inference / projection mechanics; does not write Core |
| **KEEP-read** | May sit beside Lace as CRD constructive reading; does not write Core |
| **FORBID-as-Core-write** | Must not become array rewrite / second store / Core operator set / AGENTS rewrite |
| **FORBID-as-Lace-store** | Must not treat MLTensor / operands / constant tensors as Lace 1D strand / append |
| **FORBID-as-Lace-strand** | Must not treat MLGraph / MLContext / device selection / builder as lace cord / Graphic D |
| **FORBID-as-emission-rule** | Must not use `dispatch` / graph execute / ML task source / validation as POINTER when/arity/adjacency |
| **FORBID-as-Lace-WORD** | Must not treat WebNN operators / op graph as Lace WORD / Core schema language |
| **SILENT-for-Lace-append** | Spec procedure silent for Lace append; do not smuggle as scheduler / Φ gate |
| **PROPOSAL-only** | Lace↔host-NN / `exportToGPU` bridge sketches are proposals only; not accepted law |
| **FORBID-as-WebGPU-conflation** | Must not claim WebNN is / replaces WebGPU Device·Queue·Buffer |
| **FORBID-as-WGSL-conflation** | Must not claim WebNN is / replaces WGSL / shader-lang |
| **FORBID-as-compile-target-swap** | Must not claim WebNN replaces wasm64 / wasm-spec-3 target |
| **FORBID-as-Core** | Must not promote builder/build/export path into Lace Core doors / `src/` birth |
| **FORBID** / **FORBID fill-GAP** / **FORBID accept-GAP** | Must not treat export / calling WebNN as filling or accepting emission `[GAP]` |

### Panel schema (mandatory · P-N* ↔ M-N*)

| Field | Required |
|---|---|
| Title | Must match M-N* title (1:1) |
| Mechanism cite | M-N* + Spec§ + PDF pin (Pass 1–3 pin reuse or light `pdftotext`) |
| Sighting | method note |
| Lace stamp | **same tooth as M-N\*** (hard FORBIDs explicit under fence) |
| PAGE cite | A–H as per P3-M |
| False friend | **FM-Webnn\*** keep-outs |
| Projection / hologram | cite-only (clock / hologram) |
| webgpu | cite-only · ≠ this shelf (**FM-Webnn6**) |
| wgsl | cite-only · ≠ this shelf (**FM-Webnn7**) |
| wasm64 | cite-only · ≠ this shelf (**FM-Webnn8**) |
| Implements | which M-N* algorithm steps the diagram shows |
| Fenced ASCII | ≤76 cols; **Spec/host-NN glyphs only** inside fence; **no POINTER word** in fence; **no invent Φ / POINTER inside fences** |
| Stamp line | **under** fence |

### SOURCE MACHINERY overview (required · Spec/host-NN side only · singular)

One top-level board of the CRD constructive spine matching **M-N1…M-N9** (exact art free; Core/Φ/WebGPU Device·Queue / WGSL / wasm64 ISA off-board). Spine shape (plan seed — execute may refine glyphs, not morals):

```
  [navigator.ml / createContext · MLContext] --- M-N1 / P-N1
           |                                    FORBID-as-Lace-strand
           |                                    FORBID-as-WebGPU-conflation
           |                                    KEEP-read-as-host-NN-API
           v
  [MLGraphBuilder · input / constant] ---------- M-N2 / P-N2
           |                                    FORBID-as-Lace-strand
           |                                    FORBID-as-Core-write
           |                                    (D7 cross-link)
           v
  [MLOperand · tensors / descriptors] ---------- M-N3 / P-N3
           |                                    FORBID-as-Lace-store
           v
  [operators · op graph catalogue] ------------- M-N4 / P-N4
           |                                    FORBID-as-Lace-WORD
           |                                    FORBID-as-WGSL-conflation
           v
  [build → MLGraph · at-most-one] -------------- M-N5 / P-N5
           |                                    FORBID-as-Lace-strand
           |                                    (D7 cross-link)
           v
  [dispatch · ML task source] ------------------ M-N6 / P-N6
           |                                    FORBID-as-emission-rule
           |                                    SILENT-for-Lace-append
           |                                    (D7 cross-link)
           +--> [MLTensor · exportToGPU] ----------- M-N7 / P-N7
           |     FORBID-as-Lace-store · PROPOSAL-only
           |     FORBID-as-WebGPU-conflation · FORBID accept-GAP
           +--> [validation · opSupportLimits] ----- M-N8 / P-N8
           |     SILENT-for-Lace-append
           |     FORBID-as-emission-rule
           +--> [security / privacy / §5.3] -------- M-N9 / P-N9
           |     FORBID-as-Core-write
           |     FORBID-as-WebGPU-conflation
           |
           x --> Lace Core / Graphic D / Phi
                 / WebGPU Device·Queue identity / WGSL swap / wasm64 ISA swap
                 FORBIDDEN off this board

  Lace Core OFF this board --> docs/systems-manifest-ascii.md
  Phi = [GAP]
  WebNN = HOST-NN Shadow only
        (not WebGPU Device/Queue; not WGSL; not wasm64 compile target)
```

Core, Φ, Lace strand, WebGPU Device/Queue identity, WGSL, and wasm64 ISA stay **off-board**. Exactly **one** SOURCE MACHINERY overview on execute.

### Wave A panels (blocking · 1:1 with cards · titles must match M-N*)

| Panel | Mechanism (must match M-N* title) | Stamp seed (carry hard FORBIDs under fence) |
|---|---|---|
| **P-N1** | M-N1 Context / device selection (`createContext` · MLContext · backends / `opSupportLimits`) | KEEP-read-as-host-NN-API · **FORBID-as-Lace-strand** · FORBID-as-Core-write · **FORBID-as-WebGPU-conflation** · **FM-Webnn2 · FM-Webnn6** |
| **P-N2** | M-N2 Graph builder (MLGraphBuilder ctor · `input` / `constant` · graph construction) | KEEP-read · **FORBID-as-Lace-strand** · **FORBID-as-Core-write** · FORBID-as-Core · **FM-Webnn1 · FM-Webnn9** · **D7** cross-link |
| **P-N3** | M-N3 Tensors / operands (MLOperand · create / describe operand graph inputs) | KEEP-read · **FORBID-as-Lace-store** · **FM-Webnn3** |
| **P-N4** | M-N4 Operators / op graph (operator catalogue · connect ops into graph) | KEEP-read · **FORBID-as-Lace-WORD** · FORBID-as-Core-write · **FORBID-as-WGSL-conflation** · **FM-Webnn5 · FM-Webnn7** |
| **P-N5** | M-N5 Compilation / build (`build` → MLGraph; at-most-one-graph hygiene) | KEEP-read · **FORBID-as-Lace-strand** · FORBID-as-Core-write · FORBID-as-Core · **FM-Webnn1 · FM-Webnn9** · **D7** cross-link |
| **P-N6** | M-N6 Execution / dispatch (`dispatch` · ML task source · permissions `"webnn"`) | KEEP-read · **FORBID-as-emission-rule** · **SILENT-for-Lace-append** · **FM-Webnn4** · **D7** cross-link |
| **P-N7** | M-N7 MLTensor / buffers / exportToGPU (read·write·destroy · GPUBuffer bridge cite) | KEEP-read · **FORBID-as-Lace-store** · **PROPOSAL-only** · FORBID-as-WebGPU-conflation · **FORBID** accept-GAP / fill-GAP · **FM-Webnn3 · FM-Webnn6 · FM-Webnn9** |
| **P-N8** | M-N8 Error / validation vs Lace append (`opSupportLimits` / validation / async fail paths ≠ Lace cut) | KEEP-read · **SILENT-for-Lace-append** · **FORBID-as-emission-rule** · PAGE H/X SILENT mesh |
| **P-N9** | M-N9 Security / privacy boundary (§3–5 threat / privacy / a11y · §5.3 WebGPU comparison) | KEEP-read · **FORBID-as-Core-write** · **FORBID-as-WebGPU-conflation** · **FM-Webnn6 · FM-Webnn8** · PAGE X |

Hard fence rules (execute must enforce — **HOST-NN keep-outs**, not GPUBuffer/submit clones):

- **P-N1** fence: `createContext` / `MLContext` / backends are host-NN acquire — **not** Graphic D / lace cord; `createContext(GPUDevice)` is companion hook only (**FORBID-as-WebGPU-conflation**); no POINTER word in fence.  
- **P-N2** fence: `MLGraphBuilder` / `input`/`constant` are graph factory — **not** Lace Core constructor; FORBID-as-Lace-strand + FORBID-as-Core-write under fence; **D7** cross-link.  
- **P-N3** fence: `MLOperand` / descriptors are graph edges — **not** Lace strand / append; FORBID-as-Lace-store under fence.  
- **P-N4** fence: operators / op catalogue are host-NN math — **not** Lace WORD / WGSL entry points; FORBID-as-Lace-WORD + FORBID-as-WGSL-conflation under fence.  
- **P-N5** fence: `build` → `MLGraph` is compiled immutable graph — **not** lace cord; FORBID-as-Lace-strand under fence; **D7** cross-link.  
- **P-N6** fence: `dispatch` / ML task source are host schedule — **not** Φ / POINTER when; FORBID-as-emission-rule + SILENT under fence; **no POINTER word inside fence**; **D7** cross-link.  
- **P-N7** fence: `MLTensor` / `exportToGPU` are host tensors / bridge cite — **not** Lace store; **not** GPUBuffer identity; PROPOSAL-only + FORBID accept-GAP under fence.  
- **P-N8** fence: validation / `opSupportLimits` are host hygiene — **not** Lace cut / Φ gate; SILENT under fence.  
- **P-N9** fence: §3–5 / §5.3 are platform threat/privacy text — **not** Lace law / WebGPU identity / wasm64 swap; FORBID-as-Core-write under fence.  
- **Overview** fence: Core / Φ / WebGPU Device·Queue identity / WGSL swap / wasm64 ISA swap marked FORBIDDEN off-board; emission `[GAP]`.

### P4-X — Rigor matrix (required · primary steward deliverable)

Prefer locus: **clipboard** Pass 4 section (+ one-line pointer from ascii). Columns:

`overview node · P-N* · M-N* · stamp · Implements OK · Fence OK (Spec-only; no POINTER word) · Stamp OK · False-friend fence OK · Overview attach OK · PASS/FIX`

**Rows (blocking):**

- All **M-N1…M-N9 / P-N1…P-N9** (9)  
- Overview spine nodes (context → builder → operands → operators → build → dispatch → tensor/export → validation → security · forbidden Core/Φ/WebGPU/WGSL/wasm64 exit)

**Special gates (must not rubber-stamp):**

| Gate | Why |
|---|---|
| **P-N1 / M-N1** · **FM-Webnn2 · FM-Webnn6** | Context/device ≠ Graphic D; createContext(GPUDevice) ≠ Device identity |
| **P-N2 / P-N5 / M-N2 / M-N5** · **FM-Webnn1 · FM-Webnn9** | Builder/MLGraph ≠ lace cord / Core constructor; **D7** cross-link |
| **P-N3 / M-N3** · **FM-Webnn3** | Operand/tensor ≠ strand/store — highest store false-friend risk |
| **P-N4 / M-N4** · **FM-Webnn5 · FM-Webnn7** | Operators ≠ WORD; ≠ WGSL |
| **P-N6 / M-N6** · **FM-Webnn4** | `dispatch` ≠ Φ — highest emission false-friend risk |
| **P-N7 / M-N7** · **FM-Webnn3 · FM-Webnn6 · FM-Webnn9** | Tensor/export ≠ store; ≠ Buffer identity; ≠ accept GAP |
| **P-N8 / M-N8** | Validation ≠ Lace cut (SILENT) |
| **P-N9 / M-N9** · **FM-Webnn6 · FM-Webnn8** | §5.3 ≠ WebGPU identity; ≠ wasm64 |
| **Overview WebGPU exit** · **FM-Webnn6** | WebNN ≠ Device/Queue swap |
| **Overview WGSL exit** · **FM-Webnn7** | WebNN ≠ shader-lang swap |
| **Overview wasm64 exit** · **FM-Webnn8** | WebNN ≠ compile-target swap |
| **No POINTER-in-fence** | every fence audited |
| **No invent Φ in fences** | stamps under fences only |

Scoring: every cell Y → **PASS**; else **FIX** with exact edit target (ascii fence / stamp line / caption / overview). Any FIX must be resolved in the execute pass. P3-M YES×9 is **baseline only** — Pass 4 re-walks Implements and fence hygiene.

#### Plan-time contested seeds (execute must score; do not fix in plan commit)

| Seed | Contested finding (plan skim) | Likely FIX locus |
|---|---|---|
| Ascii absent | No `webnn-ascii-machinery.md` yet | create at execute (whole artifact) |
| Panel cite | Mechanisms still say “future P-N*” | mechanisms status one-liner + panel cites → P-N* |
| Fence POINTER | Risk of Lace tokens leaking into fences if steward copies stamp text inside | hard audit all 9 fences + overview |
| P-N2/P-N5/P-N6 / D7 | Must cross-link Pass 2 D7 without rewriting D7 | P-N2 / P-N5 / P-N6 caption / Implements |
| P-N7 export | PROPOSAL-only + FORBID accept-GAP must appear under fence, not as Core accept | P-N7 stamp line |
| Overview attach | Each P-N* must appear on singular SOURCE MACHINERY board | overview + P4-X Overview column |
| FM naming | Authority is **FM-Webnn1…9** (not FM-Wgpu* / FM-Wgsl* / FM-W* / FM-T*) | panel false-friend rows |
| Host/WGSL/wasm exits | FORBID-as-WebGPU-conflation + FORBID-as-WGSL-conflation + FORBID-as-compile-target-swap must appear on overview | overview stamp line |
| Stamp invent | Must not invent stamps beyond mechanisms legend; KEEP-read-as-host-NN-API stands | stamp legend copy-check |
| GPU keep-out clone | Must not paste GPUBuffer/`queue.submit`/canvas morals into host-NN fences | fence glyph audit vs M-N* |

These seeds are **not** executed fixes — they seed P4-X rows.

### Cross-walk table (required)

`P-N* | M-N* | stamp | PAGE | FM-Webnn* | projection/hologram | webgpu | wgsl | wasm64 | emission`

Suggested (execute confirms from P3-M):

| P | M | PAGE | FM | Emission |
|---|---|---|---|---|
| P-N1 | M-N1 | B | FM-Webnn2 · FM-Webnn6 | `[GAP]` |
| P-N2 | M-N2 | C | FM-Webnn1 · FM-Webnn9 (+ D7) | `[GAP]` |
| P-N3 | M-N3 | D | FM-Webnn3 | `[GAP]` |
| P-N4 | M-N4 | E | FM-Webnn5 · FM-Webnn7 | `[GAP]` |
| P-N5 | M-N5 | C | FM-Webnn1 · FM-Webnn9 (+ D7) | `[GAP]` |
| P-N6 | M-N6 | F | FM-Webnn4 (+ D7) | `[GAP]` |
| P-N7 | M-N7 | D | FM-Webnn3 · FM-Webnn6 · FM-Webnn9 | `[GAP]` (FORBID fill) |
| P-N8 | M-N8 | B+H | PAGE H/X SILENT mesh | `[GAP]` |
| P-N9 | M-N9 | G | FM-Webnn6 · FM-Webnn8 · PAGE X | `[GAP]` |

### Waves B–D

One-line deferred seeds only (same as mechanisms file). **No** full panels this pass. **No** Pass 5 Order Proposal yet. **No** Pass 6 deep diagram audit yet.

### ASCII standard

Monospace fences; ≤76 cols; reverse-walkable to M-N algorithm steps; stamp **under** fence; **Spec/host-NN labels only inside fence**; **no POINTER word inside any diagram fence**; Core/Φ/WebGPU Device·Queue identity / WGSL / wasm64 ISA off overview board.

---

## Clipboard / mechanisms thin edits (execute only)

On `webnn-clipboard.md`:

1. **Pass 4 receipt** — EXECUTED, path to ascii file, panel count P-N1…P-N9, P4-X verdict, emission `[GAP]`  
2. **P4-X matrix** (if not only in ascii)  
3. Optional one-liner under P3-M: “Pass 4 ASCII panels P-N1…P-N9 → webnn-ascii-machinery.md”  
4. Do **not** rewrite PAGE morals, D1–D6, FM-Webnn*, D7, or P3-M teeth  

On `webnn-mechanisms.md`:

- Optional status one-liner — “Pass 4 ASCII: see webnn-ascii-machinery.md (P-N1…P-N9). Algorithms unchanged.”  
- Optional panel-cite field updates: **future P-N\*** → **P-N\***  
- Do **not** rewrite algorithm bodies

---

## Tickets

### T0 — Claim / base

Held at plan (`Grok-webnn-pass4-plan` · BASE `77b6be6`). Before execute: `git pull --ff-only` (or rebase as steward chooses) · refresh claim · agent id e.g. `webnn Pass 4 EXECUTE`.

### T1 — Hands + host-NN mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission DRAFT/`[GAP]` → clock/README → clock/wasm (different layer) → hologram → webgpu-* banner (**cite-only**) → wgsl-* banner (**cite-only**) → wasm-spec-3 banner (**cite-only**) → Pass 1–3 clipboard (A–H/X + FM-Webnn* + D7 + P3-M) → M-N1…M-N9 → sibling ASCII sample (webgpu / wgsl opening + one panel).

### T2 — PDF gate

Confirm `refs/local/webnn-crd-20260910.pdf` resolves; SHA-256 = `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`; `git check-ignore`; abort if PDF staged. Light re-sight only if a panel needs a locus pin (§7–8 context/builder · §8.3 dispatch · §8.5–8.8 operands/tensors · §8.9 build/ops · §3–5 security · §5.3 WebGPU comparison).

### T3 — Scaffold `webnn-ascii-machinery.md`

Opening contract, HOST-NN banner, stamp legend, overview placeholder, P-N1…P-N9 stubs, cross-walk stub, P4-X stub. **Create only at execute.**

### T4 — Draw SOURCE MACHINERY overview (Spec/host-NN side; Core/Φ/WebGPU/WGSL/wasm64 off-board)

Spine: context → builder → operands → operators → build → dispatch → tensor/export → validation → security.

### T5 — Draw panels P-N1…P-N9 (Implements match M-N*; stamps match; hard FORBIDs under fences; no POINTER in fences)

### T6 — P4-X rigor matrix + fix any FIX rows (incl. false-friend fences + POINTER-in-fence audit)

### T7 — Cross-walk + Pass 4 receipt · thin mechanisms status · mark plan EXECUTED

### T8 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "webnn Pass 4 EXECUTE"
# commit: webnn-ascii-machinery.md + clipboard receipt/P4-X (+ mechanisms one-liner) + plan EXECUTED
# never stage refs/local/*.pdf
./docs/coord/coord.sh release clipboards "webnn Pass 4 EXECUTE"
```

Ask before push. Do **not** push unless asked.

---

## Execute checklist (when steward says go)

1. Reconcile with `origin/main` · refresh clipboards claim.  
2. T1 Hands + host-NN mesh skim (no Core edits).  
3. T2 PDF gate (no `git add` PDF).  
4. T3 create `docs/clipboards/webnn-ascii-machinery.md` scaffold.  
5. T4 draw SOURCE MACHINERY overview.  
6. T5 draw **P-N1…P-N9** 1:1 with M-N* titles + stamps under fences.  
7. T6 P4-X matrix · fix FIX rows · audit no POINTER in fences.  
8. T7 cross-walk + clipboard Pass 4 receipt · mechanisms thin status.  
9. Mark this plan **EXECUTED**.  
10. `coord.sh check` · commit · release.  
11. **STOP.** Do not push. Do not invent Wave B. Do not write Order Proposal (Pass 5). Do not deep-audit diagrams (Pass 6). Do not touch `src/` / Cargo / webgpu-* / wgsl-* / wasm-spec-3 / emission / law / graphics / clock / hologram / systems-manifest-ascii.

---

## Acceptance tests / success criteria (execute must pass)

1. `webnn-ascii-machinery.md` exists with opening contract, HOST-NN banner, stamp legend, SOURCE MACHINERY overview, **P-N1…P-N9**, cross-walk, P4-X.  
2. Each P-N* cites matching M-N*, implements that card’s steps, matching stamp **under** fence, ≤76-col fence, **Spec/host-NN glyphs only** inside fence; **no POINTER word inside any diagram fence**.  
3. Panel titles 1:1 with M-N*: Context/device · Graph builder · Tensors/operands · Operators/op graph · Compilation/build · Execution/dispatch · MLTensor/export · Error/validation · Security/privacy.  
4. Hard stamps present under fences: P-N1 FORBID-as-Lace-strand + FORBID-as-WebGPU-conflation; P-N2/P-N5 FORBID-as-Lace-strand + Core FORBIDs + **D7**; P-N3 FORBID-as-Lace-store; P-N4 FORBID-as-Lace-WORD + FORBID-as-WGSL-conflation; P-N6 FORBID-as-emission-rule + SILENT + **D7**; P-N7 FORBID-as-Lace-store + PROPOSAL-only + FORBID accept-GAP; P-N8 SILENT; P-N9 FORBID-as-Core-write + FORBID-as-WebGPU-conflation.  
5. Overview keeps Lace Core, Φ, WebGPU Device·Queue identity, WGSL, and wasm64 ISA swap off-board; spine matches M-N1…M-N9; **exactly one** SOURCE MACHINERY overview.  
6. P4-X all PASS (or fixed to PASS this pass) including false-friend fence + no-POINTER-in-fence columns.  
7. Cross-walk M↔P present; P3-M CONFIRM×9 not reopened unless stamp-conflict noted.  
8. No stamp invents POINTER when/arity/adjacency; Φ / emission still `[GAP]`.  
9. M-N* algorithms not rewritten; Pass 1–2 morals / FM-Webnn* / D7 stand; webgpu-* / wgsl-* / wasm-spec-3 / law / graphics / systems-manifest / five-stakes / clock / hologram / `src/` untouched.  
10. PDF never staged.  
11. Pass 4 receipt on webnn clipboard.  
12. Steward refuse tests (below) pass using only panels + stamps + P3-M.

---

## Steward refuse tests

Shoe in hands, or no. With only P-N* + stamps (+ P3-M / M-N* cites), steward must refuse:

1. “MLGraph / MLGraphBuilder is the Lace strand / Graphic D factory” → **P-N2/P-N5** + **FM-Webnn1 · FM-Webnn9** + FORBID-as-Lace-strand.  
2. “MLContext / createContext is Graphic D / Core door” → **P-N1** + **FM-Webnn2** + FORBID-as-Lace-strand.  
3. “MLTensor / operands are a Lace store / append surface” → **P-N3/P-N7** + **FM-Webnn3** + FORBID-as-Lace-store.  
4. “`dispatch` emits POINTER” / “ML task source fills Φ” → **P-N6** + **FM-Webnn4** + FORBID-as-emission-rule; emission `[GAP]`.  
5. “WebNN operators are Lace WORD / Core schema” → **P-N4** + **FM-Webnn5** + FORBID-as-Lace-WORD.  
6. “WebNN is / replaces WebGPU Device·Queue·Buffer” → **P-N1/P-N7/P-N9** + **FM-Webnn6** + FORBID-as-WebGPU-conflation.  
7. “WebNN is / replaces WGSL / shader entry points” → **P-N4** + **FM-Webnn7** + FORBID-as-WGSL-conflation.  
8. “WebNN replaces wasm64 / wasm-spec-3 compile target” → overview off-board + **FM-Webnn8** + FORBID-as-compile-target-swap.  
9. “`exportToGPU` accepts pointer-emission.md / merges shelves” → **P-N7** + **FM-Webnn9** + PROPOSAL-only · FORBID accept-GAP.  
10. “Validation / opSupportLimits is a Lace cut / Φ gate” → **P-N8** + SILENT-for-Lace-append.  
11. “This fence contains Lace POINTER as a WebNN object” → opening contract · Fence OK fail · stamps belong **under** fences.  
12. “GPUBuffer / queue.submit morals apply unchanged here” → wrong shelf; adapt HOST-NN keep-outs only (cite webgpu-* separately).

These panels are CRD **host-NN** procedures drawn for Shadow projection / hologram / host-embed surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, and do not swap WebGPU / WGSL / wasm64.

---

## Success criteria (plan turn — this commit)

1. This file exists at `docs/clipboards/webnn-pass-4-plan.md`.  
2. Status **HELD / NOT EXECUTED**; HOST-NN SPECIAL banner present.  
3. Opening contract requirements · SOURCE MACHINERY spine · **P-N1…P-N9** 1:1 with M-N* · cross-walk · P4-X · tickets · acceptance · steward refuse specified.  
4. Explicit: **Order Proposal = Pass 5**; **deep diagram audit = Pass 6**.  
5. **No** `webnn-ascii-machinery.md` created; **no** clipboard / mechanisms / src product deltas in this commit (plan only + station claim/release).  
6. Clipboards station released after plan commit.  
7. No push. No `src/`. PDF unstaged. Emission `[GAP]`. webgpu-* / wgsl-* / wasm-spec-3 untouched.

---

## Steward test (standing)

Shoe in hands, or no.  
WebNN is the **host-NN inference Web API** Shadow projection / hologram may call, not the lace.  
ASCII maps **CRD procedures**, not Core.  
MLContext/MLGraph/builder are not Graphic D. MLTensor/operands are not the strand or a second store.  
`dispatch` does not emit POINTER. Operators are not WORD.  
`exportToGPU` does not accept emission. Validation is not a Lace cut.  
WebNN is not WebGPU Device/Queue, not WGSL, not the wasm64 compile target.  
Fences stay Spec/host-NN-side; **no POINTER word inside fences**; stamps under fences.  
Φ stays `[GAP]`. No Order Proposal until Pass 5. No deep diagram audit until Pass 6. No `src/` until human-accepted emission.

---

## Plan receipt (plan turn)

| Field | Value |
|---|---|
| Status (plan) | **HELD / NOT EXECUTED** |
| When (plan) | 2026-09-18 ~22:42 PT |
| Station (plan) | clipboards · agent `Grok-webnn-pass4-plan` |
| Claim BASE (plan) | `77b6be6` (= `origin/main` after refresh) |
| Tip at plan | `77b6be6` |
| Artifact created (plan) | this plan only |
| Ascii created (plan) | **No** |
| Order Proposal | deferred **Pass 5** |
| Deep diagram audit | deferred **Pass 6** |
| Emission | `[GAP]` |
| PDF staged | **No** |
| Push | **No** |
