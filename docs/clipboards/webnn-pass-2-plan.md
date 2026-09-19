# WebNN CRD 2026-09-10 — Pass 2 PLAN (leftovers / failure modes / host-NN coherence)

**Status:** **EXECUTED** — D1–D6 (+ D7) on `webnn-clipboard.md`; FM-Webnn1…Webnn9 pinned; no ascii; mechanisms deferred Pass 3+.  
**Station:** clipboards (plan claim: `webnn-pass-2-planner`; execute claim e.g. `webnn Pass 2 EXECUTE`)  
**Base at plan:** claim BASE `abcd14b` (= `origin/main` after refresh; Pass 1 EXECUTED ancestor ~`6be7d27`). Refresh `git pull --ff-only` before any execute.  
**Spec:** *Web Neural Network API* (WebNN) — **W3C Candidate Recommendation Draft, 10 September 2026** · editors Ningxin Hu, Dwayne Robinson (et al.)  
**Clipboard under test:** `docs/clipboards/webnn-clipboard.md`  
**Ancestor:** [`webnn-pass-1-plan.md`](webnn-pass-1-plan.md) (EXECUTED · PAGE A–H, X · P1-R)  
**Templates mirrored (adapt stamps; don’t clone host-GPU or shader-lang morals wholesale):** [`webgpu-pass-2-plan.md`](webgpu-pass-2-plan.md) · [`wgsl-pass-2-plan.md`](wgsl-pass-2-plan.md) · [`wasm-spec-3-pass-2-plan.md`](wasm-spec-3-pass-2-plan.md)  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) · [`clock/wasm/README.md`](../clock/wasm/README.md) · [`hologram/`](../hologram/README.md) · **webgpu-*** Pass 1–5 EXECUTED / Pass 6 HELD (**HOST/GPU companion** — different Spec; **do not edit**) · **wgsl-*** Pass 1–5 EXECUTED / Pass 6 PLAN HELD (**SHADER-LANG companion** — different Spec; **do not edit**) · wasm-spec-3 Pass 1–6 (**wasm64 compile-target** — different layer; **do not disturb**)  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — **not** this shelf’s anti-model PAGE; do not rewrite  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `webnn-*` for all products of this shelf.  
**Emission:** still `[GAP]` · **Push:** **DO NOT PUSH** this plan turn · **no `src/`** · **no mechanism cards / ASCII yet (Pass 3+)**

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webnn-crd-20260910.pdf` |
| Attachment SHA-256 | `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` |
| Pages | **353** · text layer yes · printed ↔ PDF: HTML-print CRD — **PDF one-based** primary (Pass 1 certified) |
| Git | **Never `git add` the PDF** |

Law: WebNN = **HOST-NN Shadow only** · MLGraph ≠ strand · MLTensor ≠ store/append · `dispatch`/execute ≠ Φ · WebNN ≠ WORD · WebNN ≠ WebGPU Device/Queue · WebNN ≠ WGSL · WebNN ≠ wasm64 · builder ≠ Core constructor · `exportToGPU` ≠ identity merge / emission accept · Hands win · `[GAP]` sealed · **FORBID-as-Core-write** · **NON-binding**.

```
pull/ff → claim clipboards → Hands + projection skim (host-NN mesh)
        → open PDF (refs/local; no git add)
        → do NOT redo A–H/X fill or invent emission
        → do NOT create ascii Wave A / mechanisms / src/
        → do NOT edit webgpu-* / wgsl-* / wasm-spec-3 products
        → Pass 2 deltas only: D1–D6 (+ optional D7) on webnn-clipboard.md
        → receipt on webnn clipboard
        → check · commit · release · STOP
