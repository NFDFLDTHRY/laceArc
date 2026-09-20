# WGSL CRD 2026-09-15 — Pass 2 PLAN (leftovers / failure modes / shader-lang coherence)

**Status:** **EXECUTED** — Pass 2 deltas landed on `wgsl-clipboard.md`.  
**Station:** clipboards (execute claim: `wgsl Pass 2 EXECUTE`)  
**Base at plan:** `ec3d8b7` (= `origin/main` after maps release / verification-iter2-pass-2 + cold-doors pass 3 plan). Refresh `git pull --ff-only` before any execute.  
**Spec:** *WebGPU Shading Language* (WGSL) — **W3C Candidate Recommendation Draft, 15 September 2026** · editors Alan Baker, Mehmet Oguz Derin, David Neto (et al.)  
**Clipboard under test:** `docs/clipboards/wgsl-clipboard.md`  
**Ancestor:** [`wgsl-pass-1-plan.md`](wgsl-pass-1-plan.md) (EXECUTED · PAGE A–H, X · P1-R)  
**Templates mirrored (adapt stamps; don’t clone host-API or LLM morals):** [`webgpu-pass-2-plan.md`](webgpu-pass-2-plan.md) · [`wasm-spec-3-pass-2-plan.md`](wasm-spec-3-pass-2-plan.md) · [`xiao-zhu-pass-2-plan.md`](xiao-zhu-pass-2-plan.md) · [`agentscope-pass-2-plan.md`](agentscope-pass-2-plan.md)  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) · [`clock/wasm/README.md`](../clock/wasm/README.md) · [`hologram/`](../hologram/README.md) · [`hologram/visual-primitives.md`](../hologram/visual-primitives.md) · **webgpu-*** Pass 1–5 EXECUTED / Pass 6 HELD (**HOST/GPU companion** — different Spec; **do not edit**) · wasm-spec-3 Pass 1–6 (**wasm64 compile-target** — different layer; **do not disturb**)  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — **not** this shelf’s anti-model PAGE; do not rewrite  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `wgsl-*` for all products of this shelf.  
**Emission:** still `[GAP]` · **Push:** **DO NOT PUSH** this plan turn · **no `src/`** · **no mechanism cards / ASCII yet (Pass 3+)**

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/wgsl-w3c-crd-20260915.pdf` |
| Attachment SHA-256 | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` |
| Pages | **381** · text layer yes · printed ↔ PDF: HTML-print CRD — **PDF one-based** primary (Pass 1 certified) |
| Git | **Never `git add` the PDF** |

Law: WGSL = **SHADER-LANG Shadow only** · shader module ≠ strand · entry point ≠ Φ · address space ≠ Lace store · WGSL ≠ WORD · discard ≠ Lace cut · barrier/uniformity ≠ Φ · WGSL ≠ WebGPU Device/Queue · WGSL ≠ wasm64 · builtins ≠ Core ops · Hands win · `[GAP]` sealed.

```
pull/ff → claim clipboards → Hands + projection skim (shader-lang mesh)
        → open PDF (refs/local; no git add)
        → do NOT redo A–H/X fill or invent emission
        → do NOT create ascii Wave A / mechanisms / src/
        → do NOT edit webgpu-* or wasm-spec-3 products
        → Pass 2 deltas only: D1–D6 (+ optional D7) on wgsl-clipboard.md
        → receipt on wgsl clipboard
        → check · commit · release · STOP
```

---

## SPECIAL BANNER — WGSL SHADER-LANG · Shadow · emission [GAP]

```
+======================================================================+
|  WGSL / SHADER-LANG SPECIAL — W3C CRD 2026-09-15                     |
|  Pass 2 = leftovers / false-friends / FM-Wgsl* / coherence spine.    |
|  Shadow / projection / hologram shader surfaces ONLY.                 |
|  Companion to WebGPU HOST/GPU API (Passes 1–5 EXECUTED; Pass 6 HELD).|
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA leftovers (FM-W* stay there).    |
|  NOT WebGPU host/GPU leftovers (FM-Wgpu* stay on webgpu shelf).      |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: WGSL as Lace WORD / Core operator / schema language.        |
|  FORBID: shader module as strand; entry point as Phi.                |
|  FORBID: WGSL types/memory model as Lace append-only strand.         |
|  FORBID: discard as Lace cut · barrier/uniformity as Phi gate.       |
|  FORBID: conflating WGSL with WebGPU Device/Queue or with wasm64.    |
|  KEEP-read: shader-lang mechanics for Shadow projection draw path.   |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Status this commit: EXECUTED — D1–D6 (+ D7) on clipboard.                |
|  Emission [GAP] sealed.  No mechanism cards / ASCII yet (Pass 3+).   |
+======================================================================+
```

