# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 5 findings

**Status:** EXECUTED 2026-09-21.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 5 — CHECK THE FOUNDATION.  
**Question:** is `wasm64-unknown-unknown` actually the correct compilation target?  
**Plan:** [source-lab-lace-alignment-pass-5-plan.md](source-lab-lace-alignment-pass-5-plan.md).  
**Execution baseline:** `2f7b8c81b35c087dd2b27c46ae8baf3f64422987`.  
**Target-court semantic commit:** `444a8045e5a7b935970de9cdb79fdf74e0cdc26b`.  
**Final semantic commit:** `81b47087488dbe54b505f1b3fdb8b8b936c46d58` — global ASCII Pass 37 refresh.  
**Implementation:** none.  
**Core change:** none.  
**RM-A:** remains open / MISSING-A.  
**Pointer acceptance:** absent.

---

## 1. Primary verdict

```
TARGET VERDICT:
    TARGET UNDECIDED

FORMER WASM64 SEAL:
    SUPERSEDED AS CURRENT TARGET STATE

WASM64:
    CONDITIONAL CAPABILITY CANDIDATE
    NOT CURRENTLY JUSTIFIED BY AN ESTABLISHED >4 GiB RESIDENT REQUIREMENT

WASM32:
    VIABLE LOWER-BURDEN CANDIDATE
    NOT YET PROVED SUFFICIENT
```

Direct answer to the Pass-5 question:

> **No current evidence establishes that the compilation target is correctly fixed as wasm64.**

This is **not** a proof that wasm64 is wrong.

It is a finding that the old resolved/sealed status outran the current project requirements and available execution evidence.

---

## 2. Building-material identity

| Material | SHA-256 | Role |
|---|---|---|
| WebAssembly 3.0 | `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` | core ISA / memory-address semantics |
| WebGPU CRD 2026-09-15 | `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1` | host/GPU resource domain |
| WGSL CRD 2026-09-15 | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` | shader integer/pointer/layout domain |
| WebNN CRD 2026-09-10 | `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` | HOST-NN tensor/operator/device domain |
| The rustc book | `4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3` | Rust compiler/target facts |
| The Cargo Book | `9d7048e1ecb50ae5ed95dc64fe504cf968a4a9a7c2cc9c903e48ae38d163c0a5` | Cargo/build-std orchestration |

The rustc/Cargo files were re-hashed during execution and matched their existing shelves exactly.

The existing locator conventions were preserved. In particular, the Cargo source's 213 bare carriage returns mean universal-newline readers and raw `grep -n` do not share the same line numbering.

---

## 3. The decisive architecture separation

Pass 5 established that these are separate domains:

```
Lace logical history / Index domain
        !=
Rust usize / native pointer width
        !=
Wasm linear-memory address width
        !=
browser/embedder practical capacity
        !=
WebGPU resource / binding domain
        !=
WGSL concrete integer / pointer domain
        !=
WebNN tensor / accelerator domain
```

The old shortcut:

```
indices are forever
    ->
native pointers must be 64-bit
    ->
