# The rustc book → shelf 10 — Pass 4 PLAN · ASCII source machinery (`P-R1`…`P-R18` + `P4-X`)

**Status:** **`PLAN`** · not executed. **Station:** clipboards (HELD `Claude-Projection` · BASE `5999635` = `origin/main` after `pull --ff-only`). **Emission:** `[GAP]`. No `src/`.
**Product (execute only — do not create at plan time):** `docs/clipboards/rust-target-ascii-machinery.md`.
**Clipboards under test:** [`rust-target-clipboard.md`](rust-target-clipboard.md) (A1 · pass 0 + pass 1 + forge) · [`cargo-build-std-clipboard.md`](cargo-build-std-clipboard.md) (A4 · pass 0 + forge).
**Mechanisms (done — cite, do not rewrite):** **Page A, `M-R1`…`M-R18`**, inside the A1 clipboard. **There is no `rust-target-mechanisms.md`.** §0.
**Carriers:** [`rust-target-locators.md`](rust-target-locators.md) (5 runs, 407 rows) · [`cargo-build-std-locators.md`](cargo-build-std-locators.md) (3 runs, 38 rows).
**Authority:** `refs/local/The-rustc-book.txt` · `sha256 4a30e620…4e74d3` · `refs/local/The_Cargo_Book.txt` · `sha256 9d7048e1…63c0a5`. **Not authority:** this plan, the extract, the panels.
**Templates mirrored (form only — do not clone their morals):** [`webnn-pass-4-plan.md`](webnn-pass-4-plan.md) · [`webgpu-ascii-machinery.md`](webgpu-ascii-machinery.md) · [`wgsl-ascii-machinery.md`](wgsl-ascii-machinery.md).
**Panel prefix:** **`P-R*`**, 1:1 with **`M-R*`**. Free — P-A, P-B, P-C, P-D, P-G, P-N, P-S, P-T are taken; `P-R` is not.
**Id hazard, stated once:** `P-R4` is a **panel**; `P4-R` is a **pass receipt**. The digit's position is the whole difference. Every shelf carries this collision (`P-N1` / `P1-R`); on this one the letters match too, so it is written down rather than left to be discovered.

```
pull/ff → claim clipboards → read Page A + Page B + Page C + the forge coverage map
        → do NOT rewrite M-R* (cite them) · do NOT mint FM-Rust* ids (§0)
        → draw the SOURCE MACHINERY spine (toolchain pipeline; Core / Φ / strand off-board)
        → for each P-R1…P-R18: a panel implementing its M-R row, stamp under the fence
        → apply the four drawing rules (§3) — closed box · open edge · off-board exit · reach mark
        → P4-X rigor matrix, reach column included · cross-walk M↔P at 18 rows
        → P4-R receipt appended to the A1 clipboard · plan → EXECUTED
        → check-docs · door row · commit · release · STOP
```

---

## 0. The sequence, stated before anything is drawn

**Shelf 10 has never run the shelf pattern's pass 2 or pass 3.** Every other campaign reached pass 4 through a leftovers pass (`D1`–`D6` + `FM-*`) and a standalone mechanisms register (`M-*` in its own file). This shelf did neither. It ran a staking pass 0, a mapping pass 1 that produced `M-R1`–`M-R18` **inside** the clipboard as Page A, then a four-pass locator-extract job and a forge.

So **"pass 4" names the ASCII-machinery slot, not the fourth step of an unbroken run.** Two consequences bind execution:

| Other shelves cite | This shelf must cite |
|---|---|
| `<campaign>-mechanisms.md` | **Page A** of [`rust-target-clipboard.md`](rust-target-clipboard.md) |
| `FM-<campaign>1…9` false-friend ids | **Page H** rows (false friends) · **Page E** rows (anti-imports) · the A4 clipboard's **§5** |

**Do not mint `FM-Rust*` ids.** They would look like the product of a pass that never ran, and a later session would cite them as if a leftovers pass had certified them. A panel's false-friend fence names **the Page H or Page E row it refuses, in the row's own words**. This is the same class of error the campaign has caught twice already — an unregistered `[HUMAN]` stamp, and a `BLOCKED` census that conflated four vocabularies.

## 1. What pass 4 is for

Pass 1 mapped eighteen mechanisms onto project surfaces in a table. The forge established that the quotes are sound and that **9 of 18 mechanisms are fully reachable in-repo, 6 partly, 3 not at all**.

**What no pass has asked: do the eighteen compose?** A table cannot show it. A table can hold two mechanisms that contradict each other, or one that connects to nothing, and look complete either way.

**Pass 4 draws the toolchain as one system and finds out.**

## 2. The spine — a proposal, so that it can fail

