# WebGPU CRD 2026-09-15 — Pass 3 PLAN (HOST/GPU system mechanisms / Wave A M-G* + P3-M mesh)

**Status:** **HELD / NOT EXECUTED** — plan only this turn.  
**Station:** clipboards (HELD `webgpu Pass 3 PLAN (HOST/GPU mechanisms)` · BASE `0e95a18` (refreshed; tip was `0334f33` at first claim))  
**Base at plan:** `0e95a18` (= `origin/main` after refresh; first claim `0334f33` = Pass 2 tip). Refresh `git pull --ff-only` before any execute.  
**Spec:** *WebGPU* — **W3C Candidate Recommendation Draft, 15 September 2026** · editors Kai Ninomiya, Brandon Jones, Jim Blandy (et al.)  
**Clipboard under test:** `docs/clipboards/webgpu-clipboard.md` (Pass 1–2 EXECUTED · PAGE A–H, X · D1–D6 + FM-Wgpu1…9 + D7)  
**ASCII companion:** **absent** — Pass 4 shape later; Wave A cards align to PAGE themes / **future** ascii `P-G*` — do **not** invent ascii at Pass 3  
**Ancestors:** [`webgpu-pass-1-plan.md`](webgpu-pass-1-plan.md) · [`webgpu-pass-2-plan.md`](webgpu-pass-2-plan.md)  
**Templates mirrored (adapt stamps; don’t clone ISA or LLM morals):** [`wasm-spec-3-pass-3-plan.md`](wasm-spec-3-pass-3-plan.md) · [`xiao-zhu-pass-3-plan.md`](xiao-zhu-pass-3-plan.md) · [`agentscope-pass-3-plan.md`](agentscope-pass-3-plan.md)  
**Mechanism schema samples (read-only):** [`wasm-spec-3-mechanisms.md`](wasm-spec-3-mechanisms.md) · [`xiao-zhu-foundations-mechanisms.md`](xiao-zhu-foundations-mechanisms.md) headers + one card  
**New artifact (execute only):** `docs/clipboards/webgpu-mechanisms.md` — **do not create at plan time**  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) (`lace-projection.html` WebGPU 3D) · [`clock/wasm/README.md`](../clock/wasm/README.md) (different layer) · [`clock/shadow-clock-hologram.md`](../clock/shadow-clock-hologram.md) · [`hologram/`](../hologram/README.md) · [`hologram/visual-primitives.md`](../hologram/visual-primitives.md) (WGSL live path) · wasm-spec-3 Pass 1–6 (**wasm64 compile-target** — cite-only; different layer)  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — **not** this shelf’s anti-model PAGE; do not rewrite  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `webgpu-*` for all products of this shelf.

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webgpu-crd-20260915.pdf` |
| Attachment SHA-256 | `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1` |
| Pages | **321** · text layer yes · printed ↔ PDF: HTML-print CRD — **PDF one-based** primary (Pass 1–2 certified) |
| Git | **Never `git add` the PDF** |

Law: WebGPU = **HOST/GPU Shadow only** · GPUBuffer ≠ strand · GPUDevice ≠ Core/Graphic D · `queue.submit`/draw/dispatch ≠ Φ · texture/bind-group ≠ second store · WGSL ≠ WORD · canvas ≠ accept emission · WebGPU ≠ wasm64 compile target · validation/device-lost ≠ Lace cut · `mapAsync`/CPU readback ≠ append authority · Hands win · `[GAP]` sealed.

```
pull/ff → claim clipboards → Hands + host/GPU mesh skim
        → open PDF (refs/local; no git add)
        → inventory Wave A mechanisms from CRD constructive spine
           (adapter → device/queue → buffer/map → texture/view
            → bind-group layout → pipeline+WGSL → encoder/passes
            → submit/present → error/device-lost vs Lace append)
        → write constructive cards M-G1…M-G9 (Shadow · host/GPU API only)
        → P3-M mechanism mesh on webgpu clipboard
           (card ↔ PAGE ↔ FM-Wgpu* ↔ projection/hologram ↔ wasm64 cite-only ↔ emission [GAP])
        → receipt · mark plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — HOST/GPU API reference · Shadow · not Core · not Lace store · not emission