wasm64
```

does not follow from current Lace contracts.

---

## 4. Lace-derived target requirements

The [requirements ledger](source-lab-lace-alignment-pass-5-target-requirements.md) found:

### Required

- one authoritative append-only strand;
- permanent positions for retained rows;
- no index reuse;
- no renumbering;
- no wraparound into an earlier position;
- finite implementations must state their supported domain.

### Explicitly still open

- logical Index width;
- row/reference encoding;
- average/maximum encoded row size;
- total supported persistent domain;
- simultaneously resident Wasm working set;
- physical carrier;
- volatile vs durable restart behavior (R3);
- growth/fixed-capacity/refusal behavior and refused-arrival custody (R4);
- concurrency / multi-writer ordering.

### Not established

No current Core/branch contract requires:
- the full strand to live in one Wasm linear memory;
- more than 4 GiB to be simultaneously resident;
- `Index = usize`;
- `Index = raw pointer`;
- every historical row to be directly addressable as a native pointer at once.

That missing >4 GiB resident requirement is central to the target verdict.

---

## 5. Current platform-source court

Pass 5 used current primary Web/Rust/Cargo source checks as **platform evidence**, separately from the human-supplied corpus.

### WebAssembly JS interface

Current JS embedding evidence gives:
- memory32 runtime maximum: 65,536 pages = **4 GiB**;
- memory64 runtime maximum: 262,144 pages = **16 GiB**;
- implementations may still fail below those limits due to resource exhaustion.

Therefore the practical Web Memory64 domain is not the abstract full 64-bit address space described at the core/toolchain level.

### Chrome

Current Chrome release material records Memory64 as shipped since Chrome 133.

This establishes general browser-family support, not the user's Pixel capacity/performance.

### Rust

Current official Rust material still classifies:
- `wasm32-unknown-unknown` as Tier 2;
- `wasm64-unknown-unknown` as Tier 3.

The current wasm64 target path retains material build/test burden:
- 64-bit pointer/`usize` ABI;
- no precompiled target artifacts in the official target documentation;
- source-build / build-std path;
- weak upstream target testing.

The rustc book's older sentence saying Memory64 is not standardized is retained as a dated compiler-document statement but does not override the newer human-supplied WebAssembly 3.0 core source.

### Cargo

Current Cargo build-std material corroborates:
- nightly Cargo + rustc;
- `rust-src`;
- unstable `-Z build-std`;
- bare default includes `core`, `std`, `alloc`, `proc_macro`;
- explicit crate lists exist.

The no_std target audit therefore cannot use bare build-std by default.

---

## 6. Candidate court

### T-A — wasm64 + one monolithic resident Memory64

**Verdict:** NOT JUSTIFIED on current requirements.

Missing:
- accepted >4 GiB simultaneously resident requirement;
- successful project build;
- actual Pixel capacity;
- actual Pixel performance.

### T-B — wasm64 + bounded resident working set / external carrier

**Verdict:** POSSIBLE, but CURRENTLY OVER-SPECIFIED on the established requirements.

If the working set is already within memory32, another requirement must justify the 64-bit native pointer ABI.

### T-C — wasm32 + bounded working set + wide logical indices

**Verdict:** VIABLE CANDIDATE, NOT YET PROVED SUFFICIENT.

It survives because logical index width is independent of native pointer width.

It remains conditional on:
- accepted supported domain;
- row encoding;
- carrier/persistence decision;
- resident working-set bound;
- actual build and Pixel evidence.

### T-D — wasm32 + Memory64 hybrid

**Verdict:** UNESTABLISHED / NO TARGET CREDIT.

No toolchain execution was available. No custom target was invented to force the scenario.

### T-E — custom target

**Verdict:** REJECT AS DEFAULT PATH.

Target JSON is unstable/version-bound and no current requirement forces a custom target.

### T-F — target undecided

**Verdict:** SURVIVES and is the current project state.

---

## 7. Layer-III inventory result

### WebGPU

WebGPU has a separately bounded GPU resource/binding domain. A large Wasm memory does not imply one equally large GPU-visible resource.

### WGSL

Host pointer width does not become shader pointer/integer width. A wide logical index requires an explicit representation only if the shader actually needs the global value.

### WebNN

Tensor `int64`/`uint64`, tensor byte limits and accelerator selection are separate from the Wasm pointer ABI.

**Result:** none of WebGPU, WGSL or WebNN currently creates a hidden requirement for wasm64.

Current entrances for all three were reconciled to point at the **Wasm/rustc target court (TARGET UNDECIDED)**. Historical `≠ wasm64` false-friend text remains dated evidence of layer separation.

---

## 8. What execution could and could not run

### Executed

- repository/state preflight;
- all source/hash inventory checks available in this environment;
- Lace requirements derivation;
- current primary Web/Rust/Cargo source court;
- target scenario comparison;
- decision matrix;
- active-entry reconciliation;
- global ASCII Pass 37.

### NOT_RUN — local toolchain unavailable

The execution environment had no:
- `rustc`;
- `cargo`;
- `rustup`.

Therefore no local:
- wasm64 build;
- wasm32 build;
- ABI receipt;
- target-spec receipt;
- Cargo→rustc invocation capture;
- build-std closure execution;
- emitted-module decode.

This is an environment limitation, not a target failure.

### NOT_RUN — actual Pixel unavailable

This execution environment could not execute on the user's Pixel/Chrome installed-WebApp path.

Therefore:
- Memory64 instantiation;
- practical Memory64 growth;
- memory32 comparison;
- wasm32-vs-wasm64 performance;
- installed-app behavior;
- WebGPU device limits/transfers;
- WGSL wide-index/layout/dispatch probes;
- WebNN support/tensor/bridge/lifecycle probes

remain **NOT_RUN**.

No previous device observation was silently promoted into a fresh Pass-5 execution receipt.

---

## 9. Explicit remaining platform/build gaps

### GAP-B1 — `compiler_builtins`

The supplied Cargo Book does not establish whether or how `compiler_builtins` participates in the intended source-built no_std target closure.

Pass 5 did not infer absence from silence.

### GAP-B2 — build-std / Cargo.lock / sysroot provenance

The supplied Cargo Book does not establish that ordinary Cargo.lock locking proves the exact source-built standard-library/sysroot inputs.

No execution was available to close this.

Both remain explicit `[GAP]`.

---

## 10. Current-target entrance reconciliation

Pass 5 changed current entrances only after the target verdict existed.

Reconciled surfaces:

- Wasm Spec 3 clipboard;
- rustc target clipboard;
- Wasm ASCII machinery;
- Wasm mechanism cards;
- rustc ASCII machinery;
- clipboard index;
- WebGPU current entrance;
- WGSL current entrance;
- WebNN current entrance;
- mandatory context prompt;
- technology-reference route;
- global systems ASCII.

Historical pass bodies remain intact.

Meaning:

```
old "sealed wasm64"
    = dated provenance