```

---

## SPECIAL BANNER — WebNN HOST-NN SPECIAL · Shadow · emission [GAP]

```
+======================================================================+
|  HOST-NN / WebNN SPECIAL — W3C CRD 2026-09-10                        |
|  Pass 2 = leftovers / false-friends / FM-Webnn* / coherence spine.   |
|  Shadow / projection / hologram / host-embed surfaces ONLY.            |
|  Companion to WebGPU (HOST/GPU) and WGSL (SHADER-LANG).              |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA leftovers (FM-W* stay there).    |
|  NOT WebGPU host/GPU leftovers (FM-Wgpu* stay on webgpu shelf).      |
|  NOT WGSL shader-lang leftovers (FM-Wgsl* stay on wgsl shelf).       |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: WebNN as Lace WORD / Core operator / schema language.       |
|  FORBID: MLGraph as strand; MLTensor as store/append; execute/       |
|          dispatch as Phi / POINTER emission.                         |
|  FORBID: conflating WebNN with WebGPU Device/Queue, WGSL, or wasm64.  |
|  FORBID: MLGraphBuilder as Core constructor; operator graph as ops.  |
|  KEEP-read: host-NN inference mechanics for Shadow projection work.  |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Status this commit: EXECUTED — D1–D6 + FM-Webnn* + D7.              |
|  Emission [GAP] sealed.  No mechanism cards / ASCII yet (Pass 3+).   |
+======================================================================+
```

This is **not** another anti-model LLM/theory leftover pass.  
This is **not** wasm-spec-3 **compile-target ISA** hygiene (FM-W\* live on that shelf).  
This is **not** WebGPU **HOST/GPU API** hygiene (FM-Wgpu\* live on that shelf — do **not** clone GPUBuffer/submit FMs wholesale).  
This is **not** WGSL **SHADER-LANG** hygiene (FM-Wgsl\* live on that shelf).  
It is **host-NN inference Web API hygiene**: what this CRD admission is **not** for Lace, numbered **FM-Webnn\*** false friends (strand/store/emission/WORD/WebGPU/WGSL/wasm64/builder lookalikes), and a coherence spine that ties PAGE A–H/X to Hands / projection / hologram / WebGPU companion / WGSL companion / wasm64 layers **without** promoting WebNN into Core, Lace store, WORD, or Φ.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-10 |
| **2** | **Leftovers** — what this shelf is not; ON-TARGET KEEP/FORBID/MAP spine; FM-Webnn\* with PDF pins; Hands/projection/WebGPU/WGSL/wasm64 coherence; source gate cite; sealed |

Same **D1–D6 shape** as WebGPU / WGSL / wasm-spec-3 Pass 2, retargeted to **host-NN false friends** (not GPUBuffer/submit host-GPU morals, not shader module/entry/discard morals, not linear-mem/table/stack ISA morals).

Still **Shadow / Layer III**. Not Core. Not `src/`. Not other reference shelves. No ascii Wave A yet. Mechanisms file stays **deferred** (Pass 3+).

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-host-NN-API / FORBID-\* / PROPOSAL-only / SILENT stamps |
| PDF gate | Present; 353 pp.; text layer; PDF one-based primary; gitignored symlink; SHA matches |
| Per-page KEEP/FORBID | Already on A–H and X cross-cut + steward refuse (1)–(9) |
| Five-stakes | **Out of scope** for this shelf (default skip; not an anti-model PAGE) |
| Ascii Wave A / mechanisms | **Not started** (Pass 3+ / Pass 4 shape later unless human asks) |
| webgpu-* products | Untouched (cite-only; Pass 1–5 EXECUTED · Pass 6 HELD) |
| wgsl-* products | Untouched (cite-only; Pass 1–5 EXECUTED · Pass 6 PLAN HELD) |
| wasm-spec-3 products | Untouched (cite-only; Pass 1–6 EXECUTED · wasm64 seal) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| clock / hologram | Shadow surfaces may later cite host-NN — not amended |

Pass 2 does **not** re-walk every PAGE unless a FM row lacks a pin or a stamp-tighten delta is required.

---

## What is still flat / missing (Pass 1 thin / open → Pass 2 deltas)

1. **No “what this clipboard / shelf is not” strip** — readers can mistake host-NN admission for Lace WORD/schema, strand/store law, emission rules, WebGPU Device/Queue swap, WGSL swap, wasm64 swap, or permission to treat `dispatch`/`exportToGPU`/builder as Φ/Core constructor.  
2. **No compact ON-TARGET / KEEP / FORBID / MAP spine strip** on the clipboard itself (per-page cards exist; Pass-2 spine card does not).  
3. **No numbered failure-mode table (FM-Webnn\*)** with PDF pins (PAGE X false friends are narrative only; Pass 1 steward refuse lacks numbered builder≠Core-constructor / task-source≠scheduler rows as FM).  
4. **No interface-coherence paragraph** stating which PAGE outputs may sit beside Hands / projection / hologram / WebGPU companion / WGSL companion / wasm64 (read-as-host-NN-API only; nothing writes Graphic D / strand / WORD / Φ).  
5. **Source gate** is in Pass 1 receipt (P1-R) — Pass 2 should **cite** it, not claim PDF absent.  
6. **Concrete thin spots left by Pass 1 admission:**
   - **TOC / cite-as-needed gaps:** Ch.2 Use cases · Ch.6 Ethical Considerations · Ch.10 Examples · Ch.12–13 Appendices / Acknowledgements — never dedicated PAGEs; Pass 2 must state they stay cite-as-needed (not new PAGEs, not Core use-case law).  
   - **Under-pinned chapters:** PAGE E Operators pin is broad (`§8.9.5+ from PDF ~68+`); PAGE H Algorithms (`§9 PDF 287`) thin vs Changes pin; no FM-level pin separating operator catalogue vs emulation (§11 PDF 295) as FORBID-as-Lace-WORD.  
   - **Stamp holes:** MLGraphBuilder ≠ Core constructor · ML task source ≠ Lace scheduler · `dispatch` “provides no completion signal” ≠ Φ gate are morals/narrative, not numbered FM rows with deadbolts.  
   - **Companion-WebGPU / WGSL / wasm boundaries:** FORBID-as-WebGPU-conflation / FORBID-as-WGSL-conflation / FORBID-as-compile-target-swap on X exist, but no MAP strip tying WebNN PAGE D `exportToGPU` ↔ WebGPU Buffer bridge (cite-only; shelves stay distinct) or WebNN PAGE E ops ↔ WGSL builtins (cite-only).  
   - **Operator / execution thin:** PAGE F `dispatch` + task source pinned; no FM row that async compilation/execution / permissions-policy `"webnn"` ≠ Lace law / Φ gate as numbered hygiene.  
   - **Builder coverage:** PAGE C pins `build` PDF 67; Pass 2 must pin builder ctor / “at most one MLGraph” as FORBID-as-Lace-strand / FORBID-as-Core-write without inventing Core maps.  
7. **Optional:** one Shadow constructive miniature (e.g. builder → build → dispatch lifecycle sketch) stamped **FORBID-as-Core** / **FORBID-as-emission-rule** / **SILENT-for-Lace-append**.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1 FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-WebGPU-conflation / FORBID-as-WGSL-conflation / FORBID-as-compile-target-swap / PROPOSAL-only / SILENT | Pass 1 confirmed |
| Promote MLContext / MLGraph / device selection into lace cord / Graphic D / Core door | PAGE B/C moral |
| Promote MLTensor / operands / constant tensors into Lace store / append surface | PAGE D moral |
| Treat `dispatch` / graph execute / ML task source as POINTER emission / Φ | PAGE F moral |
| Treat WebNN operators / graphs as Lace WORD / Core ops | PAGE E moral |
| Treat MLGraphBuilder as Lace Core constructor / Graphic D factory | PAGE C moral |
| Claim WebNN replaces / is the WebGPU Device·Queue·Buffer host API | FORBID-as-WebGPU-conflation |
| Claim WebNN replaces / is WGSL / shader-lang | FORBID-as-WGSL-conflation |
| Claim WebNN replaces wasm64 / wasm-spec-3 compile target | FORBID-as-compile-target-swap |
| Treat `exportToGPU` as identity merge or as accepting `pointer-emission.md` | PROPOSAL-only / FORBID |
| Treat security/privacy/a11y text as Lace law / AGENTS rewrite | PAGE G moral |
| Treat broadcasting / Changes algorithms as Lace append scheduler | PAGE H moral |
| Create `webnn-ascii-machinery.md` / Wave A panels | **no ascii yet** (Pass 3+) |
| Create `webnn-mechanisms.md` / mechanism cards | **deferred Pass 3+** |
| Amend webgpu-* / wgsl-* / wasm-spec-3 clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes | wrong stations / default skip |
| Invent Core maps from WebNN → five-stakes / reason-model | no invent Φ; no invent Core maps |
| Add `src/`, `Cargo.toml`, or invent emission via host-NN story | Implementation Law |
| Git-add PDF · push without ask | standing rules |
| Treat `docs/clock/wasm/README.md` bake or hologram lookrefs as this CRD’s Core authority | Shadow ≠ Core |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals, wasm FM-W\* ISA morals, WebGPU FM-Wgpu\* host-GPU morals, or WGSL FM-Wgsl\* shader morals onto this shelf | wrong false-friend class |
| Open new PAGEs for Ch.2 / Ch.6 / Ch.10 / Ch.12–13 | cite-as-needed only |

---

## Pass 2 product (deltas D1–D6)

Edit **only** `docs/clipboards/webnn-clipboard.md` by default.  
Do **not** create ascii / mechanisms files this pass.  
Do **not** amend webgpu-* / wgsl-* / wasm-spec-3 products.  
Do **not** invent Core maps (five-stakes / reason-model) from WebNN.

### D1 — What this clipboard / shelf is not

**Execute acceptance:** short sealed list present on `webnn-clipboard.md` covering at least:

- Not Core / not a sixth graphic / not systems-manifest-ascii  
- Not `pointer-emission.md` / not a Φ fill / not acceptance of emission by calling WebNN  
- Not Lace’s 1D strand, star index, or Graphic D scheduler  
- Not permission to treat **MLGraph / MLContext / device selection** as lace cord / Graphic D / Core door  
- Not permission to treat **MLTensor / operands / constant tensors** as Lace store / append surface  
- Not permission to treat **`dispatch` / graph execute / ML task source** as POINTER when / arity / adjacency / Φ  
- Not permission to treat **WebNN operators / graphs** as Lace WORD / Core ops  
- Not permission to treat **MLGraphBuilder** as Lace Core constructor / Graphic D factory  
- Not a **WebGPU Device/Queue/Buffer** host-API swap (webgpu-* shelf stands; different Spec; `exportToGPU` bridge ≠ identity)  
- Not a **WGSL / shader-lang** swap (wgsl-* shelf stands; different Spec)  
- Not a **wasm64 compile-target** swap (wasm-spec-3 shelf stands; different layer)  
- Not permission to treat **security / privacy / a11y** text as Lace law / AGENTS rewrite  
- Not permission to treat **broadcasting / Changes / algorithms** as Lace append scheduler / Φ gate  
- Not a rewrite of clock / hologram / AGENTS Implementation Law  
- Not permission to add `src/` before emission acceptance  
- Not an anti-model LLM leftover shelf; not an ISA leftover shelf; not a host/GPU leftover shelf; not a shader-lang leftover shelf (FM-W\* / FM-Wgpu\* / FM-Wgsl\* stay home)  
- Not new PAGEs for Ch.2 Use cases / Ch.6 Ethics / Ch.10 Examples / Ch.12–13 Appendices (cite-as-needed only)

### D2 — ON-TARGET / KEEP / FORBID / MAP strip

**Execute acceptance:** compact spine card on the **webnn clipboard** (not five-stakes). Must match Pass 1 morals:

| KEEP-read-as-host-NN-API | FORBID |
|---|---|
| CRD 2026-09-10 identity / programming-model overview (PAGE A) | Graph construction/execution ⇒ Lace append order (A) |
| Context / device selection / `createContext` / `opSupportLimits` (PAGE B) | MLContext / device hint ⇒ lace cord / Graphic D / Core door (B; FORBID-as-Lace-strand); `createContext(GPUDevice)` ⇒ Device identity (B; FORBID-as-WebGPU-conflation) |
| MLGraph / MLGraphBuilder / `build` (PAGE C) | MLGraph ⇒ Lace strand / Graphic D; builder ⇒ Core constructor (C; FORBID-as-Lace-strand / FORBID-as-Core-write) |
| MLOperand / MLTensor / create·read·write / `exportToGPU` (PAGE D) | MLTensor/operands ⇒ Lace store/append; export ⇒ Buffer identity / accept emission (D; FORBID-as-Lace-store / FORBID-as-WebGPU-conflation / PROPOSAL-only) |
| Operators / catalogue / emulation (PAGE E) | Operator graph ⇒ Lace WORD / Core ops; ops ⇒ WGSL entry points (E; FORBID-as-Lace-WORD / FORBID-as-WGSL-conflation) |
| `dispatch` / task source / permissions (PAGE F) | `dispatch`/execute/task source ⇒ POINTER when/arity/adjacency / Φ (F; FORBID-as-emission-rule) |
| Security / privacy / a11y / §5.3 WebGPU comparison (PAGE G) | WebNN security text ⇒ Lace law / AGENTS; §5.3 ⇒ identity merge (G; FORBID-as-Core-write / FORBID-as-WebGPU-conflation) |
| Algorithms / Changes (PAGE H) | Broadcast/cast/Changes ⇒ Lace append scheduler / Φ gate (H; SILENT-for-Lace-append) |
| Host-NN as Shadow projection API (PAGE X) | WebNN ⇒ WebGPU Device/Queue · WGSL · wasm64 swap (X; FORBID-as-WebGPU-conflation / FORBID-as-WGSL-conflation / FORBID-as-compile-target-swap) |

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

**Execute acceptance:** table on clipboard: **ID · Misread · Hands / law deadbolt · PDF pin** (Pass 1 reuse or fresh `pdftotext -f N -l N -layout`).  
Each row **must** include PDF one-based pin (printed if discoverable; else PDF-only with note) or `[OPEN]` with cause.  
**Family name:** **FM-Webnn\*** (consistent kebab; do not mix FM-Wnn\* / FM-Wgpu\* / FM-Wgsl\* ids on this shelf).

| ID | Misread seed (required themes) | Deadbolt seed |
|---|---|---|
| **FM-Webnn1** | **MLGraph** ⇒ Lace **1D strand** / Graphic D / Core graph | FORBID-as-Lace-strand · PAGE C · MLGraph PDF **50** · builder overview PDF **21–22** |
| **FM-Webnn2** | **MLContext / device selection / `createContext`** ⇒ **Core / Graphic D** / lace cord / Core door | FORBID-as-Lace-strand · FORBID-as-Core-write · PAGE B · Device Selection PDF **23** · MLContext IDL PDF **29–30** · `createContext` PDF **28–29** |
| **FM-Webnn3** | **MLTensor / operands / constant tensors** ⇒ Lace **store / append surface** / second strand | FORBID-as-Lace-store · PAGE D · Operand PDF **51–53** · MLTensor PDF **57–58** · `createTensor` PDF **35** |
| **FM-Webnn4** | **`dispatch` / graph execute / ML task source** ⇒ POINTER **when** / arity / adjacency (**Φ** fill) | FORBID-as-emission-rule · pointer-emission `[GAP]` · PAGE F · `dispatch` PDF **32–33** · Task Source PDF **25** |
| **FM-Webnn5** | **WebNN operators / operator graph** ⇒ Lace **WORD** / Core operator set / schema language | FORBID-as-Lace-WORD · FORBID-as-Core-write · PAGE E · §7.3 PDF **24–25** · ops from PDF **~68+** · Emulation PDF **295** |
| **FM-Webnn6** | **WebNN MLContext / Graph / Tensor** ⇒ **WebGPU Device / Queue / Buffer** (identity merge) | FORBID-as-WebGPU-conflation · PAGE B/D/G/X · `createContext(GPUDevice)` PDF **28–29** · `exportToGPU` PDF **42–43** · §5.3 WebGPU Comparison PDF **20** · cite webgpu-* (different Spec) |
| **FM-Webnn7** | **WebNN** ⇒ **WGSL / shader-lang** / operators ⇒ shader entry points | FORBID-as-WGSL-conflation · PAGE E/X · §5.3 “does not intrinsically support custom shader authoring” PDF **20** · cite wgsl-* (different Spec) |
| **FM-Webnn8** | **WebNN** ⇒ **wasm64 compile target** / replaces wasm-spec-3 shelf | FORBID-as-compile-target-swap · PAGE X · cite wasm-spec-3 Pass 1–6 (different layer) |
| **FM-Webnn9** | **MLGraphBuilder** ⇒ Lace **Core constructor** / Graphic D factory; **`exportToGPU`** ⇒ accept `pointer-emission.md` / merge shelves | FORBID-as-Core-write · FORBID-as-Lace-strand · PROPOSAL-only · FORBID accept-GAP · PAGE C/D · Builder PDF **62** · `build` PDF **67** · `exportToGPU` PDF **42–43** |

Pin loci (Pass 1 reuse — verify / tighten on execute): A Masthead PDF 1 · TOC 3–7 · §1 PDF 8 · §7.1 PDF 21; B Device 23 · createContext 28–29 · MLContext 29–30 · opSupportLimits 46; C MLGraph 50 · Builder 62 · build 67; D Operand 51–53 · MLTensor 57–58 · createTensor 35 · exportToGPU 42–43; E §7.3 PDF 24–25 · ops ~68+ · Emulation 295; F dispatch 32–33 · Task Source 25 · Permissions 25; G §3–5 PDF 15–20 · §5.3 PDF 20; H Algorithms 287 · Changes 299; X steward refuse + webgpu/wgsl/wasm cite-only. Tighten PAGE E broad ops pin only if an FM row needs a sharper locus — do not rewrite PAGE morals.

### D4 — Interface coherence (Hands + projection + hologram + WebGPU companion + WGSL companion + wasm64)

**Execute acceptance:** one short paragraph (plus optional bullet list):

- **Only** KEEP-read-as-host-NN-API outputs may sit **beside** Lace: WebNN CRD as the **host-NN inference Web API** Shadow projection / hologram / host-embed may call.  
- **Nothing** in A–H/X writes Graphic D, strand/, word/, pointer/, or fills `pointer-emission.md`.  
- **webgpu-*** = **HOST/GPU Web API** companion — cite-only; WebNN does **not** replace Device/Queue/Buffer (FM-Webnn6). `exportToGPU` is a **bridge cite**, not identity; do **not** edit webgpu-*.  
- **wgsl-*** = **SHADER-LANG** companion — cite-only; WebNN does **not** replace WGSL / shader entry points (FM-Webnn7). Do **not** edit wgsl-*.  
- **wasm-spec-3** = **compile-target ISA / wasm64 seal** — cite-only; WebNN does **not** replace it (FM-Webnn8).  
- **clock/** and **hologram/** are **Shadow surfaces** that may later *cite* host-NN — glyphs ≠ schema; they do not become Core authority for this CRD or vice versa.  
- **`docs/clock/wasm/README.md`** is Shadow **projection bake** — **different layer** from this host-NN shelf; not Spec authority.  
- Lace↔host-NN / `exportToGPU` sketches stay **PROPOSAL-only**; calling WebNN or exporting tensors does **not** accept emission.  
- Ch.2 / Ch.6 / Ch.10 / Ch.12–13 remain cite-as-needed — not Core use-case/ethics/examples law, not new PAGEs.  
- `[GAP]` remains. Shoe in hands, or no.  
- **Do not invent Core maps** from this clipboard into five-stakes or reason-model.

### D5 — Source gate (cite Pass 1)

**Execute acceptance:** do **not** narrate PDF-absent. Cite Pass 1 receipt (P1-R):

- PDF **present** at `refs/local/webnn-crd-20260910.pdf`  
- **353** pp.; text layer; PDF one-based primary (no clear printed↔PDF offset)  
- SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`  
- Title Web Neural Network API · W3C CRD **10 September 2026** · URL `https://www.w3.org/TR/2026/CRD-webnn-20260910/`  
- Never `git add` the PDF (gitignore `refs/local/` + `*.pdf`)  
- Pass 1 products: clipboard PAGE A–H, X · **no** ascii Wave A · mechanisms deferred · execute ~`186ba06` / station release tip ~`6be7d27` (rebase-aware: cite P1-R fields on clipboard)

