# WebAssembly Spec 3.0 — Pass 2 PLAN (leftovers / failure modes / target coherence)

**Status:** **EXECUTED** (2026-09-18 ~20:04 PT). Emission still `[GAP]`.  
**Station:** clipboards (HELD `wasm-spec-3.0 Pass 2 PLAN only`)  
**Base at plan:** claim BASE `3e64996` (= `origin/main`); local tip may be ahead (Pass 1 EXECUTED ~`6ce0948` · station release ~`b866fef`). Refresh `git pull --ff-only` before any execute.  
**Spec:** WebAssembly Specification **Release 3.0** (2026-09-11) · editor Andreas Rossberg / W3C CG  
**Clipboard under test:** `docs/clipboards/wasm-spec-3-clipboard.md`  
**ASCII companion (read-only default):** `docs/clipboards/wasm-spec-3-ascii-machinery.md` (overview + **P-T1…P-T9**)  
**Ancestor:** [`wasm-spec-3-pass-1-plan.md`](wasm-spec-3-pass-1-plan.md) (EXECUTED · PAGE A–H, X + ASCII P-T*)  
**Templates mirrored (adapt, don’t clone LLM morals):** [`xiao-zhu-pass-2-plan.md`](xiao-zhu-pass-2-plan.md) · [`petersen-zech-pass-2-plan.md`](petersen-zech-pass-2-plan.md) · [`agentscope-pass-2-plan.md`](agentscope-pass-2-plan.md)  
**Mesh (read-only):** [`rust-nostd-crate-map.md`](../plans/rust-nostd-crate-map.md) · [`rust-nostd-branch-contracts.md`](../plans/rust-nostd-branch-contracts.md) · [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`**  
**Sibling (default skip):** `docs/clipboards/clipboard-five-stakes.md` — **not** this shelf’s anti-model PAGE; do not rewrite  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webassembly-spec-3.0.pdf` |
| Attachment SHA-256 | `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` |
| Pages | **323** · text layer yes · printed ≈ PDF − 4 (Pass 1 certified) |
| Git | **Never `git add` the PDF** |

Law: WASM = **compile target only** · linear mem ≠ strand · table ≠ star · stack/frames ≠ append · `br`/`return`/call ≠ Φ · validate ≠ admit POINTER · wat ≠ authority · import host ≠ fill `[GAP]` · trap ≠ Lace cut · instantiate ≠ Core birth · Hands win · `[GAP]` sealed.

```
pull/ff → claim clipboards → Hands skim (target mesh)
        → open PDF (refs/local; no git add)
        → do NOT redo A–H/X fill or invent emission
        → do NOT rewrite Wave A ASCII unless stamp-tighten delta
        → Pass 2 deltas only: D1–D6 (+ optional D7) on clipboard
        → receipt on wasm-spec-3 clipboard
        → check · commit · release · STOP
```

---

## SPECIAL BANNER — COMPILATION TARGET (not anti-model / not Core)

```
+======================================================================+
|  COMPILATION TARGET — Lace Rust #![no_std]  -->  wasm32-unknown-unknown |
|  Pass 2 = leftovers / false-friends / FM-W* / coherence spine.         |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model).   |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.            |
|  WASM ops = TARGET semantics.  Do NOT invent POINTER emission / Phi.   |
|  Do NOT import WASM store/memory/table/stack as Lace's 1D strand.      |
|  Zero crates.io / foreign deps.  No src/ until pointer-emission accepted.|
|  Status this commit: EXECUTED — D1–D6 (+ D7) on clipboard.             |
+======================================================================+
```

This is **not** another anti-model LLM/theory leftover pass.  
It is **compile-target hygiene**: what Spec 3.0 is **not** for Lace, numbered **FM-W\*** false friends (store/emission lookalikes), and a coherence spine that ties PAGE A–H/X + P-T1…P-T9 to the rust-nostd mesh **without** promoting WASM into Core.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF + ASCII) | **Admission + target machinery** — PAGE A–H, X stamped; overview + P-T1…P-T9 |
| **2** | **Leftovers** — what this shelf is not; KEEP/FORBID spine strip; FM-W\* with PDF pins; rust-nostd / Hands coherence; source gate cite; sealed |

