# The rustc book → locator extract — Pass 1 PLAN

**Status:** **`EXECUTED`** → [`rust-target-locators.md`](rust-target-locators.md). **Neither falsifier fired.** 53 of 63 lines were new against the clipboard's quotes; the run is a whole page and self-contained. **Station:** clipboards. **Emission:** `[GAP]`. No `src/`.
**Product it will build:** `rust-target-locators.md` — **not the book.**
**Authority:** `refs/local/The-rustc-book.txt` · **31,482 lines** · `sha256 4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3`. Then [the clipboard](rust-target-clipboard.md)'s cited ranges.
**Not authority:** this extract, ever. A locator points at the book at that SHA; the extract is a convenience and may not be cited in its place.
**Pattern:** [`graphic-a-ascii.md`](../graphics/graphic-a-ascii.md) and [its pass 1](../graphics/graphic-a-ascii-pass-1-plan.md) — *"Not Graphic A … PNG bytes stay put."* Same shape, different source kind.

---

## 0. The problem this solves, stated as the tree found it

**A staked source does not travel.** `refs/local/` is gitignored (`.gitignore:22`) because [the law](../law-why-these-documents.md) keeps references as citations. That is right, and it has a cost nobody had written down:

**[Shelf 10's clipboard](rust-target-clipboard.md) cites eighteen mechanisms at verified line numbers into a file no later session can open.** Hand the next agent that clipboard and it can read every claim and check none of them. The SHA proves two readers saw the same document; it does not let a reader *become* one.

**The graphics shelf hit this first and solved it.** `graphic-a-ascii.md` exists because a PNG is unreadable to an agent without image capability. **This is the same problem with a different unreachable source**, and the same answer.

## 1. Probe: is an extract a citation, or a reproduction?

**The question that decides whether this pass may exist at all.**

| | |
|---|---|
| Distinct book lines cited by the clipboard | **≤ 1,202** |
| As a fraction of 31,482 | **≤ 3.8%** |
| Contiguous runs | 46 |
| Largest run | 30058–30471 — the wasm32 page, 414 lines |

**`≤` is doing real work in that table and is not modesty.** The count came from sweeping every 3–5 digit number in the clipboard, which collects counts, dates and stray figures alongside locators. **1,202 is an upper bound; the true figure is lower.** It is published as a bound because a bound is what the decision needs, and this campaign has been burned four times by publishing a swept number as a measurement.

**Under 4% is a citation.** The falsifier does not fire.

## 2. What pass 1 extracts, and what it leaves

**Pass 1 is the `wasm64-unknown-unknown` page: lines 30597–30700, 104 lines.**

That page carries every one of pass 0's fourteen eye entries and nine of the eighteen `M-R` mechanisms. It is the shelf's seal, and it is one contiguous run.

**Not pass 1:** the wasm32 page (414 lines — the largest run, and its own pass); the codegen-options chapter; `--print`; symbol mangling; the custom-targets pages; the tier tables. **Each is a later pass or none.** A run enters only when a document already cites it.

**The rule that keeps this a citation and not a slow copy:** **no line enters the extract because it is useful. A line enters because a tree document already cites it.** The extract's length is therefore bounded by the tree's own citations and cannot grow on its own.

## 3. Fidelity, declared — and this fixes a defect on the graphics shelf

**None of `graphic-a-ascii.md`, `-b-`, `-c-` declares fidelity to its PNG.** [Iteration 5 pass 4](../plans/verification-iter5-pass-4-plan.md) surfaced that: three transcriptions exist and no reader can tell whether working from one is equivalent to working from the source.

**This product will declare it, per run:**

| Field | Meaning |
|---|---|
| **Source SHA** | the file the run was cut from |
| **Line span** | first and last, inclusive |
| **Method** | `sed -n 'A,Bp'` — mechanical, not retyped |
| **Verbatim / elided** | whether any line was shortened, and which |
| **Verified** | the run re-read against the SHA after writing |

**A transcription without a fidelity line is a rumour with line numbers.** That is the whole argument for the field, and it applies retroactively to the three graphics files — **reported, not fixed here; graphics is another station.**

## 4. Thesis, stated so it can lose

**An extract bounded by existing citations is a citation, and it makes every claim on this shelf checkable by a session that was never handed the book.**

**Falsifier:** if building the run shows the cited ranges are not self-contained — a locator that only makes sense with surrounding text the clipboard never cited — then the extract either grows past its bound or ships a misleading fragment, and **both are worse than the gap.** In that case the pass stops and says so.

**Second falsifier:** if the extract turns out to duplicate what the clipboard already quotes verbatim, it adds nothing. **The clipboard quotes short phrases; the extract carries whole lines in order.** If that difference proves to be no difference on the run, the pass is not worth executing.

## 5. What pass 1 must not do

- **Not commit the book.** `refs/local/` stays ignored. The extract is a derived document with its own path on this shelf.
- **Not become authority.** Every row carries the book's line number; the book at the SHA remains the thing cited.
- **Not extract a line no document cites.** §2's rule. Usefulness is not a reason.
- **Not touch the graphics shelf.** The fidelity defect is reported to `graphics`, not repaired here.
- **Not alter [the clipboard](rust-target-clipboard.md).** It is another campaign's executed pass; the extract serves it and does not edit it.
- **Not fill `[GAP]`.** Emission is untouched. This is a reading aid for a toolchain document and bears on nothing in Core.

## 6. Accept pass 1 when

The wasm64 page is extracted at 30597–30700 by a mechanical cut; the fidelity block is present and its `Verified` field is true; every eye entry and `M-R` locator that falls in that span resolves inside the extract; no line outside a cited run appears; the product declares itself not-authority in its first two lines; and the door carries a row saying what it is and what it is not.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

The shelf wrote down eighteen measurements and locked the ruler in a drawer the next person cannot open. **We are not copying the ruler. We are writing down the marks we actually used, at the numbers we read them from**, so the next pair of hands can check the work instead of trusting it. Emission remains `[GAP]`.
