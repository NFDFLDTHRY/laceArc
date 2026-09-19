# WebAssembly Spec 3.0 — Pass 4 PLAN (representation fidelity / accuracy steward)

**Status:** **HELD / NOT EXECUTED** · plan only · 2026-09-18 ~20:14 PT  
**Station:** clipboards (HELD `wasm-spec-3 Pass 4 plan`)  
**Base at plan:** `ebc7dca` (== `origin/main` at claim/refresh)  
**Spec:** WebAssembly Specification **Release 3.0** (2026-09-11) · editor Andreas Rossberg / W3C CG  
**Clipboard under test:** `docs/clipboards/wasm-spec-3-clipboard.md` (Pass 1–3 EXECUTED; P3-M CONFIRM×9 · CONFLICT×0)  
**ASCII under test:** `docs/clipboards/wasm-spec-3-ascii-machinery.md` (SOURCE MACHINERY overview + **P-T1…P-T9**)  
**Mechanisms under test:** `docs/clipboards/wasm-spec-3-mechanisms.md` (Wave A **M-T1…M-T9**)  
**Ancestors:** [`wasm-spec-3-pass-1-plan.md`](wasm-spec-3-pass-1-plan.md) · [`wasm-spec-3-pass-2-plan.md`](wasm-spec-3-pass-2-plan.md) · [`wasm-spec-3-pass-3-plan.md`](wasm-spec-3-pass-3-plan.md)  
**Templates mirrored (adapt, don’t clone LLM morals):** [`agentscope-pass-4-plan.md`](agentscope-pass-4-plan.md) · [`agentscope-pass-5-plan.md`](agentscope-pass-5-plan.md) (accuracy matrix / P5-X·F·O·R parts) · [`petersen-zech-pass-4-plan.md`](petersen-zech-pass-4-plan.md) · [`petersen-zech-pass-5-plan.md`](petersen-zech-pass-5-plan.md)  
**Mesh (read-only):** [`rust-nostd-crate-map.md`](../plans/rust-nostd-crate-map.md) · [`rust-nostd-branch-contracts.md`](../plans/rust-nostd-branch-contracts.md) · [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`**  
**Sibling (default skip):** five-stakes · Order Proposal (Pass **5** shape if wanted later)  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webassembly-spec-3.0.pdf` |
| Attachment SHA-256 | `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` |
| Pages | **323** · text layer yes · printed ≈ PDF − 4 (Pass 1–3 certified) |
| Git | **Never `git add` the PDF** |

Law: WASM = **compile target only** · linear mem ≠ strand · table ≠ star · stack/frames ≠ append · `br`/`return`/call ≠ Φ · validate ≠ admit POINTER · wat ≠ authority · import host ≠ fill `[GAP]` · trap ≠ Lace cut · instantiate ≠ Core birth · Hands win · `[GAP]` sealed · zero foreign crates · no `src/` until emission accepted · **representation correctness > new art**.

```
pull/ff → claim clipboards → Hands + target-mesh skim
        → open PDF (refs/local; no git add) for contested pins only
        → P4-A structural re-walk overview + P-T1…P-T9 ↔ M-T1…M-T9
        → P4-X deep accuracy matrix M↔P↔PDF (special gates)
        → P4-F fix ONLY matrix-cited misrepresentation
        → P4-O lock singular canonical SOURCE MACHINERY overview
        → P4-R receipt + verdict · mark plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — COMPILATION TARGET (not anti-model / not Core)

```
+======================================================================+
|  COMPILATION TARGET — Lace Rust #![no_std]  -->  wasm32-unknown-unknown |
|  Pass 4 = REPRESENTATION FIDELITY / ACCURACY STEWARD.                  |
|  NOT a first-draw ASCII pass (Pass 1 already drew overview + P-T*).    |
|  NOT Xiao–Zhu / Petersen / AgentScope morals (those are anti-model).   |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.            |
|  Goal: rigorously analyze Spec system mechanisms and correctly         |
|        represent them in ASCII panels + mechanism cards.               |
|  WASM ops = TARGET semantics.  Do NOT invent POINTER emission / Phi.   |
|  Do NOT import WASM store/memory/table/stack as Lace's 1D strand.      |
|  Zero crates.io / foreign deps.  No src/ until pointer-emission accepted.|
|  Status this commit: HELD / NOT EXECUTED — plan only.                  |
+======================================================================+
```

This is **not** another first-draw diagram pass and **not** an anti-model LLM/theory pass.  
It is **compile-target representation hygiene**: deep **M-T\* ↔ P-T\* ↔ Spec PDF** re-walk, fix misrepresentation, lock one canonical overview if drift, produce **P4-X** rigor matrix. Mirror the rigor spirit of Petersen/AgentScope Pass 4–5 (ASCII fidelity + M↔P accuracy) adapted to this shelf’s already-drawn ascii + cards.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF + ASCII) | **Admission + target machinery** — PAGE A–H, X; overview + P-T1…P-T9 |
| 2 | **Leftovers** — D1–D6 + FM-W1…W9 + D7 binary decode miniature |
| 3 | **System mechanisms** — M-T1…M-T9 + P3-M mesh |
| **4** | **Representation fidelity** — re-walk M↔P↔PDF; fix misrepresentation; P4-X matrix; singular overview; verdict |

Sibling shelves (AgentScope / Petersen): Pass 4 drew ASCII; Pass 5 stewarded M↔P accuracy + optional Order Proposal.  
This shelf’s Pass 1 already drew ASCII; Pass 3 already cardified. **Pass 4 therefore absorbs the accuracy-steward job** (AgentScope/Petersen Pass 5 P5-X·F·O·R shape) **without** Order Proposal (defer to Pass 5 if wanted).

Still **Shadow / Layer III**. Not Core. Not `src/`. No Wave B by default.

---

## Goal (user emphasis)

**Rigorously analyze and correctly represent the system mechanisms in the WebAssembly Spec 3.0 reference** — algorithm step fidelity, stamp correctness under fences, false-friend naming, PDF pin honesty — in the existing ASCII panels and mechanism cards. Prefer **correctness of representation** over new panels or style rewrites.

---

## Already done (do not redo)

| Layer | State |
|---|---|
| PAGE A–H, X | Filled; Pass 1 KEEP-read-as-target / FORBID-* / PROPOSAL-only / SILENT stamps stand |
| ASCII overview + P-T1…P-T9 | Landed (Pass 1); **re-walk for fidelity — do not invent new panels** |
| D1–D6 + FM-W1…W9 + D7 | Pass 2 stands |
| M-T1…M-T9 + P3-M | Pass 3 EXECUTED · CONFIRM×9 · CONFLICT×0 |
| Five-stakes | **Out of scope** (default skip) |
| rust-nostd crate-map / branch-contracts | Untouched (cite only) |
| pointer-emission.md | Still DRAFT / `[GAP]` — untouched |
| `src/` / Cargo | Absent; stay absent |
| Order Proposal | **Not this pass** (Pass 5 shape if wanted later) |

Pass 4 does **not** reopen Pass 2 leftovers wholesale, invent emission, invent Core, or draw Wave B. It **does** open ascii and/or mechanism captions **only** where P4-X cites a FIX.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Soften Pass 1–3 FORBID-as-Lace-store / FORBID-as-emission-rule / PROPOSAL-only / SILENT | Pass 1–3 confirmed |
| Promote WASM store / linear mem / table / stack / frames into Lace Core | off-shoe / wrong ontology |
| Treat validate / instantiate / reduce as admit-POINTER or Core birth | emission + Core sealed |
| Wave B panels / new P-T10+ / new M-T10+ | default skip |
| Order Proposal (P5-P shape) | deferred — Pass 5 if wanted |
| Five-stakes rewrite | wrong shelf genre |
| Rewrite M-T* algorithm bodies for style | only P4-F when matrix cites misrepresentation |
| Redraw overview for aesthetics | only if P4-O finds drift / duplicate |
| Amend rust-nostd maps / law / graphics / systems-manifest | wrong stations |
| Add `src/`, `Cargo.toml`, crates.io deps | Implementation Law |
| Fill emission `[GAP]` via host import / compile-to-wasm32 story | FORBID |
| Clone Xiao–Zhu / Petersen / AgentScope LLM morals onto this shelf | wrong genre |
| Git-add PDF · push without ask | standing rules |
| Treat `docs/clock/wasm/README.md` projection bake as Spec 3.0 authority | Shadow bake ≠ this shelf |
| Execute fixes in the **plan** commit | plan = HELD / NOT EXECUTED |

---

## What “representation fidelity” means here

Each M-T* / P-T* pair must **correctly represent** the Spec’s constructive procedure:

1. **Implements reverse-walk** — every numbered M-T* algorithm step is visible (or explicitly deferred with cite) in the matching P-T* fence/caption  
2. **Fence book-only** — inside fences: **spec-side glyphs only**; no Lace `POINTER` / `WORD` / Graphic D as if they were WASM objects (captions/stamps may name Lace FORBIDs **under** the fence)  
3. **Stamp match** — P-T* stamp line under fence matches M-T* Lace stamp tooth (and P3-M)  
4. **False-friend honesty** — panel false-friend cites **FM-W\*** (Pass 2 authority), not orphan **FM-T\*** aliases unless cross-mapped  
5. **Pin honesty** — Spec § / PDF page matches a re-sight or Pass 1–3 certified pin; contested pins re-walked  
6. **Overview attach** — each P-T* appears on the singular SOURCE MACHINERY board; Core/Φ stay off-board  
7. **No Φ invent** — emission column remains `[GAP]`

Survives **P4-X**: Implements OK · Fence OK · Stamp OK · FM OK · Pin OK · Overview OK · PASS/FIX.

---

## Pass 4 products

### P4-A — Structural re-walk (required)

Re-walk **once** (execute):

| Check | Criterion |
|---|---|
| Coverage | overview present · P-T1…P-T9 all present · M-T1…M-T9 all present |
| 1:1 | every P-T* cites matching M-T* (or add cite); every M-T* cites matching P-T* |
| Stamp under-fence | every panel has stamp line **under** its fence; matches card |
| No POINTER-in-fence | no Lace POINTER/WORD/Graphic D treated as WASM objects **inside** fences |
| Cross-walk freshness | ascii Pass-1 cross-walk upgraded or superseded by P4-X (must show M-T* column) |
| P3-M stand | CONFIRM×9 not reopened unless P4-X forces a stamp-conflict note |

Record P4-A findings as a short checklist on the clipboard (or under P4-X preamble). Any FAIL becomes a P4-X FIX row.

### P4-X — Deep accuracy matrix (required · primary deliverable)

Prefer locus: **clipboard** Pass 4 section + one-line pointer from ascii + mechanisms status lines.

**Columns:**

`overview node · P-T* · M-T* · stamp · Implements OK · Fence OK · Stamp OK · FM OK · Pin OK · Overview OK · PASS/FIX`

**Rows (blocking):**

- All **M-T1…M-T9 / P-T1…P-T9** (9)  
- Overview spine nodes (decode · module · validate · instantiate/store · reduce · trap · forbidden Core/Φ exit)

**Special gates (must not rubber-stamp):**

| Gate | Why |
|---|---|
| **M-T4 / P-T4** · **FM-W1…W3** (· W9) | linear mem / table / stack / store ≠ Lace strand / star / append — highest false-friend risk |
| **M-T5 / P-T5** · **FM-W4** | `br` / `return` / call ↛ POINTER when / Φ |
| **M-T8 / P-T8** · **FM-W7** | host embed PROPOSAL-only; FORBID fill-GAP |
| **M-T9 / P-T9** · **FM-W8** | trap / diverge ≠ Lace cut / append |
| **FM-W1…W4, W7, W8** pins | re-sight or certify; do not inherit blindly |

Scoring: every cell Y → **PASS**; else **FIX** with exact edit target (ascii caption / fence / stamp line / mechanism field / FM pin line).

P3-M YES×9 is **baseline only** — Pass 4 re-walks Implements and pin fidelity.

#### Plan-time contested seeds (execute must score; do not fix in plan commit)

| Seed | Contested finding (plan skim) | Likely FIX locus |
|---|---|---|
| FM naming | Ascii panels cite **FM-T1…T9**; clipboard/mechanisms authority is **FM-W1…W9** | ascii false-friend rows → map to FM-W* (or explicit FM-T*=FM-W* alias table) |
| P-T6 stamp | Under-fence stamp = KEEP-read-as-target only; M-T6 also **FORBID-as-Core** · **SILENT** | P-T6 stamp line under fence |
| FM-W1/W2 pin | Pass 2 cites mem/table PDF **91**; plan `pdftotext` shows §4.2.8/9 **Table/Memory Instances** on PDF **90** (p.91 = Globals) | FM-W1/W2 pin line (+ M-T4 locus if needed) — certify printed≈PDF−4 story |
| Cross-walk | Ascii cross-walk is Pass-1 vintage (no M-T* column) | supersede via P4-X / refresh table |
| Overview | **One** SOURCE MACHINERY fence already (count=1) | P4-O confirm; no redraw unless drift |
| Fence glyphs | Captions correctly FORBID POINTER; inside-fence samples looked spec-side on skim | re-audit all 9 fences at execute |

These seeds are **not** executed fixes — they seed P4-X rows.

### P4-F — Fix misrepresentation (required if any FIX)

Only matrix-cited edits:

- Prefer **ascii** panel fence / caption / stamp-under-fence / false-friend cite  
- Mechanisms: only when Implements text or stamp truly misrepresents Spec (pin / step / stamp) — **no** moral softening, **no** Core invent  
- Clipboard: FM-W* pin tighten if Pin OK fails; thin Pass 4 receipt; optional P3-M note if stamp-conflict  
- Do **not** invent Wave B, Order Proposal, Φ, or `src/`

Every FIX → re-score to PASS before receipt.

### P4-O — Canonical SOURCE MACHINERY overview (required)

Exactly **one** canonical overview fence in `wasm-spec-3-ascii-machinery.md`.

| Rule | |
|---|---|
| Singular | remove/demote duplicates if found |
| Attach | all P-T1…P-T9 appear on the board (host embed may share instantiate node — already does) |
| Off-board | Lace Core / Graphic D / Phi remain FORBIDDEN exit; Φ = `[GAP]` |
| No aesthetic redraw | only if P4-X Overview OK fails or duplicate exists |

Plan skim: overview count = **1** — execute confirms and cites P4-X.

### P4-R — Receipt + verdict (required)

On `wasm-spec-3-clipboard.md` under Pass 4:

| Field | Content |
|---|---|
| Status | EXECUTED (at execute only) |
| When / agent / station | |
| P4-A | structural checklist summary |
| P4-X | matrix locus + PASS/FIX counts |
| P4-F | list of edits (paths + one-line each) or “none” |
| P4-O | singular overview confirmed / fixed |
| **Verdict** | **REPRESENTATION SOUND** \| **SOUND WITH OPENS** \| **BLOCKED** |
| Emission | still `[GAP]` |
| `src/` | absent |
| Push | not performed (unless human asks later) |

**Verdict meanings:**

| Verdict | When |
|---|---|
| **REPRESENTATION SOUND** | All P4-X rows PASS; no OPEN pin fights; stamps match; fences clean |
| **SOUND WITH OPENS** | All FIX rows resolved to PASS, but book continues / deferred Wave B / pin approximation noted as `[OPEN]` non-blocking |
| **BLOCKED** | Unresolved FIX, CONFLICT with P3-M, PDF missing/staged, or stamp soften attempted — **stop and report** |

Thin status one-liners optional on ascii + mechanisms files pointing at Pass 4 receipt / P4-X.

---

## Coherence with standing artifacts

| Artifact | Pass 4 stance |
|---|---|
| `wasm-spec-3-ascii-machinery.md` | **editable** for P4-F / P4-O only where matrix cites |
| `wasm-spec-3-mechanisms.md` | **editable** only for matrix-cited misrepresentation (prefer ascii) |
| `wasm-spec-3-clipboard.md` | P4-X matrix + P4-R receipt (+ FM pin tighten if cited) |
| P3-M | stand; note only if stamp-conflict |
| FM-W* / D7 | pin tighten only if Pin OK fails; do not rewrite D7 body |
| rust-nostd / law / graphics / systems-manifest / five-stakes | **untouched** |
| PDF | never staged |

---

## Tickets (execute checklist)

### T0 — Claim / base

Held at plan by `wasm-spec-3 Pass 4 plan` · BASE `ebc7dca`. Before execute: `git pull --ff-only` · `bash docs/coord/coord.sh refresh clipboards "wasm-spec-3 Pass 4 EXECUTE"` (or claim if FREE) · abort if BASE ≠ origin without human note.

### T1 — Hands + target-mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → rust-nostd crate-map + branch-contracts (read-only) → pointer-emission `[GAP]` → clock/wasm README (Shadow bake only) → Pass 1–3 clipboard (A–H/X + FM-W* + D7 + P3-M) → ascii overview + P-T1…P-T9 → mechanisms M-T1…M-T9 → this plan → AgentScope/Petersen Pass 5 accuracy-matrix shape (read-only).

### T2 — PDF gate

Confirm `refs/local/webassembly-spec-3.0.pdf` resolves; SHA matches; `git check-ignore`; **abort if PDF staged**. Light `pdftotext` only for contested pins (special gates + any Pin OK fail).

### T3 — P4-A structural re-walk

Coverage · 1:1 · stamp-under-fence · no POINTER-in-fence · cross-walk freshness.

### T4 — Build P4-X matrix

All 9 pairs + overview nodes; run special gates; score PASS/FIX with edit targets. Include plan-time contested seeds.

### T5 — P4-F fixes

Apply **only** matrix-cited edits; re-score to PASS. No Core invent. No Wave B. No Order Proposal.

### T6 — P4-O canonical overview

Confirm singular fence; fix only if needed.

### T7 — P4-R receipt + verdict · mark plan EXECUTED

Write clipboard Pass 4 section; set this plan Status → EXECUTED with receipt pointer; thin pointers on ascii/mechanisms optional.

### T8 — Check / commit / release · STOP

```
bash docs/coord/coord.sh check clipboards "wasm-spec-3 Pass 4 EXECUTE"
# commit: P4-X + fixes (if any) + overview lock + receipt + plan EXECUTED
# never git-add PDF · never add src/
bash docs/coord/coord.sh release clipboards "wasm-spec-3 Pass 4 EXECUTE"
```

**Do not push** unless human asks. **Do not execute in the plan commit.**

---

## Success criteria (execute must pass)

1. P4-A checklist complete; no silent coverage holes.  
2. P4-X covers all M-T1…T9 / P-T1…T9 (+ overview); every row PASS or fixed to PASS.  
3. Special gates on M-T4/M-T5/M-T8/M-T9 and FM-W1–W4,W7,W8 explicitly scored (not inherited).  
4. No POINTER/WORD/Graphic D as WASM objects inside fences.  
5. Stamp lines under fences match M-T* / P3-M teeth.  
6. False friends cite **FM-W\*** (or documented alias).  
7. Exactly one canonical SOURCE MACHINERY overview; Core/Φ off-board.  
8. Verdict recorded: REPRESENTATION SOUND | SOUND WITH OPENS | BLOCKED.  
9. Emission still `[GAP]`; no `src/`; PDF never staged; rust-nostd/law/graphics/systems-manifest/five-stakes untouched.  
10. Plan marked EXECUTED; station released; **no push** unless asked.

---

## Steward refuse tests (representation correctness)

Shoe in hands — refuse (and score FAIL on P4-X if representation enables them):

1. “WASM linear memory is the Lace strand” → **FORBID-as-Lace-store** (M-T4 / FM-W1)  
2. “Table is the star / star index” → **FORBID-as-Lace-store** (M-T4 / FM-W2)  
3. “Operand stack / frames are Lace append / Graphic D” → **FORBID-as-Lace-store** (M-T4 / FM-W3)  
4. “`br` / `return` / call emits POINTER / fills Φ” → **FORBID-as-emission-rule** (M-T5 / FM-W4)  
5. “Validation admits POINTER / is Lace write gate” → **FORBID-as-emission-rule** · SILENT (M-T3 / FM-W5)  
6. “`.wat` is sole/superior authority” → text non-authority (M-T7 / FM-W6)  
7. “Import host fn fills emission `[GAP]`” → **PROPOSAL-only** · FORBID fill-GAP (M-T8 / FM-W7)  
8. “Trap / diverge is a Lace cut / append rule” → **FORBID-as-emission-rule** · SILENT (M-T9 / FM-W8)  
9. “Instantiate / decode births Core / opens `src/`” → **FORBID-as-Core** (M-T1/M-T6 / FM-W9)  
10. “Panel fence showing Lace POINTER as a WASM object is fine” → **FAIL Fence OK** (representation breach)

If a panel/card **misrepresents** Spec so a steward cannot refuse with the card+panel in hand → **FIX** (or **BLOCKED**).

---

## Plan-time skim receipt (not execute)

| Item | Result |
|---|---|
| Station | clipboards HELD `wasm-spec-3 Pass 4 plan` · BASE `ebc7dca` |
| Artifacts present | ascii · mechanisms · clipboard Pass 1–3 · PDF gitignored link |
| Overview count | **1** |
| P3-M | CONFIRM×9 · CONFLICT×0 · emission `[GAP]` |
| Contested seeds logged | FM-T* vs FM-W* · P-T6 stamp thin · FM-W1/W2 PDF 90 vs cited 91 · Pass-1 cross-walk |
| Special-gate PDF light sight | Results/trap §4.2.2 p.88 · store p.88 · Table/Memory §4.2.8/9 **p.90** · Control §4.6.2 p.127–128 · Embedding §7.1 p.245 |
| Execute | **NOT performed** |
| Push | **NOT performed** |
| Emission | `[GAP]` |
| `src/` | absent |

---

## Commit scope (this plan commit only)

| Include | Exclude |
|---|---|
| `docs/clipboards/wasm-spec-3-pass-4-plan.md` (this file) | ascii / mechanisms / clipboard content edits |
| `docs/coord/stations/clipboards.station` (claim/release as protocol) | PDF · `src/` · rust-nostd · law · graphics · systems-manifest · five-stakes · Order Proposal |

After plan commit: **release** clipboards station. Ahead of origin by plan commit only. Do not push. Do not execute P4-A/X/F/O/R now.
