# WebAssembly Spec 3.0 — ASCII SOURCE MACHINERY (Shadow · compile target)

**Status:** Pass 1–4 EXECUTED (Pass 4 = representation fidelity). Emission `[GAP]`. See clipboard **P4-X / P4-R**.  
**Source:** Andreas Rossberg / WebAssembly Community Group, *WebAssembly Specification* Release **3.0 (2026-09-11)**.  
**PDF:** `refs/local/webassembly-spec-3.0.pdf` → attachment `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` (323 pp., text layer; **never git-add**). SHA-256 `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`. Printed ≈ PDF − 4.  
**Admission:** [`wasm-spec-3-clipboard.md`](wasm-spec-3-clipboard.md).  
**Mechanisms:** Pass 3 EXECUTED — [`wasm-spec-3-mechanisms.md`](wasm-spec-3-mechanisms.md) (M-T1…M-T9).  
**Not this file:** Lace Core ASCII lives in [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**.  
**Adjacent (not Spec authority):** [`rust-nostd-crate-map.md`](../plans/rust-nostd-crate-map.md) · [`rust-nostd-branch-contracts.md`](../plans/rust-nostd-branch-contracts.md) · [`clock/wasm/README.md`](../clock/wasm/README.md) · [`pointer-emission.md`](../pointer-emission.md) = DRAFT/`[GAP]`.

```
+======================================================================+
|  COMPILATION TARGET — Lace Rust #![no_std]  -->  wasm32-unknown-unknown |
|  Shadow docs only this pass.  NOT Lace Core.  NOT Graphic D.           |
|  WASM ops = TARGET semantics.  Do NOT invent emission rules / Phi.     |
|  Do NOT import WASM store/memory/table/stack as Lace's 1D strand.      |
|  Zero crates.io / foreign deps.  No src/ until pointer-emission accepted.|
+======================================================================+
```

**Opening contract (read first)**

1. Models **WASM Spec 3.0 procedures**, not Lace Core.  
2. Companion to admission clipboard (+ optional thin mechanism cards later).  
3. Lace Core ASCII = `docs/systems-manifest-ascii.md` — **do not conflate**.  
4. Emission Φ = `[GAP]`. No panel closes it.  
5. Inside fences: **spec-side glyphs only** — **no Lace POINTER / WORD / Graphic D as WASM objects**.  
6. Stamps live **under** fences (not inside).  
7. Hands win; steward refuses store/emission lookalikes on PAGE X.

Law: WASM = **machine we may compile toward**, not the lace · linear memory ≠ Graphic D · traps ≠ append rules · host imports do not accept Φ · Φ stays `[GAP]`.

---

## Stamp legend

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

## SOURCE MACHINERY overview (spec side only)

```
  [bytes .wasm | text .wat] ---- INPUT (observe shelf; off-panel)
           |
           v
  [decode / parse] -------------- P-T6 (binary) · P-T7 (wat twin)
           |
           v
  [abstract module] ------------- P-T1 (sections) · P-T2 (types)
           |
           v
  [validate] -------------------- P-T3 (stack-type / matching)
           |
           v
  [instantiate + store] --------- P-T4 (store / instances / stack / frames)
           |                      P-T8 (host embed / import-export)
           v
  [reduce instructions] --------- P-T5 (execution / control)
           |
           +--> trap / diverge --- P-T9 (vs Lace append discipline)
           |
           x --> Lace Core / Graphic D / Phi
                 FORBIDDEN off this board

  Lace Core OFF this board --> docs/systems-manifest-ascii.md
  Phi = [GAP]
  compile target banner: Lace #![no_std] --> wasm32-unknown-unknown (Shadow)
```

stamp under fence: KEEP-read-as-target overview | FORBID-as-Core-write | FORBID-as-Lace-store | SILENT-for-Lace-append | Phi=[GAP]

---

## Wave A panels

### P-T1 — Module / section anatomy

| Field | Content |
|---|---|
| Spec cite | Ch.2.5 Modules · Ch.5.5 binary sections |
| PDF pin | §2.5 PDF **27** (printed **23**); §5.5.2 PDF **205** (printed **201**); magic §5.5.17 PDF **209** (printed **205**) |
| Sighting | `pdftotext -f 27 -l 27` / `-f 205 -l 209` this pass; clipboard PAGE B |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-Lace-store**; **FORBID-as-Core** |
| False friend | **FM-W9** — module / instantiate ⇒ Lace Core door / `src/` (Pass-1 alias FM-T1) |
| Caption | Module collects types, imports, tags, globals, memories, tables, funcs, data, elems, optional start, exports. Binary: section id + u32 size + payload; preamble `∖0asm` + version. |

```
  module
    |-- types[]
    |-- imports[] ----+
    |-- tags[]        |
    |-- globals[]     |  index spaces include imports first
    |-- mems[]        |
    |-- tables[]      |
    |-- funcs[] ------+
    |-- data[] / elems[]
    |-- start?
    +-- exports[]

  binary:  \0asm | version | section*
  section: id:u8 | size:u32 | contents
  ids: 0 custom .. 13 tag (order constrained)
```

stamp under fence: KEEP-read-as-target | FORBID-as-Lace-store | FORBID-as-Core

---

### P-T2 — Types & values

| Field | Content |
|---|---|
| Spec cite | Ch.2.2–2.3 · Ch.4.4–4.5 (runtime values) |
| PDF pin | §2.3 PDF **13–16** (printed **9–12**); §4.2.1 values PDF **87** (printed **83**) |
| Sighting | `pdftotext -f 13 -l 16` / `-f 87 -l 88`; clipboard PAGE C |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-Core-write** |
| False friend | MAP forbid — valtype ⇒ word/ · pointer/ kinds (no FM-W*; Pass-1 alias FM-T2) |
| Caption | numtype i32/i64/f32/f64; vectype v128; reftype opaque; valtype = num\|vec\|ref. Number/vector transparent (memory-storable); references table-only. |

```
  valtype
    |-- numtype: i32 | i64 | f32 | f64     (transparent)
    |-- vectype: v128                      (transparent)
    +-- reftype: ref null? heaptype        (opaque)

  runtime val ::= num | vec | ref
  default: 0 / +0 / null (nullable) / none (non-null ref)
  # target ISA types — not Lace Core types
```

stamp under fence: KEEP-read-as-target | FORBID-as-Core-write

---

### P-T3 — Validation (stack-type / matching)

| Field | Content |
|---|---|
| Spec cite | Ch.3 · App. 7.6 validation algorithm |
| PDF pin | Ch.3 PDF **33** (printed **29**); matching PDF **~47** (printed **~43**); §7.6 PDF **274** (printed **270**) |
| Sighting | `pdftotext -f 33 -l 36` / `-f 274 -l 276`; clipboard PAGE D |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-emission-rule**; **SILENT-for-Lace-append** |
| False friend | **FM-W5** — validation / stack-type matching ⇒ admit POINTER (Pass-1 alias FM-T3) |
| Caption | Declarative typing; only valid modules instantiate. Matching lifts through result/instruction types. Appendix: single-pass opcode algorithm over binary. |

```
  module AST
       |
       v
  C |- instr* : [t1*] ->x* [t2*]     (declarative)
       |
       +--> matching / subtyping (bot, result types, instr types)
       |
       v
  valid? ----yes----> may instantiate
            \
             no --> reject

  App 7.6: one-pass opcode walk (ctrl stack + val stack)  [algorithm sketch]
  # does not schedule Lace append
```

stamp under fence: KEEP-read-as-target | FORBID-as-emission-rule | SILENT-for-Lace-append

---

### P-T4 — Runtime structures (store, instances, stack, frames)

| Field | Content |
|---|---|
| Spec cite | Ch.4.2 Runtime Structure |
| PDF pin | §4.2 PDF **87–94** (printed **83–90**); store §4.2.3 PDF **88**; stack §4.2.17 PDF **93–94** |
| Sighting | `pdftotext -f 87 -l 94`; clipboard PAGE E |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-Lace-store** |
| False friend | **FM-W1…W3** — linear mem / table / stack ⇒ Lace strand / star / append (Pass-1 alias FM-T4) |
| Caption | Store = global alloc pool (funcs, tables, mems, globals, tags, …). Moduleinst maps indices → addresses. Stack holds values + labels + call frames. meminst = byte sequence (“linear memory”). |

```
  store {
    tags[], globals[], mems[], tables[],
    funcs[], datas[], elems[], structs[], arrays[], exns[]
  }

  moduleinst --> addrs into store
  meminst    = {type, bytes[]}      # "linear memory"
  tableinst  = {type, refs[]}
  frame      = {locals[], module}
  stack      = values | labels | frames | handlers

  config = store ; frame ; instr*

  # FORBIDDEN: treat meminst/table/stack/store as Lace strand
```

stamp under fence: KEEP-read-as-target | FORBID-as-Lace-store

---

### P-T5 — Instruction execution / reduction

| Field | Content |
|---|---|
| Spec cite | Ch.4.6 Instructions |
| PDF pin | §4.6 from PDF **~126** (printed **~122**); Control §4.6.2 PDF **127–128** (printed **123–124**) |
| Sighting | `pdftotext -f 127 -l 128`; clipboard PAGE F |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-emission-rule** |
| False friend | **FM-W4** — `br` / `return` / call ⇒ POINTER when / Φ (Pass-1 alias FM-T5) |
| Caption | Stepwise reduction with implicit store + stack. `unreachable → trap`. `block`/`loop`/`if` push labels. `br ℓ` targets labels; `return` exits frames. Target control only. |

```
  config:  z; instr*
     |
     |  reduce (leftmost non-const)
     v
  z'; instr*'   |   trap   |   values (done)

  control:
    block/loop/if  -->  label_n {cont} ...
    br l           -->  rewrite to targeted continuation
    return         -->  exit frame_n
    unreachable    -->  trap

  # br/return do NOT emit Lace Phi / when-arity rules
```

stamp under fence: KEEP-read-as-target | FORBID-as-emission-rule

---

### P-T6 — Binary decode pipeline (bytes → module)

| Field | Content |
|---|---|
| Spec cite | Ch.5 Binary Format |
| PDF pin | Ch.5 PDF **183** (printed **179**); §5.5 PDF **203–209** (printed **199–205**) |
| Sighting | `pdftotext -f 183 -l 185` / `-f 205 -l 209`; clipboard PAGE G |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-Core**; **SILENT-for-Lace-append** |
| False friend | **FM-W9** (related) — decode success ⇒ Core birth / `src/` (Pass-1 alias FM-T6) |
| Caption | Attribute grammar over bytes synthesizes abstract syntax. `.wasm` + `application/wasm`. Magic `∖0asm`, version, then sections. |

```
  bytes
    |
    v
  magic "\0asm" + version
    |
    v
  section*  (id | size | contents)
    |
    v
  abstract module   ---->  P-T1 / P-T3

  # target ingestion only — not Lace append, not src/
```

stamp under fence: KEEP-read-as-target | FORBID-as-Core | SILENT-for-Lace-append

---

### P-T7 — Text format (wat) as non-authority twin

| Field | Content |
|---|---|
| Spec cite | Ch.6 Text Format |
| PDF pin | Ch.6 PDF **211** (printed **207**) |
| Sighting | `pdftotext -f 211 -l 215`; clipboard PAGE G |
| Lace stamp | **KEEP-read-as-target**; text = **non-authority twin** vs binary |
| False friend | **FM-W6** — `.wat` ⇒ sole/superior authority (Pass-1 alias FM-T7) |
| Caption | S-expression rendering of abstract syntax; abbreviations as sugar. `.wat` UTF-8. Embedder need not support text parse (§7.1 note). |

```
  .wat (S-expr + sugar)
        \
         +--> abstract module  <--+
                                  |
  .wasm (bytes) -----------------+
        |
        +-- AUTHORITY for encode on this board
  .wat  -- twin / sugar only (non-authority)
```

stamp under fence: KEEP-read-as-target | text=non-authority-twin

---

### P-T8 — Host embed / import-export boundary

| Field | Content |
|---|---|
| Spec cite | Ch.7.1 Embedding · Ch.2.5 imports/exports |
| PDF pin | §7.1 PDF **245** (printed **241**); imports in §2.5 PDF **27+** |
| Sighting | `pdftotext -f 245 -l 248`; clipboard PAGE H |
| Lace stamp | **KEEP-read-as-target**; **PROPOSAL-only** for Lace-host sketches |
| False friend | **FM-W7** — import host fn fills emission `[GAP]` (Pass-1 alias FM-T8) |
| Caption | Embedder connects host environment to WASM semantics via defined entry points. Imports resolve to externaddrs; exports expose them. Errors/traps/exceptions are interface outcomes. |

```
  HOST ENVIRONMENT
        |
        |  embedder interface (store ops, invoke, ...)
        v
  +------------------+
  | WASM instance    |  <-- imports (externaddr)
  |  moduleinst      |  --> exports
  +------------------+
        |
        x  Lace host-bridge sketches = PROPOSAL-only
        x  import host fn does NOT fill Phi [GAP]
```

stamp under fence: KEEP-read-as-target | PROPOSAL-only bridge | FORBID fill-[GAP]

---

### P-T9 — Trap / divergence vs Lace append discipline

| Field | Content |
|---|---|
| Spec cite | Ch.4 traps · results · soundness notes · vs Rule Zero / append-only |
| PDF pin | Results §4.2.2 PDF **88** (printed **84**); trap admin instr PDF **94** (printed **90**); `unreachable → trap` PDF **127** (printed **123**); soundness App. §7.4 |
| Sighting | `pdftotext -f 88 -l 90` / `-f 127 -l 128`; clipboard PAGE X |
| Lace stamp | **KEEP-read-as-target**; **FORBID-as-emission-rule**; **SILENT-for-Lace-append** |
| False friend | **FM-W8** — trap / diverge ⇒ Lace cut / append (Pass-1 alias FM-T9) |
| Caption | `result ::= val* | exception | trap`. Traps abort computation; bubble via admin `trap`. Divergence = non-termination. Lace Rule Zero is append-only growth — silent here; traps are not schedulers. |

```
  reduction
    |-- values*        --> return to embedder
    |-- throw_ref ...  --> exception path
    |-- trap           --> abort (no further steps)
    +-- diverge        --> may not terminate

  Lace append discipline (Rule Zero) ---- OFF this board
  traps / br / return ---- FORBID-as-emission-rule
  Phi = [GAP]
```

stamp under fence: KEEP-read-as-target | FORBID-as-emission-rule | SILENT-for-Lace-append | Phi=[GAP]

---

## Cross-walk (Pass 4 supersedes Pass 1)

Pass-1 table lacked an **M-T\*** column. Canonical coherence = clipboard **P4-X** (+ P3-M). Thin mirror:

| Panel | Mechanism | Clipboard PAGE | Primary tooth | FM-W* |
|---|---|---|---|---|
| P-T1 | **M-T1** | B | FORBID-as-Lace-store / FORBID-as-Core | FM-W9 |
| P-T2 | **M-T2** | C | FORBID-as-Core-write | MAP forbid |
| P-T3 | **M-T3** | D | FORBID-as-emission-rule · SILENT | FM-W5 |
| P-T4 | **M-T4** | E | **FORBID-as-Lace-store** (linear mem ≠ strand) | FM-W1…W3 · W9 |
| P-T5 | **M-T5** | F | **FORBID-as-emission-rule** (`br`/`return` ↛ Φ) | FM-W4 |
| P-T6 | **M-T6** | G | KEEP decode · **FORBID-as-Core** · SILENT | FM-W9 (related) · D7 |
| P-T7 | **M-T7** | G | text non-authority twin | FM-W6 |
| P-T8 | **M-T8** | H | **PROPOSAL-only** bridge; GAP remains | FM-W7 |
| P-T9 | **M-T9** | X | SILENT-for-Lace-append; traps ≠ append | FM-W8 |

**FM alias:** Pass-1 panel labels FM-T1…T9 map to FM-W* / MAP as above (clipboard D3 = FM authority).

Steward refuse tests (stamp-supported): linear memory as Lace strand · `br`/`return` emits POINTER · import host fn fills `[GAP]` — all **FORBID** / PROPOSAL-only as above.

---

## Pass 1 receipt (ascii)

| Field | Value |
|---|---|
| Status | EXECUTED |
| When | 2026-09-18 ~19:55 PT |
| Panels | overview + **P-T1…P-T9** (9) |
| Fences | spec-side only; no Lace POINTER word inside fences |
| Mechanisms | **deferred** |
| Emission | still `[GAP]` |
| src/ | untouched |

---

## Pass 4 pointer (ascii)

Representation fidelity steward EXECUTED on clipboard (**P4-A / P4-X / P4-F / P4-O / P4-R**). Canonical overview = this file’s singular SOURCE MACHINERY fence (count=1). Emission still `[GAP]`.
