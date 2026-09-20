# WebAssembly Spec 3.0 — Pass 3 PLAN (system mechanisms / Wave A M-T* + P3-M mesh)

**Status:** **EXECUTED** · 2026-09-18 ~20:08 PT  
**Station:** clipboards (EXECUTE `wasm-spec-3 Pass 3 EXECUTE`)  
**Base at plan:** `e1c1582` · plan rebased as `0575b28` (onto `591a61a`) · execute on top  
**Spec:** WebAssembly Specification **Release 3.0** (2026-09-11) · editor Andreas Rossberg / W3C CG  
**Clipboard under test:** `docs/clipboards/wasm-spec-3-clipboard.md` (Pass 1–2 EXECUTED)  
**ASCII companion (read-only default):** `docs/clipboards/wasm-spec-3-ascii-machinery.md` (overview + **P-T1…P-T9**)  
**Ancestors:** [`wasm-spec-3-pass-1-plan.md`](wasm-spec-3-pass-1-plan.md) · [`wasm-spec-3-pass-2-plan.md`](wasm-spec-3-pass-2-plan.md)  
**Templates mirrored (adapt, don’t clone LLM morals):** [`xiao-zhu-pass-3-plan.md`](xiao-zhu-pass-3-plan.md) · [`agentscope-pass-3-plan.md`](agentscope-pass-3-plan.md) · [`petersen-zech-pass-3-plan.md`](petersen-zech-pass-3-plan.md)  
**Mechanism schema samples (read-only):** [`agentscope-mechanisms.md`](agentscope-mechanisms.md) · [`xiao-zhu-foundations-mechanisms.md`](xiao-zhu-foundations-mechanisms.md) headers + one card  
**New artifact (execute only):** `docs/clipboards/wasm-spec-3-mechanisms.md` — **do not create at plan time**  
**Mesh (read-only):** [`rust-nostd-crate-map.md`](../plans/rust-nostd-crate-map.md) · [`rust-nostd-branch-contracts.md`](../plans/rust-nostd-branch-contracts.md) · [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`**  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — **not** this shelf’s anti-model PAGE; do not rewrite  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webassembly-spec-3.0.pdf` |
| Attachment SHA-256 | `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` |
| Pages | **323** · text layer yes · printed ≈ PDF − 4 (Pass 1–2 certified) |
| Git | **Never `git add` the PDF** |

Law: WASM = **compile target only** · linear mem ≠ strand · table ≠ star · stack/frames ≠ append · `br`/`return`/call ≠ Φ · validate ≠ admit POINTER · wat ≠ authority · import host ≠ fill `[GAP]` · trap ≠ Lace cut · instantiate ≠ Core birth · Hands win · `[GAP]` sealed · zero foreign crates · no `src/` until emission accepted.

```
pull/ff → claim clipboards → Hands + target-mesh skim
        → open PDF (refs/local; no git add)
        → inventory Wave A mechanisms 1:1 from ascii P-T1…P-T9 constructive spine
        → write constructive cards M-T1…M-T9 (Shadow · compile-target only)
        → P3-M mechanism mesh on wasm clipboard (card ↔ P-T* ↔ PAGE ↔ FM-W* ↔ rust-nostd ↔ emission [GAP])
        → receipt · mark plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — COMPILATION TARGET (not anti-model / not Core)

```
+======================================================================+
|  COMPILATION TARGET — Lace Rust #![no_std]  -->  wasm32-unknown-unknown |
|  Pass 3 = Wave A system mechanisms (M-T1…M-T9) + P3-M mesh.            |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model).   |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.            |
|  WASM ops = TARGET semantics.  Do NOT invent POINTER emission / Phi.   |
|  Do NOT import WASM store/memory/table/stack as Lace's 1D strand.      |
|  Zero crates.io / foreign deps.  No src/ until pointer-emission accepted.|
|  Status this commit: EXECUTED — Wave A M-T1…M-T9 + P3-M.               |
+======================================================================+
```

This is **not** another anti-model LLM/theory mechanism pass.  
It is **compile-target hygiene**: Spec 3.0 **constructive procedures** cardified 1:1 from the Pass 1 ascii spine (**P-T1…P-T9**), stamped KEEP-read-as-target / FORBID-as-Lace-store / FORBID-as-emission-rule / SILENT / PROPOSAL-only, plus a thin **P3-M** mesh locking cards to PAGE / FM-W* / rust-nostd (read-only) / emission `[GAP]`.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF + ASCII) | **Admission + target machinery** — PAGE A–H, X stamped; overview + P-T1…P-T9 |
| 2 | **Leftovers** — D1–D6 + FM-W1…W9 + D7 binary decode miniature; coherence spine |
| **3** | **System mechanisms of the compile target** — constructive Spec algorithms along the ascii spine, stamped KEEP/FORBID for `#![no_std]` → wasm32 hygiene, plus P3-M mesh |