**Ten nodes. Every mechanism must attach to at least one, and every node must be named by the book.** This mapping is the plan's guess; execution re-derives it from Page B and records every disagreement.

| # | Spine node | Mechanisms the plan expects to attach |
|---|---|---|
| 1 | **toolchain pin** — nightly, `rustup`, components | `M-R3` · `M-R4` · `M-R15` |
| 2 | **target resolution** — `--target`, built-in name before any JSON | `M-R9` · `M-R1` |
| 3 | **std source** — `rust-src`, the `build-std` crate list | `M-R3` · `M-R5` |
| 4 | **compile** — cfg, panic strategy, target features | `M-R6` · `M-R7` · `M-R8` |
| 5 | **codegen** — opt-level, lto, codegen-units, metadata, mangling | `M-R11` · `M-R12` |
| 6 | **link** — `lld` / `wasm-ld`, link-args, self-contained | `M-R10` |
| 7 | **artifact** — the module, pointer width, C interop | `M-R18` · `M-R14` |
| 8 | **receipt** — the `--print` set, `-V --verbose` | `M-R16` · `M-R15` |
| 9 | **checks** — `G1` `G2` `G3` `G8′` `G9` `G10`, every one `NOT_RUN` | `M-R5` · `M-R7` · `M-R11` · `M-R12` |
| 10 | **trust and status** — tier 3, no tests, LLVM bugs, no prebuilt artifacts | `M-R1` · `M-R2` · `M-R13` · `M-R17` |

**Off-board, named outside the frame with a refusal line, never drawn as nodes:** Lace Core · Φ / POINTER emission · Graphic D · the strand · the append-only array · the wasm-spec-3 shelf's target seal.

## 3. Four drawing rules — the reason this is analysis and not decoration

A diagram that draws a settled fact and an unrun check the same way is a lie about the tree's state. These four make the evidence visible on the face of the drawing, and each one is a column in `P4-X`.

