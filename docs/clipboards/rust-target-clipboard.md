# CLIPBOARD — laceArc ← The rustc book (Rust toolchain · target `wasm64-unknown-unknown`)

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

### The `wasm64-unknown-unknown` page — lines 30597–30700

| Eye | Verbatim (short) | Line | Bears on |
|---|---|---|---|
| E1 | *"Tier: 3"* | 30598 | T1 → **SOURCE** |
| E2 | *"Rust does not yet ship pre-compiled artifacts for this target. To compile for this target, you will either need to build Rust with the target enabled … or build your own copy of std by using build-std or similar."* | 30666–30668 | T2 → **SOURCE**; R1 |
| E3 | *"This target is not a stable target. The memory64 WebAssembly proposal is still in-progress and not standardized."* | 30619–30620 | T3 → SOURCE; **T4 stale-note confirmed** — Spec 3.0 (2026-09-11) includes memory64 and Chrome shipped it in M133 (pass 2 T5, T6); the book lags |
| E4 | *"due to the relatively early-days nature of this target … you may encounter LLVM bugs"* | 30643–30645 | sheet T failure model → SOURCE |
| **E5** | *"This target does not support panic=unwind at this time."* | 30649 | **new**: `panic = "abort"` is forced, not chosen — sheet T postcondition now sourced |
| **E6** | *"This target comes by default with an allocator, currently dlmalloc which is ported to rust."* | 30611–30612 | **new**: the target's **std** carries dlmalloc; a `#![no_std]` build must **prove** it links neither — the crate map's Page F caution is now a sourced obligation, not a caution |
| **E7** | assumed proposals: *bulk-memory · mutable-globals · sign-ext · nontrapping-fptoint* (with LLVM flags) | 30632–30638 | **new**: the module will carry these features; a binary check (G2/G3 kin) can list the feature section and refuse anything else |
| **E8** | *"the maximum memory size is now the full 64-bit address space instead of the 4GB"* | 30616–30617 | **new tension, named**: the toolchain's view vs the engine's **16 GB JS-API cap** (pass 2 T7, A3 pending). The book states the address space; the engine states the limit. Both true; the smaller binds |
| E9 | *"Currently testing is not well supported … the Rust project doesn't run any tests for this target."* | 30678–30680 | trust row: an **untested** target; every claim about a build is `NOT_RUN` until run |
| E10 | *"there is no known 'libc' for wasm that works with wasm64-unknown-unknown … mixing C & Rust … effectively cannot be done"* | 30686–30689 | consonant with the law (no C, no FFI); irrelevant to a pure `no_std` build; noted |
| E11 | cfg: `target_arch = "wasm64"`, `target_family = "wasm"` | 30673–30675 | sheet T build facts |

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
