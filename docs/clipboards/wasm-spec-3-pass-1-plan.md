# WebAssembly Spec 3.0 — Pass 1 PLAN (hybrid: PDF admission + ASCII target machinery)

**Status:** **HELD / NOT EXECUTED** — plan only (2026-09-18 ~19:51 PT).  
**Station:** clipboards (claim note: `wasm-spec-3.0 Pass 1 PLAN only`)  
**Base at plan:** `1831ad1` (station claim BASE) · refresh `git pull --ff-only` before any execute  
**Emission:** still `[GAP]` (`docs/pointer-emission.md` = DRAFT, not human-accepted)  
**Push:** **DO NOT PUSH** this plan turn. **DO NOT EXECUTE** Pass 1 products in this commit.

---

## SPECIAL BANNER — COMPILATION TARGET (not Core / not anti-model shelf)

```
+======================================================================+
|  COMPILATION TARGET — Lace Rust #![no_std]  -->  wasm32-unknown-unknown |
|  Shadow docs only this pass.  NOT Lace Core.  NOT Graphic D.           |
|  WASM ops = TARGET semantics.  Do NOT invent POINTER emission / Phi.   |
|  Do NOT import WASM store/memory/table/stack as Lace's 1D strand.      |
|  Zero crates.io / foreign deps.  No src/ until pointer-emission accepted.|
+======================================================================+
```

This is **not** another anti-model LLM/theory clipboard (Xiao–Zhu / Petersen / AgentScope / Kauffman / Rowlands).  
It is the **system-mechanism map of the compile target** for Lace’s planned first-party `#![no_std]` Rust posture.

---

## PDF identity (verified at plan time)

| Field | Value |
|---|---|
| Title | **WebAssembly Specification** |
| Release | **3.0 (2026-09-11)** |
| Editor | Andreas Rossberg / WebAssembly Community Group |
| Pages | **323** (`pdfinfo`) |
| Text layer | **Present** (pdfTeX / LaTeX hyperref) |
| Attachment path | `/home/box/agent-data/agents/96c07526-1d6e-41cc-85df-8eafeb8b76ea/attachments/687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce.pdf` |
| SHA-256 (`sha256sum`) | `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` |
| Planned working link (gitignored; create on execute) | `refs/local/webassembly-spec-3.0.pdf` |
| Printed ↔ PDF offset (plan spot-check) | **printed p ≈ PDF p − 4** (Ch.1 printed **1** = PDF **5**; Structure printed **5** = PDF **9**; Execution printed **81** = PDF **85**). Re-verify on execute. |
| Git | **Never `git add` the PDF** (`.gitignore` already ignores `refs/local/` and `*.pdf`) |

### Constructive spine (TOC light skim — `pdftotext`)

| Spec chapter | Printed ≈ | PDF ≈ | Role for ASCII |
|---|---|---|---|
| 1 Introduction | 1–4 | 5–8 | Scope / design goals (context only) |
| **2 Structure** | 5–28 | 9–32 | Module / types / values / instructions anatomy |
| **3 Validation** | 29–80 | 33–84 | Stack-type / matching / instruction & module validation |
| **4 Execution** | 81–178 | 85–182 | Runtime store · instances · stack · frames · reduction · numerics |
| **5 Binary Format** | 179–206 | 183–210 | Bytes → module decode pipeline |
| **6 Text Format** | 207–240 | 211–244 | `.wat` twin (non-authority vs binary) |
| 7 Appendix | 241+ | 245+ | Embedding · profiles · soundness · validation algorithm (host / trap support) |

Spine for panels: **Structure → Validation → Execution/runtime → Binary → Text**, plus **embed boundary** and **trap/divergence** as needed.

---

## Relation to rust-nostd plans (target surface ≠ crate-map / ≠ emission)

| Artifact | Role vs this Pass 1 |
|---|---|
| [`docs/plans/rust-nostd-crate-map.md`](../plans/rust-nostd-crate-map.md) | Planned **first-party crate tree** (strand/word/pointer/…); **not** a WASM module map. WASM is the future **compile target surface**, not a door. |
| [`docs/plans/rust-nostd-branch-contracts.md`](../plans/rust-nostd-branch-contracts.md) | Serial **birth cards**; emission remains `[GAP]`. No door may smuggle WASM memory/table as store. |
| [`docs/clock/wasm/README.md`](../clock/wasm/README.md) | Shadow **projection bake** note only (`wasm32-unknown-unknown` / Workers). **Not Core.** Not this spec’s authority. |
| [`docs/pointer-emission.md`](../pointer-emission.md) | Still **DRAFT / `[GAP]`**. Spec control flow (`br`/`return`/calls) **must not** fill when/arity/adjacency. |
| [`AGENTS.md`](../../AGENTS.md) Implementation Law | Rust · `#![no_std]` · zero foreign crates · no `src/` until emission accepted. |
| Hands / graphics A–D / systems-manifest | Source of record for Lace. WASM ASCII is **Shadow target machinery** — do not conflate with [`systems-manifest-ascii.md`](../systems-manifest-ascii.md). |

