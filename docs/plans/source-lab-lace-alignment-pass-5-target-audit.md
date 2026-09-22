# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 5 target audit

**Status:** EXECUTED TARGET AUDIT.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 5 — CHECK THE FOUNDATION.  
**Requirements:** [source-lab-lace-alignment-pass-5-target-requirements.md](source-lab-lace-alignment-pass-5-target-requirements.md).  
**Execution base:** `2f7b8c81b35c087dd2b27c46ae8baf3f64422987`.  
**Implementation:** none.  
**Core change:** none.  
**Device execution:** NOT_RUN in this execution environment.  
**Local Rust toolchain execution:** NOT_RUN — `rustc`, `cargo`, and `rustup` are not installed in the execution environment.

---

## 1. Source identity

Human-supplied materials already admitted by the Pass-5 plan remain the source basis.

| Material | SHA-256 | Pass-5 role |
|---|---|---|
| WebAssembly 3.0 | `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` | core ISA / address semantics |
| WebGPU CRD 2026-09-15 | `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1` | host/GPU resource domain |
| WGSL CRD 2026-09-15 | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` | shader type/pointer/layout domain |
| WebNN CRD 2026-09-10 | `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` | HOST-NN tensor/operator domain |
| The rustc book | `4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3` | compiler/target facts |
| The Cargo Book | `9d7048e1ecb50ae5ed95dc64fe504cf968a4a9a7c2cc9c903e48ae38d163c0a5` | build orchestration/build-std facts |

The two newly re-supplied text files were re-hashed during execution and match their existing shelves exactly.

Source-format note:
- rustc file: 1,056,614 bytes; 31,482 LF terminators; no bare CR;
- Cargo file: 1,097,071 bytes; 21,712 LF terminators; 213 bare CR;
- existing shelf locator conventions remain authoritative for in-repo source locators.

---

## 2. Current primary web evidence used by this audit

These are **external current primary-source checks**, not replacements for the human-supplied shelves.

### W-E1 — current WebAssembly JS interface

Current WebAssembly JS API specification states:
- memory32 max declared/runtime size: 65,536 pages = 4 GiB;
- memory64 max declared field: up to the JS-safe-integer structural bound;
- **runtime maximum for a 64-bit memory: 262,144 pages = 16 GiB**;
- implementations may run out of resources below those limits.

Target consequence:

```
browser memory64 practical spec ceiling
    = 16 GiB

not
    = full 64-bit address space
```

### W-E2 — current Chrome support

Chrome 133 release notes list WebAssembly Memory64 as shipped.

Target consequence:
- general Chrome capability is no longer the primary blocker;
- the actual Pixel/installed-app path still requires execution evidence.

### W-E3 — current Rust platform support

Current official Rust platform-support page still lists:
- `wasm32-unknown-unknown`: Tier 2;
- `wasm64-unknown-unknown`: Tier 3.

Current wasm64 page still says:
- 64-bit pointers / `usize`;
- Tier 3;
- no precompiled target artifacts;
- upstream testing not well supported;
- source-build / build-std path required.

Its older sentence claiming Memory64 is not standardized conflicts with the newer human-supplied WebAssembly 3.0 core source. For standards semantics, the Wasm 3.0 source wins; for rustc-target behavior, the rustc page remains relevant.

### W-E4 — current Cargo build-std

Current official Cargo unstable documentation still describes:
- nightly Cargo + nightly rustc;
- `rust-src`;
- `-Z build-std`;
- bare default including `core`, `std`, `alloc`, `proc_macro`;
- explicit comma-separated crate lists.

This corroborates the human-supplied Cargo Book shelf.

---

## 3. Executed local preflight

The execution container returned:

```
The-rustc-book.txt SHA-256:
4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3

The Cargo Book.txt SHA-256:
9d7048e1ecb50ae5ed95dc64fe504cf968a4a9a7c2cc9c903e48ae38d163c0a5

