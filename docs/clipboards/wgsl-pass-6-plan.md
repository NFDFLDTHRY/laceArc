# WGSL CRD 2026-09-15 — Pass 6 PLAN (rigorous analysis & ASCII systems-diagram correctness)

**Status:** **HELD** · plan-only · 2026-09-18 ~22:12 PT · agent `WGSL Pass 6 PLAN ONLY — DIAGRAM SOUND / deep ASCII audit HELD` · **NOT EXECUTED**  
**Station:** clipboards (HELD this agent · claim BASE `18f0791` = `origin/main` at plan after pull/refresh)  
**Tip at plan:** `18f0791` (= origin/main after Graphic A ASCII pass 3 EXECUTE; WGSL Pass 5 EXECUTE tip stands under it)  
**Spec:** *WebGPU Shading Language* (WGSL) — **W3C Candidate Recommendation Draft, 15 September 2026** · editors Alan Baker, Mehmet Oguz Derin, David Neto (et al.)  
**Under test:** `docs/clipboards/wgsl-ascii-machinery.md` — SOURCE MACHINERY + **P-S1…P-S9** + Pass 5 Order Proposal short mirror  
**Proposal text:** clipboard Pass 5 **P5-P** (full) · ascii short mirror  
**Prior accuracy:** P4-X = **all PASS** (9 panels + 10 overview spine) · P5-X = **19 PASS / 0 FIX** (baselines; Pass 6 goes **deeper**)  
**Companions:** `wgsl-mechanisms.md` (M-S1…M-S9) · `wgsl-clipboard.md` · FM-Wgsl1…Wgsl9 · D7 · pointer-emission = DRAFT/`[GAP]`  
**Ancestors:** [`wgsl-pass-5-plan.md`](wgsl-pass-5-plan.md) (**EXECUTED**) · Pass 1–4 plans  
**Templates mirrored (adapt SHADER-LANG; don’t clone HOST/GPU or ISA morals):** [`webgpu-pass-6-plan.md`](webgpu-pass-6-plan.md) (**best** · P6-A/P/X/F/O/R shape · HOST/GPU **cite-only**) · [`wasm-spec-3-pass-6-plan.md`](wasm-spec-3-pass-6-plan.md) (P6-A/P/X/F/O/R shape · wasm64 **cite-only**) · book Pass 6 shapes (AgentScope / Petersen / Xiao–Zhu — read-only shape only)  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) (`lace-projection.html` — **Shadow consumer**) · [`hologram/`](../hologram/README.md) · [`hologram/visual-primitives.md`](../hologram/visual-primitives.md) (WGSL live path — **Shadow consumer**) · **webgpu-*** Pass 1–5 EXECUTED / Pass 6 HELD (**HOST/GPU companion** — cite-only; **do not edit**) · wasm-spec-3 Pass 1–6 (**wasm64** — cite-only; different layer; **do not edit**)  
**Sibling (default skip):** five-stakes · Wave B · new Order Proposal rewrite (P5-P stands; P6-P = rigor check only)  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `wgsl-*` for all products of this shelf.

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/wgsl-w3c-crd-20260915.pdf` |
| Attachment SHA-256 | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` |
| Pages | **381** · text layer yes · PDF one-based primary (Pass 1–5 certified) |
| Git | **Never `git add` the PDF** |

Law: ASCII SOURCE MACHINERY + Shadow Order Proposal remain **Shadow proposal** · not Core · not Φ · WGSL = **SHADER-LANG Shadow only** · module ≠ strand · type ≠ WORD · address-space ≠ store · entry ≠ Φ · discard ≠ cut · barrier/uniformity ≠ Φ · WGSL ≠ Device/Queue · WGSL ≠ wasm64 · builtins ≠ Core · Hands win · `[GAP]` sealed · **Order Proposal FORBID-as-Core-write; NON-binding**. Pass 6 distinctive product = **DIAGRAM SOUND** / deep accuracy audit — **not** a new Wave B.

