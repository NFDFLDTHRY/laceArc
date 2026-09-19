# WebAssembly Spec 3.0 — Pass 6 PLAN (rigorous analysis & ASCII systems-diagram correctness)

**Status:** **HELD / NOT EXECUTED** · plan rebuild 2026-09-18 ~20:35 PT · agent `reference-Mapper`  
**Station:** clipboards (HELD `reference-Mapper` · claim for wasm-spec-3 Pass 6 plan rebuild)  
**Base at rebuild:** `7e87833` (== `origin/main` after rebase of prior Pass 6 plan tip) · refresh to current `origin/main` before execute  
**Spec:** WebAssembly Specification **Release 3.0** (2026-09-11) · editor Andreas Rossberg / W3C CG  
**Under test:** `docs/clipboards/wasm-spec-3-ascii-machinery.md` — SOURCE MACHINERY + **P-T1…P-T9** + Pass 5 Order Proposal short mirror  
**Proposal text:** clipboard Pass 5 **P5-P** (full) · ascii short mirror  
**Prior accuracy:** P4-X = **16 PASS / 0 FIX** · P5-X = **18 PASS / 0 FIX** (baselines; Pass 6 goes **deeper**)  
**Companions:** `wasm-spec-3-mechanisms.md` (M-T1…M-T9) · `wasm-spec-3-clipboard.md` · rust-nostd crate-map / branch-contracts (cite only) · pointer-emission = DRAFT/`[GAP]`  
**Ancestors:** [`wasm-spec-3-pass-5-plan.md`](wasm-spec-3-pass-5-plan.md) · Pass 1–4 plans · prior Pass 6 plan draft (wasm32-bannered — **superseded by this rebuild**)  
**Templates mirrored (adapt, don’t clone LLM morals):** [`agentscope-pass-6-plan.md`](agentscope-pass-6-plan.md) · [`petersen-zech-pass-6-plan.md`](petersen-zech-pass-6-plan.md) · [`xiao-zhu-pass-6-plan.md`](xiao-zhu-pass-6-plan.md)  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law

**PDF (gitignored):**

| Field | Value |
|---|---|
| Working link | `refs/local/webassembly-spec-3.0.pdf` |
| Attachment SHA-256 | `687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce` |
| Pages | **323** · text layer yes · printed ≈ PDF − 4 |
| Git | **Never `git add` the PDF** |

Law: ASCII board + Order Proposal remain **Shadow proposal** · not Core · not Φ · WASM = **compile target only** · sealed target = **`wasm64-unknown-unknown` (wasm64)** · linear mem ≠ strand · table ≠ star · stack/frames ≠ append · `br`/`return`/call ≠ Φ · validate ≠ admit POINTER · wat ≠ authority · import host ≠ fill `[GAP]` · trap ≠ Lace cut · instantiate ≠ Core birth · rust-nostd doors = proposals only · Hands may refuse · `[GAP]` sealed.

