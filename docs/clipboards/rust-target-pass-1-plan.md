# Rust target shelf — pass 1 plan: the mapping, rigorously, against a stated result

**Status:** **`EXECUTED`** → [the clipboard, Pass 1](rust-target-clipboard.md#pass-1--mapping-pages-ah-x--executed). **Falsifier did not fire; thesis holds with two amendments (G8 → G8′ validation-under-a-feature-set; G10 reproducibility added as a named residual).** M-R count 18 (expected 10–12). One correction to §1 carried in the open: b4's artifact check reads *"no exception-handling constructs"*, not *"no unwind tables"* (the book, 30410–30413). **Station:** clipboards. **Emission:** `[GAP]`. No `src/`.
**Shelf:** 10 — *The rustc book*, staked by the human (A1). **Pass 0** (the staking receipt) is executed on [the clipboard](rust-target-clipboard.md). **Pinned:** `e2e8155` + branch `lace-context-iteration-6`. **Editor:** Claude Fable 5.1; one hand; declared.
**Cadence, this time honored:** this file first; executed on the human's proceed (2026-09-19 23:03 PT); the clipboard gained *Pass 1 — mapping*; this status line flipped.

---

## 0. The correction this plan carries

The clipboard's staking section was first headed *Pass 1* and was written with no plan file — the failure named in the [iteration 7 receipt](../plans/lace-context-iteration-7-receipt.md) §4, repeated by its author within the hour. Relabelled *Pass 0 — staking receipt* in the open. The shelf's pass 1 is the **mapping**, as on the other nine shelves, and it has not been run.

## 1. The desired result, stated so that "ensure" is checkable

The mapping exists to reach one thing. Call it **B**: a build recipe for the sealed target such that a build produced by B is *inside the law by inspection of the artifact*, not by anyone's word. B is the desired result when every row below is either checkable on the artifact or a named ruling:

| # | Requirement of B | Source of the requirement | The check that verifies it (on the artifact, not the builder) |
|---|---|---|---|
| **b1** | inputs pinned: exact nightly, exact `rust-src` hash, exact target triple | law: reproducibility; book E13 *"always pin your compiler version"* | a build receipt listing the versions; **G6**-style: two builds from the same inputs give the same sections |
| **b2** | zero crates outside the repo | law (Implementation Law) | **G1**: `Cargo.lock` lists path dependencies only; no registry source |
| **b3** | no `std`, no `alloc`, **no `dlmalloc`** in the effective link | law; book **E6** (the target's std ships dlmalloc) | the artifact's import section is empty (**G2**) *and* its export set is exact (**G3**) *and* no symbol from `dlmalloc`/`alloc` survives in the name section — a symbol scan |
| **b4** | `panic = "abort"` | book **E5** (unwind unsupported) | the build profile; and no unwind tables in the artifact |
| **b5** | feature section ⊆ {memory64, bulk-memory, mutable-globals, sign-ext, nontrapping-fptoint} | book **E7**; Spec 3.0 (shelf wasm-spec-3) | **G8** (new): parse the target-features section; refuse any other feature |
| **b6** | the module's memory is `i64`-addressed (the seal) | wasm-spec-3 banner; book E1 | **G9** (new): the memory section's limits flag has the memory64 bit |
| **b7** | the recipe is executable **before the gate only on a non-Core fixture**, if at all | AGENTS.md *Never add src/*; C03 *no build scaffold* | **ruling R12**: is a no-op `#![no_std]` probe crate "src/", or is a hand-written `.wat` fixture the only pre-gate module? Not this plan's to decide |

**Desired result = b1–b6 each verified by a check, b7 ruled.** Nothing else counts as "the recipe works."

## 2. Measured before proposing — what the book gives for each row, and what it does not

| Row | The book has | Lines | The book lacks | Goes to |
|---|---|---|---|---|
| b1 | pin the compiler | 14887–14888 | how to pin `rust-src`; what a build receipt is | **A4** (Cargo `build-std`); rustup docs (A10, later) |
| b2 | — | — | everything: dependency resolution is Cargo's | A4 |
| b3 | the target's std carries dlmalloc; wasm64 std "in the same manner as wasm32" | 30605–30612 | how `#![no_std]` + `-Zbuild-std=core` excludes std/alloc/dlmalloc — Cargo's | A4; the symbol-scan check is ours |
| b4 | unwind unsupported | 30649 | — | sheet T (sourced) |
| b5 | the four assumed proposals with LLVM flags | 30632–30638 | whether `-C target-feature` may *add* others (e.g. atomics for threads, R11) | A4; R11 |
| b6 | "64-bit memories … memory64 proposal" | 30599–30600 | the binary encoding of the limits flag — Spec 3.0's | wasm-spec-3 shelf P-T4 |
| b7 | *Building the target* (bootstrap.toml, lld) — a **rustc-build** route, not a Cargo route | 30654–30662 | — | R12; the two routes are both **PROPOSAL-only** |

**Measured:** the book determines **b4, b5, b6** on its own and **b1** in principle; **b2, b3** are determined only with A4; **b7** is a ruling. So the mapping cannot close B alone — and the plan says so before running. The thesis is shaped to that.

## 3. One question

**Does the rustc book, together with A4 when it arrives, determine a unique minimal recipe B satisfying b1–b6 — and is every one of b1–b6 checkable on the artifact rather than trusted from the builder?**

## 4. Thesis, stated so it can lose

**Yes: B is unique up to the pinned versions; b4–b6 are determined by this shelf alone and are checkable now (G8, G9 written as specifications); b1–b3 are determined once A4 is staked and are checkable by G1, G2, G3 plus a symbol scan; the only residual trust is the toolchain itself — ruling R1 — and nothing else.**

**Falsifier:** a requirement among b1–b6 that neither this book nor A4 determines **and** no artifact check can verify. If one exists it is a ruling or a residue, named in the findings; if it is b3 (dlmalloc absence cannot be shown from the artifact), the recipe is not inside the law by inspection and the thesis loses.

## 5. The mapping — pages A–H, X (the shelf form), planned

| Page | Content | Reads | Writes |
|---|---|---|---|
| **A** intuition | every toolchain mechanism the book names for this target: tier · prebuilt artifacts · build-std · rustc-build route · std/dlmalloc · panic strategy · assumed proposals · cfgs · custom target JSON · lld · testing status · C interop | pass 0 eye entries; the book's *Targets*, *Custom Targets*, *Platform Support* chapters | the mechanism list M-R1…M-Rn with line locators |
| **B** mechanism → project surface | each M-R → the sheet / door / ruling / check it touches (sheet T · sheet R · crate map Page F · R1 · R11 · R12 · G1–G9) | the shape; the execution model X6 | **the mapping table** — this is the pass |
| **C** stamps | per M-R: KEEP-read-as-toolchain · FORBID-as-Core · FORBID-as-Lace-store · SILENT-for-Lace-append · PROPOSAL-only | the stamp vocabulary of the nine shelves | stamps column |
| **D** the recipe B | b1–b7 as an ordered sequence of steps, each with its check and its evidence state (`NOT_RUN` for all) | §1 | the recipe, **as prose** — not a script, not a Cargo file |
| **E** anti-imports | what the book tempts and the law forbids: `std` "because the target has it" · dlmalloc "because it's there" · unwind · an unpinned custom target JSON · a silent fall back to wasm32 · C interop · `println!` debugging that "does nothing" but links | law; Page E of the crate map | the refuse list |
| **F** evidence states | every claim in A–E stamped | C10 | — |
| **G** open items | A4 · A3 (the 16 GB tension, E8) · A10 (rustup / rust-src) · R1 · R11 · R12 | — | the queue, one at a time |
| **H** false friends | *the target ships std* ≠ *we link std* · *64-bit address space* ≠ *the strand's domain* · *compiles for wasm64* ≠ *accepted* · *rustc-build route* ≠ *a first-party branch* | the wasm-spec-3 refuse list | the fence |
| **X** cross-cut verdict | does B exist by inspection? which rows wait on A4? propose / attack / resolve, one hand declared | — | the verdict |

## 6. May write / must not

**May write:** `docs/clipboards/rust-target-clipboard.md` — append *Pass 1 — mapping (A–H, X)*; the clipboards door row; this status line. Station clipboards.
**Must not:** add `Cargo.toml`, `src/`, a `.wat` fixture, a build script, a workflow, or any file that runs; pull A4 from the web (it is attached by the human or it is absent); treat the recipe as run (`NOT_RUN` throughout); treat "the target ships an allocator" as permission for `alloc`; edit the law, the wasm-spec-3 shelf, or sheet T (findings cite them; a later pass revises).

## 7. Expected vs actual

| | |
|---|---|
| **Expected** | M-R count 10–12; B has 7 rows with b4–b6 closed by this shelf and b1–b3 `[BLOCKED]` on A4; G8 and G9 specified as parse-the-section checks; the falsifier does not fire on b3 (a name-section scan is sufficient in principle) but the receipt says *in principle* |
| **Actual** | `NOT_TESTED` |
| **Physical / build** | `NOT_PERFORMED` / `NOT_RUN` — no toolchain is invoked by this pass |
| **Human acceptance** | `ABSENT` |

## 8. Stop

Pages A–H, X written; every M-R has a line locator, a project surface, a stamp; B's seven rows each carry a check or a ruling; the falsifier's result is on this file's status line. Then stop. Pass 2 (leftovers: the rest of the book that a `no_std` build touches) gets its own plan.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

A recipe you cannot check on the finished knot is a story about a knot. Emission remains `[GAP]`.