**Stamp orientation:** KEEP-read WASM as **target semantics** for a future `wasm32` build. FORBID promoting WASM objects into Core types, Lace store, or Φ.

---

## Schema chosen (execute)

**Hybrid ASCII-first Wave A**, panels **P-T1…P-T9**, with **mechanism captions under each panel** (1:1 cite to spec §).  
Mirror AgentScope / Petersen **opening contract**:

1. Models **WASM Spec 3.0 procedures**, not Lace Core.  
2. Companion to admission clipboard (+ optional thin mechanism cards).  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No panel closes it.  
5. Inside fences: **spec-side glyphs only** — **no Lace POINTER / WORD / Graphic D as WASM objects**.  
6. Stamps live **under** fences (not inside).  
7. Hands win; steward refuses store/emission lookalikes listed below.

**Optional on execute (not this plan commit):** thin `docs/clipboards/wasm-spec-3-mechanisms.md` with M-T1…M-T9 algorithm cards if steward wants Petersen-grade 1:1 rigor. Prefer captions-under-panels first; add mechanisms file only if panels alone underspecify.

**Page naming:** stick to kebab prefix `wasm-spec-3-*` for all products of this strand.

---

## Pass 1 products ON EXECUTE (do **not** create at plan time)

### a. `docs/clipboards/wasm-spec-3-clipboard.md` — PDF-sighted PAGE sheets

Admission clipboard for the **compilation target**. Not a five-stakes rewrite; not an anti-model A–X mythology clone. Propose PAGE set oriented to target use:

| PAGE | Focus | KEEP / FORBID orientation |
|---|---|---|
| A | Identity / spine (Structure→…→Text) | KEEP-read-as-target identity of Spec 3.0 |
| B | Module / section anatomy | KEEP-read module shape; FORBID-as-Lace-store |
| C | Types & values | KEEP-read value types; FORBID-as-Core-write / Core types |
| D | Validation (stack-type / matching) | KEEP-read validation; FORBID-as-emission-rule |
| E | Runtime (store, instances, stack, frames) | KEEP-read runtime; **FORBID-as-Lace-store** (linear mem ≠ strand) |
| F | Instruction reduction / control | KEEP-read ops; **FORBID-as-emission-rule** (`br`/`return` ↛ Φ) |
| G | Binary decode + text twin | KEEP-read encode; text = non-authority twin |
| H | Host embed / import-export | KEEP-read boundary; **PROPOSAL-only** for Lace-host sketches; stamp carefully |
| X | Cross-cut / false friends / steward refuse | SILENT-for-Lace-append; Φ `[GAP]` |

Each PAGE: PDF pin (printed + PDF one-based), eye-quote or locus, stamp(s) from legend below. Method: `pdftotext -f N -l N -layout`.

### b. `docs/clipboards/wasm-spec-3-ascii-machinery.md` — ASCII SOURCE MACHINERY

Rigorous ASCII of the **compilation target’s system mechanism**: one overview + Wave-A panels **P-T1…P-T9**.

#### Proposed panel set (derive from spine; ≤9)

| Panel | Title | Spec locus (seed) |
|---|---|---|
| **P-T1** | Module / section anatomy | Ch.2 Modules · Ch.5.5 binary sections |
| **P-T2** | Types & values | Ch.2.2–2.3 · Ch.4.4–4.5 |
| **P-T3** | Validation (stack-type / matching) | Ch.3 · App. 7.6 validation algorithm |
| **P-T4** | Runtime structures (store, instances, stack, frames) | Ch.4.2 |
| **P-T5** | Instruction execution / reduction | Ch.4.6 |
| **P-T6** | Binary decode pipeline (bytes → module) | Ch.5 |
| **P-T7** | Text format (wat) as non-authority twin | Ch.6 |
| **P-T8** | Host embed / import-export boundary (Lace host vs WASM instance) | Ch.7.1 Embedding · Ch.2.5 imports/exports |
| **P-T9** | Trap / divergence vs Lace append discipline | Ch.4 traps · soundness notes · vs Rule Zero / append-only |

Overview fence: constructive flow **bytes/wat → decode → validate → instantiate → reduce**, with **FORBIDDEN exit** to Lace Core / Graphic D / Φ off-board.

### c. Optional thin mechanisms (execute only if needed)

`docs/clipboards/wasm-spec-3-mechanisms.md` — M-T1…M-T9 short algorithm cards citing the same loci. **Plan does not create it.**

---

## Stamp legend (compile-target tuned)

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-target** | May sit beside Lace as compile-target / ISA semantics; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or Core operator set |
| **FORBID-as-Lace-store** | Must not treat WASM linear memory / table / stack / store as Lace’s 1D strand |
| **FORBID-as-emission-rule** | Must not use WASM control flow, calls, or traps as POINTER when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔WASM bridge / host sketches are proposals only; not accepted law |
| **FORBID-as-Core** (short) | Must not promote WASM module/instance into Lace Core doors |