```
pull/ff → claim → Hands + target-mesh skim
        → P6-A structural analysis of SOURCE MACHINERY as systems diagram
        → P6-P rigor check of Order Proposal claims (still Shadow / non-binding; FORBID-as-Core intact)
        → P6-X deep accuracy re-audit Spec↔M-T*↔P-T*↔overview (stricter than Pass 4/5 steward walks)
        → P6-F fix only analysis/matrix-cited drift (incl. wasm32→wasm64 banner/MAP seal)
        → P6-R verdict + receipt · plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — COMPILATION TARGET (not anti-model / not Core)

```
+======================================================================+
|  COMPILATION TARGET — Lace Rust #![no_std]  -->  wasm64-unknown-unknown |
|  Sealed by human correction: wasm64.  wasm32 is NOT the shelf target.  |
|  Pass 6 = RIGOROUS ANALYSIS + CORRECTNESS of the ASCII systems diagram.|
|  NOT Xiao–Zhu / Petersen / AgentScope LLM anti-model morals.           |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.            |
|  Distinctive product: P6-A/P/X/F/R — structure · proposal rigor ·       |
|        deep Spec↔M↔P↔overview re-audit · cited fixes · verdict.        |
|  Order Proposal stays Shadow / NON-binding; FORBID-as-Core intact.     |
|  WASM ops = TARGET semantics.  Do NOT invent POINTER emission / Phi.   |
|  Zero crates.io / foreign deps.  No src/ until pointer-emission accepted.|
|  Status: HELD / NOT EXECUTED — plan only.                              |
+======================================================================+
```

This is **not** another Order Proposal write (Pass 5 delivered P5-P).  
It is **compile-target diagram correctness**: cross-examine that SOURCE MACHINERY + P-T1…P-T9 + Shadow Order Proposal are coherent, complete, non-leaking, reverse-walk accurate, and steward-refusable under Hands — under the sealed target **`wasm64-unknown-unknown`**. Mirror AgentScope/Petersen/Xiao–Zhu Pass 6 (P6-A/P/X/F/R) adapted to **WASM-as-target (wasm64)**.

---

## Target seal (binding human correction)

**Human chose `wasm64-unknown-unknown` (wasm64).** Prior Pass 1–5 bodies and the first Pass 6 plan draft incorrectly bannered `wasm32-unknown-unknown`. That is **shelf banner drift**, not a Spec mechanism-algorithm error.

| Seal | Rule |
|---|---|
| Sealed compile target | Lace `#![no_std]` → **`wasm64-unknown-unknown`** |
| Not the shelf target | `wasm32-unknown-unknown` / “future wasm32 surface” / compile-to-wasm32 as the shelf story |
| Spec algorithms | **Unchanged** — do not invent or rewrite M-T* / P-T* constructive steps to “match” the retarget |
| memory64 / i64 | Where Spec 3.0 distinguishes address / index widths (e.g. memory address type i32 vs i64 under memory64), call that out in **P6-X special gates** as representation-correctness for the wasm64 target — still Shadow / TARGET only |
| Linear mem | Still **FORBID** treating linear memory as Lace strand (width does not authorize store identity) |
| Pass 1–5 plan bodies | **Do not rewrite** in the plan-only turn; execute (P6-F) corrects **ascii / clipboard / mechanisms** banners + MAP lines; Pass 1–5 plan banners may be noted as historical drift only |

### P6-F drift inventory (correct on execute — banners / MAP only)

Execute must retarget these **without** changing Spec mechanism algorithms:

| Locus | Drift (says wasm32) | Correct to |
|---|---|---|
| `wasm-spec-3-ascii-machinery.md` COMPILATION TARGET banner | `wasm32-unknown-unknown` | `wasm64-unknown-unknown` |
| ascii overview fence caption / compile-target banner line | `--> wasm32-unknown-unknown` | `--> wasm64-unknown-unknown` |
| ascii Order Proposal short mirror prose | “aims at wasm32” | “aims at wasm64” / `wasm64-unknown-unknown` |
| `wasm-spec-3-clipboard.md` SPECIAL + COMPILATION TARGET banner | `wasm32-unknown-unknown` | `wasm64-unknown-unknown` |
| clipboard false-friends / steward-refuse lines | “Compiling to wasm32…” | “Compiling to wasm64…” |
| clipboard MAP arrow | `future wasm32 surface` | `future wasm64 surface` |
| clipboard ON-THE-SHOE / keep-beside prose | compile toward `wasm32-unknown-unknown` | `wasm64-unknown-unknown` |
| clipboard fill-GAP / refuse | `compile-to-wasm32` | `compile-to-wasm64` |
| clipboard M-T1 mesh row | `wasm32 surface ≠ strand/ · core/ door` | `wasm64 surface ≠ …` |
| clipboard P5-P Order Proposal | “compiling toward `wasm32-unknown-unknown`” | `wasm64-unknown-unknown` |
| `wasm-spec-3-mechanisms.md` COMPILATION TARGET banner | `wasm32-unknown-unknown` | `wasm64-unknown-unknown` |
| mechanisms FORBID fill-GAP stamp family | `compile-to-wasm32` | `compile-to-wasm64` |
| mechanisms M-T1 rust-nostd cite | `wasm32 surface ≠ …` | `wasm64 surface ≠ …` |
| mechanisms M-T8 open-gaps line | `compile-to-wasm32` story | `compile-to-wasm64` story |
| Pass 1–5 plan SPECIAL BANNERS / refuse / MAP (historical) | wasm32 banners | **Note only** at execute unless human opens a separate plan-rewrite pass — **do not** mass-edit Pass 1–5 in Pass 6 execute by default |

