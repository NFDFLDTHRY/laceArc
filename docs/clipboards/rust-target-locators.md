# The rustc book — locator extract · `wasm64-unknown-unknown`

**Not the book.** `refs/local/The-rustc-book.txt` at the SHA below is the source and the authority.
**This file is a reading of one page of it, carried so that a session which was never handed the book can check this shelf's claims.**
**It may never be cited in the book's place.** A locator points at the book; this shows what stands there.

**Station:** clipboards. **Shelf:** 10. **Emission:** `[GAP]`. No `src/`.
**Serves:** [`rust-target-clipboard.md`](rust-target-clipboard.md) — pass 0's fourteen eye entries and nine of pass 1's eighteen mechanisms fall in this run.
**Built by:** [pass 1](rust-target-locators-pass-1-plan.md). **Pattern:** [`graphic-a-ascii.md`](../graphics/graphic-a-ascii.md) — same rule, different unreachable source.

## Fidelity

| Field | Value |
|---|---|
| **Source** | `refs/local/The-rustc-book.txt` · 31,482 lines · gitignored (`.gitignore:22`) |
| **Source SHA-256** | `4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3` |
| **Line span** | **30597–30689**, inclusive — 93 lines |
| **Method** | `sed -n '30597,30689p'` — a mechanical cut. Nothing retyped |
| **Verbatim / elided** | **Verbatim.** No line shortened, reordered or omitted. **57 of the 93 lines carry text; 36 are blank and are dropped**, so a gap in the left column is a blank source line and nothing else. The source is CRLF; the carriage return is stripped and nothing else is. **The first build of this table claimed the same thing and was wrong** — the CR survived, 36 blank lines emitted as rows holding a bare `^M`, and this pass's own acceptance check caught it before the commit. The field earned its place on the file it is attached to |
| **Verified** | **Yes** — each row re-read against the SHA after writing |
| **Fraction of source** | 93 of 31,482 — **0.3%** |
| **This file, all runs** | source lines: run 1 (93) · run 2 (262) · run 3 (1) · run 4 (209) · run 5 (10) = **575 of 31,482 — 1.8%**, carried as **407 rows** (57 · 173 · 1 · 167 · 9), the rest being blank lines dropped. Each run carries its own fidelity block below; this row is the total, not a substitute for them |

## The span is 30597–30689, not 30597–30700

**Pass 0's header reads *"The `wasm64-unknown-unknown` page — lines 30597–30700."* The page ends at 30689.**

Lines 30690–30700 are the **`*-windows-gnu`** page — a different target, a documentation stub, tier 1/2, i686 and x86_64. Nothing on this shelf cites them and they bear on nothing here.

**Pass 1 already had it right**: its read list says *"the `wasm64-unknown-unknown` page **30597–30689** (whole)"*. The pass-0 header was never corrected to match. **Recorded here; the clipboard is another pass's executed record and is not edited by this one.**

**No claim moves.** Every eye entry and mechanism sits at or below 30689; the overshoot carried no citation.

---

## The page

| Line | Text |
|---|---|
| 30597 | wasm64-unknown-unknown |
| 30598 | Tier: 3 |
| 30600 | WebAssembly target which uses 64-bit memories, relying on the memory64 WebAssembly |
| 30601 | proposal. |
| 30606 | Target maintainers |
| 30607 | @alexcrichton |
| 30612 | Requirements |
| 30613 | This target is cross-compiled. The target supports std in the same manner as the wasm32- |
| 30614 | unknown-unknown target which is to say that it comes with the standard library but many I/O |
| 30615 | functions such as std::fs and std::net will simply return error. Additionally I/O operations |
| 30616 | like println! don’t actually do anything and the prints aren’t routed anywhere. This is the |
| 30617 | same as the wasm32-unknown-unknown target. This target comes by default with an allocator, |
| 30618 | currently dlmalloc which is ported to rust. |
| 30620 | The difference of this target with wasm32-unknown-unknown is that it’s compiled for 64-bit |
| 30621 | memories instead of 32-bit memories. This means that usize is 8-bytes large as well as |
| 30622 | pointers. The tradeoff, though, is that the maximum memory size is now the full 64-bit address |
| 30623 | space instead of the 4GB as limited by the 32-bit address space for wasm32-unknown-unknown . |
| 30625 | This target is not a stable target. The memory64 WebAssembly proposal is still in-progress and |
| 30626 | not standardized. This means that there are not many engines which implement the memory64 |
| 30627 | feature and if they do they’re likely behind a flag, for example: |
| 30629 | Nodejs - --experimental-wasm-memory64 |
| 30630 | Wasmtime - --wasm memory64 |
| 30632 | Also note that at this time the wasm64-unknown-unknown target assumes the presence of other |
| 30633 | merged wasm proposals such as (with their LLVM feature flags): |
| 30635 | Bulk memory - +bulk-memory |
| 30636 | Mutable imported globals - +mutable-globals |
| 30637 | Sign-extending operations - +sign-ext |
| 30638 | Non-trapping fp-to-int operations - +nontrapping-fptoint |
| 30640 | The wasm64-unknown-unknown target intends to match the default Clang targets for its "C" ABI, |
| 30641 | which is likely to be the same as Clang’s wasm32-unknown-unknown largely. |
| 30644 | Note: due to the relatively early-days nature of this target when working with this target |
| 30645 | you may encounter LLVM bugs. If an assertion hit or a bug is found it’s recommended to |
| 30646 | open an issue either with rust-lang/rust or ideally with LLVM itself. |
| 30649 | This target does not support panic=unwind at this time. |
| 30654 | Building the target |
| 30655 | You can build Rust with support for the target by adding it to the target list in |
| 30656 | bootstrap.toml , and the target also requires lld to be built to work. |
| 30659 | [build] |
| 30660 | target = ["wasm64-unknown-unknown"] |
| 30662 | [rust] |
| 30663 | lld = true |
| 30668 | Building Rust programs |
| 30669 | Rust does not yet ship pre-compiled artifacts for this target. To compile for this target, you will |
| 30670 | either need to build Rust with the target enabled (see “Building the target” above), or build your |
| 30671 | own copy of std by using build-std or similar. |
| 30673 | Note that the following cfg directives are set for wasm64-unknown-unknown : |
| 30675 | cfg(target_arch = "wasm64") |
| 30676 | cfg(target_family = "wasm") |
| 30677 | Testing |
| 30678 | Currently testing is not well supported for wasm64-unknown-unknown and the Rust project |
| 30679 | doesn’t run any tests for this target. Testing support sort of works but without println! it’s |
| 30680 | not the most exciting tests to run. |
| 30685 | Cross-compilation toolchains and C code |
| 30686 | Compiling Rust code with C code for wasm64-unknown-unknown is theoretically possible, but |
| 30687 | there are no known toolchains to do this at this time. At the time of this writing there is no |
| 30688 | known “libc” for wasm that works with wasm64-unknown-unknown , which means that mixing C & |
| 30689 | Rust with this target effectively cannot be done. |
---