```
pull/ff → claim clipboards → Hands + shader-lang mesh skim
        → P6-A structural analysis of SOURCE MACHINERY as systems diagram
        → P6-P rigor check of Order Proposal claims (still Shadow / NON-binding; FORBID-as-Core intact)
        → P6-X deep accuracy re-audit Spec↔M-S*↔P-S*↔overview (stricter than Pass 4/5 steward walks)
        → P6-F fix only analysis/matrix-cited drift
        → P6-O reconfirm singular canonical SOURCE MACHINERY overview
        → P6-R verdict + receipt · plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — WGSL SHADER-LANG SPECIAL · Shadow · Order Proposal from Pass 5 NON-binding · emission [GAP]

```
+======================================================================+
|  WGSL / SHADER-LANG SPECIAL — W3C CRD 2026-09-15                     |
|  Pass 6 = RIGOROUS ANALYSIS + CORRECTNESS of the ASCII systems diagram.|
|  NOT Xiao–Zhu / Petersen / AgentScope LLM anti-model morals.         |
|  NOT wasm-spec-3 compile-target ISA Pass 6 (P-T* / wasm64 rebuild).  |
|  NOT WebGPU HOST/GPU Pass 6 (P-G* / Buffer/submit keep-outs stay there).|
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  Distinctive product: DIAGRAM SOUND — P6-A/P/X/F/O/R deep accuracy   |
|        audit of SOURCE MACHINERY + P-S1…P-S9 (not a new Wave B).     |
|  Shadow Order Proposal from Pass 5 is NON-binding on Core/src/Φ /    |
|        systems-manifest-ascii / Graphic D.  FORBID-as-Core-write.    |
|  FORBID: module≠strand · type≠WORD · address-space≠store · entry≠Φ ·|
|          discard≠cut · barrier/uniformity≠Φ · WGSL≠Device/Queue ·   |
|          WGSL≠wasm64 · builtins≠Core                                 |
|  KEEP-read: shader-lang mechanics for Shadow projection / hologram.  |
|  webgpu-* HOST/GPU · wasm-spec-3 wasm64 = cite-only (do not edit).   |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Emission [GAP].  Status: HELD — plan only; execute writes P6 tables.|
+======================================================================+
```

This is **not** another Order Proposal write (Pass 5 delivered P5-P).  
This is **not** wasm-spec-3 **compile-target** Pass 6 (wasm64 seal / P-T* rebuild).  
This is **not** WebGPU **HOST/GPU** Pass 6 (P-G* / Buffer/Device/submit/canvas keep-outs stay on that shelf — **cite-only**; do **not** clone them here).  
This is **not** Xiao–Zhu / Petersen / AgentScope **LLM anti-model** Pass 6.  
It is **shader-lang diagram correctness**: cross-examine that SOURCE MACHINERY + P-S1…P-S9 + Shadow Order Proposal are coherent, complete, non-leaking, reverse-walk accurate, stamp-correct, and steward-refusable under Hands. Mirror WebGPU/wasm-spec-3/book Pass 6 (P6-A/P/X/F/O/R) adapted to **WGSL SHADER-LANG**.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-15 |
| 2 | **Leftovers** — D1–D6 + FM-Wgsl1…9 + D7 Shadow module-lifecycle miniature |
| 3 | **System mechanisms** — M-S1…M-S9 + P3-M mesh (CONFIRM×9) |
| 4 | **ASCII SOURCE MACHINERY** — overview + P-S1…P-S9 + P4-X all PASS |
| 5 | **Shadow Order Proposal** + light P5-X CONFIRM (19 PASS · 0 FIX) |
| **6** | **Rigorously analyze and ensure** the ASCII systems diagram is **correct**: structure, safety stamps, proposal claims, deep Spec↔M↔P↔overview fence/Implements/algorithm-step fidelity · verdict **DIAGRAM SOUND** (or WITH OPENS / BLOCKED) |

Pass 5 answered “does Spec map to ASCII (light CONFIRM), and is the board a usable Shadow Order Proposal?”  
Pass 6 answers “is the **systems diagram** coherent, complete, non-leaking, reverse-walk accurate, stamp-correct, and steward-refusable under Hands?”

Still **Shadow / Layer III**. Not Core. Not `src/`. Not a rewrite of `systems-manifest-ascii.md`. Wave B **default skip**. Order Proposal stays **Shadow / NON-binding**. Emission stays **`[GAP]`**.

---

## What “rigorous analysis & correctness” means (SHADER-LANG)

### A. Systems-diagram structure (P6-A)

Walk the canonical SOURCE MACHINERY fence and prove:

1. **Fence integrity** — overview + each P-S* panel fence is well-formed (balanced fences; stamps live **under** fences per opening contract; FORBID labels on overview edges are **labels**, not Lace objects / on-board stores).  
2. **Spine completeness** — Spec constructive SHADER-LANG stages present once: module/parse/textual structure (P-S1) → types (P-S2) → address spaces / vars (P-S3) → expressions (P-S4) → statements / `discard` (P-S5) → functions / entry points (P-S6) → `@` attributes / `workgroup_size` (P-S7) → built-ins / barriers (P-S8) → execution / uniformity / validation (P-S9) → **FORBIDDEN** exit to Lace Core / Graphic D / Φ / WebGPU Device·Queue swap / wasm64 ISA swap.  
3. **Singular overview** — exactly **one** `## SOURCE MACHINERY overview` (count=1); reconfirm P5-O / P4-O.  
4. **Panel ids complete** — **P-S1…P-S9** each present with Spec cite · Lace stamp · Implements (via M-S*) · fence · under-fence stamp line.  
5. **No orphan nodes** — every overview box cites ≥1 P-S*/M-S* (or is explicitly marked INPUT / FORBIDDEN exit).  
6. **No missing Wave A coverage** — every M-S1…S9 / P-S1…S9 appears on overview.  
7. **Off-board integrity / no Core bleed** — Lace Core / Graphic D / Φ / emission / WebGPU Device·Queue / wasm64 ISA appear only as **FORBIDDEN exits**, never as on-board stores; book-side ASCII must not smuggle Core tokens as WGSL objects.  
8. **Glyph discipline** — **no POINTER word inside any diagram fence**; no invent Φ inside fences; no WORD / Graphic D / Φ / strand depicted as if they were WGSL objects (FORBIDDEN-exit labels OK).  
9. **Stamp legend consistent** — ascii stamp legend ≡ clipboard stamp legend family (KEEP-read-as-shader-lang · FORBID-as-Core-write · FORBID-as-Lace-WORD · FORBID-as-Lace-store · FORBID-as-Lace-strand · FORBID-as-emission-rule · SILENT-for-Lace-append · PROPOSAL-only · FORBID-as-host-API-swap · FORBID-as-compile-target-swap · FORBID-as-Core · FORBID fill-GAP).  
10. **Stamp under-fence placement** — each P-S* keeps stamps **under** the fence (not smuggled as fence glyphs); overview FORBID lines scored as edge labels vs under-fence contract (OPEN-with-cause if drifted into fence as inventable Lace objects).