This is **not** another anti-model LLM/theory leftover pass.  
This is **not** wasm-spec-3 **compile-target ISA** hygiene (FM-W\* live on that shelf).  
This is **not** WebGPU **HOST/GPU API** hygiene (FM-Wgpu\* live on that shelf).  
It is **shader-language hygiene**: what this CRD admission is **not** for Lace, numbered **FM-Wgsl\*** false friends (WORD/strand/store/emission/host-API/compile-target lookalikes), and a coherence spine that ties PAGE A–H/X to Hands / projection / hologram / WebGPU companion / wasm64 layers **without** promoting WGSL into Core, Lace store, WORD, or Φ.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-15 |
| **2** | **Leftovers** — what this shelf is not; ON-TARGET KEEP/FORBID/MAP spine; FM-Wgsl\* with PDF pins; Hands/projection/WebGPU/wasm64 coherence; source gate cite; sealed |

Same **D1–D6 shape** as WebGPU / Xiao–Zhu / AgentScope / wasm-spec-3 Pass 2, retargeted to **shader-lang false friends** (not host Device/Queue/submit morals, not intern/MASK/next-token, not linear-mem/table/stack ISA morals).

Still **Shadow / Layer III**. Not Core. Not `src/`. Not other reference shelves. No ascii Wave A yet. Mechanisms file stays **deferred** (Pass 3+).

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-shader-lang / FORBID-\* / PROPOSAL-only / SILENT stamps |
| PDF gate | Present; 381 pp.; text layer; PDF one-based primary; gitignored symlink; SHA matches |
| Per-page KEEP/FORBID | Already on A–H and X cross-cut + steward refuse (1)–(7) |
| Five-stakes | **Out of scope** for this shelf (default skip; not an anti-model PAGE) |
| Ascii Wave A / mechanisms | **Not started** (Pass 3+ / Pass 4 shape later unless human asks) |
| webgpu-* products | Untouched (cite-only; Pass 1–5 EXECUTED · Pass 6 HELD) |
| wasm-spec-3 products | Untouched (cite-only; Pass 1–6 EXECUTED · wasm64 seal) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| clock / hologram | Shadow surfaces citing WGSL — not amended |

Pass 2 does **not** re-walk every PAGE unless a FM row lacks a pin or a stamp-tighten delta is required.

---

## What is still flat / missing (Pass 1 thin / open → Pass 2 deltas)

1. **No “what this clipboard / shelf is not” strip** — readers can mistake shader-lang admission for Lace WORD/schema, strand/store law, emission rules, WebGPU Device/Queue swap, wasm64 swap, or permission to treat discard/barrier/uniformity as Φ/cut.  
2. **No compact ON-TARGET / KEEP / FORBID / MAP spine strip** on the clipboard itself (per-page cards exist; Pass-2 spine card does not).  
3. **No numbered failure-mode table (FM-Wgsl\*)** with PDF pins (PAGE X false friends are narrative only; Pass 1 steward refuse lacks numbered discard≠cut / barrier≠Φ / builtin≠Core rows as FM).  
4. **No interface-coherence paragraph** stating which PAGE outputs may sit beside Hands / projection / hologram / WebGPU companion / wasm64 (read-as-shader-lang only; nothing writes Graphic D / strand / WORD / Φ).  
5. **Source gate** is in Pass 1 receipt (P1-R) — Pass 2 should **cite** it, not claim PDF absent.  
6. **Concrete thin spots left by Pass 1 admission:**
   - **TOC / cite-as-needed gaps:** Ch.16 Keyword·Token Summary · Ch.18 Grammar / appendices — never dedicated PAGEs; Pass 2 must state they stay cite-as-needed (not new PAGEs, not Core grammar).  
   - **Under-pinned chapters:** PAGE D Expressions pin is broad (`§8 PDF 110+`); PAGE H Uniformity (`§15.2 PDF 213+`) thin vs workgroup pin; no FM-level pin for discard vs barrier vs atomic separately.  
   - **Stamp holes:** discard≠Lace-cut · barrier≠Φ · builtins≠Core-ops are morals/narrative, not numbered FM rows with deadbolts.  
   - **Companion-WebGPU boundary:** FORBID-as-host-API-swap on X, but no MAP strip tying WGSL PAGE F entry/interface ↔ WebGPU PAGE E shader path (cite-only; shelves stay distinct).  
   - **Uniformity / validation thin:** PAGE H SILENT exists; no FM row that validation/errors ≠ Lace law / Φ gate as numbered hygiene.  
   - **Built-in coverage:** PAGE G lists constructor/numeric/texture/atomic/barrier/subgroup families; Pass 2 must pin at least barrier + one non-barrier builtin family as FORBID-as-Core-write / FORBID-as-emission-rule without inventing Core maps.  