### D6 — Sealed

**Execute acceptance:** repeat sealed list: invent Φ · promote MLGraph as strand · promote MLContext/device as Graphic D · promote MLTensor as Lace store · use dispatch/execute/task source as emission · treat operators as WORD · treat builder as Core constructor · swap WebNN for WebGPU Device/Queue · swap WebNN for WGSL · swap WebNN for wasm64 · treat exportToGPU as identity merge / emission accept · treat security text as Lace law · treat algorithms/Changes as Lace append · create ascii Wave A / mechanisms · amend webgpu-* / wgsl-* / wasm-spec-3 / map/law/graphics · invent Core maps into five-stakes/reason-model · `src/` · git-add PDF · pretend OCR without the file · clone LLM / ISA / host-GPU / shader-lang morals onto this shelf · open new PAGEs for Ch.2/6/10/12–13.

### Optional D7 — Constructive miniature (Shadow only, ≤30 min)

**Pattern exists** on WebGPU Pass 2 (encoder→submit) and WGSL Pass 2 (module lifecycle) — include if ≤30 min and it fits; else defer with note under Pass 2 receipt.  
If time: **one** numbered Spec-faithful sketch, stamped **FORBID-as-Core** + **FORBID-as-emission-rule** + **SILENT-for-Lace-append** (+ **PROPOSAL-only** if export/bridge-flavored):