rustc: command not found
cargo: command not found
rustup: command not found
```

Therefore:

| Probe | Result |
|---|---|
| P-RUSTC-IDENTITY | **NOT_RUN — toolchain unavailable** |
| P-RUSTC-TARGET-SPEC | **NOT_RUN — toolchain unavailable** |
| P-CARGO-INVOKE | **NOT_RUN — toolchain unavailable** |
| P-BUILDSTD-CLOSURE | **NOT_RUN — toolchain unavailable** |
| P-BUILDSTD-FEATURES | **NOT_RUN — toolchain unavailable** |
| P-BUILDSTD-LOCK | **NOT_RUN — toolchain unavailable** |
| P-BUILD64 | **NOT_RUN — toolchain unavailable** |
| P-BUILD32 | **NOT_RUN — toolchain unavailable** |
| P-ABI | **NOT_RUN — toolchain unavailable** |
| P-I64-LOGICAL | **NOT_RUN — toolchain unavailable** |
| P-MEM64-ON-W32 | **NOT_RUN — toolchain unavailable** |

A missing toolchain is not a target failure.

It simply limits the strength of this execution's toolchain verdict.

---

## 4. Actual device/browser probe status

This execution environment cannot execute on the user's Pixel/Chrome installed-WebApp path.

Therefore:

| Probe family | Result |
|---|---|
| P-64a Memory64 instantiate on Pixel | **NOT_RUN** |
| P-64b practical Memory64 growth on Pixel | **NOT_RUN** |
| P-32b practical Memory32 growth on Pixel | **NOT_RUN** |
| P-64c wasm32-vs-wasm64 local performance | **NOT_RUN** |
| P-INST installed WebApp behavior | **NOT_RUN** |
| P-RELOAD carrier/reload behavior | **NOT_RUN** |
| P-GPU-LIMITS / TRANSFER / WINDOW | **NOT_RUN** |
| P-WGSL-* | **NOT_RUN** |
| P-WEBNN-* | **NOT_RUN** |

No prior device result is silently promoted into a fresh Pass-5 execution receipt.

---

## 5. Candidate evaluation

### T-A — wasm64 / one monolithic resident Memory64

**Current status:** NOT JUSTIFIED.

Reason:
- no accepted requirement says whole Lace must be resident;
- no accepted supported domain requires >4 GiB resident memory;
- target is Tier 3 and source-build burden is material;
- browser JS runtime ceiling is 16 GiB, not a practically unlimited 64-bit domain;
- actual Pixel capacity/performance is NOT_RUN.

This scenario may become justified later if a real >4 GiB simultaneous-working-set requirement is accepted and survives device/toolchain probes.

### T-B — wasm64 / bounded working set + external/windowed carrier

**Current status:** POSSIBLE BUT CURRENTLY OVER-SPECIFIED ON KNOWN REQUIREMENTS.

If the resident set is already bounded below memory32 limits, the native 64-bit pointer ABI must justify itself through another requirement.

None is established today.

### T-C — wasm32 / bounded resident memory + wide logical indices

**Current status:** VIABLE CANDIDATE, NOT YET PROVED SUFFICIENT.

Strengths:
- Tier 2 target;
- prebuilt target installation path documented;
- mature browser-oriented target;
- 64-bit logical arithmetic values are separable from native memory addressing;
- works naturally with a windowed/external carrier model if admitted.

Unresolved:
- required resident working set;
- accepted logical Index width;
- carrier/persistence;
- actual Pixel performance/capacity;
- exact no_std first-party build shape.

### T-D — wasm32 target + Memory64 hybrid

**Current status:** UNESTABLISHED / NO TARGET CREDIT.

No toolchain execution was available. No custom target may be invented to make this scenario exist.

### T-E — custom target

**Current status:** REJECT AS DEFAULT PATH.

Both rustc source and current official docs describe custom target JSON as unstable and compiler-version-bound.

There is no established requirement that built-in wasm32/wasm64 targets cannot satisfy.

### T-F — target not yet selectable

**Current status:** SURVIVES.

The target-sensitive requirements remain open:
- RQ1 logical supported domain;
- RQ2 encoding size;
- RQ3 total persistent domain;
- RQ4 resident working set;
- RQ5 carrier/restart;
- actual device performance/capacity.

---

## 6. Decision matrix

| Criterion | wasm64 | wasm32 | Current finding |
|---|---|---|---|
| D1 semantic fit | neutral | neutral | target width must not define Lace semantics |
| D2 logical index support | can use 64-bit native `usize` | can use explicit wide logical integers independent of pointers | **UNDECIDED; logical Index type open** |
| D3 resident working-set capacity | language/browser path permits >4 GiB up to JS runtime ceiling | bounded to memory32 domain | **requirement OPEN** |
| D4 total supported Lace domain | larger one-memory domain | can exceed resident domain only through admitted carrier/window scheme | **carrier OPEN** |
| D5 browser availability | Chrome family ships Memory64; Pixel execution NOT_RUN | broad mature web target; Pixel execution NOT_RUN | wasm32 has lower support risk; neither device-proved here |
| D6 performance | NOT_RUN | NOT_RUN | no local winner |
| D7 memory overhead | 8-byte pointers/`usize` | 4-byte pointers/`usize` | wasm64 pays wider ABI; exact project cost unmeasured |
| D8 toolchain maturity | Tier 3; no prebuilt target artifacts | Tier 2; rustup target path documented | **wasm32 advantage** |
| D9 reproducibility | build-std/nightly/sysroot receipt required | simpler prebuilt path possible; exact project path still to prove | **wasm32 advantage** |
| D10 install/runtime path | general Chrome support; Pixel NOT_RUN | general browser target; Pixel NOT_RUN | no device verdict |
| D11 feature surface | Memory64 + target's merged feature assumptions | memory32 target feature set | wasm64 larger requirement surface |
| D12 future headroom | up to browser runtime Memory64 ceiling per JS API | 4 GiB one-memory ceiling | wasm64 advantage only if required |
| D13 complexity debt | higher | lower | **wasm32 advantage** |
| D14 migration cost | unresolved | unresolved | no assumption of trivial retarget |
| D15 WebGPU fit | large host memory does not enlarge GPU resource/binding limits | same separation | no wasm64 requirement |
| D16 WGSL fit | host pointer width does not create shader u64 | wide host logical index still needs explicit shader representation if needed | no wasm64 requirement |
| D17 WebNN fit | tensor u64 does not create pointer requirement | same | no wasm64 requirement |
| D18 rustc/Cargo closure | Tier-3 + source-build path; closure probes NOT_RUN | simpler official target route; project no_std closure still to prove | **wasm32 lower burden** |

---

## 7. What the evidence disproves

### D-P1 — “forever indices imply wasm64”

**DISPROVED as a derivation.**

Forever/non-wrapping indices require a declared logical domain. They do not prove `Index = usize`.

### D-P2 — “Memory64 gives the browser a 64-bit practical memory domain”

**DISPROVED.**

Current WebAssembly JS interface caps runtime 64-bit memories at 16 GiB and explicitly permits resource exhaustion below specification limits.

### D-P3 — “the GPU/NN path needs host wasm64 because its APIs use 64-bit fields/types”

**DISPROVED.**

WebGPU, WGSL, and WebNN expose separate resource/type domains. Their wide fields/types do not select host pointer width.

### D-P4 — “wasm64 is already a low-cost normal Rust target”

**DISPROVED by current Rust documentation.**

It remains Tier 3, source-build oriented, and weakly tested upstream.

---

## 8. What remains genuinely unresolved

### U-T1 — accepted supported logical domain

How many permanent retained positions must the first supported implementation promise?

### U-T2 — encoding

Without row size / reference encoding, capacity cannot be converted into row counts.

### U-T3 — carrier

Whole history resident vs durable/windowed/replayed/other remains open.

### U-T4 — resident working set

Sampling/search may eventually impose a concrete working-set requirement. It is not yet quantified.

### U-T5 — Pixel capacity/performance

No Pass-5 device probe was run.

### U-T6 — actual Rust build closure

No Pass-5 rustc/Cargo toolchain exists in this execution environment.

`compiler_builtins` and build-std/sysroot lock provenance therefore remain `[GAP]`.

---

## 9. Pass-5 target verdict

```
TARGET VERDICT:
    TARGET UNDECIDED

