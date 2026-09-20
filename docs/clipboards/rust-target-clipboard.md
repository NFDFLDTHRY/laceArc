# CLIPBOARD — laceArc ← The rustc book (Rust toolchain · target `wasm64-unknown-unknown`)

**Shelf 10 forge, 2026-09-20 — read this first.** Every quoted fragment on this page has been re-read against its own cited lines in the SHA-verified file: **44 of 44 stand byte-verbatim, 0 failures.** The [coverage map](#f2--the-coverage-map-what-is-reachable-in-repo-and-what-still-needs-the-book) says which claims a session without the book can check — **9 of 18 mechanisms fully, 11 of 14 pass-0 eyes, 49 of 79 cited ranges** — and what is left is **25 ranges, 150 lines**, listed in order. One citation on this page (`14926–14934`) fails the shelf's own first-line rule and is repaired by a carry, not by an edit. See [the forge section](#shelf-10-forge--the-traceability-gate-and-the-coverage-map). The pass bodies below are dated records and stand unedited.

**Current A4 availability, 2026-09-20 — later pass 4 source arrival:** the supplied Cargo Book is now **A4 AVAILABLE / BOUNDED SOURCE MAPPING COMPLETE**; read the [A4 Cargo source mapping](#repository-update-pass-4--a4-cargo-source-mapping) for the supported selection syntax and remaining lockfile, component-identity and artifact questions. This later arrival supersedes the earlier A4-absent/next status in the A1 and target-evidence banners below. Those banners, mapping bodies and absence receipts remain dated records. A4's arrival does not close every question assigned to it or authorize a build or ruling.

**Current A1 availability, 2026-09-20 — repository update pass 4:** the newly supplied rustc text exactly matches this shelf's recorded A1 hash, byte count and line count. The [dated re-sighting](#repository-update-pass-4--a1-re-sighting) records the identity and targeted passages read. The earlier twelve-file/A1-absent statements remain dated records; A4 is still absent and next. No build, artifact check or ruling follows from restored source access.

**Current target evidence, 2026-09-20:** read the [repository update pass 2 carry](#repository-update-pass-2--target-evidence-carry) alongside Pages B/D/F/G/X. The Wasm grammar and optional name carrier have now been sighted; name-based crate absence and configured feature-subset enforcement remain unestablished. Original Pass 0/1 bodies, statuses and receipts remain dated records, not a fresh build or acceptance claim. Cargo A4 is still next.

**[III] Shadow / read-only. Hands win. POINTER emission = `[GAP]`.**
**SPECIAL:** this is **toolchain** admission for the sealed compile target — how Rust reaches `wasm64-unknown-unknown` — **NOT** Core, **NOT** Graphic D, **NOT** a second target (the target itself is sealed on the [wasm-spec-3 shelf](wasm-spec-3-clipboard.md); this shelf is the compiler beside it).

```
+======================================================================+
|  TOOLCHAIN — rustc  -->  wasm64-unknown-unknown  (Tier 3)              |
|  Staked by the human 2026-09-19 22:54 PT by attachment (A1).           |
|  Document never enters git. Sighting enters. Eye entries are short.    |
|  KEEP-read-as-toolchain · FORBID-as-Core · SILENT-for-Lace-append.     |
|  Zero crates.io / foreign deps still law. No src/ until emission.      |
+======================================================================+
```

**Source:** *The rustc book* (rust-lang.org; the compiler's own documentation), **version not stated in the attachment**; identity is the file. Attachment: `4cd6a54b-The-rustc-book.txt`, a text conversion; **1,056,614 bytes · 31,482 lines**; **SHA-256 `4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3`**. Working copy (gitignored): `refs/local/the-rustc-book.txt`. **Never git-add it.** Locators are line numbers into that exact file.

**Authority:** [graphics A–D](../graphics/README.md) → [manifest](../systems-manifest.md) → [law](../law-why-these-documents.md) → [AGENTS.md](../../AGENTS.md) Implementation Law → the wasm-spec-3 shelf (target seal) → this shelf (toolchain, lowest).

---

## Pass 0 — staking receipt: sighting, eye entries, stamps · EXECUTED

*Relabelled 2026-09-19 22:57 PT, in the open: this section was first headed "Pass 1". In the shelf pattern pass 1 is the **mapping** (pages A–H, X); this is the sighting that a staking produces. The mapping has its own plan: [`rust-target-pass-1-plan.md`](rust-target-pass-1-plan.md).*
*Locator correction, pass 1 (2026-09-19 23:2x PT), in the open: six line locators in the first table (E2, E3, E4, E6, E8, E11) were 3–6 lines off — transcribed from a paged view. Replaced here with values verified by `grep -n` against the SHA-verified file; the former values stand in Pass 1 §A0 so the correction is visible, not silent.*

### The `wasm64-unknown-unknown` page — lines 30597–30700

| Eye | Verbatim (short) | Line | Bears on |
|---|---|---|---|
| E1 | *"Tier: 3"* | 30598 | T1 → **SOURCE** |
| E2 | *"Rust does not yet ship pre-compiled artifacts for this target. To compile for this target, you will either need to build Rust with the target enabled … or build your own copy of std by using build-std or similar."* | 30669–30671 | T2 → **SOURCE**; R1 |
| E3 | *"This target is not a stable target. The memory64 WebAssembly proposal is still in-progress and not standardized."* | 30625–30626 | T3 → SOURCE; **T4 stale-note confirmed** — Spec 3.0 (2026-09-11) includes memory64 and Chrome shipped it in M133 (pass 2 T5, T6); the book lags |
| E4 | *"due to the relatively early-days nature of this target … you may encounter LLVM bugs"* | 30644–30646 | sheet T failure model → SOURCE |
| **E5** | *"This target does not support panic=unwind at this time."* | 30649 | **new**: `panic = "abort"` is forced, not chosen — sheet T postcondition now sourced |
| **E6** | *"This target comes by default with an allocator, currently dlmalloc which is ported to rust."* | 30617–30618 | **new**: the target's **std** carries dlmalloc; a `#![no_std]` build must **prove** it links neither — the crate map's Page F caution is now a sourced obligation, not a caution |
| **E7** | assumed proposals: *bulk-memory · mutable-globals · sign-ext · nontrapping-fptoint* (with LLVM flags) | 30632–30638 | **new**: the module will carry these features; a binary check (G2/G3 kin) can list the feature section and refuse anything else |
| **E8** | *"the maximum memory size is now the full 64-bit address space instead of the 4GB"* | 30622–30623 | **new tension, named**: the toolchain's view vs the engine's **16 GB JS-API cap** (pass 2 T7, A3 pending). The book states the address space; the engine states the limit. Both true; the smaller binds |
| E9 | *"Currently testing is not well supported … the Rust project doesn't run any tests for this target."* | 30678–30680 | trust row: an **untested** target; every claim about a build is `NOT_RUN` until run |
| E10 | *"there is no known 'libc' for wasm that works with wasm64-unknown-unknown … mixing C & Rust … effectively cannot be done"* | 30686–30689 | consonant with the law (no C, no FFI); irrelevant to a pure `no_std` build; noted |
| E11 | cfg: `target_arch = "wasm64"`, `target_family = "wasm"` | 30673–30676 | sheet T build facts |

### The *Custom Targets* page — lines 14871–14895 · and the tier table — line 18878

| Eye | Verbatim (short) | Line | Bears on |
|---|---|---|---|
| E12 | *"To use a custom target, see the (unstable) build-std feature of cargo."* | 14885 | **A4** (Cargo `build-std`) is the next document; the rustc book points at it and does not contain it |
| E13 | *"The target JSON properties are not stable and subject to change. Always pin your compiler version when using custom targets!"* | 14887–14888 | **R1's "pinned nightly" is now sourced advice**, not the editor's |
| E14 | tier table row: `wasm64-unknown-unknown  ?  WebAssembly` | 18878 | the `?` in the std column: std support unmarked — consonant with E2 |

### Stamps

| Stamp | Applies to |
|---|---|
| **KEEP-read-as-toolchain** | E1–E14: how rustc reaches the sealed target |
| **FORBID-as-Core** | nothing on this shelf is a Lace mechanism; `dlmalloc`, `std`, `panic` strategy, cfgs are toolchain facts |
| **FORBID-as-Lace-store** | the "full 64-bit address space" is not `L`'s domain; the strand's domain is stated by the branch contracts and bounded by the engine (E8) |
| **SILENT-for-Lace-append** | the book says nothing about when a section is appended; Φ `[GAP]` |
| **PROPOSAL-only** | any build recipe derived from E2/E12 (`-Zbuild-std=core` on a pinned nightly with `rust-src`) is a recipe, not a proof, until a build is run and its import section is empty (G2) |

### What this shelf changes in the tree

| Claim | Was | Now |
|---|---|---|
| T1–T4 (pass 2) | SOURCE (web) · `[BLOCKED]` as references | **SOURCE (staked document)** — A1 closed |
| sheet T `panic = "abort"` | editor's postcondition | **sourced** (E5) |
| crate map Page F "no_std does not itself prevent std linkage" | caution | **sourced obligation** (E6): prove dlmalloc and std are absent from the effective build |
| R1 "pinned nightly" | editor's premise | **sourced advice** (E13) |
| pass 2 §2.2 cost table, "16 GB" | secondary source | **a named tension** (E8) until A3 arrives |
| companion **G-III-4a** | web adjunct | gains a primary-source pointer (thin, pass 2 of this shelf) |

### Steward refuse (must reject)

1. *"The book says 64-bit address space, so the strand is unbounded on this target"* → **FORBID**; the engine's cap binds; the domain is declared, never assumed.
2. *"The target ships an allocator, so `alloc` is free"* → **FORBID**; `#![no_std]` links no std; the law's first-party-alloc rule stands; prove absence in the binary.
3. *"Compiling for wasm64 means the target is accepted / the gate is open"* → **FORBID** (same as the wasm-spec-3 shelf's refuse 5).
4. *"The book is the spec"* → **FORBID**; the spec is the wasm-spec-3 shelf; this shelf is the compiler.

### Coverage

| | |
|---|---|
| Pages sighted | the `wasm64-unknown-unknown` page (whole); *Custom Targets* (head); the tier table (one row) |
| Book read | **~130 of 31,482 lines** — this shelf cites what it read and no more; passes 2–6 widen it |
| Facts upgraded to SOURCE | 4 (T1–T4); new sourced facts 4 (E5–E8) |
| Anything about Φ | none |

Pass 0 receipt: eye entries verbatim from the attached file at the cited lines; SHA verified; no PDF/text added to git; `refs/local/` gitignored (`.gitignore:22`). Emission `[GAP]`. Shoe in hands, or no.

---

## Pass 1 — mapping (pages A–H, X) · EXECUTED

**Plan:** [`rust-target-pass-1-plan.md`](rust-target-pass-1-plan.md) — the desired result **B** (rows b1–b7) is stated there and not restated here. **Proceed:** the human, 2026-09-19 23:03 PT. **Editor:** Claude Fable 5.1; one hand; propose / attack / resolve declared below. **Emission:** `[GAP]`. Nothing run: no toolchain was invoked; every recipe row is `NOT_RUN`.

**Read this pass** (line locators into the SHA-verified file, all verified by `grep -n`): the `wasm64-unknown-unknown` page **30597–30689** (whole); the `wasm32-unknown-unknown` page **30210–30471** (whole — the wasm64 page defers to it at 30613–30617); *Custom Targets* + *Custom Target Lookup Path* **14871–14917**; *Known Issues → Target Features* **14925–14934**; *Unstable options* **14815–14821**; tier definitions **18296–18305**, **18459–18475**; *Tier 3 target policy* **19087–19116**; codegen options `panic` 1238–1250 · `target-feature` 1495–1515 · `target-cpu` 1482–1490 · `strip` 1441–1462 · `symbol-mangling-version` 1467–1477 · `opt-level` 1208–1220 · `lto` 1142–1165 · `codegen-units` 770–779 · `debuginfo` 820–829 · `debug-assertions` 808–815 · `overflow-checks` 1225–1233 · `metadata` 1170–1174 · `link-arg`/`link-args` 972–985 · `link-self-contained` 1002–1026 · `linker-flavor` 1090–1104; `--print` **291**, **565–650**, **722–728**; `--target` **332–333**; `-V` **394**, **15683**; *Symbol Mangling* **16787–16823**, **16962–16978**; the `nvptx64-nvidia-cuda` page's build-std lines **26528–26540**, **26586–26592** (another target — a mechanism the book names, not a wasm64 statement). ≈ **700 of 31,482 lines**; pass 0's ~130 are inside them.

### A0 — Pass 0 locator correction (Rule Zero: replaced above, attached here)

| Eye | Recorded by pass 0 | Verified this pass | Eye | Recorded | Verified |
|---|---|---|---|---|---|
| E2 | 30666–30668 | **30669–30671** | E6 | 30611–30612 | **30617–30618** |
| E3 | 30619–30620 | **30625–30626** | E8 | 30616–30617 | **30622–30623** |
| E4 | 30643–30645 | **30644–30646** | E11 | 30673–30675 | **30673–30676** |

E1, E5, E7, E9, E10, E12, E13, E14 verified as recorded. Cause: pass 0 transcribed from a paged view with a 3–6 line drift; the SHA and the quoted words were right, the numbers were not. A locator that is wrong by five lines still lands on the page — and is still wrong. Corrected in the open.

### Page A — intuition: every toolchain mechanism the book names for this target

Scope column: **W64** = the wasm64 page · **W32** = the wasm32 page the wasm64 page defers to · **GEN** = a general chapter (applies to every target) · **OTHER** = another target's page (a mechanism the book names; its application to wasm64 is `NOT_RUN`).

| M-R | Mechanism | Verbatim (short) | Lines | Scope |
|---|---|---|---|---|
| **M-R1** | **Tier 3**, and what the tier means | *"Tier: 3"* · *"Tier 3 targets are those which the Rust codebase has support for, but which the Rust project does not build or test automatically, so they may or may not work. Official builds are not available."* · std column `?` = *"unknown or a work-in-progress"* · row `wasm64-unknown-unknown  ?  WebAssembly` | 30598 · 18460–18462 · 18468 · 18878 | W64 · GEN |
| **M-R2** | **No prebuilt artifacts → two routes**: build Rust itself with the target (bootstrap.toml `target = [...]`, `lld = true`), or build-std | *"Rust does not yet ship pre-compiled artifacts for this target. To compile for this target, you will either need to build Rust with the target enabled … or build your own copy of std by using build-std or similar."* | 30669–30671 · 30654–30663 | W64 |
| **M-R3** | **build-std** (Cargo, nightly), with a crate list; `rust-src` component | *"see the (unstable) build-std feature of cargo"* · `-Zbuild-std=panic_abort,std` (crate-list form) · bare `-Zbuild-std` · **`rustup component add rust-src --toolchain nightly` and build using `-Z build-std=core`** · *"Cargo's -Zbuild-std feature, a Nightly Rust feature"* | 14885 · 30357 · 30425–30426, 30154 · **26538–26539**, 26587–26590 · 30361 | GEN · W32 · **OTHER** (nvptx64) |
| **M-R4** | **Nightly + `-Z unstable-options`** | *"they require passing the -Z unstable-options command-line flag"* · `rustc +nightly -Z unstable-options --print target-spec-json` | 14815–14821 · 14876 | GEN |
| **M-R5** | **std / alloc / dlmalloc on the target** | *"comes with the standard library but many I/O functions … will simply return error … println! don't actually do anything … This target comes by default with an allocator, currently dlmalloc"* · W32: *"full support for the core and alloc crates"* · *"uses the dlmalloc crate as the default global allocator"* | 30613–30618 · 30226 · 30262–30263 | W64 · W32 |
| **M-R6** | **Panic strategy** | `-C panic` = `abort` \| `immediate-abort` \| `unwind`; *"If any crate in the crate graph uses abort, the final binary … must also use abort"* · W64: *"does not support panic=unwind at this time"* · W32: default `-Cpanic=abort`; unwind needs `-Zbuild-std` + the exception-handling proposal + `-Cllvm-args=-wasm-use-legacy-eh=false` | 1238–1250 · 30649 · 30409, 30415–30426, 30441–30445 | GEN · W64 · W32 |
| **M-R7** | **Assumed proposals / target features**, and how they are bounded | the four assumed proposals with LLVM flags · `-C target-feature` (+/−; *"unsafe"*; *"Each target and target-cpu has a default set of enabled features"*) · `-C target-cpu` (`mvp` = *"a placeholder in LLVM for disabling all supported features by default"*) · `rustc --print target-features` · `rustc -Ctarget-feature=help --target …` · **Known Issues:** *"build all code (including the standard library and imported crates) with a common set of target-features"* · **per-function `#[target_feature(enable = …)]` escapes the flags** · *"WebAssembly binaries must only contain code the engine understands"* · W32 default set (LLVM's generic CPU; *"will additionally change over time"*) | 30632–30638 · 1495–1515 · 1482–1490, 30356–30363 · 645–650 · 30369 · **14926–14934** · **30375–30390** · **30401–30402** · 30318–30337 | W64 · GEN · W32 |
| **M-R8** | **cfg set** | `cfg(target_arch = "wasm64")`, `cfg(target_family = "wasm")` · `rustc --print cfg` · W32: *"no way to tell via #[cfg] whether code will be running on the web"* | 30673–30676 · 604–627 · 30309–30312 | W64 · GEN · W32 |
| **M-R9** | **Target resolution and custom targets** | *"if TARGET is the name of a built-in target, use that"* (before a file path, before `RUST_TARGET_PATH`) · `--print target-list` · custom target JSON via `--print target-spec-json` · *"The target JSON properties are not stable and subject to change. Always pin your compiler version when using custom targets!"* · JSON schema shipped in the sysroot, itself unstable | **14906–14917** · 14863–14865 · 14871–14885 · 14887–14888 · 14893–14901 | GEN |
| **M-R10** | **Linking: lld / `wasm-ld`** | *"the target also requires lld to be built to work"* · W32: *"Linking binaries requires LLD to be enabled for the wasm-ld driver"* · `-C linker-flavor` value `wasm-ld` · `-C link-arg` / `link-args` · `-C link-self-contained` (granular `linker` toggle stabilised only on x86_64-linux) | 30656, 30662–30663 · 30261–30262 · 1090–1100 · 972–985 · 1002–1026 | W64 · W32 · GEN |
| **M-R11** | **Artifact-shaping codegen options** | `-C opt-level` (`s`, `z` size) · `-C lto` (thin-local default; `codegen-units=1 + lto`) · `-C codegen-units` (default 16 non-incremental) · `-C debuginfo` (default none) · `-C strip` = `none` \| `debuginfo` \| `symbols` · `-C debug-assertions` (on at opt-level 0) · `-C overflow-checks` (follow debug-assertions) · `-C metadata` (hashed into mangled symbols) | 1208–1220 · 1142–1165 · 770–779 · 820–829 · 1441–1462 · 808–815 · 1225–1233 · 1170–1174 | GEN |
| **M-R12** | **Symbol names** | `-C symbol-mangling-version` (only `v0` listed; default compiler-chosen) · *"There is currently one stable mangling scheme version - v0"* · v0 crate-root = `C` + crate name (+ disambiguator) · `#[no_mangle]` / `#[export_name]` fix an exact exported name | 1467–1477 · 16820–16823 · 16962–16970 · 16797–16801 | GEN |
| **M-R13** | **Testing status** | *"the Rust project doesn't run any tests for this target"* · W32: *"not tested in CI"* | 30678–30680 · 30298–30301 | W64 · W32 |
| **M-R14** | **C interop** | *"no known 'libc' … mixing C & Rust with this target effectively cannot be done"* · C ABI intends to match Clang wasm32 | 30686–30689 · 30640–30641 | W64 |
| **M-R15** | **Cross-compiled; `--target`; version** | *"This target is cross-compiled"* · `--target: select a target tuple to build` · `-V/--version` · `rustc -V --verbose` | 30613 · 332–333 · 394 · 15683 | W64 · GEN |
| **M-R16** | **Toolchain self-description (`--print`)** — the raw material of a build receipt | `sysroot` · `target-libdir` · `host-tuple` · `cfg` · `target-list` · `target-cpus` · `target-features` · `link-args` (*"the full linker invocation"*) · `target-spec-json` (nightly) | 565–570 · 575–582 · 587–599 · 604–627 · 632–633 · 638–640 · 645–650 · 722–728 · 14876–14882 | GEN |
| **M-R17** | **LLVM-bug caveat** | *"you may encounter LLVM bugs"* | 30644–30646 | W64 |
| **M-R18** | **Memory and pointer width** | *"usize is 8-bytes large as well as pointers"* · *"the full 64-bit address space instead of the 4GB"* · engines *"likely behind a flag"* (Node, Wasmtime examples) | 30620–30623 · 30625–30630 | W64 |

**Count: 18** (plan expected 10–12; the codegen and `--print` chapters supplied the surplus — see Page X).

### Page B — mechanism → project surface (the mapping)

Surfaces: sheets T · R · H (the [crate proposal](../plans/lace-context-iter6-pass-5-crate-proposal.md)); crate map [Page E / Page F](../plans/rust-nostd-crate-map.md); rulings R1 · R11 · R12 ([brief](../plans/reduction-pass-5-rulings-brief.md)); gates G1–G7 ([inventory §5](../plans/lace-context-iter7-pass-2-compute-and-inventory.md)), G8 / G9 (proposed by the plan), **G10** (proposed here); recipe rows b1–b7 (the plan §1); probes ([pass 2 findings §4](../plans/lace-context-iter6-pass-2-findings.md)).

| M-R | Touches | Settles | Leaves open |
|---|---|---|---|
| M-R1 | sheet T (T1); R1; failure model; companion G-III-4a | the tier and its meaning are **SOURCE**: *no official builds, may or may not work, std support unknown* | nothing — a tier is a fact about the project, not the artifact |
| M-R2 | sheet T (T2); **b7**; R1 | two routes exist; the **rustc-build route** (bootstrap.toml + lld) is a *toolchain* build, never a project branch (Page H) | which route the recipe uses is A4's to define (build-std) — the book only names both |
| M-R3 | **b1** (rust-src is a component of the pinned nightly) · **b2 / b3** (a `core`-only crate list is *named* by the book) · sheet T postcondition *"`-Zbuild-std=core` from `rust-src`"* — **now carries a book locator (26538–26539), scope OTHER** | the mechanism exists and takes a crate list; `core` alone is a form the book shows | whether `-Z build-std=core` on **wasm64** links neither `alloc` nor `dlmalloc`, and whether `compiler_builtins` must be listed — **A4**, then a build (`NOT_RUN`) |
| M-R4 | R1; b1 | nightly is inside the trust boundary by necessity, not preference (`-Z` flags are nightly-only) | R1 itself (the human's) |
| M-R5 | **b3**; crate map Page F (*"no_std does not itself prevent std linkage"*); refuse 2 | the obligation is **sourced**: the target's std *does* carry dlmalloc, so absence must be *shown* | how absence is shown: Page D step B5 (a name-section scan) — carrier on the spec shelf, not yet sighted there |
| M-R6 | **b4**; sheet T `panic = "abort"` | abort is forced on wasm64 (30649) **and** the graph rule (1247–1250) makes one `abort` crate bind the whole link; the book's own account of unwinding on wasm is the exception-handling proposal (30410–30413), so the artifact evidence of abort is *no exception-handling constructs* — **the plan's b4 check "no unwind tables" borrowed a native-target word; corrected: validate with the exception-handling feature disabled — no tag section, no `try`/`throw` instructions** | the EH-disabled validation is a spec-shelf check (sighting request, Page G) |
| M-R7 | **b5**; **G8**; sheet T *"target-feature set per the probe results"*; R11 (`+atomics` would be a fifth feature) | three sourced facts reshape G8: (i) flags can be escaped per function (30375–30390), (ii) the binary must contain only what the engine understands (30401–30402), (iii) core must be built with the same feature set (14926–14934). **Therefore G8 as planned — "parse the target-features section" — is insufficient: the sound check is *validate the module under exactly the allowed feature set*; the `target_features` custom section is at best a witness and is not in this book nor sighted on the spec shelf** | whether `-Ctarget-cpu=mvp` on wasm64 keeps memory64 (`UNESTABLISHED`; a probe question, Page G); the allowed set itself (R11 for atomics) |
| M-R8 | sheet T build facts; door code | the cfg names for gating are SOURCE | none |
| M-R9 | **b1**; anti-imports (Page E) | `--target wasm64-unknown-unknown` resolves to the **built-in** target before any file or search path (14910) — the name cannot be shadowed by a JSON; the built-in spec JSON printed at the pinned nightly is a receipt line (M-R16) | none |
| M-R10 | R1 (lld ships with the toolchain, or does not); sheet H (exports are fixed at link) | lld is required — SOURCE | whether the pinned nightly's toolchain provides a working `wasm-ld` for wasm64 without a source build — `NOT_RUN` (probe, Page G); `link-self-contained` on this target is undocumented |
| M-R11 | **b3** (scan carrier survives only under `-C strip=none`) · **b1 / G10** (reproducibility: `codegen-units`, `lto`, `metadata` are inputs) · distribution size (`opt-level=z`; not law) | the checked artifact must keep its symbol names; the recipe must fix every artifact-shaping option as an *input* | whether `-C strip=none` is the default when `--emit`-ing a `.wasm` through `wasm-ld` — the book does not say for wasm; assume nothing, set it explicitly |
| M-R12 | **b3** (scan vocabulary: v0 crate roots `alloc`, `dlmalloc`, `std`, `panic_unwind`) · **G3** (exact export names via `#[export_name]` / `#[no_mangle]` — 16797–16801) | v0 is the one stable scheme and carries crate names, so a scan for a crate root is well-defined | the scan's *carrier* in a `.wasm` — the name custom section — is Spec 3.0's (sighting request) |
| M-R13 | every build claim; G4 | the project runs no tests for this target: **G4 (the D1 replay) is the only functional test that exists, and it is ours** | — |
| M-R14 | law (no C, no FFI) | consonant; SILENT for a pure `no_std` build | — |
| M-R15 | b1 receipt (host tuple, version) · the [distribution model](../kit/distribution-model.md) | the 9a is never a build host; the build host is recorded, not trusted | — |
| M-R16 | **b1 receipt** — its content is now sourced: `rustc -V --verbose`, `--print sysroot`, `host-tuple`, `cfg --target`, `target-features --target`, `target-spec-json --target` (nightly), `link-args` | what a receipt *can* contain from the toolchain itself | the `rust-src` hash: the book names the component, not its identity — **A10** (rustup) or A4 |
| M-R17 | sheet T failure model (T3) | already SOURCE | — |
| M-R18 | sheet H index width (**`usize` = 8 bytes, sourced**) · E8 tension · FORBID-as-Lace-store | pointer width on this target | the engine cap (A3); the strand's declared domain (branch contracts) |

### Page C — stamps

| Stamp | M-R |
|---|---|
| **KEEP-read-as-toolchain** | all eighteen |
| **FORBID-as-Core** | all eighteen — none is a Lace mechanism |
| **FORBID-as-Lace-store** | M-R5 (a heap allocator is not the strand); M-R18 (the address space is not `L`'s domain) |
| **SILENT-for-Lace-append** | all eighteen — the book has no sentence about when a section is appended; Φ `[GAP]` |
| **PROPOSAL-only** | the recipe (Page D); the compile-side feature bound (M-R7); the scan and G8′/G10 (M-R11, M-R12); the receipt list (M-R16) — every one `NOT_RUN` |

### Page D — the recipe B, as prose · every row `NOT_RUN`

Not a script, not a Cargo file, not a workflow; it is the *shape* a build must have to be checked on its artifact. Row letters are the plan's b1–b7.

| Step | What | Rows | Check on the artifact | Source | State |
|---|---|---|---|---|---|
| **B0 pin** | one nightly date; `rust-src` as a component of *that* toolchain (`rustup component add rust-src --toolchain nightly`, 26538 / 26590); record `rustc -V --verbose` and the `--print` set of M-R16 into a **build receipt** | b1 | receipt present; **G10** (proposed): two builds from the receipt's inputs yield byte-identical modules | M-R3, M-R4, M-R15, M-R16; E13 *"always pin"* | `NOT_RUN` |
| **B1 sources** | only the repo's path crates | b2 | **G1**: `Cargo.lock` lists path sources only | law; **A4** defines the lockfile's form under build-std | `[BLOCKED on A4]` |
| **B2 core only** | build the standard library *as `core` only* — the crate-list form the book shows (`-Z build-std=core`, 26539); whether `compiler_builtins` must be named is A4's | b3 | **G2** empty import section · **G3** exact export set · **name-section scan**: no v0 crate root `alloc`, `dlmalloc`, `std`, `panic_unwind` (M-R12) | M-R3, M-R5, M-R12 | `[BLOCKED on A4]` for the flag; the checks are specifiable now |
| **B3 target** | `--target wasm64-unknown-unknown` — the built-in name (14910), never a JSON | b1 | receipt carries `--print target-spec-json` of the built-in target at the pinned nightly | M-R9 | `NOT_RUN` |
| **B4 panic** | `-C panic=abort` stated explicitly, though forced (30649); the whole graph abort by the rule at 1247–1250 | b4 | **G8′** family: the module validates with exception handling *disabled* — no tag section, no `try`/`throw` | M-R6 | `NOT_RUN`; carrier on the spec shelf |
| **B5 features** | the artifact's feature use is *observed*, not trusted: **G8′** = the module validates under exactly {memory64, bulk-memory, mutable-globals, sign-ext, nontrapping-fptoint} (+ `atomics` only if R11 says so). If the set is also bounded at compile time (`-C target-cpu=mvp` + explicit `+feature`s), core is built with the **same** flags (14926–14934); no `#[target_feature(enable)]` anywhere in first-party code | b5 | G8′; a source grep for `target_feature(enable` = 0 | M-R7 | `NOT_RUN`; `mvp`-on-wasm64 `UNESTABLISHED` |
| **B6 memory** | the module declares an `i64`-addressed memory | b6 | **G9**: the memory section's limits carry the memory64 address type | E1; spec shelf §2.3.11 (`addrtype ::= i32 \| i64`) | `NOT_RUN`; the binary flag bits are a spec-shelf sighting |
| **B7 shape the artifact** | `-C symbol-mangling-version=v0` · `-C strip=none` on the **checked** artifact · `-C codegen-units=1` · `-C lto` stated · `-C metadata` stated · `-C opt-level` stated — all recorded as inputs; if a stripped artifact is what ships, G10 relates the two builds (same inputs but `strip`) | b1, b3 | receipt lists every option; the scan runs on the unstripped artifact | M-R11, M-R12 | `NOT_RUN` |
| **B8 fixture** | the recipe is never run on Core before the gate; whether a non-Core fixture (a hand-written `.wat`, or a no-op `#![no_std]` probe crate) may exist to run B0–B7 on is **ruling R12** | b7 | — | AGENTS.md *never add src/*; C03 | **human** |

**Desired result, by inspection:** b4, b5, b6 have artifact checks defined from this shelf plus the spec shelf's carriers; b1 has its receipt content sourced and its reproducibility check named (G10); b2 and b3 have their checks defined and their *flags* blocked on A4; b7 is R12. That is the plan's desired result, with one honest asterisk on b3 (Page X).

### Page E — anti-imports: what the book tempts and the law forbids

| Tempts | Where | Refuse because |
|---|---|---|
| *"the target supports std"* → link std | 30613–30614 | the law: no std; std here is I/O that *"simply return error"* — a std you cannot use is still a std you linked |
| *"comes by default with an allocator"* → use `alloc` / dlmalloc | 30617–30618, 30226, 30262–30263 | first-party-alloc rule; absence must be shown on the artifact (B2) |
| `println!` *"doesn't actually do anything"* → leave it in for debugging | 30615–30616, 30221 | it does nothing *and* links std |
| unwind (`-Cpanic=unwind` + `-Zbuild-std` + `-Cllvm-args=-wasm-use-legacy-eh=false`) | 30415–30445 | wasm32-only path; unsupported on wasm64 (30649); an EH tag section fails G8′ |
| a custom target JSON / `RUST_TARGET_PATH` / a "wasm64 with tweaks" spec | 14871–14917 | unstable, unpinnable (14887); the built-in name is the seal |
| `rustup target add wasm32-unknown-unknown` / a wasm32 fallback *"to get something building"* | 30284, 30289 | a different target; the seal is wasm64 (the wasm-spec-3 shelf's steward line refuses *retarget-to-wasm32*; its refuse (5) forbids *compiling ⇒ accepted*) |
| `wasm-bindgen`, Emscripten | 30230–30232, 30077, 30058–30209 | foreign crates; JS glue; a different target |
| `-C target-feature=+…` without rebuilding core with the same set | 14931–14934 | undefined behaviour per the book; and core would carry features the artifact check forbids |
| `#[target_feature(enable = "…")]` in first-party code | 30381–30390 | escapes every compile-side bound; only G8′ catches it |
| `-C strip=symbols` on the artifact that is checked | 1453–1458 | removes the scan's carrier; also *"cannot be relied on as a … security measure"* (1460–1462) |
| *"C interop is theoretically possible"* | 30686–30687 | no libc; the law has no C |
| relying on `link-self-contained` behaviour | 1019–1026 | documented only for x86_64-linux; on wasm64 assume nothing, record the linker invocation (`--print link-args`, 722–728) |
| `wasm-tools validate` as *the* checker | 30432 | a tool the book mentions in passing, foreign to the tree; the checker (inventory C25) is the tree's, or a named tool cited with its version in the receipt — the human's call, not the book's |

### Page F — evidence states

| Claim class | State | Human |
|---|---|---|
| The eighteen mechanisms and their locators | `SOURCE` · `OBSERVED` in the SHA-verified file | `ABSENT` |
| The mapping (Page B) | `INFERENCE` on SOURCE; each row cites its lines | `ABSENT` |
| The recipe (Page D) | `PROPOSAL` · `NOT_RUN` throughout | `ABSENT` |
| G8′ (validation under a feature set) and G10 (reproducibility) | `PROPOSAL`; the reasons are SOURCE (30375–30402; 14926–14934) | `ABSENT` — to the rulings brief |
| b3 checkability | `PROVED_WITHIN_SCOPE` *in principle*: v0 crate roots are stable and named (16821, 16962–16970); the carrier (name section) is `[BLOCKED]` on a spec-shelf sighting; `strip=none` sourced (1447) | `ABSENT` |
| `-Ctarget-cpu=mvp` keeps memory64 on wasm64 | `UNESTABLISHED` | — |
| Pass 0's corrected locators | `OBSERVED` (`grep -n`) | `ABSENT` |
| Physical / build evidence | `NOT_PERFORMED` / `NOT_RUN` | — |

### Page G — open items (the queue stays one-at-a-time)

| # | Item | Kind | Unblocks |
|---|---|---|---|
| 1 | **A4** — the Cargo book, *Unstable features → `build-std`* | attachment, **next** | B1, B2: the lockfile form under build-std; the crate list (`core`, `compiler_builtins`?); `rust-src` identity |
| 2 | **Sighting request to the wasm-spec-3 shelf** (the PDF is staked there, gitignored, not in this clone): §5 binary format of *limits* (the memory64 address type flag) for G9; the *name* custom section for the b3 scan; the *tag* section and `try`/`throw` for G8′-EH; validation under a feature set | sighting, not a new document | G8′, G9, B2's scan |
| 3 | A3 (JS-API 16 GB) · **A10** (rustup docs: component identity / `rust-src` hash) · A11 (tool-conventions `target_features` custom section — **only** if anyone wants that section as a witness; not needed for G8′) | attachments, queued behind A4 | E8; b1; — |
| 4 | **R1** (trust boundary), **R11** (atomics ⇒ a fifth feature in G8′), **R12** (pre-gate fixture; *numbering caption*: this is the reduction brief's series R1–R11 + this shelf's R12 — not `restructure-plan.md`'s older R12) | rulings | B0–B8 |
| 5 | Probe additions for the next maps sitting: **P-64a** to record whether the pinned nightly provides a working `wasm-ld` for wasm64 without a source build, and whether `-Ctarget-cpu=mvp` retains memory64 | probes | M-R7, M-R10 |
| 6 | To the rulings brief (maps): G8 → G8′ reformulation; G10; **stale row 3** (*"pass 1 executed"* should read *pass 0*) | maps sitting | the brief |
| 7 | The b4 check wording in the plan §1 (*"no unwind tables"*) — corrected here, not rewritten there; the plan's status line carries the note | Rule Zero | — |

### Page H — false friends

| Looks like | Is |
|---|---|
| *the target ships std* | *we link std* — no; std here is a library of errors (30613–30616), and linking it is the violation |
| *full support for `core` and `alloc`* (W32, 30226) | availability, not permission; `alloc` stays behind the first-party gate |
| std column `?` | *"unknown or a work-in-progress"* (18468) — **not** `*` = *"only supports no_std"* (18467); the book does not call this a no_std-only target |
| `-Zbuild-std` | "rebuild std" is one form; `-Z build-std=core` is another (26539) — the list is the point |
| `-Ctarget-cpu=mvp` | *"disabling all supported features by default"* (30360) ≠ no features in the binary (30375–30389) |
| *compiles for wasm64* | *accepted* — no (wasm-spec-3 refuse 5 stands) |
| *Building the target* (30654–30663) | a rustc source build with bootstrap.toml — a toolchain act, never a first-party branch, never `src/` |
| engines *"behind a flag"* (30625–30630: Node, Wasmtime) | the book's engine list is not our engine; Chrome shipped Memory64 in M133 (pass 2 T5/T6) — the book is stale here as it is at E3 |
| *64-bit address space* | the strand's domain — no (E8; FORBID-as-Lace-store) |
| `-C strip` | a security measure — no, by the book's own words (1460–1462); here it is only the scan-carrier switch |

### Page X — cross-cut verdict

**Does B exist by inspection?** Yes, with the rows in three states: **b4, b5, b6** — determined by this shelf, each with an artifact check whose *carrier* is the spec shelf's (validation with EH disabled; validation under the allowed feature set; the limits address type) — the checks are specifiable today and sightable on the other shelf; **b1** — the receipt's content is sourced from the toolchain's own `--print` set and `-V --verbose`, reproducibility is named as G10, and the one unsourced input is the `rust-src` identity (A4 / A10); **b2, b3** — checks defined now (G1; G2 + G3 + the name-section scan under v0 mangling with `strip=none`), flags blocked on A4; **b7** — R12.

**Which rows wait on A4?** b2 and b3 for their flags; b1 for the `rust-src` identity. Nothing else.

**Thesis (plan §4):** *B is unique up to the pinned versions; b4–b6 are determined by this shelf alone and are checkable now; b1–b3 are determined once A4 is staked and checkable by G1, G2, G3 plus a symbol scan; the only residual trust is the toolchain itself (R1).* **Holds, with two amendments the run forced:** (1) **G8 is reformulated** — a parsed feature section is not a check, validation under a feature set is; the book itself supplies the reason (30375–30402); (2) **a residual beyond R1 exists and is named**: the checked artifact and the shipped artifact are the same bytes, or G10 relates them — the thesis said "nothing else" and that was one thing too few.

**Falsifier (plan §4):** *a row among b1–b6 that neither book nor A4 determines and no artifact check can verify; if b3, the thesis loses.* **Did not fire.** b3 has an artifact check *in principle*: v0 crate roots are the one stable mangling (16821) and name crates (16962–16970); `strip=none` keeps them (1447). The asterisk: the carrier is a custom section that a build can drop, so the check is a check **only on an artifact built to be checked** — which is what B7 makes the recipe say. *In principle* is written here as the plan required, not upgraded.

**Expected vs actual:** M-R count **18** (expected 10–12 — the codegen and `--print` chapters were not in the plan's reading list and supplied six); b4's artifact check corrected from "no unwind tables" to "no exception-handling constructs" (the book describes wasm unwinding as the exception-handling proposal, 30410–30413; "unwind tables" was a native-target word); b3 turned out *partly* sourced in-book (the `core`-only crate list, 26539, on another target's page) where the plan §2 had said A4 entirely — recorded, scope OTHER, not upgraded to a wasm64 statement; six pass 0 locators corrected. Nothing built. Nothing run.

**Propose / attack / resolve:** one hand (Claude Fable 5.1). The attack was the falsifier and the anti-import list; the resolution is this page. Declared, as the template requires.

**Next narrow question:** *When A4 is staked — does the Cargo book define a build-std crate list that names `core` (and `compiler_builtins`) without `alloc`, and what does `Cargo.lock` record for the standard library under it?* That is B1 and B2, and nothing else on this shelf is waiting.

**P1-R receipt:** pages A–H, X written; eighteen mechanisms with verified locators, a surface, and a stamp; B's seven rows each carry a check or a ruling; falsifier did not fire; two amendments (G8′, G10) and one residual named; six locators corrected in the open; ~700 lines read of 31,482; no PDF or text added to git; no `src/`, no Cargo, no `.wat`, no script. Emission `[GAP]`. Shoe in hands, or no.


---

## Repository update pass 2 — target evidence carry

**2026-09-20; base `10fe4947`.** This addendum carries the [Wasm source sightings W2-S1–S6](wasm-spec-3-clipboard.md#repository-update-pass-2--target-sightings) into the existing recipe obligations. Source: supplied WebAssembly Release 3.0 (2026-09-11), SHA-256 `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`. The linked receipt names all 14 visually inspected pages and their printed pagination. The original rustc attachment was not available for a new sighting; its earlier line-locator receipts are not re-certified here.

| Existing row / claim | Current source-supported carry | Remaining obligation |
|---|---|---|
| M-R18 / B6 / b6 / G9 | W2-S1–S2 establish the limits/address-type encoding and validation rule: i64 limits flags are `0x04` / `0x05` at their grammatical position; the memory-section and imported-memory routes are distinct | Decode an actual artifact's memory types and check the intended G9 predicate. A byte occurrence alone is insufficient; no module or engine was tested |
| M-R12 / B2 / b3 / Page F carrier gap | W2-S3 sights the optional `name` custom section and its function-index/name mapping | **Carrier located; crate-absence proof UNESTABLISHED.** Missing metadata or a negative name scan does not show that crate code is absent. Complete provenance coverage under the actual v0/strip/optimization/toolchain choices remains to be demonstrated. Page F/X's earlier *in-principle* claim remains historical and is qualified by this limit |
| M-R6 / B4 / b4 / G8′-EH | W2-S4 identifies local tag declarations, imported tags and the actual `throw`, `throw_ref`, `try_table` encodings | “No tag section, no try/throw” is incomplete shorthand. A bounded artifact policy must account for imported tags and grammar-level constructs, then be tied to a verified checker. These pages do not prove an exhaustive EH test or that a selected validator has an effective disabled-EH mode |
| M-R7 / B5 / G8′ | W2-S5–S6 distinguish source validation, FUL/DET profiles and project artifact restrictions | G8′ remains **PROPOSAL / NOT_RUN**. Its exact feature subset, checker mode, version and enforcement need evidence; no feature name or `target_features` payload establishes them. No atomics ruling or replacement allowed set is selected |
| B7 / G10 | No new build or relation between checked and shipped bytes was observed | Reproducibility and provenance coverage remain distinct. Two-build receipts and the exact relationship between any unstripped checked module and shipped module remain absent |
| Page G / A4 and R12 | The separate Wasm sighting request now has the bounded source results above | A4 remains the next attachment for Cargo/build-std questions. A1's original text, A3/A10/A11 are also absent here. No Cargo flags, `rust-src` identity, toolchain trust, fixture permission or build result follows from the Wasm pages |

**Evidence states:** the cited Wasm passages are `SOURCE / VISUALLY_OBSERVED`; the recipe and G8′/G10 remain `PROPOSAL`; builds, validator runs, device checks and physical operations are `NOT_RUN` / `NOT_PERFORMED`. No Core operation, pointer-emission answer, human ruling or acceptance changed. This is a dated source addendum, not a new verdict on the completed rust-target mapping campaign.

## Repository update pass 4 — A1 re-sighting

**2026-09-20; base `335429cc0352c2e93c8009c6db57dd977ec783bb`.** The newly supplied `13-The-rustc-book.txt` restores **A1**, not Cargo A4. Its SHA-256 is `4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3`, with **1,056,614 bytes and 31,482 LF-delimited lines**, exactly matching this shelf's original attachment identity. The version remains unstated; restored access does not establish a newer edition. Locators below use that unchanged file's line numbers.

| Text read in this pass | Supported carry | Limit |
|---|---|---|
| **1–2** | Title identifies *The rustc book* | This is the already mapped A1 compiler reference, not the requested Cargo book |
| **14871–14895**, Custom Targets | Line14885 points outward to Cargo's unstable `build-std`; lines14887–14888 advise pinning the compiler for custom targets | No Cargo crate-list or lockfile rule is supplied by this pointer |
| **26528–26540**, **26586–26592**, nvptx64 workflow | Lines26538–26539 show the `rust-src` component and `-Z build-std=core`; the later range repeats the workflow | Existing M-R3 scope **OTHER** remains: these examples do not establish a wasm64 crate closure or `rust-src` content identity |
| **30597–30700** read; wasm64 section **30597–30689**, next section starts30690 | Re-sighted Tier3, default allocator, assumed proposals, lack of panic-unwind support, build routes and target-test limitations; the original E/M-R locators still reach these passages | These are the same attachment's claims, not a current toolchain or engine observation. Its memory64-standardization wording at30625–30626 remains the dated claim already qualified by E3 |

The file-wide literal search found no `Cargo.lock` occurrence. Its `build-std` references and target-specific examples do not turn this re-supplied A1 into A4 or settle the Page G questions. **A4 remains absent and next:** Cargo `build-std` crate-list/lockfile support and the outstanding `rust-src` identity premise. A3/A10/A11 also remain absent. The corpus now contains thirteen supplied files; the earlier twelve-file/A1-absent statements accurately record the prior availability and are preserved.

**Evidence boundary:** identity and the listed text passages were checked; the complete eighteen-mechanism mapping was not re-executed. Original Pass 0/1 mapping and pass 2 absence receipts remain intact. The Wasm W2-S1–S6 distinctions still govern: an optional name carrier does not establish complete crate provenance, and source grammar/profile passages do not establish a configured validator's enforcement. No Cargo intake, build, artifact check, G10 byte relationship, toolchain/fixture trust decision or R1/R11/R12 ruling was produced. The supplied source bytes remain unchanged and were not added to Git.

## Repository update pass 4 — A4 Cargo source mapping

**2026-09-20; later source arrival, base `335429cc0352c2e93c8009c6db57dd977ec783bb`.** The supplied `14-The-Cargo-Book.txt` is *The Cargo Book*, with an **Unstable Features → build-std** section. It is the requested **A4**, distinct from the re-supplied A1 rustc book above. Identity: SHA-256 `9d7048e1ecb50ae5ed95dc64fe504cf968a4a9a7c2cc9c903e48ae38d163c0a5`, **1,097,071 bytes / 21,712 LF-delimited lines**. The attachment does not state a pinned Cargo release for this text. Its conversion includes damaged glyphs and invalid UTF-8 (first decode failure at byte offset10912); identity and locators use unchanged raw bytes and LF line numbers. The source was neither normalized nor added to Git.

**Read scope:** title/opening; Unstable Features lines **8351–8381**; **build-std/build-std-features 8726–8772**; general lockfile passages **306–354**, **2465–2477**, **2579–2582**, and manifest-option text **10224–10237**. File-wide literal searches found no `compiler_builtins` or `compiler-builtins` occurrence. The historical changelog vicinity **19418–19434** was also checked to avoid treating its “local” terminology as a lockfile schema. This is a targeted text reading, not a full-book review or a build observation.

| ID / existing obligation | Source support at exact LF lines | What the support does not establish |
|---|---|---|
| **A4-S1 — M-R3 / B0 / b1** | **8729–8734**: build-std compiles the standard library within the crate graph, from source and under the main build's profile; `rust-src` is supplied through rustup. **8758–8760** require `rust-src`, nightly Cargo and nightly rustc, and build-std on all Cargo invocations | A particular nightly/component's content identity or hash; installed availability; successful compilation; R1 trust |
| **A4-S2 — M-R3 / B2 / b3** | **8748–8752**: bare build-std implicitly selects `core`, `std`, `alloc`, `proc_macro`, plus `test` for `cargo test`; an argument selects a comma-separated list, illustrated by `core,alloc`. **8373–8377** also shows configuration of that list | Whether `compiler_builtins` must be named; exact transitive crate closure; absence of `alloc`, `dlmalloc`, `std` or `panic_unwind` from a wasm64 artifact |
| **A4-S3 — B4 / B5** | **8769–8772**: build-std-features controls standard-library features; the stated defaults are `backtrace` and `panic-unwind`, and an explicit list overrides those defaults | A choice of project flags, wasm64 panic-unwind support, generated exception constructs, or G8′ enforcement. Library feature selection is distinct from codegen strategy and binary validation |
| **A4-S4 — B1 / b2 / G1** | **306–354**, **2465–2477**, **2579–2582** describe ordinary dependency locking, retained versions and updates; **10224–10227** says `--locked` rejects a missing lockfile or dependency resolution that would require changing it; **10230–10237** distinguishes offline mode and frozen's combination of locked/offline | The representation of build-std/sysroot dependencies in the project's lockfile, a complete schema for that case, or the proposed path-only G1 predicate. A lockfile option is not provenance proof |

**Crate-list disposition:** Cargo's selection mechanism is now source-supported. A single requested `core` entry is consistent with that list mechanism and A1's existing other-target `-Z build-std=core` example; this is an input-selection inference, not evidence of the resulting wasm64 dependency closure. The two zero-match compiler-builtins searches do not prove that the crate is absent, unnecessary or automatically handled. No new recipe is selected here.

**Lockfile disposition:** the examined passages give general lockfile behavior, but do not settle what build-std records for the standard library. The historical changelog at **19427** describes changed treatment of standard-library dependencies for incremental compilation, dep-info and lint caps; its use of “local” is not a source-field or path-only lockfile guarantee. The historical B1/G1 claim that A4 would define this form remains an unfulfilled evidence expectation, not a proved check.

**Current Page G carry:** A4 is now available and mapped at bounded source strength; its source-absence blocker is removed. B0/b1 still lacks exact toolchain/component identity, B1/b2/G1 still lacks the build-std lock representation, and B2/b3 still lacks compiler-builtins/closure and complete provenance evidence. These residuals remain **UNESTABLISHED**. A3 and A10 remain absent in their recorded queue order; A11 remains conditional on wanting `target_features` as a witness. This mapping does not reorder the queue or substitute one of those sources for a missing answer.

The corpus now contains fourteen supplied files. Earlier A4-absent/next and thirteen-file statements remain records of the moment before this arrival, as do the original Pass 0/1 mapping and the A1 re-sighting. A4 observations here are **SOURCE / TEXT_OBSERVED**; proposed recipe checks and G8′/G10 remain **NOT_RUN**, with W2's grammar/provenance/validator distinctions unchanged. No download, fixture, build, validator/artifact run, browser/device observation, source import, new campaign verdict, Core operation or R1/R11/R12 ruling was produced.

---

## Shelf 10 forge — the traceability gate and the coverage map

**2026-09-20 · base `3df3df80` · station `clipboards` · plan [`shelf-10-forge-pass-1-plan.md`](shelf-10-forge-pass-1-plan.md).**
Pass 0 and pass 1 above are dated records and are **not edited by this section.** Everything here is attached, the way the repository-update carries are.

**What the forge does.** Four locator passes carried 565 lines of A1 into [`rust-target-locators.md`](rust-target-locators.md) so that a session never handed the book could check this shelf. Nobody had yet asked the two questions that make a carry worth anything: **are the quotes right**, and **how much of what this page cites is actually reachable?** Both are answered below, mechanically, with the numbers.

### F1 — the gate: every quote re-read at its own cited lines

Each `*"…"*` fragment on this page was matched against **the lines its own row cites** — not against the book at large, which would let a wrong locator pass unnoticed.

| | Count | Result |
|---|---|---|
| Rows carrying a locator (pass 0 eye tables + Page A) | **32** | every locator resolves |
| Quoted fragments inside them | **44** | **44 stand byte-verbatim at their cited lines. 0 failures. 0 repairs needed** |
| Rows carrying no quoted string | **4** | claim nothing verbatim; correct |

**A1 needed no repair because A1 has no damage.** The attachment contains **zero** lost-ligature artefacts and **zero** lone carriage returns, so its line numbers read the same under `sed`, `grep`, an editor, or a program in universal-newline mode. [The A4 half is not so lucky](cargo-build-std-clipboard.md#shelf-10-forge--the-locator-carry-and-the-traceability-gate--executed), and the contrast is the only reason the A4 defect was visible at all.

### F2 — the coverage map: what is reachable in-repo, and what still needs the book

**Fail closed.** A mechanism is *carried* only when **every** range it cites falls inside a carried run. One range outside and the row is `PARTIAL`, however small the remainder.

| Page A | Rows | Cited ranges |
|---|---|---|
| **Fully carried** | **9** — `M-R2`, `M-R5`, `M-R6`, `M-R10`, `M-R11`, `M-R13`, `M-R14`, `M-R17`, `M-R18` | checkable in-repo end to end |
| **Partly carried** | **6** — `M-R1`, `M-R3`, `M-R7`, `M-R8`, `M-R12`, `M-R15` | the wasm64/wasm32/codegen parts resolve; the rest do not |
| **Not carried** | **3** — `M-R4`, `M-R9`, `M-R16` | every range still needs the book |
| **Ranges** | | **49 of 79 carried** |

| Pass 0 eyes | | |
|---|---|---|
| **Carried** | **11 of 14** — `E1`–`E11`, the whole wasm64 page | |
| **Not carried** | **3** — `E12` (14885), `E13` (14887–14888), `E14` (18878) | custom targets and the tier table, deferred by every pass so far |

**`M-R16` is 0 of 9 and it is the one that matters most.** It is the `--print` set — the raw material of the build receipt that step **B0** requires and rows `b1`, `b3` depend on. The recipe's most-cited mechanism is its least checkable.

### F3 — what remains is finite, and here it is

Every range this page cites that no run carries, merged and counted:

| Cluster | Ranges | Lines | Serves |
|---|---|---|---|
| **`--print` and the command-line set** | 332–333 · 394 · 565–570 · 575–582 · 587–599 · 604–627 · 632–633 · 638–640 · 645–650 · 722–728 · 15683 | **73** | `M-R16` (all 9) · `M-R15` · `M-R8` · `M-R7` |
| **Custom targets** | 14815–14821 · 14863–14865 · 14871–14885 · 14887–14888 · 14893–14901 · 14906–14917 | **48** | `M-R9` (all 5) · `M-R3` · `M-R4` · `E12` · `E13` |
| **Symbol mangling** | 16797–16801 · 16820–16823 · 16962–16970 | **18** | `M-R12` — and with it `b3`'s name-section scan |
| **Tier tables** | 18460–18462 · 18468 · 18878 | **5** | `M-R1` · `E14` |
| **nvptx** | 26538–26539 · 26587–26590 | **6** | `M-R3`'s `OTHER`-scope crate-list evidence |
| | **25 ranges** | **150** | |

**150 lines.** 575 are carried; complete coverage of everything this page cites is **725 of 31,482 — 2.3%**, inside [pass 1's ceiling of 3.8%](rust-target-locators-pass-1-plan.md). The job was open-ended before this section; it is bounded now, and the cluster order above is the order the earlier passes named — the `--print` set first, *"the one that matters most for `b1`."*

**This is not the same 499 that [pass 3's plan](rust-target-locators-pass-3-plan.md) §0 counted, and both numbers are right.** That table counted **whole chapter fragments** — each option entry end to end, gaps included. This one counts **only the ranges this page cites**, which is what [the rests-on rule](rust-target-locators.md#what-this-is-not) admits: *an extract carries the lines a claim rests on.* The difference is the uncited text between cited ranges.

**A later pass will land between the two, and [run 5](rust-target-locators.md#run-5--the-paragraph-both-halves-of-the-shelf-now-rest-on--1492514934) shows why:** the first-line test can force a carry to be *larger* than the cited range, when the label the rule demands sits outside it. **The rests-on rule sets the floor; the first-line test raises it where a fragment would otherwise open mid-sentence.** 150 is the floor, not the estimate.

### F4 — one citation on this page fails the shelf's own rule

Pages A and D both cite the *Target Features* known-issue paragraph as **`14926–14934`**. Line 14926 opens *"Most target-feature problems arise, when mixing code…"* — mid-thought, unlabelled.

**Under the first-line rule this shelf adopted — *a fragment may be carried when its first line names the thing it defines* — a fragment cut at 14926 is not a fragment.** The label sits one line above: `Target Features`, at **14925**.

The quotes are not wrong; the gate confirms every one of them stands inside 14926–14934. The citation is **one line short of being citable**. [Run 5](rust-target-locators.md#run-5--the-paragraph-both-halves-of-the-shelf-now-rest-on--1492514934) carries **14925–14934** with the label, which is the repair — the executed pass bodies above stay as they are.

This paragraph was carried out of turn because **both halves of the shelf now rest on it**: it is `M-R7`'s soundness obligation and step `B5`'s reason, and the A4 half's [new sub-question **d**](cargo-build-std-clipboard.md#f3--the-elision-that-cost-a-sentence-and-the-gap-it-opens) points straight at it.

### F5 — what the A4 half sent back

Two corrections arrive from the sibling clipboard and land on rows of this page. **Neither is applied to the pass bodies above; both are recorded:**

| From A4 | Lands on |
|---|---|
| `build-std-features` carries **`panic-unwind` as a default**, and the book is silent on whether the defaults apply when the crate list omits `std` (`[GAP]`, sub-question **d**) | **`B5`** — the recipe must set `-Z build-std-features` **explicitly** rather than inherit a default it cannot read. `[PROPOSAL]`, not a ruling |
| A4 answers the flag form and **not** the lockfile or `compiler_builtins` | **`b2`, `b3`** — *`[BLOCKED on A4]`* was too optimistic; already recorded in [the A4 pass](cargo-build-std-clipboard.md) §3 and restated here so this page's Page G queue is not read as satisfied |

### F6 — what moved, and what did not

| | Before the forge | After |
|---|---|---|
| Are the 44 quotes right? | untested | **44 of 44 at their own cited lines** |
| How much is reachable in-repo? | unknown | **9 of 18 mechanisms fully · 11 of 14 eyes · 49 of 79 ranges** |
| How much work is left in the extract job? | open-ended | **25 ranges · 150 lines · 5 clusters, in order** |
| The `14926` citation | assumed citable | **fails the first-line rule; run 5 carries the label line** |
| `M-R16` / the build receipt | cited everywhere | **named as the least-checkable mechanism on the page** |
| `B5` | inherits a feature default | **must state it** — `[PROPOSAL]` |
| Page D rows · G8′ · G9 · G10 · any build | `NOT_RUN` | **`NOT_RUN`** |
| `b2`, `b3`, `b7`, R1, R11, R12 | blocked · blocked · human | **unchanged** |
| Emission | `[GAP]` | **`[GAP]`** |

**Nothing was closed. No ruling was taken. No `[GAP]` was filled.**

**F-R receipt:** 44 quoted fragments re-read against their own cited lines, 0 failures; 32 locator-bearing rows audited; a coverage map computed fail-closed over 79 cited ranges; the remainder merged to 25 ranges and 150 lines and ordered; one first-line-rule failure found in this page's own citation and repaired by carrying the label line, not by editing the executed body; two corrections received from the A4 half and recorded; the book not committed; no `src/`, no Cargo file, no script added to the tree. Emission `[GAP]`. Shoe in hands, or no.

---

## Pass 4 — ASCII source machinery · EXECUTED

**2026-09-20 · base `43e290f` · station `clipboards` · plan [`rust-target-pass-4-plan.md`](rust-target-pass-4-plan.md) · product [`rust-target-ascii-machinery.md`](rust-target-ascii-machinery.md).**
Pass 0, pass 1 and the forge above are dated records and are **not edited by this section.**

**What pass 4 asked.** Page A mapped eighteen mechanisms in a table. A table can hold two mechanisms that contradict each other, or one that connects to nothing, and look complete either way. **Pass 4 drew them as one system.** Eighteen panels `P-R1`–`P-R18`, 1:1 with `M-R1`–`M-R18`, on a ten-node toolchain spine, under four drawing rules stated before anything was drawn.

### The structural finding: the receipt is the hub, and it is the blind spot

The plan guessed which mechanisms attach to which node. **Execution re-derived every attachment from Page B and seven of eighteen rows disagreed — six of them by adding node 8, the receipt.**

| | Plan expected | Page B gives |
|---|---|---|
| mechanisms reporting to the **receipt** (`--print`, `-V --verbose`) | 2 — `M-R15`, `M-R16` | **6** — `M-R4`, `M-R8`, `M-R9`, `M-R10`, `M-R15`, `M-R16` |

**So `M-R16` is not cited often by accident.** It is the node through which compile, codegen, link, target and pin all describe themselves to `B0`'s build receipt — **and [the forge measured it at 0 of 9 ranges carried](#f2--the-coverage-map-what-is-reachable-in-repo-and-what-still-needs-the-book).** The heaviest node on the spine is the least checkable thing on the shelf. That is now a fact about the shape, not an impression.

### Two falsifiers fired

| | Result |
|---|---|
| **`F1`** — a mechanism attaching to no node | did not fire. All eighteen attach; all ten nodes carry one |
| **`F2`** — a panel that cannot be drawn without naming a store or a strand | did not fire. `P-R5` and `P-R18` came within a word; both carry `FORBID-as-Lace-store` and the mechanical audit found **0** off-board tokens outside a refusal line |
| **`F3`** — a fence that, relabelled, would serve as a drawing of Core | **FIRED, on `P-R18`.** The first fence drew the 64-bit address space with indices into it. Change three labels and it is Core. **The fence was cut** and the panel redrawn as the *decision* — the target fixes `usize` at 8 bytes, the engine's smaller cap binds. The plan's word *"cut it"* admits two readings; **this execution cut the drawing and kept the mechanism, and says so for the human to overrule** |
| **`F4`** — an open item closed elsewhere and never carried | **FIRED, three rows.** Page B's *Leaves open* cells for `M-R6`, `M-R12` and (via Page D) `G9` are **stale**: [repository update pass 2](#repository-update-pass-2--target-evidence-carry) already carried `W2-S1`–`S4`, which **located** the carriers. In each case the sighting turned a *carrier gap* into a *proof gap* — a harder question. Carried into the panels; **not closed** |

### What the drawing rules caught before the commit

`R-D2` — *an open edge wherever something is unrun or unsaid* — was run as a mechanical check over the file's twenty fenced blocks, not recited. **Three panels failed and were fixed:** `P-R2` drew a settled-looking route choice the book leaves to A4; `P-R4` and `P-R15` used the open-edge form to carry **reach**, which belongs to `R-D4`'s caption. **Reach and openness are different properties and must not share a notation.**

One exception stands recorded rather than smoothed: `P-R13` closes what the book leaves open and still carries an open edge, for `G4` — the D1 replay, never green. **Page B's *Leaves open* measures the book's silence; `R-D2` measures anything unrun.** The rule is refined here by the case that forced it.

### What did not move

Node 9 is open on every row — `G1` `G2` `G3` `G8′` `G9` `G10`, all `NOT_RUN`. No `[GAP]` closed. No ruling taken. No build run. No new book line cut. No script, no `src/`.

**`P4-R` receipt:** 18 panels, all eight fields, a stamp line under every fence; spine re-derived with 7 of 18 attachments corrected; cross-walk 18 rows with no blank cell; `P4-X` 18 PASS — three after fixes the matrix caught, one after `F3`, one with a recorded rule refinement; mechanical audits — emission word in fences **0 of 20**, off-board tokens off a refusal line **0**, `FM-Rust*` ids minted **0**; reach 9 `FULL` · 6 `PARTIAL` · 3 `NONE`, matching the forge's 49 of 79. Emission `[GAP]`. Shoe in hands, or no.
