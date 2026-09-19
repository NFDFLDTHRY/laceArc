# CLIPBOARD — laceArc ← WebAssembly Spec 3.0 (compile target)

**[III] Shadow / read-only projection. Hands win. POINTER emission = `[GAP]`.**  
**SPECIAL:** This is **compilation-target** admission — Lace Rust `#![no_std]` → `wasm32-unknown-unknown`. **NOT** Core. **NOT** Graphic D. **NOT** an anti-model shelf clipboard.

```
+======================================================================+
|  COMPILATION TARGET — Lace Rust #![no_std]  -->  wasm32-unknown-unknown |
|  Shadow docs only this pass.  NOT Lace Core.  NOT Graphic D.           |
|  WASM ops = TARGET semantics.  Do NOT invent POINTER emission / Phi.   |
|  Do NOT import WASM store/memory/table/stack as Lace's 1D strand.      |
|  Zero crates.io / foreign deps.  No src/ until pointer-emission accepted.|
+======================================================================+
```

**Source:** Andreas Rossberg (editor) / WebAssembly Community Group, *WebAssembly Specification*, **Release 3.0 (2026-09-11)**. Working PDF (gitignored): `refs/local/webassembly-spec-3.0.pdf` → attachment `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce.pdf`. **323** pages; text layer present (pdfTeX / LaTeX hyperref). SHA-256: `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`. Printed ≈ **PDF − 4** (Ch.1 printed **1** = PDF **5**; Structure printed **5** = PDF **9**; Execution printed **81** = PDF **85**). **Never git-add the PDF.** Eye entries are short fragments/paraphrases, not dumps.

**Authority:** [graphics A–D](../graphics/README.md), [systems manifest](../systems-manifest.md), [staking law](../staking-the-workspace.md), [live law](../law-why-these-documents.md), [AGENTS.md](../../AGENTS.md) Implementation Law. Comparisons cite rust-nostd plans and clock/wasm bake as **adjacent**, not as Spec authority.

**Relation (do not conflate):**

| Artifact | Role |
|---|---|
| This clipboard + [ascii-machinery](wasm-spec-3-ascii-machinery.md) | Spec **target** mechanism map (Shadow) |
| [`rust-nostd-crate-map.md`](../plans/rust-nostd-crate-map.md) | Planned Lace crate tree — **not** a WASM module map |
| [`rust-nostd-branch-contracts.md`](../plans/rust-nostd-branch-contracts.md) | Serial birth cards; emission `[GAP]` |
| [`clock/wasm/README.md`](../clock/wasm/README.md) | Shadow projection bake only — **not** Spec 3.0 authority |
| [`pointer-emission.md`](../pointer-emission.md) | Still **DRAFT / `[GAP]`** |
| [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) | Lace **Core** ASCII — separate board |

**Stamp legend (compile-target tuned):**

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-target** | May sit beside Lace as compile-target / ISA semantics; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or Core operator set |
| **FORBID-as-Lace-store** | Must not treat WASM linear memory / table / stack / store as Lace’s 1D strand |
| **FORBID-as-emission-rule** | Must not use WASM control flow, calls, or traps as POINTER when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔WASM bridge / host sketches are proposals only; not accepted law |
| **FORBID-as-Core** | Must not promote WASM module/instance into Lace Core doors |

---

## Pass 1 (PDF-sighted) receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~19:55 PT |
| Station | clipboards · agent `wasm-spec-3.0 Pass 1 EXECUTE` |
| Plan | [wasm-spec-3-pass-1-plan.md](wasm-spec-3-pass-1-plan.md) (was HELD; base after rebase `69b1abb`) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → rust-nostd crate-map + branch-contracts → clock/wasm README → pointer-emission `[GAP]` → this plan → PDF |
| PDF | **PRESENT** — `refs/local/webassembly-spec-3.0.pdf`; SHA `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`; **323** pp.; text layer yes; title Release 3.0 (2026-09-11); Rossberg/CG; `git check-ignore` OK; **never staged** |
| Method | `pdftotext -f N -l N -layout`; offset re-verified printed ≈ PDF−4 |
| Product | PAGE **A–H, X** below; ASCII overview + **P-T1…P-T9** in [wasm-spec-3-ascii-machinery.md](wasm-spec-3-ascii-machinery.md); mechanisms **deferred** (captions-under-panels sufficient) |
| Amended | Core graphics · systems-manifest(-ascii) · five-stakes · src/ · rust-nostd plans (except citation) | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| Five-stakes | **skip** (default) |