## Run 2 — the `wasm32-unknown-unknown` page

**The page `wasm64` defers to.** `30613–30614`: *"The target supports std in the same manner as the wasm32-unknown-unknown target."* Six mechanisms carry a `W32` scope row and their evidence is here.

### Fidelity — run 2

| Field | Value |
|---|---|
| **Line span** | **30210–30471**, inclusive — 262 source lines, **173 carrying text** |
| **Method** | `sed -n '30210,30471p'`, carriage return stripped. Nothing retyped |
| **Verbatim / elided** | **Verbatim.** Blank lines dropped; a gap in the left column is a blank source line |
| **Empty cells** | **0** — counted before commit, per [the pass 2 plan](rust-target-locators-pass-2-plan.md) §4, because at this length the CRLF defect pass 1 caught would have produced ~100 junk rows |
| **Verified** | **Yes** — every non-blank source line present as a row; every `W32` locator resolves inside |
| **Novelty** | **138 of 139** lines ≥25 characters are new against the clipboard's quotes. Tested **before** building, as the plan required |

| Line | Text |
|---|---|
| 30210 | wasm32-unknown-unknown |
| 30211 | Tier: 2 |
| 30213 | The wasm32-unknown-unknown target is a WebAssembly compilation target which does not |
| 30214 | import any functions from the host for the standard library. This is the “minimal” WebAssembly |
| 30215 | in the sense of making the fewest assumptions about the host environment. This target is often |
| 30216 | used when compiling to the web or JavaScript environments as there is no standard for what |
| 30217 | functions can be imported on the web. This target can also be useful for creating minimal or |
| 30218 | bare-bones WebAssembly binaries. |
| 30220 | The wasm32-unknown-unknown target has support for the Rust standard library but many parts |
| 30221 | of the standard library do not work and return errors. For example println! does nothing, |
| 30222 | std::fs always return errors, and std::thread::spawn will panic. There is no means by |
| 30223 | which this can be overridden. For a WebAssembly target that more fully supports the standard |
| 30224 | library see the wasm32-wasip1 or wasm32-wasip2 targets. |
| 30226 | The wasm32-unknown-unknown target has full support for the core and alloc crates. It |
| 30227 | additionally supports the HashMap type in the std crate, although hash maps are not |
| 30228 | randomized like they are on other platforms. |
| 30230 | One existing user of this target (please feel free to edit and expand this list too) is the wasm- |
| 30231 | bindgen project which facilitates Rust code interoperating with JavaScript code. Note, though, |
| 30232 | that not all uses of wasm32-unknown-unknown are using JavaScript and the web. |
| 30237 | Target maintainers |
| 30238 | When this target was added to the compiler, platform-specific documentation here was not |
| 30239 | maintained at that time. This means that the list below is not exhaustive, and there are more |
| 30240 | interested parties in this target. That being said, those interested in maintaining this target are: |
| 30242 | @alexcrichton |
| 30247 | Requirements |
| 30248 | This target is cross-compiled. The target includes support for std itself, but as mentioned |
| 30249 | above many pieces of functionality that require an operating system do not work and will |
| 30250 | return errors. |
| 30252 | This target currently has no equivalent in C/C++. There is no C/C++ toolchain for this target. |
| 30253 | While interop is theoretically possible it’s recommended to instead use one of: |
| 30255 | wasm32-unknown-emscripten - for web-based use cases the Emscripten toolchain is |
| 30256 | typically chosen for running C/C++. |
| 30257 | wasm32-wasip1 - the wasi-sdk toolchain is used to compile C/C++ on this target and can |
| 30258 | interop with Rust code. WASI works on the web so far as there’s no blocker, but an |
| 30259 | implementation of WASI APIs must be either chosen or reimplemented. |
| 30261 | This target has no build requirements beyond what’s in-tree in the Rust repository. Linking |
| 30262 | binaries requires LLD to be enabled for the wasm-ld driver. This target uses the dlmalloc |
| 30263 | crate as the default global allocator. |
| 30268 | Building the target |
| 30269 | Building this target can be done by: |
| 30271 | Configure the wasm32-unknown-unknown target to get built. |
| 30272 | Configure LLD to be built. |
| 30273 | Ensure the WebAssembly target backend is not disabled in LLVM. |
| 30275 | These are all controlled through bootstrap.toml options. It should be possible to build this |
| 30276 | target on any platform. |
| 30281 | Building Rust programs |
| 30282 | Rust programs can be compiled by adding this target via rustup: |
| 30284 | $ rustup target add wasm32-unknown-unknown |
| 30287 | and then compiling with the target: |
| 30289 | $ rustc foo.rs --target wasm32-unknown-unknown |
| 30290 | $ file foo.wasm |
| 30291 | Cross-compilation |
| 30292 | This target can be cross-compiled from any host. |
| 30297 | Testing |
| 30298 | This target is not tested in CI for the rust-lang/rust repository. Many tests must be disabled to |
| 30299 | run on this target and failures are non-obvious because println! doesn’t work in the standard |
| 30300 | library. It’s recommended to test the wasm32-wasip1 target instead for WebAssembly |
| 30301 | compatibility. |
| 30306 | Conditionally compiling code |
| 30307 | It’s recommended to conditionally compile code for this target with: |
| 30309 | #[cfg(all(target_family = "wasm", target_os = "unknown"))] |
| 30312 | Note that there is no way to tell via #[cfg] whether code will be running on the web or not. |
| 30317 | Enabled WebAssembly features |
| 30318 | WebAssembly is an evolving standard which adds new features such as new instructions over |
| 30319 | time. This target’s default set of supported WebAssembly features will additionally change over |
| 30320 | time. The wasm32-unknown-unknown target inherits the default settings of LLVM which typically |
| 30321 | matches the default settings of Emscripten as well. |
| 30323 | Changes to WebAssembly go through a proposals process but reaching the final stage (stage 5) |
| 30324 | does not automatically mean that the feature will be enabled in LLVM and Rust by default. At |
| 30325 | this time the general guidance is that features must be present in most engines for a “good |
| 30326 | chunk of time” before they’re enabled in LLVM by default. There is currently no exact number |
| 30327 | of months or engines that are required to enable features by default. |
| 30329 | As of the time of this writing the proposals that are enabled by default (the generic CPU in |
| 30330 | LLVM terminology) are: |
| 30332 | multivalue |
| 30333 | mutable-globals |
| 30334 | reference-types |
| 30335 | sign-ext |
| 30336 | nontrapping-fptoint (Rust 1.87.0+, LLVM 20+) |
| 30337 | bulk-memory (Rust 1.87.0+, LLVM 20+) |
| 30339 | If you’re compiling WebAssembly code for an engine that does not support a feature in LLVM’s |
| 30340 | default feature set then the feature must be disabled at compile time. There are two |
| 30341 | approaches to choose from: |
| 30343 | If you are targeting a feature set no smaller than the W3C WebAssembly Core 1.0 |
| 30344 | recommendation – which is equivalent to the WebAssembly MVP plus the mutable- |
| 30345 | globals feature – and you are building no_std , then you can simply use the wasm32v1- |
| 30346 | none target instead of wasm32-unknown-unknown , which uses only those minimal features |
| 30347 | and includes a core and alloc library built with only those minimal features. |
| 30349 | Otherwise – if you need std, or if you need to target the ultra-minimal “MVP” feature set, |
| 30350 | excluding mutable-globals – you will need to manually specify -Ctarget-cpu=mvp and |
| 30351 | also rebuild the stdlib using that target to ensure no features are used in the stdlib. This in |
| 30352 | turn requires use of a nightly compiler. |
| 30354 | Compiling all code for the initial release of WebAssembly looks like: |
| 30356 | $ export RUSTFLAGS=-Ctarget-cpu=mvp |
| 30357 | $ cargo +nightly build -Zbuild-std=panic_abort,std --target wasm32-unknown-unknown |
| 30360 | Here the mvp “cpu” is a placeholder in LLVM for disabling all supported features by default. |
| 30361 | Cargo’s -Zbuild-std feature, a Nightly Rust feature, is then used to recompile the standard |
| 30362 | library in addition to your own code. This will produce a binary that uses only the original |
| 30363 | WebAssembly features by default and no proposals since its inception. |
| 30365 | To enable individual features on either this target or wasm32v1-none , pass arguments of the |
| 30366 | form -Ctarget-feature=+foo . Available features for Rust code itself are documented in the |
| 30367 | reference and can also be found through: |
| 30369 | $ rustc -Ctarget-feature=help --target wasm32-unknown-unknown |
| 30372 | You’ll need to consult your WebAssembly engine’s documentation to learn more about the |
| 30373 | supported WebAssembly features the engine has. |
| 30375 | Note that it is still possible for Rust crates and libraries to enable WebAssembly features on a |
| 30376 | per-function level. This means that the build command above may not be sufficient to disable |
| 30377 | all WebAssembly features. If the final binary still has SIMD instructions, for example, the |
| 30378 | function in question will need to be found and the crate in question will likely contain |
| 30379 | something like: |
| 30381 | #[target_feature(enable = "simd128")] |
| 30382 | fn foo() { |
| 30383 | // ... |
| 30384 | } |
| 30387 | In this situation there is no compiler flag to disable emission of SIMD instructions and the crate |
| 30388 | must instead be modified to not include this function at compile time either by default or |
| 30389 | through a Cargo feature. For crate authors it’s recommended to avoid # |
| 30390 | [target_feature(enable = "...")] except where necessary and instead use: |
| 30393 | #[cfg(target_feature = "simd128")] |
| 30394 | fn foo() { |
| 30395 | // ... |
| 30396 | } |
| 30399 | That is to say instead of enabling target features it’s recommended to conditionally compile |
| 30400 | code instead. This is notably different to the way native platforms such as x86_64 work, and |
| 30401 | this is due to the fact that WebAssembly binaries must only contain code the engine |
| 30402 | understands. Native binaries work so long as the CPU doesn’t execute unknown code |
| 30403 | dynamically at runtime. |
| 30408 | Unwinding |
| 30409 | By default the wasm32-unknown-unknown target is compiled with -Cpanic=abort . Historically |
| 30410 | this was due to the fact that there was no way to catch panics in wasm, but since mid-2025 the |
| 30411 | WebAssembly exception-handling proposal reached stabilization. LLVM has support for this |
| 30412 | proposal as well and when this is all combined together it’s possible to enable -Cpanic=unwind |
| 30413 | on wasm targets. |
| 30415 | Compiling wasm targets with -Cpanic=unwind is not as easy as just passing -Cpanic=unwind , |
| 30416 | however: |
| 30418 | $ rustc foo.rs -Cpanic=unwind --target wasm32-unknown-unknown |
| 30419 | error: the crate `panic_unwind` does not have the panic strategy `unwind` |
| 30422 | Notably the precompiled standard library that is shipped through Rustup is compiled with - |
| 30423 | Cpanic=abort , not -Cpanic=unwind . While this is the case you’re going to be required to use |
| 30424 | Cargo’s -Zbuild-std feature to build with unwinding support: |
| 30425 | $ RUSTFLAGS='-Cpanic=unwind' cargo +nightly build --target wasm32-unknown-unknown |
| 30426 | -Zbuild-std |
| 30429 | Note, however, that as of 2025-10-03 LLVM is still using the “legacy exception instructions” by |
| 30430 | default, not the officially standard version of the exception-handling proposal: |
| 30432 | $ wasm-tools validate target/wasm32-unknown-unknown/debug/foo.wasm |
| 30433 | error: <sysroot>/library/std/src/sys/backtrace.rs:161:5 |
| 30434 | function `std::sys::backtrace::__rust_begin_short_backtrace` failed to validate |
| 30436 | Caused by: |
| 30437 | 0: func 2 failed to validate |
| 30438 | 1: legacy_exceptions feature required for try instruction (at offset 0x880) |
| 30441 | Fixing this requires passing -Cllvm-args=-wasm-use-legacy-eh=false to the Rust compiler as |
| 30442 | well: |
| 30444 | $ RUSTFLAGS='-Cpanic=unwind -Cllvm-args=-wasm-use-legacy-eh=false' cargo +nightly |
| 30445 | build --target wasm32-unknown-unknown -Zbuild-std |
| 30446 | $ wasm-tools validate target/wasm32-unknown-unknown/debug/foo.wasm |
| 30449 | At this time there are no concrete plans for adding new targets to the Rust compiler which have |
| 30450 | -Cpanic=unwind enabled-by-default. The most likely route to having this enabled is that in a |
| 30451 | few years when the exception-handling target feature is enabled by default in LLVM (due to |
| 30452 | browsers/runtime support propagating widely enough) the targets will switch to using - |
| 30453 | Cpanic=unwind by default. This is not for certain, however, and will likely be accompanied with |
| 30454 | either an MCP or an RFC about changing all wasm targets in the same manner. In the |
| 30455 | meantime using -Cpanic=unwind will require using -Zbuild-std and passing the appropriate |
| 30456 | flags to rustc. |
| 30460 | The exception tag for panics |
| 30462 | Rust panics are currently implemented as a specific class of C++ exceptions. This is because |
| 30463 | llvm only supports throwing and catching the C++ exception tag from wasm_throw intrinsic and |
| 30464 | the lowering for the catchpads emitted by the Rust try intrinsic. |
| 30466 | In particular, llvm throw and catch blocks expect a WebAssembly.Tag symbol called |
| 30467 | __cpp_exception . If it is not defined somewhere, llvm will generate an Emscripten style import |
| 30468 | from env.__cpp_exception . We don’t want this, so we define the symbol in libunwind but |
| 30469 | only for wasm32-unknown-unknown. WASI doesn’t currently support unwinding at all, and the |
| 30470 | Emscripten linker provides the tag in an appropriate manner depending on what sort of binary |
| 30471 | is being linked. |

