# The Cargo Book — locator extract · `-Z build-std`

**Not the book.** `refs/local/The_Cargo_Book.txt` at the SHA below is the source and the authority.
**This file is a reading of one chapter of it, carried so that a session which was never handed the book can check this shelf's claims.**
**It may never be cited in the book's place.** A locator points at the book; this shows what stands there.

**Station:** clipboards. **Shelf:** 10. **Emission:** `[GAP]`. No `src/`.
**Serves:** [`cargo-build-std-clipboard.md`](cargo-build-std-clipboard.md) — all ten eye entries `C1`–`C10` fall inside these three runs.
**Sibling:** [`rust-target-locators.md`](rust-target-locators.md), the same job on A1. **Pattern:** [`graphic-a-ascii.md`](../graphics/graphic-a-ascii.md) — same rule, different unreachable source.

## Fidelity

| Field | Value |
|---|---|
| **Source** | `refs/local/The_Cargo_Book.txt` · 21,712 lines · gitignored (`.gitignore:22`) |
| **Source SHA-256** | `9d7048e1ecb50ae5ed95dc64fe504cf968a4a9a7c2cc9c903e48ae38d163c0a5` |
| **Runs** | three: **8726–8772** (47), **8373–8379** (7), **8411** (1) — **55 source lines** |
| **Method** | `sed -n '<a>,<b>p'` per run — a mechanical cut. Nothing retyped |
| **Verbatim / elided** | **Verbatim, including the source's own damage.** No line shortened, reordered or omitted. **38 of the 55 lines carry text; 17 are blank and are dropped**, so a gap in the left column is a blank source line and nothing else. The file is CRLF; the carriage return is stripped and nothing else is — **0 rows carry a surviving `^M`**, counted before the commit, because [the sibling run shipped 36 of them](rust-target-locators.md#fidelity) and the check was inherited |
| **Empty cells** | **0**, counted before the commit |
| **Verified** | **Yes** — every row re-read against the SHA after writing |
| **Fraction of source** | 55 of 21,712 — **0.25%** |

## Two things this source does that A1 does not

Both were found while building this file. Both change how a later session must read **every** locator on the cargo half of this shelf, so they go at the top and not in a footnote.

### 1. The conversion lost the `fl` and `fi` ligatures. `?` is not the book's character

`The_Cargo_Book.txt` writes **`?ag`** for *flag*, **`pro?le`** for *profile*, **`con?gure`** for *configure*, **`?le`** for *file*. The PDF-to-text pass dropped the ligature glyphs and left a replacement. **A1 has none of this** — `The-rustc-book.txt` contains zero such occurrences.

