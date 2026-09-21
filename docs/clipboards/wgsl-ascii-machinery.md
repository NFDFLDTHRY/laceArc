# WGSL CRD 2026-09-15 — ASCII SOURCE MACHINERY (SHADER-LANG · Wave A P-S1…P-S9 · P4-X)

**Current discard locators, 2026-09-20 — repository update pass 4:** P-S5 now cites PDF **158** for the §9.4.11 rule; the worked example remains PDF **159**, as recorded in the [dated source qualification](wgsl-clipboard.md#repository-update-pass-4--discard-rule-and-example). Earlier sighting references and campaign receipts remain historical; the helper-invocation/effect scope is unchanged.

**Status:** Pass 4 **EXECUTED** · Pass 5 **EXECUTED** (Shadow Order Proposal + light P5-X CONFIRM) · Wave A panels **P-S1…P-S9** 1:1 with **M-S1…M-S9** · P4-X/P5-X all **PASS**. Emission `[GAP]`.  
**Source:** *WebGPU Shading Language* (WGSL) — **W3C Candidate Recommendation Draft, 15 September 2026**. Editors: Alan Baker, Mehmet Oguz Derin, David Neto (et al.).  
**PDF:** `refs/local/wgsl-w3c-crd-20260915.pdf` → attachment `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` (**381** pp., text layer; **never git-add**). SHA-256 `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d`. PDF one-based primary.  
**Algorithms (unchanged):** [`wgsl-mechanisms.md`](wgsl-mechanisms.md) — **M-S1…M-S9** (cite only; do not rewrite).  
**Admission:** [`wgsl-clipboard.md`](wgsl-clipboard.md) · plans [`wgsl-pass-4-plan.md`](wgsl-pass-4-plan.md) · [`wgsl-pass-5-plan.md`](wgsl-pass-5-plan.md).  
**Mesh (cite-only):** [`pointer-emission.md`](../pointer-emission.md) = DRAFT/`[GAP]` · [`clock/README.md`](../clock/README.md) · [`hologram/`](../hologram/README.md) · webgpu-* (**HOST/GPU** — different Spec) · wasm-spec-3 (**wasm64** — different layer).  
**Not this file:** Lace Core ASCII = [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**.

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
|  ASCII fences = Spec/shader-lang glyphs ONLY; stamps UNDER fences.   |
|  No Lace emission tokens inside fences (stamps under).               |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Status: Pass 4+5 EXECUTED (Order Proposal Shadow). WGSL supplies no Lace retention rule; current retention/materialization [GAP]. |
+======================================================================+
```

**Opening contract**

1. Models **WGSL CRD shader-lang procedures**, not Lace Core.  
2. Companion to `wgsl-mechanisms.md` + `wgsl-clipboard.md`.  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No panel closes it. Shadow / Layer III only.  
5. Inside fences: **Spec/shader-lang glyphs only** — no Lace WORD / Graphic D / Φ / strand as WGSL objects; **never the word `POINTER` inside diagram fences**.  
6. Stamps live **under** fences (not inside) and match Wave A M-S* teeth.  
7. KEEP-read-as-shader-lang for Shadow projection / hologram; FORBID module/stage as Lace strand; FORBID address space as Lace store; FORBID WGSL as WORD; FORBID entry/builtins/discard/uniformity as emission; FORBID WGSL as WebGPU host API; FORBID WGSL as wasm64.  
8. Hands win; steward refuses WORD/store/strand/emission/host-API/wasm64 lookalikes.

Law: WGSL = **SHADER-LANG Shadow only** · shader module ≠ strand · entry point ≠ Φ · address space ≠ Lace store · WGSL ≠ WORD · discard ≠ Lace cut · barrier/uniformity ≠ Φ · WGSL ≠ WebGPU Device/Queue · WGSL ≠ wasm64 · builtins ≠ Core ops · Hands win · `[GAP]` sealed · **representation correctness of CRD procedures in ASCII > new art**.

---

## Stamp legend

| Stamp | Meaning (summary) |
|---|---|
| **KEEP-read-as-shader-lang** | May sit beside Lace as WGSL / Shadow draw mechanics; does not write Core |
| **FORBID-as-Core-write** | Must not become array rewrite / second store / Core operator set / schema language |
| **FORBID-as-Lace-WORD** | Must not treat WGSL source / identifiers / types / expr algebra as Lace WORD |
| **FORBID-as-Lace-store** | Must not treat address spaces / buffers / memory model as Lace 1D strand |
| **FORBID-as-Lace-strand** | Must not treat shader module / stage / workgroup as lace cord / Graphic D |
| **FORBID-as-emission-rule** | Must not use entry / builtins / barriers / discard / uniformity as emission when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔shader / hologram draw sketches are proposals only; not accepted law |
| **FORBID-as-host-API-swap** | Must not claim WGSL replaces WebGPU Device·Queue·Buffer host API |
| **FORBID-as-compile-target-swap** | Must not claim WGSL replaces wasm64 / wasm-spec-3 target |
| **FORBID-as-Core** | Must not promote shader-lang lifecycle into Lace Core doors / `src/` birth |
| **FORBID fill-GAP** | Must not treat citing/compiling WGSL as filling emission `[GAP]` |

---

## SOURCE MACHINERY overview (shader-lang side only · Core / Φ / host-API / wasm64 off-board)

Spine matches **M-S1…M-S9** / **P-S1…P-S9**. Constructive Spec path only. **count=1**.

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
stamp under fence: KEEP-read-as-shader-lang | Core/Phi/host-API/wasm64 FORBIDDEN off-board | FM-Wgsl7 · FM-Wgsl8

**P4-X:** Rigor matrix lives below (this file) and on the clipboard Pass 4 receipt. This file holds **exactly one** canonical SOURCE MACHINERY overview (above).


**P5-O:** Overview count=1 confirmed (Pass 5). Core / Graphic D / Φ / WebGPU Device·Queue / wasm64 ISA remain FORBIDDEN off-board.

### Order proposal (Shadow) — SOURCE MACHINERY as shelf hygiene *(short mirror)*

**Full text:** clipboard Pass 5 **P5-P**. **Stamps:** KEEP-read-as-shader-lang · FORBID-as-Core-write · FORBID-as-Lace-WORD · FORBID-as-Lace-store · FORBID-as-Lace-strand · FORBID-as-emission-rule · FORBID-as-Core · FORBID fill-GAP · FORBID-as-host-API-swap · FORBID-as-compile-target-swap · SILENT-for-Lace-append · PROPOSAL · NON-binding.

This overview **proposes** SHADER-LANG shelf hygiene beside Shadow projection / hologram — observe → name → diagram-check → stamp-check → list OPENs → decide (commit/release/defer/stop). It is **not** Core, not an AGENTS.md amendment, not Graphic D, not a Φ scheduler, and **NON-binding** on `systems-manifest-ascii.md` / graphics / webgpu-* / wasm-spec-3. Keep-outs stand: module≠strand · type≠WORD · address-space≠store · entry≠Φ · discard≠cut · barrier/uniformity≠Φ · WGSL≠Device/Queue · WGSL≠wasm64 · builtins≠Core ops. Projection/hologram = **Shadow consumers** (cite-only). Recommended reader order (proposal only): clipboard → mechanisms → ascii-machinery → pass plans. Emission `[GAP]`. See clipboard P5-P for stage→hygiene table + P5-X.


---

## Wave A panels (1:1 with M-S*)

### P-S1 — Module / parse / textual structure (compose module · textual structure · directives · scope · lifecycle cite)

| Field | Content |
|---|---|
| Mechanism cite | **M-S1** · §2 Module PDF **15–16** · Lifecycle §2.1 PDF **16** · Errors §2.2 PDF **17** · Textual Structure §3 PDF **23** · Directives §4 PDF **40** · Scope §5 PDF **45** · **Pass 2 D7** |
| Sighting | Pass 1 PAGE A · Pass 2 D7 · Pass 3 M-S1 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-shader-lang** · **FORBID-as-Lace-WORD** · **FORBID-as-Lace-strand** · **FORBID-as-host-API-swap** · **FORBID-as-Core** · **FORBID fill-GAP** · **PROPOSAL-only** |
| PAGE cite | **A** |
| False friend | **FM-Wgsl1** · **FM-Wgsl4** · **FM-Wgsl7** |
| Projection / hologram | `clock/README.md` (`lace-projection.html`) · `hologram/visual-primitives.md` — Shadow module identity only |
| webgpu | cite-only · ≠ Device/Queue (**FM-Wgsl7**) |
| wasm64 | cite-only · ≠ compile target (**FM-Wgsl8**) |
| Emission | `[GAP]` |
| Implements | M-S1 alg 1–6: recognize `translation_unit` → textual structure/scope → lifecycle phases → host hooks cite-only → refuse WORD/strand/fill → halt · **D7** cross-link |

```
  UTF-8 WGSL source (no BOM)           (§2 PDF 15)
           |
           v
  translation_unit
  optional directives + module-scope
  decls / assertions                   (§3 PDF 23 · §5 PDF 45)
           |
           |  lifecycle phases:
           |  shader-creation /
           |  pipeline-creation /
           |  dynamic                  (§2.1–2.2 PDF 16–17)
           v
  +---------------------------+
  | shader-lang module        |  text identity only
  |  (D7 lifecycle miniature) |
  +-------------+-------------+
                |
                |  host hooks cite-only:
                |  createShaderModule / pipeline
                v
  Shadow module identity
  # NOT Lace WORD · NOT lace cord · NOT Device/Queue shelf
```
stamp under fence: KEEP-read-as-shader-lang | FORBID-as-Lace-WORD | FORBID-as-Lace-strand | FORBID-as-host-API-swap | FORBID-as-Core | FORBID fill-GAP | PROPOSAL-only | FM-Wgsl1 · FM-Wgsl4 · FM-Wgsl7 | D7

---

### P-S2 — Types (plain / integer / vector / memory-view / texture·sampler)

| Field | Content |
|---|---|
| Mechanism cite | **M-S2** · §6 Types PDF **49** · Plain §6.2 PDF **56** · Memory Views §6.5 PDF **72** · Texture/Sampler §6.6 PDF **90** |
| Sighting | Pass 1 PAGE B · Pass 3 M-S2 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-shader-lang** · **FORBID-as-Core-write** · **FORBID-as-Lace-WORD** |
| PAGE cite | **B** |
| False friend | **FM-Wgsl4** |
| Projection / hologram | types ≠ schema; hologram may *draw* typed values |
| webgpu | cite-only |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-S2 alg 1–6: classify values→types → plain rules → memory-view/texture·sampler → refuse WORD/Core schema → halt |

```
  module under parse (P-S1)
           |
           v
  type environment
  (predeclared + user decls)
           |
           |  each value : exactly one type
           |  (§6 PDF 49)
           v
  +---------------------------+
  | plain types               |  scalars / composites
  | memory-view types         |  (§6.5 PDF 72)
  | texture / sampler types   |  (§6.6 PDF 90)
  +-------------+-------------+
                |
                v
  shader-lang type classification
  # NOT Lace WORD · NOT Core schema · NOT Core ops
```
stamp under fence: KEEP-read-as-shader-lang | FORBID-as-Core-write | FORBID-as-Lace-WORD | FM-Wgsl4

---

### P-S3 — Address spaces / variables (`var`/`let`/`const`/`override` · address spaces · layout · no-heap)

| Field | Content |
|---|---|
| Mechanism cite | **M-S3** · §7 Vars PDF **101** · `var` §7.3 PDF **106** · no-heap PDF **90** · Address Spaces §14.3 PDF **201–202** · layout §14.4 |
| Sighting | Pass 1 PAGE C · Pass 3 M-S3 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-shader-lang** · **FORBID-as-Lace-store** |
| PAGE cite | **C** |
| False friend | **FM-Wgsl3** |
| Projection / hologram | address space ≠ strand/store; may hold draw uniforms only |
| webgpu | ≠ GPUBuffer swap as Lace store (**FM-Wgsl7** cite-only) |
| wasm64 | ≠ linear mem strand (**FM-Wgsl8** cite-only) |
| Emission | `[GAP]` |
| Implements | M-S3 alg 1–6: value decls → `var` ref<AS,T,AM> → address-space place/layout → no-heap note → refuse store → halt |

```
  types available (P-S2)
           |
           v
  const / override / let / formals
  (value decls)                    (§7 PDF 101)
           |
           |  var : store type + AS + AM
           |  --> ref<AS,T,AM>         (§7.3 PDF 106)
           v
  +---------------------------+
  | address spaces            |  function / private /
  |  workgroup / uniform /    |  storage / handle / ...
  |  layout (§14.4)           |  (§14.3 PDF 201–202)
  +-------------+-------------+
                |
                |  no-heap / no explicit destroy
                v
  shader-lang memory / value names
  # NOT Lace 1D strand · NOT second store
```
stamp under fence: KEEP-read-as-shader-lang | FORBID-as-Lace-store | FM-Wgsl3

---

### P-S4 — Expressions (early evaluation · ops · address-of / indirection)

| Field | Content |
|---|---|
| Mechanism cite | **M-S4** · §8 Expressions PDF **110+** · Early Evaluation §8.1 PDF **110** · override-expr PDF **111–112** |
| Sighting | Pass 1 PAGE D · Pass 3 M-S4 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-shader-lang** · **FORBID-as-Lace-WORD** |
| PAGE cite | **D** |
| False friend | **FM-Wgsl4** |
| Projection / hologram | expr algebra ≠ WORD; may compute draw math only |
| webgpu | cite-only |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-S4 alg 1–6: parse expr → classify const/override/runtime → evaluate → refuse WORD/Core ops → halt |

```
  typed operands in scope (P-S2/P-S3)
           |
           v
  expression phrase                (§8 PDF 110)
           |
           |  classify evaluation time:
           |  const-expr (shader-creation)
           |  override-expr (pipeline)
           |  runtime (GPU execution)
           |  (§8.1 PDF 110–112)
           v
  +---------------------------+
  | computed value            |  left-to-right nesting
  +-------------+-------------+
                |
                v
  shader-lang expression result
  # NOT Lace WORD algebra · NOT Core ops
```
stamp under fence: KEEP-read-as-shader-lang | FORBID-as-Lace-WORD | FM-Wgsl4

---

### P-S5 — Statements (control flow · `discard` · `const_assert`)

| Field | Content |
|---|---|
| Mechanism cite | **M-S5** · §9 Statements PDF **140** · Control Flow §9.4 PDF **149** · Discard §9.4.11 rule PDF **158**, worked example **159** · `const_assert` §10 PDF **166** |
| Sighting | Pass 1 PAGE E · Pass 3 M-S5 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-shader-lang** · **SILENT-for-Lace-append** · **FORBID-as-emission-rule** |
| PAGE cite | **E** |
| False friend | **FM-Wgsl5** |
| Projection / hologram | discard ≠ Lace cut; SILENT for append |
| webgpu | cite-only |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-S5 alg 1–6: control-flow order → `discard` helper conversion → `const_assert` → refuse cut/Φ → halt |

```
  function body statements         (§9 · §9.4 PDF 149)
           |
           |  if / switch / loop / return
           |
           +--> discard (fragment only)
           |    convert to helper invocation
           |    throw away fragment output
           |    (§9.4.11 PDF 158)
           |
           +--> const_assert
                (creation-time)    (§10 PDF 166)
           |
           v
  shader-lang control effects
  # NOT Lace cut · NOT append scheduler · NOT Phi gate
```
stamp under fence: KEEP-read-as-shader-lang | SILENT-for-Lace-append | FORBID-as-emission-rule | FM-Wgsl5

---

### P-S6 — Functions / entry points (user-defined · stages · interface · entry ≠ Φ)

| Field | Content |
|---|---|
| Mechanism cite | **M-S6** · §11 Functions PDF **166–167** · §13 Entry Points PDF **181** · Stages §13.1 · interface §13.3 PDF **182** |
| Sighting | Pass 1 PAGE F · Pass 3 M-S6 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-shader-lang** · **FORBID-as-emission-rule** · **FORBID-as-Lace-strand** · **FORBID fill-GAP** |
| PAGE cite | **F** |
| False friend | **FM-Wgsl1** · **FM-Wgsl2** |
| Projection / hologram | entry ≠ Φ; stage ≠ lace cord; Shadow draw entry only |
| webgpu | ≠ pipeline host API swap (**FM-Wgsl7**); host binds cite-only |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-S6 alg 1–6: declare `fn` → mark stage entry → describe IO interface → refuse Φ/strand → halt |

```
  typed module decls (P-S1…P-S5)
           |
           v
  user-defined fn                  (§11 PDF 166–167)
           |
           |  mark entry point for stage
           |  vertex / fragment / compute
           |  (§13 PDF 181)
           v
  +---------------------------+
  | entry point + stage IO    |  (§13.3 PDF 182)
  +-------------+-------------+
                |
                |  host pipeline bind (cite-only)
                v
  shader-lang functions / entries
  # NOT Phi · NOT lace cord · NOT Graphic D
```
stamp under fence: KEEP-read-as-shader-lang | FORBID-as-emission-rule | FORBID-as-Lace-strand | FORBID fill-GAP | FM-Wgsl1 · FM-Wgsl2

---

### P-S7 — Attributes (`@` attributes · `workgroup_size` · stage attrs)

| Field | Content |
|---|---|
| Mechanism cite | **M-S7** · §12 Attributes PDF **173** · `workgroup_size` §12.15 PDF **179–180** · Stage attrs §12.16 PDF **180** |
| Sighting | Pass 1–2 PAGE F / FM-Wgsl1 · Pass 3 M-S7 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-shader-lang** · **FORBID-as-Lace-strand** · **FORBID-as-Core-write** |
| PAGE cite | **F** |
| False friend | **FM-Wgsl1** |
| Projection / hologram | workgroup_size ≠ Graphic D |
| webgpu | cite-only |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-S7 alg 1–6: parse `@` attrs → apply workgroup_size → apply stage attrs → refuse Graphic D/Core → halt |

```
  decl / function under attrs (P-S6)
           |
           v
  @ attribute list                 (§12 PDF 173)
           |
           +--> @workgroup_size(x[,y[,z]])
           |    compute entry only
           |    (§12.15 PDF 179–180)
           |
           +--> @vertex / @fragment / @compute
                (§12.16 PDF 180)
           |
           v
  annotated shader-lang objects
  # NOT Graphic D · NOT lace cord · NOT Core write
```
stamp under fence: KEEP-read-as-shader-lang | FORBID-as-Lace-strand | FORBID-as-Core-write | FM-Wgsl1

---

### P-S8 — Built-in functions (constructors · numeric · texture · atomic · sync/barrier · subgroup)

| Field | Content |
|---|---|
| Mechanism cite | **M-S8** · §17 Built-ins PDF **264** · numeric §17.5 PDF **284** · texture §17.7 PDF **313** · atomic §17.8 PDF **338** · Sync §17.11 PDF **347–348** · Subgroup §17.12 |
| Sighting | Pass 1–2 PAGE G · Pass 3 M-S8 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-shader-lang** · **FORBID-as-Core-write** · **FORBID-as-emission-rule** |
| PAGE cite | **G** |
| False friend | **FM-Wgsl9** · **FM-Wgsl6** |
| Projection / hologram | builtins/barriers ≠ Core/Φ; Shadow draw math only |
| webgpu | cite-only |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-S8 alg 1–6: resolve overload → eval args → sync barriers under uniform CF → refuse Core/Φ → halt |

```
  call site (typed args)           (§17 PDF 264)
           |
           |  resolve builtin overload
           |  constructors / numeric /
           |  texture / atomic /
           |  sync / subgroup
           v
  +---------------------------+
  | builtin result            |
  |  sync: control barrier    |  Acquire/Release
  |  (uniform control flow)   |  (§17.11 PDF 347–348)
  +-------------+-------------+
                |
                v
  shader-lang builtin effect
  # NOT Core ops · NOT Phi fillers · NOT emission when
```
stamp under fence: KEEP-read-as-shader-lang | FORBID-as-Core-write | FORBID-as-emission-rule | FM-Wgsl9 · FM-Wgsl6

---

### P-S9 — Execution / uniformity / validation (errors · uniformity analysis · workgroups · vs Lace append)

| Field | Content |
|---|---|
| Mechanism cite | **M-S9** · §2.2 Errors PDF **17** · §15 Execution PDF **213+** · Uniformity §15.2 PDF **213** · workgroups §15.3 PDF **241** |
| Sighting | Pass 1 PAGE H · Pass 3 M-S9 · plan Pass 4 |
| Lace stamp | **KEEP-read-as-shader-lang** · **SILENT-for-Lace-append** · **FORBID-as-emission-rule** |
| PAGE cite | **H** |
| False friend | **FM-Wgsl6** |
| Projection / hologram | uniformity/validation ≠ Lace law |
| webgpu | cite-only (host may surface pipeline errors; still not Lace cut) |
| wasm64 | cite-only |
| Emission | `[GAP]` |
| Implements | M-S9 alg 1–6: error phases → program order → uniformity analysis → workgroups → refuse Lace law/Φ → halt |

```
  module + entry + builtins (P-S1…P-S8)
           |
           v
  error phases earliest-first      (§2.2 PDF 17)
  shader-creation -> pipeline ->
  dynamic
           |
           |  program order (§15.1)
           |  uniformity analysis
           |  for collective ops       (§15.2 PDF 213)
           |  workgroup structure      (§15.3 PDF 241)
           v
  +---------------------------+
  | validation accept/reject  |
  | execution constraints     |
  +-------------+-------------+
                |
                v
  shader-lang validation / execution
  # NOT Lace law · NOT Phi gate · SILENT for append
```
stamp under fence: KEEP-read-as-shader-lang | SILENT-for-Lace-append | FORBID-as-emission-rule | FM-Wgsl6

---

## Cross-walk (P-S* ↔ M-S*)

| P | M | stamp (hard) | PAGE | FM-Wgsl* | projection/hologram | webgpu | wasm64 | emission |
|---|---|---|---|---|---|---|---|---|
| P-S1 | M-S1 | FORBID-as-Lace-WORD · strand · host-API-swap · D7 | A | FM-Wgsl1 · 4 · 7 | Shadow module; D7 | ≠ Device/Queue | ≠ compile target | `[GAP]` |
| P-S2 | M-S2 | FORBID-as-Core-write · FORBID-as-Lace-WORD | B | FM-Wgsl4 | types ≠ schema | cite-only | cite-only | `[GAP]` |
| P-S3 | M-S3 | FORBID-as-Lace-store | C | FM-Wgsl3 | AS ≠ strand/store | ≠ GPUBuffer | ≠ linear mem | `[GAP]` |
| P-S4 | M-S4 | FORBID-as-Lace-WORD | D | FM-Wgsl4 | expr ≠ WORD | cite-only | cite-only | `[GAP]` |
| P-S5 | M-S5 | SILENT · FORBID-as-emission-rule | E | FM-Wgsl5 | discard ≠ cut | cite-only | cite-only | `[GAP]` |
| P-S6 | M-S6 | FORBID-as-emission-rule · FORBID-as-Lace-strand | F | FM-Wgsl1 · 2 | entry ≠ Φ | ≠ pipeline host | cite-only | `[GAP]` |
| P-S7 | M-S7 | FORBID-as-Lace-strand · FORBID-as-Core-write | F | FM-Wgsl1 | workgroup ≠ Graphic D | cite-only | cite-only | `[GAP]` |
| P-S8 | M-S8 | FORBID-as-Core-write · FORBID-as-emission-rule | G | FM-Wgsl9 · 6 | builtins ≠ Core/Φ | cite-only | cite-only | `[GAP]` |
| P-S9 | M-S9 | SILENT · FORBID-as-emission-rule | H | FM-Wgsl6 | uniformity ≠ Lace law | cite-only | cite-only | `[GAP]` |

P3-M CONFIRM×9 · CONFLICT×0 **stands** (not reopened). Every emission cell `[GAP]`.

---

## P4-X — Rigor matrix

Columns: `node · P · M · stamp · Implements OK · Fence OK (Spec-only; no POINTER word) · Stamp OK · False-friend fence OK · Overview attach OK · PASS/FIX`

### Panels

| node | P | M | stamp | Impl | Fence | Stamp | FF fence | Overview | Verdict |
|---|---|---|---|---|---|---|---|---|---|
| module/parse | P-S1 | M-S1 | WORD+strand+host-API-swap+D7 | Y | Y | Y | Y (FM-Wgsl1·4·7) | Y | **PASS** |
| types | P-S2 | M-S2 | Core-write+WORD | Y | Y | Y | Y (FM-Wgsl4) | Y | **PASS** |
| address spaces | P-S3 | M-S3 | FORBID-as-Lace-store | Y | Y | Y | Y (FM-Wgsl3) | Y | **PASS** |
| expressions | P-S4 | M-S4 | FORBID-as-Lace-WORD | Y | Y | Y | Y (FM-Wgsl4) | Y | **PASS** |
| statements | P-S5 | M-S5 | SILENT+emission-rule | Y | Y | Y | Y (FM-Wgsl5) | Y | **PASS** |
| functions/entry | P-S6 | M-S6 | emission-rule+strand | Y | Y | Y | Y (FM-Wgsl1·2) | Y | **PASS** |
| attributes | P-S7 | M-S7 | strand+Core-write | Y | Y | Y | Y (FM-Wgsl1) | Y | **PASS** |
| builtins | P-S8 | M-S8 | Core-write+emission-rule | Y | Y | Y | Y (FM-Wgsl9·6) | Y | **PASS** |
| execution/uniformity | P-S9 | M-S9 | SILENT+emission-rule | Y | Y | Y | Y (FM-Wgsl6) | Y | **PASS** |

### Overview spine nodes

| overview node | attach P/M | Fence OK | Stamp / off-board OK | Verdict |
|---|---|---|---|---|
| module / parse / textual structure | P-S1 / M-S1 | Y | Y | **PASS** |
| types · plain / vector / memory-view | P-S2 / M-S2 | Y | Y | **PASS** |
| address spaces · var/let/const | P-S3 / M-S3 | Y | Y | **PASS** |
| expressions · early eval / ops | P-S4 / M-S4 | Y | Y | **PASS** |
| statements · control / discard | P-S5 / M-S5 | Y | Y | **PASS** |
| functions · entry points / stages | P-S6 / M-S6 | Y | Y | **PASS** |
| @ attributes · workgroup_size | P-S7 / M-S7 | Y | Y | **PASS** |
| built-ins · texture / atomic / sync | P-S8 / M-S8 | Y | Y | **PASS** |
| execution · uniformity · validation | P-S9 / M-S9 | Y | Y | **PASS** |
| forbidden Core / Φ / host-API / wasm64 exit | off-board · FM-Wgsl7 · FM-Wgsl8 | Y | Y | **PASS** |

### Special gates (re-walk; not rubber-stamped)

| Gate | Result |
|---|---|
| **P-S1 / M-S1** · FM-Wgsl1 · FM-Wgsl4 · FM-Wgsl7 · **D7** | **PASS** — module FORBID-as-Lace-WORD + strand + host-API-swap; D7 cross-link in caption/Implements/stamp |
| **P-S3 / M-S3** · FM-Wgsl3 | **PASS** — address spaces FORBID-as-Lace-store under fence |
| **P-S2 / P-S4** · FM-Wgsl4 | **PASS** — types/expr FORBID-as-Core-write / FORBID-as-Lace-WORD under fences |
| **P-S5 / M-S5** · FM-Wgsl5 | **PASS** — discard SILENT + FORBID-as-emission-rule under fence |
| **P-S6 / M-S6** · FM-Wgsl1 · FM-Wgsl2 | **PASS** — entry FORBID-as-emission-rule + FORBID-as-Lace-strand under fence |
| **P-S7 / M-S7** · FM-Wgsl1 | **PASS** — workgroup_size FORBID-as-Lace-strand under fence |
| **P-S8 / M-S8** · FM-Wgsl9 · FM-Wgsl6 | **PASS** — builtins/barriers FORBID-as-Core-write + FORBID-as-emission-rule under fence |
| **P-S9 / M-S9** · FM-Wgsl6 | **PASS** — uniformity SILENT + FORBID-as-emission-rule under fence |
| **Overview host-API exit** · FM-Wgsl7 | **PASS** — WebGPU Device·Queue swap marked FORBIDDEN off-board |
| **Overview wasm64 exit** · FM-Wgsl8 | **PASS** — wasm64 ISA swap marked FORBIDDEN off-board |
| **No POINTER-in-fence** | **PASS** — audited overview + all 9 panel fences; word absent inside fences; stamps under fences |
| **No invent Φ in fences** | **PASS** — stamps under fences only; Phi = [GAP] off-board |

**P4-X verdict:** all cells **Y** → **PASS** × (9 panels + 10 overview nodes + 12 special gates). No FIX remaining.

---

## Waves B–D (deferred — one-line seeds)

| Wave | Seed (not blocking) |
|---|---|
| B | Full overload-resolution / operator tables; IO Valid Usage edge cases; diagnostic-filter recipes |
| C | Subgroup_size minutiae; extension-gated type families beyond spine |
| D | clock/hologram viewer implementation notes (cite-only; do not amend those files) |

**No** full Wave B panels this pass (default skip). Pass 5 Order Proposal = **EXECUTED** (clipboard P5-P + short mirror above). **No** deep diagram audit (Pass 6).

---

## Steward refuse (panels + stamps)

With only P-S* + stamps (+ P3-M / M-S* cites), steward must refuse:

1. “Shader module / stage / workgroup is the Lace strand / Graphic D” → **P-S1/P-S6/P-S7** + **FM-Wgsl1** + FORBID-as-Lace-strand.  
2. “Entry point fills emission / Φ” → **P-S6** + **FM-Wgsl2** + FORBID-as-emission-rule; emission `[GAP]`.  
3. “Address space / buffer / memory model is the Lace 1D strand / second store” → **P-S3** + **FM-Wgsl3** + FORBID-as-Lace-store.  
4. “WGSL types / source / identifiers / expr algebra are Lace WORD / Core schema” → **P-S1/P-S2/P-S4** + **FM-Wgsl4** + FORBID-as-Lace-WORD / FORBID-as-Core-write.  
5. “`discard` is a Lace cut / append refuse / Φ gate” → **P-S5** + **FM-Wgsl5** + SILENT + FORBID-as-emission-rule.  
6. “Barrier / uniformity accepts emission / is a Φ gate / Lace scheduler” → **P-S8/P-S9** + **FM-Wgsl6** + FORBID-as-emission-rule + SILENT.  
7. “WGSL replaces WebGPU Device/Queue/Buffer host API” → overview off-board + **FM-Wgsl7** + FORBID-as-host-API-swap.  
8. “WGSL replaces wasm64 / wasm-spec-3 compile target” → overview off-board + **FM-Wgsl8** + FORBID-as-compile-target-swap.  
9. “Builtins (numeric/texture/atomic) are Lace Core ops / Φ fillers” → **P-S8** + **FM-Wgsl9** + FORBID-as-Core-write.  
10. “Compiling / citing WGSL accepts pointer-emission.md” → **P-S1/P-S6** + D1/D6; PROPOSAL-only; GAP remains.  
11. “This fence contains Lace POINTER as a WGSL object” → opening contract · Fence OK fail · stamps belong **under** fences.

These panels are CRD **shader-lang** procedures drawn for Shadow projection / hologram draw surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, do not swap WebGPU host API, and do not swap wasm64.

---

## Pass 4 execute receipt (ascii file)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~21:57 PT |
| Artifact | this file · overview (count=1) + **P-S1…P-S9** + cross-walk + P4-X |
| Algorithms | M-S* **unchanged** (cite only) |
| Fence audit | **no POINTER word** inside any diagram fence |
| Overview | singular SOURCE MACHINERY · Core/Φ/host-API/wasm64 off-board |
| Emission | still `[GAP]` |
| PDF staged | **No** |
| Pass 5 / Pass 6 | deferred (Order Proposal / deep diagram audit) |

---

## Pass 5 pointer (ascii)

Light accuracy steward + Shadow Order Proposal EXECUTED on clipboard (**P5-X / P5-F / P5-O / P5-P / P5-R**). Canonical overview = this file’s singular SOURCE MACHINERY fence (count=1; P5-O stand). Short Order Proposal mirror under overview. Emission still `[GAP]`.