### Per-page stamp summary

| PAGE | Focus | Primary stamps | PDF pin (printed ≈) |
|---|---|---|---|
| A | Identity / spine | KEEP-read-as-target | PDF 1; TOC 3–4; Ch.1 PDF 5 (=p.1) |
| B | Module / section anatomy | KEEP-read-as-target; **FORBID-as-Lace-store** | §2.5 PDF 27 (=p.23); §5.5.2 PDF 205 (=p.201) |
| C | Types & values | KEEP-read-as-target; **FORBID-as-Core-write** | §2.2–2.3 PDF 11–16 (=p.7–12) |
| D | Validation | KEEP-read-as-target; **FORBID-as-emission-rule** | Ch.3 PDF 33 (=p.29); §7.6 PDF 274 (=p.270) |
| E | Runtime store/instances/stack/frames | KEEP-read-as-target; **FORBID-as-Lace-store** | §4.2 PDF 87–94 (=p.83–90) |
| F | Instruction reduction / control | KEEP-read-as-target; **FORBID-as-emission-rule** | §4.6 PDF 126+; control PDF 127–128 (=p.123–124) |
| G | Binary + text twin | KEEP-read-as-target; text non-authority twin | Ch.5 PDF 183 (=p.179); Ch.6 PDF 211 (=p.207) |
| H | Host embed / import-export | KEEP-read-as-target; **PROPOSAL-only** bridge | §7.1 PDF 245 (=p.241); §2.5 imports |
| X | Cross-cut / steward refuse | **SILENT-for-Lace-append**; Φ `[GAP]` | hard refuse tests below |

---

## PAGE A — Identity / constructive spine

| Field | Content |
|---|---|
| PDF pin | Title PDF **1**; Contents PDF **3–4**; Ch.1 Introduction PDF **5** (printed **1**) |
| Eye | “WebAssembly Specification / Release 3.0 (2026-09-11)” · Rossberg / CG · spine Structure → Validation → Execution → Binary → Text → Appendix |
| Stamps | **KEEP-read-as-target** identity of Spec 3.0 as the ISA Lace may compile toward |
| Moral | Spec 3.0 is the **machine we may compile toward**, not the lace. Offset printed ≈ PDF−4 confirmed this pass. |

---

## PAGE B — Module / section anatomy

| Field | Content |
|---|---|
| PDF pin | §2.5 Modules PDF **27** (printed **23**); §5.5.2 Sections PDF **205** (printed **201**); §5.5.17 magic PDF **209** (printed **205**) |
| Eye | `module ::= module list(type) list(import) … list(export)` · binary section id + u32 length + contents · ids 0 custom … 13 tag · preamble `∖0asm` + version |
| Stamps | **KEEP-read-as-target** module shape; **FORBID-as-Lace-store**; **FORBID-as-Core** (module ↛ Core door) |
| Moral | A WASM module is a deployment unit for the **target**, not a Lace crate and not Graphic D. |

---

## PAGE C — Types & values

| Field | Content |
|---|---|
| PDF pin | §2.2 Values PDF **11+** (printed **7+**); §2.3 Types PDF **13–16** (printed **9–12**) — `numtype ::= i32\|i64\|f32\|f64`, `vectype ::= v128`, `reftype`, `valtype` |
| Eye | Number/vector types transparent (bit patterns observable; storable in memories); reference types opaque (tables, not memories) |
| Stamps | **KEEP-read-as-target** value types; **FORBID-as-Core-write** / FORBID-as-Core-types (WASM valtypes ↛ WORD/POINTER kinds) |
| Moral | Target ISA types are not Lace Core types. |

---

## PAGE D — Validation (stack-type / matching)

| Field | Content |
|---|---|
| PDF pin | Ch.3 Conventions PDF **33** (printed **29**); matching / instruction types PDF **~47** (printed **~43**); App. §7.6 Validation Algorithm PDF **274** (printed **270**) |
| Eye | “Only valid modules can be instantiated.” Declarative type system; appendix sketches single-pass opcode algorithm over binary. |
| Stamps | **KEEP-read-as-target** validation; **FORBID-as-emission-rule**; **SILENT-for-Lace-append** |
| Moral | Stack-typing constrains **target** code. It does not say when Lace appends POINTER. |

---

## PAGE E — Runtime (store, instances, stack, frames)

