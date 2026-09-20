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

## What these runs carry

| | |
|---|---|
| Pass 0 eye entries resolving here | **E1–E11** — all fourteen entries' wasm64-page rows |
| Pass 1 mechanisms resolving here | **M-R1, M-R2, M-R5, M-R6, M-R7, M-R8, M-R14, M-R15, M-R17, M-R18** |
| Deferrals **out** of run 1 | 30613 defers std behaviour to the wasm32 page — **carried by run 2.** 30654–30663 and 30669–30671 name build-std and the bootstrap route |
| Run 2 `W32` mechanisms | **M-R5, M-R6, M-R7, M-R8, M-R10, M-R13** — all twelve of their cited ranges resolve inside |
| Run 3 | **30154 only.** `M-R3`'s bare `-Zbuild-std` evidence, lifted off a page this shelf otherwise refuses |

**A deferral is not missing context.** Each sentence above is complete and states its claim; where it points elsewhere, the pointer is the content.

## What this is not

- **Not authority.** The book at the SHA is.
- **Not the shelf's reading.** [The clipboard](rust-target-clipboard.md) maps these lines onto sheets, gates and rulings. This file only shows what the lines say.
- **Not a licence to grow.** **An extract carries the lines a claim *rests on*, not the lines a claim *refuses*.** Stated in [pass 2 §2](rust-target-locators-pass-2-plan.md) and applied at once: `M-R3` rests on line 30154, so that line is here; the 152-line Emscripten page it sits on is cited only to be refused, so **151 lines stayed out**. The rule admits lines, not pages.
- **Not emission.** Nothing here bears on Φ. `[GAP]` stands.