Sibling shelves (Xiao–Zhu / Petersen / AgentScope) used Pass 3 for Wave A cards + mechanism mesh.  
This shelf’s ask is the **same shape**, retargeted: **M-T\*** (not M-A\*) cardify **Spec 3.0 compilation-target procedures**, not LLM/diagnosis/math pipelines.

Still **Shadow / Layer III**. Not Core. Not `src/`. No new ascii Wave B by default. Mechanisms file created **only at execute**.

---

## What “system mechanism” means here

A **system mechanism** is a named procedure Spec 3.0 defines or runs as **target ISA / runtime / encode** machinery:

1. Named inputs / outputs / invariants  
2. A constructive algorithm (**spec-side** numbered steps a steward could follow on paper)  
3. A PDF locus (Pass 1–2 pin reuse or fresh `pdftotext`)  
4. A Lace stamp oriented to **compile-target hygiene** (KEEP-read-as-target / FORBID-as-Lace-store / FORBID-as-emission-rule / SILENT / PROPOSAL-only / …)

Prefer the Spec’s own **constructive spine** already drawn in ascii P-T1…P-T9 (module → types → validate → runtime → reduce → binary → wat twin → host embed → trap) over metaphors.

Not: Lace Φ, Graphic D writes, a second store beside the strand, rust-nostd door birth, or emission fill.

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-target / FORBID-* / PROPOSAL-only / SILENT stamps stand |
| ASCII overview + P-T1…P-T9 | Landed; captions + PDF pins; **cardify 1:1 — do not invent new panels** |
| D1–D6 + FM-W1…W9 + D7 | Pass 2 stands (binary section decode miniature on clipboard) |
| Five-stakes | **Out of scope** for this shelf (default skip) |
| rust-nostd crate-map / branch-contracts | Untouched (stand; mesh cite only — read-only) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| `wasm-spec-3-mechanisms.md` | **Absent** (create at execute only) |
| `src/` / Cargo | Absent; stay absent |

Pass 3 does **not** reopen Pass 2 leftovers, rewrite FM-W*, invent emission, or rewrite Pass 1 ascii unless a stamp conflict forces a one-line tighten.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1–2 FORBID-as-Lace-store / FORBID-as-emission-rule / PROPOSAL-only | Pass 1–2 confirmed |
| Promote WASM store / linear mem / table / stack / frames into Lace Core | off-shoe / wrong ontology |
| Treat validate / instantiate / reduce as admit-POINTER or Core birth | emission + Core sealed |
| New ascii Wave B panels / rewrite P-T1…P-T9 wholesale | default read-only; stamp conflict only |
| Create mechanisms file at **plan** time | execute-only artifact |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes | wrong stations / default skip |
| Add `src/`, `Cargo.toml`, crates.io deps, or rustc flags that invent emission | Implementation Law |
| Fill emission `[GAP]` via host import / compile-to-wasm32 story | FORBID |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals onto this shelf | wrong genre |
| Git-add PDF · push without ask | standing rules |
| Treat `docs/clock/wasm/README.md` projection bake as Spec 3.0 authority | Shadow bake ≠ this shelf |

---

## Artifact A — Mechanism cards (primary)

