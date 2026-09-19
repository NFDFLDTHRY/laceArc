# WebGPU CRD 2026-09-15 — Pass 2 PLAN (leftovers / failure modes / host-GPU coherence)

**Status:** **HELD / NOT EXECUTED** — plan only (2026-09-18 ~20:48 PT).  
**Station:** clipboards (HELD `webgpu Pass 2 PLAN only`)  
**Base at plan:** claim BASE `8c81990` (= `origin/main` after Pass 1 EXECUTED). Refresh `git pull --ff-only` before any execute.  
**Spec:** *WebGPU* — **W3C Candidate Recommendation Draft, 15 September 2026** · editors Kai Ninomiya, Brandon Jones, Jim Blandy (et al.)  
**Clipboard under test:** `docs/clipboards/webgpu-clipboard.md`  
**Ancestor:** [`webgpu-pass-1-plan.md`](webgpu-pass-1-plan.md) (EXECUTED · PAGE A–H, X)  
**Templates mirrored (adapt stamps; don’t clone ISA or LLM morals):** [`wasm-spec-3-pass-2-plan.md`](wasm-spec-3-pass-2-plan.md) · [`xiao-zhu-pass-2-plan.md`](xiao-zhu-pass-2-plan.md) · [`agentscope-pass-2-plan.md`](agentscope-pass-2-plan.md)  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) · [`clock/wasm/README.md`](../clock/wasm/README.md) · [`clock/shadow-clock-hologram.md`](../clock/shadow-clock-hologram.md) · [`hologram/`](../hologram/README.md) · [`hologram/visual-primitives.md`](../hologram/visual-primitives.md) · wasm-spec-3 Pass 1–6 (**wasm64 compile-target** — different layer)  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — **not** this shelf’s anti-model PAGE; do not rewrite  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `webgpu-*` for all products of this shelf.

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webgpu-crd-20260915.pdf` |
| Attachment SHA-256 | `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1` |
| Pages | **321** · text layer yes · printed ↔ PDF: HTML-print CRD — **PDF one-based** primary (Pass 1 certified) |
| Git | **Never `git add` the PDF** |

Law: WebGPU = **HOST/GPU Shadow only** · GPUBuffer ≠ strand · GPUDevice ≠ Core/Graphic D · `queue.submit`/draw/dispatch ≠ Φ · texture/bind-group ≠ second store · WGSL ≠ WORD · canvas ≠ accept emission · WebGPU ≠ wasm64 compile target · validation/device-lost ≠ Lace cut · `mapAsync`/CPU readback ≠ append authority · Hands win · `[GAP]` sealed.

```
pull/ff → claim clipboards → Hands + projection skim (host/GPU mesh)
        → open PDF (refs/local; no git add)
        → do NOT redo A–H/X fill or invent emission
        → do NOT create ascii Wave A / mechanisms / src/
        → do NOT edit wasm-spec-3 products
        → Pass 2 deltas only: D1–D6 (+ optional D7) on webgpu-clipboard.md
        → receipt on webgpu clipboard
        → check · commit · release · STOP