CURRENT WASM64 SEAL:
    NOT SUSTAINED AS A RESOLVED DECISION

WASM64:
    AVAILABLE CAPABILITY / CONDITIONAL CANDIDATE
    NOT CURRENTLY JUSTIFIED BY AN ESTABLISHED >4 GiB RESIDENT REQUIREMENT

WASM32:
    VIABLE LOWER-BURDEN CANDIDATE
    NOT YET PROVED SUFFICIENT BECAUSE SUPPORTED-DOMAIN /
    CARRIER / WORKING-SET REQUIREMENTS REMAIN OPEN
```

Answer to the Pass-5 question:

> **No current evidence establishes that the compilation target is correctly fixed as wasm64.**

That is **not** the same as proving wasm64 wrong.

The honest state is:
- the prior seal is superseded;
- target selection is reopened;
- wasm64 must earn selection from a real resident-domain requirement plus successful toolchain/device evidence;
- wasm32 must prove the admitted implementation's resident domain and logical-index/carrier scheme fit within its constraints.

---

## 10. Decision triggers

### Promote wasm64 to CONFIRMED only when all apply

1. an accepted implementation contract requires a simultaneously resident domain beyond memory32;
2. lawful windowing/carrier alternatives do not satisfy that requirement more cleanly;
3. pinned rustc/Cargo build path succeeds with explicit stdlib closure/features;
4. emitted artifact is structurally inspected;
5. actual Pixel/Chrome installed-app Memory64 probe succeeds;
6. actual practical capacity is sufficient;
7. local performance/memory cost is accepted;
8. Layer-III GPU/WGSL/WebNN boundaries do not erase the intended benefit.

### Promote wasm32 to SHOULD-BE-WASM32 when all apply

1. supported resident working set is bounded within memory32;
2. logical indices remain non-wrapping independently of native pointer width;
3. persistence/history beyond resident memory, if required, is admitted through a lawful carrier/window model;
4. actual Pixel path succeeds;
5. no required host ABI feature depends on 64-bit pointers;
6. project build/reproducibility gates pass.

### Keep UNDECIDED while any target-discriminating premise remains unruled

That is the current state.

---

## 11. Falsifier board

| Falsifier | Result |
|---|---|
| F1 old seal decides outcome | PASS — seal reopened |
| F2 Wasm capability = Rust suitability | PASS |
| F3 logical index = native pointer | PASS |
| F4 linear memory = total authoritative storage | PASS |
| F5 theoretical 64-bit address = device capacity | PASS |
| F6 product shipping = Pixel proof | PASS — Pixel remains NOT_RUN |
| F7 secondary benchmark = local performance | PASS |
| F8 wasm32 dismissed without requirements test | PASS |
| F9 wasm64 dismissed merely because Tier 3 | PASS |
| F10 custom target smuggling | PASS |
| F11 carrier selected to save target | PASS — carrier remains open |
| F12 target selected to save carrier | PASS |
| F13 unrun artifact claims | PASS |
| F14 device limits guessed | PASS |
| F15 stale rustc sentence used without qualification | PASS — standards conflict recorded |
| F16 target verdict becomes Core law | PASS |
| F17 target audit opens implementation | PASS |
| F18–F28 GPU/WGSL/WebNN width/capacity aliases | PASS |
| F29 rustc target page overrides Wasm core spec | PASS |
| F30 built-in target name = ready target | PASS |
| F31 bare build-std smuggles stdlib | PASS — no build run |
| F32 build-std feature defaults inherited | PASS — no build run |
| F33 Cargo.lock = sysroot provenance | PASS — remains GAP |
| F34 compiler_builtins inferred from silence | PASS — remains GAP |
| F35 target JSON becomes architecture | PASS |

---

## 12. Execution status against major probes

```
SOURCE IDENTITY:
    PASS

LACE REQUIREMENTS DERIVATION:
    PASS

CURRENT PRIMARY WEB SOURCE CHECK:
    PASS

LOCAL RUST TOOLCHAIN PROBES:
    NOT_RUN — toolchain absent

PIXEL / CHROME DEVICE PROBES:
    NOT_RUN — unavailable from this execution environment

GPU / WGSL / WEBNN DEVICE PROBES:
    NOT_RUN — unavailable from this execution environment

TARGET SELECTION:
    UNDECIDED BY EVIDENCE
```

This is a completed audit with an undecided target, not an incomplete audit pretending a winner.