Checklist table: item · evidence (line/fence cite) · PASS/OPEN.

### B. Order Proposal rigor (P6-P)

Analyze P5-P (clipboard full + ascii short mirror) against the diagram. Proposal remains **Shadow / NON-binding** — Pass 6 does **not** promote it or rewrite it unless overclaim / keep-out drift forces a P6-F tighten.

| Check | Question |
|---|---|
| Claim–diagram bind | Does each stage→hygiene row point at a real overview node / P-S*? |
| Overclaim | Does any sentence imply Core write, AGENTS.md law, Φ schedule, `src/` birth, or Core import of module/types/entry as strand ops / WORD / emission? |
| FORBID completeness | Are FORBID-as-Core-write · FORBID-as-Lace-WORD · FORBID-as-Lace-store · FORBID-as-Lace-strand · FORBID-as-emission-rule · FORBID-as-Core · FORBID fill-GAP · FORBID-as-host-API-swap · FORBID-as-compile-target-swap · SILENT-for-Lace-append · PROPOSAL · NON-binding · Hands-refusal all explicit and consistent with panel stamps? |
| **P5-P keep-outs re-walk** | module≠strand · type≠WORD · address-space≠store · entry≠Φ · discard≠cut · barrier/uniformity≠Φ · WGSL≠Device/Queue · WGSL≠wasm64 · builtins≠Core — each still explicit and diagram-bound? |
| Shadow stamp + NON-binding | Proposal still stamped Shadow / PROPOSAL / NON-binding; FORBID-as-Core-write intact; no Core import of module/entry/types as strand/WORD/Φ |
| Steward loop soundness | observe→name→diagram-check→stamp-check→OPEN list→decide — does “decide” exclude POINTER-when / Φ fill / Core install / fill-GAP / host-API swap / wasm64 swap? |
| File-order proposal | clipboard→mechanisms→ascii→plans — still proposal-only; projection/hologram named Shadow consumers; webgpu-* / wasm64 cited beside only? |
| Mirror fidelity | Ascii short mirror does **not strengthen** claims beyond clipboard P5-P |
| FORBID-as-Core intact | No Core bleed: proposal must not install into systems-manifest-ascii / Graphic D / AGENTS.md / `src/` |

Failures → OPEN; fix by tightening proposal wording (**not** by softening FORBIDs).

### C. Deep accuracy (P6-X) — stricter than P4-X / P5-X

For **each** P-S1…P-S9 (re-walk; do **not** inherit P4-X / P5-X PASS blindly — but **do not re-litigate clean PASS from P4/P5 unless drift / OPENS surface**):