```
+======================================================================+
|  HOST / GPU API REFERENCE — WebGPU W3C CRD 2026-09-15                |
|  Pass 3 = Wave A system mechanisms (M-G1…M-G9) + P3-M mesh.          |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA mechanisms (M-T* / FM-W* stay).  |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: GPUDevice/Queue/Buffer/Texture as Lace strand or store.     |
|  FORBID: queue.submit / draw / dispatch as POINTER emission / Phi.   |
|  FORBID: WGSL as WORD · canvas as emission accept · WebGPU as wasm64.|
|  FORBID: validation/device-lost as Lace cut · mapAsync as append.    |
|  KEEP-read: host/GPU mechanics for Shadow projection / hologram.     |
|  No src/ until pointer-emission accepted.  One strand.               |
|  No ascii Wave A this pass (Pass 4).  Mechanisms file = execute only.|
|  Status this commit: HELD / NOT EXECUTED — plan only.                |
+======================================================================+
```

This is **not** another anti-model LLM/theory mechanism pass.  
This is **not** wasm-spec-3 **compile-target ISA** Wave A (M-T\* / FM-W\* live on that shelf).  
It is **host/GPU Web API hygiene**: CRD **constructive procedures** cardified along the Shadow projection/hologram spine, stamped KEEP-read-as-host-API / FORBID-as-Lace-store / FORBID-as-emission-rule / SILENT / PROPOSAL-only, plus a thin **P3-M** mesh locking cards to PAGE / FM-Wgpu\* / projection·hologram cites / wasm64 cite-only / emission `[GAP]`.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-15 |
| 2 | **Leftovers** — D1–D6 + FM-Wgpu1…9 + D7 encoder→submit miniature; coherence spine |
| **3** | **System mechanisms of the host/GPU API** — constructive CRD algorithms along the projection/hologram spine, stamped KEEP/FORBID for Shadow hygiene, plus P3-M mesh |

Sibling shelves (Xiao–Zhu / Petersen / AgentScope / wasm-spec-3) used Pass 3 for Wave A cards + mechanism mesh.  
This shelf’s ask is the **same shape**, retargeted: **M-G\*** (not M-A\* / M-T\*) cardify **WebGPU CRD host/GPU procedures**, not LLM/diagnosis pipelines and not wasm ISA.

Still **Shadow / Layer III**. Not Core. Not `src/`. **No ascii Wave A yet** (Pass 4). Mechanisms file created **only at execute**.

---

## What “system mechanism” means here

A **system mechanism** is a named procedure the WebGPU CRD defines or runs as **host/GPU API** machinery:

1. Named inputs / outputs / invariants  
2. A constructive algorithm (**spec-side** numbered steps a steward could follow on paper)  
3. A PDF locus (Pass 1–2 pin reuse or fresh `pdftotext`)  
4. A Lace stamp oriented to **host/GPU hygiene** (KEEP-read-as-host-API / FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / FORBID-as-Core-write / SILENT-for-Lace-append / PROPOSAL-only / FORBID-as-compile-target-swap / …)

Prefer the CRD’s own **constructive spine** already implied by PAGE C–H + D7 (adapter → device/queue → resources → bind → pipeline+WGSL → encode → submit/present → errors) over metaphors. Align titles to **future ascii P-G\*** (Pass 4) — do not invent panels now.

Not: Lace Φ, Graphic D writes, a second store beside the strand, wasm64 ISA swap, or emission fill.

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-host-API / FORBID-* / PROPOSAL-only / SILENT stamps stand |
| D1–D6 + FM-Wgpu1…Wgpu9 + D7 | Pass 2 stands (command encoder → finish → `queue.submit` Shadow miniature on clipboard) |
| Five-stakes | **Out of scope** for this shelf (default skip) |
| Ascii Wave A / `webgpu-ascii-machinery.md` | **Absent** — Pass 4; do not create |
| `webgpu-mechanisms.md` | **Absent** (create at execute only) |
| wasm-spec-3 products | Untouched (cite-only; Pass 1–6 EXECUTED · wasm64 seal) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| clock / hologram | Shadow surfaces citing WebGPU — not amended |
| `src/` / Cargo | Absent; stay absent |