(Reuse KEEP-read / FORBID-as-Core-write / SILENT-for-Lace-append phrasing from AgentScope/Petersen opening contracts where compatible.)

---

## Non-goals (this plan **and** Pass 1 execute)

- No `src/`, no `Cargo.toml`, no rustc flags that invent emission or import crates.io  
- No promoting WASM to Core / no second store  
- No inventing POINTER emission / Φ from WASM ops  
- No five-stakes rewrite unless an explicit conflict ticket opens (default **skip**)  
- No executing Pass 1 products in **this** plan commit  
- No `git add` of the PDF; no push  
- Do not treat `docs/clock/wasm/README.md` projection bake as Spec 3.0 authority

---

## Hands skim order (execute T1)

1. Shoe / physical-cord premise (law)  
2. Graphics A–D (`docs/graphics/`)  
3. `docs/systems-manifest.md` (+ know `systems-manifest-ascii.md` is Core ASCII — separate)  
4. `docs/staking-the-workspace.md` · `docs/law-why-these-documents.md` · `AGENTS.md` Implementation Law  
5. `docs/pointer-emission.md` status = DRAFT / `[GAP]`  
6. `docs/plans/rust-nostd-crate-map.md` · `docs/plans/rust-nostd-branch-contracts.md`  
7. `docs/clock/wasm/README.md` (Shadow bake only)  
8. This plan · then PDF via `refs/local/webassembly-spec-3.0.pdf`

---

## Coord / PDF / execute checklist

### Plan turn (this commit) — DONE when plan lands

```
./docs/coord/coord.sh claim clipboards "wasm-spec-3.0 Pass 1 PLAN only"
# write this file only
# commit plan file only
./docs/coord/coord.sh release clipboards "wasm-spec-3.0 Pass 1 PLAN only"
# DO NOT push · DO NOT create clipboard/ascii/mechanisms yet
```

### Execute turn (future — when human says go)

```
git pull --ff-only
./docs/coord/coord.sh claim clipboards "wasm-spec-3.0 Pass 1 EXECUTE"
# T1 Hands skim (order above)
# T2 PDF gate:
#   mkdir -p refs/local
#   ln -sfn <attachment> refs/local/webassembly-spec-3.0.pdf
#   sha256sum refs/local/webassembly-spec-3.0.pdf  # must match 687e7364…f70fce
#   git check-ignore -v refs/local/webassembly-spec-3.0.pdf
#   abort if any PDF is staged
# T3 Write wasm-spec-3-clipboard.md (PAGE A–H, X) with PDF pins + stamps
# T4 Write wasm-spec-3-ascii-machinery.md (overview + P-T1…P-T9)
# T5 Optional: wasm-spec-3-mechanisms.md (M-T1…M-T9) if panels need algorithm bodies
# T6 Mark this plan Status → EXECUTED + execution receipt
# T7 check · commit (docs only; never PDF) · release · STOP · ask before push
```

---

## Success criteria (execute must pass)

1. Plan was HELD/NOT EXECUTED until human go; execute creates clipboard + ascii (± mechanisms), not earlier.  
2. PDF identity receipt: title Release 3.0 (2026-09-11), **323** pp., SHA `687e7364…f70fce`, symlink under `refs/local/`, **never staged**.  
3. Clipboard PAGEs pin printed **and** PDF pages; stamps use compile-target legend.  
4. ASCII overview + **P-T1…P-T9** present; fences = **spec-side only**; stamps under fences; **no Lace POINTER word inside fences**.  
5. Emission still `[GAP]`; no `src/`; rust-nostd plans untouched except citation; five-stakes default skip.  
6. Relation clear: WASM = **target surface**; crate-map/branch-contracts = Lace doors; clock/wasm README = Shadow bake only.  

### Steward refuse (must reject these claims)

- “WASM linear memory is the Lace strand”  
- “`br` / `return` emits POINTER”  
- “Import host fn fills emission `[GAP]`”  
- “WASM store/table/stack is a second Lace store / Graphic D”  
- “Compiling to wasm32 accepts pointer-emission.md”

---

## Plan-time spot-check (not full execute)

| PDF p. | Content | Implication |
|---|---|---|
| 1 | Title · Release 3.0 (2026-09-11) · Rossberg / CG | Identity CONFIRM |
| 3–4 | Contents: Structure / Validation / Execution / Binary / Text / Appendix | Spine CONFIRM for P-T* |
| 5 | Ch.1 Introduction printed **1** | Offset printed ≈ PDF−4 |
| 9 | Ch.2 Structure printed **5** | P-T1/P-T2 seed |
| 85 | Ch.4 Execution printed **81** | P-T4/P-T5 seed |

Full PAGE/panel walk = **execute only**.

---

## Steward test (plan)

Shoe in hands, or no.  
WASM is the **machine we may compile toward**, not the lace.  
Linear memory is not Graphic D.  
Traps are not append rules.  
Host imports do not accept Φ.  
Φ stays `[GAP]`.