```

---

## SPECIAL BANNER — HOST/GPU API reference · Shadow · not Core · not Lace store · not emission

```
+======================================================================+
|  HOST / GPU API REFERENCE — WebGPU W3C CRD 2026-09-15                |
|  Pass 2 = leftovers / false-friends / FM-Wgpu* / coherence spine.    |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA leftovers (FM-W* stay there).    |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: GPUDevice/Queue/Buffer/Texture as Lace strand or store.     |
|  FORBID: queue.submit / draw / dispatch as POINTER emission / Phi.   |
|  FORBID: WGSL as WORD · canvas as emission accept · WebGPU as wasm64.|
|  FORBID: validation/device-lost as Lace cut · mapAsync as append.    |
|  KEEP-read: host/GPU mechanics for Shadow projection / hologram.     |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Status this commit: HELD / NOT EXECUTED — plan only.                |
+======================================================================+
```

This is **not** another anti-model LLM/theory leftover pass.  
This is **not** wasm-spec-3 **compile-target ISA** hygiene (FM-W\* live on that shelf).  
It is **host/GPU Web API hygiene**: what this CRD admission is **not** for Lace, numbered **FM-Wgpu\*** false friends (store/strand/emission/compile-target lookalikes), and a coherence spine that ties PAGE A–H/X to Hands / projection / hologram / wasm64 layers **without** promoting WebGPU into Core, Lace store, or Φ.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-15 |
| **2** | **Leftovers** — what this shelf is not; ON-TARGET KEEP/FORBID/MAP spine; FM-Wgpu\* with PDF pins; Hands/projection/wasm64 coherence; source gate cite; sealed |

Same **D1–D6 shape** as Xiao–Zhu / AgentScope / wasm-spec-3 Pass 2, retargeted to **host/GPU false friends** (not intern/MASK/next-token, not ReAG, not linear-mem/table/stack ISA morals).

Still **Shadow / Layer III**. Not Core. Not `src/`. Not other reference shelves. No ascii Wave A yet. Mechanisms file stays **deferred**.

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-host-API / FORBID-\* / PROPOSAL-only / SILENT stamps |
| PDF gate | Present; 321 pp.; text layer; PDF one-based primary; gitignored symlink; SHA matches |
| Per-page KEEP/FORBID | Already on A–H and X cross-cut + steward refuse (1)–(6) |
| Five-stakes | **Out of scope** for this shelf (default skip; not an anti-model PAGE) |
| Ascii Wave A / mechanisms | **Not started** (Pass 4 shape later unless human asks) |
| wasm-spec-3 products | Untouched (cite-only; Pass 1–6 EXECUTED · wasm64 seal) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| clock / hologram | Shadow surfaces citing WebGPU — not amended |

Pass 2 does **not** re-walk every PAGE unless a FM row lacks a pin or a stamp-tighten delta is required.

---

## What is still flat / missing

1. **No “what this clipboard / shelf is not” strip** — readers can mistake host/GPU admission for Lace store law, emission rules, Core doors, wasm64 swap, or permission to treat canvas/`mapAsync` as Φ acceptance.  
2. **No compact ON-TARGET / KEEP / FORBID / MAP spine strip** on the clipboard itself (per-page cards exist; Pass-2 spine card does not).  
3. **No numbered failure-mode table (FM-Wgpu\*)** with PDF pins (PAGE X false friends are narrative only; Pass 1 steward refuse lacks `mapAsync` / validation-as-cut rows as numbered FM).  
4. **No interface-coherence paragraph** stating which PAGE outputs may sit beside Hands / projection / hologram / wasm64 (read-as-host-API only; nothing writes Graphic D / strand / Φ).  
5. **Source gate** is in Pass 1 receipt — Pass 2 should **cite** it, not claim PDF absent.  
6. **Optional:** one Shadow constructive miniature (e.g. command encoder → `submit` sketch) stamped **FORBID-as-Core** / **FORBID-as-emission-rule**.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1 FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / PROPOSAL-only / FORBID-as-compile-target-swap | Pass 1 confirmed |
| Promote GPUBuffer / GPUTexture / bind-group / Adapter / Device / Queue into Lace Core or store | off-shoe / wrong ontology |
| Treat `queue.submit` / draw / dispatch / encoder finish as POINTER emission | emission sealed |
| Treat WGSL as Lace WORD / Core operator | PAGE E moral |
| Treat canvas configure / present as accepting `pointer-emission.md` | GAP remains |
| Claim WebGPU replaces wasm64 / wasm-spec-3 compile target | different layer |
| Treat validation / device-lost as Lace cut / append rule / Φ gate | SILENT-for-Lace-append |
| Treat `mapAsync` / `getMappedRange` / CPU readback as Lace append authority | FORBID-as-emission-rule |
| Create `webgpu-ascii-machinery.md` / Wave A panels | **no ascii Wave A yet** (Pass 4 shape later) |
| Create `webgpu-mechanisms.md` / Wave B | deferred |
| Amend wasm-spec-3 clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes | wrong stations / default skip |
| Add `src/`, `Cargo.toml`, or invent emission via host GPU story | Implementation Law |
| Git-add PDF · push without ask | standing rules |
| Treat `docs/clock/wasm/README.md` bake or hologram lookrefs as this CRD’s Core authority | Shadow ≠ Core |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals or wasm FM-W\* ISA morals onto this shelf | wrong false-friend class |

---

## Pass 2 product (deltas D1–D6)

Edit **only** `docs/clipboards/webgpu-clipboard.md` by default.  
Do **not** create ascii / mechanisms files this pass.  
Do **not** amend wasm-spec-3 products.

### D1 — What this clipboard / shelf is not

Short sealed list (host/GPU hygiene):

- Not Core / not a sixth graphic / not systems-manifest-ascii  
- Not `pointer-emission.md` / not a Φ fill / not acceptance of emission by calling WebGPU  
- Not Lace’s 1D strand, star index, or Graphic D scheduler  
- Not permission to treat **GPUBuffer / GPUTexture / bind-group** as Lace store  
- Not permission to treat **GPUDevice / Adapter / Queue** as lace cord / Core door / Graphic D  
- Not permission to treat **`queue.submit` / draw / dispatch / encoder finish** as POINTER when / arity / adjacency  
- Not permission to treat **WGSL** as Lace WORD  
- Not permission to treat **canvas configure / present** as accepting pointer-emission  
- Not a **wasm64 compile-target** swap (wasm-spec-3 shelf stands; different layer)  
- Not permission to treat **validation / device-lost** as Lace cut or Φ gate  
- Not permission to treat **`mapAsync` / CPU readback** as Lace append authority  
- Not a rewrite of clock / hologram / AGENTS Implementation Law  
- Not permission to add `src/` before emission acceptance  
- Not an anti-model LLM leftover shelf; not an ISA leftover shelf (FM-W\* stay on wasm-spec-3)

### D2 — ON-TARGET / KEEP / FORBID / MAP strip

Compact spine card on the **webgpu clipboard** (not five-stakes). Must match Pass 1 morals:

| KEEP-read-as-host-API | FORBID |
|---|---|
| CRD 2026-09-15 identity / fundamentals / timelines (PAGE A) | Timelines ⇒ Lace append order (A) |
| Host security & privacy threat model (B) | WebGPU security text ⇒ Lace law / AGENTS.md (B; FORBID-as-Core-write) |
| Adapter / Device / Queue mechanics (C) | GPUDevice/Adapter/Queue ⇒ lace cord / Graphic D / Core door (C; FORBID-as-Lace-strand) |
| Buffer / Texture / Sampler / Binding (D) | GPUBuffer/Texture/bind-group ⇒ Lace strand or second store (D; FORBID-as-Lace-store) |
| Pipelines + WGSL shader path (E) | WGSL ⇒ Lace WORD / Core operator (E; FORBID-as-Core-write) |
| Commands / encoders / compute & render passes (F) | `submit`/draw/dispatch ⇒ POINTER when/arity/adjacency / Φ (F; FORBID-as-emission-rule) |
| Canvas / presentation surface (G) | Canvas configure ⇒ accept `pointer-emission.md` (G; PROPOSAL-only / FORBID) |
| Errors / validation / device lost (H) | Validation / device-lost ⇒ Lace cut / append scheduler / Φ gate (H; SILENT-for-Lace-append) |
| Host/GPU as Shadow projection API (X) | WebGPU ⇒ wasm64 compile-target swap (X; FORBID-as-compile-target-swap) |

**MAP arrows (coherence with Hands / projection / hologram / wasm64 — all exits FORBIDDEN into Core write):**

```
A ──KEEP-read-as-host-API──► Shadow host/GPU identity     ──[X]──► Core / sixth graphic
B ──KEEP-read──► host threat model                        ──[X]──► Lace law / AGENTS rewrite
C ──KEEP-read──► Device/Queue mechanics                   ──[X]──► Graphic D / lace cord / Core door
D ──KEEP-read──► Buffer/Texture/Binding                   ──[X]──► Lace 1D strand / second store
E ──KEEP-read──► WGSL / pipeline (hologram live path cite)──[X]──► WORD / Core ops / src/
F ──KEEP-read──► encoder → submit / draw / dispatch       ──[X]──► pointer-emission when-rule / Φ
G ──PROPOSAL-only──► canvas / present (projection surface)──[X]──► accept pointer-emission.md
H ──SILENT──► validation / device-lost                    ──[X]──► Lace cut / append / Φ gate
X ──SILENT──► false friends / steward refuse              ──[X]──► wasm64 swap · invent Φ
clock/hologram ──cite──► Shadow viewer using this API     ──[X]──► Core authority
wasm-spec-3 ──cite-only──► wasm64 compile target          ──[X]──► conflate with WebGPU
mapAsync/readback ──KEEP-read──► CPU↔GPU transfer         ──[X]──► Lace append authority
emission = [GAP]  ·  Hands win  ·  no src/ until human-accepted emission
```

### D3 — Failure modes (FM-Wgpu1…Wgpu9)

Table on clipboard: **ID · Misread · Hands / law deadbolt · PDF pin** (Pass 1 reuse or fresh `pdftotext -f N -l N -layout`).  
Each row **must** include PDF one-based pin (printed if discoverable; else PDF-only with note) or `[OPEN]` with cause.

| ID | Misread seed (required themes) | Deadbolt seed |
|---|---|---|
| **FM-Wgpu1** | **GPUBuffer** ⇒ Lace **1D strand** | FORBID-as-Lace-store · Piece 1/6 · PAGE D · PDF ~53 |
| **FM-Wgpu2** | **GPUDevice / Adapter / Queue** ⇒ **Core / Graphic D** / lace cord / Core door | FORBID-as-Lace-strand · PAGE C · Device PDF 50 · Queue PDF 218 |
| **FM-Wgpu3** | **`queue.submit` / draw / dispatch** ⇒ POINTER **when** / arity / adjacency (**Φ** fill) | FORBID-as-emission-rule · pointer-emission `[GAP]` · PAGE F · submit PDF 218/222 · draw PDF 200 · dispatch PDF 185–186 |
| **FM-Wgpu4** | **Texture / bind-group** ⇒ **second Lace store** / Graphic D backing | FORBID-as-Lace-store · PAGE D · Bind Group PDF 100 · Texture ~PDF 222 |
| **FM-Wgpu5** | **WGSL** ⇒ Lace **WORD** / Core operator / schema language | FORBID-as-Core-write · PAGE E · §9 PDF 108–110 · override ex. PDF 120 |
| **FM-Wgpu6** | **Canvas configure / present** ⇒ **accept** `pointer-emission.md` / close Φ | PROPOSAL-only · FORBID accept-GAP · PAGE G · §21 PDF 228–235 |
| **FM-Wgpu7** | **WebGPU** ⇒ **wasm64 compile target** / replaces wasm-spec-3 shelf | FORBID-as-compile-target-swap · PAGE X · cite wasm-spec-3 Pass 1–6 (different layer) |
| **FM-Wgpu8** | **Validation / device-lost** ⇒ Lace **cut** / authorized rewrite / Φ gate / append rule | SILENT-for-Lace-append · FORBID-as-emission-rule · PAGE H · §22 PDF 238–243 |
| **FM-Wgpu9** | **`mapAsync` / `getMappedRange` / CPU readback** ⇒ Lace **append authority** / strand write gate | FORBID-as-emission-rule · SILENT-for-Lace-append · PAGE D · GPUBuffer IDL PDF ~53–60 (`mapAsync`) |

Pin loci (Pass 1 reuse — verify on execute): D Buffer PDF 53 + mapAsync IDL ~53–60; C Device PDF 50 / Queue PDF 218; F CmdBuf PDF 160 · Dispatch 185–186 · draw 200 · submit 218/222; D Bind Group PDF 100; E WGSL PDF 108–120; G Canvas PDF 228–235; H §22 PDF 238–243; X steward refuse + wasm-spec-3 cite-only.

### D4 — Interface coherence (Hands + projection + hologram + wasm64)

One short paragraph (plus optional bullet list):

- **Only** KEEP-read-as-host-API outputs may sit **beside** Lace: WebGPU CRD as the **host/GPU Web API** Shadow projection / hologram / canvas embed may call.  
- **Nothing** in A–H/X writes Graphic D, strand/, word/, pointer/, or fills `pointer-emission.md`.  
- **clock/** (`lace-projection.html`, WebGPU 3D + D1 time) and **hologram/** (`visual-primitives.md` WGSL live path) are **Shadow surfaces** that *cite* this API — glyphs ≠ schema; they do not become Core authority for this CRD or vice versa.  
- **`docs/clock/wasm/README.md`** is Shadow **projection bake** (`wasm32`/Workers) — **different layer** from this host/GPU shelf; not Spec authority.  
- **wasm-spec-3** = **compile-target ISA / wasm64 seal** — cite-only; WebGPU does **not** replace it (FM-Wgpu7).  
- Canvas / host-embed sketches stay **PROPOSAL-only**; calling GPU or configuring canvas does **not** accept emission.  
- `[GAP]` remains. Shoe in hands, or no.

### D5 — Source gate (cite Pass 1)

Do **not** narrate PDF-absent. Cite Pass 1 receipt:

- PDF **present** at `refs/local/webgpu-crd-20260915.pdf`  
- **321** pp.; text layer; PDF one-based primary (no clear printed↔PDF offset)  
- SHA-256 `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1`  
- Title WebGPU · W3C CRD **15 September 2026** · URL `https://www.w3.org/TR/2026/CRD-webgpu-20260915/`  
- Never `git add` the PDF (gitignore `refs/local/` + `*.pdf`)  
- Pass 1 products: clipboard PAGE A–H, X · **no** ascii Wave A · mechanisms deferred · execute ~`e05664e` / station note ~`8c81990`