| Choice | Spec locus (seed) | Stamp |
|---|---|---|
| **(a)** Graph lifecycle miniature: MLGraphBuilder → `input`/`constant` → `build` → `dispatch` (encode/execute path only) | PAGE C/F · Builder PDF **62** · `build` PDF **67** · `dispatch` PDF **32–33** | FORBID-as-Lace-strand · FORBID-as-emission-rule · not POINTER when-rule · builder ≠ Core constructor |
| **(b)** `exportToGPU` bridge sketch (tensor → GPUBuffer cite) | PAGE D · PDF **42–43** · cite webgpu Buffer (do not edit webgpu-*) | PROPOSAL-only · FORBID-as-WebGPU-conflation · FORBID accept-GAP |

Mark choice points `[OPEN]` where the CRD is silent (e.g. completion signaling — Spec says `dispatch()` provides no completion signal). **Skip entirely** rather than invent steps the Spec does not state. Not a Graphic D scheduler. Not `src/`. Prefer **(a)** as default host-NN command-path miniature (mirrors WebGPU Pass 2 preferring command-path (a)).  
**Coherence check:** clipboard ↔ Hands / projection / hologram / companion shelves only — **do not invent** clipboard ↔ five-stakes / reason-model Core maps.

---

## Coherence with Pass 1 PAGE spine (standing rule)