### File (execute only — **not created at plan time**)

`docs/clipboards/wasm-spec-3-mechanisms.md`

### Card schema (mandatory — match AgentScope / Xiao–Zhu / Petersen house; retarget stamps)

For each **M-T\***:

| Field | Required |
|---|---|
| Kind | e.g. module-anatomy / types / validation / runtime / reduction / binary-decode / text-twin / host-embed / trap |
| Spec locus | § / Def / Fig + **PDF page** (printed ≈ PDF − 4) |
| Sighting method | `pdftotext -f N -l N -layout` (or Pass 1–2 pin reuse) |
| Eye-quote | ≤2 short fragments |
| Inputs | |
| Outputs | |
| Invariants | what must hold for the Spec’s procedure |
| Algorithm | numbered constructive steps (**spec-side**, not Lace-side) |
| Complexity / termination | brief |
| Worked miniature | point to Spec example / Pass 2 D7 where apt (do not rewrite D7) |
| Lace stamp | **KEEP-read-as-target** / **FORBID-as-Lace-store** / **FORBID-as-emission-rule** / **FORBID-as-Core** / **SILENT-for-Lace-append** / **PROPOSAL-only** (as apt) |
| Hands cite | Graphics / Pieces / AGENTS Implementation Law |
| Panel cite | **P-T\*** (1:1) · PAGE A–H/X |
| False friend | **FM-W\*** cross-link where apt |
| rust-nostd cite | crate-map / branch-contracts read-only (target surface ≠ door / ≠ birth) |
| Open gaps | Φ / emission `[GAP]` notes |

### Wave A — Spec constructive spine (blocking) — **1:1 with P-T1…P-T9**

These are the **system mechanisms** to card. Titles and seed loci match ascii panels; execute may refine pins. Prefer Spec algorithms over metaphors:

| ID | Mechanism (P-T title) | Seed locus (Pass 1–2) | Stamp seed | False friend |
|---|---|---|---|---|
| **M-T1** | **Module anatomy** (sections → abstract module) | PAGE B · P-T1 · §2.5 PDF ~27 (=p.23); §5.5.2 PDF ~205 | KEEP-read-as-target; **FORBID-as-Lace-store**; **FORBID-as-Core** (module ↛ Core door) | FM-W9 (instantiate / module→instance ↛ Core birth) |
| **M-T2** | **Types / values** | PAGE C · P-T2 · §2.2–2.3 PDF ~11–16 | KEEP-read-as-target; **FORBID-as-Core-write** (valtypes ↛ WORD/POINTER kinds) | (MAP to word/ · pointer/ kinds — exit FORBIDDEN) |
| **M-T3** | **Validation** (stack-type / matching) | PAGE D · P-T3 · Ch.3 PDF ~33; §7.6 PDF ~274 | KEEP-read-as-target; **FORBID-as-emission-rule**; **SILENT-for-Lace-append** | **FM-W5** |
| **M-T4** | **Runtime structures** (store, instances, stack, frames, mem, table) | PAGE E · P-T4 · §4.2 PDF ~87–94 | KEEP-read-as-target; **FORBID-as-Lace-store** (linear mem ≠ strand; table ≠ star; stack/frames ≠ append) | **FM-W1…W3** · FM-W9 |
| **M-T5** | **Instruction reduction** (execution / control) | PAGE F · P-T5 · §4.6 PDF ~126+; control ~127–128 | KEEP-read-as-target; **FORBID-as-emission-rule** (`br`/`return`/call ↛ Φ) | **FM-W4** |
| **M-T6** | **Binary decode** (bytes → module) | PAGE G · P-T6 · Ch.5 PDF ~183; §5.5.2 ~205 · **Pass 2 D7** | KEEP-read-as-target decode; **FORBID-as-Core**; SILENT-for-Lace-append | (decode ↛ Core birth / `src/`) |
| **M-T7** | **Text twin** (`.wat` non-authority) | PAGE G · P-T7 · Ch.6 PDF ~211 | KEEP-read-as-target twin; text = **non-authority** vs binary | **FM-W6** |
| **M-T8** | **Host embed** (import-export / embedding boundary) | PAGE H · P-T8 · §7.1 PDF ~245 | KEEP-read-as-target; **PROPOSAL-only**; **FORBID** fill-GAP | **FM-W7** |
| **M-T9** | **Trap / divergence vs Lace append** | PAGE X · P-T9 · §4.2.2 Results PDF ~88; control/trap ~126–128 | KEEP-read-as-target ISA; **FORBID-as-emission-rule**; **SILENT-for-Lace-append** (trap ≠ Lace cut) | **FM-W8** |