`docs/clock/wasm/README.md` may still mention wasm32 toolchain facts (Shadow bake / libcore install note). That file is **not** this shelf’s Spec 3.0 authority; do **not** promote it; cite as Shadow bake only. If it conflicts with the sealed target story, OPEN as non-blocking unless it bleeds into ascii/clipboard/mechanisms.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 | Admit + target ASCII overview + P-T1…P-T9 |
| 2 | Leftovers · D1–D6 · FM-W1…W9 · D7 |
| 3 | Wave A mechanisms M-T1…M-T9 + P3-M |
| 4 | Deep M↔P↔PDF fidelity · P4-X · verdict **SOUND WITH OPENS** |
| 5 | Spec↔ASCII mapping + Shadow Order Proposal · P5-X **18 PASS** · P5-P |
| **6** | **Rigorously analyze and ensure** the ASCII systems diagram is **correct**: structure, safety stamps, proposal claims, deep fence/Implements/algorithm-step fidelity · **seal wasm64 compile target** |

Pass 5 answered “does Spec map to ASCII, and is the board a usable Shadow Order Proposal?”  
Pass 6 answers “is the **systems diagram** coherent, complete, non-leaking, reverse-walk accurate, stamp-correct, steward-refusable under Hands, and **bannered to the sealed wasm64 target**?”

Still **Shadow / Layer III**. Not Core. Not `src/`. Not a rewrite of `systems-manifest-ascii.md`. Wave B **default skip**. Order Proposal stays **Shadow / non-binding**.

---

## What “rigorous analysis & correctness” means

### A. Systems-diagram structure (P6-A)

Walk the canonical SOURCE MACHINERY fence and prove:

1. **Spine completeness** — Spec constructive stages present once: input bytes `.wasm`/`.wat` → decode/parse (P-T6/P-T7) → abstract module (P-T1/P-T2) → validate (P-T3) → instantiate+store (P-T4) + host embed (P-T8) → reduce/control (P-T5) → trap/diverge (P-T9) → **FORBIDDEN** exit to Lace Core / Graphic D / Φ.  
2. **No orphan nodes** — every overview box cites ≥1 P-T*/M-T* (or is explicitly marked INPUT / FORBIDDEN exit).  
3. **No missing Wave A coverage** — every M-T1…T9 / P-T1…T9 appears on overview (P-T4 + P-T8 may share the instantiate+store node — confirm both attach).  
4. **Off-board integrity** — Lace Core / Graphic D / Φ / emission appear only as **FORBIDDEN exits**, never as on-board stores.  
5. **Glyph discipline** — overview fence contains **no** `WORD` / `POINTER` / Graphic-D row art as if Spec objects; **no POINTER word inside any diagram fence**.  
6. **Stamp under-fence placement** — each P-T* keeps stamps **under** the fence (not smuggled as fence glyphs); overview FORBID lines are labels, not Lace objects.  
7. **Singularity** — still exactly one canonical overview (reconfirm P5-O / P4-O).  
8. **Panel coverage** — P-T1…P-T9 each present with Spec cite · Lace stamp · (Implements via M-T* reverse-walk) · fence · under-fence stamp line.  
9. **Target-banner coherence** — overview / board prose name **`wasm64-unknown-unknown`** (not wasm32) as the sealed compile target; wasm32 wording = P6-F drift (see Target seal).

