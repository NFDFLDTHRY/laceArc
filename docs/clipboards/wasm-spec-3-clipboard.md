# CLIPBOARD — laceArc ← WebAssembly Spec 3.0 (compile target)

**[III] Shadow / read-only projection. Hands win. POINTER emission = `[GAP]`.**  
**SPECIAL:** This is **compilation-target** admission — Lace Rust `#![no_std]` → `wasm64-unknown-unknown`. **NOT** Core. **NOT** Graphic D. **NOT** an anti-model shelf clipboard.

```
+======================================================================+
|  COMPILATION TARGET — Lace Rust #![no_std]  -->  wasm64-unknown-unknown |
|  Sealed by human correction: wasm64.  wasm32 is NOT the shelf target.  |
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

## Pass 2 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~20:04 PT |
| Station | clipboards · agent `wasm-spec-3.0 Pass 2 EXECUTE` |
| Plan | [wasm-spec-3-pass-2-plan.md](wasm-spec-3-pass-2-plan.md) (was HELD; local tip after rebase `ea75a10`; Pass 1 on origin `cec1be6`) |
| Hands skim | shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → rust-nostd crate-map + branch-contracts → pointer-emission `[GAP]` → clock/wasm README (Shadow bake) → Pass 1 clipboard + ascii P-T* → this plan → PDF |
| PDF | **PRESENT** — cite Pass 1: `refs/local/webassembly-spec-3.0.pdf` → `687e7364…e7f70fce.pdf`; **323** pp.; text layer; printed≈PDF−4; SHA match; gitignored; **never staged** |
| Product | D1–D6 leftovers (+ D7 Shadow binary-section decode miniature); A–H/X morals untouched; ascii P-T1…P-T9 stamps stand (T7 skip) |
| Amended | rust-nostd · law · graphics · systems-manifest · five-stakes · src/ · Cargo · ascii Wave B | **No** |
| Emission | still `[GAP]` — no POINTER when / arity / adjacency; no invented Φ |
| T5 five-stakes | **skip** (default) |
| T7 ascii | **skip** — P-T1…P-T9 stamps stand; no stamp-tighten delta required |
| D7 | **included** — Ch.5 / §5.5.2 binary section decode sketch (PDF 183, 205); **FORBID-as-Core** · SILENT-for-Lace-append |
| FM-W1…W9 | all pinned (no OPEN) |

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
| False friends | WASM store ↔ Lace store · linear memory ↔ strand · table ↔ star index · operand stack ↔ append discipline · `br`/`return` ↔ POINTER when · host import ↔ emission acceptance · validating/compiling to wasm64 ↔ accepting `pointer-emission.md` |
| Steward refuse (must reject) | (1) “WASM linear memory is the Lace strand” → **FORBID-as-Lace-store** · (2) “`br`/`return` emits POINTER” → **FORBID-as-emission-rule** · (3) “Import host fn fills emission `[GAP]`” → **FORBID** / **PROPOSAL-only**, GAP remains · (4) WASM store/table/stack as second Lace store / Graphic D → **FORBID** · (5) “Compiling to wasm64 accepts pointer-emission.md” → **FORBID** |
| Moral | Shoe in hands, or no. WASM is the machine we may compile toward, not the lace. Traps are not append rules. Host imports do not accept Φ. |

---

## Mechanisms note

Pass 3 EXECUTED: [`wasm-spec-3-mechanisms.md`](wasm-spec-3-mechanisms.md) Wave A **M-T1…M-T9** (compile-target system procedures). See **P3-M** / **P3-R** below. Emission `[GAP]`.


## Pass 2 deltas

Pass 1 filled PAGE A–H, X and ASCII overview + P-T1…P-T9 against the PDF. These deltas are **compile-target leftovers** only. They do not invent emission. A–H/X morals and P-T* stamps are unchanged. FORBID-as-Lace-store / FORBID-as-emission-rule / PROPOSAL-only are not softened. WASM remains **TARGET only**.

### D1 — What this clipboard / shelf is not

- Not Core / not a sixth graphic / not systems-manifest-ascii.
- Not `docs/pointer-emission.md` / not a Φ fill / not acceptance of emission by compiling to wasm64.
- Not Lace’s 1D strand, star index, or Graphic D scheduler.
- Not permission to treat WASM **store / linear memory / table / stack / frames** as Lace store.
- Not permission to treat **`br` / `return` / call / trap** as POINTER when / arity / adjacency or Lace cut.
- Not permission to treat **validation** as admit-POINTER, or **instantiate** as Core birth.
- Not authority of `.wat` over binary (text = non-authority twin).
- Not a rewrite of rust-nostd crate-map / branch-contracts / AGENTS Implementation Law.
- Not permission to add `src/` or Cargo before emission acceptance.
- Not an anti-model LLM leftover shelf (Xiao–Zhu / Petersen / AgentScope morals do not transfer).

### D2 — ON-TARGET / KEEP / FORBID / MAP strip

Compact spine on this clipboard (not five-stakes). Matches Pass 1 morals.

| KEEP-read-as-target | FORBID |
|---|---|
| Spec 3.0 as ISA / compile-target semantics (PAGE A; overview) | linear mem / store / table / stack / frames as Lace strand or Graphic D (E, P-T4) |
| Module / section / type / value anatomy (B, C; P-T1, P-T2) | WASM valtypes / module / instance as Core types or Core doors (C, B; FORBID-as-Core) |
| Validation / binary decode as **target** hygiene (D, G; P-T3, P-T6) | validate ⇒ admit POINTER / Φ fill (D, P-T3) |
| Instruction reduction ops as ISA read (F; P-T5) | `br` / `return` / call ⇒ POINTER when/arity/adjacency (F, P-T5) |
| Host embed boundary as PROPOSAL-only read (H; P-T8) | import host fn fills `[GAP]` (H, P-T8) |
| Trap / divergence as ISA read (P-T9) | trap ⇒ Lace cut / append rule (P-T9, X) |
| `.wat` as non-authority twin (G; P-T7) | wat text as sole / superior authority vs binary |

**MAP arrows (coherence with rust-nostd — all exits FORBIDDEN into Core write):**

```
P-T1/B ──read-as-target──► future wasm64 surface   ──[X]──► strand/ · core/ doors
P-T2/C ──read-as-target──► valtypes                 ──[X]──► word/ · pointer/ kinds
P-T3/D ──read-as-target──► validate                 ──[X]──► admit POINTER / Φ
P-T4/E ──read-as-target──► store/mem/table/stack    ──[X]──► Lace 1D strand / Graphic D
P-T5/F ──read-as-target──► reduce / control         ──[X]──► pointer-emission when-rule
P-T6/G ──read-as-target──► binary decode            ──[X]──► Core birth / src/
P-T7/G ──twin──► wat (non-authority)                ──[X]──► sole authority
P-T8/H ──PROPOSAL-only──► host embed                ──[X]──► fill [GAP]
P-T9/X ──SILENT──► trap/diverge                     ──[X]──► Lace cut / append
emission = [GAP]  ·  Hands win  ·  no src/ until human-accepted emission
```

### D3 — Failure modes (FM-W1…W9)

| ID | Misread | Hands / law deadbolt | PDF pin (Pass 1 reuse + verify) |
|---|---|---|---|
| **FM-W1** | WASM **linear memory** ⇒ Lace **1D strand** | **FORBID-as-Lace-store** · Piece 1/6 · PAGE E / P-T4 | §4.2.9 Memory Instances PDF **90** (=p.86) — `meminst ::= {type memtype, bytes byte*}` · “runtime representation of a **linear memory**” (cite E; Pass 4 re-sight) |
| **FM-W2** | WASM **table** (funcref/externref) ⇒ Lace **star** / star index | **FORBID-as-Lace-store** · Piece 7 · PAGE E / P-T4 | §4.2.8 Table Instances PDF **90** (=p.86) — `tableinst ::= {type tabletype, refs ref*}` (cite E; Pass 4 re-sight) |
| **FM-W3** | Operand **stack / frames** ⇒ Lace **append** / Graphic D rows | **FORBID-as-Lace-store** · Piece 6 · PAGE E / P-T4 | §4.2.17 Stack / Call Frames PDF **93–94** (=p.89–90); §4.2.3 Store PDF **88** (=p.84) (cite E) |
| **FM-W4** | **`br` / `return` / call** ⇒ POINTER **when** / arity / adjacency (Φ fill) | **FORBID-as-emission-rule** · pointer-emission `[GAP]` · PAGE F / P-T5 | §4.6.2 Control PDF **127–128** (=p.123–124) — `br ℓ` / `return` reductions; `unreachable ˓→ trap` (cite F) |
| **FM-W5** | **Validation** (stack-type / matching) ⇒ **admit POINTER** / Lace write gate | **FORBID-as-emission-rule** · **SILENT-for-Lace-append** · PAGE D / P-T3 | Ch.3 Conventions PDF **33** (=p.29) — “Only valid modules can be instantiated.” · App. §7.6 Validation Algorithm PDF **274** (=p.270) (cite D) |
| **FM-W6** | **`.wat` text** ⇒ sole / superior **authority** over binary | text = **non-authority twin** · PAGE G / P-T7 | Ch.6 Text Format PDF **211** (=p.207) — S-expression rendering; `.wat` extension; binary remains encode authority twin (Ch.5 PDF **183**) (cite G) |
| **FM-W7** | **Import host** function / embedding ⇒ **fill emission `[GAP]`** | **PROPOSAL-only** · **FORBID** fill-GAP · PAGE H / P-T8 | §7.1 Embedding PDF **245** (=p.241) — embedder connects host ↔ WASM semantics; does **not** accept Φ (cite H) |
| **FM-W8** | WASM **trap** / divergence ⇒ Lace **cut** / authorized rewrite / append rule | **FORBID-as-emission-rule** · **SILENT** · PAGE X / P-T9 | §4.2.2 Results PDF **88** (=p.84) — `result ::= val* \| … \| trap` · control/trap reductions PDF **126–128** (cite X / P-T9) |
| **FM-W9** | **Instantiate** (module→instance) ⇒ Lace **Core birth** / door open / `src/` gate | **FORBID-as-Core** · rust-nostd birth cards stand separate · PAGE E/H | §4.7.2 Instantiation PDF **177** (=p.173) — `instantiate(s, module, externaddr*)`; §4.2.6 Module Instances PDF **90** (=p.86) (cite E/H · branch-contracts) |

No FM row left `[OPEN]`. Pins reused/verified from Pass 1; `pdftotext -f N -l N -layout` re-sighted §4.2.3/8/9, §4.6.2, §4.7.2, Ch.3/5/6, §7.1, §7.6 (Pass 2). **Pass 4 pin tighten:** FM-W1/W2 Table/Memory Instances = PDF **90** (=p.86), not 91 (p.91 = Globals §4.2.10); printed≈PDF−4 stands.

### D4 — Interface coherence (Hands + rust-nostd + ASCII)

**Only** KEEP-read-as-target outputs may sit **beside** Lace: Spec 3.0 as the ISA a future `#![no_std]` build may compile toward (`wasm64-unknown-unknown`). **Nothing** in A–H/X or P-T1…P-T9 writes Graphic D, strand/, word/, pointer/, or fills `pointer-emission.md`. rust-nostd **crate-map** = planned first-party doors; **branch-contracts** = serial birth cards — both remain proposals; WASM is **target surface**, not a door and not a birth event. ASCII P-T* stand as Wave A machinery; Pass 2 cites them for MAP/FM pins — **read-only** (T7 skip; stamps stand). Host embed (P-T8 / PAGE H) stays **PROPOSAL-only**; compiling or instantiating does **not** accept emission. `[GAP]` remains. Shoe in hands, or no.