7. **Optional:** one Shadow constructive miniature (e.g. module lifecycle or entry-point interface sketch) stamped **FORBID-as-Core** / **FORBID-as-emission-rule** / **SILENT-for-Lace-append**.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1 FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-host-API-swap / FORBID-as-compile-target-swap / PROPOSAL-only / SILENT | Pass 1 confirmed |
| Promote WGSL types / source / identifiers into Lace WORD or Core schema | PAGE B / X moral |
| Promote shader module / stage / workgroup into lace cord / Graphic D | PAGE F moral |
| Treat entry point / builtins / barriers / uniformity as POINTER emission / Φ | PAGE F/G/H moral |
| Treat WGSL address spaces / buffers / memory model as Lace strand / second store | PAGE C moral |
| Treat `discard` as Lace cut / append refuse / Φ gate | PAGE E moral |
| Claim WGSL replaces / is the WebGPU Device·Queue·Buffer host API | FORBID-as-host-API-swap |
| Claim WGSL replaces wasm64 / wasm-spec-3 compile target | FORBID-as-compile-target-swap |
| Create `wgsl-ascii-machinery.md` / Wave A panels | **no ascii yet** (Pass 3+ / Pass 4 shape later) |
| Create `wgsl-mechanisms.md` / mechanism cards | **deferred Pass 3+** |
| Amend webgpu-* clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend wasm-spec-3 clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes | wrong stations / default skip |
| Invent Core maps from WGSL → five-stakes / reason-model | no invent Φ; no invent Core maps |
| Add `src/`, `Cargo.toml`, or invent emission via shader-lang story | Implementation Law |
| Git-add PDF · push without ask | standing rules |
| Treat `docs/clock/wasm/README.md` bake or hologram lookrefs as this CRD’s Core authority | Shadow ≠ Core |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals, wasm FM-W\* ISA morals, or WebGPU FM-Wgpu\* host morals onto this shelf | wrong false-friend class |
| Open new PAGEs for Ch.16 / Ch.18 | cite-as-needed only |

---

## Pass 2 product (deltas D1–D6)

Edit **only** `docs/clipboards/wgsl-clipboard.md` by default.  
Do **not** create ascii / mechanisms files this pass.  
Do **not** amend webgpu-* or wasm-spec-3 products.  
Do **not** invent Core maps (five-stakes / reason-model) from WGSL.

### D1 — What this clipboard / shelf is not

**Execute acceptance:** short sealed list present on `wgsl-clipboard.md` covering at least:

- Not Core / not a sixth graphic / not systems-manifest-ascii  
- Not `pointer-emission.md` / not a Φ fill / not acceptance of emission by citing WGSL  
- Not Lace’s 1D strand, star index, or Graphic D scheduler  
- Not permission to treat **WGSL source / types / identifiers** as Lace WORD / Core schema  
- Not permission to treat **shader module / stage / workgroup** as lace cord / Graphic D  
- Not permission to treat **entry point / builtins / barriers / uniformity** as POINTER when / arity / adjacency / Φ  
- Not permission to treat **address spaces / buffers / memory model** as Lace store / second strand  
- Not permission to treat **`discard`** as Lace cut / append refuse  
- Not a **WebGPU Device/Queue/Buffer** host-API swap (webgpu-* shelf stands; different Spec)  
- Not a **wasm64 compile-target** swap (wasm-spec-3 shelf stands; different layer)  
- Not permission to treat **validation / shader-creation / pipeline-creation / dynamic errors** as Lace law / Φ gate  
- Not a rewrite of clock / hologram / AGENTS Implementation Law  
- Not permission to add `src/` before emission acceptance  
- Not an anti-model LLM leftover shelf; not an ISA leftover shelf; not a host/GPU leftover shelf (FM-W\* / FM-Wgpu\* stay home)  
- Not new PAGEs for Ch.16 Keyword Summary or Ch.18 Grammar (cite-as-needed only)

### D2 — ON-TARGET / KEEP / FORBID / MAP strip

**Execute acceptance:** compact spine card on the **wgsl clipboard** (not five-stakes). Must match Pass 1 morals:

| KEEP-read-as-shader-lang | FORBID |
|---|---|
| CRD 2026-09-15 identity / module / textual structure (PAGE A) | Module text ⇒ Lace WORD / Core schema (A; FORBID-as-Lace-WORD) |
| Types / plain / memory-view / texture·sampler (PAGE B) | WGSL types ⇒ Lace schema / Core types (B; FORBID-as-Core-write) |
| Address spaces / vars / layout / memory model (PAGE C) | Address space / buffer / memory ⇒ Lace strand or second store (C; FORBID-as-Lace-store) |
| Expressions / ops / address-of / indirection (PAGE D) | Expression algebra ⇒ Lace WORD algebra / Core ops (D; FORBID-as-Lace-WORD) |
| Statements / control flow / discard / const_assert (PAGE E) | `discard` / control flow ⇒ Lace cut / append scheduler (E; SILENT-for-Lace-append) |
| Functions / attributes / entry points / stages (PAGE F) | Entry point ⇒ Φ; module/stage/workgroup ⇒ lace cord / Graphic D (F; FORBID-as-emission-rule / FORBID-as-Lace-strand) |
| Built-in functions (numeric/texture/atomic/barrier/…) (PAGE G) | Builtins / barriers ⇒ Core ops / Φ fillers / POINTER when (G; FORBID-as-Core-write / FORBID-as-emission-rule) |
| Execution / uniformity / validation / errors (PAGE H) | Uniformity / validation / errors ⇒ Lace law / Φ gate (H; SILENT-for-Lace-append) |
| Shader-lang as Shadow projection language (PAGE X) | WGSL ⇒ WebGPU Device/Queue swap · WGSL ⇒ wasm64 swap (X; FORBID-as-host-API-swap / FORBID-as-compile-target-swap) |

**MAP arrows (coherence with Hands / projection / hologram / WebGPU companion / wasm64 — all exits FORBIDDEN into Core write):**

```
A ──KEEP-read-as-shader-lang──► Shadow shader-lang identity   ──[X]──► Core / sixth graphic / WORD
B ──KEEP-read──► shader types                                  ──[X]──► Lace schema / Core types
C ──KEEP-read──► address spaces / layout / memory model        ──[X]──► Lace 1D strand / second store
D ──KEEP-read──► expression model                              ──[X]──► Lace WORD algebra / Core ops
E ──SILENT──► control flow / discard                           ──[X]──► Lace cut / append scheduler
F ──KEEP-read──► stages / entry / interface                    ──[X]──► Φ / Graphic D / lace cord
G ──KEEP-read──► builtins (draw path cite)                     ──[X]──► Core ops / Φ fillers / src/
H ──SILENT──► uniformity / validation / errors                 ──[X]──► Lace law / Φ gate
X ──SILENT──► false friends / steward refuse                   ──[X]──► host-API swap · wasm64 swap · invent Φ
webgpu-* ──cite-only──► HOST/GPU companion (PAGE E WGSL boundary)──[X]──► conflate shelves / edit webgpu-*
wasm-spec-3 ──cite-only──► wasm64 compile target               ──[X]──► conflate with WGSL
clock/hologram ──cite──► Shadow viewer using WGSL draw path    ──[X]──► Core authority
emission = [GAP]  ·  Hands win  ·  no src/ until human-accepted emission
```

### D3 — Failure modes (FM-Wgsl1…Wgsl9)

**Execute acceptance:** table on clipboard: **ID · Misread · Hands / law deadbolt · PDF pin** (Pass 1 reuse or fresh `pdftotext -f N -l N -layout`).  
Each row **must** include PDF one-based pin (printed if discoverable; else PDF-only with note) or `[OPEN]` with cause.