Checklist table: item · evidence (line/fence cite) · PASS/OPEN.

### B. Order Proposal rigor (P6-P)

Analyze P5-P (clipboard full + ascii short mirror) against the diagram. Proposal remains **Shadow / non-binding** — Pass 6 does **not** promote it.

| Check | Question |
|---|---|
| Claim–diagram bind | Does each stage→hygiene row point at a real overview node / P-T*? |
| Overclaim | Does any sentence imply Core write, AGENTS.md law, Φ schedule, `src/` birth, or accepted rust-nostd emission? |
| FORBID completeness | Are FORBID-as-Core-write · FORBID-as-Lace-store · FORBID-as-emission-rule · FORBID-as-Core · FORBID fill-GAP · SILENT-for-Lace-append · PROPOSAL · NON-binding · Hands-refusal all explicit and consistent with panel stamps? |
| Steward loop soundness | observe→name→diagram-check→stamp-check→OPEN list→decide — does “decide” exclude POINTER-when / Φ fill / Core install / fill-GAP? |
| File-order proposal | clipboard→mechanisms→ascii→plans — still proposal-only (not mandatory Core path)? rust-nostd cited beside as proposals only? |
| Mirror fidelity | Ascii short mirror does **not strengthen** claims beyond clipboard P5-P |
| FORBID-as-Core intact | No Core bleed: proposal must not install into systems-manifest-ascii / Graphic D / AGENTS.md / `src/` |
| Target seal in proposal | P5-P / mirror name compile-toward **`wasm64-unknown-unknown`** after P6-F (wasm32 wording = FIX, not soft FORBID) |

Failures → OPEN; fix by tightening proposal wording (**not** by softening FORBIDs). Retarget wasm32→wasm64 in proposal prose is **allowed** as seal correction (P6-F), not as Core write.

### C. Deep accuracy (P6-X) — stricter than P4-X / P5-X

For **each** P-T1…P-T9 (re-walk; do **not** inherit P4-X / P5-X PASS blindly):

1. **Cite match** — Mechanism cite / PDF pin agrees with M-T* (re-sight with `pdftotext` **only** where pin is thin / contested).  
2. **Stamp match** — panel under-fence stamp ≡ card stamp family (M-T* hard FORBIDs).  
3. **Algorithm step fidelity** — every M-T* numbered step is depictable on the panel fence (or caption); steward can walk card→fence glyph-by-glyph / step-by-step.  
4. **Fence fidelity** — glyphs depict those steps; Spec-side only; **no Core tokens / no POINTER word** inside fence.  
5. **False-friend / FM link** — present or explicitly N/A (MAP forbid); fence must not depict FM-W* confusion as if allowed.  
6. **Overview attach** — panel’s stage appears on canonical overview.  
7. **Special gates (WASM-as-target / wasm64):**  
   - **P-T4 / M-T4:** FORBID-as-Lace-store explicit; fence depicts store / meminst / tableinst / stack / frames only; mem≠strand · table≠star · stack≠append; FM-W1…W3 (· W9). Contested pin: Table/Memory Instances PDF **90** (=p.86) — re-sight if thin.  
   - **P-T4 / M-T4 representation (wasm64 / memory64):** Where Spec 3.0 distinguishes **memory address / index width** (i32 vs i64; memory64 / addrtype), the diagram + mechanism captions must not silently assume wasm32-only i32 addresses as if that were the sealed target. Call out i64 / memory64 loci as TARGET representation notes when Spec distinguishes them. **Still FORBID** treating linear mem (any width) as Lace strand / Graphic D. Width seal ≠ store identity.  
   - **P-T2 / M-T2 (types):** numtype includes i64; do not collapse “i64 exists in valtype” into “Lace index is i64” or “strand address is wasm i64”. KEEP-read Spec types; FORBID-as-Lace-store.  
   - **P-T5 / M-T5:** FORBID-as-emission-rule explicit; fence is reduction/control only; `br`/`return`/call ≠ POINTER when / arity / adjacency / Φ; FM-W4; Φ stays `[GAP]`.  
   - **P-T8 / M-T8:** PROPOSAL-only + FORBID fill-GAP explicit; fence is host embed / import-export only; host ≠ fill `[GAP]`; compile-to-**wasm64** ≠ accept emission; FM-W7.  
   - **P-T9 / M-T9:** FORBID-as-emission-rule + SILENT-for-Lace-append explicit; fence is trap/diverge/results only; trap ≠ Lace cut / append rule; FM-W8.  
   - **P-T1 / M-T1:** wasm**64** surface ≠ strand/ · core/ door (after P6-F banner/MAP seal).  
