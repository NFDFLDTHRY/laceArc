# The rustc toolchain — ASCII SOURCE MACHINERY (shelf 10 · `P-R1`…`P-R18` · `P4-X`)

**Status:** **Pass 4 EXECUTED** 2026-09-20 · base `43e290f`. **Station:** clipboards. **Emission:** `[GAP]`. No `src/`.
**Plan:** [`rust-target-pass-4-plan.md`](rust-target-pass-4-plan.md). **Mechanisms (cited, never rewritten):** Page A of [`rust-target-clipboard.md`](rust-target-clipboard.md), `M-R1`–`M-R18`.
**Carriers:** [`rust-target-locators.md`](rust-target-locators.md) · [`cargo-build-std-locators.md`](cargo-build-std-locators.md).
**Authority:** the two staked books at their SHAs. **Not authority:** this file. A panel is a reading of a mechanism; the mechanism is a reading of the book; the book is the source.

**What this file is.** The eighteen mechanisms drawn as one system, to answer the question a table cannot: **do they compose?**

**What it is not.** Not Core. Not Graphic D. Not a fill of [`pointer-emission.md`](../pointer-emission.md). Not a build, a script, or a recipe that has been run. Not the target seal — that is [the wasm-spec-3 shelf's](wasm-spec-3-clipboard.md); this shelf is the compiler beside it.

```
+======================================================================+
|  SHELF 10 SPECIAL — rustc + cargo -> wasm64-unknown-unknown (Tier 3)  |
|  Pass 4 = ASCII SOURCE MACHINERY. Toolchain surfaces ONLY.            |
|  KEEP-read-as-toolchain on all 18 · FORBID-as-Core on all 18.         |
|                                                                       |
|  FORBID: the module's linear memory as the Lace store or its domain.  |
|  FORBID: an allocator (dlmalloc) as the strand or its append surface. |
|  FORBID: a successful compile as acceptance. Compiling is not ruling. |
|  FORBID: any recipe row drawn closed. Every one of the nine is        |
|          NOT_RUN and is drawn with an open edge.                      |
|  FORBID: minting FM-Rust* ids. This shelf never ran a leftovers pass. |
|  FORBID: src/, Cargo.toml, .wat, or a checker script entering git.    |
|                                                                       |
|  Core · Phi · Graphic D · the strand: OFF-BOARD, refused, not drawn.  |
+======================================================================+
```

## Stamp legend

| Stamp | Where it comes from | Read as |
|---|---|---|
| `KEEP-read-as-toolchain` | Page C — all eighteen | how rustc reaches a sealed target, and nothing more |
| `FORBID-as-Core` | Page C — all eighteen | no mechanism here is a Lace mechanism |
| `SILENT-for-Lace-append` | Page C — all eighteen | the books have no sentence about when a section is appended. Φ `[GAP]` |
| `FORBID-as-Lace-store` | Page C — `M-R5`, `M-R18` only | a heap is not the strand; an address space is not `L`'s domain |
| `PROPOSAL-only` | Page C — the recipe, `M-R7`, `M-R11`, `M-R12`, `M-R16` | a shape, `NOT_RUN`, never a result |

## The four drawing rules

Stated in [the plan §3](rust-target-pass-4-plan.md) before anything was drawn, and each one a column in `P4-X`.

| Rule | Form | Means |
|---|---|---|
| **R-D1** | `+-----+` closed on four sides | **SOURCE** at a locator on Page A |
| **R-D2** | right edge open, trailing `. . .` | the book **leaves it open**. Every `NOT_RUN`, `[GAP]` and `UNESTABLISHED` is drawn this way |
| **R-D3** | outside the frame, prefixed `#` | refused, never a node |
| **R-D4** | `Reach:` in the caption | `FULL` / `PARTIAL` / `NONE` from [the forge's coverage map](rust-target-clipboard.md#f2--the-coverage-map-what-is-reachable-in-repo-and-what-still-needs-the-book) — can a session **without the book** check this panel's own citations? |

---

## The spine, re-derived — and the plan's guess was wrong on seven of eighteen

**The plan proposed ten nodes and guessed which mechanisms attach to each. Execution re-derived every attachment from Page B's *Touches* column, as [§7 required](rust-target-pass-4-plan.md). Seven rows disagree, and they disagree in one direction.**

| M-R | Plan guessed | Page B gives | Disagreement |
|---|---|---|---|
| `M-R1` | 2 · 10 | **10** | **drop 2.** Page B touches sheet T, R1, the failure model. The tier-table row is *status*, not resolution — nothing in `M-R1` resolves a target |
| `M-R2` | 10 | **1 · 3 · 10** | **add 1, 3.** "No prebuilt artifacts" is status; **the two routes are pipeline** — a rustc source build feeds the pin, build-std feeds the std source |
| `M-R4` | 1 | **1 · 8** | **add 8.** `-Z unstable-options` is what gates `--print target-spec-json` (14876) — it is a receipt gate as well as a pin fact |
| `M-R6` | 4 | **4 · 9** | **add 9.** Page B: *"the EH-disabled validation is a spec-shelf check"* — `b4` has a check, so the mechanism reaches node 9 |
| `M-R8` | 4 | **4 · 8** | **add 8.** `rustc --print cfg` (604–627) is in `M-R8`'s own locator list |
| `M-R9` | 2 | **2 · 8** | **add 8.** `--print target-list` and `--print target-spec-json` are `M-R9`'s |
| `M-R10` | 6 | **6 · 8** | **add 8.** `--print link-args` — *"the full linker invocation"* (722–728) |
| the other eleven | | | **agree** |

**Every disagreement but one adds node 8.** The plan expected the receipt to attract two mechanisms; Page B attaches **six** — `M-R4`, `M-R8`, `M-R9`, `M-R10`, `M-R15`, `M-R16`.

**That is the structural finding of this pass.** The `--print` set is not one mechanism among eighteen; it is **how the toolchain describes every other node of the pipeline to the receipt**. And [the forge measured it at 0 of 9 cited ranges carried](rust-target-clipboard.md#f2--the-coverage-map-what-is-reachable-in-repo-and-what-still-needs-the-book) — `Reach: NONE`.

**So the most connected node on the spine is the least checkable thing on the shelf.** The forge named `M-R16` "the most-cited mechanism and the least checkable"; the spine shows *why* — it is not cited often by accident, it is cited often because everything reports through it.

## SOURCE MACHINERY overview — the toolchain spine

Ten nodes. Every mechanism attaches to at least one; every node carries at least one mechanism. Core, Φ, Graphic D and the strand are named below the frame and refused.

```
   [1] TOOLCHAIN PIN                          [10] TRUST AND STATUS
   +----------------------------+             +--------------------------+
   | one nightly date           |             | Tier 3; no official      |
   | rustup + rust-src component|<--- M-R2 ---| builds; may or may not   |
   | M-R3 M-R4 M-R15 M-R2       |             | work. No tests run.      |
   +-------------+--------------+             | LLVM bugs expected.      |
                 |                            | M-R1 M-R2 M-R13 M-R17    |
                 v                            +--------------------------+
   [2] TARGET LOOKUP  (14906)                   (binds every node below;
   +----------------------------+                drawn once, not repeated)
   | built-in name wins before  |
   | any file or search path    |             [3] STD SOURCE
   | M-R9                       |------------>+---------------------------+
   +-------------+--------------+             | rust-src; build-std with  |
                 |                            | a crate list. core alone  |
                 |                            | is a licensed form.       |
                 |                            | M-R3 M-R5 M-R2            |
                 |                            +------------+--------------+
                 |                                         |
                 v                                         v
   [4] COMPILE                                  (std crates built with the
   +----------------------------+                same feature set, or UB)
   | cfg wasm64 / family wasm   |
   | panic strategy: abort,     |
   |   forced on this target    |
   | target features: four      |
   |   assumed proposals        |
   | M-R6 M-R7 M-R8             |
   +-------------+--------------+
                 |
                 v
   [5] CODEGEN                                 [8] RECEIPT
   +----------------------------+              +--------------------------
   | opt-level lto codegen-units|  - - - - - > | rustc -V --verbose
   | debuginfo metadata strip   |   reports    | --print sysroot host-tuple
   | symbol-mangling-version v0 |   into       | cfg target-features
   | M-R11 M-R12                |              | link-args target-spec-json
   +-------------+--------------+              | M-R4 M-R8 M-R9 M-R10
                 |                             | M-R15 M-R16          . . .
                 v                             +--------------------------
   [6] LINK                                     six mechanisms report here;
   +----------------------------+               NOTHING here is carried
   | lld / wasm-ld required     |  - - - - - >  in-repo (Reach: NONE)
   | link-arg link-self-contained|
   | M-R10                      |
   +-------------+--------------+
                 |
                 v
   [7] ARTIFACT
   +----------------------------+
   | one .wasm module           |
   | usize = 8 bytes; 64-bit    |
   |   memories (30620-23)      |
   | no libc, no C mixing       |
   | M-R14 M-R18                |
   +-------------+--------------+
                 |
                 v
   [9] CHECKS                    . . . . . . . . . . . . . . . . . . . .
   +------------------------------------------------------------------
   | G1 lockfile: path sources only        NOT_RUN, and blocked beyond A4
   | G2 import section empty               NOT_RUN
   | G3 exact export set                   NOT_RUN
   | G8' validate under the allowed        NOT_RUN; checker, mode and
   |     feature set, EH disabled            version all unestablished
   | G9 memory limits carry i64            NOT_RUN; encoding sighted only
   | G10 two builds, same bytes            NOT_RUN; no build exists
   | M-R5 M-R6 M-R7 M-R11 M-R12            every row open by R-D2
   +------------------------------------------------------------------

   # OFF-BOARD, refused, never nodes:
   #   Lace Core                 - no mechanism above is a Lace mechanism
   #   Phi / emission            - SILENT on all eighteen; [GAP] stands
   #   Graphic D                 - not drawn, not approached
   #   the strand / the array    - node [7]'s memory is not its domain
   #   the target seal           - wasm-spec-3's shelf, not this one
```
stamp under spine: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append | [INFERENCE] — node boxes 1–8 and 10 are SOURCE at their M-R cites; node 9 is SHELF (project gates); arrows and pipeline order are composition, not a book sentence


**Read the shape.** Nodes 1–7 are closed: the book states them at locators. **Node 9 is open on every row, and node 8 is open on its right edge** — the two nodes that would tell you whether the pipeline works are the two the shelf cannot close. Node 10 binds all of them and is itself the reason: a Tier 3 target with no builds and no tests.

**`P5-O`:** this file holds **exactly one** canonical SOURCE MACHINERY overview — the spine above. **count = 1**, confirmed at pass 5. Core, Φ, Graphic D, the strand and the target seal remain off-board and refused.

### Order proposal (Shadow) — shelf 10's order, as shelf hygiene *(short mirror)*

**Full text:** [clipboard `P5-P`](rust-target-clipboard.md#p5-p--the-order-proposal-reading-a-source-you-may-not-commit). **Stamps:** `PROPOSAL` · **`NON-binding`** · `FORBID-as-Core` · `FORBID-as-Core-write` · `FORBID-as-Lace-store` · `SILENT-for-Lace-append` · emission `[GAP]`.

Shelf 10 proposes an order for **reading a staked source you are not allowed to commit** — **stake → cut → gate → reach → draw → confirm** — and each rule in it is named after the pass that got it wrong first. It is **not** the siblings' *observe → name → diagram-check* order, and pass 5 declined to inherit one this shelf never earned.

**`F2` fired, and the proposal is narrower for it.** *Stake*, *draw* and *confirm* are general. *Cut* is general as a rule and shelf-local as a mechanism. **`Gate` and `reach` cannot be run on a PDF shelf at all** — not through any fault of those shelves, but because [the tree forbids tracked PDFs](../law-why-these-documents.md), so a PDF source can never be carried into the repository the way lines can. **A text-sourced shelf can be made checkable in-repo; a PDF-sourced shelf cannot, and should say so rather than imply it.**

**NON-binding** on `AGENTS.md`, the law, the manifest, the graphics, and every sibling shelf. Only the human rules.

---

## Wave A — eighteen panels, 1:1 with `M-R1`…`M-R18`

**Id convention, stated once:** `P-R4` is a **panel**; `P4-R` is a **pass receipt**. The digit's position is the whole difference.

### `P-R1` — Tier 3, and what a tier is a fact about · node 10

| Field | Content |
|---|---|
| Mechanism cite | **`M-R1`** · 30598 · 18460–18462 · 18468 · 18878 |
| Sighting | Pass 0 `E1`, `E14` · Pass 1 Page A/B · forge gate: quotes stand at their lines |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B · H |
| False friend | **Page H:** std column `?` is *"unknown or a work-in-progress"* — **not** `*` = *"only supports no_std"*. The book does not call this a no_std-only target |
| Reach | **PARTIAL** — 1 of 4 ranges carried (30598 only). The tier tables at 18460–18878 are in [the extract job's cluster 4](rust-target-clipboard.md#f3--what-remains-is-finite-and-here-it-is) |
| Emission | `[GAP]` |
| Implements | Page B — *touches* sheet T (T1), R1, the failure model; *settles* that the tier is SOURCE; *leaves open* **nothing**: a tier is a fact about the project, not about the artifact |

```
   rust-lang project policy
            |
            v
   +---------------------------+
   | Tier 3                    |
   |  no automatic build       |
   |  no automatic test        |
   |  no official artifacts    |
   |  std column: "?"          |
   +-------------+-------------+
                 |
                 | binds every claim made below it
                 v
        node [10] trust and status
   # "?" means unknown, NOT "no_std only"
   # a tier says nothing about any artifact you build
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R2` — No prebuilt artifacts, therefore two routes · nodes 1 · 3 · 10

| Field | Content |
|---|---|
| Mechanism cite | **`M-R2`** · 30669–30671 · 30654–30663 |
| Sighting | Pass 0 `E2` · Pass 1 Page A/B · [locators run 1](rust-target-locators.md#the-page) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B · H |
| False friend | **Page H:** *Building the target* (30654–30663) is **a rustc source build with bootstrap.toml** — a toolchain act, never a first-party branch, never `src/` |
| Reach | **FULL** — 2 of 2 ranges carried |
| Emission | `[GAP]` |
| Implements | Page B — *touches* sheet T (T2), `b7`, R1; *settles* that two routes exist and that the rustc-build route is a toolchain build; *leaves open* which route the recipe takes — **A4's**, and the book only names both |

```
   "Rust does not yet ship pre-compiled artifacts for this target"
                         |
           +-------------+-------------+
           |                           |
           v                           v
   +--------------------+    +--------------------+
   | route A            |    | route B            |
   | build Rust itself  |    | build your own std |
   |  bootstrap.toml    |    |  via build-std     |
   |  target = [...]    |    |                    |
   |  lld = true        |    |                    |
   +---------+----------+    +---------+----------+
             |                         |
             v                         v
        node [1] pin              node [3] std source
             |                         |
             +------------+------------+
                          |
                          v
   +-------------------------------------
   | WHICH ROUTE the recipe takes is not
   | in this book. Page B assigns it to
   | A4 -- and A4 delivered the flag form
   | and neither the lockfile nor
   | compiler_builtins.              . . .
   +-------------------------------------
   # route A builds the COMPILER. It is never a branch of this project.
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R3` — `build-std`, and the crate list that is not optional · nodes 1 · 3

| Field | Content |
|---|---|
| Mechanism cite | **`M-R3`** · 14885 · 30357 · 30425–30426 · 30154 · 26538–26539 · 26587–26590 · 30361 · **A4:** `C1`–`C7`, `C9`, `C10` (8729–8772, 8377) |
| Sighting | Pass 1 Page A/B · [locators run 3](rust-target-locators.md) (30154) · [A4 locators run 1](cargo-build-std-locators.md) (whole chapter) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` · **`PROPOSAL-only`** |
| PAGE cite | A · B · D (`B2`) · H · **A4 §3** |
| False friend | **Page H:** `-Zbuild-std` — *"rebuild std" is one form; `-Z build-std=core` is another; the list is the point.* **A4 §5:** a bare `-Z build-std` *"to get something building"* **links `std` and `alloc`** (8748) — the exact violation the shelf exists to prevent |
| Reach | **PARTIAL** — 4 of 7 A1 ranges carried; 14885 (custom targets) and the nvptx pair 26538–26590 are not. **The A4 side is 10 of 10** |
| Emission | `[GAP]` |
| Implements | Page B — *touches* `b1`, `b2`/`b3`, sheet T's postcondition; *settles* that the mechanism takes a crate list and that `core` alone is a form the books show; *leaves open* whether `-Z build-std=core` on **wasm64** links neither `alloc` nor `dlmalloc`, and whether `compiler_builtins` must be listed — **both `[GAP]` after A4** |

```
   rustup component add rust-src --toolchain nightly      (A4 C3, 8734)
            |
            v
   +-----------------------------+
   | nightly cargo + nightly rustc|                       (A4 C7, 8759)
   +--------------+--------------+
                  |
                  |  -Z build-std  must be passed to ALL invocations
                  v                                       (A4 C7, 8760)
      +-----------------------+          +---------------------------
      | bare -Z build-std     |   NO     | -Z build-std=core
      |  implicitly compiles  |--------->|  a comma-separated list
      |  core std alloc       |  refused |  of std crates to build
      |  proc_macro (C4 8748) |          |  core alone is licensed
      +-----------------------+          |  (C5 C6, 8750 8752)   . . .
                                         +---------------------------
                                          open: does core-only on wasm64
                                          link neither alloc nor dlmalloc
                                          open: is compiler_builtins
                                          required -- absent from all
                                          21,712 lines of A4
   # the list is MANDATORY, not an optimisation
   # a licensed form is not a proven build. Nothing here was run.
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append | PROPOSAL-only

---

### `P-R4` — Nightly, and the flag that gates the receipt · nodes 1 · 8

| Field | Content |
|---|---|
| Mechanism cite | **`M-R4`** · 14815–14821 · 14876 · **A4 (pass 5, `P5-F`):** `C7`'s second requirement — *"You must use both a nightly Cargo and a nightly rustc"*, 8759 |
| Sighting | Pass 1 Page A/B only |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B · D (`B0`) |
| False friend | **A4 §5:** reading *"very early stages of development"* (8763) as a reason to pin nothing — **the opposite: instability is why the receipt pins the nightly** |
| Reach | **NONE** — 0 of 2 **A1** ranges carried; a session without the rustc book cannot check either. **The A4 sentence added by `P5-F` is carried** ([A4 locators run 1](cargo-build-std-locators.md)), so the panel is no longer wholly unreachable — but **the reach class is measured on Page A's ranges and does not move**. A1 reach and A4 reach are different measures and are not summed |
| Emission | `[GAP]` |
| Implements | Page B — *touches* R1, `b1`; *settles* that nightly is inside the trust boundary **by necessity, not preference**, because `-Z` flags are nightly-only; *leaves open* R1 itself, which is **the human's** |

```
   +----------------------------+
   | -Z flags exist only on     |
   | nightly; they require      |
   | -Z unstable-options        |
   +-------------+--------------+
                 |
        +--------+---------+
        |                  |
        v                  v
   node [1] pin      rustc +nightly -Z unstable-options
   one date,           --print target-spec-json
   recorded                        |
                                   v
                              node [8] receipt
                                   |
                                   v
   +--------------------------------------
   | R1 -- is the toolchain inside the
   | trust boundary? The book cannot say.
   | It is a ruling, and it is the
   | human's. Unopened.               . . .
   +--------------------------------------
   # nightly is here by necessity, not preference
   # neither of this panel's two citations is carried in-repo (R-D4)
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R5` — std, alloc, dlmalloc: an obligation, not a heap · nodes 3 · 9

| Field | Content |
|---|---|
| Mechanism cite | **`M-R5`** · 30613–30618 · 30226 · 30262–30263 |
| Sighting | Pass 0 `E6` · Pass 1 Page A/B · [locators runs 1–2](rust-target-locators.md) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` · **`FORBID-as-Lace-store`** |
| PAGE cite | A · B · D (`B2`) · E · H |
| False friend | **Page H:** *the target ships std* is not *we link std* — std here is a library of errors (30613–30616). **Page H:** *full support for `core` and `alloc`* (30226) is **availability, not permission**. **Page E:** *"comes by default with an allocator"* → use `alloc` / dlmalloc — refused; absence must be **shown on the artifact** |
| Reach | **FULL** — 3 of 3 ranges carried |
| Emission | `[GAP]` |
| Implements | Page B — *touches* `b3`, crate map Page F, refuse 2; *settles* the obligation as **sourced**: the target's std *does* carry dlmalloc, so absence must be shown; *leaves open* **how** absence is shown — and see `P-R12`, where that carrier question moved |

```
   the target's std                        what the law permits
   +--------------------------+            +----------------------+
   | std available            |            | first-party crates   |
   | I/O returns error        |            | no std, no alloc,    |
   | println! does nothing    |            | no foreign deps      |
   | dlmalloc is the default  |            +----------+-----------+
   |   global allocator       |                       |
   +------------+-------------+                       |
                |                                     |
                +------------------+------------------+
                                   |
                                   v
                +-------------------------------------
                | OBLIGATION, not a heap:
                | prove the effective build links
                | neither std nor dlmalloc
                | -> node [9], and NOT_RUN        . . .
                +-------------------------------------
   # availability is not permission
   # a std you cannot use is still a std you linked
   # this panel draws a PROOF DUTY. It does not draw memory.
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append | FORBID-as-Lace-store

---

### `P-R6` — Panic strategy: abort, forced, and binding on the whole graph · nodes 4 · 9

| Field | Content |
|---|---|
| Mechanism cite | **`M-R6`** · 1238–1250 · 30649 · 30409 · 30415–30426 · 30441–30445 |
| Sighting | Pass 0 `E5` · Pass 1 Page A/B · [locators run 4](rust-target-locators.md) (`-C panic` 1238–1250) · runs 1–2 |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B · D (`B4`) · E |
| False friend | **Page E:** unwind on wasm (`-Cpanic=unwind` + `-Zbuild-std` + `-Cllvm-args=-wasm-use-legacy-eh=false`, 30415–30445) is a **wasm32-only path**, unsupported on wasm64 (30649); an EH tag section fails `G8′` |
| Reach | **FULL** — 5 of 5 ranges carried |
| Emission | `[GAP]` |
| Implements | Page B — *touches* `b4`, sheet T's `panic = "abort"`; *settles* that abort is **forced** on wasm64 and that one `abort` crate binds the whole link; *leaves open* the EH-disabled validation — **and see the carry below, which supersedes Page B's wording** |

```
   +----------------------------+
   | wasm64 does not support    |
   | panic=unwind at this time  |
   | (30649)                    |
   +-------------+--------------+
                 |
                 v
   +----------------------------+
   | -C panic graph rule:       |
   | if ANY crate uses abort,   |
   | the final binary must too  |
   | (1247-1250)                |
   +-------------+--------------+
                 |
                 v  artifact evidence of abort is the ABSENCE of
                    exception-handling constructs, not "unwind tables"
   +-------------------------------------------------
   | G8'-EH  NOT_RUN
   |  "no tag section, no try/throw" is INCOMPLETE
   |  shorthand -- the spec shelf's W2-S4 sighting
   |  names imported tags and throw_ref / try_table
   |  as well, and no checker with an effective
   |  disabled-EH mode has been selected        . . .
   +-------------------------------------------------
   # unwind on wasm IS the exception-handling proposal (30410-30413)
   # the wasm32 unwind recipe is a different target's
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R7` — Target features, and the three ways a bound escapes · nodes 4 · 9

| Field | Content |
|---|---|
| Mechanism cite | **`M-R7`** · 30632–30638 · 1495–1515 · 1482–1490 · 30356–30363 · 645–650 · 30369 · **14925–14934** · 30375–30390 · 30401–30402 · 30318–30337 · **A4:** `C8` (8772) |
| Sighting | Pass 0 `E7` · Pass 1 Page A/B · [locators runs 1, 2, 4, **5**](rust-target-locators.md#run-5--the-paragraph-both-halves-of-the-shelf-now-rest-on--1492514934) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` · **`PROPOSAL-only`** |
| PAGE cite | A · B · D (`B5`) · E · H |
| False friend | **Page H:** `-Ctarget-cpu=mvp` is *"a placeholder in LLVM for disabling all supported features by default"* — **that is not the same as no features in the binary** (30375–30389). **Page E:** `-C target-feature=+…` without rebuilding core with the same set is undefined behaviour by the book's own words; `#[target_feature(enable = …)]` in first-party code escapes every compile-side bound |
| Reach | **PARTIAL** — 9 of 10 ranges carried. Only `--print target-features` (645–650) is not, and it belongs to node 8 |
| Emission | `[GAP]` |
| Implements | Page B — *touches* `b5`, `G8`, R11; *settles* three facts that reshape `G8` into `G8′`; *leaves open* whether `-Ctarget-cpu=mvp` keeps memory64 (`UNESTABLISHED`) and the allowed set itself (R11) |

```
   assumed proposals on this target                     (30632-30638)
   bulk-memory | mutable-globals | sign-ext | nontrapping-fptoint
                 |
                 v
   +--------------------------------+
   | compile-side bound             |
   |  -C target-cpu=mvp             |
   |  + explicit +feature flags     |
   +---------------+----------------+
                   |
     three escapes the book itself names:
       (i)  #[target_feature(enable)] per function   (30375-30390)
       (ii) core built with a DIFFERENT set -> UB    (14925-14934)
       (iii) mvp is an LLVM placeholder, not a
             guarantee about the emitted binary
                   |
                   v
   +-------------------------------------------------
   | therefore the sound check is not "parse the
   | feature section" but VALIDATE THE MODULE under
   | exactly the allowed set.  G8'  NOT_RUN
   |   checker, mode, version: unestablished
   |   feature subset: unestablished
   |   R11 (atomics as a fifth) : the human's    . . .
   +-------------------------------------------------
                   |
   A4 carry: build-std-features defaults are backtrace
   and panic-unwind (8772). Whether those defaults apply
   when the crate list omits std is NOT STATED anywhere
   in 21,712 lines -> sub-question d, [GAP]        . . .
   therefore B5 must SET the feature set, never inherit it
   # "the binary must only contain code the engine understands" (30401-30402)
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append | PROPOSAL-only

---

### `P-R8` — The cfg set · nodes 4 · 8

| Field | Content |
|---|---|
| Mechanism cite | **`M-R8`** · 30673–30676 · 604–627 · 30309–30312 |
| Sighting | Pass 0 `E11` · Pass 1 Page A/B · [locators runs 1–2](rust-target-locators.md) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B |
| False friend | **None on Page H or Page E.** The nearest caution is `M-R8`'s own wasm32 line — *"no way to tell via `#[cfg]` whether code will be running on the web"* (30309–30312) — which is a scope limit, not a false friend. **Recorded as absent rather than invented** |
| Reach | **PARTIAL** — 2 of 3 ranges carried; `rustc --print cfg` (604–627) is node 8's |
| Emission | `[GAP]` |
| Implements | Page B — *touches* sheet T build facts, door code; *settles* that the cfg names for gating are SOURCE; *leaves open* **nothing** |

```
   +----------------------------+
   | target_arch = "wasm64"     |
   | target_family = "wasm"     |
   +-------------+--------------+
                 |
        +--------+---------+
        |                  |
        v                  v
   node [4] compile   rustc --print cfg --target ...
   gating is well-        |
   defined                v
                     node [8] receipt
   # cfg cannot tell you the host is a browser (wasm32 note, 30309-30312)
   # that is a scope limit, not a trap
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R9` — Target resolution: the built-in name cannot be shadowed · nodes 2 · 8

| Field | Content |
|---|---|
| Mechanism cite | **`M-R9`** · 14906–14917 · 14863–14865 · 14871–14885 · 14887–14888 · 14893–14901 |
| Sighting | Pass 0 `E12`, `E13` · Pass 1 Page A/B |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B · D (`B3`) · E · H |
| False friend | **Page E:** a custom target JSON / `RUST_TARGET_PATH` / *"wasm64 with tweaks"* — **unstable and unpinnable** (14887–14888); the built-in name **is** the seal. **Page H:** *compiles for wasm64* is not *accepted* |
| Reach | **NONE** — 0 of 5 ranges carried. The whole custom-targets chapter is [cluster 2](rust-target-clipboard.md#f3--what-remains-is-finite-and-here-it-is), 48 lines |
| Emission | `[GAP]` |
| Implements | Page B — *touches* `b1`, anti-imports; *settles* that `--target wasm64-unknown-unknown` resolves to the **built-in** target before any file or search path (14910), so the name cannot be shadowed by a JSON; *leaves open* **nothing** |

```
   --target wasm64-unknown-unknown
            |
            v
   +---------------------------------+
   | resolution order (14906-14917)  |
   |  1. built-in target name   <----+---- ours; wins here
   |  2. a file path                 |
   |  3. RUST_TARGET_PATH search     |
   +----------------+----------------+
                    |
        +-----------+-----------+
        |                       |
        v                       v
   node [2] the seal     --print target-list
   holds: no JSON can     --print target-spec-json  (nightly)
   shadow the name              |
                                v
                          node [8] receipt
   # a custom JSON is unstable and unpinnable -- the book says pin, so we do not use one
   # none of this panel's five citations is carried in-repo
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R10` — Linking: lld is required · nodes 6 · 8

| Field | Content |
|---|---|
| Mechanism cite | **`M-R10`** · 30656 · 30662–30663 · 30261–30262 · 1090–1100 · 972–985 · 1002–1026 |
| Sighting | Pass 1 Page A/B · [locators runs 1, 2, 4](rust-target-locators.md) (`link-arg`, `link-self-contained`, `linker-flavor`) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B · E |
| False friend | **Page E:** relying on `link-self-contained` behaviour — documented only for x86_64-linux (1019–1026); **on wasm64 assume nothing and record the linker invocation** (`--print link-args`, 722–728) |
| Reach | **FULL** — 6 of 6 ranges carried |
| Emission | `[GAP]` |
| Implements | Page B — *touches* R1 (lld ships with the toolchain, or does not), sheet H (exports are fixed at link); *settles* that lld is required — SOURCE; *leaves open* whether the pinned nightly provides a working `wasm-ld` for wasm64 without a source build (`NOT_RUN`, a probe), and `link-self-contained` on this target |

```
   +----------------------------+
   | the target requires lld    |
   | to be built to work        |   (30656, 30662-30663)
   | linker-flavor: wasm-ld     |
   +-------------+--------------+
                 |
                 v
   +-------------------------------------
   | does the PINNED nightly ship a
   | working wasm-ld for wasm64 without
   | a source build?   NOT_RUN -- probe
   | P-64a, never executed
   |
   | link-self-contained on wasm64:
   | undocumented. Assume nothing.  . . .
   +-------------------------------------
                 |
                 v
     --print link-args -> node [8]
     "the full linker invocation", recorded not trusted
   # exports are fixed at link time. That is sheet H's, not Core's.
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R11` — Artifact-shaping codegen options · nodes 5 · 9

| Field | Content |
|---|---|
| Mechanism cite | **`M-R11`** · 1208–1220 · 1142–1165 · 770–779 · 820–829 · 1441–1462 · 808–815 · 1225–1233 · 1170–1174 |
| Sighting | Pass 1 Page A/B · [locators run 4](rust-target-locators.md) — **all eight ranges are carried fragments**, and `codegen-units` 770–779 is the one the locator gate recovered after the plan dropped it |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` · **`PROPOSAL-only`** |
| PAGE cite | A · B · D (`B7`) · E · H |
| False friend | **Page E:** `-C strip=symbols` on the artifact that is **checked** removes the scan's carrier. **Page H:** `-C strip` is **not** a security measure — by the book's own words (1460–1462); here it is only the scan-carrier switch |
| Reach | **FULL** — 8 of 8 ranges carried. The most checkable mechanism on the shelf |
| Emission | `[GAP]` |
| Implements | Page B — *touches* `b3` (the scan carrier survives only under `-C strip=none`), `b1`/`G10` (reproducibility inputs), distribution size; *settles* that the checked artifact must keep its symbol names and that every shaping option is an **input**; *leaves open* whether `-C strip=none` is the default through `wasm-ld` — the book does not say for wasm, so set it explicitly |

```
   every option below is a RECEIPT INPUT, recorded, never inferred
   +--------------------------------------------+
   | opt-level        s | z are the size ones    |
   | lto              thin-local by default      |
   | codegen-units    16 non-incremental default |
   | debuginfo        none by default            |
   | debug-assertions on at opt-level 0          |
   | overflow-checks  follows debug-assertions   |
   | metadata         hashed into mangled symbols|
   | strip            none | debuginfo | symbols |
   +---------------------+----------------------+
                         |
            +------------+------------+
            |                         |
            v                         v
   strip=none on the           G10 two builds from
   CHECKED artifact            the same inputs ->
   keeps the scan's            byte-identical?
   carrier alive                        . . . NOT_RUN,
            |                           no build exists
            v
   node [9] the name-section scan (see P-R12)
   # strip is not a security measure. The book says so (1460-1462).
   # if a stripped artifact ships, G10 must relate the two. Unrun.
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append | PROPOSAL-only

---

### `P-R12` — Symbol names, and a carrier question that moved · nodes 5 · 9

| Field | Content |
|---|---|
| Mechanism cite | **`M-R12`** · 1467–1477 · 16820–16823 · 16962–16970 · 16797–16801 |
| Sighting | Pass 1 Page A/B · [locators run 4](rust-target-locators.md) (`-C symbol-mangling-version` 1467–1477) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` · **`PROPOSAL-only`** |
| PAGE cite | A · B · D (`B2`, `B7`) · E · H |
| False friend | **Page E / Page H:** as `P-R11` — stripping the checked artifact removes the scan's only carrier, and `strip` is not a security measure |
| Reach | **PARTIAL** — 1 of 4 ranges carried. The symbol-mangling chapter is [cluster 3](rust-target-clipboard.md#f3--what-remains-is-finite-and-here-it-is), 18 lines |
| Emission | `[GAP]` |
| Implements | Page B — *touches* `b3` (scan vocabulary: v0 crate roots `alloc`, `dlmalloc`, `std`, `panic_unwind`), `G3` (exact export names); *settles* that v0 is the one stable scheme and carries crate names, so a crate-root scan is well-defined; *leaves open* **the carrier — and that is where this panel differs from Page B** |

```
   +----------------------------+
   | -C symbol-mangling-version |
   | v0 is the ONE stable scheme|
   | v0 crate root = C + name   |
   +-------------+--------------+
                 |
                 v
   scan vocabulary is well defined:
   look for crate roots alloc, dlmalloc, std, panic_unwind
                 |
                 v
   +-------------------------------------------------
   | CARRIER: the wasm name custom section
   |
   | Page B still reads "not yet sighted there".
   | SUPERSEDED: the spec shelf's W2-S3 sighting
   | LOCATED the optional name section and its
   | function-index / name mapping.
   |
   | What remains is STRONGER than a carrier gap:
   |  - a negative name scan does not show that
   |    crate code is ABSENT
   |  - provenance coverage under the actual
   |    v0 / strip / optimisation choices is
   |    not demonstrated
   |  - crate-absence proof: UNESTABLISHED   . . .
   +-------------------------------------------------
   # Page F/X's earlier "in principle" claim is historical and qualified
   # #[no_mangle] / #[export_name] fix exact exported names -> G3
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append | PROPOSAL-only

---

### `P-R13` — The project runs no tests for this target · node 10

| Field | Content |
|---|---|
| Mechanism cite | **`M-R13`** · 30678–30680 · 30298–30301 |
| Sighting | Pass 0 `E9` · Pass 1 Page A/B · [locators runs 1–2](rust-target-locators.md) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B · H |
| False friend | **Page H:** *compiles for wasm64* is not *accepted* — the wasm-spec-3 shelf's refuse (5) stands |
| Reach | **FULL** — 2 of 2 ranges carried |
| Emission | `[GAP]` |
| Implements | Page B — *touches* every build claim, `G4`; *settles* that the project runs no tests for this target, therefore **`G4` (the D1 replay) is the only functional test that exists, and it is ours**; *leaves open* nothing |

```
   +----------------------------+
   | "testing is not well       |
   |  supported ... the Rust    |
   |  project doesn't run any   |
   |  tests for this target"    |
   +-------------+--------------+
                 |
                 v
   every claim about a build is NOT_RUN until run HERE
                 |
                 v
   +-------------------------------------
   | G4 -- the D1 replay -- is the only
   | functional test that exists for this
   | target, and it is this project's.
   | It has never been green.        . . .
   +-------------------------------------
   # an untested target. Upstream confidence is not evidence.
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R14` — C interop: there is none, and the law wanted none · node 7

| Field | Content |
|---|---|
| Mechanism cite | **`M-R14`** · 30686–30689 · 30640–30641 |
| Sighting | Pass 0 `E10` · Pass 1 Page A/B · [locators run 1](rust-target-locators.md) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B · E |
| False friend | **Page E:** *"C interop is theoretically possible"* (30686–30687) — no libc; the law has no C |
| Reach | **FULL** — 2 of 2 ranges carried |
| Emission | `[GAP]` |
| Implements | Page B — *touches* the law (no C, no FFI); *settles* that the mechanism is consonant and **`SILENT` for a pure `no_std` build**; *leaves open* nothing |

```
   +----------------------------+
   | no known libc for wasm     |
   | works with wasm64; mixing  |
   | C and Rust "effectively    |
   | cannot be done"            |
   +-------------+--------------+
                 |
                 v
   the law already forbids C and FFI, so this constraint
   costs this project nothing. Noted, not relied upon.
   # a constraint that agrees with you is still a constraint, not a proof
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R15` — Cross-compiled; `--target`; the version that goes in the receipt · nodes 1 · 8

| Field | Content |
|---|---|
| Mechanism cite | **`M-R15`** · 30613 · 332–333 · 394 · 15683 |
| Sighting | Pass 1 Page A/B · [locators run 1](rust-target-locators.md) (30613 only) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B · D (`B0`) |
| False friend | **Page E:** `rustup target add wasm32-unknown-unknown` / a wasm32 fallback *"to get something building"* — a **different target**; the seal is wasm64 |
| Reach | **PARTIAL** — 1 of 4 ranges carried. `--target`, `-V` and `rustc -V --verbose` are all node 8's, in [cluster 1](rust-target-clipboard.md#f3--what-remains-is-finite-and-here-it-is) |
| Emission | `[GAP]` |
| Implements | Page B — *touches* the `b1` receipt (host tuple, version), the distribution model; *settles* that **the build host is recorded, not trusted**; *leaves open* nothing |

```
   +----------------------------+
   | "This target is            |
   |  cross-compiled"           |
   +-------------+--------------+
                 |
                 v
     --target selects a tuple;  -V --verbose identifies
     the exact compiler that produced the artifact
                 |
                 v
   +-------------------------------+
   | node [8] receipt:             |
   | host tuple and version are    |
   | RECORDED, never trusted.      |
   +-------------------------------+
   # the build host is not the target and is never the seal
   # reach is a caption fact, not an open edge: 3 of this panel's 4
   # citations are uncarried, and that is R-D4's column, not R-D2's
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R16` — The `--print` set: the node everything reports through, and nobody can open · node 8

| Field | Content |
|---|---|
| Mechanism cite | **`M-R16`** · 565–570 · 575–582 · 587–599 · 604–627 · 632–633 · 638–640 · 645–650 · 722–728 · 14876–14882 |
| Sighting | Pass 1 Page A/B **only** |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` · **`PROPOSAL-only`** |
| PAGE cite | A · B · D (`B0`) · E |
| False friend | **Page E:** `wasm-tools validate` as *the* checker — a tool the book mentions in passing (30432), foreign to the tree. The checker is the tree's, or a named tool cited **with its version in the receipt** — the human's call, not the book's |
| Reach | **NONE** — **0 of 9 ranges carried.** The largest single gap on the shelf; [cluster 1](rust-target-clipboard.md#f3--what-remains-is-finite-and-here-it-is), 73 lines |
| Emission | `[GAP]` |
| Implements | Page B — *touches* the `b1` receipt, whose content is now **sourced**; *settles* what a receipt can contain from the toolchain itself; *leaves open* the `rust-src` identity — the book names the component, not its hash — **A10 or A4, and A4 did not supply it** |

```
   node [4] compile ---+
   node [5] codegen ---+
   node [6] link ------+---> +--------------------------------
   node [2] target ----+     | rustc -V --verbose
   node [1] pin -------+     | --print sysroot
                             | --print target-libdir
   six mechanisms report     | --print host-tuple
   through this one node:    | --print cfg --target ...
   M-R4 M-R8 M-R9            | --print target-list
   M-R10 M-R15 M-R16         | --print target-cpus
                             | --print target-features --target
                             | --print link-args  ("the full
                             |    linker invocation")
                             | --print target-spec-json (nightly)
                             |
                             | rust-src IDENTITY: not here.
                             | The book names the component,
                             | never its hash.              . . .
                             +--------------------------------
                                          |
                                          v
                              the b1 BUILD RECEIPT -- NOT_RUN
   # this is the most connected node on the spine and the least reachable
   # thing on the shelf: 0 of 9 ranges carried
   # a receipt is a record of inputs. It is not evidence that a build is sound.
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append | PROPOSAL-only

---

### `P-R17` — LLVM bugs, expected by the book · node 10

| Field | Content |
|---|---|
| Mechanism cite | **`M-R17`** · 30644–30646 |
| Sighting | Pass 0 `E4` · Pass 1 Page A/B · [locators run 1](rust-target-locators.md) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` |
| PAGE cite | A · B |
| False friend | **None on Page H or Page E.** Recorded as absent rather than invented |
| Reach | **FULL** — 1 of 1 range carried |
| Emission | `[GAP]` |
| Implements | Page B — *touches* sheet T's failure model (T3); *settles* that it is already SOURCE; *leaves open* nothing |

```
   +----------------------------+
   | "due to the relatively     |
   |  early-days nature of this |
   |  target ... you may        |
   |  encounter LLVM bugs"      |
   +-------------+--------------+
                 |
                 v
   the failure model is the book's own, not the editor's
   # the compiler is inside the trust boundary by necessity (R1, the human's)
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append

---

### `P-R18` — Pointer width: a decision, not a space · node 7

**This panel's first fence was cut. See [`F3`](#f3--the-sharp-one-and-it-fired).** The drawing that stands shows *what the toolchain decides*; the one that was cut showed *the memory itself*, and with its labels changed it would have served equally as a drawing of Core.

| Field | Content |
|---|---|
| Mechanism cite | **`M-R18`** · 30620–30623 · 30625–30630 |
| Sighting | Pass 0 `E8` · Pass 1 Page A/B · [locators run 1](rust-target-locators.md) |
| Lace stamp | `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append` · **`FORBID-as-Lace-store`** |
| PAGE cite | A · B · C · H |
| False friend | **Page H:** *64-bit address space* is **not** the strand's domain (`E8`; `FORBID-as-Lace-store`). **Page H:** engines *"behind a flag"* — the book's engine list is not our engine, and it is stale (Chrome shipped Memory64 in M133) |
| Reach | **FULL** — 2 of 2 ranges carried |
| Emission | `[GAP]` |
| Implements | Page B — *touches* sheet H's index width (`usize` = 8 bytes, sourced), the `E8` tension, `FORBID-as-Lace-store`; *settles* pointer width on this target; *leaves open* the engine cap (A3) and the strand's declared domain, which belongs to the branch contracts |

```
   the TARGET decides, at compile time:
   +------------------------------+
   | usize = 8 bytes              |
   | pointers = 8 bytes           |
   | 64-bit memories (30620-23)   |
   +--------------+---------------+
                  |
                  v
   the BOOK claims                the ENGINE states
   +---------------------+        +----------------------
   | "the full 64-bit    |        | a 16 GB JS-API cap
   |  address space      |        | (pass 2 T7; A3 not
   |  instead of the 4GB"|        | staked)          . . .
   +----------+----------+        +----------------------
              |                              |
              +--------------+---------------+
                             |
                    both true; THE SMALLER BINDS
                             |
                             v
                 node [9] G9: does the artifact's
                 memory section carry the i64
                 address type?  NOT_RUN -- the
                 encoding is sighted, no module
                 was ever decoded.               . . .

   # WHAT THIS PANEL DOES NOT DRAW: the memory.
   # A drawing of an addressable space with indices into it is a
   # drawing of Core wearing toolchain labels. Cut, and said so.
   # An address space is not L's domain. A domain is DECLARED, never assumed.
```
stamp under fence: KEEP-read-as-toolchain | FORBID-as-Core | SILENT-for-Lace-append | FORBID-as-Lace-store

---

## Cross-walk `M-R` ↔ `P-R` — eighteen rows, no blank cell

| P | M | Spine nodes (re-derived) | Hard stamp beyond the universal three | False-friend fence | Reach | Emission |
|---|---|---|---|---|---|---|
| `P-R1` | `M-R1` | 10 | — | Page H · std column `?` | **PARTIAL** 1/4 | `[GAP]` |
| `P-R2` | `M-R2` | 1 · 3 · 10 | — | Page H · *Building the target* | **FULL** 2/2 | `[GAP]` |
| `P-R3` | `M-R3` | 1 · 3 | `PROPOSAL-only` | Page H · `-Zbuild-std` · A4 §5 · bare flag | **PARTIAL** 4/7 (A4 10/10) | `[GAP]` |
| `P-R4` | `M-R4` | 1 · 8 | — | A4 §5 · *"early stages"* ⇒ pin nothing | **NONE** 0/2 | `[GAP]` |
| `P-R5` | `M-R5` | 3 · 9 | **`FORBID-as-Lace-store`** | Page H · ships std · availability ≠ permission · Page E · dlmalloc | **FULL** 3/3 | `[GAP]` |
| `P-R6` | `M-R6` | 4 · 9 | — | Page E · the wasm32 unwind path | **FULL** 5/5 | `[GAP]` |
| `P-R7` | `M-R7` | 4 · 9 | `PROPOSAL-only` | Page H · `mvp` · Page E · features without core · `target_feature(enable)` | **PARTIAL** 9/10 | `[GAP]` |
| `P-R8` | `M-R8` | 4 · 8 | — | **none on Page H or E — recorded absent** | **PARTIAL** 2/3 | `[GAP]` |
| `P-R9` | `M-R9` | 2 · 8 | — | Page E · custom JSON / `RUST_TARGET_PATH` · Page H · compiles ≠ accepted | **NONE** 0/5 | `[GAP]` |
| `P-R10` | `M-R10` | 6 · 8 | — | Page E · `link-self-contained` | **FULL** 6/6 | `[GAP]` |
| `P-R11` | `M-R11` | 5 · 9 | `PROPOSAL-only` | Page E · `strip=symbols` · Page H · strip ≠ security | **FULL** 8/8 | `[GAP]` |
| `P-R12` | `M-R12` | 5 · 9 | `PROPOSAL-only` | Page E · `strip=symbols` · Page H · strip ≠ security | **PARTIAL** 1/4 | `[GAP]` |
| `P-R13` | `M-R13` | 10 | — | Page H · compiles ≠ accepted | **FULL** 2/2 | `[GAP]` |
| `P-R14` | `M-R14` | 7 | — | Page E · *"C interop is theoretically possible"* | **FULL** 2/2 | `[GAP]` |
| `P-R15` | `M-R15` | 1 · 8 | — | Page E · a wasm32 fallback | **PARTIAL** 1/4 | `[GAP]` |
| `P-R16` | `M-R16` | 8 | `PROPOSAL-only` | Page E · `wasm-tools validate` as *the* checker | **NONE** 0/9 | `[GAP]` |
| `P-R17` | `M-R17` | 10 | — | **none on Page H or E — recorded absent** | **FULL** 1/1 | `[GAP]` |
| `P-R18` | `M-R18` | 7 | **`FORBID-as-Lace-store`** | Page H · 64-bit space ≠ the strand's domain · engines behind a flag | **FULL** 2/2 | `[GAP]` |

**Universal on all eighteen:** `KEEP-read-as-toolchain` · `FORBID-as-Core` · `SILENT-for-Lace-append`. **Every emission cell `[GAP]`.**

**Node load, after re-derivation:**

| Node | Mechanisms | Node | Mechanisms |
|---|---|---|---|
| 1 pin | `M-R2` `M-R3` `M-R4` `M-R15` | 6 link | `M-R10` |
| 2 target | `M-R9` | 7 artifact | `M-R14` `M-R18` |
| 3 std source | `M-R2` `M-R3` `M-R5` | **8 receipt** | **`M-R4` `M-R8` `M-R9` `M-R10` `M-R15` `M-R16`** |
| 4 compile | `M-R6` `M-R7` `M-R8` | 9 checks | `M-R5` `M-R6` `M-R7` `M-R11` `M-R12` |
| 5 codegen | `M-R11` `M-R12` | 10 trust | `M-R1` `M-R2` `M-R13` `M-R17` |

**No orphan mechanism. No empty node. The heaviest node is the receipt, and it is `Reach: NONE`.**

---

## `P4-X` — rigor matrix

Columns: `R-D1` closed-box discipline · `R-D2` open edge where something is unrun or unsaid · `R-D3` off-board tokens only on refusal lines · `R-D4` reach mark present and matching the forge map · stamp under fence · false-friend fence · attaches to a named spine node.

| P | R-D1 | R-D2 | R-D3 | R-D4 | Stamp | FF fence | Attach | Verdict |
|---|---|---|---|---|---|---|---|---|
| `P-R1` | Y | Y | Y | Y | Y | Y | 10 | **PASS** |
| `P-R2` | Y | **Y after FIX 1** | Y | Y | Y | Y | 1·3·10 | **PASS (fixed)** |
| `P-R3` | Y | Y | Y | Y | Y | Y | 1·3 | **PASS** |
| `P-R4` | Y | **Y after FIX 2** | Y | Y | Y | Y | 1·8 | **PASS (fixed)** |
| `P-R5` | Y | Y | Y | Y | Y | Y | 3·9 | **PASS** |
| `P-R6` | Y | Y | Y | Y | Y | Y | 4·9 | **PASS** |
| `P-R7` | Y | Y | Y | Y | Y | Y | 4·9 | **PASS** |
| `P-R8` | Y | Y | Y | Y | Y | **absent, recorded** | 4·8 | **PASS** |
| `P-R9` | Y | Y | Y | Y | Y | Y | 2·8 | **PASS** |
| `P-R10` | Y | Y | Y | Y | Y | Y | 6·8 | **PASS** |
| `P-R11` | Y | Y | Y | Y | Y | Y | 5·9 | **PASS** |
| `P-R12` | Y | Y | Y | Y | Y | Y | 5·9 | **PASS** |
| `P-R13` | Y | **exception, recorded** | Y | Y | Y | Y | 10 | **PASS with a note** |
| `P-R14` | Y | Y | Y | Y | Y | Y | 7 | **PASS** |
| `P-R15` | Y | **Y after FIX 3** | Y | Y | Y | Y | 1·8 | **PASS (fixed)** |
| `P-R16` | Y | Y | Y | Y | Y | Y | 8 | **PASS** |
| `P-R17` | Y | Y | Y | Y | Y | **absent, recorded** | 10 | **PASS** |
| `P-R18` | Y | Y | Y | Y | Y | Y | 7 | **PASS after `F3` cut** |

### The three fixes the matrix caught before the commit

**The rules were run as a check, not recited.** An audit over the file's twenty fenced blocks compared each panel's *Leaves open* cell against the presence of an open edge. Three panels failed.

| Fix | Panel | What was wrong | What was done |
|---|---|---|---|
| **1** | `P-R2` | Page B leaves open *which route the recipe takes* — **the fence had no open edge**, so the drawing read as if the choice were settled | open box added, naming A4 and what A4 did **not** deliver |
| **2** | `P-R4` | the open edge sat on the `--print` line, where it marked **reach**, not an open item | moved onto **R1**, the ruling the book cannot make; reach moved to the caption |
| **3** | `P-R15` | an open edge carried *"3 of 4 citations cannot be checked in-repo"* — **a reach fact wearing R-D2's form** | box closed; reach left in the caption where `R-D4` puts it |

**Fixes 2 and 3 are the same error**: using the open-edge form for unreachable evidence. **Reach and openness are different properties and must not share a notation** — an unreachable citation of a settled fact is still settled, and a reachable citation of an unsettled one is still unsettled.

### The exception, recorded rather than smoothed

`P-R13`'s *Leaves open* cell reads **nothing**, and its fence carries an open edge for `G4` — the D1 replay, which has never been green.

**That is not a violation; it is the two measures diverging, and the plan's wording did not distinguish them:**

| | Measures |
|---|---|
| Page B's *Leaves open* | what **the book** does not say about the mechanism |
| `R-D2` | anything **in the panel** that is unrun, unsettled or `[GAP]` |

A mechanism can close the first and still need an open edge for the second. **`R-D2` is refined here, in the open, by a case that forced it** — and the refinement is now the rule a later pass inherits.

### Special gates, re-walked

| Gate | Result |
|---|---|
| **No emission word inside any fence** | **PASS** — 20 fenced blocks audited mechanically. Count: **0** |
| **Off-board tokens only on refusal lines** (`R-D3`) | **PASS** — every occurrence of Core, Φ, Graphic D, the strand and *Lace store* inside a fence sits on a `#` line, a `FORBID:` line or the `OFF-BOARD` header. Exceptions: **0** |
| **Every panel carries all eight fields** | **PASS** — 18 of 18 |
| **Every fence carries a stamp line beneath it** | **PASS** — 18 of 18 |
| **`FORBID-as-Lace-store` present wherever Page C assigns it** | **PASS** — `P-R5` and `P-R18`, and nowhere else |
| **`PROPOSAL-only` present wherever Page C assigns it** | **PASS** — `P-R3`, `P-R7`, `P-R11`, `P-R12`, `P-R16` |
| **No `FM-Rust*` id minted** | **PASS** — **no panel, cross-walk row or matrix cell carries one.** The string occurs three times in this file and all three are prohibitions: the banner's `FORBID` line, this row, and the receipt. Sixteen panels cite a Page H or Page E row in its own words; **two record that no such row exists** rather than inventing one |
| **No recipe row drawn closed** | **PASS** — node 9 is open on every row; `G1` `G2` `G3` `G8′` `G9` `G10` all `NOT_RUN` |
| **Reach matches the forge map** | **PASS** — 9 `FULL`, 6 `PARTIAL`, 3 `NONE`; the per-panel range counts equal the map's 49 of 79 |
| **No new book line carried** | **PASS** — this pass read Page A, Page B, Page C and the two locator files; it cut nothing new from either book |

**`P4-X` verdict: 18 panels PASS** — three after a fix the matrix itself caught, one after `F3` cut a fence, one with a recorded exception that refined a rule.

---

## Falsifier report — all four, as the plan required

### `F1` — a mechanism attaching to no node, or a node the book never names

**DID NOT FIRE.** All eighteen attach; all ten nodes carry at least one. Every node name is a phrase the book itself uses.

**But the plan's guess was wrong on seven of eighteen rows**, and that is not `F1` firing — it is the re-derivation `§7` demanded doing its job. The direction is uniform: **six mechanisms report to the receipt where the plan expected two.**

### `F2` — a panel that cannot be drawn without naming a store, a strand, or an emission

**DID NOT FIRE**, and twice it came within a word. `P-R5` must name an allocator; `P-R18` must name an address space. Both carry `FORBID-as-Lace-store`, both were drawn so the named thing is **the toolchain's**, and the mechanical `R-D3` audit found **zero** off-board tokens outside a refusal line.

### `F3` — the sharp one, and it fired

**FIRED. Once, on `P-R18`.**

The first fence drawn for `P-R18` was the obvious one: a long addressable region with 8-byte indices into it, bounded on one side by the engine's cap. **Change three labels — region to array, index to unit, cap to frontier — and it is a drawing of Core.**

Per the plan: *"it is not toolchain machinery. Say so and cut it."* **The fence was cut.** What stands draws the *decision* instead: the target fixes `usize` at 8 bytes, the book claims the full 64-bit space, the engine states a smaller cap, and the smaller binds. **Relabelled for Core that says nothing, because no compiler decides Core's unit** — [the human's ruling did](../graphics-close-reading.md), and it is one item in the array.

**A note on what "cut it" meant.** The plan's word admits two readings — cut the drawing, or cut the mechanism from the diagram. **This execution cut the drawing** and kept `M-R18` in the cross-walk, because what `F3` identified was a *fence*, not a mechanism: `M-R18` is a genuine compile-time fact and dropping it would put a hole in a spine that is otherwise complete. **The reading is stated here so the human can overrule it**; if the intent was the stronger cut, `P-R18` comes out and node 7 loses half its load.

**`F3` was also tested on `P-R5`, and did not fire** — once the panel was drawn as a **proof obligation** rather than as a heap. Same lesson, opposite outcome: *what makes a panel toolchain machinery is that it draws a decision or a duty, not a substance.*

### `F4` — an open item closed on another shelf and never carried across

**FIRED. Three rows.**

[Repository update pass 2](rust-target-clipboard.md#repository-update-pass-2--target-evidence-carry) carried the spec shelf's `W2-S1`–`W2-S6` sightings into this shelf's recipe obligations. **Page B's *Leaves open* column was never updated to match**, so three panels would have been drawn against a superseded question:

| Panel | Page B still says | The carry established | Drawn here as |
|---|---|---|---|
| `P-R6` | the EH-disabled validation is *"a spec-shelf check (sighting request)"* | `W2-S4` **identified** local and imported tags and the `throw` / `throw_ref` / `try_table` encodings | *"no tag section, no try/throw" is incomplete shorthand* — imported tags and grammar constructs must be accounted for, and no checker with a disabled-EH mode is selected |
| `P-R12` | the carrier is *"not yet sighted there"* | `W2-S3` **located** the optional `name` custom section and its index→name mapping | the carrier is found; what remains is **stronger** — a negative scan does not prove crate absence, and provenance under the actual v0/strip choices is undemonstrated |
| `P-R18` / `G9` | (Page D) the binary flag bits are *"a spec-shelf sighting"* | `W2-S1`–`S2` **established** the i64 limits encoding `0x04`/`0x05` and the validation rule | encoding sighted, **no module ever decoded** — the check is unrun, not uncarried |

**Per the plan: record the carry, do not close it here.** Nothing above moves a verdict. In each case the sighting turned a *carrier gap* into a *proof gap*, which is a harder question than the one Page B still poses — so the drawings are **more** open than Page B would have made them, not less.

---

## Wave B — seeded, not drawn

| Seed | Blocked on |
|---|---|
| The recipe spine `B0`–`B8` drawn as machinery in its own right, with each row's check attached | ruling **R12** (whether a non-Core fixture may exist to run it on) |
| The gate lattice `G1` `G2` `G3` `G8′` `G9` `G10` as a dependency graph — which check presupposes which | the checker's identity, mode and version, all unestablished; and A4's two remaining `[GAP]`s |
| A receipt panel drawn from a real `--print` dump | [cluster 1](rust-target-clipboard.md#f3--what-remains-is-finite-and-here-it-is) of the extract job, and a build, which is `NOT_RUN` by law |

**One line each, and nothing more.** Drawing any of them now would require inventing what no sighting has delivered.

## Steward refuse — what a reader of this file must reject

1. *"The spine shows a working toolchain, so the recipe works."* → **No.** Nodes 1–7 are the book's description; node 9 is unrun on every row and node 8 is unreachable. A pipeline drawn is not a pipeline run.
2. *"`P-R18` shows the address space, so the strand's domain is 64-bit."* → **No.** `FORBID-as-Lace-store`, and `F3` cut the fence that invited this exact reading.
3. *"Reach `FULL` means the claim is proved."* → **No.** Reach means a session without the book can check **the citation**. It says nothing about whether the thing cited was ever run.
4. *"Two panels have no false friend, so those mechanisms are safe."* → **No.** It means no Page H or Page E row bears on them, and this pass declined to invent one.
5. *"The panels are the mechanisms."* → **No.** Page A is. A panel is a reading of Page A, which is a reading of the book.
6. *"`F3` fired, so the diagram is unsound."* → **No.** `F3` fired, a fence was cut, and the cut is recorded. **A falsifier that never fires was never a test.**

---

## `P4-R` — pass 4 execute receipt

| | |
|---|---|
| **Panels** | **18**, 1:1 with `M-R1`–`M-R18`; every one with all eight fields and a stamp line under its fence |
| **Spine** | 10 nodes, **re-derived from Page B, not taken from the plan** — **7 of 18 attachments differ from the plan's guess**, six of them adding node 8 |
| **Structural finding** | the receipt is the heaviest node on the spine (6 mechanisms) and the least reachable thing on the shelf (`Reach: NONE`, 0 of 9) |
| **Cross-walk** | 18 rows, no blank cell; every emission cell `[GAP]` |
| **`P4-X`** | 18 PASS — 3 after fixes the matrix caught pre-commit, 1 after `F3`, 1 with a recorded rule refinement |
| **Mechanical audits** | emission word in fences: **0 of 20** · off-board tokens off a refusal line: **0** · fields: **18/18** · stamp lines: **18/18** · `FM-Rust*` ids minted: **0** (the string's 3 occurrences are all prohibitions) |
| **`F1`** | did not fire | 
| **`F2`** | did not fire; two panels came within a word and both carry `FORBID-as-Lace-store` |
| **`F3`** | **fired** — `P-R18`'s first fence cut and the cut recorded; the reading of *"cut it"* stated for the human to overrule |
| **`F4`** | **fired, three rows** — Page B's *Leaves open* is stale where repository update pass 2 already carried the spec shelf's sightings; carried, not closed |
| **Moved** | **nothing.** No `[GAP]` closed, no ruling taken, no build run, no book line newly cut, no script or `src/` added |

**Emission `[GAP]`. Shoe in hands, or no.**

---

## Pass 6 — deep diagram audit · EXECUTED

Pass 0–5 above are dated records and are **not rewritten by this section.** Spine stamp and two fence lines listed under `P6-F` are the only bytes this pass moved in the drawing.

**Authority this session:** rustc book SHA `4a30e620a066c8157de4af674196df81694bb183ea09cef0a89dd8dbec4e74d3` (31,482 CRLF lines) · Cargo book SHA `9d7048e1ecb50ae5ed95dc64fe504cf968a4a9a7c2cc9c903e48ae38d163c0a5` (21,712 lines). Line numbers: strip `CR`, keep `LF`. Books not copied into git.

### `P6-A` — the spine

| Node | Class | Why |
|---|---|---|
| [1] pin | **SOURCE** | rustup / rust-src / nightly / `-Z` locators this shelf cites |
| [2] target resolution | **SOURCE** | built-in name before path / `RUST_TARGET_PATH` (14906–14917) |
| [3] std source | **SOURCE** | rust-src + `-Z build-std` + crate list (A4 8734–8752) |
| [4] compile | **SOURCE** | cfg, panic, assumed proposals on the wasm64 page |
| [5] codegen | **SOURCE** | `-C` options this shelf cites |
| [6] link | **SOURCE** | `lld = true` on the wasm64 page; `wasm-ld` flavor at 1100 |
| [7] artifact | **SOURCE** | usize/pointers 8 bytes, 64-bit memories, no known libc (30620–30689) |
| [8] receipt | **SOURCE** | `--print` / `-V` are book options; **uncarried** (Reach NONE) |
| [9] checks | **SHELF** | G1–G10 / `NOT_RUN` are this project's gates, not a rustc chapter |
| [10] trust | **SOURCE** | Tier 3 policy + wasm64 `Tier: 3` |

| Edges | Class |
|---|---|
| every arrow on the spine, including "reports into" node 8 and "binds" from node 10 | **`[INFERENCE]`** — conventional toolchain order; **not a sentence in the rustc book** |

**`F1` fired as expected.** The spine wore no composition stamp. Stamp added under the fence (`P6-F`). No redraw.

### `P6-P` — 208 factual fence lines

Re-count of non-art, non-`#` lines inside the eighteen panel fences: **208**. Same number the sit carried. Box art, arrows and `#` refusal lines are not in this count (`P6-A` / `R-D3`).

| Panel | Reach | n | CARRIED | BOOK-ONLY | SHELF | NOT FOUND |
|---|---|---:|---:|---:|---:|---:|
| `P-R1` | PARTIAL | 8 | 1 | 5 | 2 | 0 |
| `P-R2` | FULL | 12 | 8 | 0 | 4 | 0 |
| `P-R3` | PARTIAL | 14 | 6 | 2 | 6 | 0 |
| `P-R4` | NONE | 11 | 0 | 4 | 7 | 0 |
| `P-R5` | FULL | 10 | 6 | 0 | 4 | 0 |
| `P-R6` | FULL | 15 | 8 | 3 | 4 | 0 |
| `P-R7` | PARTIAL | 21 | 8 | 6 | 7 | 0 |
| `P-R8` | PARTIAL | 6 | 2 | 2 | 2 | 0 |
| `P-R9` | NONE | 9 | 0 | 5 | 4 | 0 |
| `P-R10` | FULL | 11 | 6 | 1 | 4 | 0 |
| `P-R11` | FULL | 15 | 10 | 0 | 5 | 0 |
| `P-R12` | PARTIAL | 17 | 3 | 4 | 10 | 0 |
| `P-R13` | FULL | 9 | 3 | 0 | 6 | 0 |
| `P-R14` | FULL | 6 | 4 | 0 | 2 | 0 |
| `P-R15` | PARTIAL | 7 | 1 | 3 | 3 | 0 |
| `P-R16` | NONE | 18 | 0 | 12 | 6 | 0 |
| `P-R17` | FULL | 5 | 3 | 0 | 2 | 0 |
| `P-R18` | FULL | 14 | 6 | 1 | 7 | 0 |
| **total** | | **208** | **75** | **48** | **85** | **0** |

**`BOOK-ONLY` = 48, verified by one hand** against the SHA-verified rustc / Cargo files. A stranger with only the extract can check the **75 CARRIED**. The **85 SHELF** lines are project facts (gates, `NOT_RUN`, Page B assignments, R1/R11, law forbids) and cite Pages C/D/E/G, not the books.

### `P6-X` — falsifiers

| | Fired? | Evidence |
|---|---|---|
| **F1** unsourced structure | **yes** | spine arrows cited nothing; stamp added |
| **F2** fence line the cited lines do not support | **yes, once, fixed** | `P-R6` said *"abort is forced, not chosen"* at 30649. 30649 is *"does not support panic=unwind at this time."* Line rewritten to the book's sentence. Graph rule 1247–1250 stays in the next box, where it belongs |
| **F3** right line, wrong cite | **no** | `wasm-ld` on `P-R10` is supported by 1100 and 30261–30262, both already on that panel's cite list |
| **F4** editor vocabulary as the source's | **yes, fixed** | spine node [7] and `P-R18` said *"i64-addressed memory"*. The rustc book says *64-bit memories* / *usize is 8-bytes*. *"i64"* stays on G9, which is SHELF |

### `P6-F` — what moved

1. Spine fence: stamp line `[INFERENCE]` added under the fence. Node [7] label *i64-addressed memory* → *64-bit memories (30620-23)*.
2. `P-R6` first box: *abort is forced, not chosen* → *does not support panic=unwind at this time (30649)*.
3. `P-R18` first box: *memory is i64-addressed* → *64-bit memories (30620-23)*. G9 line unchanged.

No redraw. No `FM-Rust*`. No new extract rows. No `P5-P` edit.

### `P6-O`

Overview count = **1**. The spine above remains the only SOURCE MACHINERY overview in this file.

### Named OPENS (not NOT-FOUND)

| OPEN | Disposition |
|---|---|
| Node 9 every row `NOT_RUN` | SHELF. Stands. Not this pass |
| Node 8 Reach NONE (0 of 9 `--print` ranges carried) | extract job cluster 1. Stands |
| 48 BOOK-ONLY lines | stay BOOK-ONLY; not carried this pass |
| `O1` *"cut it"* | the human's. Untouched |
| rust-src identity / hash | book names the component, never a hash. SHELF/`NOT_RUN` |
| A4 `compiler_builtins` / lockfile | already `[GAP]` on `P-R3`. Untouched |

**Emission `[GAP]`.**