### D5 — Source gate (cite Pass 1)

PDF is **PRESENT** (do not narrate absent). Pass 1 receipt: `refs/local/webassembly-spec-3.0.pdf` → attachment `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce.pdf`; **323** pages; text layer present (pdfTeX / LaTeX hyperref); printed ≈ PDF − 4; SHA-256 `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`; `git check-ignore` OK; **never `git add`**. Pass 1 products: clipboard PAGE A–H, X · ascii overview + P-T1…P-T9 · mechanisms deferred · execute ancestor on origin `cec1be6` (Pass 1 station release). Method this pass: reuse Pass 1 pins; `pdftotext` verify for FM-W* + optional D7. Five-stakes left untouched (T5 skip).

### D6 — Sealed (still)

- Invent POINTER when / arity / adjacency (Φ stays `[GAP]`)
- Soften Pass 1 FORBID-as-Lace-store / FORBID-as-emission-rule / PROPOSAL-only
- Promote WASM store / linear mem / table / stack / frames as Lace store
- Use `br` / `return` / call / trap as emission or Lace cut
- Treat validate as admit-POINTER · treat instantiate as Core birth · treat wat as sole authority
- Fill `[GAP]` via host import / compile-to-wasm64 story
- Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes
- Wave B mechanisms rewrite · Order Proposal (Pass 5 shape if wanted; Pass 4 fidelity landed)
- Add `src/` / Cargo.toml / crates.io deps
- Git-add the PDF · pretend OCR / claim PDF absent when present
- Clone Xiao–Zhu / Petersen / AgentScope LLM morals onto this compile-target shelf

### D7 — Constructive miniature (Shadow only) — binary section decode sketch

**Choice (a).** Stamp: **FORBID-as-Core** · **SILENT-for-Lace-append** · not strand append · not Φ · not `src/`. Paper algorithm only (Ch.5 Conventions PDF **183** (=p.179); §5.5.2 Sections PDF **205** (=p.201)). Steps below are what the Spec states; no invented operators. Validation miniature (choice b) deferred.

1. Input: byte sequence claimed to encode a module (binary attribute grammar; terminals = bytes).
2. Recognize preamble / module envelope per Ch.5 (magic / version and module production — **KEEP-read-as-target** decode hygiene only).
3. For each section occurrence: read **one-byte section id** `N`, then **u32 length** `len`, then **contents** of that length whose structure depends on `N` — grammar form `section_N(X) ::= N:byte len:u32 en*:X ⇒ en* if len = ||X|| | ε ⇒ ε` (§5.5.2).
4. Map known ids to abstract-module components (custom / type / import / … / export / … per Spec id table); omitted section ≡ empty contents.
5. Yield abstract module outline (lists of types, imports, funcs, …) — **target** ingestion shape only.