8. **False-friend fence scan** — no fence that accidentally looks like Graphic D / 1D strand / POINTER art.

Columns: `P · M · Cite · Stamp · Implements · Fence · Overview · FM · Verdict (PASS/FIX)`.

### D. Fixes (P6-F)

Allowed: align Implements/stamps/pins; tighten fences; tighten proposal wording; demote duplicate overviews; add OPEN rows with cause; move stamps under-fence if drifted into fence; **correct wasm32→wasm64** in ascii / clipboard / mechanisms COMPILATION TARGET banners, refuse/FORBID fill-GAP lines, and “future wasm* surface” MAP lines per Target seal inventory.  
Disallowed: soften FORBIDs for beauty; invent Φ; merge into Core ASCII; invent Wave B/C from TOC alone; five-stakes rewrite unless CONFLICT; rewrite rust-nostd / law / graphics / systems-manifest / `src/`; **change Spec mechanism algorithms** merely to retarget; mass-rewrite Pass 1–5 plan bodies by default.

### E. Receipt (P6-R)

Verdict: **DIAGRAM SOUND** / **DIAGRAM SOUND WITH OPENS** / **DIAGRAM BLOCKED**.  
Φ still `[GAP]`. Wave B still deferred (default skip). Order Proposal still Shadow / non-binding. Pass 4 OPENS (D7 book-continues; Waves B–D deferred) remain non-blocking unless P6-X finds representation conflict.  
Target seal: board banners / MAP lines say **wasm64** after P6-F (or OPEN if intentionally deferred with cause).

---

## Already done (baseline — re-check, don’t assume)

| Layer | Pass 5 / prior claim |
|---|---|
| P4-X | 16 PASS / 0 FIX · special gates M-T4/5/8/9 scored · verdict **SOUND WITH OPENS** |
| P5-X | **18 PASS / 0 FIX** (9 overview-spine Spec rows + 9 P-T*) |
| P5-O | one canonical overview |
| P5-P | Order Proposal on clipboard + ascii short mirror (Shadow / NON-binding) — **still may say wasm32 until P6-F** |
| P5-F | none |
| Wave B | skipped |
| Opens (non-blocking) | D7 book-continues; Waves B–D deferred |
| Emission | `[GAP]` |
| `src/` | absent |
| Target banners (pre-P6-F) | ascii / clipboard / mechanisms / Pass 1–5 plans still say **wasm32** — **known drift** (this rebuild seals wasm64 in the Pass 6 plan only) |