### D6 — Sealed

Repeat sealed list: invent Φ · promote GPUBuffer/Texture/bind-group as Lace store · promote Device/Adapter/Queue as Graphic D · use submit/draw/dispatch as emission · treat WGSL as WORD · treat canvas as emission accept · swap WebGPU for wasm64 · treat validation/device-lost as Lace cut · treat mapAsync/readback as append authority · create ascii Wave A / mechanisms · amend wasm-spec-3 / map/law/graphics · `src/` · git-add PDF · pretend OCR without the file · clone LLM or ISA morals onto this shelf.

### Optional D7 — Constructive miniature (Shadow only, ≤30 min)

If time: **one** numbered paper algorithm, stamped **FORBID-as-Core** + **FORBID-as-emission-rule** + **SILENT-for-Lace-append**:

| Choice | Spec locus (seed) | Stamp |
|---|---|---|
| **(a)** Command encoder → finish → `queue.submit` sketch (encode path only) | Ch.12–19 / PAGE F · CmdBuf PDF ~160 · submit PDF 218 | FORBID-as-emission-rule · not POINTER when-rule |
| **(b)** Canvas configure → getCurrentTexture → present sketch | Ch.21 / PAGE G · PDF 228–235 | PROPOSAL-only · FORBID accept-GAP |