**[OPEN] (book continues; not settled for Lace):** full per-id content grammars beyond the generic section envelope; encoder choice among multiple legal encodings; custom-section skip vs parse — out of scope here. Do **not** finish those from Lace.

**Lace refusal:** this sketches **target binary decode**. It does **not** open Core doors, does **not** append to Graphic D, does **not** birth `src/`, and does **not** fill emission `[GAP]`.

---

## Pass 3 — system mechanisms (Wave A) + P3-M mesh

Pass 2 leftovers stand. Pass 3 cardifies Spec 3.0 **constructive target procedures** 1:1 from ascii **P-T1…P-T9**. Not anti-model morals. Not Core. Not emission fill. WASM remains **TARGET only**.

### P3-M — Mechanism coherence mesh

| Mechanism (M-T*) | Panel (P-T*) | Clipboard PAGE | FM-W* | rust-nostd (read-only) | Emission | KEEP/FORBID tooth | Same story? |
|---|---|---|---|---|---|---|---|
| **M-T1** Module anatomy | P-T1 | B | FM-W9 | wasm64 surface ≠ strand/ · core/ door | `[GAP]` | KEEP-read-as-target · **FORBID-as-Lace-store** · **FORBID-as-Core** | YES |
| **M-T2** Types/values | P-T2 | C | — (MAP forbid) | ≠ word/ · pointer/ kinds | `[GAP]` | KEEP-read-as-target · **FORBID-as-Core-write** | YES |
| **M-T3** Validation | P-T3 | D | **FM-W5** | validate ≠ admit POINTER | `[GAP]` | KEEP-read-as-target · **FORBID-as-emission-rule** · **SILENT** | YES |
| **M-T4** Runtime structures | P-T4 | E | **FM-W1…W3** · W9 | store/mem/table/stack ≠ strand / Graphic D | `[GAP]` | KEEP-read-as-target · **FORBID-as-Lace-store** | YES |
| **M-T5** Instruction reduction | P-T5 | F | **FM-W4** | control ≠ pointer-emission when-rule | `[GAP]` | KEEP-read-as-target · **FORBID-as-emission-rule** | YES |
| **M-T6** Binary decode | P-T6 | G | — (D7) | decode ≠ Core birth / `src/` | `[GAP]` | KEEP-read-as-target · **FORBID-as-Core** · SILENT · D7 cross-link | YES |
| **M-T7** Text twin | P-T7 | G | **FM-W6** | twin only; no sole authority | `[GAP]` | KEEP-read-as-target · text **non-authority** | YES |
| **M-T8** Host embed | P-T8 | H | **FM-W7** | host embed PROPOSAL-only | `[GAP]` (FORBID fill) | KEEP-read-as-target · **PROPOSAL-only** · **FORBID fill-GAP** | YES |
| **M-T9** Trap/divergence vs Lace append | P-T9 | X | **FM-W8** | trap ≠ Lace cut / append | `[GAP]` | KEEP-read-as-target · **FORBID-as-emission-rule** · **SILENT** | YES |

No CONFLICT. Emission column `[GAP]` on every row. rust-nostd cited read-only (target surface ≠ door / ≠ birth) — files not amended. Ascii P-T* stamps stand (T7 skip). Five-stakes skipped (T6; not anti-model PAGE).

### P3-5S — Five-stakes

**skip** — no unexpected five-stakes drift; this shelf is compile-target, not anti-model PAGE.

### P3-R — Pass 3 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~20:08 PT |
| Station | clipboards · agent `wasm-spec-3 Pass 3 EXECUTE` |
| PDF | `refs/local/webassembly-spec-3.0.pdf` · SHA `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` · never staged |
| Artifact A | [`wasm-spec-3-mechanisms.md`](wasm-spec-3-mechanisms.md) · **M-T1…M-T9** full schema |
| Artifact B | P3-M mesh (9 rows) + this receipt |
| Hard stamps | M-T4 FORBID-as-Lace-store · M-T3/M-T5/M-T9 FORBID-as-emission-rule · M-T8 PROPOSAL-only+FORBID fill-GAP · M-T7 non-authority · M-T6 FORBID-as-Core+D7 |
| Ascii P-T* | stamps stand (no stamp-conflict tighten) |
| Pass 1–2 | A–H/X · FM-W* · D7 untouched (M-T6 cross-links D7 only) |
| rust-nostd / law / graphics / systems-manifest / five-stakes | untouched |
| Emission | still `[GAP]` |
| `src/` / Cargo | absent (stay absent) |
| Push | **not** performed |

Steward refuse (shoe in hands): linear mem=strand · table=star · stack=append · br/return→Φ · validate→admit POINTER · wat sole authority · import fills GAP · trap=Lace cut · instantiate=Core birth — refuse via M-T* + P3-M teeth above.

---

## Pass 4 — representation fidelity (P4-A / P4-X / P4-F / P4-O / P4-R)

Pass 3 M-T* + P3-M stand (CONFIRM×9 · CONFLICT×0). Pass 4 is **accuracy steward** — M-T* ↔ P-T* ↔ Spec PDF. Not Wave B. Not Order Proposal. Not Core. WASM = **TARGET only**.

### P4-A — Structural re-walk

| Check | Result |
|---|---|
| Coverage | overview **1** · P-T1…P-T9 **9** · M-T1…M-T9 **9** |
| 1:1 | every P-T* ↔ matching M-T* (ascii cross-walk now has M-T* column; mechanisms Panel cite + P3-M) |
| Stamp under-fence | all 9 panels + overview have stamp **under** fence |
| No POINTER-in-fence | no Lace POINTER/WORD/Graphic D as WASM **objects** inside fences (FORBIDDEN-exit / steward comments only) |
| Cross-walk freshness | Pass-1 table **superseded** by P4-X + ascii Pass-4 cross-walk (M-T* column) |
| P3-M stand | CONFIRM×9 · CONFLICT×0 · not reopened (P-T6 stamp **tighten** only — matches M-T6 / P3-M) |

### P4-X — Deep accuracy matrix

Columns: `overview node · P-T* · M-T* · stamp · Implements OK · Fence OK · Stamp OK · FM OK · Pin OK · Overview OK · PASS/FIX`

#### Wave A pairs (9)

| overview node | P-T* | M-T* | stamp | Impl | Fence | Stamp | FM | Pin | Ov | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|
| abstract module | P-T1 | M-T1 | KEEP · FORBID-as-Lace-store · FORBID-as-Core | Y | Y | Y | Y→FM-W9 | Y | Y | **PASS** (FM cite fixed) |
| abstract module (types) | P-T2 | M-T2 | KEEP · FORBID-as-Core-write | Y | Y | Y | Y→MAP | Y | Y | **PASS** (FM cite fixed) |
| validate | P-T3 | M-T3 | KEEP · FORBID-as-emission-rule · SILENT | Y | Y | Y | Y→FM-W5 | Y | Y | **PASS** (FM cite fixed) |
| instantiate + store | P-T4 | M-T4 | KEEP · FORBID-as-Lace-store | Y | Y | Y | Y→FM-W1…W3 | Y→p.90 | Y | **PASS** (FM+pin fixed) **GATE** |
| reduce instructions | P-T5 | M-T5 | KEEP · FORBID-as-emission-rule | Y | Y | Y | Y→FM-W4 | Y | Y | **PASS** (FM cite fixed) **GATE** |
| decode / parse | P-T6 | M-T6 | KEEP · FORBID-as-Core · SILENT | Y | Y | Y→aligned | Y→FM-W9 | Y | Y | **PASS** (stamp+FM fixed) |
| decode / parse (wat) | P-T7 | M-T7 | KEEP · text non-authority | Y | Y | Y | Y→FM-W6 | Y | Y | **PASS** (FM cite fixed) |
| instantiate + store (host) | P-T8 | M-T8 | KEEP · PROPOSAL-only · FORBID fill-GAP | Y | Y | Y | Y→FM-W7 | Y | Y | **PASS** (FM cite fixed) **GATE** |
| trap / diverge | P-T9 | M-T9 | KEEP · FORBID-as-emission-rule · SILENT | Y | Y | Y | Y→FM-W8 | Y | Y | **PASS** (FM cite fixed) **GATE** |