1. **Spec locus → overview node + panel** — Mechanism cite / PDF pin agrees with M-S*; overview node attaches; re-sight with `pdftotext` **only** where pin is thin / contested / drift suspected.  
2. **Stamp match** — panel under-fence stamp ≡ card stamp family (M-S* hard FORBIDs).  
3. **M-S* alignment / algorithm step fidelity** — every M-S* numbered step is depictable on the panel fence (or caption); steward can walk card→fence glyph-by-glyph / step-by-step.  
4. **Fence fidelity** — glyphs depict those steps; Spec/shader-lang-side only; **no Core tokens / no POINTER word / no invent Φ** inside fence.  
5. **FM-Wgsl* keep-outs still held** — present or explicitly N/A; fence must not depict FM-Wgsl* confusion as if allowed.  
6. **Overview attach** — panel’s stage appears on canonical overview.  
7. **Special gates (SHADER-LANG):**  
   - **P-S1:** FORBID-as-Lace-WORD · FORBID-as-Lace-strand · FORBID-as-host-API-swap; module ≠ strand / WORD; **D7** cross-link intact; **FM-Wgsl1 · FM-Wgsl4 · FM-Wgsl7**.  
   - **P-S2:** FORBID-as-Core-write · FORBID-as-Lace-WORD; type ≠ WORD / Core schema; **FM-Wgsl4**.  
   - **P-S3:** FORBID-as-Lace-store; address-space ≠ Lace store / second store; ≠ GPUBuffer swap; **FM-Wgsl3**.  
   - **P-S4:** FORBID-as-Lace-WORD; expr algebra ≠ WORD / Core ops; **FM-Wgsl4**.  
   - **P-S5:** SILENT-for-Lace-append · FORBID-as-emission-rule; discard ≠ Lace cut; **FM-Wgsl5**.  
   - **P-S6:** FORBID-as-emission-rule · FORBID-as-Lace-strand · FORBID fill-GAP; entry ≠ Φ; stage ≠ lace cord; **FM-Wgsl1 · FM-Wgsl2**.  
   - **P-S7:** FORBID-as-Lace-strand · FORBID-as-Core-write; workgroup ≠ Graphic D; **FM-Wgsl1**.  
   - **P-S8:** FORBID-as-Core-write · FORBID-as-emission-rule; builtins ≠ Core / Φ; barriers ≠ Φ; **FM-Wgsl9 · FM-Wgsl6**.  
   - **P-S9:** SILENT-for-Lace-append · FORBID-as-emission-rule; uniformity ≠ Lace law / Φ gate; **FM-Wgsl6**.  
   - **Overview forbidden exit / FM-Wgsl7 · FM-Wgsl8:** WGSL ≠ Device/Queue · WGSL ≠ wasm64; Core/Φ/host-API/wasm64 off-board.  
8. **Reopen policy** — reopen a row to FIX **only** if book OPENS surface as representation drift, stamp/fence/overview attach drifted since Pass 5, or a steward refuse test fails. Otherwise **CONFIRM** prior PASS with deeper evidence recorded.  
9. **False-friend fence scan** — no fence that accidentally looks like Graphic D / 1D strand / POINTER art / Core schema.

Columns: `P · M · Cite · Stamp · Implements · Fence · Overview · FM · Verdict (PASS/FIX)`.

**Book OPENS (non-blocking · from Pass 3/5; do not finish from Lace):** full Valid Usage / diagnostic filter detail; which hologram draw embed may compile which module; Waves B–D deferred. Score as OPEN-with-cause unless they contradict a panel.

### D. Fixes (P6-F)

Allowed: align Implements/stamps/pins; tighten fences; tighten proposal wording (still Shadow); demote duplicate overviews; add OPEN rows with cause; move stamps under-fence if drifted into fence; fix Core-bleed glyphs.  
**Apply fixes only if P6-A / P6-P / P6-X cite FIX.**  
Disallowed: soften FORBIDs for beauty; invent Φ; merge into Core ASCII; invent Wave B/C from TOC alone; five-stakes rewrite unless CONFLICT; rewrite law / graphics / systems-manifest / `src/`; amend webgpu-* / wasm-spec-3 products; amend clock / hologram as Core writers; clone HOST/GPU Buffer/submit keep-outs onto this shelf; clone ISA/LLM morals onto this shelf.

### E. Canonical overview (P6-O)

Exactly **one** canonical SOURCE MACHINERY overview fence in `wgsl-ascii-machinery.md`. Reconfirm count=1 (P5-O / P4-O stand). Lace Core / Graphic D / Φ / WebGPU Device·Queue / wasm64 ISA stay **off-board**. Remove/demote duplicates only if P6-A finds drift.

