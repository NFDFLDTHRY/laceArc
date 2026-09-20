# Iteration 6, pass 2 — findings: the target at evidence strength

**Status:** record. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [iteration 6 plan](lace-context-iteration-6-plan.md) §2 pass 2. Web facts fetched 2026-09-19 and stamped for the sentence they support. Device facts carried from [pass 1 §5](lace-context-iter6-pass-1-findings.md) as `HUMAN_REPORTED`. In-repo facts cited by file.
**Governing rule (the human's, V14):** *Chrome-exposed device / capability claims are test subjects, not machine authority.* Every capability row below is therefore `UNESTABLISHED` **on the Pixel 9a** until the probe in §4 observes it there, whatever a release note says.
**Target identity is not this pass's to choose.** `wasm64-unknown-unknown` is **sealed by human correction** on the [WASM Spec 3.0 clipboard](../clipboards/wasm-spec-3-clipboard.md) banner. This pass records what that seal costs and what it requires. It does not re-open it.

---

## 1. The facts, each at its strength

| # | Fact | Origin | Evidence state | Where | Attach? |
|---|---|---|---|---|---|
| T1 | `wasm64-unknown-unknown` is a **Tier 3** Rust target | SOURCE (web) | `OBSERVED` — [rustc platform support page](https://doc.rust-lang.org/rustc/platform-support/wasm64-unknown-unknown.html), 2026-09-19 | web | **yes — A1** |
| T2 | Rust ships **no pre-compiled artifacts** for it; build `core` yourself via `-Zbuild-std` or a rustc built with the target | SOURCE (web) | `OBSERVED` — same page, verbatim: *"Rust does not yet ship pre-compiled artifacts for this target"* | web | A1 |
| T3 | The target is **unstable**: nightly required; maintainer: *"This target is not a stable target"*; *"you may encounter LLVM bugs"* | SOURCE (web) | `OBSERVED` — same page | web | A1 |
| T4 | That page still says memory64 is *"still in-progress and not standardized"* | SOURCE (web) | `OBSERVED` — same page; **stale** against T5 and T6 | web | A1 |
| T5 | WebAssembly Spec **Release 3.0 (2026-09-11)** includes memory64: `addrtype ::= i32 \| i64` (§2.3.11) | SOURCE (clipboard) | `OBSERVED` by the wasm-spec-3 campaign, P-T4 row; PDF sighted locally, gitignored | [clipboard](../clipboards/wasm-spec-3-clipboard.md) | already staked |
| T6 | Chrome shipped **Memory64 in M133**, and *"Shipping on Android \| 133"* | SOURCE (web) | `OBSERVED` — [blink-dev Intent to Ship](https://groups.google.com/a/chromium.org/g/blink-dev/c/5vTbd1dttwc/m/Z4UFehJBAgAJ), 2026-09-19 | web | **yes — A2** |
| T7 | *"The WebAssembly JS API constrains memories to a maximum size of 16GB"* | SOURCE (web, secondary) | `OBSERVED` — [SpiderMonkey blog, 2025-01-15](https://spidermonkey.dev/blog/2025/01/15/is-memory64-actually-worth-using.html); **to be confirmed against the JS API spec itself (A3)** | web | **yes — A3** |
| T8 | memory64 code runs **10% to over 100% slower** than memory32 because every access pays an explicit bounds check; 32-bit on 64-bit hosts can omit them by reserving 4 GB | SOURCE (web, secondary) | `OBSERVED` — same post | web | A2 (same clipboard) |
| T9 | Pixel 9a: Tensor G4 · Mali-G715 MC7 · LPDDR5 · `tegu` · 4×A520 + 3×A720 + 1×X4 | HUMAN_REPORTED | `OBSERVED` by the human from a DevCheck export, 2026-08-21 | pass 1 §5 | no |
| T10 | On the 9a, 2026-08-24: **Android 17, Chrome 151** | HUMAN_REPORTED | `OBSERVED` by the human | pass 1 §5 | no |
| T11 | WebGPU `requestAdapter()` on the 9a returned null until **Advanced Protection was disabled**; required a secure context and `--enable-unsafe-webgpu --ignore-gpu-blocklist --use-angle=vulkan` | HUMAN_REPORTED | `OBSERVED` by the human, with a chrome://gpu dump | pass 1 §5 | no |
| T12 | chrome://gpu on the 9a after the fix: `maxBufferSize` ≈ 4 GB; `shader-f16`; `subgroups` | HUMAN_REPORTED | `OBSERVED` by the human | pass 1 §5 | no |
| T13 | On githack hosting `crossOriginIsolated` is `false` — no SharedArrayBuffer, no threaded wasm | SOURCE (in-repo) + HUMAN_REPORTED | `OBSERVED` — [`docs/clock/wasm/README.md`](../clock/wasm/README.md); launcher test export 2026-09-04 | in-repo | no |
| T14 | OPFS `SyncAccessHandle` in a Worker beats Blob / `arrayBuffer` reads by ~15–22× | HUMAN_REPORTED | `OBSERVED` in the human's probe series V4/V5, SHA-hashed evidence | pass 1 §5 | no |
| T15 | **Practical wasm64 scale on the 9a: not established** | HUMAN_REPORTED | **`UNESTABLISHED`** — the human's own V17 verdict | pass 1 §5 | — |
| T16 | Install path **proven**: Chrome Android Install sheet + standalone WebAPK for Layer III, 2026-09-18T18:07, host `rawcdn.githack.com`, tick `b7ee8a10…` | SOURCE (in-repo law) + HUMAN_REPORTED | `OBSERVED` | [`githack-pwa-deploy.md`](../kit/githack-pwa-deploy.md) | no |
| T17 | A Tier-3 `core` can be built by hand: `rustc --crate-type rlib core/src/lib.rs --target <triple>` from `rust-src`, custom `--sysroot`, `RUSTC_BOOTSTRAP=1`; `compiler_builtins` alongside | HUMAN_REPORTED | `OBSERVED` by the human for `riscv32imac-unknown-none-elf`, 2026-07-27; **transfer to wasm64 is `[INFERENCE]`, `NOT_RUN`** | pass 1 §5 | A4 (cargo `build-std` docs) |
| T18 | Cellular-only; no Wi-Fi; by personal rule | HUMAN_REPORTED | `OBSERVED` | pass 1 §5 | no |
| T19 | The 2026-06-10 *"32-bit Chrome"* reading was an assisting model's guess, superseded by T12 | — | **not a fact**; retired here so no later agent cites it | pass 1 §5 | no |

---

## 2. Consequences — `[INFERENCE]`, premises named

### 2.1 What "zero external dependencies" meets on this target

**Premises:** T1–T3; the law's Implementation Law block (*"no std, no alloc unless a FIRST-PARTY branch exists whose ONE task is alloc"*; *"no crates.io"*; *"if a crate did it for you, you may not do it"*).

**Inference:** a `#![no_std]` crate for `wasm64-unknown-unknown` cannot be built without `core` and `compiler_builtins` compiled for that target, and Rust does not ship them. They come from the `rust-src` component of the toolchain — the same source tree that supplies `core` to every Tier-2 target as a prebuilt. They are **not** crates.io dependencies, **not** foreign submodules, and **not** "a crate that did it for you": `core` is the language's own floor, and `#![no_std]` *means* "link `core`, not `std`." Building them locally from `rust-src` changes where the bytes come from, not what they are.

**What is nonetheless a ruling, not an inference (→ R1 in pass 5):** whether the human accepts *rustc + `rust-src` (`core`, `compiler_builtins`) on a pinned nightly* as the **trust boundary**. C08 requires toolchain trust to be stated. This pass states it; it does not accept it.

### 2.2 What the wasm64 seal costs, so the seal is held with open eyes

**Premises:** T1–T8; the wasm-spec-3 banner (sealed).

| | `wasm64-unknown-unknown` (sealed) | `wasm32-unknown-unknown` (not the target) |
|---|---|---|
| Rust tier | 3 (T1) | 2 |
| Toolchain | nightly + `-Zbuild-std` (T2, T3) | stable, prebuilt `core` |
| Linear-memory ceiling | 16 GB by JS-API cap (T7, to confirm) | 4 GB |
| Bounds checks | explicit on every access; 10–100%+ slower (T8) | elided on 64-bit hosts |
| Engine on the device | Chrome ≥ 133; 9a runs 151 (T6, T10) — **instantiation on the 9a `UNESTABLISHED`** (T15) | universal |
| LLVM risk | maintainer warns of bugs (T3) | mature |

**Reading:** the seal buys a 4× larger supported domain for the strand at the price of a nightly toolchain, a bounds-check tax, and an unestablished on-device fact. **The seal stands; the cost is now on the record.** If the human wants to re-rule with this table in front of them, that is R2 in pass 5. Nothing here re-rules it.

### 2.3 What the target closes by circumstance, and what it does not

- **Single writer.** T13: no SharedArrayBuffer on the install host → the module is single-threaded → one writer to the strand. This is a **target circumstance**, consonant with the manifest's *"one strand suggests a single writer"* (open question 5). It does **not** close question 5 as a Core rule; a different host could isolate. Recorded as a target premise for pass 5, not a ruling.
- **Finite domain.** The branch contracts require every finite implementation to *"state its supported domain."* On this target that domain is bounded above by the linear-memory ceiling (T7) less the module's own needs, in whatever section encoding is later accepted. **This pass does not pick an encoding**, so it does not compute a row count. The number the domain statement will use is the ceiling.
- **Persistence is not closed.** Linear memory does not survive a page reload. Where the strand physically lives is silent in the Hands and is a Contract-I carrier question, **not** a target fact. T14 is evidence about a candidate carrier's speed, not a ruling that OPFS is the carrier. → R3 in pass 5.
- **GPU is not required by Core.** T11/T12 matter only to `view_proj/`'s host-side renderer (Layer III). Core has no host imports (pass 5). Advanced Protection state affects the picture, never the strand.

---

## 3. Attachments requested from the human

Per the human's standing instruction this iteration — *if any technical evidence exists external to the repo, request it as a file attachment; it becomes a process clipboard* — the following are requested. Each becomes a `docs/clipboards/*-clipboard.md` staked by the human, with a prompt written on the prompts station when the file arrives (the pattern of all nine existing shelves). **Until attached, the web-observed rows above are `[BLOCKED]` as references: cited, not staked.**

| Req | Document | Why the shape needs it | Becomes |
|---|---|---|---|
| **A1** | rustc book, *Platform Support → `wasm64-unknown-unknown`* (print to PDF, with date) | T1–T4: the tier, the no-prebuilt fact, the nightly requirement, the LLVM warning. Governs the build recipe and the trust boundary | `rust-target-clipboard` |
| **A2** | blink-dev *Intent to Ship: WebAssembly Memory64* (print to PDF) **and** the SpiderMonkey post *Is Memory64 actually worth using?* (2025-01-15, print to PDF) | T6, T8: engine shipping status on Android; the bounds-check cost | `engine-memory64-clipboard` |
| **A3** | *WebAssembly JavaScript Interface* specification (W3C / WebAssembly CG, current), the section stating the memory size limit | T7: confirm the 16 GB figure against the primary source rather than a blog | joins A2's clipboard |
| **A4** | The Cargo book, *Unstable features → `build-std`* (print to PDF) | T17 transfer: the sanctioned way to build `core` for a Tier-3 target; supersedes the hand recipe | joins A1's clipboard |
| **A5** | WHATWG *File System* standard (OPFS, `FileSystemSyncAccessHandle`) | R3 carrier ruling needs the primary source for append semantics and durability guarantees, not a benchmark | `carrier-opfs-clipboard` (only if R3 chooses OPFS) |
| **A6** | W3C *Web Application Manifest* and *Service Workers* specifications | The shell is already proven (T16); these make the shell's contract citable rather than folk knowledge | `shell-pwa-clipboard` (low priority) |

**Not requested:** anything about WebGPU, WGSL, WebNN (already staked); the WASM Spec 3.0 (already sighted and staked); any PDF of a Rust crate's documentation (no crate is admitted).

---

## 4. Probes the device must answer before any of §1 becomes machine authority

Each is a test specification in the human's V-series discipline: predeclared observation, one variable, SHA-hashed evidence. **None has been run.** All are `NOT_RUN`. None is Lace code; each is a Layer III probe page and stays outside `src/`.

| Probe | One question | Expected observation | Closes |
|---|---|---|---|
| **P-64a** | Does Chrome 151 on the 9a instantiate a module declaring an `i64`-addressed memory? | `WebAssembly.instantiate` resolves; `memory.buffer.byteLength` reported | T6 on-device |
| **P-64b** | How far does that memory grow? | `memory.grow` loop until failure; the last successful size in bytes, with the failure error text verbatim | **T15** — the central open item; also the number for §2.3's domain statement |
| **P-64c** | What is the bounds-check tax on this device? | Same kernel compiled for wasm32 and wasm64 (a sequential write of N sections into linear memory); wall time ratio | T8 on-device |
| **P-CAR** | Can an append-only byte log be written through OPFS `SyncAccessHandle` at strand-growth rates, and does it survive a reload? | bytes/s, then reload, then byte-identical read-back | R3 evidence |
| **P-INST** | Does the proven WebAPK path (T16) still install when the page instantiates a wasm64 module? | Chrome Install sheet names `rawcdn.githack.com`; app opens standalone; P-64a passes inside it | composition of T16 with T6 |

**P-64b is the one that matters.** If the 9a cannot grow a memory64 past 4 GiB, the seal's 4× domain advantage does not exist on the target device, and R2 becomes live rather than academic.

---

## 5. Coverage

| | Fraction |
|---|---|
| Target facts stamped | 19 of 19 rows carry origin + evidence state |
| Web facts confirmed against a fetched page | 8 of 8 (T1–T4, T6–T8 plus the stale note T4) |
| Web facts confirmed against a **primary** source | 6 of 8 — T7 and T8 rest on a secondary post until A3 arrives |
| Device facts observed **by this session** | **0** — every device row is `HUMAN_REPORTED`; nothing here ran on hardware |
| Probes run | 0 of 5 |
| Rulings taken | 0 |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A release note is not a phone in the hand. Emission remains `[GAP]`.