#### Overview spine nodes

| overview node | P-T* / note | Impl | Fence | Stamp | FM | Pin | Ov | Verdict |
|---|---|---|---|---|---|---|---|---|
| decode / parse | P-T6 · P-T7 on board | Y | Y | Y | Y | Y | Y | **PASS** |
| abstract module | P-T1 · P-T2 on board | Y | Y | Y | Y | Y | Y | **PASS** |
| validate | P-T3 on board | Y | Y | Y | Y | Y | Y | **PASS** |
| instantiate + store | P-T4 · P-T8 share node | Y | Y | Y | Y | Y | Y | **PASS** |
| reduce instructions | P-T5 on board | Y | Y | Y | Y | Y | Y | **PASS** |
| trap / diverge | P-T9 exit | Y | Y | Y | Y | Y | Y | **PASS** |
| Lace Core / Graphic D / Phi | FORBIDDEN off-board · Φ=`[GAP]` | Y | Y | Y | Y | Y | Y | **PASS** |

#### Special gates (explicit, not inherited)

| Gate | Score | Note |
|---|---|---|
| **M-T4 / P-T4** · FM-W1…W3 (· W9) | **PASS** | FORBID-as-Lace-store under fence + card; FM-W1/W2 pin → PDF **90** |
| **M-T5 / P-T5** · FM-W4 | **PASS** | br/return/call FORBID-as-emission-rule; Φ=`[GAP]` |
| **M-T8 / P-T8** · FM-W7 | **PASS** | PROPOSAL-only · FORBID fill-GAP; §7.1 PDF **245** |
| **M-T9 / P-T9** · FM-W8 | **PASS** | trap ≠ Lace cut; Results §4.2.2 PDF **88**; SILENT |
| **FM-W1…W4, W7, W8** pins | **PASS** | W1/W2 re-sighted PDF **90**; W3/W4/W7/W8 Pass 1–3 pins stand |

#### Plan-time seeds → resolution

| Seed | Resolution |
|---|---|
| FM-T* vs FM-W* | **FIX** — ascii false-friend rows cite FM-W* / MAP; FM-T*=alias noted |
| P-T6 stamp thin | **FIX** — under-fence + Lace stamp = KEEP · FORBID-as-Core · SILENT (match M-T6) |
| FM-W1/W2 PDF 91 vs 90 | **FIX** — clipboard D3 + M-T4 locus → PDF **90** (=p.86); Globals remain PDF 91 |
| Pass-1 cross-walk no M-T* | **FIX** — ascii cross-walk superseded; this P4-X is canonical |
| Overview count | **PASS** — singular SOURCE MACHINERY (count=1); P4-O confirm |
| Fence glyphs | **PASS** — no POINTER/WORD/Graphic D as WASM objects inside fences |

**P4-X counts (post-FIX):** **16 PASS · 0 open FIX** (9 pairs + 7 overview nodes). Pre-FIX seeds were 4 FIX loci (all resolved).

### P4-F — Fixes applied

| # | Path | Edit |
|---|---|---|
| 1 | `wasm-spec-3-ascii-machinery.md` | False-friend FM-T* → FM-W* / MAP (all 9 panels) |
| 2 | `wasm-spec-3-ascii-machinery.md` | P-T6 Lace stamp + under-fence → FORBID-as-Core · SILENT |
| 3 | `wasm-spec-3-ascii-machinery.md` | Cross-walk superseded with M-T* + FM-W* columns |
| 4 | `wasm-spec-3-clipboard.md` | FM-W1/W2 pin PDF **91**→**90** (=p.86) |
| 5 | `wasm-spec-3-mechanisms.md` | M-T4 Spec locus tables/mems PDF **~91**→**90** (=p.86) |

No Core invent. No Wave B. No Order Proposal. No aesthetic overview redraw. No algorithm rewrite.

### P4-O — Canonical SOURCE MACHINERY overview

Singular fence in `wasm-spec-3-ascii-machinery.md` (**count=1**). All P-T1…P-T9 attach (P-T8 shares instantiate node). Lace Core / Graphic D / Phi = FORBIDDEN exit; Φ=`[GAP]`. No redraw.

### P4-R — Receipt + verdict

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~20:17 PT |
| Station | clipboards · agent `wasm-spec-3 Pass 4 EXECUTE` |
| Plan | [`wasm-spec-3-pass-4-plan.md`](wasm-spec-3-pass-4-plan.md) |
| PDF | `refs/local/webassembly-spec-3.0.pdf` · SHA `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` · gitignored · **never staged** |
| P4-A | coverage/1:1/stamp-under-fence/no-POINTER-in-fence/cross-walk freshness — all OK |
| P4-X | **16 PASS · 0 open FIX**; special gates M-T4/5/8/9 + FM-W1–W4,W7,W8 scored |
| P4-F | **5** edits (ascii×3 · clipboard FM pins · M-T4 locus) |
| P4-O | singular overview confirmed (no redraw) |
| **Verdict** | **SOUND WITH OPENS** |
| Opens (non-blocking) | D7 `[OPEN]` book-continues (Pass 2); Waves B–D deferred; Order Proposal deferred (Pass 5 shape if wanted) |
| P3-M | CONFIRM×9 stand · no stamp-conflict (P-T6 aligned *to* M-T6) |
| Emission | still `[GAP]` |
| `src/` / Cargo | absent |
| rust-nostd / law / graphics / systems-manifest / five-stakes | untouched |
| Push | **not** performed |

Steward refuse (shoe in hands): linear mem=strand · table=star · stack=append · br/return→Φ · validate→admit POINTER · wat sole authority · import fills GAP · trap=Lace cut · instantiate=Core birth · POINTER-as-WASM-object in fence — refuse via M-T* + P-T* + P4-X teeth above.

## Pass 5 — Rigorous Spec↔ASCII mapping + Shadow Order Proposal

**Status:** **EXECUTED** · 2026-09-18 ~20:30 PT · station clipboards · agent `reference-Mapper`  
**Plan:** [`wasm-spec-3-pass-5-plan.md`](wasm-spec-3-pass-5-plan.md) (HELD → EXECUTED)  
**ASCII under test:** [`wasm-spec-3-ascii-machinery.md`](wasm-spec-3-ascii-machinery.md) — SOURCE MACHINERY + P-T1…P-T9  
**Mechanisms:** [`wasm-spec-3-mechanisms.md`](wasm-spec-3-mechanisms.md) — M-T1…M-T9  
**Law:** WASM = **TARGET** only. Pass 4 board adopted as **Shadow Order Proposal**. User intensification: P5-X = **rigorous Spec↔ASCII mapping** (PDF loci → overview + each P-T*), not rubber-stamp CONFIRM. Emission Φ still `[GAP]`. NON-binding on Core / `src/` / Φ / systems-manifest-ascii / graphics / rust-nostd.

