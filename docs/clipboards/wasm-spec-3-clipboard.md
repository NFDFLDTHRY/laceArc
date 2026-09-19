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
| False friends | WASM store ↔ Lace store · linear memory ↔ strand · table ↔ star index · operand stack ↔ append discipline · `br`/`return` ↔ POINTER when · host import ↔ emission acceptance · validating/compiling to wasm32 ↔ accepting `pointer-emission.md` |
| Steward refuse (must reject) | (1) “WASM linear memory is the Lace strand” → **FORBID-as-Lace-store** · (2) “`br`/`return` emits POINTER” → **FORBID-as-emission-rule** · (3) “Import host fn fills emission `[GAP]`” → **FORBID** / **PROPOSAL-only**, GAP remains · (4) WASM store/table/stack as second Lace store / Graphic D → **FORBID** · (5) “Compiling to wasm32 accepts pointer-emission.md” → **FORBID** |
| Moral | Shoe in hands, or no. WASM is the machine we may compile toward, not the lace. Traps are not append rules. Host imports do not accept Φ. |

---

## Mechanisms note

Thin `wasm-spec-3-mechanisms.md` (M-T1…M-T9) **deferred** this pass — panel captions + PDF pins carry Pass 1 rigor. Open if steward wants Petersen-grade algorithm cards later.


## Pass 2 deltas

Pass 1 filled PAGE A–H, X and ASCII overview + P-T1…P-T9 against the PDF. These deltas are **compile-target leftovers** only. They do not invent emission. A–H/X morals and P-T* stamps are unchanged. FORBID-as-Lace-store / FORBID-as-emission-rule / PROPOSAL-only are not softened. WASM remains **TARGET only**.

### D1 — What this clipboard / shelf is not

- Not Core / not a sixth graphic / not systems-manifest-ascii.
- Not `docs/pointer-emission.md` / not a Φ fill / not acceptance of emission by compiling to wasm32.
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
P-T1/B ──read-as-target──► future wasm32 surface   ──[X]──► strand/ · core/ doors
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
| **FM-W1** | WASM **linear memory** ⇒ Lace **1D strand** | **FORBID-as-Lace-store** · Piece 1/6 · PAGE E / P-T4 | §4.2.9 Memory Instances PDF **91** (=p.87) — `meminst ::= {type memtype, bytes byte*}` · “runtime representation of a **linear memory**” (cite E) |
| **FM-W2** | WASM **table** (funcref/externref) ⇒ Lace **star** / star index | **FORBID-as-Lace-store** · Piece 7 · PAGE E / P-T4 | §4.2.8 Table Instances PDF **91** (=p.87) — `tableinst ::= {type tabletype, refs ref*}` (cite E) |
| **FM-W3** | Operand **stack / frames** ⇒ Lace **append** / Graphic D rows | **FORBID-as-Lace-store** · Piece 6 · PAGE E / P-T4 | §4.2.17 Stack / Call Frames PDF **93–94** (=p.89–90); §4.2.3 Store PDF **88** (=p.84) (cite E) |
| **FM-W4** | **`br` / `return` / call** ⇒ POINTER **when** / arity / adjacency (Φ fill) | **FORBID-as-emission-rule** · pointer-emission `[GAP]` · PAGE F / P-T5 | §4.6.2 Control PDF **127–128** (=p.123–124) — `br ℓ` / `return` reductions; `unreachable ˓→ trap` (cite F) |
| **FM-W5** | **Validation** (stack-type / matching) ⇒ **admit POINTER** / Lace write gate | **FORBID-as-emission-rule** · **SILENT-for-Lace-append** · PAGE D / P-T3 | Ch.3 Conventions PDF **33** (=p.29) — “Only valid modules can be instantiated.” · App. §7.6 Validation Algorithm PDF **274** (=p.270) (cite D) |
| **FM-W6** | **`.wat` text** ⇒ sole / superior **authority** over binary | text = **non-authority twin** · PAGE G / P-T7 | Ch.6 Text Format PDF **211** (=p.207) — S-expression rendering; `.wat` extension; binary remains encode authority twin (Ch.5 PDF **183**) (cite G) |
| **FM-W7** | **Import host** function / embedding ⇒ **fill emission `[GAP]`** | **PROPOSAL-only** · **FORBID** fill-GAP · PAGE H / P-T8 | §7.1 Embedding PDF **245** (=p.241) — embedder connects host ↔ WASM semantics; does **not** accept Φ (cite H) |
| **FM-W8** | WASM **trap** / divergence ⇒ Lace **cut** / authorized rewrite / append rule | **FORBID-as-emission-rule** · **SILENT** · PAGE X / P-T9 | §4.2.2 Results PDF **88** (=p.84) — `result ::= val* \| … \| trap` · control/trap reductions PDF **126–128** (cite X / P-T9) |
| **FM-W9** | **Instantiate** (module→instance) ⇒ Lace **Core birth** / door open / `src/` gate | **FORBID-as-Core** · rust-nostd birth cards stand separate · PAGE E/H | §4.7.2 Instantiation PDF **177** (=p.173) — `instantiate(s, module, externaddr*)`; §4.2.6 Module Instances PDF **90** (=p.86) (cite E/H · branch-contracts) |

No FM row left `[OPEN]`. Pins reused/verified from Pass 1; `pdftotext -f N -l N -layout` re-sighted §4.2.3/8/9, §4.6.2, §4.7.2, Ch.3/5/6, §7.1, §7.6 this pass.

### D4 — Interface coherence (Hands + rust-nostd + ASCII)

**Only** KEEP-read-as-target outputs may sit **beside** Lace: Spec 3.0 as the ISA a future `#![no_std]` build may compile toward (`wasm32-unknown-unknown`). **Nothing** in A–H/X or P-T1…P-T9 writes Graphic D, strand/, word/, pointer/, or fills `pointer-emission.md`. rust-nostd **crate-map** = planned first-party doors; **branch-contracts** = serial birth cards — both remain proposals; WASM is **target surface**, not a door and not a birth event. ASCII P-T* stand as Wave A machinery; Pass 2 cites them for MAP/FM pins — **read-only** (T7 skip; stamps stand). Host embed (P-T8 / PAGE H) stays **PROPOSAL-only**; compiling or instantiating does **not** accept emission. `[GAP]` remains. Shoe in hands, or no.

### D5 — Source gate (cite Pass 1)

PDF is **PRESENT** (do not narrate absent). Pass 1 receipt: `refs/local/webassembly-spec-3.0.pdf` → attachment `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce.pdf`; **323** pages; text layer present (pdfTeX / LaTeX hyperref); printed ≈ PDF − 4; SHA-256 `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`; `git check-ignore` OK; **never `git add`**. Pass 1 products: clipboard PAGE A–H, X · ascii overview + P-T1…P-T9 · mechanisms deferred · execute ancestor on origin `cec1be6` (Pass 1 station release). Method this pass: reuse Pass 1 pins; `pdftotext` verify for FM-W* + optional D7. Five-stakes left untouched (T5 skip).

### D6 — Sealed (still)

- Invent POINTER when / arity / adjacency (Φ stays `[GAP]`)
- Soften Pass 1 FORBID-as-Lace-store / FORBID-as-emission-rule / PROPOSAL-only
- Promote WASM store / linear mem / table / stack / frames as Lace store
- Use `br` / `return` / call / trap as emission or Lace cut
- Treat validate as admit-POINTER · treat instantiate as Core birth · treat wat as sole authority
- Fill `[GAP]` via host import / compile-to-wasm32 story
- Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes
- Wave B mechanisms rewrite / new M-T* file · Pass 3 / Pass 4 products
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