### F. Receipt (P6-R)

Verdict: **DIAGRAM SOUND** / **DIAGRAM SOUND WITH OPENS** / **DIAGRAM BLOCKED**.  
Φ still `[GAP]`. Wave B still deferred (default skip). Order Proposal still Shadow / NON-binding. Pass 4/5 OPENS remain non-blocking unless P6-X finds representation conflict.  
Mark this plan **EXECUTED** only on execute — **this plan stays HELD** until then.

---

## Already done (baseline — re-check, don’t assume)

| Layer | Pass 5 / prior claim |
|---|---|
| PAGE A–H, X | Pass 1 — stand |
| D1–D6 + FM-Wgsl1…Wgsl9 + D7 | Pass 2 — stand; all FM pinned |
| M-S1…M-S9 + P3-M | Pass 3 — CONFIRM×9 · CONFLICT×0 |
| ASCII overview + P-S1…P-S9 + P4-X | Pass 4 — **all PASS** · singular overview |
| P5-X | **19 PASS / 0 FIX** (CONFIRM Pass 4) |
| P5-O | one canonical overview (count=1) |
| P5-P | Order Proposal on clipboard + ascii short mirror (Shadow / NON-binding) |
| P5-F | none |
| Wave B | skipped |
| Opens (non-blocking) | Valid Usage / diagnostic filter / hologram-embed; Waves B–D deferred |
| Emission | `[GAP]` |
| `src/` | absent |
| webgpu-* | Pass 1–5 EXECUTED · Pass 6 HELD · **HOST/GPU** · cite-only · **do not edit** |
| wasm-spec-3 | Pass 1–6 EXECUTED · **wasm64** · cite-only · **do not edit** |
| clock / hologram | Shadow consumers — cite-only |

Pass 6 may **confirm** or **reopen** those claims with deeper evidence. Do **not** re-litigate clean PASS unless drift found.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Promote proposal / ascii to Core / AGENTS.md / systems-manifest-ascii / Graphic D | Hands / Shadow only; FORBID-as-Core intact; NON-binding |
| Soften FORBID-as-Lace-WORD / store / strand / emission-rule / Core / fill-GAP / host-API-swap / compile-target-swap / PROPOSAL-only / SILENT | morals stand |
| Invent POINTER when / arity / adjacency / invent Φ | Φ `[GAP]` |
| Fill emission `[GAP]` via entry / builtins / barrier / uniformity story | standing FORBID |
| Treat WGSL as WebGPU Device/Queue/Buffer host API | different Spec · FM-Wgsl7 · cite-only · **do not edit webgpu-*** |
| Treat WGSL as wasm64 / wasm-spec-3 compile target | different layer · FM-Wgsl8 · cite-only · **do not edit** |
| Clone WebGPU P6 Buffer/Device/submit/canvas/lost/mapAsync keep-outs as if this were HOST/GPU | wrong false-friend class — adapt to module/type/address-space/entry/discard/barrier/WGSL≠Device/WGSL≠wasm64/builtins |
| Clone wasm-spec-3 P6 mem/table/stack/`br`/trap / wasm64-rebuild gates as if this were ISA | wrong genre — WGSL = **SHADER-LANG** |
| Clone Xiao–Zhu / Petersen / AgentScope LLM anti-model morals onto this shelf | wrong genre |
| Redraw Core `systems-manifest-ascii.md` | wrong object |
| Quiet rewrite of P3-M / five-stakes / map | wrong scope — five-stakes only if CONFLICT |
| Wave B–D invent from TOC | default skip |
| Amend clock / hologram / projection HTML as Core writers | Shadow consumers; cite-only |
| `src/` or Cargo / crates.io | Implementation Law |
| Git-add PDF · push without ask | standing rules |
| Mark ascii Pass 6 EXECUTED / write P6 tables at **plan** time | plan only — execute writes P6-A/P/X/F/O/R |
| Execute P6-A/P/X/F/O/R in the plan commit | plan = **HELD** / NOT EXECUTED |
| New Wave B as this pass’s distinctive product | distinctive product = **DIAGRAM SOUND** audit |

---

## Products (execute)