Same **D1–D6 shape** as Xiao–Zhu / Petersen / AgentScope Pass 2, retargeted to **`#![no_std]` → wasm32** hygiene (not intern/MASK/next-token or neuron/NTK leftovers).

Still **Shadow / Layer III**. Not Core. Not `src/`. Not other reference shelves. Mechanisms file stays **deferred** unless steward opens it later.

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-target / FORBID-\* / PROPOSAL-only / SILENT stamps |
| ASCII overview + P-T1…P-T9 | Landed; captions + PDF pins; mechanisms deferred |
| PDF gate | Present; 323 pp.; text layer; offset ≈ −4; gitignored symlink; SHA matches |
| Per-page KEEP/FORBID | Already on A–H and X cross-cut |
| Five-stakes | **Out of scope** for this shelf (default skip; not an anti-model PAGE) |
| rust-nostd crate-map / branch-contracts | Untouched (stand; mesh cite only) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |

Pass 2 does **not** re-walk every PAGE/panel unless a FM row lacks a pin or a stamp-tighten delta is required.

---

## What is still flat / missing

1. **No “what this clipboard is not” strip** — readers can mistake Spec 3.0 admission for Lace store law, emission rules, Core doors, or permission to treat wasm32 as accepted Φ.  
2. **No compact ON-TARGET / KEEP / FORBID / MAP spine strip** on the clipboard itself (per-page cards + P-T\* exist; Pass-2 spine card does not).  
3. **No numbered failure-mode table (FM-W\*)** with PDF pins (PAGE X false friends are narrative only).  
4. **No interface-coherence paragraph** stating which PAGE/P-T outputs may sit beside Hands / rust-nostd inputs (read-as-target only; nothing writes Graphic D / strand / Φ).  
5. **Source gate** is in Pass 1 receipt — Pass 2 should **cite** it, not claim PDF absent.  
6. **Optional:** one Shadow constructive miniature (binary section decode sketch **or** validate-algorithm miniature) stamped **FORBID-as-Core** / SILENT-for-Lace-append.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1 FORBID-as-Lace-store / FORBID-as-emission-rule / PROPOSAL-only | Pass 1 confirmed |
| Promote WASM store / linear mem / table / stack / frames into Lace Core | off-shoe / wrong ontology |
| Treat validate / instantiate / reduce as admit-POINTER or Core birth | emission + Core sealed |
| Rewrite Wave A ASCII panels (P-T1…P-T9) wholesale | read-only unless stamp-tighten delta |
| Wave B mechanisms rewrite / new M-T\* file | Pass 2 non-goal; mechanisms stay deferred |
| Pass 3 / Pass 4 products | not this pass |
| Amend rust-nostd maps / law / graphics / systems-manifest / five-stakes | wrong stations / default skip |
| Add `src/`, `Cargo.toml`, crates.io deps, or rustc flags that invent emission | Implementation Law |
| Fill emission `[GAP]` via host import / compile-to-wasm32 story | FORBID |
| Git-add PDF · push without ask | standing rules |
| Treat `docs/clock/wasm/README.md` projection bake as Spec 3.0 authority | Shadow bake ≠ this shelf |

---

## Pass 2 product (deltas D1–D6)

Edit **only** `docs/clipboards/wasm-spec-3-clipboard.md` by default.  
Touch `wasm-spec-3-ascii-machinery.md` **only** if a stamp-tighten delta is required (prefer one-line receipt “P-T\* stamps stand”; no Wave B rewrite).  
Do **not** create `wasm-spec-3-mechanisms.md` this pass.

### D1 — What this clipboard / shelf is not

Short sealed list (compile-target hygiene):