**Hands + mesh skim (T1):** shoe / AGENTS Implementation Law → graphics A–D → systems-manifest → law-why → rust-nostd crate-map + branch-contracts (PROPOSAL only) → pointer-emission DRAFT/`[GAP]` → clock/wasm README (Shadow bake ≠ Spec authority) → Pass 1–4 clipboard (P4-R **SOUND WITH OPENS**) → ascii overview+P-T* → mechanisms M-T* → this Pass 5 plan → AgentScope/Xiao–Zhu Pass 5 Order Proposal shape (adapt to TARGET).

**PDF gate (T2):** `refs/local/webassembly-spec-3.0.pdf` · SHA-256 `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` · 323 pp · `git check-ignore` OK · **never staged**. Re-sighted this pass for mapping pins (pdftotext).

### P5-X — Rigorous Spec↔ASCII mapping matrix

**Stance:** Deeper than plan’s light CONFIRM. For overview spine + each P-T1…P-T9: cite Spec chapter/§ + PDF page; check panel depicts that mechanism; check M-T* alignment; stamps/FM keep-outs still true. Pass 4 OPENS reopened only if they affect representation — they do **not**; noted still OPEN below.

**Columns:** Spec locus (ch/§ · PDF) → overview node · P-T* · M-T* · KEEP/FORBID tooth · Panel OK · M-align · Stamp/FM OK · PASS/FIX

#### Overview spine nodes

| Spec locus | PDF pin (re-sight) | Overview node | Attached P-T* | M-T* | KEEP/FORBID | Panel/attach OK | Stamp/FM | Score |
|---|---|---|---|---|---|---|---|---|
| Ch.5 Binary · Ch.6 Text (input forms) | Ch.5 PDF **183** (=p.179); Ch.6 PDF **211** (=p.207) | `[bytes .wasm \| text .wat]` INPUT | (off-panel observe) | — | KEEP observe shelf; FORBID clock/wasm bake as Spec authority | Y — INPUT marked off-panel | Y | **PASS** |
| Ch.5 decode · Ch.6 parse | §5.1 PDF **183**; §5.5.2 PDF **205**; Ch.6 PDF **211** | `[decode / parse]` | P-T6 · P-T7 | M-T6 · M-T7 | KEEP-read-as-target · FORBID-as-Core · SILENT · wat non-authority | Y — both twins named | Y→FM-W9/W6 | **PASS** |
| Ch.2.5 Modules · Ch.2.2–2.3 Types | §2.5 PDF **27** (=p.23); §2.3 PDF **13–16** (=p.9–12) | `[abstract module]` | P-T1 · P-T2 | M-T1 · M-T2 | KEEP · FORBID-as-Lace-store · FORBID-as-Core · FORBID-as-Core-write | Y — sections+types | Y→FM-W9 / MAP | **PASS** |
| Ch.3 Validation · App. §7.6 | Ch.3 PDF **33** (=p.29); matching PDF **47**; §7.6 PDF **274** (=p.270) | `[validate]` | P-T3 | M-T3 | KEEP · FORBID-as-emission-rule · SILENT | Y — declarative + App sketch | Y→FM-W5 | **PASS** |
| Ch.4.2 Runtime · Ch.4.7 Instantiation | §4.2 PDF **87–94**; store PDF **88**; mem/table PDF **90**; stack PDF **93–94**; §4.7.2 PDF **177** | `[instantiate + store]` | P-T4 (+ P-T8 share) | M-T4 (+ M-T8) | KEEP · **FORBID-as-Lace-store** · FORBID-as-Core | Y — store/mem/table/stack/frames; host co-located | Y→FM-W1…W3 · W9 | **PASS** |
| §7.1 Embedding (host boundary) | §7.1 PDF **245** (=p.241) | (same instantiate node · P-T8) | P-T8 | M-T8 | KEEP · **PROPOSAL-only** · FORBID fill-GAP | Y — host box + GAP refuse | Y→FM-W7 | **PASS** |
| Ch.4.6 Instructions / control | §4.6 PDF **~126+**; Control §4.6.2 PDF **127–129** (=p.123–125) | `[reduce instructions]` | P-T5 | M-T5 | KEEP · **FORBID-as-emission-rule** | Y — reduce / br / return / trap path | Y→FM-W4 | **PASS** |
| §4.2.2 Results · traps | Results PDF **88**; trap admin / `unreachable` PDF **127** | `trap / diverge` | P-T9 | M-T9 | KEEP · FORBID-as-emission-rule · SILENT | Y — result forms; Lace append OFF | Y→FM-W8 | **PASS** |
| (Lace keep-out — not Spec) | — | `x --> Lace Core / Graphic D / Phi` FORBIDDEN | — | — | FORBID-as-Core-write · Phi=`[GAP]` | Y — off-board exit only | Y | **PASS** |

#### P-T1…P-T9 panel mapping (Spec → ASCII → M-T*)

| Spec locus | PDF pin (re-sight this pass) | Overview / P-T* | M-T* | KEEP/FORBID | Depicts mechanism? | M-align | Stamp/FM keep-out | Score |
|---|---|---|---|---|---|---|---|---|
| §2.5 Modules · §5.5.2 Sections · §5.5.17 magic | PDF **27** (module collects types/imports/…); **205** (id\|size\|contents; ids 0–13); **209** (`∖0asm`+version) | abstract module / **P-T1** | **M-T1** | KEEP · FORBID-as-Lace-store · FORBID-as-Core | Y — module tree + binary preamble/section grammar | Y | FM-W9 stand | **PASS** |
| §2.3 Types · §4.2.1 Values | PDF **13–16** (num/vec/ref; transparent vs opaque); **87–88** (runtime val; defaults) | abstract module / **P-T2** | **M-T2** | KEEP · FORBID-as-Core-write | Y — valtype tree + runtime val; “not Lace Core types” | Y | MAP forbid stand | **PASS** |
| Ch.3 Validation · §3.3 Matching · §7.6 algorithm | PDF **33** (“Only valid modules can be instantiated”); **47** (result/instr matching); **274** (one-pass opcode algorithm) | validate / **P-T3** | **M-T3** | KEEP · FORBID-as-emission-rule · SILENT | Y — declarative typing + matching + App sketch; “does not schedule Lace append” | Y | FM-W5 stand | **PASS** |
| §4.2 Runtime Structure (store/mem/table/stack/frames) | PDF **87–94**; store **88**; table/mem **90** (`tableinst`/`meminst` linear memory); stack/frames **93–94** | instantiate+store / **P-T4** | **M-T4** | KEEP · **FORBID-as-Lace-store** | Y — store record; meminst bytes[]; tableinst refs[]; frame/stack; FORBIDDEN strand note | Y | FM-W1…W3 · W9 stand | **PASS** |
| §4.6 Instructions · §4.6.2 Control | PDF **127+** (unreachable→trap; block/loop/if); **128–129** (`br ℓ`; return exits frame) | reduce / **P-T5** | **M-T5** | KEEP · **FORBID-as-emission-rule** | Y — config reduce; control labels; br/return; “do NOT emit Lace Phi” | Y | FM-W4 stand | **PASS** |
| Ch.5 Binary Format · §5.5 Modules | PDF **183** (attribute grammar over bytes; `.wasm`); **205–209** (sections + magic) | decode / **P-T6** | **M-T6** | KEEP · FORBID-as-Core · SILENT | Y — bytes→magic→section*→abstract module; not src/ | Y | FM-W9 related · D7 cross-link | **PASS** |
| Ch.6 Text Format | PDF **211** (S-expr rendering; abbreviations; `.wat` UTF-8; embedder need not parse text §7.1 note) | decode / **P-T7** | **M-T7** | KEEP · text **non-authority** twin | Y — wat/wasm converge on abstract module; binary = encode authority | Y | FM-W6 stand | **PASS** |
| §7.1 Embedding · §2.5 imports/exports | PDF **245** (embedder interface; host↔WASM); imports in §2.5 PDF **27+** | instantiate+store / **P-T8** | **M-T8** | KEEP · **PROPOSAL-only** · FORBID fill-GAP | Y — HOST→instance imports/exports; bridge PROPOSAL; GAP refuse | Y | FM-W7 stand | **PASS** |
| §4.2.2 Results · traps · soundness | PDF **88** (`result ::= val* \| exception \| trap`); **127** unreachable→trap; App §7.4 soundness | trap/diverge / **P-T9** | **M-T9** | KEEP · FORBID-as-emission-rule · SILENT | Y — values/exception/trap/diverge; Lace Rule Zero OFF board | Y | FM-W8 stand | **PASS** |

