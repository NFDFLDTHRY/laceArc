# The Cargo Book — `build-std` · shelf 10, attachment A4

**Status:** **Pass 0 (staking receipt) EXECUTED.** **Station:** clipboards. **Emission:** `[GAP]`. No `src/`.
**Shelf:** 10 — the toolchain shelf. Sibling: [`rust-target-clipboard.md`](rust-target-clipboard.md) (A1, *The rustc book*).
**Staked by:** the human, 2026-09-20. **Editor:** Claude Opus 5; one hand; declared.

**Sighting.** `The_Cargo_Book.txt` · **21,712 lines** · `sha256 9d7048e1ecb50ae5ed95dc64fe504cf968a4a9a7c2cc9c903e48ae38d163c0a5`.
Held at `refs/local/`, **gitignored** (`.gitignore:22`). No text is copied into git; every claim below is a locator into that SHA.

**Why this shelf wanted it.** [The rustc clipboard's pass 1](rust-target-clipboard.md) closed with one named question and nothing else waiting on it:

> *"When A4 is staked — does the Cargo book define a build-std crate list that names `core` (and `compiler_builtins`) without `alloc`, and what does `Cargo.lock` record for the standard library under it?"*

**It is three questions. The book answers one and is silent on two.** §3.

---

## 1. Eye entries — verbatim, with locators verified by `grep -n`

| Eye | Verbatim (short) | Line | Bears on |
|---|---|---|---|
| **C1** | *"The `build-std` feature enables Cargo to compile the standard library itself as part of a crate graph compilation."* | 8729 | the mechanism exists; M-R3 → **SOURCE** |
| **C2** | *"The functionality implemented today is behind a flag called `-Z build-std`."* | 8732 | nightly-only; M-R4 |
| **C3** | `rustup component add rust-src --toolchain nightly` | 8734 | **b1** — the component, named; its *identity* is not |
| **C4** | *"Using `-Z build-std` will implicitly compile the stable crates `core`, `std`, `alloc`, and `proc_macro`."* | 8748 | **decisive for the law: a bare `-Z build-std` links `std` and `alloc`.** A crate list is not an optimisation, it is **mandatory** |
| **C5** | `cargo +nightly build -Z build-std=core,alloc` | 8750 | the crate-list form, on the Cargo book's own page — no longer only the nvptx page (M-R3, scope was OTHER) |
| **C6** | *"The value here is a comma-separated list of standard library crates to build."* | 8752 | **`core` alone is expressible.** The list is free-form, so `-Z build-std=core` is a form the book licenses |
| **C7** | *"You must install libstd's source code through `rustup component add rust-src`"* · *"You must use both a nightly Cargo and a nightly rustc"* · *"The `-Z build-std` flag must be passed to **all** cargo invocations."* | 8758 · 8759 · 8760 | **b1** — three requirements, sourced. The third is a recipe obligation, not a convenience |
| **C8** | *"This flag is a sibling to the `-Zbuild-std` feature flag. This will configure the features enabled for the standard library itself when building the standard library."* — `build-std-features` | 8769–8772 | **b5 / G8′.** The rustc book required core be built with the *same* feature set (14926–14934); **this is the flag that does it** |
| **C9** | *"The `-Z build-std` feature is in the very early stages of development!"* | 8763 | trust row — the mechanism is unstable in Cargo as well as in rustc |
| **C10** | `build-std = ["core", "alloc"]` — the config-file form | 8377 | the list also expressible in config, not only on the command line |

## 2. What this settles that the rustc book could not

| | Before A4 | Now |
|---|---|---|
| Is a `core`-only build-std list a real form? | named only on **another target's page** (nvptx, 26539) — scope `OTHER`, not a wasm64 statement | **SOURCE on the Cargo book's own page.** C5, C6 |
| Does bare `-Z build-std` suffice? | unexamined | **No — and it is a trap.** C4: bare implicitly compiles `std` and `alloc`. For a `no_std` build the list is mandatory |
| How is core built with the same features? | the rustc book stated the *obligation* (14926–14934) and named no mechanism | **`build-std-features`** — C8 |
| The `rust-src` requirement | named | **sourced**, with two more requirements beside it — C7 |

## 3. The named question, answered honestly

**Three sub-questions. One answered, two `[GAP]`.**

| | Sub-question | Verdict |
|---|---|---|
| **a** | Does the book define a crate list that names `core` without `alloc`? | **Yes. `CLOSED`.** C5, C6 — comma-separated, free-form; `-Z build-std=core` is licensed |
| **b** | Must `compiler_builtins` be named? | **`[GAP]`.** The string `compiler_builtins` (and `compiler-builtins`) appears **nowhere in the 21,712 lines.** The book does not raise it |
| **c** | What does `Cargo.lock` record for the standard library under build-std? | **`[GAP]`.** No sentence relates `build-std` to the lockfile anywhere in the book |

**So `b2` and `b3` do not unblock.** [The rustc pass 1](rust-target-clipboard.md) marked them `[BLOCKED on A4]` expecting A4 to release them. **A4 releases the flag form and not the two facts the checks need** — `G1`'s lockfile check has no book support for what build-std writes, and the crate list still cannot be stated completely without knowing whether `compiler_builtins` is required.

**This is the pass's one substantive correction to the sibling shelf**, and it goes in the open: *blocked on A4* was too optimistic. The right reading is **blocked on A4 for the flag, which is now delivered, and blocked beyond it for the lockfile and `compiler_builtins`**, which A4 does not contain.

## 4. Stamps

| Stamp | Applies to |
|---|---|
| **KEEP-read-as-toolchain** | C1–C10 |
| **FORBID-as-Core** | all ten — none is a Lace mechanism |
| **FORBID-as-Lace-store** | none engaged; the book has no store claim |
| **SILENT-for-Lace-append** | all ten. The book has no sentence about when an entry is appended to a strand. **Φ `[GAP]`** |
| **PROPOSAL-only** | nothing proposed here; this is a sighting |

## 5. Anti-imports

| Tempts | Where | Refuse because |
|---|---|---|
| bare `-Z build-std` *"to get something building"* | 8740 | **links `std` and `alloc`** (C4) — the exact violation the shelf exists to prevent |
| `-Z build-std=core,alloc`, the book's own example | 8750 | the example is not the recipe; `alloc` stays behind the first-party gate |
| treating `build-std-features` as tuning | 8769–8772 | it is the mechanism that satisfies a **soundness** obligation (rustc book 14926–14934), not a knob |
| reading *"very early stages of development"* as a reason to pin nothing | 8763 | the opposite: instability is why the receipt pins the nightly |

## 6. Evidence states

| Claim class | State |
|---|---|
| C1–C10 and their locators | `SOURCE` · `OBSERVED` in the SHA-verified file |
| §2 and §3a | `PROVED_WITHIN_SCOPE` — the book's own sentences |
| §3b, §3c | **`[GAP]`** — searched the whole file, absent |
| Any build | `NOT_RUN`. Nothing was compiled, no toolchain invoked |
| Physical evidence | `NOT_PERFORMED` |

## 7. Next narrow question

*Where is `compiler_builtins` required, if anywhere — the `wg-cargo-std-aware` tracking repository (8727, 8765) is the book's own pointer, and it is not a staked document. And what writes `Cargo.lock` under `build-std`: is the standard library in the lockfile at all?*

**Both are outside A4.** They need a new attachment or a build, and a build is `NOT_RUN` by law until R12.

**P0-R receipt:** ten eye entries, every locator verified by `grep -n` against the SHA; the sibling shelf's named question answered one-of-three and the other two marked `[GAP]` rather than inferred; one correction to the sibling in the open; nothing copied into git; no `src/`, no Cargo file, no script. Emission `[GAP]`. Shoe in hands, or no.