| ID | Misread seed (required themes) | Deadbolt seed |
|---|---|---|
| **FM-Wgsl1** | **Shader module / stage / workgroup** ⇒ Lace **strand** / Graphic D / lace cord | FORBID-as-Lace-strand · PAGE F · Module PDF **15–16** · Entry/stages PDF **181–182** · workgroup_size PDF **179** · workgroups §15.3 PDF **241** |
| **FM-Wgsl2** | **Entry point** ⇒ POINTER **when** / arity / adjacency (**Φ** fill) | FORBID-as-emission-rule · pointer-emission `[GAP]` · PAGE F · Entry PDF **181** · interface PDF **182** |
| **FM-Wgsl3** | **Address space / buffer / memory model** ⇒ Lace **1D strand** / second store | FORBID-as-Lace-store · PAGE C · Address spaces PDF **201–202** · layout PDF **202** · no-heap PDF **90** |
| **FM-Wgsl4** | **WGSL types / source / identifiers** ⇒ Lace **WORD** / Core schema language | FORBID-as-Lace-WORD · FORBID-as-Core-write · PAGE B · Types PDF **49** / **56** · Module text PDF **15–16** |
| **FM-Wgsl5** | **`discard`** ⇒ Lace **cut** / authorized rewrite / append refuse / Φ gate | SILENT-for-Lace-append · FORBID-as-emission-rule · PAGE E · discard ~PDF **159** · control flow PDF **149** |
| **FM-Wgsl6** | **Barrier / uniformity analysis** ⇒ POINTER emission accept / **Φ** gate / Lace scheduler | FORBID-as-emission-rule · SILENT-for-Lace-append · PAGE G/H · sync/barriers PDF **347** · Uniformity PDF **213+** |
| **FM-Wgsl7** | **WGSL** ⇒ **WebGPU Device/Queue/Buffer** host API / replaces webgpu-* shelf | FORBID-as-host-API-swap · PAGE X · Module lifecycle cites `createShaderModule` PDF **16** (host hook ≠ this Spec’s shelf) · cite webgpu Pass 1–5 (different Spec) |
| **FM-Wgsl8** | **WGSL** ⇒ **wasm64 compile target** / replaces wasm-spec-3 shelf | FORBID-as-compile-target-swap · PAGE X · cite wasm-spec-3 Pass 1–6 (different layer) |
| **FM-Wgsl9** | **Builtins** (numeric / texture / atomic / constructors) ⇒ Lace **Core ops** / Φ fillers | FORBID-as-Core-write · FORBID-as-emission-rule · PAGE G · Built-ins PDF **264** · numeric PDF **284** · texture PDF **313** · atomic PDF **338** |

Pin loci (Pass 1 reuse — verify / tighten on execute): A Module PDF 15–16; B Types 49/56; C Address 201–202 · no-heap 90; E discard ~159 · control 149; F Entry 181–182 · workgroup_size 179; G Built-ins 264+ · barriers 347; H Uniformity 213+ · workgroups 241 · Errors 17; X steward refuse + webgpu/wasm cite-only. Tighten PAGE D / PAGE H broad pins only if an FM row needs a sharper locus — do not rewrite PAGE morals.

### D4 — Interface coherence (Hands + projection + hologram + WebGPU companion + wasm64)

**Execute acceptance:** one short paragraph (plus optional bullet list):