Waves B–D (defer with one-line seeds only): numerics / SIMD detail beyond reduction spine, multi-memory / GC / threads extensions as Spec profiles, soundness proofs appendix depth, embedding API surface beyond §7.1, clock/wasm projection bake — **not** blocking for Pass 3.

Pass 3 success = **Wave A cards complete** + **P3-M mesh** + receipt. No new ascii Wave B. Mechanisms file created **only at execute**. Cross-link Pass 2 D7 from **M-T6** (do not rewrite D7).

---

## Artifact B — Mechanism mesh on wasm clipboard (required, thin)

Edit `docs/clipboards/wasm-spec-3-clipboard.md` only for:

### P3-M — Mechanism coherence mesh

Table columns:

| Mechanism (M-T*) | Panel (P-T*) | Clipboard PAGE | FM-W* | rust-nostd (read-only) | Emission | KEEP/FORBID tooth | Same story? |
|---|---|---|---|---|---|---|---|

Must show **one tooth per Wave A card**.  
rust-nostd column cites crate-map / branch-contracts as **target surface ≠ door / ≠ birth** only — do not amend those files.  
Emission column must read **`[GAP]`** on every row that could smuggle when/arity/adjacency.  
CONFLICT = stop and report (do not soften).

Suggested teeth (execute confirms):

| M-T* | P-T* | PAGE | FM-W* | rust-nostd cite | Emission |
|---|---|---|---|---|---|
| M-T1 | P-T1 | B | FM-W9 | wasm32 surface ≠ strand/ · core/ door | `[GAP]` |
| M-T2 | P-T2 | C | — (MAP forbid) | ≠ word/ · pointer/ kinds | `[GAP]` |
| M-T3 | P-T3 | D | FM-W5 | validate ≠ admit POINTER | `[GAP]` |
| M-T4 | P-T4 | E | FM-W1…W3 · W9 | store/mem/table/stack ≠ strand / Graphic D | `[GAP]` |
| M-T5 | P-T5 | F | FM-W4 | control ≠ pointer-emission when-rule | `[GAP]` |
| M-T6 | P-T6 | G | — (D7) | decode ≠ Core birth / `src/` | `[GAP]` |
| M-T7 | P-T7 | G | FM-W6 | twin only; no sole authority | `[GAP]` |
| M-T8 | P-T8 | H | FM-W7 | host embed PROPOSAL-only | `[GAP]` (FORBID fill) |
| M-T9 | P-T9 | X | FM-W8 | trap ≠ Lace cut / append | `[GAP]` |

### P3-5S — Five-stakes (default skip)

Only if mesh finds unexpected five-stakes drift: one receipt line. Do **not** rewrite five-stakes KEEP/FORBID otherwise (this shelf is not an anti-model PAGE).

### P3-R — Pass 3 receipt

Status, PDF cite, Wave A file path, mesh summary, rust-nostd untouched, emission still `[GAP]`, ascii P-T* stamps stand (or stamp-conflict note).

Optional thin stub at plan time: **none** — plan file alone. Clipboard “Pass 3 planned” line is **not** required until execute.

---

## Coherence with ASCII P-T\* (standing rule)

