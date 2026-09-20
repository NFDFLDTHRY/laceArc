# The rustc book → locator extract — Pass 2 PLAN

**Status:** **`EXECUTED`** → [`rust-target-locators.md`](rust-target-locators.md) runs 2 and 3. **Falsifier 2 did not fire** (138 of 139 lines new). **Falsifier 1 fired narrowly and the pass narrowed rather than grew:** one cited line, 30154, lay outside the span, so one line entered — not the page. **Station:** clipboards. **Emission:** `[GAP]`. No `src/`.
**Product:** [`rust-target-locators.md`](rust-target-locators.md) — pass 2 appends a second run.
**Authority:** `refs/local/The-rustc-book.txt` · `sha256 4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3`. **Not authority:** the extract.
**Prior:** [pass 1](rust-target-locators-pass-1-plan.md) — the wasm64 page, `30597–30689`, EXECUTED.

---

## 0. Why this run, and why it is the one that matters

The wasm64 page **defers** to wasm32 for the behaviour the law cares most about:

> `30613–30614` — *"The target supports std **in the same manner as the wasm32-unknown-unknown target**."*

**Six of the eighteen mechanisms carry a `W32` scope row** — `M-R5` (std/alloc/dlmalloc), `M-R6` (panic), `M-R7` (target features), `M-R8` (cfg), `M-R10` (linking), `M-R13` (testing). **Their evidence is on a page pass 1 did not carry.** Today a reader can check the wasm64 half of those rows and not the other half.

## 1. The boundaries, verified — and the clipboard is right this time

Pass 1 found pass 0's header span overshot by eleven lines. **This one does not.**

| Page | Span | Lines |
|---|---|---|
| `wasm32-unknown-emscripten` | **30058–30209** | 152 |
| **`wasm32-unknown-unknown`** | **30210–30471** | **262** |
| `wasm32v1-none` begins | 30472 | — |

Read at the boundaries: `30058` and `30210` are the page titles, `30471` is the last line before `wasm32v1-none`. **Pass 1's read list stated `30210–30471` (whole) and it is exact.** Recorded because the last span checked was wrong and this campaign does not report only its catches.

## 2. The rule pass 2 must settle: does an anti-import earn an extract?

**The Emscripten page is cited on this shelf — in [Page E, anti-imports](rust-target-clipboard.md):** *"`wasm-bindgen`, Emscripten | 30230–30232, 30077, **30058–30209** | foreign crates; JS glue; a different target."*

**So a 152-line page is "cited by a tree document", and pass 1's rule would admit it.** That rule is too loose, and the loophole is visible now rather than after it has grown.

**Proposed rule, and pass 2 exists partly to state it:**

> **An extract carries the lines a claim *rests on*. It does not carry the lines a claim *refuses*.**

A refusal's evidence is that the thing exists and says roughly what the refusal says it says — which a **locator alone** already establishes. Carrying 152 lines of Emscripten so a reader can confirm we decline to use Emscripten is how a citation becomes a copy one defensible step at a time.

**Under this rule pass 2 takes `30210–30471` and leaves `30058–30209`.** If a later pass needs an Emscripten line to *establish* something, that line enters then, by its own citation.

## 3. Scope

**One run: `30210–30471`, 262 lines.** Whole page, mechanical cut, appended to the existing product as a second section with its own fidelity block.

**Cumulative after pass 2:** ~319 of 31,482 — **about 1%**. Pass 1 was 0.3%. The bound in [pass 1 §1](rust-target-locators-pass-1-plan.md) was ≤3.8% of the book ever cited; this stays well inside it.

**Not pass 2:** the Emscripten page (§2); the codegen-options chapter; `--print`; symbol mangling; custom targets; the tier tables. Each is a later pass or none.

## 4. Thesis, stated so it can lose

**The wasm32 page is the missing half of six mechanisms, and carrying it makes them checkable end to end.**

**Falsifier — and pass 1 gave it teeth.** Pass 1's run was a whole page and self-contained. **This page is 2.8× longer and is the page other pages defer *to*.** If reading it shows the cited claims depend on text outside `30210–30471` — the codegen chapter for `-C panic`, say — then the run is not self-contained, and the honest answer is **a smaller set of sub-ranges, not a bigger extract.** The pass would then narrow rather than grow.

**Second falsifier:** if the page's cited content turns out to be mostly what the clipboard already quotes verbatim, the extract adds nothing — the test pass 1 ran and passed at 53 of 63 new lines. **Run it again before building, not after.**

**Third, and specific to this run:** at 262 lines the CRLF defect pass 1 caught would produce **~100 junk rows** rather than 36. The fidelity block is not decoration here; **build the table, count empty cells, and refuse to commit on a non-zero count.**

## 5. What pass 2 must not do

- **Not carry the Emscripten page.** §2. If the rule is wrong, argue it before extracting, not by extracting.
- **Not commit the book.** `refs/local/` stays ignored.
- **Not become authority.** Locators point at the book at the SHA.
- **Not edit [the clipboard](rust-target-clipboard.md).** Another pass's executed record. Findings about it are recorded, as pass 1 recorded the overshoot.
- **Not grow the fidelity claim beyond what was checked.** Pass 1's block was wrong on first build; it says so. Pass 2's must survive the same check before it is written as true.
- **Not fill `[GAP]`.** A toolchain page bears on nothing in Core.

## 6. Accept pass 2 when

`30210–30471` is cut mechanically and appended with its own fidelity block; empty cells are **zero**, verified before commit; every `W32`-scope locator in the clipboard resolves inside the run; the self-containment falsifier is answered in writing either way; the anti-import rule in §2 is stated in the product so a later pass inherits it; and the door row says what the second run adds.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Pass 1 carried the page the shelf is sealed to. **This one carries the page that page points at** — and stops there, because the next page along is one we wrote down in order to refuse it, and a refusal does not need the whole text to stay refused. Emission remains `[GAP]`.