- **Only** KEEP-read-as-shader-lang outputs may sit **beside** Lace: WGSL CRD as the **shader language** Shadow projection / hologram draw path may compile into a WebGPU shader module.  
- **Nothing** in A–H/X writes Graphic D, strand/, word/, pointer/, or fills `pointer-emission.md`.  
- **webgpu-*** = **HOST/GPU Web API** companion — cite-only; WGSL does **not** replace Device/Queue/Buffer (FM-Wgsl7). WebGPU PAGE E “WGSL boundary” cites this language Spec; do **not** edit webgpu-*.  
- **wasm-spec-3** = **compile-target ISA / wasm64 seal** — cite-only; WGSL does **not** replace it (FM-Wgsl8).  
- **clock/** (`lace-projection.html`) and **hologram/** (`visual-primitives.md` WGSL live path / `shadow-clock-gearing.html`) are **Shadow surfaces** that *cite* WGSL — glyphs ≠ schema; they do not become Core authority for this CRD or vice versa.  
- **`docs/clock/wasm/README.md`** is Shadow **projection bake** — **different layer** from this shader-lang shelf; not Spec authority.  
- Lace↔shader / hologram draw sketches stay **PROPOSAL-only**; compiling or citing WGSL does **not** accept emission.  
- Ch.16 / Ch.18 remain cite-as-needed — not Core grammar, not new PAGEs.  
- `[GAP]` remains. Shoe in hands, or no.  
- **Do not invent Core maps** from this clipboard into five-stakes or reason-model.

### D5 — Source gate (cite Pass 1)

**Execute acceptance:** do **not** narrate PDF-absent. Cite Pass 1 receipt (P1-R):

- PDF **present** at `refs/local/wgsl-w3c-crd-20260915.pdf`  
- **381** pp.; text layer; PDF one-based primary (no clear printed↔PDF offset)  
- SHA-256 `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d`  
- Title WebGPU Shading Language · W3C CRD **15 September 2026** · URL `https://www.w3.org/TR/2026/CRD-WGSL-20260915/`  
- Never `git add` the PDF (gitignore `refs/local/` + `*.pdf`)  
- Pass 1 products: clipboard PAGE A–H, X · **no** ascii Wave A · mechanisms deferred · execute ~`c64a620` / receipt refresh ~`402f128` / station release tip historically ~`8c912a1` (rebase-aware: cite P1-R fields on clipboard)

### D6 — Sealed

**Execute acceptance:** repeat sealed list: invent Φ · promote WGSL types/source as WORD · promote module/stage/workgroup as Graphic D · use entry/builtins/barriers/uniformity as emission · treat address spaces as Lace store · treat discard as Lace cut · swap WGSL for WebGPU Device/Queue · swap WGSL for wasm64 · treat validation/errors as Lace law · create ascii Wave A / mechanisms · amend webgpu-* / wasm-spec-3 / map/law/graphics · invent Core maps into five-stakes/reason-model · `src/` · git-add PDF · pretend OCR without the file · clone LLM / ISA / host-API morals onto this shelf · open new PAGEs for Ch.16/18.

### Optional D7 — Constructive miniature (Shadow only, ≤30 min)

**Pattern exists** on WebGPU Pass 2 — include if ≤30 min; else defer with note under Pass 2 receipt.  
If time: **one** numbered Spec-faithful sketch, stamped **FORBID-as-Core** + **FORBID-as-emission-rule** + **SILENT-for-Lace-append** (+ **PROPOSAL-only** if hologram-flavored):

| Choice | Spec locus (seed) | Stamp |
|---|---|---|
| **(a)** Shader module lifecycle sketch (compose module → host `createShaderModule` cite → pipeline → execution start/end) — language side only | Ch.2 / PAGE A · Module PDF **15–16** | FORBID-as-Lace-strand · FORBID-as-host-API-swap (lifecycle host hooks cite webgpu; do not swap shelves) · not POINTER when-rule |
| **(b)** Entry-point / shader-interface sketch (stage + `@group`/`@binding`/`@builtin` + entryPoint name) | Ch.12–13 / PAGE F · PDF **173–182** | FORBID-as-emission-rule · entry ≠ Φ · PROPOSAL-only if hologram draw flavored |

Mark choice points `[OPEN]` where the CRD is silent. **Skip entirely** rather than invent steps the Spec does not state. Not a Graphic D scheduler. Not `src/`. Prefer **(a)** as default shader-lang identity miniature (mirrors WebGPU Pass 2 preferring command-path (a)).  
**Coherence check:** clipboard ↔ Hands / projection / hologram / companion shelves only — **do not invent** clipboard ↔ five-stakes / reason-model Core maps.

---

## Coherence with Pass 1 PAGE spine (standing rule)

| PAGE | Pass 2 use |
|---|---|
| A | D2 MAP entry; KEEP-read-as-shader-lang identity; D7(a) seed |
| B | **FM-Wgsl4** |
| C | **FM-Wgsl3** |
| D | D2 MAP (expression ≠ WORD); tighten pin only if FM needs it |
| E | **FM-Wgsl5** |
| F | **FM-Wgsl1**, **FM-Wgsl2** · D7(b) seed |
| G | **FM-Wgsl6** (barrier), **FM-Wgsl9** (builtins) |
| H | **FM-Wgsl6** (uniformity) · validation SILENT |
| X | **FM-Wgsl7**, **FM-Wgsl8** + steward refuse mesh; SILENT; Φ `[GAP]` |

**Default:** PAGE A–H/X morals **read-only**. Open a stamp-tighten edit only if an FM pin forces a clearer FORBID line — never a PAGE rewrite, never new PAGEs, never ascii Wave A, never mechanism cards.

---

## Tickets

### T0 — Claim / base

Held at plan by `wgsl Pass 2 plan HELD` (BASE `ec3d8b7`). Before execute: `git pull --ff-only` · refresh claim if clock turned · agent id e.g. `wgsl Pass 2 EXECUTE`.

### T1 — Hands + projection skim

Shoe → graphics A–D → systems-manifest (+ know Core ASCII is separate) → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → clock/README + lace-projection → clock/wasm README (different layer) → hologram/README + visual-primitives (WGSL live path cite) → **webgpu** Pass 1 banner / PAGE E WGSL boundary (**cite-only**; do not edit) → wasm-spec-3 Pass 1 banner (**cite-only**; do not edit) → Pass 1 clipboard → this plan → PDF.

### T2 — PDF gate

Confirm `refs/local/wgsl-w3c-crd-20260915.pdf` resolves; `git check-ignore`; abort if PDF staged; SHA match Pass 1 (`73dc9e35…c2f5eb6d`); `pdfinfo` → Pages 381.

### T3 — Write D1–D2–D4–D5–D6

Prose deltas on **wgsl-clipboard.md only**; no A–H/X moral rewrite. Prefer append after Pass 1 receipt / PAGE X (or a dedicated Pass 2 section after receipt — match webgpu clipboard Pass 2 layout if present; else after PAGE X).

### T4 — FM-Wgsl\* hunt (D3)

Reuse Pass 1 pins; `pdftotext` only where a row lacks a pin (esp. **FM-Wgsl5** discard ~PDF 159 · **FM-Wgsl6** barriers PDF 347 · uniformity 213+). ≤2-line eye-quote per new pin.

### T5 — Five-stakes / reason-model (default **skip**)

Out of scope. Only if human explicitly asks: one receipt line that wgsl Pass 2 deltas landed; **do not** rewrite five-stakes pages; **do not invent** Core maps into reason-model.

### T6 — Optional D7 miniature

Default **include if ≤30 min**; else defer with note under Pass 2 receipt. Choice (a) or (b) above — not both unless trivial. Prefer (a).

### T7 — Ascii / mechanisms / webgpu / wasm-spec-3 (default **skip**)

No ascii Wave A. No mechanisms file. No webgpu-* edits. No wasm-spec-3 edits. Receipt: “no ascii; no mechanisms; webgpu-* untouched; wasm-spec-3 untouched.”

### T8 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "wgsl Pass 2 EXECUTE"
# commit: clipboard D1–D6 (+ D7 if any) + this plan marked EXECUTED
# never stage refs/local/*.pdf
./docs/coord/coord.sh release clipboards "wgsl Pass 2 EXECUTE"
```

Ask before push. **This plan turn does not execute.**

---

## Acceptance tests (execute must pass)

1. Pass 2 receipt on `wgsl-clipboard.md`.  
2. D1–D6 present; D5 says PDF **present** (not absent).  
3. FM-Wgsl1…Wgsl9 each have Hands/law deadbolt + PDF pin (or `[OPEN]` with cause).  
4. Required themes covered: module/stage/workgroup≠strand · entry≠Φ · address/memory≠store · types/source≠WORD · discard≠Lace cut · barrier/uniformity≠Φ · WGSL≠WebGPU Device/Queue · WGSL≠wasm64 · builtins≠Core ops/Φ fillers.  
5. No stamp invents POINTER when/arity/adjacency or fills Φ; no invent Core maps into five-stakes/reason-model.  
6. Pass 1 FORBID-as-Lace-WORD / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-host-API-swap / FORBID-as-compile-target-swap / PROPOSAL-only / SILENT not softened.  
7. law / graphics / systems-manifest / five-stakes / webgpu-* / wasm-spec-3 / clock / hologram untouched (unless T5 explicitly opened); PDF never staged; no `src/`; **no ascii Wave A**; **no mechanism cards**.  
8. If D7 present: miniature is Shadow-only with FORBID-as-Core + FORBID-as-emission-rule (and FORBID-as-host-API-swap / PROPOSAL-only as stamped).  
9. Steward refuse tests (below) answerable from D2+D3 alone.  
10. SHADER-LANG SPECIAL banner retained; relation WGSL ≠ WebGPU Device/Queue ≠ wasm64 ≠ Core remains explicit; Ch.16/18 stay cite-as-needed (no new PAGEs).

---

## Steward refuse tests (must remain rejectable)

Shoe in hands, or no.

1. “Shader module / stage / workgroup is the Lace strand / Graphic D” → **FORBID-as-Lace-strand** (FM-Wgsl1).  
2. “Entry point emits POINTER” / “entry fills Φ” → **FORBID-as-emission-rule** (FM-Wgsl2).  
3. “WGSL address space / buffer / memory model is a second Lace store” → **FORBID-as-Lace-store** (FM-Wgsl3).  
4. “WGSL is Lace WORD / Core schema language” → **FORBID-as-Lace-WORD** / **FORBID-as-Core-write** (FM-Wgsl4).  
5. “`discard` is a Lace cut / append refuse” → **SILENT** / **FORBID-as-emission-rule** (FM-Wgsl5).  
6. “Barrier / uniformity accepts pointer-emission.md” / “fills Φ” → **FORBID-as-emission-rule** (FM-Wgsl6).  
7. “WGSL replaces WebGPU Device/Queue host API” → **FORBID-as-host-API-swap** (FM-Wgsl7).  
8. “WGSL replaces wasm64 / wasm-spec-3 compile target” → **FORBID-as-compile-target-swap** (FM-Wgsl8).  
9. “Builtins fill Φ / are Core ops” → **FORBID-as-Core-write** / **FORBID-as-emission-rule** (FM-Wgsl9).  
10. “Citing / compiling WGSL accepts pointer-emission.md” → **FORBID** (D1/D6).

---

## Execute checklist (future — when human says go Pass 2)

```
git pull --ff-only
./docs/coord/coord.sh claim clipboards "wgsl Pass 2 EXECUTE"
# T1 Hands + projection skim
# T2 PDF gate (symlink + check-ignore + SHA; never git add)
# T3 D1 D2 D4 D5 D6 on wgsl-clipboard.md
# T4 FM-Wgsl1…Wgsl9 pins
# T5 skip five-stakes / reason-model Core maps
# T6 optional D7 if ≤30 min (prefer module lifecycle)
# T7 skip ascii / mechanisms / webgpu-* / wasm-spec-3 edits
# Mark this plan Status: EXECUTED + receipt
./docs/coord/coord.sh check clipboards "wgsl Pass 2 EXECUTE"
# commit clipboard deltas + plan EXECUTED only
./docs/coord/coord.sh release clipboards "wgsl Pass 2 EXECUTE"
# DO NOT push unless asked · DO NOT open ascii / mechanisms · emission stays [GAP]
```

---

## Success criteria (plan turn — this commit)

1. This file exists at `docs/clipboards/wgsl-pass-2-plan.md`.  
2. Status **HELD / NOT EXECUTED**; WGSL SHADER-LANG SPECIAL banner present; emission `[GAP]`.  
3. D1–D6 + optional D7 + FM-Wgsl1…Wgsl9 themes + tickets + acceptance + steward refuse specified.  
4. Concrete Pass 1 thin spots named (TOC cite-as-needed, under-pins, stamp holes, companion-WebGPU boundary, uniformity/validation thin, builtin coverage).  
5. No clipboard / ascii / mechanisms / src product deltas in this commit (plan only).  
6. Clipboards station released after plan commit.  
7. No push. No `src/`. PDF unstaged. Emission `[GAP]`. webgpu-* / wasm-spec-3 untouched. Explicit: no mechanism cards / ASCII yet (Pass 3+).

---

## Steward test (standing)

Shoe in hands, or no.  
WGSL is the **shader language** Shadow projection may compile into a WebGPU shader module, not the lace.  
WGSL ≠ WORD. Shader module ≠ strand. Entry point ≠ Φ.  
WGSL memory ≠ Lace append-only store.  
`discard` is not a Lace cut. Barrier / uniformity is not Φ.  
Builtins are not Core ops.  
WGSL ≠ WebGPU Device/Queue. WGSL ≠ wasm64.  
Φ stays `[GAP]`.

---

## Plan receipt (this turn)

| Field | Value |
|---|---|
| Status | **HELD / NOT EXECUTED** (historical — plan turn) |
| When | 2026-09-18 ~21:38 PT |
| Agent | `wgsl Pass 2 plan HELD` |
| Base | `ec3d8b7` (= origin/main at claim) |
| Product | this plan only (`docs/clipboards/wgsl-pass-2-plan.md`) |
| Pass 1 ancestor | EXECUTED · clipboard A–H,X · P1-R · PDF SHA `73dc9e35…c2f5eb6d` · symlink `refs/local/wgsl-w3c-crd-20260915.pdf` |
| Amended clipboard/ascii/mechanisms/src/maps/law/webgpu/wasm | **No** (plan only) |
| PDF staged | No |
| Push | **No** |
| Emission | `[GAP]` |

### Execution receipt (filled on execute)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~21:41 PT |
| Agent | `wgsl Pass 2 EXECUTE` |
| Product | D1–D6 (+ D7 module-lifecycle) on `wgsl-clipboard.md` · P2-R |
| T5 five-stakes / Core maps | **skip** (default) |
| T7 ascii/mechanisms/webgpu/wasm | **skip** |
| FM-Wgsl1…Wgsl9 | all pinned (no OPEN); barriers PDF **347–348**; workgroup_size Attribute PDF **180** |
| Amended map/law/graphics/src/webgpu/wasm | **No** |
| PDF staged | **No** |
| Emission | `[GAP]` |
| D7 | **included** — choice (a) module lifecycle · FORBID-as-Lace-strand · FORBID-as-host-API-swap · FORBID-as-Core · FORBID-as-emission-rule · SILENT |
| Claim BASE | `76f0472` (= origin/main after refresh; was `e6e1935` at first claim) |