**P5-X counts:** overview-spine Spec mapping rows **9 PASS** + P-T1…P-T9 panels **9 PASS** = **18 PASS · 0 FIX** (rigorous Spec→ASCII; finer than P4-X’s 16 which coarser-bucketed overview).

**Pass 4 OPENS (representation impact?): **

| OPEN | Affects Spec→ASCII representation? | Pass 5 stance |
|---|---|---|
| D7 book-continues `[OPEN]` (Pass 2 miniature) | No — Shadow decode sketch; P-T6/M-T6 still depict Ch.5 correctly | **still OPEN** · non-blocking |
| Waves B–D deferred | No — out of Wave A board | **still OPEN** · default skip |
| Order Proposal was deferred | This pass delivers it | **CLOSED** by P5-P |

**Steward refuse tests (P5-X + stamps):** all 10 plan tests still refuse via panel/M-T/FM teeth above — no representation enables them.

### P5-F — Mapping-cited fixes

**None.** Matrix all PASS. No ascii caption/stamp/overview-attach drift; no mechanism caption edit required. Did not redo Pass 4 aesthetic work.

### P5-O — Canonical SOURCE MACHINERY

Exactly **one** `## SOURCE MACHINERY overview` fence in `wasm-spec-3-ascii-machinery.md` (grep count=1). P4-O stand confirmed. Lace Core / Graphic D / Φ remain FORBIDDEN off-board exits. Short P5-P mirror added **under** overview (outside the fence).

### Order proposal (Shadow) — SOURCE MACHINERY as shelf hygiene (compile target)

**Stamps:** **KEEP-read** · **FORBID-as-Core-write** · **FORBID-as-Lace-store** · **FORBID-as-emission-rule** · **FORBID-as-Core** · **FORBID fill-GAP** · **SILENT-for-Lace-append** · **PROPOSAL** · **NON-binding**

1. **This is a proposal, not Core.** It does not amend AGENTS.md, `systems-manifest-ascii.md`, Graphic D, reason-model-map, law, or rust-nostd crate-map / branch-contracts. Hands may refuse without breach of Core. It is Shadow / Layer III **compile-target shelf hygiene** only — how this WASM Spec 3.0 shelf + rust-nostd mesh stay ordered when compiling toward `wasm64-unknown-unknown`. **NON-binding** on Core / `src/` / Φ / systems-manifest-ascii / graphics.

2. **Stage → hygiene table** (Pass 4/5 SOURCE MACHINERY read as steward order):

| Pipeline stage (ASCII) | Proposal for shelf / steward order |
|---|---|
| Input bytes `.wasm` / text `.wat` | Observe what is actually on the shelf (files, receipts, claim) before rewriting; refuse treating `docs/clock/wasm` bake as Spec 3.0 authority |
| decode / parse (P-T6 / P-T7) | Name binary vs wat twin honestly; **FORBID** decode as Core birth / `src/` gate; wat stays non-authority |
| abstract module (P-T1 / P-T2) | Name Spec anatomy; **FORBID** module/valtypes as Core doors / WORD·POINTER kinds |
| validate (P-T3) | Stamp-check: validation ≠ admit POINTER / Lace write gate; **SILENT** for Lace append |
| instantiate + store (P-T4) | **FORBID** linear mem=strand · table=star · stack/frames=append / Graphic D; instantiate ≠ Core birth |
| host embed (P-T8) | **PROPOSAL-only** bridge sketches; **FORBID** import host fills emission `[GAP]` |
| reduce / control (P-T5) | Stamp-check: `br` / `return` / call ≠ POINTER when / arity / adjacency / Φ |
| trap / diverge (P-T9) | **FORBID** as Lace cut / append rule; **SILENT** |
| FORBIDDEN exit → Core / Graphic D / Φ | Decisive judgment = commit / release / defer / stop — **not** Φ fill / emission invent |

3. **Recommended reader shelf file order** (proposal only):  
   `clipboard (admit) → mechanisms (algorithms) → ascii-machinery (diagrams) → pass plans (history)`  
   with rust-nostd crate-map / branch-contracts cited **beside** as mesh **proposals** — not Spec authority and not accepted birth / accepted emission.

4. **Steward loop** when touching this shelf: observe → name → diagram-check → stamp-check → list OPENs → decide (commit / release / defer / stop).

5. **Explicit keep-outs / FORBID:**
   - mem = strand · table = star · stack/frames = append / Graphic D
   - `br` / `return` / call = Φ / POINTER when
   - validate = admit POINTER
   - host import / compile-to-wasm64 / instantiate = fill `[GAP]` / Core birth / `src/` gate
   - trap = Lace cut
   - promote this ascii Order Proposal into Core / AGENTS.md / systems-manifest-ascii / Graphic D
   - treat rust-nostd doors as accepted emission or as WASM birth events
   - **SILENT for Lace append**

6. **Honesty link:** rigorous mapping matrix **P5-X** above is how the proposal stays honest (every Spec locus ↔ overview node ↔ P-T* ↔ M-T* scored).

7. **Emission column remains `[GAP]`** sealed — no POINTER when / arity / adjacency invented.

Mirror (short): under SOURCE MACHINERY overview in [`wasm-spec-3-ascii-machinery.md`](wasm-spec-3-ascii-machinery.md).