| Panel | PAGE | Pass 3 use |
|---|---|---|
| overview | A | KEEP-read-as-target identity; mesh context |
| P-T1 | B | **→ M-T1** |
| P-T2 | C | **→ M-T2** |
| P-T3 | D | **→ M-T3** · FM-W5 |
| P-T4 | E | **→ M-T4** · FM-W1…W3 |
| P-T5 | F | **→ M-T5** · FM-W4 |
| P-T6 | G | **→ M-T6** · D7 cross-link |
| P-T7 | G | **→ M-T7** · FM-W6 |
| P-T8 | H | **→ M-T8** · FM-W7 |
| P-T9 | X | **→ M-T9** · FM-W8 |

**Default:** ascii file **read-only**. Open a stamp-tighten edit only if a card forces a clearer FORBID line under a panel — never a Wave B rewrite, never new panels, never invent Φ.

---

## Tickets

### T0 — Claim / base

Held at plan by `wasm-spec-3 Pass 3 plan` · BASE `e1c1582`. Before execute: `git pull --ff-only` · refresh claim if clock turned · agent id e.g. `wasm-spec-3 Pass 3 EXECUTE`.

### T1 — Hands + target-mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → rust-nostd crate-map + branch-contracts (read-only) → pointer-emission `[GAP]` → clock/wasm README (Shadow bake only) → Pass 1–2 clipboard (A–H/X + D1–D6 + FM-W* + D7) → ascii P-T1…P-T9 → this plan → house mechanism schema sample (AgentScope/Xiao–Zhu header + one card).

### T2 — PDF gate

Confirm `refs/local/webassembly-spec-3.0.pdf` resolves; SHA matches; `git check-ignore`; abort if PDF staged.

### T3 — Inventory + sight Wave A loci

`pdftotext` on P-T seed pins (module §2.5 / types §2.2–2.3 / Ch.3+§7.6 / §4.2 / §4.6 / Ch.5 / Ch.6 / §7.1 / results+trap). Reuse Pass 1–2 pins where valid. Do not invent steps the Spec does not state.

### T4 — Write `wasm-spec-3-mechanisms.md` Wave A (M-T1…M-T9)

Full schema; constructive **spec-side** algorithms; compile-target stamps; FM-W* links; rust-nostd read-only cites; emission `[GAP]` notes. Cross-link Pass 2 D7 from M-T6 (do not rewrite D7).

### T5 — P3-M mesh + P3-R receipt on wasm clipboard

### T6 — Five-stakes (skip unless CONFLICT)

### T7 — Ascii stamp-tighten (skip unless CONFLICT)

Default skip. Only if a card stamp conflicts with a P-T caption — one-line tighten, no Wave B.