| PAGE | Pass 2 use |
|---|---|
| A | D2 MAP entry; KEEP-read-as-host-NN-API identity |
| B | **FM-Webnn2**, **FM-Webnn6** (createContext(GPUDevice) seed) |
| C | **FM-Webnn1**, **FM-Webnn9** (builder) · D7(a) seed |
| D | **FM-Webnn3**, **FM-Webnn6** (exportToGPU), **FM-Webnn9** · D7(b) seed |
| E | **FM-Webnn5**, **FM-Webnn7** |
| F | **FM-Webnn4** · D7(a) seed |
| G | **FM-Webnn6** (§5.3) · FORBID-as-Core-write (≠ Lace law) |
| H | D2 MAP SILENT; algorithms/Changes ≠ append |
| X | **FM-Webnn6**, **FM-Webnn7**, **FM-Webnn8** + steward refuse mesh; SILENT; Φ `[GAP]` |

**Default:** PAGE A–H/X morals **read-only**. Open a stamp-tighten edit only if an FM pin forces a clearer FORBID line — never a PAGE rewrite, never new PAGEs, never ascii Wave A, never mechanism cards.

---

## Tickets

### T0 — Claim / base

Held at plan by `webnn-pass-2-planner` (BASE `abcd14b`; earlier claim was `6be7d27`, clock turned). Before execute: `git pull --ff-only` · refresh claim if clock turned · agent id e.g. `webnn Pass 2 EXECUTE`.