Mark choice points `[OPEN]` where the CRD is silent. **Skip entirely** rather than invent steps the Spec does not state. Not a Graphic D scheduler. Not `src/`. Prefer **(a)** as default host/GPU command-path miniature.

---

## Coherence with Pass 1 PAGE spine (standing rule)

| PAGE | Pass 2 use |
|---|---|
| A | D2 MAP entry; KEEP-read-as-host-API identity |
| B | FORBID-as-Core-write (not Lace law) |
| C | **FM-Wgpu2** |
| D | **FM-Wgpu1**, **FM-Wgpu4**, **FM-Wgpu9** |
| E | **FM-Wgpu5** |
| F | **FM-Wgpu3** · D7(a) seed |
| G | **FM-Wgpu6** · D7(b) seed |
| H | **FM-Wgpu8** |
| X | **FM-Wgpu7** + steward refuse mesh; SILENT; Φ `[GAP]` |

**Default:** PAGE A–H/X morals **read-only**. Open a stamp-tighten edit only if an FM pin forces a clearer FORBID line — never a PAGE rewrite, never new PAGEs, never ascii Wave A.

---

## Tickets

### T0 — Claim / base

Held at plan by `webgpu Pass 2 PLAN only` (BASE `8c81990`). Before execute: `git pull --ff-only` · refresh claim if clock turned · agent id e.g. `webgpu Pass 2 EXECUTE`.