### P5-R — Pass 5 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~20:30 PT |
| Station | clipboards · agent `reference-Mapper` |
| Plan | [`wasm-spec-3-pass-5-plan.md`](wasm-spec-3-pass-5-plan.md) → EXECUTED |
| Base | origin/main `877c94f` at claim; plan commit rebased `db1e305` |
| Hands skim | shoe → graphics A–D → systems-manifest → law-why → AGENTS Implementation Law → rust-nostd (cite) → pointer-emission `[GAP]` → Pass 1–4 → ascii → mechanisms → plan → sibling OP shape |
| PDF | **PRESENT** gitignored; SHA `687e7364…e7f70fce`; pdftotext re-sight for P5-X pins; **never staged** |
| P5-X | Rigorous Spec↔ASCII · **18 PASS · 0 FIX** (9 overview-spine Spec rows + 9 P-T*) |
| P5-F | **none** |
| P5-O | singular overview confirmed (count=1); Core/Φ off-board |
| P5-P | Order Proposal full text **this section**; short ascii mirror under overview |
| Pass 4 OPENS | D7 still OPEN (non-blocking); Waves B–D still deferred; Order Proposal **delivered** |
| Wave B | **SKIP** (default) |
| Pass 6 | **not** opened |
| Emission | still `[GAP]` |
| `src/` / Cargo | absent · untouched |
| rust-nostd / law / graphics / systems-manifest / five-stakes / Core ASCII | **untouched** |
| Touched | clipboard · ascii-machinery (mirror + status) · pass-5-plan (EXECUTED) · station |
| Push | **not** performed |

**Steward test:** Shoe in hands — refuse “install this ASCII board as Graphic D / Core / systems-manifest-ascii” using P5-P + P5-X alone. WASM remains TARGET. Linear mem / table / stack still not the strand. `br` / validate / trap still not Φ / admit / cut. Host / instantiate still do not fill `[GAP]` or birth Core. rust-nostd doors stay proposals. Decisive judgment is release/stop — not Φ. Emission stays `[GAP]`.

---

## Pass 6 — Rigorous analysis & ASCII systems-diagram correctness (wasm64 seal)

**Plan:** [`wasm-spec-3-pass-6-plan.md`](wasm-spec-3-pass-6-plan.md) · **Status:** **EXECUTED** · 2026-09-18 ~20:40 PT · agent `reference-Mapper`  
**Sealed compile target:** Lace `#![no_std]` → **`wasm64-unknown-unknown`** (human correction; wasm32 is NOT the shelf target).  
**Law:** WASM = TARGET only · Order Proposal still Shadow / NON-binding · FORBID-as-Core intact · Φ = `[GAP]` · no `src/`.

### Hands + target-mesh skim (T1)

shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → rust-nostd crate-map + branch-contracts (PROPOSAL only) → pointer-emission DRAFT/`[GAP]` → clock/wasm README (Shadow bake; libcore wasm32 note = toolchain fact, **not** shelf Spec authority) → Pass 1–5 clipboard (P5-X **18 PASS** · P5-P · P4-R SOUND WITH OPENS) → ascii overview+P-T* → mechanisms M-T* → Pass 6 plan (wasm64 seal).

### PDF gate (T2)

`refs/local/webassembly-spec-3.0.pdf` · SHA-256 `687e7364…e7f70fce` · gitignored · **never staged**. Re-sighted: §4.2.8–4.2.9 tables/mems PDF **90** (=p.86); §4.2.2 results PDF **88**; §4.6.2 control PDF **127–129**; §7.1 Embedding PDF **245**; §2.3.11 Address Types `addrtype ::= i32 | i64` (PDF ~15 / printed ~11).

### P6-A — Systems-diagram structure checklist

| # | Item | Evidence | Verdict |
|---|---|---|---|
| 1 | Spine completeness | overview fence: INPUT → decode P-T6/7 → module P-T1/2 → validate P-T3 → instantiate+store P-T4 + host P-T8 → reduce P-T5 → trap P-T9 → FORBIDDEN Core/Φ | **PASS** |
| 2 | No orphan nodes | every overview box cites ≥1 P-T* (INPUT / FORBIDDEN exit marked) | **PASS** |
| 3 | Wave A coverage | M-T1…T9 / P-T1…T9 on overview; P-T4+P-T8 share instantiate+store node | **PASS** |
| 4 | Off-board integrity | Lace Core / Graphic D / Φ only as FORBIDDEN exits; Phi=[GAP] under fence | **PASS** |
| 5 | Glyph discipline | no WORD/POINTER / Graphic-D art inside overview or P-T* fences (POINTER only in prose/stamps/false-friends) | **PASS** |
| 6 | Stamp under-fence | overview + P-T1…P-T9 stamps under fences (not fence glyphs) | **PASS** |
| 7 | Singularity | exactly one `## SOURCE MACHINERY overview` (count=1; P5-O/P4-O stand) | **PASS** |
| 8 | Panel coverage | P-T1…P-T9 each: Spec cite · Lace stamp · fence · under-fence stamp; Implements via M-T* reverse-walk | **PASS** |
| 9 | Target-banner coherence | ascii / clipboard / mechanisms COMPILATION TARGET banners say **`wasm64-unknown-unknown`** after P6-F | **PASS** |

**P6-A count:** **9 PASS · 0 OPEN**

### P6-P — Order Proposal rigor (still Shadow / NON-binding)

| Check | Result | Verdict |
|---|---|---|
| Claim–diagram bind | Stage→hygiene rows point at real overview nodes / P-T* | **PASS** |
| Overclaim | No Core write / AGENTS amend / Φ schedule / `src/` birth / accepted rust-nostd emission | **PASS** |
| FORBID completeness | FORBID-as-Core-write · Lace-store · emission-rule · Core · fill-GAP · SILENT · PROPOSAL · NON-binding · Hands-refusal all explicit | **PASS** |
| Steward loop | observe→name→diagram-check→stamp-check→OPEN→decide; decide excludes POINTER-when / Φ fill / Core install / fill-GAP | **PASS** |
| File-order proposal | clipboard→mechanisms→ascii→plans = proposal-only; rust-nostd beside | **PASS** |
| Mirror fidelity | ascii short mirror ≤ clipboard P5-P strength (no strengthen) | **PASS** |
| FORBID-as-Core intact | proposal does not install into systems-manifest-ascii / Graphic D / AGENTS / `src/` | **PASS** |
| Target seal in proposal | P5-P + mirror retargeted to **`wasm64-unknown-unknown`** (P6-F); compile-to-wasm64 refuse lines | **PASS** (after P6-F) |

**P6-P count:** **8 PASS · 0 OPEN** · Order Proposal remains **Shadow / NON-binding**.

### P6-X — Deep accuracy matrix (Spec↔M-T*↔P-T*↔overview)

Re-walked; did **not** inherit P4-X/P5-X blindly. Columns: Cite · Stamp · Implements · Fence · Overview · FM · special gates.