### T1 — Hands + projection skim

Shoe → graphics A–D → systems-manifest (+ know Core ASCII is separate) → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → clock/README + hologram notes (Shadow) → clock/wasm README (different layer) → **webgpu** Pass 1 banner / relation (**cite-only**; do not edit) → **wgsl** Pass 1 banner / relation (**cite-only**; do not edit) → wasm-spec-3 Pass 1 banner (**cite-only**; do not edit) → Pass 1 clipboard → this plan → PDF.

### T2 — PDF gate

Confirm `refs/local/webnn-crd-20260910.pdf` resolves; `git check-ignore`; abort if PDF staged; SHA match Pass 1 (`e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc`); `pdfinfo` → Pages 353.

### T3 — Write D1–D2–D4–D5–D6

Prose deltas on **webnn-clipboard.md only**; no A–H/X moral rewrite. Prefer append after Pass 1 receipt / PAGE X (or a dedicated Pass 2 section after PAGE X — match webgpu/wgsl clipboard Pass 2 layout if present; else after PAGE X / before “Explicitly not this pass”).

### T4 — FM-Webnn\* hunt (D3)

Reuse Pass 1 pins; `pdftotext` only where a row lacks a pin (esp. **FM-Webnn5** ops catalogue sharpen · **FM-Webnn9** builder “at most one MLGraph” eye). ≤2-line eye-quote per new pin.