Pass 3 does **not** reopen Pass 2 leftovers, rewrite FM-Wgpu\*, invent emission, invent ascii panels, or amend wasm-spec-3 unless a stamp conflict forces a one-line clipboard tighten.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1–2 FORBID-as-Lace-store / FORBID-as-Lace-strand / FORBID-as-emission-rule / PROPOSAL-only / FORBID-as-compile-target-swap | Pass 1–2 confirmed |
| Promote GPUBuffer / GPUTexture / bind-group / Adapter / Device / Queue into Lace Core or store | off-shoe / wrong ontology |
| Treat `queue.submit` / draw / dispatch / encoder finish as POINTER emission | emission sealed |
| Treat WGSL as Lace WORD / Core operator | PAGE E moral |
| Treat canvas configure / present as accepting `pointer-emission.md` | GAP remains |
| Claim WebGPU replaces wasm64 / wasm-spec-3 compile target | different layer · FM-Wgpu7 |
| Treat validation / device-lost as Lace cut / append rule / Φ gate | SILENT-for-Lace-append |
| Treat `mapAsync` / `getMappedRange` / CPU readback as Lace append authority | FORBID-as-emission-rule · FM-Wgpu9 |
| Create `webgpu-ascii-machinery.md` / Wave A panels | **no ascii Wave A yet** (Pass 4) |
| Create mechanisms file at **plan** time | execute-only artifact |
| Amend wasm-spec-3 clipboard/ascii/mechanisms/pass plans | cite-only; wrong shelf |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes / clock / hologram | wrong stations / default skip |
| Add `src/`, `Cargo.toml`, or invent emission via host GPU story | Implementation Law |
| Git-add PDF · push without ask | standing rules |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals or wasm M-T\* / FM-W\* ISA morals onto this shelf | wrong false-friend class |
| Treat `docs/clock/wasm/README.md` bake or hologram lookrefs as this CRD’s Core authority | Shadow ≠ Core |

---

## Artifact A — Mechanism cards (primary)

### File (execute only — **not created at plan time**)

`docs/clipboards/webgpu-mechanisms.md`

### Card schema (mandatory — match AgentScope / Xiao–Zhu / wasm-spec-3 house; retarget stamps)

For each **M-G\***:

| Field | Required |
|---|---|
| Kind | e.g. adapter-request / device-queue / buffer-map / texture-view / bind-group / pipeline-wgsl / command-encode / submit-present / error-lost |
| Spec locus | § / IDL / EXAMPLE + **PDF page** (PDF one-based primary) |
| Sighting method | `pdftotext -f N -l N -layout` (or Pass 1–2 pin reuse) |
| Eye-quote | ≤2 short fragments |
| Inputs | |
| Outputs | |
| Invariants | what must hold for the CRD’s procedure |
| Algorithm | numbered constructive steps (**spec-side**, not Lace-side) |
| Complexity / termination | brief |
| Worked miniature | point to CRD example / Pass 2 **D7** where apt (do not rewrite D7) |
| Lace stamp | **KEEP-read-as-host-API** / **FORBID-as-Lace-store** / **FORBID-as-Lace-strand** / **FORBID-as-emission-rule** / **FORBID-as-Core-write** / **SILENT-for-Lace-append** / **PROPOSAL-only** / **FORBID-as-compile-target-swap** (as apt) |
| Hands cite | Graphics / Pieces / AGENTS Implementation Law · projection ≠ store |
| Panel cite | **future P-G\*** (Pass 4) · PAGE A–H/X |
| False friend | **FM-Wgpu\*** cross-link where apt |
| Projection / hologram cite | clock `lace-projection.html` / hologram `visual-primitives.md` WGSL path — **Shadow only**; glyphs ≠ schema |
| wasm64 cite | wasm-spec-3 cite-only — **different layer**; not this CRD |
| Open gaps | Φ / emission `[GAP]` notes |

### Wave A — CRD constructive spine (blocking) — aligned to PAGE themes / future ascii

These are the **system mechanisms** to card. Titles match the host/GPU constructive spine suggested for future ascii `P-G1…P-G9`; execute may refine pins. Prefer CRD algorithms over metaphors:

| ID | Mechanism | Seed locus (Pass 1–2) | Stamp seed | False friend |
|---|---|---|---|---|
| **M-G1** | **Adapter request** (`navigator.gpu` → `requestAdapter`) | PAGE C · §4 PDF **41**; Adapter PDF **~46–47** | KEEP-read-as-host-API; **FORBID-as-Lace-strand**; **FORBID-as-Core-write** (adapter ↛ Graphic D / Core door) | **FM-Wgpu2** |
| **M-G2** | **Device / Queue** (`requestDevice` · `device.queue`) | PAGE C · Device PDF **50**; Queue IDL PDF **218** | KEEP-read-as-host-API; **FORBID-as-Lace-strand**; **FORBID-as-Core-write** | **FM-Wgpu2** |
| **M-G3** | **Buffer alloc / map** (`createBuffer` · `mapAsync` / `getMappedRange` / `unmap`) | PAGE D · §5 GPUBuffer PDF **53**; map EXAMPLE PDF **55–60** | KEEP-read-as-host-API; **FORBID-as-Lace-store**; **FORBID-as-emission-rule** (map/readback ↛ append); **SILENT-for-Lace-append** | **FM-Wgpu1** · **FM-Wgpu9** |
| **M-G4** | **Texture / view** (create / view / usages) | PAGE D · Texture region ~PDF **222**; usages / TOC §6 | KEEP-read-as-host-API; **FORBID-as-Lace-store** (texture ≠ second store / Graphic D) | **FM-Wgpu4** |
| **M-G5** | **Bind group layout** (`createBindGroupLayout` / `createBindGroup`) | PAGE D · §8.2.1 PDF **100**; bind ex. PDF **108** | KEEP-read-as-host-API; **FORBID-as-Lace-store** (bind-group ≠ second Lace store) | **FM-Wgpu4** |
| **M-G6** | **Render / Compute pipeline + WGSL boundary** | PAGE E · §9 PDF **108–110**; override ex. PDF **120**; hologram WGSL live-path cite | KEEP-read-as-host-API; **FORBID-as-Core-write** (WGSL ≠ WORD; pipeline ≠ Core ops) | **FM-Wgpu5** |
| **M-G7** | **Command encoder / passes** (encode · compute/render pass · finish) | PAGE F · CmdBuf/encoder PDF **160–165**; Dispatch **185–186**; draw **200** · **Pass 2 D7** | KEEP-read-as-host-API; **FORBID-as-emission-rule**; **FORBID-as-Core**; **SILENT-for-Lace-append** | **FM-Wgpu3** |
| **M-G8** | **Submit / present** (`queue.submit` · canvas configure / `getCurrentTexture`) | PAGE F+G · submit PDF **218/222**; §21 Canvas PDF **228–235** | KEEP-read-as-host-API submit; **FORBID-as-emission-rule**; canvas **PROPOSAL-only** · **FORBID** accept-GAP | **FM-Wgpu3** · **FM-Wgpu6** |
| **M-G9** | **Error / device-lost vs Lace append** | PAGE H · §22 PDF **238–243**; `GPUDevice.lost` | KEEP-read-as-host-API; **SILENT-for-Lace-append**; **FORBID-as-emission-rule** (lost/validation ≠ Lace cut / Φ gate) | **FM-Wgpu8** |

**Context (not separate Wave A cards):** PAGE A (identity/timelines) and PAGE B (security/privacy) remain KEEP-read / FORBID-as-Core-write mesh context; PAGE X steward refuse + **FM-Wgpu7** (≠ wasm64) sit in every Open-gaps / mesh row as needed.

Waves B–D (defer with one-line seeds only): detailed color/depth attachment recipes beyond spine, multi-queue / timestamp queries, shader compilation detail beyond WGSL boundary, canvas HDR/alpha edge cases, clock/hologram viewer implementation — **not** blocking for Pass 3.

Pass 3 success = **Wave A cards complete** + **P3-M mesh** + receipt. No ascii Wave A. Mechanisms file created **only at execute**. Cross-link Pass 2 **D7** from **M-G7** (and submit half of **M-G8** as apt) — do not rewrite D7.

---

## Artifact B — Mechanism mesh on webgpu clipboard (required, thin)

Edit `docs/clipboards/webgpu-clipboard.md` only for:

### P3-M — Mechanism coherence mesh

Table columns:

| Mechanism (M-G*) | Future panel (P-G*) | Clipboard PAGE | FM-Wgpu* | Projection / hologram (cite) | wasm64 (cite-only) | Emission | KEEP/FORBID tooth | Same story? |
|---|---|---|---|---|---|---|---|---|

Must show **one tooth per Wave A card**.  
Projection/hologram column cites `clock/README.md` (`lace-projection.html` WebGPU 3D) and/or `hologram/visual-primitives.md` (WGSL live path) as **Shadow surfaces** — do not amend those files.  
wasm64 column cites wasm-spec-3 as **different layer** (FM-Wgpu7) — do not amend wasm-spec-3 products.  
Emission column must read **`[GAP]`** on every row that could smuggle when/arity/adjacency.  
CONFLICT = stop and report (do not soften).