### T8 — Mark plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "wasm-spec-3 Pass 3 EXECUTE"
# commit: wasm-spec-3-mechanisms.md + clipboard P3-M/P3-R + this plan EXECUTED
./docs/coord/coord.sh release clipboards "wasm-spec-3 Pass 3 EXECUTE"
```

Ask before push.

---

## Execute checklist (when steward says go)

1. `git pull --ff-only` · refresh clipboards claim.  
2. T1 Hands + mesh skim (no edits).  
3. T2 PDF gate (no `git add` PDF).  
4. T3 sight Wave A loci / reuse pins.  
5. T4 create `docs/clipboards/wasm-spec-3-mechanisms.md` with **M-T1…M-T9** full cards.  
6. T5 P3-M mesh + P3-R on `wasm-spec-3-clipboard.md`.  
7. T6/T7 skip unless CONFLICT.  
8. Mark this plan **EXECUTED**.  
9. `coord.sh check` · commit · release.  
10. **STOP.** Do not push. Do not create ascii Wave B. Do not touch `src/` / Cargo / rust-nostd / emission / law / graphics.

---

## Acceptance tests / success criteria (execute must pass)

1. `wasm-spec-3-mechanisms.md` exists with **M-T1…M-T9** fully filled (schema fields present).  
2. Each card has PDF pin + constructive **spec-side** algorithm + Lace stamp oriented to compile-target hygiene.  
3. Titles are **1:1** with P-T1…P-T9 (Module anatomy, Types/values, Validation, Runtime structures, Instruction reduction, Binary decode, Text twin, Host embed, Trap/divergence vs Lace append).  
4. Hard stamps present: M-T4 **FORBID-as-Lace-store**; M-T3/M-T5/M-T9 **FORBID-as-emission-rule**; M-T8 **PROPOSAL-only** + FORBID fill-GAP; M-T7 text non-authority; M-T6 FORBID-as-Core + D7 cross-link.  
5. P3-M mesh on wasm clipboard: **9 rows**, columns include card ↔ P-T* ↔ PAGE ↔ FM-W* ↔ rust-nostd (read-only) ↔ emission `[GAP]`; no CONFLICT (or CONFLICT reported and halted).  
6. No stamp invents POINTER when/arity/adjacency; Φ / emission still `[GAP]`.  
7. Pass 1–2 morals / FM-W* / D7 not rewritten; ascii P-T* default untouched; rust-nostd / law / graphics / systems-manifest / five-stakes / `src/` / Cargo untouched.  
8. PDF never staged.  
9. Steward refuse tests (shoe in hands) pass using only cards + P3-M (below).

---

## Steward refuse tests

Shoe in hands, or no. With only M-T* + P3-M, steward must refuse:

1. “WASM linear memory is the Lace strand” → **M-T4** + **FM-W1** + FORBID-as-Lace-store.  
2. “WASM table is the Lace star index” → **M-T4** + **FM-W2**.  
3. “Operand stack / frames are Lace append / Graphic D” → **M-T4** + **FM-W3**.  
4. “`br` / `return` / call emits POINTER” → **M-T5** + **FM-W4** + FORBID-as-emission-rule; emission `[GAP]`.  
5. “Validation admits POINTER / opens Lace write” → **M-T3** + **FM-W5** + SILENT.  
6. “`.wat` is sole authority over binary” → **M-T7** + **FM-W6**.  
7. “Import host fn fills emission `[GAP]`” → **M-T8** + **FM-W7** + PROPOSAL-only; GAP remains.  
8. “Trap is a Lace cut / append rule” → **M-T9** + **FM-W8** + SILENT.  
9. “Instantiate / compile-to-wasm32 is Core birth / accepts pointer-emission” → **M-T1/M-T6/M-T8** + **FM-W9**; rust-nostd birth cards stand separate; emission `[GAP]`.

These mechanisms are Spec 3.0 **target** procedures — Shadow reading for a future `#![no_std]` → `wasm32-unknown-unknown` surface.  
They do not write Graphic D, do not birth `src/`, and do not fill Φ.

---

## Plan receipt (EXECUTED)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When (plan) | 2026-09-18 ~20:05 PT |
| When (execute) | 2026-09-18 ~20:08 PT |
| Station | clipboards · agent `wasm-spec-3 Pass 3 EXECUTE` |
| Base | `e1c1582` · plan `0575b28` (rebased onto `591a61a`) |
| Artifact A | [`wasm-spec-3-mechanisms.md`](wasm-spec-3-mechanisms.md) · **M-T1…M-T9** |
| Artifact B | P3-M / P3-R on [`wasm-spec-3-clipboard.md`](wasm-spec-3-clipboard.md) |
| Wave A IDs | **M-T1…M-T9** 1:1 with P-T1…P-T9 |
| ASCII | read-only default (no Wave B; no stamp conflict) |
| Emission | still `[GAP]` |
| rust-nostd | read-only mesh cite (untouched) |
| PDF | never staged |
| Push | **not** performed |
| Execute | **performed** |

---

## Steward test (standing)

Shoe in hands, or no.  
WASM is the **compile target**, not the Lace store, not Core, not an emission rule.  
Module / types / validate / runtime / reduce / decode / wat / embed / trap are Spec procedures — KEEP-read-as-target only.  
Linear memory is not the strand. Tables are not stars. Stacks are not append.  
`br` / `return` / call / trap do not emit POINTER and do not cut the lace.  
Host import does not fill `[GAP]`. Instantiating does not birth Core.  
Zero foreign crates. No `src/` until human-accepted emission.  
Φ stays `[GAP]`.