- Not Core / not a sixth graphic / not systems-manifest-ascii  
- Not `pointer-emission.md` / not a Φ fill / not acceptance of emission by compiling to wasm32  
- Not Lace’s 1D strand, star index, or Graphic D scheduler  
- Not permission to treat WASM **store / linear memory / table / stack / frames** as Lace store  
- Not permission to treat **`br` / `return` / call / trap** as POINTER when / arity / adjacency or Lace cut  
- Not permission to treat **validation** as admit-POINTER, or **instantiate** as Core birth  
- Not authority of `.wat` over binary (text = non-authority twin)  
- Not a rewrite of rust-nostd crate-map / branch-contracts / AGENTS Implementation Law  
- Not permission to add `src/` or Cargo before emission acceptance  
- Not an anti-model LLM leftover shelf (Xiao–Zhu / Petersen / AgentScope morals do not transfer)

### D2 — ON-TARGET / KEEP / FORBID / MAP strip

Compact spine card on the **wasm-spec-3 clipboard** (not five-stakes). Must match Pass 1 morals:

| KEEP-read-as-target | FORBID |
|---|---|
| Spec 3.0 as ISA / compile-target semantics (PAGE A; overview) | linear mem / store / table / stack / frames as Lace strand or Graphic D (E, P-T4) |
| Module / section / type / value anatomy (B, C; P-T1, P-T2) | WASM valtypes / module / instance as Core types or Core doors (C, B; FORBID-as-Core) |
| Validation / binary decode as **target** hygiene (D, G; P-T3, P-T6) | validate ⇒ admit POINTER / Φ fill (D, P-T3) |
| Instruction reduction ops as ISA read (F; P-T5) | `br` / `return` / call ⇒ POINTER when/arity/adjacency (F, P-T5) |
| Host embed boundary as PROPOSAL-only read (H; P-T8) | import host fn fills `[GAP]` (H, P-T8) |
| Trap / divergence as ISA read (P-T9) | trap ⇒ Lace cut / append rule (P-T9, X) |
| `.wat` as non-authority twin (G; P-T7) | wat text as sole / superior authority vs binary |

**MAP arrows (coherence with rust-nostd — all exits FORBIDDEN into Core write):**

```
P-T1/B ──read-as-target──► future wasm32 surface   ──[X]──► strand/ · core/ doors
P-T2/C ──read-as-target──► valtypes                 ──[X]──► word/ · pointer/ kinds
P-T3/D ──read-as-target──► validate                 ──[X]──► admit POINTER / Φ
P-T4/E ──read-as-target──► store/mem/table/stack    ──[X]──► Lace 1D strand / Graphic D
P-T5/F ──read-as-target──► reduce / control         ──[X]──► pointer-emission when-rule
P-T6/G ──read-as-target──► binary decode            ──[X]──► Core birth / src/
P-T7/G ──twin──► wat (non-authority)                ──[X]──► sole authority
P-T8/H ──PROPOSAL-only──► host embed                ──[X]──► fill [GAP]
P-T9/X ──SILENT──► trap/diverge                     ──[X]──► Lace cut / append
emission = [GAP]  ·  Hands win  ·  no src/ until human-accepted emission
```

### D3 — Failure modes (FM-W1…W9)

Table on clipboard: **ID · Misread · Hands / law deadbolt · PDF pin** (Pass 1 reuse or fresh `pdftotext -f N -l N -layout`).  
Each row **must** include printed + PDF one-based pin (or `[OPEN]` with cause).

| ID | Misread seed (required themes) | Deadbolt seed |
|---|---|---|
| **FM-W1** | WASM **linear memory** ⇒ Lace **1D strand** | FORBID-as-Lace-store · Piece 1/6 · PAGE E / P-T4 |
| **FM-W2** | WASM **table** (funcref/externref) ⇒ Lace **star** / star index | FORBID-as-Lace-store · Piece 7 · PAGE E / P-T4 |
| **FM-W3** | Operand **stack / frames** ⇒ Lace **append** discipline / Graphic D rows | FORBID-as-Lace-store · Piece 6 · PAGE E / P-T4 |
| **FM-W4** | **`br` / `return` / call** ⇒ POINTER **when** / arity / adjacency (Φ fill) | FORBID-as-emission-rule · pointer-emission `[GAP]` · PAGE F / P-T5 |
| **FM-W5** | **Validation** (stack-type / matching) ⇒ **admit POINTER** / Lace write gate | FORBID-as-emission-rule · SILENT-for-Lace-append · PAGE D / P-T3 |
| **FM-W6** | **`.wat` text** ⇒ sole / superior **authority** over binary module | text = non-authority twin · PAGE G / P-T7 |
| **FM-W7** | **Import host** function / embedding ⇒ **fill emission `[GAP]`** | PROPOSAL-only · FORBID fill-GAP · PAGE H / P-T8 |
| **FM-W8** | WASM **trap** / divergence ⇒ Lace **cut** / authorized rewrite / append rule | FORBID-as-emission-rule · SILENT · PAGE X / P-T9 |
| **FM-W9** | **Instantiate** (module→instance) ⇒ Lace **Core birth** / door open / `src/` gate | FORBID-as-Core · rust-nostd birth cards stand separate · PAGE E/H · branch-contracts |