1. **P6-A** checklist table (structure + fence integrity + singular overview + panel completeness + stamp legend + no Core bleed) — on clipboard Pass 6; pointer from ascii.  
2. **P6-P** proposal-rigor table + any wording fixes (still Shadow / NON-binding; keep-outs re-walk).  
3. **P6-X** deep accuracy matrix (9 panels + overview attach; special gates P-S1 / P-S2 / P-S3 / P-S4 / P-S5 / P-S6 / P-S7 / P-S8 / P-S9 / FM-Wgsl7·8; reopen only OPENS/drift).  
4. **P6-F** edits only if P6-A/P/X cite FIX.  
5. **P6-O** singular overview reconfirm (count=1).  
6. **P6-R** receipt with overall verdict (**DIAGRAM SOUND** / **WITH OPENS** / **BLOCKED**).  
7. Plan marked **EXECUTED** (only on execute).

---

## Coherence with standing artifacts

| Artifact | Pass 6 stance |
|---|---|
| `wgsl-clipboard.md` | P6-A/P/X/F/O/R tables + receipt |
| `wgsl-ascii-machinery.md` | P6-O confirm · P6-F only if cited · Pass 6 pointer |
| `wgsl-mechanisms.md` | untouched unless P6-F requires (prefer panel fixes) |
| P3-M / P4-X / P5-X / P5-P / FM-Wgsl* / D7 | stand; reopen only on drift |
| `clock/README.md` / `lace-projection.html` | **Shadow consumer** — cite-only; Order Proposal keep-out |
| `hologram/` / `visual-primitives.md` (WGSL) | **Shadow consumer** — cite-only; Order Proposal keep-out |
| webgpu-* (HOST/GPU) | **cite-only** — different Spec; **do not edit**; WGSL ≠ Device/Queue |
| wasm-spec-3 (wasm64) | **cite-only** — different layer; **do not edit**; WGSL ≠ wasm64 |
| pointer-emission.md | still `[GAP]` — untouched |
| law / graphics / systems-manifest / Core ASCII / five-stakes | **untouched** |
| PDF | never staged |
| `src/` | absent; stay absent |

---

## Tickets (execute checklist)

### T0 — Sync / claim

Before execute: `git pull --ff-only` · refresh claim (`WGSL Pass 6 EXECUTE` or similar) if clock turned · abort if BASE ≠ origin without human note.

### T1 — Hands + shader-lang mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → clock/README (`lace-projection.html` — Shadow consumer) → hologram + visual-primitives (WGSL — Shadow consumer) → webgpu-* banner (**HOST/GPU** cite-only; do not amend) → wasm-spec-3 banner (**wasm64** cite-only; do not amend) → Pass 1–5 clipboard (incl. P5-P / P5-X **19 PASS** · P4-X all PASS) → ascii overview + P-S1…P-S9 → mechanisms M-S1…M-S9 → this plan → WebGPU/wasm-spec-3/book Pass 6 shape (read-only; adapt to **SHADER-LANG**).

### T2 — PDF gate

Confirm `refs/local/wgsl-w3c-crd-20260915.pdf` · SHA-256 `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` · `git check-ignore` · **never stage**. Re-sight **only** where Cite match is thin / contested / FIX needs a pin (light PDF) — e.g. Module/Lifecycle PDF **15–16**, Types PDF ~**61+**, Address spaces PDF **101 / 201–202**, Entry PDF **181–182**, `discard` / statements, Barriers PDF **347–348**, Uniformity / Execution PDF **213+**, Built-ins PDF **264**.

### T3 — P6-A structural analysis of SOURCE MACHINERY

### T4 — P6-P Order Proposal rigor check (keep-outs re-walk; Shadow + NON-binding; FORBID-as-Core intact)

### T5 — P6-X deep panel re-walk (all P-S1…S9; special gates above; reopen only OPENS/drift)

### T6 — P6-F fixes (only if FIX) + P6-O reconfirm singular overview + stamp under-fence + no POINTER in fences

