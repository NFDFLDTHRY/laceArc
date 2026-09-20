# The rustc book → locator extract — Pass 3 PLAN

**Status:** **`EXECUTED`** → [`rust-target-locators.md`](rust-target-locators.md) run 4. **All three gates passed, and the locator gate caught a fragment this plan had dropped** — `codegen-units` 770–779, filed as a command-line option by a sweep that split the chapter at 800. **Fifteen fragments, not fourteen.** **Station:** clipboards. **Emission:** `[GAP]`. No `src/`.
**Product:** [`rust-target-locators.md`](rust-target-locators.md) — pass 3 appends run 4.
**Authority:** `refs/local/The-rustc-book.txt` · `sha256 4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3`. **Not authority:** the extract.
**Prior:** [pass 1](rust-target-locators-pass-1-plan.md) wasm64 · [pass 2](rust-target-locators-pass-2-plan.md) wasm32 + the rests-on rule. Both EXECUTED.

---

## 0. The shape changes here, and that is the whole subject

**Passes 1 and 2 carried whole pages.** A page opens with its target name, states its own scope, and ends where the next page begins. Self-containment came free.

**What remains is 28 fragments across six chapters — 499 lines, none of them a page.**

| Chapter | Fragments | Lines |
|---|---|---|
| **codegen options** | **14** | **199** |
| command line / `--print` | 4 | 105 |
| custom targets / unstable | 3 | 64 |
| tier tables / policy | 3 | 57 |
| symbol mangling | 2 | 54 |
| nvptx `build-std` | 2 | 20 |

**A ten-line slice of a reference chapter is a different object from a page**, and the question pass 3 must answer before it extracts anything is whether such a slice means anything on its own.

## 1. Probed: it does, and there is a testable reason

**Read `-C strip`, 1441–1462, in full.** Line 1441 *is* the word `strip`. 1442 defines the option. 1445–1458 enumerate its values. 1460–1462 carry the clipboard's cited *"cannot be relied on as a meaningful security or obfuscation measure."* **The fragment is a mini-page.**

**That is not luck — the chapter is built that way, and it is checkable:**

> **14 of 14** codegen fragments open with their own option name on their first line. `808 = debug-assertions` · `820 = debuginfo` · `972 = link-arg` · `1002 = link-self-contained` · `1090 = linker-flavor` · `1142 = lto` · `1170 = metadata` · `1208 = opt-level` · `1225 = overflow-checks` · `1238 = panic` · `1441 = strip` · `1467 = symbol-mangling-version` · `1482 = target-cpu` · `1495 = target-feature`.

**So pass 3's rule, the way pass 2 contributed the rests-on rule:**

> **A fragment may be carried when its first line names the thing it defines.** A fragment that opens mid-sentence is not a fragment, it is a cut, and it does not go in.

**This is testable before extraction, not argued after**, and §5 makes it a gate.

## 2. Scope: the codegen chapter only

**Run 4 is the 14 codegen fragments — 199 lines.** They carry `M-R6` (panic), `M-R11` (artifact shaping) and `M-R12` (symbol names), and they are the options the recipe's step **B7** fixes as inputs. **Every row of B7 currently cites a chapter no session can open.**

**Not pass 3:** `--print` and the command-line set (`M-R16`, the build receipt's content — its own pass, and the one that matters most for `b1`); custom targets; the tier tables; symbol mangling; the nvptx lines. **Each waits for its own first-line test.**

**Cumulative after pass 3:** 231 + 199 = **430 of 31,482 — 1.4%.** Pass 1 set the ceiling at the tree's own citations, ≤3.8%.

## 3. Thesis, stated so it can lose

**A reference chapter's options are mini-pages, so fragments of it are citable without carrying the chapter.**

**Falsifier — and it is a real risk at 14 fragments.** If any fragment turns out to depend on chapter preamble the clipboard never cited — a shared "these options take `=val`" sentence above the list, a values table defined once — then that fragment is not self-contained, and the honest answer is **to carry that one fragment's preamble by its own citation, or to drop the fragment**, not to widen the run to the chapter.

**Second falsifier:** the novelty test. Pass 1 ran 53-of-63 new, pass 2 ran 138-of-139. **If the codegen fragments are mostly already quoted in the clipboard's `M-R11` row** — which lists many of these options with inline descriptions — **the extract adds little and the pass should shrink to the ones that are not.** Run it before building, as pass 2 did.

**Third:** empty cells. Pass 1 shipped 36 junk rows from a surviving carriage return; pass 2 gated on a zero count and passed. **199 lines across 14 fragments is 14 chances to reintroduce it.** Zero, counted before commit, or no commit.

## 4. What pass 3 must not do

- **Not carry the chapter.** Fourteen fragments, each by its own citation.
- **Not carry a fragment that fails the first-line test.** §1. Drop it and say which.
- **Not reformat.** Conversion artifacts — the stray `4`, `19` that the PDF-to-text pass left inside code blocks — **stay as they are if they fall inside a carried range.** Passes 1 and 2 shipped **zero** rows that are a bare number; if pass 3 does ship one, it is the source's and is marked, not silently dropped.
- **Not become authority**, not commit the book, not edit [the clipboard](rust-target-clipboard.md), not fill `[GAP]`.

## 5. Accept pass 3 when

The first-line test is run on all 14 and its result recorded — including any that fail and are dropped; the novelty test is run **before** building and its number published; each fragment is cut mechanically with its own line span; empty cells are **zero**, counted before commit; every `M-R6`, `M-R11` and `M-R12` locator resolves inside; and the product states the first-line rule so a later pass inherits it.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

The first two passes carried whole lengths of lace. **This one carries fourteen short pieces, and the only reason that is honest is that each piece has its own label woven into the first inch.** Cut one anywhere else and it is string. Emission remains `[GAP]`.