Suggested teeth (execute confirms):

| M-G* | Future P-G* | PAGE | FM-Wgpu* | Projection / hologram | wasm64 | Emission |
|---|---|---|---|---|---|---|
| M-G1 | P-G1 | C | FM-Wgpu2 | Shadow host acquire only | ≠ compile target | `[GAP]` |
| M-G2 | P-G2 | C | FM-Wgpu2 | Device ≠ Graphic D | ≠ wasm64 ISA | `[GAP]` |
| M-G3 | P-G3 | D | FM-Wgpu1 · FM-Wgpu9 | Buffer/map ≠ strand/append | ≠ linear mem strand | `[GAP]` |
| M-G4 | P-G4 | D | FM-Wgpu4 | Texture ≠ store; hologram may *draw* | cite-only | `[GAP]` |
| M-G5 | P-G5 | D | FM-Wgpu4 | Bind ≠ second Lace store | cite-only | `[GAP]` |
| M-G6 | P-G6 | E | FM-Wgpu5 | WGSL live path cite; WGSL ≠ WORD | cite-only | `[GAP]` |
| M-G7 | P-G7 | F | FM-Wgpu3 | Encoder ≠ Φ; **D7** cross-link | cite-only | `[GAP]` |
| M-G8 | P-G8 | F+G | FM-Wgpu3 · FM-Wgpu6 | submit ≠ emission; canvas PROPOSAL-only | cite-only | `[GAP]` (FORBID fill) |
| M-G9 | P-G9 | H | FM-Wgpu8 | device-lost ≠ Lace cut | cite-only | `[GAP]` |

### P3-5S — Five-stakes (default skip)

Only if mesh finds unexpected five-stakes drift: one receipt line. Do **not** rewrite five-stakes KEEP/FORBID otherwise (this shelf is not an anti-model PAGE).

### P3-R — Pass 3 receipt

Status, PDF cite, Wave A file path, mesh summary, projection/hologram/wasm-spec-3 untouched, emission still `[GAP]`, ascii still absent (Pass 4), Pass 1–2 stamps / FM-Wgpu\* / D7 stand (or stamp-conflict note).

Optional thin stub at plan time: **none** — plan file alone. Clipboard “Pass 3 planned” line is **not** required until execute.

---

## Coherence with Pass 1–2 PAGE spine (standing rule)

| PAGE | Pass 3 use |
|---|---|
| A | KEEP-read-as-host-API identity / timelines; mesh context (not a Wave A card) |
| B | FORBID-as-Core-write (not Lace law); mesh context |
| C | **→ M-G1 · M-G2** · FM-Wgpu2 |
| D | **→ M-G3 · M-G4 · M-G5** · FM-Wgpu1 · FM-Wgpu4 · FM-Wgpu9 |
| E | **→ M-G6** · FM-Wgpu5 · hologram WGSL cite |
| F | **→ M-G7 · (M-G8 submit)** · FM-Wgpu3 · **D7** cross-link |
| G | **→ M-G8 present** · FM-Wgpu6 · PROPOSAL-only |
| H | **→ M-G9** · FM-Wgpu8 |
| X | FM-Wgpu7 + steward refuse; SILENT; Φ `[GAP]`; mesh every row |

**Default:** PAGE A–H/X morals **read-only**. Open a stamp-tighten edit only if a card forces a clearer FORBID line — never a PAGE rewrite, never new PAGEs, never invent Φ, never invent ascii.

---

## Tickets

### T0 — Claim / base

Held at plan by `webgpu Pass 3 PLAN (HOST/GPU mechanisms)` · BASE `0e95a18` (refreshed; tip was `0334f33` at first claim). Before execute: `git pull --ff-only` · refresh claim if clock turned · agent id e.g. `webgpu Pass 3 EXECUTE`.

### T1 — Hands + host/GPU mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → clock/README + lace-projection (WebGPU 3D) → clock/wasm README (different layer) → hologram/README + visual-primitives (WGSL cite) → wasm-spec-3 Pass 1–6 banner (**cite-only**; do not edit) → Pass 1–2 clipboard (A–H/X + D1–D6 + FM-Wgpu\* + D7) → this plan → house mechanism schema sample (wasm-spec-3 / Xiao–Zhu header + one card) → PDF.