### T7 — P6-R receipt · plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "WGSL Pass 6 EXECUTE"
# commit: P6 tables + any fixes + receipt + plan EXECUTED
# never git-add PDF · never add src/ · never amend webgpu-* / wasm-spec-3 / Core / clock / hologram
./docs/coord/coord.sh release clipboards "WGSL Pass 6 EXECUTE"
```

Ask before push. Do **not** push unless asked. **Do not execute in the plan commit.**

---

## Acceptance tests (execute must pass)

1. P6-A checklist complete; every item PASS or OPEN-with-cause (fence integrity, singular overview count=1, P-S1…P-S9 complete, no POINTER/Φ invent inside fences, stamp legend consistent, no Core bleed into book-side ASCII, spine/orphans/Wave A/off-board/glyph discipline/stamp under-fence).  
2. P6-P shows proposal does not overclaim Core/Φ/`src/`; keep-outs module≠strand · type≠WORD · address-space≠store · entry≠Φ · discard≠cut · barrier/uniformity≠Φ · WGSL≠Device/Queue · WGSL≠wasm64 · builtins≠Core all explicit; mirror ≤ clipboard strength; FORBID-as-Core intact; still Shadow / NON-binding; Shadow stamp + NON-binding confirmed.  
3. P6-X covers all P-S1…S9 with Implements reverse-walk + algorithm step fidelity + fence fidelity; special gates PASS or FIX-cited; FM-Wgsl* keep-outs still held; reopen only OPENS/drift.  
4. Overall verdict recorded (**DIAGRAM SOUND** / **DIAGRAM SOUND WITH OPENS** / **DIAGRAM BLOCKED**).  
5. Exactly one canonical overview (P6-O); Core/Φ/Device·Queue/wasm64 off-board.  
6. No Φ invent; map/law/graphics/Core ASCII/`src/`/five-stakes/webgpu-*/wasm-spec-3/clock/hologram untouched except cited Shadow edits (five-stakes only if CONFLICT).  
7. PDF never staged.  
8. Steward refuse tests (below) pass using P6-A + P6-P + P6-X alone.  
9. P6-F applied **only** where matrix/analysis cites FIX.

---

## Steward refuse tests (diagram correctness + proposal)

Shoe in hands — refuse (P6-X / P6-P FAIL if representation or proposal enables them):

1. “Install this ASCII board / Order Proposal as Graphic D / Core / systems-manifest-ascii” → **FORBID-as-Core-write** · PROPOSAL · NON-binding (P6-A + P6-P)  
2. “Shader module is the Lace strand / Graphic D” → **FORBID-as-Lace-strand** (P-S1 / M-S1 / FM-Wgsl1)  
3. “WGSL types / source are Lace WORD / Core schema” → **FORBID-as-Lace-WORD** · **FORBID-as-Core-write** (P-S2 / P-S4 / FM-Wgsl4)  
4. “Address space / buffer / memory model is a second Lace store” → **FORBID-as-Lace-store** (P-S3 / M-S3 / FM-Wgsl3)  
5. “Entry point emits POINTER / fills Φ” → **FORBID-as-emission-rule** (P-S6 / FM-Wgsl2)  
6. “`discard` is a Lace cut” → **SILENT** · **FORBID-as-emission-rule** (P-S5 / FM-Wgsl5)  
7. “Barrier / uniformity accepts pointer-emission / is Φ gate / Lace scheduler” → **FORBID-as-emission-rule** · **SILENT** (P-S8 / P-S9 / FM-Wgsl6)  
8. “WGSL replaces WebGPU Device/Queue/Buffer host API” → **FORBID-as-host-API-swap** (FM-Wgsl7)  
9. “WGSL replaces wasm64 / wasm-spec-3 compile target” → **FORBID-as-compile-target-swap** (FM-Wgsl8)  
10. “Builtins fill Φ / are Core ops” → **FORBID-as-Core-write** · **FORBID-as-emission-rule** (P-S8 / FM-Wgsl9)  
11. “Order Proposal rewrites clock / hologram / webgpu-* / wasm-spec-3 / pointer-emission / AGENTS.md” → **NON-binding** · cite only · Φ stays `[GAP]`  
12. “Promote workgroup / stage as Graphic D / Core door” → **FORBID-as-Lace-strand** (P-S6 / P-S7 / FM-Wgsl1)

---

## Success criteria (plan turn vs execute turn)

**This plan turn (HELD):**

- `docs/clipboards/wgsl-pass-6-plan.md` exists, marked **HELD** (not EXECUTED)  
- Mirrors Pass 6 audit shape (P6-A / P6-P / P6-X / P6-F / P6-O / P6-R) adapted to **SHADER-LANG** (P-S* / M-S* / FM-Wgsl1…9)  
- Plan committed; station released FREE; ahead of origin; **not pushed**  
- Emission `[GAP]`; PDF clean (never staged); `src/` absent  
- No ascii / mechanisms / clipboard content edits; no P6 tables written yet

**Execute turn (later — when human says Proceed):**

- P6-A/P/X/F/O/R delivered; verdict recorded; plan marked EXECUTED  
- Station check → commit → release; ask before push

---

## Refuse lines (standing)

- **No `src/`** until pointer-emission accepted  
- **No invent Φ** / POINTER when / arity / adjacency  
- **No edit** of webgpu-* / wasm-spec-3 products; WGSL ≠ Device/Queue; WGSL ≠ wasm64  
- **Never git-add the PDF**  
- **No push** without ask  
- **No Core bleed** — Hands at docs/ root; Shadow ≠ Core  
- **One strand**; claim/refresh/release clipboards via `./docs/coord/coord.sh`  
- Plan stays **HELD** until execute; do not mark EXECUTED in the plan commit  
- Stamp vocab from existing shelf only — invent none  
- FM family: FM-Wgsl1…Wgsl9 only

---

## Station claim protocol

```
git pull --ff-only origin main
./docs/coord/coord.sh claim clipboards "WGSL Pass 6 PLAN ONLY — DIAGRAM SOUND / deep ASCII audit HELD"   # plan turn (done)
# … write plan only …
./docs/coord/coord.sh check clipboards "WGSL Pass 6 PLAN ONLY — DIAGRAM SOUND / deep ASCII audit HELD"
# commit plan only
./docs/coord/coord.sh release clipboards "WGSL Pass 6 PLAN ONLY — DIAGRAM SOUND / deep ASCII audit HELD"
# DO NOT push