| Rule | Form | Means |
|---|---|---|
| **R-D1 · closed box** | `+----+` on all four sides | the content is **SOURCE** at a locator on Page A |
| **R-D2 · open edge** | the right edge left open, `. . .` | the book **leaves it open** — Page B's third column names what would close it. Every `NOT_RUN` check, every `[GAP]`, every `UNESTABLISHED` is drawn this way |
| **R-D3 · off-board exit** | outside the frame, prefixed `#` | Core · Φ · Graphic D · the strand. Named to be refused, never drawn as a node |
| **R-D4 · reach mark** | in the caption: `Reach: FULL \| PARTIAL \| NONE` | taken from [the forge's coverage map](rust-target-clipboard.md#f2--the-coverage-map-what-is-reachable-in-repo-and-what-still-needs-the-book) — whether a session **without the book** can check this panel's own citations |

**R-D2 is the one that does the work.** Page D's recipe has nine rows and **every one is `NOT_RUN`**. Drawn as closed boxes they would read as a working build. Drawn open, the diagram says what the shelf actually has: a shape, with the checks unrun and the carriers on another shelf.

**R-D4 is the forge's product put to use.** Nine panels will read `FULL`, six `PARTIAL`, three `NONE` — and `M-R16`, the receipt the whole recipe rests on, reads `NONE`.

## 4. The eighteen panels

Each gets: `Mechanism cite` · `Sighting` · `Lace stamp` · `PAGE cite` · `False friend` (Page H / Page E row, in its words) · **`Reach`** · `Emission` · `Implements` (drawn from Page B's *Touches / Settles / Leaves open*) · the fence · the stamp line under the fence.

| P | M | Spine node | Hard stamp beyond the universal three | Reach |
|---|---|---|---|---|
| `P-R1` | `M-R1` | 2 · 10 | — | **PARTIAL** (1/4) |
| `P-R2` | `M-R2` | 10 | — | **FULL** |
| `P-R3` | `M-R3` | 1 · 3 | **PROPOSAL-only** | **PARTIAL** (4/7) |
| `P-R4` | `M-R4` | 1 | — | **NONE** (0/2) |
| `P-R5` | `M-R5` | 3 · 9 | **FORBID-as-Lace-store** | **FULL** |
| `P-R6` | `M-R6` | 4 | — | **FULL** |
| `P-R7` | `M-R7` | 4 · 9 | **PROPOSAL-only** | **PARTIAL** (9/10) |
| `P-R8` | `M-R8` | 4 | — | **PARTIAL** (2/3) |
| `P-R9` | `M-R9` | 2 | — | **NONE** (0/5) |
| `P-R10` | `M-R10` | 6 | — | **FULL** |
| `P-R11` | `M-R11` | 5 · 9 | **PROPOSAL-only** | **FULL** |
| `P-R12` | `M-R12` | 5 · 9 | **PROPOSAL-only** | **PARTIAL** (1/4) |
| `P-R13` | `M-R13` | 10 | — | **FULL** |
| `P-R14` | `M-R14` | 7 | — | **FULL** |
| `P-R15` | `M-R15` | 1 · 8 | — | **PARTIAL** (1/4) |
| `P-R16` | `M-R16` | 8 | **PROPOSAL-only** | **NONE** (0/9) |
| `P-R17` | `M-R17` | 10 | — | **FULL** |
| `P-R18` | `M-R18` | 7 | **FORBID-as-Lace-store** | **FULL** |

**Universal on all eighteen, from Page C:** `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append`.

**The A4 half does not get its own panels.** `C1`–`C10` are eye entries, not mechanisms; shelf 10 has one mechanism register and minting a second would repeat §0's error. They are **cited into** the panels they bear on — `C1`–`C7`, `C9`, `C10` into `P-R3`; `C8` and [sub-question **d**](cargo-build-std-clipboard.md#f3--the-elision-that-cost-a-sentence-and-the-gap-it-opens) into `P-R7`, drawn **open** under `R-D2`.

## 5. Thesis, stated so it can lose

**The eighteen compose into one pipeline with no orphan and no second store; and every place the drawing cannot be closed from this shelf alone is an artifact check whose carrier is the wasm-spec-3 shelf's.**

| | Falsifier | If it fires |
|---|---|---|
| **F1** | A mechanism attaches to **no** spine node, or needs a node the book never names | the spine is invented. Cite the node or drop it — **do not widen the pipeline to fit** |
| **F2** | A panel cannot be drawn without naming a store, a strand, or an emission | that panel is the most dangerous on the shelf. It gets a fence and a refusal, **not a redraw** |
| **F3** | **The sharp one.** A panel's fence, with its labels changed, would serve equally as a drawing of Core | it is not toolchain machinery. Say so and cut it |
| **F4** | An open item under `R-D2` turns out to have been closed on another shelf and nobody carried it across | record the carry; **do not close it here** |

**F3 is the one to expect.** A compile pipeline and an append pipeline are both *inputs → transform → artifact*, and the shelf's whole reason for existing is that they are not the same thing.

## 6. This pass must not

- **Not mint `FM-Rust*`.** §0.
- **Not draw Core, Φ, Graphic D or the strand as nodes.** `R-D3`; off-board with a refusal line.
- **Not put the word POINTER inside any fence.** Audited in `P4-X`, as every other shelf audits it.
- **Not draw a `NOT_RUN` check closed.** `R-D2`. A gate is drawn as *a check to be run*, never as a result.
- **Not carry new book lines.** The extract job's remaining **25 ranges, 150 lines** are its own pass. A panel that needs an unreachable line marks `Reach: NONE` and cites Page A.
- **Not rewrite `M-R*`**, not edit an executed pass body, not close a `[GAP]`, not take a ruling, not run a build.
- **Not commit a script, a Cargo file, a `.wat`, or `src/`.** ASCII in markdown is prose; a checker is code, and code waits for the human's word.
- **Not conflate shelves.** The target seal is [wasm-spec-3's](wasm-spec-3-clipboard.md); this shelf is the compiler beside it.

## 7. Accept pass 4 when

Eighteen panels exist, each with all eight fields and a stamp line under its fence; the spine is drawn once with **every panel attached to a named node** and every attachment re-derived from Page B rather than from §2's guess, with disagreements recorded; the cross-walk M↔P has **18 rows and no blank cell**; `P4-X` carries a column per drawing rule **including reach**, and re-walks each special gate instead of rubber-stamping it; the POINTER-in-fence audit is run and its result published; all four falsifiers are reported fired or not fired, with the evidence; a `P4-R` receipt is appended to the A1 clipboard; the door gains the new file; **nothing is closed** and emission reads `[GAP]`.

## 8. Not this pass

**Wave B, seeded and deferred:** the recipe spine `B0`–`B8` and the gate lattice `G1` `G2` `G3` `G8′` `G9` `G10` drawn as machinery in their own right. Blocked on ruling `R12` (a pre-gate fixture), on A4's two remaining `[GAP]`s, and on the spec-shelf sighting that carries `G8′`/`G9`. **Seeding is one line each; drawing them now would require inventing what the sighting has not delivered.**

Also not this pass: the extract job's cluster passes; an order proposal (that is pass 5's shape on the other shelves); any Shadow claim.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

**A diagram is the easiest place in this repository to tell a lie**, because a box drawn around an unrun check looks exactly like a box drawn around a fact. That is why `R-D2` exists and why `R-D4` puts the forge's reach on the face of every panel. **Eighteen boxes, nine of them open, three of them marked as things no one here can check.** Emission remains `[GAP]`.