Pin loci (Pass 1 reuse — verify on execute): E §4.2 PDF ~87–94; F §4.6 control PDF ~127–128; D Ch.3 PDF ~33 / §7.6 PDF ~274; G Ch.5–6 PDF ~183 / ~211; H §7.1 PDF ~245; X steward refuse block.

### D4 — Interface coherence (Hands + rust-nostd + ASCII)

One short paragraph (plus optional bullet list):

- **Only** KEEP-read-as-target outputs may sit **beside** Lace: Spec 3.0 as the ISA a future `#![no_std]` build may compile toward (`wasm32-unknown-unknown`).  
- **Nothing** in A–H/X or P-T1…P-T9 writes Graphic D, strand/, word/, pointer/, or fills `pointer-emission.md`.  
- rust-nostd **crate-map** = planned first-party doors; **branch-contracts** = serial birth cards — both remain proposals; WASM is **target surface**, not a door and not a birth event.  
- ASCII P-T\* stand as Wave A machinery; Pass 2 cites them for MAP/FM pins — **read-only** unless a stamp-tighten delta is forced.  
- Host embed (P-T8 / PAGE H) stays **PROPOSAL-only**; compiling or instantiating does **not** accept emission.  
- `[GAP]` remains. Shoe in hands, or no.

### D5 — Source gate (cite Pass 1)

Do **not** narrate PDF-absent. Cite Pass 1 receipt:

- PDF **present** at `refs/local/webassembly-spec-3.0.pdf`  
- 323 pp.; text layer; printed ≈ PDF − 4  
- SHA-256 `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`  
- Never `git add` the PDF (gitignore `refs/local/` + `*.pdf`)  
- Pass 1 products: clipboard PAGE A–H, X · ascii overview + P-T1…P-T9 · mechanisms deferred · execute ~`6ce0948`

### D6 — Sealed

Repeat sealed list: invent Φ · promote WASM store/mem/table/stack as Lace store · use control/trap as emission · treat validate as admit-POINTER · treat instantiate as Core birth · treat wat as sole authority · fill `[GAP]` via host import · amend map/law/graphics/rust-nostd · Wave B rewrite · Pass 3/4 · `src/` / Cargo · git-add PDF · pretend OCR without the file · clone Xiao–Zhu/Petersen LLM morals onto this shelf.

### Optional D7 — Constructive miniature (Shadow only, ≤30 min)

If time: **one** numbered paper algorithm, stamped **FORBID-as-Core** + **SILENT-for-Lace-append**:

| Choice | Spec locus (seed) | Stamp |
|---|---|---|
| **(a)** Binary section decode sketch (bytes → section headers → abstract module outline) | Ch.5 / P-T6 | FORBID-as-Core · not strand append |
| **(b)** Validation algorithm miniature (stack-type / matching steps) | Ch.3 · App. §7.6 / P-T3 | FORBID-as-emission-rule · not admit-POINTER |

Mark choice points `[OPEN]` where the book is silent. **Skip entirely** rather than invent steps the Spec does not state. Not a Graphic D scheduler. Not `src/`.

---

## Coherence with ASCII P-T\* (standing rule)