Pass 6 may **confirm** or **reopen** those claims with deeper evidence.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Promote proposal / ascii to Core / AGENTS.md / systems-manifest-ascii / Graphic D | Hands / Shadow only; FORBID-as-Core intact |
| Soften FORBID-as-Lace-store / FORBID-as-emission-rule / FORBID-as-Core / FORBID fill-GAP / PROPOSAL-only / SILENT | morals stand |
| Invent POINTER when / arity / adjacency | Φ `[GAP]` |
| Fill emission `[GAP]` via host import / compile-to-**wasm64** / instantiate story | standing FORBID (width does not fill GAP) |
| Retarget shelf to wasm32 / treat wasm32 as sealed shelf target | human chose **wasm64** |
| Treat rust-nostd crate-map doors or branch-contracts as accepted birth / accepted emission | proposals only; cite beside |
| Redraw Core `systems-manifest-ascii.md` | wrong object |
| Quiet rewrite of P3-M / five-stakes / map | wrong scope — five-stakes rewrite only if CONFLICT |
| Wave B–D invent from TOC | default skip |
| `src/` or Cargo / crates.io | Implementation Law |
| Clone Xiao–Zhu / Petersen / AgentScope LLM anti-model morals onto this shelf | wrong genre — WASM = **TARGET** |
| Git-add PDF · push without ask | standing rules |
| Treat `docs/clock/wasm/README.md` projection bake as Spec 3.0 authority | Shadow bake ≠ this shelf |
| Change Spec M-T* / P-T* algorithms solely to retarget wasm32→wasm64 | seal is banner/MAP/representation-gate — not algorithm invent |
| Mark ascii Pass 6 EXECUTED / write P6 tables at **plan** time | plan only — execute writes P6-A/P/X/F/R |
| Execute P6-A/P/X/F/R in the plan commit | plan = HELD / NOT EXECUTED |

---

## Products (execute)

1. **P6-A** checklist table (structure + target-banner coherence) — on clipboard Pass 6; pointer from ascii.  
2. **P6-P** proposal-rigor table + any wording fixes (still Shadow; include wasm64 seal in proposal prose if drifted).  
3. **P6-X** deep accuracy matrix (9 panels + overview attach; special gates P-T4 / P-T5 / P-T8 / P-T9 + wasm64/memory64 representation notes).  
4. **P6-F** edits only if cited (incl. Target seal drift inventory).  
5. **P6-R** receipt with overall verdict + target-seal confirmation.  
6. Plan marked **EXECUTED**.

---

## Tickets (execute checklist)

### T0 — Sync / claim

Before execute: `git pull --ff-only` · refresh claim `reference-Mapper` (or equivalent) if clock turned · abort if BASE ≠ origin without human note.

### T1 — Hands + target-mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → rust-nostd crate-map + branch-contracts (read-only proposals) → pointer-emission `[GAP]` → clock/wasm README (Shadow bake only; not shelf authority) → Pass 1–5 clipboard (incl. P5-X **18 PASS** · P5-P · P4-R SOUND WITH OPENS) → ascii overview + P-T1…P-T9 → mechanisms M-T1…M-T9 → this plan (wasm64 seal) → AgentScope/Petersen/Xiao–Zhu Pass 6 shape (read-only; adapt to TARGET).

### T2 — PDF gate

Confirm `refs/local/webassembly-spec-3.0.pdf` · SHA-256 `687e7364…e7f70fce` · `git check-ignore` · **never stage**. Re-sight **only** where Cite match is thin / contested (light PDF) — especially P-T4 mem/table pin PDF **90**, memory address / addrtype / memory64 loci if contested for wasm64 representation, P-T5 control **127–129**, P-T8 embed **245**, P-T9 results **88**.

### T3 — P6-A structural analysis of SOURCE MACHINERY (+ target-banner coherence)

### T4 — P6-P Order Proposal rigor check (+ tighten if overclaim; FORBID-as-Core intact; still Shadow; wasm64 seal in proposal prose)

### T5 — P6-X deep panel re-walk (all P-T1…T9; special focus P-T4 / P-T5 / P-T8 / P-T9 + memory64/i64 representation gates)

### T6 — P6-F fixes; apply Target seal drift inventory; reconfirm singular overview + stamp under-fence + no POINTER in fences + banners say wasm64

