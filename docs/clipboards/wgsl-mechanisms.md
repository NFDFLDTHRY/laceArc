# WGSL CRD 2026-09-15 — mechanism cards (SHADER-LANG system procedures)

**Current discard locators, 2026-09-20 — repository update pass 4:** M-S5 cites PDF **158** for the §9.4.11 rule and PDF **159** for its worked example. The [dated source qualification](wgsl-clipboard.md#repository-update-pass-4--discard-rule-and-example) records the two-page visual sighting. The original158–160 method receipt and algorithm semantics are preserved; no campaign is restamped.

**Status:** Pass 3 EXECUTED (Wave A **M-S1…M-S9**; P3-M mesh on clipboard). Pass 4 ASCII: see [`wgsl-ascii-machinery.md`](wgsl-ascii-machinery.md) (**P-S1…P-S9**). Algorithms unchanged. Emission `[GAP]`.  
**Source:** *WebGPU Shading Language* (WGSL) — **W3C Candidate Recommendation Draft, 15 September 2026**. Editors: Alan Baker, Mehmet Oguz Derin, David Neto (et al.).  
**PDF:** `refs/local/wgsl-w3c-crd-20260915.pdf` → attachment `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` (**381** pp., text layer; **never git-add**). SHA-256 `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d`. PDF one-based primary.  
**Sighting this pass:** `pdftotext -f N -l N -layout` on §2 Module/Lifecycle/Errors · §6 Types · §7 vars · §8 Expressions · §9 Statements/`discard` · §11–13 Functions/Attributes/Entry · §14 Address spaces · §15 Execution/Uniformity · §17 Built-ins/sync; Pass 1–2 pins reused.  
**Companion:** [`wgsl-clipboard.md`](wgsl-clipboard.md) · plan [`wgsl-pass-3-plan.md`](wgsl-pass-3-plan.md) · Pass 2 **D7** (shader module lifecycle miniature; cross-link from **M-S1**; do not rewrite) · [`pointer-emission.md`](../pointer-emission.md) = DRAFT/`[GAP]`.  
**Not this file:** Lace Core ASCII = [`systems-manifest-ascii.md`](../systems-manifest-ascii.md) — **do not conflate**. **webgpu-*** **M-G\*** / FM-Wgpu\* = **HOST/GPU companion** — cite-only; different Spec. **wasm-spec-3** **M-T\*** / FM-W\* = **compile-target ISA** — cite-only; different layer.  
**P3-M:** thin mechanism coherence mesh lives on [`wgsl-clipboard.md`](wgsl-clipboard.md) (9 rows · emission `[GAP]` every row).

```
+======================================================================+
|  WGSL / SHADER-LANG SPECIAL — W3C CRD 2026-09-15                     |
|  Pass 3 = Wave A system mechanisms (M-S1…M-S9) + P3-M mesh.          |
|  Shadow / projection / hologram shader surfaces ONLY.                 |
|  Companion to WebGPU HOST/GPU API (M-G* stay on webgpu shelf).       |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model). |
|  NOT wasm-spec-3 compile-target ISA mechanisms (M-T* / FM-W* stay).  |
|  NOT WebGPU host/GPU mechanisms (M-G* / FM-Wgpu* stay there).        |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  FORBID: WGSL as Lace WORD / Core operator / schema language.        |
|  FORBID: shader module as strand; entry point as Phi.                |
|  FORBID: address space / memory model as Lace store.                 |
|  FORBID: discard as Lace cut · barrier/uniformity as Phi gate.       |
|  FORBID: conflating WGSL with WebGPU Device/Queue or with wasm64.    |
|  KEEP-read: shader-lang mechanics for Shadow projection draw path.   |
|  FORBID-as-Core-write; NON-binding on Core/src/Phi.                  |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Pass 4 ASCII: wgsl-ascii-machinery.md (P-S1…P-S9). Mechanisms stand.|
|  Emission [GAP] sealed.                                              |
+======================================================================+
```

Law: WGSL = **SHADER-LANG Shadow only** · shader module ≠ strand · entry point ≠ Φ · address space ≠ Lace store · WGSL ≠ WORD · discard ≠ Lace cut · barrier/uniformity ≠ Φ · WGSL ≠ WebGPU Device/Queue · WGSL ≠ wasm64 · builtins ≠ Core ops · Hands win · `[GAP]` sealed.

This file is **Shadow / Layer III documentation of CRD shader-lang procedures**, not Lace `src/`, not Graphic D, not Φ.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read-as-shader-lang** | May sit beside Lace as WGSL / Shadow draw mechanics; does not write Core |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, Core operator set, or schema language |
| **FORBID-as-Lace-WORD** | Must not treat WGSL source / identifiers / types / expression algebra as Lace WORD |
| **FORBID-as-Lace-store** | Must not treat WGSL address spaces / buffers / memory model as Lace’s 1D append-only strand |
| **FORBID-as-Lace-strand** | Must not treat shader module / stage / workgroup as the lace cord or Graphic D |
| **FORBID-as-emission-rule** | Must not use entry points, builtins, barriers, discard, or uniformity as POINTER when/arity/adjacency |
| **SILENT-for-Lace-append** | Spec procedure is silent for Lace append; do not smuggle as scheduler |
| **PROPOSAL-only** | Lace↔shader / hologram draw sketches are proposals only; not accepted law |
| **FORBID-as-host-API-swap** | Must not claim WGSL replaces / is the WebGPU Device·Queue·Buffer host API shelf |
| **FORBID-as-compile-target-swap** | Must not claim WGSL replaces wasm64 / wasm-spec-3 target shelf |
| **FORBID-as-Core** | Must not promote shader-lang lifecycle into Lace Core doors / `src/` birth |
| **FORBID fill-GAP** | Must not treat citing/compiling WGSL as filling emission `[GAP]` |

---

## Wave A — CRD constructive spine (blocking) — 1:1 with P-S1…P-S9 (Pass 4 ASCII)

### M-S1 — Module / parse / textual structure (compose module · textual structure · directives · scope · lifecycle cite)

| Field | Content |
|---|---|
| Kind | module-parse |
| Spec locus | §2 WGSL Module PDF **15–16**; Lifecycle §2.1 PDF **16**; Errors §2.2 PDF **17**; Textual Structure §3 PDF **23**; Directives §4 PDF **40**; Declaration and Scope §5 PDF **45**; Masthead PDF **1** · **Pass 2 D7** |
| Sighting method | `pdftotext -f 15 -l 17` / `-f 23 -l 23` / `-f 40 -l 40` / `-f 45 -l 45` (this pass); Pass 1 PAGE A · Pass 2 D7 |
| Eye-quote | “A WGSL program is composed of a single WGSL module.” · “A module is a sequence of optional directives followed by module scope declarations and assertions.” · Lifecycle: shader module creation (`createShaderModule`) → pipeline creation → shader execution start/end · “A processing error may occur during three phases in the shader lifecycle” (shader-creation / pipeline-creation / dynamic) |
| Inputs | Unicode UTF-8 WGSL source text (no BOM); optional directives; module-scope decls/assertions |
| Outputs | Parsed module identity (directives + decls); lifecycle phase hooks that cite host `createShaderModule` / pipeline bind (cite-only) |
| Invariants | Module is shader-lang text identity — **not** Lace WORD; module ↛ lace cord / Graphic D; host lifecycle method names are **cite hooks** into webgpu companion — **not** this Spec’s Device/Queue shelf |
| Algorithm | See below |
| Complexity / termination | Finite parse of one module; halt when module structure accepted or shader-creation error |
| Worked miniature | **Pass 2 D7** — compose module → host createShaderModule cite → pipeline cite → execution start/end (do not rewrite D7) |
| Lace stamp | **KEEP-read-as-shader-lang**; **FORBID-as-Lace-WORD** (module text ↛ WORD); **FORBID-as-Lace-strand** (module ↛ lace cord); **FORBID-as-host-API-swap** (lifecycle host hooks cite-only); **FORBID-as-Core**; **FORBID fill-GAP**; **PROPOSAL-only** for Lace↔shader embed sketches |
| Hands cite | Graphics A–D · systems-manifest (one store) · AGENTS Implementation Law · PAGE A · D7 |
| Panel cite | **P-S1** · PAGE **A** |
| False friend | **FM-Wgsl1** · **FM-Wgsl4** · **FM-Wgsl7** |
| Projection / hologram cite | `clock/README.md` (`lace-projection.html`) · `hologram/visual-primitives.md` WGSL live path — Shadow module identity only; glyphs ≠ schema |
| webgpu cite | webgpu-* cite-only — host `createShaderModule` / Device/Queue are **HOST/GPU companion** (**FM-Wgsl7**); do not edit |
| wasm64 cite | wasm-spec-3 cite-only — **different layer**; module ≠ wasm64 compile target (**FM-Wgsl8**) |
| Open gaps | Φ / emission `[GAP]`; which hologram embed may compile which module — out of scope (D7 [OPEN]) |

**Algorithm**

1. **Preconditions.** UTF-8 WGSL source with no BOM (§2 PDF **15**; PAGE A).  
2. **State.** Empty module intent; optional directives ahead of decls.  
3. **Steps.**  
   1. Recognize a single WGSL module: optional directives + module-scope declarations/assertions (`translation_unit` PDF **15**).  
   2. Apply textual structure / parsing (§3 PDF **23**) and declaration/scope rules (§5 PDF **45**).  
   3. Classify lifecycle phase for later errors (§2.1–2.2 PDF **16–17**): shader-creation / pipeline-creation / dynamic.  
   4. Host hooks (cite-only): `createShaderModule` / pipeline bind — **FORBID-as-host-API-swap**.  
   5. Refuse module text as Lace WORD; refuse module as lace cord / Graphic D; refuse compiling/citing as emission fill.  
4. **Choice points.** Directives / diagnostic filters; which decls form the module scope.  
5. **Halt.** Module structure accepted, or shader-creation error.  
6. **Output certificate.** Shader-lang module identity (Shadow reading only) · **D7** cross-link.

---

### M-S2 — Types (plain / integer / vector / memory-view / texture·sampler)

| Field | Content |
|---|---|
| Kind | types |
| Spec locus | §6 Types PDF **49**; Plain Types §6.2 PDF **56**; i32 §6.2.3 PDF **59**; vectors §6.2.6 PDF **61**; Memory Views §6.5 PDF **72**; Texture and Sampler Types §6.6 PDF **90** |
| Sighting method | `pdftotext -f 49 -l 49` / `-f 56 -l 56` / `-f 72 -l 72` / `-f 90 -l 90` (this pass); Pass 1 PAGE B |
| Eye-quote | “In WGSL, a type is a set of values, and each value belongs to exactly one type.” · “Plain types are types for the machine representation of boolean values, numbers, vectors, matrices, or aggregations of such values.” · “Some types are opaque…” · texture/sampler types cite §17.7 builtins |
| Inputs | Type names / constructors / aliases appearing in module decls and expressions |
| Outputs | Concrete or abstract type classifications; constraints on supported operations |
| Invariants | Types describe shader values — **not** Lace WORD / Core schema; hologram may *draw* with typed values without becoming schema |
| Algorithm | See below |
| Complexity / termination | Finite type resolution per expression/decl; halt when types consistent or shader-creation error |
| Worked miniature | EXAMPLE shadowing predeclared objects PDF **49**; plain-type note PDF **56** |
| Lace stamp | **KEEP-read-as-shader-lang**; **FORBID-as-Core-write**; **FORBID-as-Lace-WORD** (types ↛ Lace schema / WORD) |
| Hands cite | systems-manifest · PAGE B |
| Panel cite | **P-S2** · PAGE **B** |
| False friend | **FM-Wgsl4** |
| Projection / hologram cite | types ≠ schema; hologram may *draw* typed values; glyphs ≠ schema |
| webgpu cite | cite-only (host pipeline typed resources ≠ this type system as Core) |
| wasm64 cite | cite-only; WGSL types ≠ wasm value types as Lace schema |
| Open gaps | Φ / emission `[GAP]`; full overload-resolution edge cases deferred Wave B |

**Algorithm**

1. **Preconditions.** Module under parse (M-S1).  
2. **State.** Type environment from predeclared + user decls.  
3. **Steps.**  
   1. Classify values into types (§6 PDF **49**) — each value belongs to exactly one type.  
   2. Apply plain-type rules (§6.2 PDF **56**) for scalars/composites/atomics/abstract numerics.  
   3. Apply memory-view (§6.5 PDF **72**) and texture/sampler (§6.6 PDF **90**) rules where used.  
   4. Refuse WGSL types as Lace WORD / Core schema / Core operator set.  
4. **Choice points.** Abstract vs concrete; extension-gated types (e.g. `f16`).  
5. **Halt.** Types resolved for decls/expressions, or type error.  
6. **Output certificate.** Shader-lang type classification (Shadow only).

---

### M-S3 — Address spaces / variables (`var`/`let`/`const`/`override` · address spaces · layout · no-heap)

| Field | Content |
|---|---|
| Kind | address-spaces-vars |
| Spec locus | §7 Variable and Value Declarations PDF **101**; `var` §7.3 PDF **106**; no-heap note PDF **90**; §14 Memory Model PDF **200**; Address Spaces §14.3 PDF **201–202**; layout §14.4 PDF **202** |
| Sighting method | `pdftotext -f 90 -l 90` / `-f 101 -l 101` / `-f 106 -l 106` / `-f 201 -l 203` (this pass); Pass 1 PAGE C |
| Eye-quote | “Variable and value declarations provide names for data values.” · “A variable is a named reference to memory that can contain a value of a particular storable type.” · “In WGSL there is no way to allocate new memory from a \"heap\".” · “Memory locations are partitioned into address spaces.” |
| Inputs | `const` / `override` / `let` / `var` decls; address-space annotations; access modes |
| Outputs | Named values/variables with store type + reference type `ref<AS,T,AM>`; address-space partition |
| Invariants | Address spaces / buffers / layout are shader memory — **not** Lace 1D strand or second store; no-heap ≠ Lace append authority |
| Algorithm | See below |
| Complexity / termination | Finite decls; halt when vars typed/placed or creation error |
| Worked miniature | EXAMPLE let-declared constants at function scope PDF **106**; address-space table PDF **201–202** |
| Lace stamp | **KEEP-read-as-shader-lang**; **FORBID-as-Lace-store** (memory ≠ strand / second store) |
| Hands cite | Piece 1/6 · Graphic D (one strand) · PAGE C |
| Panel cite | **P-S3** · PAGE **C** |
| False friend | **FM-Wgsl3** |
| Projection / hologram cite | address space ≠ strand/store; may hold draw uniforms only |
| webgpu cite | ≠ GPUBuffer swap as Lace store (**FM-Wgsl7** cite-only) |
| wasm64 cite | ≠ linear mem strand / wasm memory (**FM-Wgsl8** cite-only) |
| Open gaps | Φ / emission `[GAP]` |

**Algorithm**

1. **Preconditions.** Module + types available (M-S1/M-S2).  
2. **State.** Choose value vs variable form; address space / access mode for `var`.  
3. **Steps.**  
   1. Declare `const` / `override` / `let` / formal params as value decls (§7 PDF **101**).  
   2. Declare `var` with store type + address space + access mode → reference type `ref<AS,T,AM>` (§7.3 PDF **106**).  
   3. Place memory in an address space (§14.3 PDF **201–202**); apply layout (§14.4).  
   4. Note no-heap / no explicit destroy (PDF **90**) — still not Lace store.  
   5. Refuse address space / buffer / memory model as Lace strand or second store.  
4. **Choice points.** function / private / workgroup / uniform / storage / handle / … spaces; access modes.  
5. **Halt.** Declarations placed, or error.  
6. **Output certificate.** Shader-lang memory/value names (Shadow only).

---

### M-S4 — Expressions (early evaluation · ops · address-of / indirection)

| Field | Content |
|---|---|
| Kind | expressions |
| Spec locus | §8 Expressions PDF **110+**; Early Evaluation §8.1 PDF **110**; const-expressions §8.1.1; override-expressions §8.1.2 PDF **111–112** |
| Sighting method | `pdftotext -f 110 -l 112` (this pass); Pass 1 PAGE D |
| Eye-quote | “Expressions specify how values are computed.” · “WGSL defines two types of expressions that can be evaluated before runtime: const-expressions, at shader-creation time; override-expressions, at pipeline-creation time.” · runtime expressions computed on GPU during shader execution |
| Inputs | Expression phrases over typed operands; const/override/runtime classification |
| Outputs | Computed values (or const/override results baked before GPU run) |
| Invariants | Expression algebra is shader-lang evaluation — **not** Lace WORD algebra / Core ops |
| Algorithm | See below |
| Complexity / termination | Finite expression trees; early eval before GPU; halt when value produced or error |
| Worked miniature | Early-evaluation tradeoff note PDF **110** |
| Lace stamp | **KEEP-read-as-shader-lang**; **FORBID-as-Lace-WORD** (expression algebra ↛ WORD / Core ops) |
| Hands cite | PAGE D · AGENTS Implementation Law |
| Panel cite | **P-S4** · PAGE **D** |
| False friend | **FM-Wgsl4** (adjacent) |
| Projection / hologram cite | expr algebra ≠ WORD; may compute draw math only |
| webgpu cite | cite-only |
| wasm64 cite | cite-only |
| Open gaps | Φ / emission `[GAP]`; full operator tables deferred Wave B |

**Algorithm**

1. **Preconditions.** Types/vars in scope (M-S2/M-S3).  
2. **State.** Expression phrase; classify evaluation time.  
3. **Steps.**  
   1. Parse expression (§8 PDF **110**).  
   2. Classify as const-expression / override-expression / runtime (§8.1 PDF **110**).  
   3. Evaluate left-to-right with nesting dependencies (§15.1 cites §8).  
   4. Refuse expression algebra as Lace WORD / Core ops.  
4. **Choice points.** Which identifiers force runtime vs early evaluation.  
5. **Halt.** Value available for use, or type/eval error.  
6. **Output certificate.** Shader-lang expression result (Shadow only).

---

### M-S5 — Statements (control flow · `discard` · `const_assert`)

| Field | Content |
|---|---|
| Kind | statements |
| Spec locus | §9 Statements PDF **140**; Control Flow §9.4 PDF **149**; Discard Statement §9.4.11 PDF **158** (worked example **159**); §10 Assertions / `const_assert` PDF **166** |
| Sighting method | `pdftotext -f 149 -l 150` / `-f 158 -l 160` / `-f 166 -l 166` (this pass); Pass 1 PAGE E |
| Eye-quote | “A discard statement converts the invocation into a helper invocation and throws away the fragment output.” · “The discard statement must only be used in a fragment shader stage.” · control-flow / if / switch / loop family §9.4 · const assertion §10 |
| Inputs | Statement list in function bodies; fragment-stage context for `discard` |
| Outputs | Control-flow effects; possible helper conversion / discarded fragment output; assertion pass/fail at creation |
| Invariants | `discard` is fragment helper conversion — **not** Lace cut / append refuse / Φ gate; statements are **SILENT** for Lace append |
| Algorithm | See below |
| Complexity / termination | Finite CFG; halt when statements exhaust or return/discard ends observable path |
| Worked miniature | EXAMPLE using discard to throw away a fragment PDF **159** |
| Lace stamp | **KEEP-read-as-shader-lang**; **SILENT-for-Lace-append**; **FORBID-as-emission-rule** (`discard` ↛ Lace cut / Φ) |
| Hands cite | PAGE E · pointer-emission `[GAP]` |
| Panel cite | **P-S5** · PAGE **E** |
| False friend | **FM-Wgsl5** |
| Projection / hologram cite | discard ≠ Lace cut; SILENT for append |
| webgpu cite | cite-only |
| wasm64 cite | cite-only |
| Open gaps | Φ / emission `[GAP]` |

**Algorithm**

1. **Preconditions.** Function body under analysis (M-S6); expressions typed (M-S4).  
2. **State.** Control-flow position in an invocation.  
3. **Steps.**  
   1. Execute statements in control-flow order (§9; §9.4 PDF **149**).  
   2. On `discard` in fragment stage (§9.4.11 PDF **158**): convert invocation to helper; throw away fragment output; only prior statements remain observable.
   3. Evaluate `const_assert` at creation time (§10 PDF **166**).  
   4. Refuse `discard`/control flow as Lace cut / append scheduler / Φ gate.  
4. **Choice points.** Branching / loops / continuing / return.  
5. **Halt.** Function returns, discard ends fragment output, or creation assertion fails.  
6. **Output certificate.** Shader-lang control effects (Shadow only; SILENT for Lace append).

---

### M-S6 — Functions / entry points (user-defined · stages · interface · entry ≠ Φ)

| Field | Content |
|---|---|
| Kind | functions-entry |
| Spec locus | §11 Functions PDF **166–167**; §13 Entry Points PDF **181**; Shader Stages §13.1; interface §13.3 PDF **182** |
| Sighting method | `pdftotext -f 166 -l 168` / `-f 181 -l 182` (this pass); Pass 1 PAGE F |
| Eye-quote | “An entry point is a user-defined function that performs the work for a particular shader stage.” · Functions may be called by expression/statement or as pipeline stage (§11) · vertex / fragment / compute stages (§13.1) |
| Inputs | User-defined `fn` decls; stage attributes; entry-point IO / resources |
| Outputs | Callable functions; pipeline entry points bound to shader stages |
| Invariants | Entry point ≠ POINTER when / arity / adjacency / Φ; stage/workgroup ↛ lace cord / Graphic D |
| Algorithm | See below |
| Complexity / termination | Finite function set; halt when entry points identified for pipeline stages |
| Worked miniature | EXAMPLE compute entry with `@compute @workgroup_size(1)` PDF **167**; entry-point interface PDF **182** |
| Lace stamp | **KEEP-read-as-shader-lang**; **FORBID-as-emission-rule** (entry ≠ Φ); **FORBID-as-Lace-strand** (stage/workgroup ↛ lace cord); **FORBID fill-GAP** |
| Hands cite | pointer-emission `[GAP]` · PAGE F · FM-Wgsl1 · FM-Wgsl2 |
| Panel cite | **P-S6** · PAGE **F** |
| False friend | **FM-Wgsl1** · **FM-Wgsl2** |
| Projection / hologram cite | entry ≠ Φ; stage ≠ lace cord; Shadow draw entry only |
| webgpu cite | ≠ pipeline host API swap (**FM-Wgsl7**); host binds entry points cite-only |
| wasm64 cite | cite-only |
| Open gaps | Φ / emission `[GAP]`; full IO Valid Usage deferred Wave B |

**Algorithm**

1. **Preconditions.** Module with typed decls (M-S1…M-S5).  
2. **State.** User functions; choose which are entry points.  
3. **Steps.**  
   1. Declare user-defined functions (§11 PDF **166–167**).  
   2. Mark entry points for a shader stage (§13 PDF **181**).  
   3. Describe stage interface / IO (§13.3 PDF **182**).  
   4. Refuse entry as Φ / POINTER emission; refuse stage as lace cord.  
4. **Choice points.** vertex / fragment / compute; which function is the stage entry.  
5. **Halt.** Entry points ready for host pipeline bind (cite-only).  
6. **Output certificate.** Shader-lang functions/entry points (Shadow only).

---

### M-S7 — Attributes (`@` attributes · `workgroup_size` · stage attrs)

| Field | Content |
|---|---|
| Kind | attributes |
| Spec locus | §12 Attributes PDF **173**; `workgroup_size` §12.15 PDF **179–180**; Shader Stage Attributes §12.16 PDF **180** (`@vertex` / `@fragment` / `@compute`) |
| Sighting method | `pdftotext -f 178 -l 180` (this pass); Pass 1–2 PAGE F / FM-Wgsl1 |
| Eye-quote | `workgroup_size` attribute grammar PDF **179–180** · “Specifies the x, y, and z dimensions of the workgroup grid for a compute shader.” · stage attributes `@vertex` / `@fragment` / `@compute` |
| Inputs | Attribute lists on decls/functions/params; const/override expressions for sizes |
| Outputs | Annotated objects (stage, workgroup size, locations, …) |
| Invariants | `workgroup_size` / stage attrs are shader-lang annotations — **not** Graphic D / lace cord; **not** Core writes |
| Algorithm | See below |
| Complexity / termination | Finite attribute lists; halt when attrs validated or creation error |
| Worked miniature | `@compute @workgroup_size(1)` PDF **167** / attribute table PDF **179–180** |
| Lace stamp | **KEEP-read-as-shader-lang**; **FORBID-as-Lace-strand** (`workgroup_size` ↛ Graphic D); **FORBID-as-Core-write** |
| Hands cite | PAGE F · FM-Wgsl1 |
| Panel cite | **P-S7** · PAGE **F** |
| False friend | **FM-Wgsl1** |
| Projection / hologram cite | workgroup_size ≠ Graphic D |
| webgpu cite | cite-only (host limits may cap sizes; still not Lace) |
| wasm64 cite | cite-only |
| Open gaps | Φ / emission `[GAP]`; subgroup_size minutiae deferred Wave B |

**Algorithm**

1. **Preconditions.** Decl/function under analysis (M-S6).  
2. **State.** Optional `@` attribute list.  
3. **Steps.**  
   1. Parse attributes (§12 PDF **173**).  
   2. Apply `workgroup_size` on compute entry (§12.15 PDF **179–180**).  
   3. Apply stage attributes (§12.16).  
   4. Refuse workgroup/stage attrs as Graphic D / lace cord / Core write.  
4. **Choice points.** 1-D / 2-D / 3-D workgroup sizes; which stage attr.  
5. **Halt.** Attributes accepted, or error.  
6. **Output certificate.** Annotated shader-lang objects (Shadow only).

---

### M-S8 — Built-in functions (constructors · numeric · texture · atomic · sync/barrier · subgroup)

| Field | Content |
|---|---|
| Kind | builtins |
| Spec locus | §17 Built-in Functions PDF **264**; constructors §17.1; numeric §17.5 PDF **284**; texture §17.7 PDF **313**; atomic §17.8 PDF **338**; Synchronization §17.11 PDF **347–348**; Subgroup §17.12 PDF **348** |
| Sighting method | `pdftotext -f 264 -l 264` / `-f 346 -l 349` (this pass); Pass 1–2 PAGE G / FM-Wgsl9 · FM-Wgsl6 |
| Eye-quote | “Certain functions are predeclared, provided by the implementation, and therefore always available… called built-in functions.” · “All synchronization functions execute a control barrier with Acquire/Release memory ordering.” · `storageBarrier` / `textureBarrier` / `workgroupBarrier` PDF **347–348** |
| Inputs | Call sites with typed arguments; uniform control flow for collective ops |
| Outputs | Built-in results; barrier synchronization among invocations |
| Invariants | Builtins/barriers are shader-lang ops — **not** Lace Core ops / Φ fillers / POINTER when |
| Algorithm | See below |
| Complexity / termination | Finite overload resolution + call; barriers require uniform control flow (see M-S9) |
| Worked miniature | §17.11 sync builtins PDF **347–348**; constructor note PDF **264** |
| Lace stamp | **KEEP-read-as-shader-lang**; **FORBID-as-Core-write**; **FORBID-as-emission-rule** (builtins/barriers ↛ Core ops / Φ fillers) |
| Hands cite | PAGE G · FM-Wgsl9 · FM-Wgsl6 |
| Panel cite | **P-S8** · PAGE **G** |
| False friend | **FM-Wgsl9** · **FM-Wgsl6** |
| Projection / hologram cite | builtins/barriers ≠ Core/Φ; may serve Shadow draw math only |
| webgpu cite | cite-only |
| wasm64 cite | cite-only |
| Open gaps | Φ / emission `[GAP]`; full numeric/texture tables deferred Wave B |

**Algorithm**

1. **Preconditions.** Expressions/calls in scope (M-S4/M-S6); uniformity constraints for collective ops (M-S9).  
2. **State.** Choose builtin overload by name/arity/types.  
3. **Steps.**  
   1. Resolve builtin overload (§17 PDF **264**).  
   2. Evaluate arguments before call (§11.2).  
   3. For sync builtins (§17.11 PDF **347–348**): execute control barrier with Acquire/Release under uniform control flow.  
   4. Refuse builtins/barriers as Core ops / Φ fillers / POINTER emission.  
4. **Choice points.** constructor / numeric / texture / atomic / sync / subgroup families.  
5. **Halt.** Builtin returns, or error (incl. uniformity — M-S9).  
6. **Output certificate.** Shader-lang builtin effect (Shadow only).

---

### M-S9 — Execution / uniformity / validation (errors · uniformity analysis · workgroups · vs Lace append)

| Field | Content |
|---|---|
| Kind | execution-uniformity-validation |
| Spec locus | §2.2 Errors PDF **17**; §15 Execution PDF **213+**; Uniformity §15.2 PDF **213**; workgroups §15.3 PDF **241** |
| Sighting method | `pdftotext -f 17 -l 17` / `-f 213 -l 213` / `-f 241 -l 241` (this pass); Pass 1 PAGE H |
| Eye-quote | shader-creation / pipeline-creation / dynamic errors (§2.2 PDF **17**) · “A collective operation… requires coordination among different invocations… executes correctly and portably when all invocations execute it concurrently, i.e. in uniform control flow.” · workgroup partitioning §15.3 |
| Inputs | Module + entry points; control-flow graph; collective op call sites |
| Outputs | Validation accept/reject; uniformity analysis results; execution constraints per invocation/workgroup |
| Invariants | Uniformity/validation/errors are shader-lang / GPU execution hygiene — **not** Lace law / Φ gate / append scheduler; **SILENT** for Lace append |
| Algorithm | See below |
| Complexity / termination | Static analysis finite over CFG; dynamic errors may or may not be detectable |
| Worked miniature | Uniformity graph figure PDF **241**; error-phase note PDF **17** |
| Lace stamp | **KEEP-read-as-shader-lang**; **SILENT-for-Lace-append**; **FORBID-as-emission-rule** (uniformity/validation ≠ Lace law / Φ gate) |
| Hands cite | PAGE H · FM-Wgsl6 · pointer-emission `[GAP]` |
| Panel cite | **P-S9** · PAGE **H** |
| False friend | **FM-Wgsl6** |
| Projection / hologram cite | uniformity/validation ≠ Lace law |
| webgpu cite | cite-only (host may surface pipeline errors; still not Lace cut) |
| wasm64 cite | cite-only |
| Open gaps | Φ / emission `[GAP]`; diagnostic-filter recipes deferred Wave B |

**Algorithm**

1. **Preconditions.** Module with entry points / builtins (M-S1…M-S8).  
2. **State.** CFG + invocation/workgroup partitioning.  
3. **Steps.**  
   1. Check requirements at earliest phase (§2.2 PDF **17**): shader-creation → pipeline-creation → dynamic.  
   2. Analyze program order within an invocation (§15.1 PDF **213**).  
   3. Run uniformity analysis for collective ops (§15.2 PDF **213**).  
   4. Respect workgroup structure (§15.3 PDF **241**).  
   5. Refuse uniformity/validation/errors as Lace law / Φ gate / append scheduler.  
4. **Choice points.** Which collective ops require uniform control flow; error severity.  
5. **Halt.** Module/pipeline accepted for execution, or error reported.  
6. **Output certificate.** Shader-lang validation/execution constraints (Shadow only; SILENT for Lace append).

---

## Steward refuse (cards + P3-M only)

1. Module/stage/workgroup ⇒ lace cord / Graphic D → **M-S1/M-S6/M-S7** + **FM-Wgsl1** + FORBID-as-Lace-strand.  
2. Entry ⇒ POINTER / Φ → **M-S6** + **FM-Wgsl2** + FORBID-as-emission-rule; emission `[GAP]`.  
3. Address space / memory ⇒ Lace strand / second store → **M-S3** + **FM-Wgsl3** + FORBID-as-Lace-store.  
4. Types / source / exprs ⇒ WORD / Core schema → **M-S1/M-S2/M-S4** + **FM-Wgsl4** + FORBID-as-Lace-WORD / FORBID-as-Core-write.  
5. `discard` ⇒ Lace cut / Φ → **M-S5** + **FM-Wgsl5** + SILENT + FORBID-as-emission-rule.  
6. Barrier / uniformity ⇒ Φ gate / Lace scheduler → **M-S8/M-S9** + **FM-Wgsl6** + FORBID-as-emission-rule + SILENT.  
7. WGSL ⇒ WebGPU Device/Queue host API → PAGE X / mesh webgpu column + **FM-Wgsl7** + FORBID-as-host-API-swap.  
8. WGSL ⇒ wasm64 / wasm-spec-3 → PAGE X / mesh wasm64 column + **FM-Wgsl8** + FORBID-as-compile-target-swap.  
9. Builtins ⇒ Core ops / Φ fillers → **M-S8** + **FM-Wgsl9** + FORBID-as-Core-write.  
10. Compiling/citing WGSL accepts pointer-emission → **M-S1/M-S6** + D1/D6; PROPOSAL-only; GAP remains.

These mechanisms are CRD **shader-lang** procedures — Shadow reading for Lace projection / hologram draw surfaces.  
They do not write Graphic D, do not birth `src/`, do not fill Φ, do not swap WebGPU host API, and do not swap wasm64.