### T1 — Hands + projection skim

Shoe → graphics A–D → systems-manifest (+ know Core ASCII is separate) → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → clock/README + lace-projection (WebGPU 3D) → clock/wasm README (different layer) → hologram/README + visual-primitives (WGSL cite) → wasm-spec-3 Pass 1 banner (**cite-only**; do not edit) → Pass 1 clipboard → this plan → PDF.

### T2 — PDF gate

Confirm `refs/local/webgpu-crd-20260915.pdf` resolves; `git check-ignore`; abort if PDF staged; SHA match Pass 1 (`6bc31a9e…64afe1`); `pdfinfo` → Pages 321.

### T3 — Write D1–D2–D4–D5–D6

Prose deltas on **webgpu-clipboard.md only**; no A–H/X moral rewrite. Prefer append after Pass 1 receipt / PAGE X (or a dedicated Pass 2 section after receipt — match wasm-spec-3 clipboard layout if one exists; else after PAGE X).

### T4 — FM-Wgpu\* hunt (D3)

Reuse Pass 1 pins; `pdftotext` only where a row lacks a pin (esp. **FM-Wgpu9** `mapAsync` IDL ~PDF 53–60). ≤2-line eye-quote per new pin.

### T5 — Five-stakes (default **skip**)

Out of scope. Only if human explicitly asks: one receipt line that webgpu Pass 2 deltas landed; **do not** rewrite five-stakes pages.