### T5 — Five-stakes / reason-model (default **skip**)

Out of scope. Only if human explicitly asks: one receipt line that webnn Pass 2 deltas landed; **do not** rewrite five-stakes pages; **do not invent** Core maps into reason-model.

### T6 — Optional D7 miniature

Default **include if ≤30 min**; else defer with note under Pass 2 receipt. Choice (a) or (b) above — not both unless trivial. Prefer (a).

### T7 — Ascii / mechanisms / webgpu / wgsl / wasm-spec-3 (default **skip**)

No ascii Wave A. No mechanisms file. No webgpu-* edits. No wgsl-* edits. No wasm-spec-3 edits. Receipt: “no ascii; no mechanisms; webgpu-* untouched; wgsl-* untouched; wasm-spec-3 untouched.”

### T8 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "webnn Pass 2 EXECUTE"
# commit: clipboard D1–D6 (+ D7 if any) + this plan marked EXECUTED
# never stage refs/local/*.pdf
./docs/coord/coord.sh release clipboards "webnn Pass 2 EXECUTE"
```

Ask before push. **This plan turn does not execute.**

---

## Acceptance tests (execute must pass)

1. Pass 2 receipt on `webnn-clipboard.md`.  
2. D1–D6 present; D5 says PDF **present** (not absent).  
3. FM-Webnn1…Webnn9 each have Hands/law deadbolt + PDF pin (or `[OPEN]` with cause).  
4. Required themes covered: MLGraph≠strand · MLContext≠Core/Graphic D · MLTensor≠store/append · dispatch/execute≠Φ · operators≠WORD · WebNN≠WebGPU Device/Queue · WebNN≠WGSL · WebNN≠wasm64 · builder≠Core constructor / exportToGPU≠accept emission.  
5. No stamp invents POINTER when/arity/adjacency or fills Φ; no invent Core maps into five-stakes/reason-model.  
6. Pass 1 FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-WebGPU-conflation / FORBID-as-WGSL-conflation / FORBID-as-compile-target-swap / PROPOSAL-only / SILENT not softened.  
7. law / graphics / systems-manifest / five-stakes / webgpu-* / wgsl-* / wasm-spec-3 / clock / hologram untouched (unless T5 explicitly opened); PDF never staged; no `src/`; **no ascii Wave A**; **no mechanism cards**.  
8. If D7 present: miniature is Shadow-only with FORBID-as-Core + FORBID-as-emission-rule (and FORBID-as-WebGPU-conflation / PROPOSAL-only as stamped).  
9. Steward refuse tests (below) answerable from D2+D3 alone.  
10. HOST-NN SPECIAL banner retained; relation WebNN ≠ WebGPU Device/Queue ≠ WGSL ≠ wasm64 ≠ Core remains explicit; Ch.2/6/10/12–13 stay cite-as-needed (no new PAGEs).

---

## Steward refuse tests (must remain rejectable)

Shoe in hands, or no.

1. “MLGraph is the Lace strand / Graphic D” → **FORBID-as-Lace-strand** (FM-Webnn1).  
2. “MLContext / device selection is Graphic D / Core door” → **FORBID-as-Lace-strand** (FM-Webnn2).  
3. “MLTensor is the Lace store / append surface” → **FORBID-as-Lace-store** (FM-Webnn3).  
4. “`dispatch` / graph execute emits POINTER” / “fills Φ” → **FORBID-as-emission-rule** (FM-Webnn4).  
5. “Operator graph = Lace Core ops / WORD” → **FORBID-as-Lace-WORD** (FM-Webnn5).  
6. “WebNN MLContext is WebGPU Device/Queue” → **FORBID-as-WebGPU-conflation** (FM-Webnn6).  
7. “WebNN is WGSL / shader-lang” → **FORBID-as-WGSL-conflation** (FM-Webnn7).  
8. “WebNN replaces wasm64 / wasm-spec-3 compile target” → **FORBID-as-compile-target-swap** (FM-Webnn8).  
9. “MLGraphBuilder is a Core constructor” / “`exportToGPU` accepts pointer-emission.md” → **FORBID-as-Core-write** / **PROPOSAL-only** / **FORBID** (FM-Webnn9).  
10. “Calling WebNN / exporting tensors accepts pointer-emission.md” → **FORBID** (D1/D6).

---

## Execute checklist (future — when human says go Pass 2)

```
git pull --ff-only
./docs/coord/coord.sh claim clipboards "webnn Pass 2 EXECUTE"
# T1 Hands + projection skim
# T2 PDF gate (symlink + check-ignore + SHA; never git add)
# T3 D1 D2 D4 D5 D6 on webnn-clipboard.md
# T4 FM-Webnn1…Webnn9 pins
# T5 skip five-stakes / reason-model Core maps
# T6 optional D7 if ≤30 min (prefer builder → build → dispatch)
# T7 skip ascii / mechanisms / webgpu / wgsl / wasm-spec-3 edits
# Mark this plan Status: EXECUTED + receipt
./docs/coord/coord.sh check clipboards "webnn Pass 2 EXECUTE"
# commit clipboard deltas + plan EXECUTED only
./docs/coord/coord.sh release clipboards "webnn Pass 2 EXECUTE"
# DO NOT push unless asked · DO NOT open ascii / mechanisms · emission stays [GAP]
```

---

## Success criteria (plan turn — this commit)

1. This file exists at `docs/clipboards/webnn-pass-2-plan.md`.  
2. Status **HELD / NOT EXECUTED**; HOST-NN SPECIAL banner present; emission `[GAP]`.  
3. D1–D6 + optional D7 + FM-Webnn1…Webnn9 themes + tickets + acceptance + steward refuse specified.  
4. No clipboard / ascii / src product deltas in this commit (plan only).  
5. Clipboards station released after plan commit.  
6. No push. No `src/`. PDF unstaged. Emission `[GAP]`. webgpu-* / wgsl-* / wasm-spec-3 untouched. No mechanism cards / ASCII this pass.

---

## Steward test (standing)

Shoe in hands, or no.  
WebNN is the **host NN inference API** Shadow projection may call, not the lace.  
MLGraph is not a strand. MLContext is not Graphic D.  
MLTensor is not the store. `dispatch` / execute do not emit POINTER.  
WebNN operators are not WORD. Builder is not a Core constructor.  
WebNN is not WebGPU Device/Queue. WebNN is not WGSL. WebNN is not the wasm64 target.  
`exportToGPU` does not accept emission.  
Φ stays `[GAP]`.

---

## Plan receipt (this turn)

| Field | Value |
|---|---|
| Status | **EXECUTED** (was HELD / NOT EXECUTED at plan) |
| When | plan 2026-09-18 ~22:25 PT · execute 2026-09-18 ~22:30 PT |
| Agent | plan `webnn-pass-2-planner` · execute `webnn Pass 2 EXECUTE` |
| Base | execute claim BASE `ee37319` (= origin/main after refresh) |
| Product | D1–D6 (+ D7) on `webnn-clipboard.md` · this plan EXECUTED |
| Pass 1 ancestor | EXECUTED · PAGE A–H, X · P1-R |
| Amended clipboard/ascii/src/maps/law/webgpu/wgsl/wasm | clipboard **yes** (Pass 2 deltas only) · ascii/src/maps/law/webgpu/wgsl/wasm **No** |
| PDF staged | No |
| Push | **No** |
| Emission | `[GAP]` |

### Execution receipt (fill on execute)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~22:30 PT |
| Agent | `webnn Pass 2 EXECUTE` |
| Product | D1–D6 (+ D7) on `webnn-clipboard.md` · FM-Webnn1…Webnn9 pinned |
| T5 five-stakes | **skip** (default) |
| T7 ascii/mechanisms/companions | **skip** — no ascii; mechanisms deferred Pass 3+; webgpu/wgsl/wasm untouched |
| FM-Webnn1…Webnn9 | **9/9 pinned** (no OPEN) |
| Amended map/law/graphics/src/webgpu/wgsl/wasm | **No** |
| PDF staged | **No** |
| Emission | `[GAP]` |
| D7 | **included** — builder → build → dispatch (choice a) |
| Claim BASE | `ee37319` |