| Field | Content |
|---|---|
| PDF pin | §4.2 Runtime Structure PDF **87** (printed **83**); §4.2.2 Results / §4.2.3 Store PDF **88** (printed **84**); stack/frames PDF **93–94** (printed **89–90**); meminst / tableinst in §4.2.8–4.2.9 |
| Eye | `result ::= val* \| … \| trap` · `store ::= {tags, globals, mems, tables, …}` · “linear memory” as `meminst` byte sequence · stack holds values + control frames · `frame` with locals + moduleinst |
| Stamps | **KEEP-read-as-target** runtime; **FORBID-as-Lace-store** (**linear memory ≠ Lace strand**; table/stack/store ≠ Graphic D) |
| Steward refuse | “WASM linear memory is the Lace strand” → **FORBID-as-Lace-store** |

---

## PAGE F — Instruction reduction / control

| Field | Content |
|---|---|
| PDF pin | §4.1 Conventions PDF **85** (printed **81**); §4.6 Instructions from PDF **~126** (printed **~122**); §4.6.2 Control PDF **127** (printed **123**); `br` reduction PDF **128** (printed **124**) |
| Eye | Reduction on abstract machine with implicit store + stack; `unreachable → trap`; `br ℓ` rewrites labels/continuations; `return` exits frames — **target** control, not Lace append |
| Stamps | **KEEP-read-as-target** ops; **FORBID-as-emission-rule** (`br`/`return`/calls ↛ Φ / POINTER when) |
| Steward refuse | “`br` / `return` emits POINTER” → **FORBID-as-emission-rule** |

---

## PAGE G — Binary decode + text twin

| Field | Content |
|---|---|
| PDF pin | Ch.5 Binary Format PDF **183** (printed **179**); §5.5 Modules/sections PDF **203–209** (printed **199–205**); Ch.6 Text Format PDF **211** (printed **207**) |
| Eye | Binary = dense byte attribute grammar → abstract syntax (`.wasm`); text = S-expression rendering (`.wat`), abbreviations as sugar; recommended Media Type `application/wasm` |
| Stamps | **KEEP-read-as-target** encode/decode; text = **non-authority twin** of binary for this board |
| Moral | Decode pipeline is target ingestion. It does not open `src/` or fill emission. |

---

## PAGE H — Host embed / import-export boundary

| Field | Content |
|---|---|
| PDF pin | §7.1 Embedding PDF **245** (printed **241**); §2.5 imports/exports (module anatomy PDF **27+**); externaddr forms in §4.2 |
| Eye | “An embedder implements the connection between such a host environment and the WebAssembly semantics…” Entry points; errors/traps/exceptions as embed interface outcomes |
| Stamps | **KEEP-read-as-target** boundary; **PROPOSAL-only** for any Lace-host / import sketches; **FORBID** “import host fn fills emission `[GAP]`” — GAP remains |
| Steward refuse | “Import host fn fills emission `[GAP]`” → **FORBID** / **PROPOSAL-only** bridge, GAP remains |

---

## PAGE X — Cross-cut / false friends / steward refuse

| Field | Content |
|---|---|
| Stamps | **SILENT-for-Lace-append**; Φ **`[GAP]`**; all FORBIDs above retained |
| False friends | WASM store ↔ Lace store · linear memory ↔ strand · table ↔ star index · operand stack ↔ append discipline · `br`/`return` ↔ POINTER when · host import ↔ emission acceptance · validating/compiling to wasm32 ↔ accepting `pointer-emission.md` |
| Steward refuse (must reject) | (1) “WASM linear memory is the Lace strand” → **FORBID-as-Lace-store** · (2) “`br`/`return` emits POINTER” → **FORBID-as-emission-rule** · (3) “Import host fn fills emission `[GAP]`” → **FORBID** / **PROPOSAL-only**, GAP remains · (4) WASM store/table/stack as second Lace store / Graphic D → **FORBID** · (5) “Compiling to wasm32 accepts pointer-emission.md” → **FORBID** |
| Moral | Shoe in hands, or no. WASM is the machine we may compile toward, not the lace. Traps are not append rules. Host imports do not accept Φ. |

---

## Mechanisms note

Thin `wasm-spec-3-mechanisms.md` (M-T1…M-T9) **deferred** this pass — panel captions + PDF pins carry Pass 1 rigor. Open if steward wants Petersen-grade algorithm cards later.