| Panel | PAGE | Pass 2 use |
|---|---|---|
| overview | A | D2 MAP entry; KEEP-read-as-target |
| P-T1 | B | FM mesh / FORBID-as-Core |
| P-T2 | C | FORBID-as-Core-write |
| P-T3 | D | **FM-W5** |
| P-T4 | E | **FM-W1…W3** |
| P-T5 | F | **FM-W4** |
| P-T6 | G | D7(a) seed; KEEP decode |
| P-T7 | G | **FM-W6** |
| P-T8 | H | **FM-W7** |
| P-T9 | X | **FM-W8** (+ instantiate → **FM-W9** via E/H) |

**Default:** ascii file **read-only**. Open a stamp-tighten edit only if an FM pin forces a clearer FORBID line under a panel — never a Wave B rewrite, never new panels.

---

## Tickets

### T0 — Claim / base

Held at plan by `wasm-spec-3.0 Pass 2 PLAN only`. Before execute: `git pull --ff-only` · refresh claim if clock turned · agent id e.g. `wasm-spec-3.0 Pass 2 EXECUTE`.

### T1 — Hands + mesh skim

Shoe → graphics A–D → systems-manifest (+ know Core ASCII is separate) → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → rust-nostd crate-map + branch-contracts → clock/wasm README (Shadow bake only) → Pass 1 clipboard + ascii → this plan → PDF.

### T2 — PDF gate

Confirm `refs/local/webassembly-spec-3.0.pdf` resolves; `git check-ignore`; abort if PDF staged; SHA match Pass 1.

### T3 — Write D1–D2–D4–D5–D6

Prose deltas on **clipboard only**; no A–H/X moral rewrite. Prefer append after Pass 1 receipt / PAGE X.

### T4 — FM-W\* hunt (D3)

Reuse Pass 1 pins; `pdftotext` only where a row lacks a pin. ≤2-line eye-quote per new pin.

### T5 — Five-stakes (default **skip**)

Out of scope. Only if human explicitly asks: one receipt line that wasm-spec-3 Pass 2 deltas landed; **do not** rewrite five-stakes pages.

### T6 — Optional D7 miniature

Default **include if ≤30 min**; else defer with note under Pass 2 receipt. Choice (a) or (b) above — not both unless trivial.

### T7 — ASCII touch (default **skip**)

Only stamp-tighten if T4 forces it; otherwise receipt “P-T1…P-T9 stamps stand.”