The rows below carry the damage **as it stands**, because that is what verbatim means. A reader repairing it silently while quoting is doing something else, and [the clipboard did exactly that three times](#what-the-gate-found-in-the-clipboard-this-file-serves).

### 2. 213 lone carriage returns — the line numbers depend on your reader

The file is CRLF throughout (21,712 `CRLF`), **and it also contains 213 bare `CR` characters that are not part of a `CRLF`**, the first at line 1,406. A1 has **0**.

This is not cosmetic:

| Reader | Lines it sees |
|---|---|
| `sed` · `grep -n` · `awk` · `wc -l` — split on `LF` only | **21,712** |
| a reader in universal-newline mode (Python's default text mode, many editors) — a bare `CR` also ends a line | **21,926** |

**Every locator on this shelf is a `sed`/`grep` number.** A session that opens the file in universal-newline mode reads line 8729 and finds *"Multiple Build Scripts feature allows you to…"* — the wrong sentence, 214 lines adrift, with nothing to announce the error. Open it with newline translation off, or cite through this file.

**None of the 213 falls inside the three runs below**, so these rows are unaffected. The hazard is to the *next* reader of the book, which is why it is recorded here rather than left to be rediscovered.

---

## Run 1 — the `build-std` chapter, whole · 8726–8772

**First-line test: PASS.** Line 8726 is `build-std`, the chapter's own heading. The chapter ends at 8772; 8773–8774 are blank and 8775 begins `binary-dep-depinfo`, a different flag.

**32 rows · 47 source lines · 15 blank dropped.**

| Line | Text |
|---|---|
| 8726 | build-std |
| 8727 | Tracking  Repository:  https://github.com/rust-lang/wg-cargo-std-aware |
| 8729 | The build-std feature enables Cargo to compile the standard library itself as part of a crate graph compilation. This feature has also historically been known as "std-aware Cargo". This feature is still in very early stages of development, and is also a possible massive feature |
| 8731 | addition to Cargo. This is a very large feature to document, even in the minimal form that it exists in today, so if you're curious to stay up to date you'll want to follow the tracking repository and its set of issues. |
| 8732 | The functionality implemented today is behind a ?ag called -Z build-std . This ?ag indicates that Cargo should compile the standard library from source code using the same pro?le as the main build itself. Note that for this to work you need to have the source code for the standard library available, and at this time the only supported method of doing so is to add the rust- src rust rustup component: |
| 8734 | $ rustup component add rust-src --toolchain nightly |
| 8736 | Usage looks like: |
| 8738 | $ cargo new foo |
| 8739 | $ cd foo |
| 8740 | $ cargo +nightly run -Z build-std --target x86_64-unknown-linux-gnu Compiling core v0.0.0 (...) |
| 8741 | ... |
| 8742 | Compiling foo v0.1.0 (...) |
| 8743 | Finished dev [unoptimized + debuginfo] target(s) in 21.00s Running `target/x86_64-unknown-linux-gnu/debug/foo` |
| 8744 | Hello, world! |
| 8746 | Here we recompiled the standard library in debug mode with debug assertions (like |
| 8747 | src/main.rs is compiled) and everything was linked together at the end. |
| 8748 | Using -Z build-std will implicitly compile the stable crates core , std , alloc , and proc_macro . If you're using cargo test it will also compile the test crate. If you're working with an environment which does not support some of these crates, then you can pass an argument to -Zbuild-std as well: |
| 8750 | $ cargo +nightly build -Z build-std=core,alloc |
| 8752 | The value here is a comma-separated list of standard library crates to build. |
| 8755 | Requirements |
| 8756 | As a summary, a list of requirements today to use -Z build-std are: |
| 8758 | You must install libstd's source code through rustup component add rust-src |
| 8759 | You must use both a nightly Cargo and a nightly rustc |
| 8760 | The -Z build-std ?ag must be passed to all cargo invocations. |
| 8762 | Reporting bugs and helping out |
| 8763 | The -Z build-std feature is in the very early stages of development! This feature for Cargo has an extremely long history and is very large in scope, and this is just the beginning. If you'd like to report bugs please either report them to: |
| 8764 | Cargo - https://github.com/rust-lang/cargo/issues/new - for implementation bugs |
| 8765 | The tracking repository - https://github.com/rust-lang/wg-cargo-std-aware/issues/new - for larger design questions. |
| 8766 | Also if you'd like to see a feature that's not yet implemented and/or if something doesn't quite work the way you'd like it to, feel free to check out the issue tracker of the tracking repository, and if it's not there please ?le a new issue! |
| 8769 | build-std-features |
| 8770 | Tracking  Repository:  https://github.com/rust-lang/wg-cargo-std-aware |
| 8772 | This ?ag is a sibling to the -Zbuild-std feature ?ag. This will con?gure the features enabled for the standard library itself when building the standard library. The default enabled features, at this time, are backtrace and panic-unwind . This ?ag expects a comma-separated list and, if provided, will override the default list of features enabled. |

## Run 2 — the config form · 8373–8379

**First-line test: PASS, and the label is not `build-std`.** Line 8373 reads *"Anything which can be con?gured with a -Z ?ag can also be set in the cargo con?g ?le ( .cargo/config.toml ) in the unstable table. For example:"* — the fragment names its own subject, **the config form for any `-Z` flag**. `build-std` appears inside it at 8377 as one of two examples. The fragment is therefore citable *as the config form*, and `C10` is a sighting of an example, not of a `build-std` rule. Recorded rather than upgraded — the same discipline the sibling shelf applied to the nvptx page.

**5 rows · 7 source lines · 2 blank dropped.**

| Line | Text |
|---|---|
| 8373 | Anything which can be con?gured with a -Z ?ag can also be set in the cargo con?g ?le ( .cargo/config.toml ) in the unstable table. For example: |
| 8375 | [unstable] |
| 8376 | mtime-on-use = true |
| 8377 | build-std = ["core", "alloc"] |
| 8379 | Each new feature described below should explain how to use it. |

## Run 3 — one line, the unstable-feature list row · 8411

**First-line test: PASS.** The line opens with the token it describes. It is one line and it is the whole fragment.

**1 row · 1 source line.**

| Line | Text |
|---|---|
| 8411 | build-std - Builds the standard library instead of using pre-built binaries. build-std-features - Sets features to use with the standard library. |

---

## What these runs carry

| Run | What lands inside it |
|---|---|
| **Run 1** · 8726–8772 | **Nine of the clipboard's ten eye entries** — `C1` (8729), `C2` (8732), `C3` (8734), `C4` (8748), `C5` (8750), `C6` (8752), `C7` (8758–8760), `C9` (8763), `C8` (8769–8772) |
| **Run 2** · 8373–8379 | `C10` (8377), with the sentence that labels it as the config form for *any* `-Z` flag |
| **Run 3** · 8411 | **New.** The book's own one-line index entry for both flags, naming `build-std` and `build-std-features` side by side. No eye entry cited it |

**Ten of ten.** Unlike the A1 half — where three passes reach part of what the clipboard cites — every claim the cargo clipboard makes about its source now stands in this file. A session handed this repository and not the book can check all of it.

## What the gate found in the clipboard this file serves

Every quoted fragment in [`cargo-build-std-clipboard.md`](cargo-build-std-clipboard.md) was re-read against **its own cited lines** in the SHA-verified file — not against the book at large, which would pass a locator that points at the wrong place.

| | Fragments | Result |
|---|---|---|
| Italic quotes (`*"…"*`) | 9 | **6 stand byte-verbatim at their cited lines · 3 stand there only after the `?`→ligature repair · 0 missing** |
| Including backticked strings over 12 characters | 14 | **11 byte-verbatim · 3 ligature-repaired · 0 missing** |
| Rows carrying no quoted string | 3 | correctly claim nothing verbatim |

**No locator is wrong. No quote is invented.** The three repairs are `C2`, `C7`'s third requirement, and `C8` — every one of them restores what the conversion destroyed, and every one of them was done **silently**, inside a table headed *Verbatim*. That is the defect: not the repair, the silence. The rows above carry the damaged text so the repair is visible rather than assumed.

The same gate on [the A1 clipboard](rust-target-clipboard.md): **32 rows with locators, 44 quoted fragments, 44 standing byte-verbatim at their cited lines, 0 failures, 4 paraphrase rows claiming nothing.** A1 needed no repair because A1 has no damage.

## One elision that cost a sentence

`C8` quotes line 8772 and stops in the middle of it. The row reads:

> *"This flag is a sibling to the `-Zbuild-std` feature flag. This will configure the features enabled for the standard library itself when building the standard library."*

The next sentence, on the **same line**, is:

> *"The default enabled features, at this time, are backtrace and panic-unwind ."*

**`panic-unwind` is a default.** The A1 page states that the target *"does not support panic=unwind at this time"* ([`rust-target-locators.md`](rust-target-locators.md), line 30649). The two sentences stand in the same shelf and the elision hid one of them.

**What follows, and what does not.** The book states the defaults; it does **not** say whether they apply when `-Z build-std` is given a crate list that omits `std`. `build-std-features` appears at 8411, 8769 and 8772 and nowhere else in the 21,712 lines. **So this is a named tension and a `[GAP]`, not a ruling** — recorded on the clipboard's open items, not resolved here.

## The two silences, re-verified mechanically

The clipboard's §3 marks two sub-questions `[GAP]`. Both were re-run against the SHA at this pass, because a `[GAP]` that nobody re-checks becomes a habit:

| Claim | Check | Result |
|---|---|---|
| `compiler_builtins` is not raised anywhere in the book | `grep -c` for `compiler_builtins` **and** `compiler-builtins` across all 21,712 lines | **0 and 0.** `[GAP]` holds |
| No sentence relates `build-std` to the lockfile | every line containing `build-std` filtered for `lock`; and all of 8700–8800 searched for `lock` | **none, and none.** `[GAP]` holds |

**Absence is evidence here only because the search is written down.** Re-run both before trusting either.

## What this is not

- **Not the book.** It is 0.25% of it, chosen because this shelf cites it.
- **Not authority.** The SHA-verified file is. If this file and the book disagree, this file is wrong.
- **Not a ruling.** No `[GAP]` is closed, no crate list is settled, no build is authorized.
- **Not an emitter.** POINTER emission remains `[GAP]`. No `src/`.

**Steward test.** If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. This carries one short length and says, on its face, where it was cut and what the cut damaged before anyone touched it.
