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

## What this run carries

| | |
|---|---|
| Pass 0 eye entries resolving here | **E1–E11** — all fourteen entries' wasm64-page rows |
| Pass 1 mechanisms resolving here | **M-R1, M-R2, M-R5, M-R6, M-R7, M-R8, M-R14, M-R15, M-R17, M-R18** |
| Deferrals **out** of this run | 30613 defers std behaviour to the wasm32 page; 30654–30663 and 30669–30671 name build-std and the bootstrap route. **Those pages are other runs and are not chased here** |

**A deferral is not missing context.** Each sentence above is complete and states its claim; where it points elsewhere, the pointer is the content.

## What this is not

- **Not authority.** The book at the SHA is.
- **Not the shelf's reading.** [The clipboard](rust-target-clipboard.md) maps these lines onto sheets, gates and rulings. This file only shows what the lines say.
- **Not a licence to grow.** A line enters this shelf's extracts because a tree document cites it, never because it is useful. This run entered whole because the page is one contiguous citation.
- **Not emission.** Nothing here bears on Φ. `[GAP]` stands.