### T7 — P6-R receipt · plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "reference-Mapper"
# commit: P6 tables + any fixes + receipt + plan EXECUTED
# never git-add PDF · never add src/ · never amend rust-nostd / Core
./docs/coord/coord.sh release clipboards "reference-Mapper"
```

Ask before push. Do **not** push unless asked. **Do not execute in the plan commit.**

---

## Acceptance tests (execute must pass)

1. P6-A checklist complete; every item PASS or OPEN-with-cause (spine, orphans, Wave A coverage, off-board, glyph discipline, stamp under-fence, singularity, panel coverage, **target-banner coherence wasm64**).  
2. P6-P shows proposal does not overclaim Core/Φ/`src/`; FORBIDs explicit; mirror ≤ clipboard strength; FORBID-as-Core intact; still Shadow / non-binding; **compile-toward language is wasm64 after P6-F**.  
3. P6-X covers all P-T1…T9 with Implements reverse-walk + algorithm step fidelity + fence fidelity; special gates P-T4/P-T5/P-T8/P-T9 PASS (mem/stack · control≠Φ · host≠GAP · trap≠cut); **wasm64/memory64 representation notes scored where Spec distinguishes i32/i64 addresses** — still FORBID mem=strand.  
4. Overall verdict recorded (DIAGRAM SOUND / DIAGRAM SOUND WITH OPENS / DIAGRAM BLOCKED).  
5. Exactly one canonical overview; Core/Φ off-board.  
6. No Φ invent; map/law/graphics/Core ASCII/`src/`/five-stakes/rust-nostd untouched except cited Shadow edits (five-stakes only if CONFLICT).  
7. PDF never staged.  
8. Steward refuse tests (below) pass using P6-A + P6-P + P6-X alone.  
9. After P6-F: ascii / clipboard / mechanisms COMPILATION TARGET banners say **`wasm64-unknown-unknown`** (not wasm32).

---

## Steward refuse tests (diagram correctness + proposal)

Shoe in hands — refuse (P6-X / P6-P FAIL if representation or proposal enables them):

1. “Install this ASCII board / Order Proposal as Graphic D / Core / systems-manifest-ascii” → **FORBID-as-Core-write** · PROPOSAL · NON-binding (P6-A + P6-P)  
2. “WASM linear memory is the Lace strand” → **FORBID-as-Lace-store** (P-T4 / M-T4 / FM-W1) — **including under wasm64 / memory64 / i64 addresses**  
3. “Table is the star / star index” → **FORBID-as-Lace-store** (P-T4 / FM-W2)  
4. “Operand stack / frames are Lace append” → **FORBID-as-Lace-store** (P-T4 / FM-W3)  
5. “`br` / `return` / call emits POINTER / fills Φ” → **FORBID-as-emission-rule** (P-T5 / FM-W4)  
6. “Validation admits POINTER” → **FORBID-as-emission-rule** · SILENT (P-T3 / FM-W5)  
7. “Import host / compile-to-**wasm64** fills emission `[GAP]`” → **PROPOSAL-only** · FORBID fill-GAP (P-T8 / FM-W7)  
8. “Trap is a Lace cut / append rule” → **FORBID-as-emission-rule** · SILENT (P-T9 / FM-W8)  
9. “Instantiate / decode births Core / opens `src/` / accepts a rust-nostd birth card” → **FORBID-as-Core** (P-T1/P-T6 / FM-W9); rust-nostd remains proposal  
10. “Order Proposal rewrites crate-map / branch-contracts / pointer-emission / AGENTS.md” → **NON-binding** · cite only · Φ stays `[GAP]`  
11. “Shelf target is wasm32 / retarget away from human-sealed wasm64” → **FAIL Target seal** (P6-A / P6-F)  
12. “i64 / memory64 address width means linear mem is the Lace strand” → **FORBID-as-Lace-store** (representation ≠ identity)

---

## Execution (when you say go pass 6)

1. Sync / refresh claim.  
2. T1–T6 (Wave B skip; apply Target seal in P6-F).  
3. Mark this plan EXECUTED.  
4. Check · commit · release.  
5. Stop. Do **not** push unless asked. Do **not** invent Wave B or fill `[GAP]`.

---

## Steward test

Shoe in hands, or no.  
Pass 5 proposed order and mapped Spec↔ASCII (**18 PASS**).  
Pass 6 **cross-examines** that the ASCII systems diagram is accurate and non-leaking under the sealed **wasm64** compile target.  
If the board leaks toward Core, or Implements no longer reverse-walk, or stamps leave the under-fence line into fence glyphs, or banners still claim wasm32 as the shelf target after P6-F, it is not sound.  
Linear mem / table / stack boxes still are not the strand — **i64 / memory64 does not change that**.  
`br` / validate / trap boxes still are not Φ / admit / cut.  
Host / instantiate / compile-to-**wasm64** boxes still do not fill `[GAP]` or birth Core.  
rust-nostd doors stay proposals.  
Decisive judgment is release/stop — not Φ.  
Emission stays `[GAP]`.

---

## Plan-time skim receipt (not execute) — rebuild

| Item | Result |
|---|---|
| Station | clipboards HELD `reference-Mapper` · BASE `7e87833` |
| Origin tip at rebuild | `7e87833` (rebase of prior Pass 6 plan onto origin after RESYNC/gearing-meta) |
| Rebuild purpose | Seal compile target **wasm64-unknown-unknown**; supersede prior Pass 6 plan wasm32 banner |
| Pass 4 verdict | **SOUND WITH OPENS** · P4-X 16 PASS · special gates M-T4/5/8/9 |
| Pass 5 | P5-X **18 PASS · 0 FIX** · P5-P Shadow Order Proposal · P5-O singular · P5-F none |
| Opens (non-blocking) | D7 book-continues; Waves B–D deferred |
| Overview count | **1** (P5-O / P4-O stand) |
| P3-M | CONFIRM×9 · CONFLICT×0 |
| FM-W* | pinned; W1/W2 PDF **90** (Pass 4 tighten) — light re-sight at plan: §4.2.8 Table starts PDF **90**; Memory Instances follow (contested for P6-X if thin) |
| Fence hygiene (plan skim) | POINTER/WORD appear in prose/stamps/false-friends only; stamps under fence ×10 (overview + P-T1…P-T9); no POINTER inside fence glyphs |
| Order Proposal | clipboard full P5-P + ascii short mirror; stamps KEEP-read · FORBID-* · SILENT · PROPOSAL · NON-binding · **still may say wasm32 until execute P6-F** |
| Target seal | **This plan** banners + Law + refuse + FORBID fill-GAP say **wasm64**; ascii/clipboard/mechanisms still wasm32 until execute |
| P6-F drift list | Target seal inventory above (ascii / clipboard / mechanisms banners + MAP + fill-GAP lines) |
| rust-nostd | crate-map + branch-contracts present · proposals · emission `[GAP]` |
| pointer-emission.md | DRAFT / `[GAP]` |
| PDF | PRESENT · gitignored · never staged |
| Execute | **NOT performed** |
| P6-A/P/X/F/R bodies | **not written** (plan only) |
| Push | **NOT performed** |
| Emission | `[GAP]` |
| `src/` | absent |

---

## Commit scope (this plan rebuild commit only)

| Include | Exclude |
|---|---|
| `docs/clipboards/wasm-spec-3-pass-6-plan.md` (this file) | ascii / mechanisms / clipboard content edits · P6 tables · Order Proposal rewrite · Pass 1–5 plan bodies |
| `docs/coord/stations/clipboards.station` (claim/release as protocol) | PDF · `src/` · rust-nostd · law · graphics · systems-manifest · five-stakes |

After plan commit: **release** clipboards station. Ahead of origin by rebuild commit(s). Do not push. Do not execute P6-A/P/X/F/R now.