### T2 — PDF gate

Confirm `refs/local/webgpu-crd-20260915.pdf` resolves; SHA matches Pass 1–2 (`6bc31a9e…64afe1`); `git check-ignore`; abort if PDF staged; `pdfinfo` → Pages 321.

### T3 — Inventory + sight Wave A loci

`pdftotext` on seed pins (Adapter/Device/Queue · Buffer/mapAsync · Texture · BindGroup · WGSL/pipeline · CmdBuf/dispatch/draw · submit · Canvas · §22 errors). Reuse Pass 1–2 pins where valid. Do not invent steps the CRD does not state.

### T4 — Write `webgpu-mechanisms.md` Wave A (M-G1…M-G9)

Full schema; constructive **spec-side** algorithms; host/GPU stamps; FM-Wgpu\* links; projection/hologram + wasm64 cite-only; emission `[GAP]` notes. Cross-link Pass 2 D7 from **M-G7** (do not rewrite D7).

### T5 — P3-M mesh + P3-R receipt on webgpu clipboard

### T6 — Five-stakes (skip unless CONFLICT)

### T7 — Ascii (default **skip**)

**No ascii Wave A.** Receipt: “ascii deferred Pass 4; future P-G\* titles reserved by M-G\*.”

### T8 — Mark plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "webgpu Pass 3 EXECUTE"
# commit: webgpu-mechanisms.md + clipboard P3-M/P3-R + this plan EXECUTED
# never stage refs/local/*.pdf
./docs/coord/coord.sh release clipboards "webgpu Pass 3 EXECUTE"
```

Ask before push.

---

## Execute checklist (when steward says go)

1. `git pull --ff-only` · refresh clipboards claim.  
2. T1 Hands + host/GPU mesh skim (no edits).  
3. T2 PDF gate (no `git add` PDF).  
4. T3 sight Wave A loci / reuse pins.  
5. T4 create `docs/clipboards/webgpu-mechanisms.md` with **M-G1…M-G9** full cards.  
6. T5 P3-M mesh + P3-R on `webgpu-clipboard.md`.  
7. T6/T7 skip unless CONFLICT (no ascii).  
8. Mark this plan **EXECUTED**.  
9. `coord.sh check` · commit · release.  
10. **STOP.** Do not push. Do not create ascii. Do not touch `src/` / Cargo / wasm-spec-3 / emission / law / graphics / clock / hologram.

---

## Acceptance tests / success criteria (execute must pass)

1. `webgpu-mechanisms.md` exists with **M-G1…M-G9** fully filled (schema fields present).  
2. Each card has PDF pin + constructive **spec-side** algorithm + Lace stamp oriented to host/GPU hygiene.  
3. Titles match Wave A spine: Adapter request · Device/Queue · Buffer alloc/map · Texture/view · Bind group layout · Render/Compute pipeline + WGSL · Command encoder/passes · Submit/present · Error/device-lost vs Lace append.  
4. Hard stamps present: M-G3 **FORBID-as-Lace-store** + mapAsync **FORBID-as-emission-rule**; M-G1/M-G2 **FORBID-as-Lace-strand**; M-G4/M-G5 **FORBID-as-Lace-store**; M-G6 **FORBID-as-Core-write**; M-G7/M-G8 **FORBID-as-emission-rule**; M-G8 canvas **PROPOSAL-only**; M-G9 **SILENT-for-Lace-append**; M-G7 **D7** cross-link.  
5. P3-M mesh on webgpu clipboard: **9 rows**, columns include card ↔ PAGE ↔ FM-Wgpu\* ↔ projection/hologram ↔ wasm64 cite-only ↔ emission `[GAP]`; no CONFLICT (or CONFLICT reported and halted).  
6. No stamp invents POINTER when/arity/adjacency; Φ / emission still `[GAP]`.  
7. Pass 1–2 morals / FM-Wgpu\* / D7 not rewritten; **no ascii** created; wasm-spec-3 / law / graphics / systems-manifest / five-stakes / clock / hologram / `src/` untouched.  
8. PDF never staged.  
9. Steward refuse tests (below) pass using only cards + P3-M.  
10. HOST/GPU SPECIAL banner retained; WebGPU ≠ Lace store ≠ emission ≠ wasm64 remains explicit.

---

## Steward refuse tests

Shoe in hands, or no. With only M-G\* + P3-M, steward must refuse:

1. “GPUBuffer is the Lace strand” → **M-G3** + **FM-Wgpu1** + FORBID-as-Lace-store.  
2. “GPUDevice / Adapter is Graphic D / Core door” → **M-G1/M-G2** + **FM-Wgpu2** + FORBID-as-Lace-strand.  
3. “`queue.submit` emits POINTER” / “draw/dispatch fills Φ” → **M-G7/M-G8** + **FM-Wgpu3** + FORBID-as-emission-rule; emission `[GAP]`.  
4. “Texture / bind-group is a second Lace store” → **M-G4/M-G5** + **FM-Wgpu4**.  
5. “WGSL is Lace WORD” → **M-G6** + **FM-Wgpu5** + FORBID-as-Core-write.  
6. “Canvas configure accepts pointer-emission.md” → **M-G8** + **FM-Wgpu6** + PROPOSAL-only; GAP remains.  
7. “WebGPU replaces wasm64 / wasm-spec-3 compile target” → PAGE X / mesh wasm64 column + **FM-Wgpu7** + FORBID-as-compile-target-swap.  
8. “Validation / device-lost is a Lace cut / Φ gate” → **M-G9** + **FM-Wgpu8** + SILENT.  
9. “`mapAsync` / CPU readback is Lace append authority” → **M-G3** + **FM-Wgpu9** + FORBID-as-emission-rule.  
10. “Calling WebGPU / configuring canvas accepts pointer-emission.md” → **M-G8** + D1/D6; GAP remains.

These mechanisms are CRD **host/GPU** procedures — Shadow reading for Lace projection / hologram / canvas embed surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, and do not swap wasm64.

---

## Success criteria (plan turn — this commit)

1. This file exists at `docs/clipboards/webgpu-pass-3-plan.md`.  
2. Status **HELD / NOT EXECUTED**; HOST/GPU SPECIAL banner present.  
3. Wave A **M-G1…M-G9** + full card schema + P3-M mesh + tickets + acceptance + steward refuse specified.  
4. **No** `webgpu-mechanisms.md` created; **no** clipboard / ascii / src product deltas in this commit (plan only).  
5. Clipboards station released after plan commit.  
6. No push. No `src/`. PDF unstaged. Emission `[GAP]`. wasm-spec-3 untouched.

---

## Steward test (standing)

Shoe in hands, or no.  
WebGPU is the **host GPU API** Shadow projection / hologram may call, not the lace.  
Adapter/Device/Queue are not Graphic D. GPUBuffer/Texture/bind-group are not the strand or a second store.  
Encoder → submit / draw / dispatch do not emit POINTER.  
WGSL is not WORD. Canvas does not accept emission.  
Validation / device-lost is not a Lace cut. `mapAsync` is not append authority.  
WebGPU is not the wasm64 compile target.  
Φ stays `[GAP]`. No ascii until Pass 4. No `src/` until human-accepted emission.

---

## Plan receipt (this turn)

| Field | Value |
|---|---|
| Status | **HELD / NOT EXECUTED** |
| When | 2026-09-18 ~20:53 PT (plan) |
| Agent | `webgpu Pass 3 PLAN (HOST/GPU mechanisms)` |
| Base | `0e95a18` (refresh after kit door; first claim was `0334f33`) |
| Product | this plan only |
| Pass 1–2 ancestors | Pass 1 PAGE A–H,X · Pass 2 D1–D6 + FM-Wgpu\* + D7 EXECUTED |
| Amended clipboard/ascii/mechanisms/src/maps/law/wasm-spec-3 | **No** |
| PDF staged | No |
| Push | **No** |
| Emission | `[GAP]` |
| Execute | **not** performed |

### Execution receipt (fill on execute)

| Field | Value |
|---|---|
| Status | _(fill)_ |
| When | _(fill)_ |
| Agent | `webgpu Pass 3 EXECUTE` |
| Artifact A | `webgpu-mechanisms.md` · M-G1…M-G9 |
| Artifact B | P3-M / P3-R on `webgpu-clipboard.md` |
| T6 five-stakes | skip (default) |
| T7 ascii | **skip** (Pass 4) |
| Amended map/law/graphics/src/wasm-spec-3/clock/hologram | **No** |
| PDF staged | **No** |
| Emission | `[GAP]` |
| Claim BASE | _(fill)_ |
