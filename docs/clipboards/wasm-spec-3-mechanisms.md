# WebAssembly Spec 3.0 — mechanism cards (compile-target system procedures)

**Status:** Pass 3–4 EXECUTED (Wave A **M-T1…M-T9**; Pass 4 fidelity). ASCII: [`wasm-spec-3-ascii-machinery.md`](wasm-spec-3-ascii-machinery.md) (P-T1…P-T9). Clipboard **P4-X / P4-R**. Emission `[GAP]`.  
**Source:** Andreas Rossberg / WebAssembly Community Group, *WebAssembly Specification* Release **3.0 (2026-09-11)**.  
**PDF:** `refs/local/webassembly-spec-3.0.pdf` → attachment `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` (323 pp., text layer; **never git-add**). SHA-256 `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`. Printed ≈ PDF − 4.  
**Sighting this pass:** `pdftotext -f N -l N -layout` on §2.5 / §2.2–2.3 / Ch.3 / §4.2 / §4.6 / Ch.5 / Ch.6 / §7.1 / §4.2.2+trap; Pass 1–2 pins reused.  
**Companion:** [`wasm-spec-3-clipboard.md`](wasm-spec-3-clipboard.md) · plan [`wasm-spec-3-pass-3-plan.md`](wasm-spec-3-pass-3-plan.md) · mesh [`rust-nostd-crate-map.md`](../plans/rust-nostd-crate-map.md) · [`rust-nostd-branch-contracts.md`](../plans/rust-nostd-branch-contracts.md) · [`pointer-emission.md`](../pointer-emission.md) = DRAFT/`[GAP]`.  
**Not this file:** Lace Core ASCII = [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**. Pass 2 **D7** binary miniature stands on the clipboard (cross-link from M-T6; do not rewrite).

```
+======================================================================+
|  COMPILATION TARGET — Lace Rust #![no_std]  -->  wasm32-unknown-unknown |
|  Pass 3 = Wave A system mechanisms (M-T1…M-T9) + P3-M mesh.            |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model).   |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.            |
|  WASM ops = TARGET semantics.  Do NOT invent POINTER emission / Phi.   |
|  Do NOT import WASM store/memory/table/stack as Lace's 1D strand.      |
|  Zero crates.io / foreign deps.  No src/ until pointer-emission accepted.|
|  Status this commit: Pass 3 EXECUTED — Wave A cards + P3-M.            |
+======================================================================+
```

Law: WASM = **compile target only** · linear mem ≠ strand · table ≠ star · stack/frames ≠ append · `br`/`return`/call ≠ Φ · validate ≠ admit POINTER · wat ≠ authority · import host ≠ fill `[GAP]` · trap ≠ Lace cut · instantiate ≠ Core birth · Hands win · `[GAP]` sealed · zero foreign crates · no `src/` until emission accepted.

This file is **Shadow / Layer III documentation of Spec 3.0 target procedures**, not Lace `src/`, not Graphic D, not Φ.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-target** | May sit beside Lace as compile-target / ISA semantics; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or Core operator / type set |
| **FORBID-as-Lace-store** | Must not treat WASM linear memory / table / stack / store as Lace’s 1D strand |
| **FORBID-as-emission-rule** | Must not use WASM control flow, calls, validation, or traps as POINTER when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔WASM bridge / host sketches are proposals only; not accepted law |
| **FORBID-as-Core** | Must not promote WASM module/instance/decode into Lace Core doors / `src/` birth |
| **FORBID fill-GAP** | Must not treat host import / embed / compile-to-wasm32 as filling emission `[GAP]` |

---

## Wave A — Spec constructive spine (blocking) — 1:1 with P-T1…P-T9

### M-T1 — Module anatomy (sections → abstract module)

| Field | Content |
|---|---|
| Kind | module-anatomy |
| Spec locus | §2.5 Modules · PDF **27** (=p.23); §5.5.2 Sections · PDF **205** (=p.201); magic §5.5.17 · PDF **209** (=p.205) |
| Sighting method | `pdftotext -f 27 -l 27` / `-f 205 -l 209` (this pass); Pass 1 PAGE B / P-T1 |
| Eye-quote | “WebAssembly programs are organized into modules, which are the unit of deployment, loading, and compilation. A module collects definitions for types, tags, and globals, memories, tables, functions.” / `section_N(X) ::= N:byte len:u32 en*:X ⇒ en* if len = \|\|X\|\| \| ε ⇒ ε` |
| Inputs | Abstract-syntax module fields (or binary section stream feeding them) |
| Outputs | Module collecting types, imports, tags, globals, mems, tables, funcs, data, elems, optional start, exports |
| Invariants | Index spaces include imports first; omitted binary section ≡ empty contents; module is deployment/compile unit — not a Lace crate |
| Algorithm | See below |
| Complexity / termination | Finite lists; halt when module components recorded |
| Worked miniature | Binary section id table (0 custom … 12 data count …) on PDF **205**; preamble `\0asm` + version |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-Lace-store**; **FORBID-as-Core** (module ↛ Core door) |
| Hands cite | AGENTS Implementation Law (no `src/` until emission); systems-manifest (one store); PAGE B |
| Panel cite | **P-T1** · PAGE **B** |
| False friend | **FM-W9** (instantiate / module→instance ↛ Core birth); FM-T1 module ⇒ Lace crate |
| rust-nostd cite | crate-map wasm32 **surface ≠** strand/ · core/ **door**; branch-contracts birth cards stand separate |
| Open gaps | Φ / emission `[GAP]`; no Core birth from module shape |

**Algorithm**

1. **Preconditions.** Spec abstract syntax for a module (or binary sections that decode into it — M-T6).  
2. **State.** Empty module record.  
3. **Steps.**  
   1. Collect `list(type)`, `list(import)`, `list(tag)`, `list(global)`, `list(mem)`, `list(table)`, `list(func)`, data/elem segments, optional `start`, `list(export)` per §2.5.  
   2. Keep import-first index spaces as Spec states.  
   3. For binary view: each section = one-byte id + u32 size + payload (§5.5.2); omitted ≡ empty.  
   4. Refuse treating the module as a Lace Core door or as a second Lace store.  
4. **Choice points.** Which optional sections present — Spec allows empty; Lace does not invent Core folders from them.  
5. **Halt.** Abstract module outline ready for types/validate (M-T2/M-T3).  
6. **Output certificate.** Module anatomy (target ISA unit only).

```text
module ::= types | imports | tags | globals | mems | tables | funcs | data/elems | start? | exports
# KEEP-read-as-target; FORBID-as-Lace-store; FORBID-as-Core
```

---

### M-T2 — Types / values

| Field | Content |
|---|---|
| Kind | types / values |
| Spec locus | §2.2 Values · §2.3 Types · PDF **11–16** (=p.7–12); runtime values §4.2.1 · PDF **87** (=p.83) |
| Sighting method | `pdftotext -f 11 -l 16` / `-f 13 -l 14` / `-f 87 -l 88` (this pass); Pass 1 PAGE C / P-T2 |
| Eye-quote | “Number types classify numeric values. `numtype ::= i32 \| i64 \| f32 \| f64`” / “Number types are transparent… Values of number type can be stored in memories.” / “Vector types… `vectype ::= v128`” |
| Inputs | Spec type grammar productions; runtime value constructors |
| Outputs | `valtype` = numtype \| vectype \| reftype; runtime `val` = num \| vec \| ref; defaults 0 / +0 / null |
| Invariants | num/vec transparent (memory-storable); refs opaque (table/heap); defaults per Spec; types are **target ISA** — not Lace WORD/POINTER kinds |
| Algorithm | See below |
| Complexity / termination | Finite type grammar; halt when valtype/value classes recorded |
| Worked miniature | `default_iN = (iN.const 0)`; `default_ref.null ht = ref.null`; non-null ref default = ε (§4.2.1 PDF **88**) |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-Core-write** (valtypes ↛ WORD/POINTER kinds) |
| Hands cite | Piece 4/5 (WORD/POINTER); Graphic D kinds; PAGE C |
| Panel cite | **P-T2** · PAGE **C** |
| False friend | MAP forbid — valtype ⇒ word/ · pointer/ kinds (exit FORBIDDEN); FM-T2 |
| rust-nostd cite | ≠ word/ · pointer/ kinds (crate-map doors describe Lace sections, not WASM valtypes) |
| Open gaps | Φ / emission `[GAP]`; no Core type install from valtype |

**Algorithm**

1. **Preconditions.** Spec §2.2–2.3 in hand.  
2. **State.** Empty type catalog.  
3. **Steps.**  
   1. Record numtypes i32/i64/f32/f64 (transparent).  
   2. Record vectype v128 (transparent).  
   3. Record reftypes (opaque; nullability / heaptype as Spec).  
   4. Form `valtype` union; record runtime `val` and defaults.  
   5. Refuse mapping any valtype onto Lace WORD/POINTER kinds or Graphic D row kinds.  
4. **Choice points.** Signedness of integers is op-context, not a Lace kind.  
5. **Halt.** Target type/value catalog recorded.  
6. **Output certificate.** ISA types/values (holder read only).

```text
valtype ::= numtype | vectype | reftype
# FORBID-as-Core-write — not WORD/POINTER kinds
```

---

### M-T3 — Validation (stack-type / matching)

| Field | Content |
|---|---|
| Kind | validation |
| Spec locus | Ch.3 Conventions · PDF **33** (=p.29); matching / typing rules Ch.3; App. §7.6 Validation Algorithm · PDF **274** (=p.270) |
| Sighting method | `pdftotext -f 33 -l 33` / `-f 274 -l 276` (this pass); Pass 1 PAGE D / P-T3 |
| Eye-quote | “Validation checks that a WebAssembly module is well-formed. Only valid modules can be instantiated.” / “The rules are formulated in a declarative manner… The skeleton of a sound and complete algorithm… is provided in the appendix.” |
| Inputs | Abstract module / instruction sequences; typing context C |
| Outputs | Validity judgment (or reject); may instantiate only if valid |
| Invariants | Declarative typing = constraints, not Lace scheduler; validity ≠ admit POINTER; SILENT for Lace append |
| Algorithm | See below |
| Complexity / termination | Spec appendix: single-pass opcode walk over binary (ctrl stack + val stack); halt accept/reject |
| Worked miniature | Composition/decomposition theorems §7.5.3 PDF **274**; App. 7.6 algorithm sketch |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-emission-rule**; **SILENT-for-Lace-append** |
| Hands cite | pointer-emission `[GAP]`; AGENTS Implementation Law; PAGE D |
| Panel cite | **P-T3** · PAGE **D** |
| False friend | **FM-W5** — validation ⇒ admit POINTER / Lace write gate |
| rust-nostd cite | validate ≠ admit POINTER; ≠ door birth |
| Open gaps | Φ / emission `[GAP]`; appendix algorithm detail continues in Spec |

**Algorithm**

1. **Preconditions.** Abstract module (M-T1) with typed components.  
2. **State.** Typing context C; declarative rules (or appendix opcode stacks).  
3. **Steps.**  
   1. Apply Spec typing rules per syntax form (prose ≡ formal).  
   2. Check stack-types / matching / subtyping (incl. bot) as Spec.  
   3. Accept only if all constraints hold — “Only valid modules can be instantiated.”  
   4. Do **not** treat accept as Lace POINTER admission or append permission.  
4. **Choice points.** Prose vs formal rules are equivalent (§3.1); algorithm sketch is appendix — not Lace law.  
5. **Halt.** Valid or reject.  
6. **Output certificate.** Target well-formedness only.

```text
C ⊢ instr* : [t1*] →x* [t2*]   →  valid? → may instantiate
# FORBID-as-emission-rule · SILENT-for-Lace-append · FM-W5
```

---

### M-T4 — Runtime structures (store, instances, stack, frames, mem, table)

| Field | Content |
|---|---|
| Kind | runtime |
| Spec locus | §4.2 Runtime Structure · PDF **87–94** (=p.83–90); store §4.2.3 · PDF **88**; tables §4.2.8 / mems §4.2.9 · PDF **90** (=p.86); stack/frames §4.2.17 · PDF **93–94** |
| Sighting method | `pdftotext -f 87 -l 94` / `-f 90 -l 91` (this pass); Pass 1 PAGE E / P-T4 |
| Eye-quote | “A memory instance is the runtime representation of a **linear memory**… `meminst ::= {type memtype, bytes byte*}`” / “A table instance… `tableinst ::= {type tabletype, refs ref*}`” / “The store represents all global state… tags, globals, mems, tables, funcs, …” |
| Inputs | Allocated instances during abstract-machine lifetime |
| Outputs | Store record; moduleinst → addresses; meminst / tableinst / frames / operand stack |
| Invariants | Store/mem/table/stack are **WASM** runtime — **not** Lace 1D strand, star index, or Graphic D; config = store ; frame ; instr* |
| Algorithm | See below |
| Complexity / termination | Finite alloc pool at each step; structure definitions halt when recorded |
| Worked miniature | `meminst` bytes sequence; `tableinst` refs sequence; frame = {locals, module}; stack = values \| labels \| frames \| handlers |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-Lace-store** (linear mem ≠ strand; table ≠ star; stack/frames ≠ append) |
| Hands cite | Pieces 1/6/7; Graphic D (one store); PAGE E |
| Panel cite | **P-T4** · PAGE **E** |
| False friend | **FM-W1…W3** · **FM-W9** |
| rust-nostd cite | store/mem/table/stack ≠ strand/ / Graphic D; target surface ≠ door |
| Open gaps | Φ / emission `[GAP]` |

**Algorithm**

1. **Preconditions.** Instantiation path supplying externaddrs (Spec §4.7 — cite only; not Core birth).  
2. **State.** Empty / growing store.  
3. **Steps.**  
   1. Define store as record of instance pools (tags, globals, mems, tables, funcs, datas, elems, structs, arrays, exns).  
   2. Map moduleinst indices → store addresses.  
   3. Represent meminst as typed byte sequence (“linear memory”); tableinst as typed refs.  
   4. Represent stack with values, labels, call frames, handlers.  
   5. Refuse any identification with Lace strand / star / append / Graphic D.  
4. **Choice points.** Embedder mutations of mem/table/global — host side (M-T8); still not Lace store.  
5. **Halt.** Runtime structures recorded as target ISA.  
6. **Output certificate.** WASM abstract machine state (Shadow read).

```text
store { mems[], tables[], funcs[], … }
meminst = {type, bytes[]}   # NOT Lace strand
tableinst = {type, refs[]}  # NOT Lace star
# FORBID-as-Lace-store · FM-W1…W3 · FM-W9
```

**Steward refusal:** shoe in hands — refuse “WASM linear memory is the Lace strand” / “table is the star” / “stack is append” using this card + P3-M.

---

### M-T5 — Instruction reduction (execution / control)

| Field | Content |
|---|---|
| Kind | reduction |
| Spec locus | §4.6 Instructions · PDF **~126+** (=p.~122+); Control §4.6.2 · PDF **127–128** (=p.123–124); `br` reductions · PDF **128–129** |
| Sighting method | `pdftotext -f 126 -l 129` (this pass); Pass 1 PAGE F / P-T5 |
| Eye-quote | “`unreachable ˓→ trap`” / “`nop ˓→ ε`” / block/loop push labels; `br ℓ` rewrites to targeted continuation; reductions on config |
| Inputs | Configuration (store/state ; frame ; instr*) |
| Outputs | Reduced config, values, trap, or exception path |
| Invariants | Leftmost non-const reduction; control is **target ISA** only — `br`/`return`/call ↛ POINTER when/arity/adjacency |
| Algorithm | See below |
| Complexity / termination | Stepwise; may trap or diverge (M-T9); soundness ⇒ halt in values/trap/exception |
| Worked miniature | f64.neg/add/mul example §4.1 PDF **87**; `block`/`loop`/`if` / `br` control steps §4.6.2 |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-emission-rule** |
| Hands cite | pointer-emission `[GAP]`; PAGE F |
| Panel cite | **P-T5** · PAGE **F** |
| False friend | **FM-W4** |
| rust-nostd cite | control ≠ pointer-emission when-rule |
| Open gaps | Φ / emission `[GAP]` |

**Algorithm**

1. **Preconditions.** Valid module instantiated into a config (target runtime M-T4).  
2. **State.** Config `z; instr*`.  
3. **Steps.**  
   1. Reduce leftmost applicable non-constant instruction per §4.6.  
   2. Parametric: nop / unreachable→trap / drop / select as Spec.  
   3. Control: enter block/loop/if with labels; `br ℓ` / `br_if` / `br_table` / `return` per Spec reductions.  
   4. Refuse treating any control step as Lace POINTER emission or Φ fill.  
4. **Choice points.** Which reduction applies — Spec rules only; no Lace invent.  
5. **Halt.** Values, trap, exception, or diverge (M-T9).  
6. **Output certificate.** Target execution trace semantics.

```text
z; instr*  ˓→  z'; instr*'  |  trap  |  values
# br/return/call FORBID-as-emission-rule · FM-W4 · Phi=[GAP]
```

---

### M-T6 — Binary decode (bytes → module)

| Field | Content |
|---|---|
| Kind | binary-decode |
| Spec locus | Ch.5 Binary Format · PDF **183** (=p.179); §5.5.2 Sections · PDF **205** (=p.201) |
| Sighting method | `pdftotext -f 183 -l 185` / `-f 205 -l 205` (this pass); Pass 1 PAGE G / P-T6; **Pass 2 D7** |
| Eye-quote | “The binary format… is a dense linear encoding of their abstract syntax.” / “The attribute grammar implicitly defines a decoding function.” / section envelope `N:byte len:u32 contents` |
| Inputs | Byte sequence (`.wasm` / `application/wasm`) |
| Outputs | Abstract module (→ M-T1) or malformed reject |
| Invariants | Decode synthesizes abstract syntax only; success ≠ Core birth / `src/` / emission accept; SILENT for Lace append |
| Algorithm | See below (cross-link **Pass 2 D7** — do not rewrite D7) |
| Complexity / termination | Linear in byte length; halt decode or malformed |
| Worked miniature | **Pass 2 D7** on clipboard — binary section decode sketch (Shadow); magic `\0asm` + version + section* |
| Lace stamp | **KEEP-read-as-target** decode; **FORBID-as-Core**; **SILENT-for-Lace-append** |
| Hands cite | Implementation Law (no `src/` until emission); PAGE G |
| Panel cite | **P-T6** · PAGE **G** |
| False friend | decode ↛ Core birth / `src/` (related **FM-W9**); FM-T6 |
| rust-nostd cite | decode ≠ Core birth / `src/`; ≠ door open |
| Open gaps | Full per-id content grammars — Spec continues / D7 `[OPEN]`; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Claimed module byte sequence.  
2. **State.** Binary attribute-grammar cursor.  
3. **Steps.** (mirror / cite **D7**; do not replace it)  
   1. Recognize preamble magic `\0asm` + version (Ch.5).  
   2. For each section: read id byte `N`, u32 `len`, contents of that length (§5.5.2).  
   3. Map known ids to abstract-module components; omitted ≡ empty.  
   4. Yield abstract module outline for M-T1 / M-T3 — **target** ingestion only.  
   5. Refuse opening Core / `src/` / emission from decode success.  
4. **Choice points.** Multiple legal encodings — decoder must accept all (Spec note); encoder pick any.  
5. **Halt.** Abstract module or malformed.  
6. **Output certificate.** Target binary decode (Shadow).

```text
bytes → magic+version → section*(id|size|contents) → abstract module
# FORBID-as-Core · SILENT · see clipboard D7 · Phi=[GAP]
```

---

### M-T7 — Text twin (`.wat` non-authority)

| Field | Content |
|---|---|
| Kind | text-twin |
| Spec locus | Ch.6 Text Format · PDF **211** (=p.207) |
| Sighting method | `pdftotext -f 211 -l 211` (this pass); Pass 1 PAGE G / P-T7 |
| Eye-quote | “The textual format for WebAssembly modules is a rendering of their abstract syntax into S-expressions.” / “The recommended extension… is `.wat`.” / abbreviations = syntactic sugar |
| Inputs | UTF-8 text string / `.wat` file |
| Outputs | Same abstract module as binary twin (if well-formed) |
| Invariants | Text = **non-authority twin** vs binary encode authority on this shelf; embedder need not support text parse (§7.1 note) |
| Algorithm | See below |
| Complexity / termination | Parse attribute grammar; halt AST or reject |
| Worked miniature | S-expr `module` rendering; sugar abbreviations over core syntax |
| Lace stamp | **KEEP-read-as-target** twin; text = **non-authority** vs binary |
| Hands cite | PAGE G; D2 MAP wat twin |
| Panel cite | **P-T7** · PAGE **G** |
| False friend | **FM-W6** — `.wat` ⇒ sole/superior authority |
| rust-nostd cite | twin only; no sole authority; no Core syntax install |
| Open gaps | Φ = `[GAP]`; sugar surface ≠ Lace law |

**Algorithm**

1. **Preconditions.** Text claimed to encode a module.  
2. **State.** Text attribute grammar (+ identifier context).  
3. **Steps.**  
   1. Parse S-expression rendering toward abstract syntax (Ch.6).  
   2. Expand abbreviations as Spec sugar.  
   3. Produce the same abstract module class as binary decode (M-T6).  
   4. Treat binary as encode authority twin on this board; wat = non-authority convenience.  
4. **Choice points.** Embedder may omit text parse (§7.1) — does not elevate wat.  
5. **Halt.** Abstract module or reject.  
6. **Output certificate.** Non-authority twin parse.

```text
.wat (S-expr+sugar) ─┐
                     ├→ abstract module
.wasm (bytes) ───────┘   # binary = encode authority on this shelf
# FM-W6 · text non-authority
```

---

### M-T8 — Host embed (import-export / embedding boundary)

| Field | Content |
|---|---|
| Kind | host-embed |
| Spec locus | §7.1 Embedding · PDF **245** (=p.241); imports/exports §2.5 |
| Sighting method | `pdftotext -f 245 -l 245` (this pass); Pass 1 PAGE H / P-T8 |
| Eye-quote | “A WebAssembly implementation will typically be embedded into a host environment. An embedder implements the connection between such a host environment and the WebAssembly semantics…” / “an embedder does not need to provide… access to all functionality… may not support parsing of the text format.” |
| Inputs | Host environment; embedder interface ops; import externaddrs; export names |
| Outputs | Connected instance (imports resolved; exports exposed); interface errors/traps/exceptions |
| Invariants | Embedder interface is Spec entry points — Lace↔WASM bridge sketches are **PROPOSAL-only**; import host fn **FORBID** fill emission `[GAP]` |
| Algorithm | See below |
| Complexity / termination | Finite interface ops; halt when connection defined (not Lace acceptance) |
| Worked miniature | Types/bools/exceptions interface classes §7.1.1–7.1.3; invoke exported function may trap/throw |
| Lace stamp | **KEEP-read-as-target**; **PROPOSAL-only**; **FORBID fill-GAP** |
| Hands cite | pointer-emission `[GAP]`; Implementation Law; PAGE H |
| Panel cite | **P-T8** · PAGE **H** |
| False friend | **FM-W7** |
| rust-nostd cite | host embed PROPOSAL-only; ≠ emission accept; ≠ door birth |
| Open gaps | **`[GAP]`** remains — FORBID fill via host import / compile-to-wasm32 story |

**Algorithm**

1. **Preconditions.** Valid module; host willing to supply imports.  
2. **State.** Embedder interface (store ops, invoke, …).  
3. **Steps.**  
   1. Resolve imports to `externaddr*` per Spec.  
   2. Instantiate / expose exports through defined entry points (§7.1).  
   3. Handle interface outcomes (values, trap, exception) as Spec.  
   4. Lace-host bridge notes stay **PROPOSAL-only**; do **not** treat import as Φ fill.  
4. **Choice points.** Which subset of interface to expose — embedder may omit (e.g. text parse).  
5. **Halt.** Connected host↔WASM semantics (target).  
6. **Output certificate.** Embedding boundary read; GAP unfilled.

```text
HOST --embedder interface--> WASM instance (imports/exports)
x Lace bridge = PROPOSAL-only
x import host fn FORBID fill [GAP] · FM-W7
```

---

### M-T9 — Trap / divergence vs Lace append

| Field | Content |
|---|---|
| Kind | trap |
| Spec locus | §4.2.2 Results · PDF **88** (=p.84); control/trap · PDF **126–128**; `unreachable ˓→ trap` |
| Sighting method | `pdftotext -f 88 -l 88` / `-f 126 -l 128` (this pass); Pass 1 PAGE X / P-T9 |
| Eye-quote | “A result is the outcome of a computation. It is either a sequence of values, a thrown exception, or a trap.” / `result ::= val* \| (ref.exn …) throw_ref \| trap` / `unreachable ˓→ trap` |
| Inputs | Reduction config under M-T5 |
| Outputs | `val*`, exception path, **trap** (abort), or divergence (non-termination) |
| Invariants | Trap aborts further steps; **not** a Lace cut / append rule / POINTER when; SILENT for Lace append; Rule Zero stays off this board |
| Algorithm | See below |
| Complexity / termination | Trap = finite abort; divergence may not terminate |
| Worked miniature | `unreachable ˓→ trap`; result grammar §4.2.2 |
| Lace stamp | **KEEP-read-as-target** ISA; **FORBID-as-emission-rule**; **SILENT-for-Lace-append** (trap ≠ Lace cut) |
| Hands cite | Rule Zero / append-only (systems-manifest); PAGE X |
| Panel cite | **P-T9** · PAGE **X** |
| False friend | **FM-W8** |
| rust-nostd cite | trap ≠ Lace cut / append |
| Open gaps | Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Active reduction (M-T5).  
2. **State.** Config / admin instructions.  
3. **Steps.**  
   1. If reduction yields values → return to embedder.  
   2. If exception path → Spec throw_ref / handler rules.  
   3. If trap (e.g. unreachable, or other trap rules) → abort; no further reduction steps.  
   4. Divergence = may not terminate — still not Lace append scheduling.  
   5. Refuse treating trap/diverge as Lace cut, authorized rewrite, or emission when-rule.  
4. **Choice points.** None for Lace — Spec outcomes only.  
5. **Halt.** Result or diverge.  
6. **Output certificate.** Target abort/non-termination semantics (Shadow).

```text
reduction → values* | exception | trap | diverge
# FORBID-as-emission-rule · SILENT-for-Lace-append · FM-W8 · Phi=[GAP]
```

**Steward refusal:** shoe in hands — refuse “trap is a Lace cut / append rule” using this card + P3-M.

---

## Waves B–D (deferred — one-line seeds only)

| Wave | Seed | Status |
|---|---|---|
| B | Numerics / SIMD detail beyond reduction spine | deferred |
| C | Multi-memory / GC / threads extensions as Spec profiles | deferred |
| D | Soundness proofs appendix depth; embedding API beyond §7.1; clock/wasm projection bake ≠ Spec authority | deferred |

Pass 3 success = Wave A cards + P3-M mesh + receipt. No ascii Wave B this pass.

---

## Cross-walk (Pass 3)

| Card | Panel | PAGE | Primary tooth | FM |
|---|---|---|---|---|
| M-T1 | P-T1 | B | FORBID-as-Lace-store / FORBID-as-Core | FM-W9 |
| M-T2 | P-T2 | C | FORBID-as-Core-write | MAP forbid |
| M-T3 | P-T3 | D | FORBID-as-emission-rule · SILENT | FM-W5 |
| M-T4 | P-T4 | E | **FORBID-as-Lace-store** | FM-W1…W3 · W9 |
| M-T5 | P-T5 | F | **FORBID-as-emission-rule** | FM-W4 |
| M-T6 | P-T6 | G | FORBID-as-Core · D7 cross-link | (D7) |
| M-T7 | P-T7 | G | text non-authority | FM-W6 |
| M-T8 | P-T8 | H | **PROPOSAL-only** · FORBID fill-GAP | FM-W7 |
| M-T9 | P-T9 | X | SILENT · FORBID-as-emission-rule | FM-W8 |

Steward refuse tests (stamp-supported): linear mem as strand · table as star · stack as append · `br`/`return` emits POINTER · validate admits POINTER · wat sole authority · import fills `[GAP]` · trap as Lace cut · instantiate as Core birth — all **FORBID** / PROPOSAL-only / SILENT as above. Emission remains `[GAP]`.

---

## Pass 3 receipt (mechanisms file)

| Field | Value |
|---|---|
| Status | **EXECUTED** · Wave A M-T1…M-T9 |
| When | 2026-09-18 ~20:08 PT |
| PDF | never staged · SHA matches Pass 1–2 |
| Emission | still `[GAP]` |
| rust-nostd / law / graphics / five-stakes / `src/` / Cargo | untouched |
| Ascii P-T* | read-only default (no stamp conflict) |
| D7 | cross-linked from M-T6; not rewritten |

---

## Pass 4 pointer (mechanisms)

P4-X / P4-R on [`wasm-spec-3-clipboard.md`](wasm-spec-3-clipboard.md). Matrix-cited pin tighten: M-T4 tables/mems PDF **90** (=p.86). P-T6 stamp aligned to this card (FORBID-as-Core · SILENT). No algorithm rewrite. Emission `[GAP]`.