current target state
    = TARGET UNDECIDED
```

---

## 11. Global ASCII Pass 37

Pass 37 is the final semantic edit.

It preserves:
- Pass 32 mechanism catalog;
- Pass 33 vertical authority/context;
- Pass 34 operational traceability;
- Pass 35 behavioral assays;
- Pass 36 desired-behavior mechanism recovery.

It adds only the platform/target overlay:

```
Lace requirements
        |
        v
logical domain / resident set / carrier
        |
        v
wasm32 <-> wasm64 candidate court
        |
        v
rustc / Cargo / Web / device evidence
        |
        v
TARGET UNDECIDED
```

No Core mechanism moved.

---

## 12. Decision triggers

### Confirm wasm64 only after

- an accepted implementation contract requires >4 GiB simultaneous resident memory;
- bounded/windowed alternatives do not meet the requirement more cleanly;
- pinned rustc/Cargo build succeeds;
- artifact memory type/features are inspected;
- actual Pixel Memory64 capacity succeeds;
- actual local cost is acceptable;
- required Layer-III paths survive their own resource/representation boundaries.

### Confirm wasm32 only after

- accepted resident working set is within memory32;
- logical positions remain non-wrapping independently of native pointers;
- any larger persistent history has an admitted carrier/window contract;
- pinned build succeeds;
- actual Pixel path succeeds;
- no required ABI genuinely depends on native 64-bit pointers.

Until one side satisfies its trigger set:

```
TARGET UNDECIDED
```

---

## 13. Falsifier board

| Falsifier | Result |
|---|---|
| old seal decides outcome | PASS |
| Wasm capability = target suitability | PASS |
| logical Index = native pointer | PASS |
| linear memory = total Lace history | PASS |
| theoretical 64-bit space = practical browser capacity | PASS |
| Chrome-family support = Pixel proof | PASS — Pixel left NOT_RUN |
| secondary benchmark = local benchmark | PASS |
| wasm32 dismissed by inherited seal | PASS |
| wasm64 dismissed only because Tier 3 | PASS |
| custom target smuggled | PASS |
| carrier chosen to force target answer | PASS |
| target chosen to force carrier answer | PASS |
| unrun artifact/device claim presented as result | PASS |
| stale rustc standards sentence overrides Wasm 3.0 | PASS |
| WebGPU `GPUSize64` = practical capacity | PASS |
| Wasm↔GPU zero-copy assumed | PASS |
| host pointer width leaks into WGSL | PASS |
| WGSL AbstractInt promoted to runtime u64 | PASS |
| WebNN tensor width promoted to host pointer width | PASS |
| WebNN/WebGPU zero-copy assumed | PASS |
| bare build-std used as no_std proof | PASS |
| Cargo.lock promoted to sysroot provenance | PASS |
| compiler_builtins inferred absent from source silence | PASS |
| target audit changes Core or opens implementation | PASS |

---

## 14. Completion board

Statuses are intentionally not collapsed into PASS when execution did not occur.

| Gate | Result |
|---|---|
| G1 current main + stations pinned | PASS |
| G2 uploaded WebAssembly hash verified | PASS |
| G3 Wasm core vs embedding boundary mapped | PASS |
| G4 logical Index separated from pointer width | PASS |
| G5 supported domain | PASS — explicitly OPEN |
| G6 resident working set | PASS — explicitly OPEN |
| G7 carrier dependency | PASS — explicitly OPEN |
| G8 rustc wasm64 facts re-verified | PASS — supplied source + current official source |
| G9 rustc wasm32 comparison re-verified | PASS — current official source |
| G10 Cargo build-std consequences included | PASS |
| G11 T-A through T-F evaluated | PASS |
| G12 wasm64 build probe | NOT_RUN — no toolchain |
| G13 wasm32 build probe | NOT_RUN — no toolchain |
| G14 emitted artifact memory type inspected | NOT_RUN |
| G15 pointer/`usize` separated from logical Index | PASS |
| G16 Pixel Memory64 instantiate | NOT_RUN |
| G17 Pixel capacity comparison | NOT_RUN |
| G18 local target performance comparison | NOT_RUN |
| G19 JS embedding primary-source gap | PASS — current JS API source checked |
| G20 target decision matrix | PASS |
| G21 no custom target without necessity | PASS |
| G22 no carrier chosen to force answer | PASS |
| G23 no Core semantics changed | PASS |
| G24 current target wording changed only after verdict | PASS |
| G25 Passes 32–36 preserved | PASS |
| G26 global ASCII changed last semantically | PASS — final semantic commit `81b47087…` |
| G27 linear Pass 37 | PASS |
| G28 WebGPU source identity | PASS |
| G29 GPU domain separated from Wasm domain | PASS |
| G30 actual WebGPU limits | NOT_RUN |
| G31 GPU transfer/window measurement | NOT_RUN |
| G32 WebGPU remains Layer III | PASS |
| G33 WGSL source identity | PASS |
| G34 WGSL runtime domain separated | PASS |
| G35 required wide shader index representation | NOT_REQUIRED / OPEN — no required wide-index shader workload established |
| G36 host↔WGSL layout round-trip | NOT_RUN / no selected representation |
| G37 dispatch/extensions | NOT_RUN |
| G38 WGSL remains Layer III | PASS |
| G39 WebNN source identity | PASS |
| G40 WebNN tensor/operator/device domain separated | PASS |
| G41 required WebNN operator/type/rank support | NOT_REQUIRED — no required WebNN workload established |
| G42 WebNN int64/uint64 on Pixel | NOT_RUN / not currently required |
| G43 Wasm→WebNN bridge | NOT_RUN |
| G44 WebNN→WebGPU bridge | NOT_RUN |
| G45 WebNN tensor capacity | NOT_RUN |
| G46 WebNN device-selection claims bounded to source evidence | PASS |
| G47 WebNN remains Layer III | PASS |
| G48 rustc book hash | PASS |
| G49 Cargo Book hash | PASS |
| G50 source locator conventions preserved | PASS |
| G51 exact local rustc/Cargo toolchain versions | NOT_RUN — toolchain absent |
| G52 installed target/cfg/features comparison | NOT_RUN |
| G53 executed explicit build-std crate list | NOT_RUN |
| G54 build-std-features explicit or claim remains open | PASS — dependent execution claims remain OPEN/NOT_RUN |
| G55 Cargo→rustc invocation capture | NOT_RUN |
| G56 compiler_builtins participation | PASS — preserved as `[GAP]`, not inferred |
| G57 build-std/Cargo.lock/sysroot provenance | PASS — preserved as `[GAP]`, not inferred |
| G58 target-spec-json remains read-only / no custom target | PASS |
| G59 rustc target facts separated from Wasm spec/browser facts | PASS |
| G60 Cargo orchestration separated from target/Core semantics | PASS |
| G61 all claims released | **PASS** — maps release `8cdbdb88c4c78b424c31cb95a6b074e0bc0df783`; direct post-release reads confirmed all 11 document stations FREE and all 8 gearing shafts FREE |

---

## 15. Final Pass-5 finding

```
PERMANENT LOGICAL LACE POSITIONS:
    REQUIRED

NATIVE 64-BIT WASM POINTERS:
    NOT DERIVED

>4 GiB SIMULTANEOUS RESIDENT NEED:
    NOT ESTABLISHED

WASM64:
    CONDITIONAL

WASM32:
    VIABLE CANDIDATE

TARGET:
    UNDECIDED

CORE:
    UNCHANGED

RM-A:
    OPEN

POINTER ACCEPTANCE:
    ABSENT

IMPLEMENTATION:
    CLOSED
```

Pass 5 answers the target question as far as the current evidence permits without manufacturing the missing implementation and device premises.

**Coordination verification:** after maps release commit `8cdbdb88c4c78b424c31cb95a6b074e0bc0df783`, direct reads confirmed FREE status for clipboards, coord, gearing-meta, graphics, history, hologram, kit, law, maps, prompts and renderer stations, plus audits, axle, cells, escape, gears, trainA, trainB and trainC gearing shafts. This receipt-finalization update changes no semantic surface.

**STOP. Pass 6 is not opened automatically.**