### T8 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "wasm-spec-3.0 Pass 2 EXECUTE"
# commit: clipboard D1–D6 (+ D7 if any) + this plan marked EXECUTED
# never stage refs/local/*.pdf
./docs/coord/coord.sh release clipboards "wasm-spec-3.0 Pass 2 EXECUTE"
```

Ask before push. **This plan turn does not execute.**

---

## Acceptance tests (execute must pass)

1. Pass 2 receipt on `wasm-spec-3-clipboard.md`.  
2. D1–D6 present; D5 says PDF **present** (not absent).  
3. FM-W1…W9 each have Hands/law deadbolt + PDF/printed pin (or `[OPEN]` with cause).  
4. Required themes covered: linear mem≠strand · table≠star · stack/frames≠append · br/return/call≠Φ · validate≠admit POINTER · wat≠authority · import host≠fill `[GAP]` · trap≠Lace cut · instantiate≠Core birth.  
5. No stamp invents POINTER when/arity/adjacency or fills Φ.  
6. Pass 1 FORBID-as-Lace-store / FORBID-as-emission-rule / PROPOSAL-only not softened.  
7. rust-nostd / law / graphics / systems-manifest / five-stakes untouched (unless T5/T7 explicitly opened); PDF never staged; no `src/` / Cargo.  
8. ASCII P-T\* unchanged **or** only stamp-tighten with receipt — no Wave B / new panels.  
9. If D7 present: miniature is Shadow-only with FORBID-as-Core (and emission FORBID if validate-flavored).  
10. Steward refuse tests (below) answerable from D2+D3 alone.

---

## Steward refuse tests (must remain rejectable)

Shoe in hands, or no.

1. “WASM linear memory is the Lace strand” → **FORBID-as-Lace-store** (FM-W1).  
2. “WASM table is the Lace star index” → **FORBID-as-Lace-store** (FM-W2).  
3. “Operand stack / frames are Lace append / Graphic D” → **FORBID-as-Lace-store** (FM-W3).  
4. “`br` / `return` / call emits POINTER / fills Φ” → **FORBID-as-emission-rule** (FM-W4).  
5. “Validation admits POINTER” → **FORBID-as-emission-rule** (FM-W5).  
6. “`.wat` is the authority” → non-authority twin (FM-W6).  
7. “Import host fn fills emission `[GAP]`” → **FORBID** / **PROPOSAL-only** (FM-W7).  
8. “Trap is a Lace cut” → **FORBID** / SILENT (FM-W8).  
9. “Instantiate is Core birth / opens `src/`” → **FORBID-as-Core** (FM-W9).  
10. “Compiling to wasm32 accepts pointer-emission.md” → **FORBID** (D1/D6).

---

## Execute checklist (future — when human says go Pass 2)

```
git pull --ff-only
./docs/coord/coord.sh claim clipboards "wasm-spec-3.0 Pass 2 EXECUTE"
# T1 Hands+mesh skim
# T2 PDF gate (symlink + check-ignore + SHA; never git add)
# T3 D1 D2 D4 D5 D6 on wasm-spec-3-clipboard.md
# T4 FM-W1…W9 pins
# T5 skip five-stakes
# T6 optional D7 if ≤30 min
# T7 ascii touch only if stamp-tighten required
# Mark this plan Status: EXECUTED + receipt
./docs/coord/coord.sh check clipboards "wasm-spec-3.0 Pass 2 EXECUTE"
# commit clipboard deltas + plan EXECUTED only
./docs/coord/coord.sh release clipboards "wasm-spec-3.0 Pass 2 EXECUTE"
# DO NOT push unless asked · DO NOT open Pass 3/4 · emission stays [GAP]
```

---

## Success criteria (plan turn — this commit)

1. This file exists at `docs/clipboards/wasm-spec-3-pass-2-plan.md`.  
2. Status **HELD / NOT EXECUTED**; COMPILATION TARGET banner present.  
3. D1–D6 + optional D7 + FM-W1…W9 themes + tickets + acceptance + steward refuse specified.  
4. No clipboard/ascii product deltas in this commit (plan only).  
5. Clipboards station released after plan commit.  
6. No push. No `src/`. PDF unstaged. Emission `[GAP]`.

---

## Steward test (standing)

Shoe in hands, or no.  
WASM is the machine we may compile toward, not the lace.  
Linear memory is not a strand. A table is not a star.  
Stack and frames are not append.  
`br` / `return` / call do not emit POINTER.  
Validation does not admit POINTER. `.wat` is not authority.  
Host imports do not accept Φ. Traps are not cuts.  
Instantiate is not Core birth.  
Φ stays `[GAP]`.

---

## Plan receipt (this turn)

| Field | Value |
|---|---|
| Status | **EXECUTED** (execute turn) |
| When | 2026-09-18 ~19:58 PT |
| Agent | `wasm-spec-3.0 Pass 2 PLAN only` |
| Product | this plan file only |
| Pass 1 ancestor | EXECUTED ~`6ce0948` (clipboard A–H,X + ascii P-T1…P-T9) |
| Amended clipboard/ascii/src/maps/law | **No** (plan only) |
| PDF staged | No |
| Push | **No** |
| Emission | `[GAP]` |

### Execution receipt (fill on execute)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When | 2026-09-18 ~20:04 PT |
| Agent | `wasm-spec-3.0 Pass 2 EXECUTE` |
| Product | D1–D6 (+ D7 binary-section decode) on `wasm-spec-3-clipboard.md` |
| T5 five-stakes | **skip** |
| T7 ascii | **skip** — P-T1…P-T9 stamps stand |
| FM-W1…W9 | all pinned (W1 mem≠strand · W2 table≠star · W3 stack≠append · W4 br≠Φ · W5 validate≠admit · W6 wat≠authority · W7 host≠GAP · W8 trap≠cut · W9 instantiate≠Core birth) |
| Amended map/law/graphics/src | **No** |
| PDF staged | **No** |
| Emission | `[GAP]` |