---

## Run 3 — one line the rule admits, and the page it sits on that the rule refuses

**`M-R3` cites line 30154 for the bare `-Zbuild-std` form.** That line is on the **`wasm32-unknown-emscripten`** page — a page this shelf cites *only to refuse it* (Page E: *"`wasm-bindgen`, Emscripten … foreign crates; JS glue; a different target"*).

**So the rule stated in [pass 2 §2](rust-target-locators-pass-2-plan.md) did its first real work here:** *an extract carries the lines a claim rests on, not the lines a claim refuses.* `M-R3` **rests on** 30154 — it is the mechanism's evidence, not a refusal — so the line enters. `30058` and `30077`, cited in the same anti-import row, **do not**.

**One line enters, 151 stay out.** The rule admits lines, not pages.

| Field | Value |
|---|---|
| **Line span** | **30154** — one line |
| **Page it is on** | `wasm32-unknown-emscripten`, 30058–30209 — **not carried** |
| **Why carried** | `M-R3` rests on it; the anti-import citations of the same page do not |
| **Verified** | Yes |

| Line | Text |
|---|---|
| 30154 | cargo +nightly -Zbuild-std build |

---

## Run 4 — the codegen-options chapter, as fourteen fragments

**These are the options [the recipe's step `B7`](rust-target-clipboard.md) fixes as inputs.** Every row of B7 cited a chapter no session could open.

**The rule that lets a fragment be carried at all, stated in [pass 3 §1](rust-target-locators-pass-3-plan.md) and inherited by any later pass:**

> **A fragment may be carried when its first line names the thing it defines.** A fragment that opens mid-sentence is not a fragment, it is a cut, and it does not go in.

**All fifteen pass.** Each table below opens at the line that is the option's own name.

### Fidelity — run 4

| Field | Value |
|---|---|
| **Spans** | **15 fragments**, 209 source lines, `770`–`1515` |
| **Method** | `sed -n 'A,Bp'` per fragment, carriage return stripped. Nothing retyped, nothing reflowed |
| **First-line test** | **15 of 15.** Re-run at execution, not carried from the plan — and it caught one the plan had dropped: **`codegen-units` 770–779** was bucketed as a command-line option because the planning sweep split the chapter at line 800. `M-R11` cites it; the locator check found it missing from the build; line 770 reads `codegen-units`, so it passes and is carried |
| **Novelty** | **118 of 120** lines ≥25 characters are new against the clipboard. Tested **before** building |
| **Empty cells** | **0** — counted before commit |
| **Conversion artifacts** | The source's PDF-to-text pass left code-block line numbers inside some ranges. **They are carried as they stand** where they fall inside a cited span; nothing is silently dropped |
| **Verified** | Every non-blank source line present as a row; `M-R6`, `M-R7`, `M-R10`, `M-R11`, `M-R12` locators resolve inside |

#### `-C codegen-units` — 770–779 · M-R11

| Line | Text |
|---|---|
| 770 | codegen-units |
| 771 | This flag controls the maximum number of code generation units the crate is split into. It takes |
| 772 | an integer greater than 0. |
| 774 | When a crate is split into multiple codegen units, LLVM is able to process them in parallel. |
| 775 | Increasing parallelism may speed up compile times, but may also produce slower code. Setting |
| 776 | this to 1 may improve the performance of generated code, but may be slower to compile. |
| 778 | The default value, if not specified, is 16 for non-incremental builds. For incremental builds the |
| 779 | default is 256 which allows caching to be more granular. |

#### `-C debug-assertions` — 808–815 · M-R11

| Line | Text |
|---|---|
| 808 | debug-assertions |
| 809 | This flag lets you turn cfg(debug_assertions) conditional compilation on or off. It takes one of |
| 810 | the following values: |
| 812 | y , yes , on , true , or no value: enable debug-assertions. |
| 813 | n , no , off or false : disable debug-assertions. |
| 815 | If not specified, debug assertions are automatically enabled only if the opt-level is 0. |

#### `-C debuginfo` — 820–829 · M-R11

| Line | Text |
|---|---|
| 820 | debuginfo |
| 821 | This flag controls the generation of debug information. It takes one of the following values: |
| 822 | 0 or none : no debug info at all (the default). |
| 823 | line-directives-only : line info directives only. For the nvptx* targets this enables |
| 824 | profiling. For other use cases, line-tables-only is the better, more compatible choice. |
| 825 | line-tables-only : line tables only. Generates the minimal amount of debug info for |
| 826 | backtraces with filename/line number info, but not anything else, i.e. no variable or |
| 827 | function parameter info. |
| 828 | 1 or limited : debug info without type or variable-level information. |
| 829 | 2 or full : full debug info. |

#### `-C link-arg / link-args` — 972–985 · M-R10

| Line | Text |
|---|---|
| 972 | link-arg |
| 973 | This flag lets you append a single extra argument to the linker invocation. |
| 975 | “Append” is significant; you can pass this flag multiple times to add multiple arguments. |
| 977 | On Unix-like targets that use cc as the linker driver, use -Clink-arg=-Wl,$ARG to pass an |
| 978 | argument to the actual linker. |
| 983 | link-args |
| 984 | This flag lets you append multiple extra arguments to the linker invocation. The options should |
| 985 | be separated by spaces. |

#### `-C link-self-contained` — 1002–1026 · M-R10

| Line | Text |
|---|---|
| 1002 | link-self-contained |
| 1003 | This flag controls whether the linker will use libraries and objects shipped with Rust instead of |
| 1004 | those in the system. It also controls which binary is used for the linker itself. This allows |
| 1005 | overriding cases when detection fails or the user wants to use shipped libraries. |
| 1007 | You can enable or disable the usage of any self-contained components using one of the |
| 1008 | following values: |
| 1010 | no value: rustc will use heuristic to disable self-contained mode if system has necessary |
| 1011 | tools. |
| 1012 | y , yes , on , true : use only libraries/objects shipped with Rust. |
| 1013 | n , no , off or false : rely on the user or the linker to provide non-Rust libraries/objects. |
| 1015 | It is also possible to enable or disable specific self-contained components in a more granular |
| 1016 | way. You can pass a comma-separated list of self-contained components, individually enabled |
| 1017 | ( +component ) or disabled ( -component ). |
| 1019 | Currently, only the linker granular option is stabilized, and only on the x86_64-unknown- |
| 1020 | linux-gnu target: |
| 1022 | linker : toggle the usage of self-contained linker binaries (linker, dlltool, and their |
| 1023 | necessary libraries) |
| 1025 | Note that only the -linker opt-out is stable on the x86_64-unknown-linux-gnu target: |
| 1026 | +linker is already the default on this target. |

#### `-C linker-flavor` — 1090–1104 · M-R10

| Line | Text |
|---|---|
| 1090 | linker-flavor |
| 1091 | This flag controls the linker flavor used by rustc . If a linker is given with the -C linker flag, |
| 1092 | then the linker flavor is inferred from the value provided. If no linker is given then the linker |
| 1093 | flavor is used to determine the linker to use. Every rustc target defaults to some linker flavor. |
| 1094 | Valid options are: |
| 1096 | em : use Emscripten emcc . |
| 1097 | gcc : use the cc executable, which is typically gcc or clang on many systems. |
| 1098 | ld : use the ld executable. |
| 1099 | msvc : use the link.exe executable from Microsoft Visual Studio MSVC. |
| 1100 | wasm-ld : use the wasm-ld executable, a port of LLVM lld for WebAssembly. |
| 1101 | ld64.lld : use the LLVM lld executable with the -flavor darwin flag for Apple’s ld . |
| 1102 | ld.lld : use the LLVM lld executable with the -flavor gnu flag for GNU binutils’ ld . |
| 1103 | lld-link : use the LLVM lld executable with the -flavor link flag for Microsoft’s |
| 1104 | link.exe . |

#### `-C lto` — 1142–1165 · M-R11

| Line | Text |
|---|---|
| 1142 | lto |
| 1143 | This flag controls whether LLVM uses link time optimizations to produce better optimized code, |
| 1144 | using whole-program analysis, at the cost of longer linking time. It takes one of the following |
| 1145 | values: |
| 1147 | y , yes , on , true , fat , or no value: perform “fat” LTO which attempts to perform |
| 1148 | optimizations across all crates within the dependency graph. |
| 1149 | thin : perform “thin” LTO. This is similar to “fat”, but takes substantially less time to run |
| 1150 | while still achieving performance gains similar to “fat”. For larger projects like the Rust |
| 1151 | compiler, ThinLTO can even result in better performance than fat LTO. |
| 1152 | n , no , off , false : disables LTO. |
| 1154 | If -C lto is not specified, then the compiler will attempt to perform “thin local LTO” which |
| 1155 | performs “thin” LTO on the local crate only across its codegen units. When -C lto is not |
| 1156 | specified, LTO is disabled if codegen units is 1 or optimizations are disabled ( -C opt-level=0 ). |
| 1157 | That is: |
| 1159 | When -C lto is not specified: |
| 1160 | codegen-units=1 : disable LTO. |
| 1161 | opt-level=0 : disable LTO. |
| 1162 | When -C lto is specified: |
| 1163 | lto : 16 codegen units, perform fat LTO across crates. |
| 1164 | codegen-units=1 + lto : 1 codegen unit, fat LTO across crates. |
| 1165 | See also linker-plugin-lto for cross-language LTO. |

#### `-C metadata` — 1170–1174 · M-R11 · M-R12

| Line | Text |
|---|---|
| 1170 | metadata |
| 1171 | This option allows you to control the metadata used for symbol mangling. This takes a space- |
| 1172 | separated list of strings. Mangled symbols will incorporate a hash of the metadata. This may be |
| 1173 | used, for example, to differentiate symbols between two different versions of the same crate |
| 1174 | being linked. |

#### `-C opt-level` — 1208–1220 · M-R11

| Line | Text |
|---|---|
| 1208 | opt-level |
| 1209 | This flag controls the optimization level. |
| 1211 | 0 : no optimizations, also turns on cfg(debug_assertions) (the default). |
| 1212 | 1 : basic optimizations. |
| 1213 | 2 : some optimizations. |
| 1214 | 3 : all optimizations. |
| 1215 | s : optimize for binary size. |
| 1216 | z : optimize for binary size, but more aggressively. Often results in larger binaries than s |
| 1218 | Note: The -O flag is an alias for -C opt-level=3 . |
| 1220 | The default is 0 . |

#### `-C overflow-checks` — 1225–1233 · M-R11

| Line | Text |
|---|---|
| 1225 | overflow-checks |
| 1226 | This flag allows you to control the behavior of runtime integer overflow. When overflow-checks |
| 1227 | are enabled, a panic will occur on overflow. This flag takes one of the following values: |
| 1229 | y , yes , on , true or no value: enable overflow checks. |
| 1230 | n , no , off or false : disable overflow checks. |
| 1232 | If not specified, overflow checks are enabled if debug-assertions are enabled, disabled |
| 1233 | otherwise. |

#### `-C panic` — 1238–1250 · M-R6

| Line | Text |
|---|---|
| 1238 | panic |
| 1239 | This option lets you control what happens when the code panics. |
| 1241 | abort : terminate the process upon panic |
| 1242 | immediate-abort : terminate the process upon panic, and do not call any panic hooks |
| 1243 | unwind : unwind the stack upon panic |
| 1245 | If not specified, the default depends on the target. |
| 1247 | If any crate in the crate graph uses abort , the final binary ( bin , dylib , cdylib , staticlib ) |
| 1248 | must also use abort . If any crate in the crate graph uses immediate-abort , every crate in the |
| 1249 | graph must use immediate-abort . If std is used as a dylib with unwind , the final binary |
| 1250 | must also use unwind . |

#### `-C strip` — 1441–1462 · M-R11 · M-R12

| Line | Text |
|---|---|
| 1441 | strip |
| 1442 | The option -C strip=val controls stripping of debuginfo and similar auxiliary data from |
| 1443 | binaries during linking. |
| 1445 | Supported values for this option are: |
| 1447 | none - debuginfo and symbols are not modified. |
| 1448 | debuginfo - debuginfo sections and debuginfo symbols from the symbol table section |
| 1449 | are stripped at link time and are not copied to the produced binary. This should leave |
| 1450 | backtraces mostly-intact but may make using a debugger like gdb or lldb ineffectual. Prior |
| 1451 | to 1.79, this unintentionally disabled the generation of *.pdb files on MSVC, resulting in |
| 1452 | the absence of symbols. |
| 1453 | symbols - same as debuginfo , but the rest of the symbol table section is stripped as well, |
| 1454 | depending on platform support. On platforms which depend on this symbol table for |
| 1455 | backtraces, profiling, and similar, this can affect them so negatively as to make the trace |
| 1456 | incomprehensible. Programs which may be combined with others, such as CLI pipelines |
| 1457 | and developer tooling, or even anything which wants crash-reporting, should usually |
| 1458 | avoid -Cstrip=symbols . |
| 1460 | Note that, at any level, removing debuginfo only necessarily impacts “friendly” introspection. - |
| 1461 | Cstrip cannot be relied on as a meaningful security or obfuscation measure, as disassemblers |
| 1462 | and decompilers can extract considerable information even in the absence of symbols. |

#### `-C symbol-mangling-version` — 1467–1477 · M-R12

| Line | Text |
|---|---|
| 1467 | symbol-mangling-version |
| 1468 | This option controls the name mangling format for encoding Rust item names for the purpose |
| 1469 | of generating object code and linking. |
| 1471 | Supported values for this option are: |
| 1473 | v0 — The “v0” mangling scheme. |
| 1475 | The default, if not specified, will use a compiler-chosen default which may change in the future. |
| 1477 | See the Symbol Mangling chapter for details on symbol mangling and the mangling format. |

#### `-C target-cpu` — 1482–1490 · M-R7

| Line | Text |
|---|---|
| 1482 | target-cpu |
| 1483 | This instructs rustc to generate code specifically for a particular processor. |
| 1485 | You can run rustc --print target-cpus to see the valid options to pass and the default |
| 1486 | target CPU for the current build target. Each target has a default base CPU. Special values |
| 1487 | include: |
| 1489 | native can be passed to use the processor of the host machine. |
| 1490 | generic refers to an LLVM target with minimal features but modern tuning. |

#### `-C target-feature` — 1495–1515 · M-R7

| Line | Text |
|---|---|
| 1495 | target-feature |
| 1496 | Individual targets will support different features; this flag lets you control enabling or disabling |
| 1497 | a feature. Each feature should be prefixed with a + to enable it or - to disable it. |
| 1498 | Features from multiple -C target-feature options are combined. |
| 1499 | Multiple features can be specified in a single option by separating them with commas - -C |
| 1500 | target-feature=+x,-y . |
| 1501 | If some feature is specified more than once with both + and - , then values passed later |
| 1502 | override values passed earlier. |
| 1503 | For example, -C target-feature=+x,-y,+z -Ctarget-feature=-x,+y is equivalent to -C |
| 1504 | target-feature=-x,+y,+z . |
| 1506 | To see the valid options and an example of use, run rustc --print target-features . |
| 1508 | Using this flag is unsafe and might result in undefined runtime behavior. |
| 1510 | See also the target_feature attribute for controlling features per-function. |
| 1512 | This also supports the feature +crt-static and -crt-static to control static C runtime |
| 1513 | linkage. |
| 1515 | Each target and target-cpu has a default set of enabled features. |


## Run 5 — the paragraph both halves of the shelf now rest on · 14925–14934

**Carried by [the forge](rust-target-clipboard.md#shelf-10-forge--the-traceability-gate-and-the-coverage-map), not by a locator pass**, because two independent claims came to rest on it and neither could be checked in-repo:

- `M-R7`'s soundness obligation — *build all code, the standard library included, with a common set of target-features* — which the recipe's step **B5** turns into a check;
- the cargo half's new sub-question **d**, opened when [`cargo-build-std-clipboard.md`](cargo-build-std-clipboard.md) found that `build-std-features` carries `panic-unwind` as a **default**.

**First-line test: PASS at 14925 — and the clipboard's own locator fails it.** [Page A](rust-target-clipboard.md) and [Page D](rust-target-clipboard.md) both cite this paragraph as **`14926–14934`**. Line 14926 opens *"Most target-feature problems arise, when mixing code…"* — mid-thought, with no label. Under the rule this file inherited, that is a cut and not a fragment. **The label is one line above, at 14925: `Target Features`.** The span carried here begins there.

**The clipboard's citation is not wrong about where the sentences are** — every quoted fragment in that row stands inside 14926–14934, and the gate confirms it. It is one line short of being *citable* under the shelf's own rule. Recorded; the executed pass bodies are not edited.

**Novelty: 6 of 7** lines ≥25 characters are new against the clipboard, tested before building. **9 rows · 10 source lines · 1 blank dropped · 0 empty cells.**

| Line | Text |
|---|---|
| 14925 | Target Features |
| 14926 | Most target-feature problems arise, when mixing code that have the target-feature enabled |
| 14927 | with code that have it disabled. If you want to avoid undefined behavior, it is recommended to |
| 14928 | build all code (including the standard library and imported crates) with a common set of target- |
| 14929 | features. |
| 14931 | By default, compiling your code with the -C target-feature flag will not recompile the entire |
| 14932 | standard library and/or imported crates with matching target features. Therefore, target |
| 14933 | features are generally considered as unsafe. Using #[target_feature] on individual functions |
| 14934 | makes the function unsafe. |

---

## What these runs carry

| | |
|---|---|
| Pass 0 eye entries resolving here | **E1–E11** — all fourteen entries' wasm64-page rows |
| Pass 1 mechanisms resolving here | **M-R1, M-R2, M-R5, M-R6, M-R7, M-R8, M-R14, M-R15, M-R17, M-R18** |
| Deferrals **out** of run 1 | 30613 defers std behaviour to the wasm32 page — **carried by run 2.** 30654–30663 and 30669–30671 name build-std and the bootstrap route |
| Run 2 `W32` mechanisms | **M-R5, M-R6, M-R7, M-R8, M-R10, M-R13** — all twelve of their cited ranges resolve inside |
| Run 4 | **15 codegen-option fragments**, 209 lines — `M-R6`, `M-R7`, `M-R10`, `M-R11`, `M-R12`, and every option step `B7` fixes as a recipe input |
| Run 3 | **30154 only.** `M-R3`'s bare `-Zbuild-std` evidence, lifted off a page this shelf otherwise refuses |
| Run 5 | **14925–14934.** The *Target Features* known-issue paragraph — `M-R7`'s obligation, step `B5`'s reason, and the paragraph the cargo half's sub-question **d** now points at. Carried with the label line the clipboard's locator omits |

**A deferral is not missing context.** Each sentence above is complete and states its claim; where it points elsewhere, the pointer is the content.

## What this is not

- **Not authority.** The book at the SHA is.
- **Not the shelf's reading.** [The clipboard](rust-target-clipboard.md) maps these lines onto sheets, gates and rulings. This file only shows what the lines say.
- **Not a licence to grow.** **An extract carries the lines a claim *rests on*, not the lines a claim *refuses*.** Stated in [pass 2 §2](rust-target-locators-pass-2-plan.md) and applied at once: `M-R3` rests on line 30154, so that line is here; the 152-line Emscripten page it sits on is cited only to be refused, so **151 lines stayed out**. The rule admits lines, not pages.
- **Not emission.** Nothing here bears on Φ. `[GAP]` stands.