# execute turn (later):
./docs/coord/coord.sh claim clipboards "WGSL Pass 6 EXECUTE"
# … P6-A/P/X/F/O/R …
./docs/coord/coord.sh release clipboards "WGSL Pass 6 EXECUTE"
```

---

## Report shape (execute → parent / human)

Concise bullets:

- Verdict (DIAGRAM SOUND / WITH OPENS / BLOCKED) + commit SHA(s)  
- P6-A / P6-P / P6-X key counts (PASS/OPEN/FIX)  
- P6-F landed or none; P6-O count=1  
- Station FREE; ahead N; emission `[GAP]`; PDF clean; `src/` absent  
- Note: pushed or not; awaiting further Proceed if needed

**Plan-turn report (this commit):** plan path + SHA(s); P6-A/P/X axes named; station FREE; ahead N; emission `[GAP]`; not pushed.

---

## Execution (when you say Proceed / go pass 6)

1. Sync / refresh claim.  
2. T1–T6 (Wave B skip; reopen only OPENS/drift).  
3. Mark this plan EXECUTED.  
4. Check · commit · release.  
5. Stop. Do **not** push unless asked. Do **not** invent Wave B or fill `[GAP]`. Do **not** write P6 tables in the plan commit (already seeded as checklists only — execute fills the tables).

---

## Steward test

Shoe in hands, or no.  
Pass 5 proposed order and lightly confirmed Spec↔ASCII (**19 PASS**).  
Pass 6 **cross-examines** that the ASCII systems diagram is accurate and non-leaking under SHADER-LANG Shadow law.  
If the board leaks toward Core, or Implements no longer reverse-walk, or stamps leave the under-fence line into fence glyphs as inventable Lace objects, or keep-outs soften, it is not sound.  
Module / type / address-space boxes still are not the strand / WORD / Lace store.  
Entry / discard / barrier / uniformity boxes still are not Φ / Lace cut / Lace scheduler.  
Builtins still are not Core ops.  
WGSL still is not Device/Queue and still is not wasm64.  
webgpu-* and wasm-spec-3 stay cite-only.  
Decisive judgment is release/stop — not Φ.  
Emission stays `[GAP]`.

---

## Plan-turn receipt (this file · HELD)

| Field | Value |
|---|---|
| Status | **HELD** · NOT EXECUTED |
| When | 2026-09-18 ~22:12 PT |
| Station | clipboards · agent `WGSL Pass 6 PLAN ONLY — DIAGRAM SOUND / deep ASCII audit HELD` |
| Claim BASE | `18f0791c5c251d501589b73d2eeba10f8d890d0e` (= `origin/main` at claim after refresh) |
| Axes seeded | **P6-A** Structural · **P6-P** Order Proposal rigor · **P6-X** Deep accuracy · **P6-F** Fixes-if-FIX · **P6-O** Singular overview · **P6-R** Receipt / DIAGRAM SOUND |
| Distinctive product | **DIAGRAM SOUND** audit (not Wave B) |
| Keep-outs (SHADER-LANG) | module≠strand · type≠WORD · address-space≠store · entry≠Φ · discard≠cut · barrier/uniformity≠Φ · WGSL≠Device/Queue · WGSL≠wasm64 · builtins≠Core |
| PDF SHA-256 | `73dc9e35047d8715a88ae3b1082b2e887c750da9f5c0f97d78410fc6c2f5eb6d` |
| P6 tables / body | **not written** (execute-only) |
| Touched this turn | this plan file + clipboards.station (claim/release) |
| Amended | clipboard body · ascii · mechanisms · webgpu-* · wasm-spec-3 · Core · clock · hologram · `src/` | **No** |
| Push | **No** |
| Emission | `[GAP]` |