### T6 — Optional D7 miniature

Default **include if ≤30 min**; else defer with note under Pass 2 receipt. Choice (a) or (b) above — not both unless trivial. Prefer (a).

### T7 — Ascii / mechanisms / wasm-spec-3 (default **skip**)

No ascii Wave A. No mechanisms file. No wasm-spec-3 edits. Receipt: “no ascii; wasm-spec-3 untouched; mechanisms deferred.”

### T8 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "webgpu Pass 2 EXECUTE"
# commit: clipboard D1–D6 (+ D7 if any) + this plan marked EXECUTED
# never stage refs/local/*.pdf
./docs/coord/coord.sh release clipboards "webgpu Pass 2 EXECUTE"
```

Ask before push. **This plan turn does not execute.**

---

## Acceptance tests (execute must pass)

1. Pass 2 receipt on `webgpu-clipboard.md`.  
2. D1–D6 present; D5 says PDF **present** (not absent).  
3. FM-Wgpu1…Wgpu9 each have Hands/law deadbolt + PDF pin (or `[OPEN]` with cause).  
4. Required themes covered: GPUBuffer≠strand · GPUDevice≠Core/Graphic D · submit/draw/dispatch≠Φ · texture/bind-group≠second store · WGSL≠WORD · canvas≠accept emission · WebGPU≠wasm64 · validation/device-lost≠Lace cut · mapAsync/readback≠append authority.  
5. No stamp invents POINTER when/arity/adjacency or fills Φ.  
6. Pass 1 FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / PROPOSAL-only / FORBID-as-compile-target-swap not softened.  
7. law / graphics / systems-manifest / five-stakes / wasm-spec-3 / clock / hologram untouched (unless T5 explicitly opened); PDF never staged; no `src/`; **no ascii Wave A**.  
8. If D7 present: miniature is Shadow-only with FORBID-as-Core + FORBID-as-emission-rule (and PROPOSAL-only if canvas-flavored).  
9. Steward refuse tests (below) answerable from D2+D3 alone.  
10. HOST/GPU SPECIAL banner retained; relation WebGPU ≠ wasm64 ≠ Core remains explicit.

---

## Steward refuse tests (must remain rejectable)

Shoe in hands, or no.

1. “GPUBuffer is the Lace strand” → **FORBID-as-Lace-store** (FM-Wgpu1).  
2. “GPUDevice / Adapter is Graphic D / Core door” → **FORBID-as-Lace-strand** (FM-Wgpu2).  
3. “`queue.submit` emits POINTER” / “draw/dispatch fills Φ” → **FORBID-as-emission-rule** (FM-Wgpu3).  
4. “WebGPU texture/bind-group is a second Lace store” → **FORBID-as-Lace-store** (FM-Wgpu4).  
5. “WGSL is Lace WORD” → **FORBID-as-Core-write** (FM-Wgpu5).  
6. “Canvas configure accepts pointer-emission.md” → **FORBID** / **PROPOSAL-only** (FM-Wgpu6).  
7. “WebGPU replaces wasm64 / wasm-spec-3 compile target” → **FORBID-as-compile-target-swap** (FM-Wgpu7).  
8. “Validation / device-lost is a Lace cut / Φ gate” → **SILENT** / **FORBID-as-emission-rule** (FM-Wgpu8).  
9. “`mapAsync` / CPU readback is Lace append authority” → **FORBID-as-emission-rule** (FM-Wgpu9).  
10. “Calling WebGPU / configuring canvas accepts pointer-emission.md” → **FORBID** (D1/D6).

---

## Execute checklist (future — when human says go Pass 2)

```
git pull --ff-only
./docs/coord/coord.sh claim clipboards "webgpu Pass 2 EXECUTE"
# T1 Hands + projection skim
# T2 PDF gate (symlink + check-ignore + SHA; never git add)
# T3 D1 D2 D4 D5 D6 on webgpu-clipboard.md
# T4 FM-Wgpu1…Wgpu9 pins
# T5 skip five-stakes
# T6 optional D7 if ≤30 min (prefer command encoder → submit)
# T7 skip ascii / mechanisms / wasm-spec-3 edits
# Mark this plan Status: EXECUTED + receipt
./docs/coord/coord.sh check clipboards "webgpu Pass 2 EXECUTE"
# commit clipboard deltas + plan EXECUTED only
./docs/coord/coord.sh release clipboards "webgpu Pass 2 EXECUTE"
# DO NOT push unless asked · DO NOT open ascii Wave A · emission stays [GAP]
```

---

## Success criteria (plan turn — this commit)

1. This file exists at `docs/clipboards/webgpu-pass-2-plan.md`.  
2. Status **HELD / NOT EXECUTED**; HOST/GPU SPECIAL banner present.  
3. D1–D6 + optional D7 + FM-Wgpu1…Wgpu9 themes + tickets + acceptance + steward refuse specified.  
4. No clipboard / ascii / src product deltas in this commit (plan only).  
5. Clipboards station released after plan commit.  
6. No push. No `src/`. PDF unstaged. Emission `[GAP]`. wasm-spec-3 untouched.

---

## Steward test (standing)

Shoe in hands, or no.  
WebGPU is the **host GPU API** Shadow projection may call, not the lace.  
GPUBuffer is not a strand. GPUDevice is not Graphic D.  
`queue.submit` / draw / dispatch do not emit POINTER.  
Texture/bind-group is not a second store. WGSL is not WORD.  
Canvas does not accept emission. WebGPU is not the wasm64 target.  
Validation / device-lost is not a Lace cut.  
`mapAsync` / CPU readback is not append authority.  
Φ stays `[GAP]`.

---

## Plan receipt (this turn)

| Field | Value |
|---|---|
| Status | **HELD / NOT EXECUTED** (plan only) |
| When | 2026-09-18 ~20:48 PT |
| Agent | `webgpu Pass 2 PLAN only` |
| Base | `8c81990` (= origin/main at claim) |
| Product | this plan file only |
| Pass 1 ancestor | EXECUTED ~`e05664e` (clipboard A–H,X) · station note ~`8c81990` |
| Amended clipboard/ascii/src/maps/law/wasm-spec-3 | **No** (plan only) |
| PDF staged | No |
| Push | **No** |
| Emission | `[GAP]` |

### Execution receipt (fill on execute)

| Field | Value |
|---|---|
| Status | _(empty until execute)_ |
| When | |
| Agent | `webgpu Pass 2 EXECUTE` |
| Product | D1–D6 (+ D7 if any) on `webgpu-clipboard.md` |
| T5 five-stakes | **skip** (default) |
| T7 ascii/mechanisms/wasm | **skip** |
| FM-Wgpu1…Wgpu9 | _(fill: all pinned themes)_ |
| Amended map/law/graphics/src/wasm-spec-3 | **No** |
| PDF staged | **No** |
| Emission | `[GAP]` |