| P | M | Cite | Stamp | Implements | Fence | Overview | FM | Verdict |
|---|---|---|---|---|---|---|---|---|
| P-T1 | M-T1 | Ch.2.5 / §5.5 PDF 27/205 | KEEP · FORBID-store · FORBID-Core | steps 1–5 depictable on fence | module sections / binary preamble | abstract module | FM-W9 | **PASS** |
| P-T2 | M-T2 | §2.3 / §4.2.1 PDF 13–16/87 | KEEP · FORBID-Core-write | num/vec/ref recorded | valtype tree incl. **i64** | abstract module | MAP forbid | **PASS** (i64 in valtype ≠ Lace index / strand address) |
| P-T3 | M-T3 | Ch.3 / App 7.6 PDF 33/274 | KEEP · FORBID-emission · SILENT | declarative + matching | validate yes/no | validate | FM-W5 | **PASS** |
| P-T4 | M-T4 | §4.2 PDF 87–94; tables/mems **90** (=p.86) | KEEP · **FORBID-as-Lace-store** | store/mem/table/stack/frames | meminst/tableinst/stack/config | instantiate+store | FM-W1…W3·W9 | **PASS** + **wasm64/memory64 note** (addrtype i32\|i64; width≠identity) |
| P-T5 | M-T5 | §4.6.2 PDF 127–129 | KEEP · **FORBID-as-emission-rule** | reduce / control / br / return | config reduce · control | reduce | FM-W4 | **PASS** (br/return ≠ Φ) |
| P-T6 | M-T6 | Ch.5 PDF 183/205 | KEEP · FORBID-Core · SILENT | magic→sections→module | decode pipeline | decode | FM-W9 related | **PASS** |
| P-T7 | M-T7 | Ch.6 PDF 211 | KEEP · non-authority twin | wat↔module twin | wat/wasm twin | decode/parse | FM-W6 | **PASS** |
| P-T8 | M-T8 | §7.1 PDF **245** | KEEP · PROPOSAL · **FORBID fill-GAP** | embed interface | HOST↔instance | instantiate+store (shared) | FM-W7 | **PASS** (host ≠ fill GAP; compile-to-**wasm64** ≠ accept emission) |
| P-T9 | M-T9 | §4.2.2 PDF **88**; trap 94/127 | KEEP · FORBID-emission · SILENT | results/trap/diverge | trap paths · Rule Zero OFF | trap/diverge | FM-W8 | **PASS** (trap ≠ Lace cut) |

**Special gates scored:**

| Gate | Result |
|---|---|
| P-T4 mem≠strand · table≠star · stack≠append | **PASS** (FORBID-as-Lace-store; FM-W1…W3) |
| P-T4 wasm64 / memory64 / addrtype | **PASS** — Spec §2.3.11 `addrtype ::= i32 \| i64`; caption+M-T4 TARGET note; **FORBID** mem=strand under any width |
| P-T2 i64 in numtype | **PASS** — not collapsed into Lace index / strand address |
| P-T5 control ≠ Φ | **PASS** |
| P-T8 host ≠ fill GAP · compile-to-wasm64 ≠ accept emission | **PASS** |
| P-T9 trap ≠ Lace cut | **PASS** |
| P-T1 wasm64 surface ≠ strand/core door | **PASS** (after P6-F MAP/mesh seal) |
| False-friend fence scan | **PASS** — no Graphic D / 1D strand / POINTER art in fences |

**P6-X count:** **9 PASS · 0 FIX** (representation notes added under P6-F; not algorithm rewrites).

**Steward refuse tests 1–12:** all still refuse via P6-A + P6-P + P6-X stamps (incl. target-seal #11 and width≠identity #12).

### P6-F — Cited fixes (incl. Target seal inventory)

| # | Locus | Fix |
|---|---|---|
| F1 | ascii COMPILATION TARGET banner | wasm32 → **wasm64-unknown-unknown** + seal line |
| F2 | ascii overview fence caption | `--> wasm64-unknown-unknown` |
| F3 | ascii Order Proposal short mirror | “aims at wasm64” |
| F4 | clipboard SPECIAL + COMPILATION TARGET banner | wasm64 + seal line |
| F5 | clipboard false-friends / steward-refuse | Compiling to **wasm64**… |
| F6 | clipboard MAP arrow | future **wasm64** surface |
| F7 | clipboard ON-THE-SHOE / keep-beside | compile toward `wasm64-unknown-unknown` |
| F8 | clipboard fill-GAP / refuse | compile-to-**wasm64** |
| F9 | clipboard M-T1 mesh row | wasm**64** surface ≠ … |
| F10 | clipboard P5-P Order Proposal | compiling toward `wasm64-unknown-unknown`; compile-to-wasm64 refuse |
| F11 | mechanisms COMPILATION TARGET banner | wasm64 + seal line |
| F12 | mechanisms FORBID fill-GAP stamp | compile-to-**wasm64** |
| F13 | mechanisms M-T1 rust-nostd cite | wasm**64** surface ≠ … |
| F14 | mechanisms M-T8 open-gaps | compile-to-**wasm64** story |
| F15 | ascii P-T4 caption + fence | TARGET note: addrtype i32\|i64 / memory64; width≠identity |
| F16 | mechanisms M-T4 | TARGET note row + fence addrtype comment |

**FIX count:** **16** (14 banner/MAP/refuse seal + 2 representation notes).  
**Not done (by plan):** mass-rewrite Pass 1–5 plan bodies (historical drift only); Spec M-T*/P-T* algorithm invent; clock/wasm README (Shadow bake; OPEN non-blocking toolchain note that libcore wasm32 may still appear as bake fact — not shelf Spec authority).

### P6-R — Pass 6 receipt

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~20:40 PT |
| Station | clipboards · agent `reference-Mapper` |
| Plan | [`wasm-spec-3-pass-6-plan.md`](wasm-spec-3-pass-6-plan.md) → **EXECUTED** |
| Base | tip at claim after plan rebuild `686d771` / plan tip `3cfe96a`; origin/main ff-only clean |
| Hands skim | complete (T1) |
| PDF | **PRESENT** gitignored; SHA `687e7364…e7f70fce`; re-sight special gates; **never staged** |
| P6-A | **9 PASS · 0 OPEN** (incl. target-banner coherence wasm64) |
| P6-P | **8 PASS** · Order Proposal still Shadow / NON-binding · wasm64 sealed in proposal prose |
| P6-X | **9 PASS · 0 FIX** (algorithm); special gates P-T4/5/8/9 + memory64/addrtype **PASS** |
| P6-F | **16 FIX** (wasm64 seal inventory + addrtype notes) |
| Verdict | **DIAGRAM SOUND WITH OPENS** |
| Opens (non-blocking) | D7 book-continues; Waves B–D deferred; Pass 1–5 plan banners may still say wasm32 historically (not mass-edited); clock/wasm README may mention wasm32 libcore as Shadow bake fact ≠ shelf target |
| Overview | singular (count=1); Core/Φ off-board |
| Target seal | ascii / clipboard / mechanisms COMPILATION TARGET banners = **`wasm64-unknown-unknown`** |
| Wave B | **SKIP** |
| Emission | still `[GAP]` |
| `src/` / Cargo | absent · untouched |
| rust-nostd / law / graphics / systems-manifest / five-stakes / Core ASCII | **untouched** |
| Touched | clipboard · ascii-machinery · mechanisms · pass-6-plan (EXECUTED) · station |
| Push | **not** performed |

**Overall verdict: DIAGRAM SOUND WITH OPENS** — systems diagram coherent, non-leaking, reverse-walk accurate, stamp-correct, steward-refusable under Hands, and **bannered to sealed wasm64**. Prior Pass 4 OPENS remain non-blocking. Order Proposal still Shadow. Emission `[GAP]`.

**Steward test:** Shoe in hands — refuse install-as-Core, mem=strand (incl. under i64/memory64), table=star, stack=append, br=Φ, validate=admit POINTER, host/compile-to-wasm64=fill GAP, trap=cut, instantiate=Core birth, proposal-rewrites-rust-nostd, retarget-to-wasm32 — using P6-A + P6-P + P6-X alone.
