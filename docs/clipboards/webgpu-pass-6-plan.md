# WebGPU CRD 2026-09-15 — Pass 6 PLAN (rigorous analysis & ASCII systems-diagram correctness)

**Status:** **HELD** · plan-only · 2026-09-18 ~21:23 PT · agent `webgpu-pass-6-plan` · **NOT EXECUTED**  
**Station:** clipboards (HELD `webgpu-pass-6-plan` · claim BASE `823bef9` = `origin/main` at plan after refresh)  
**Tip at plan:** `823bef9` (= origin/main after history pass 6 release; Pass 5 release tip `29d581d` stands under it)  
**Spec:** *WebGPU* — **W3C Candidate Recommendation Draft, 15 September 2026** · editors Kai Ninomiya, Brandon Jones, Jim Blandy (et al.)  
**Under test:** `docs/clipboards/webgpu-ascii-machinery.md` — SOURCE MACHINERY + **P-G1…P-G9** + Pass 5 Order Proposal short mirror  
**Proposal text:** clipboard Pass 5 **P5-P** (full) · ascii short mirror  
**Prior accuracy:** P4-X = **all PASS** (9 panels + 10 overview spine) · P5-X = **19 PASS / 0 FIX** (baselines; Pass 6 goes **deeper**)  
**Companions:** `webgpu-mechanisms.md` (M-G1…M-G9) · `webgpu-clipboard.md` · FM-Wgpu1…Wgpu9 · D7 · pointer-emission = DRAFT/`[GAP]`  
**Ancestors:** [`webgpu-pass-5-plan.md`](webgpu-pass-5-plan.md) · Pass 1–4 plans  
**Templates mirrored (adapt HOST/GPU; don’t clone ISA or LLM morals):** [`wasm-spec-3-pass-6-plan.md`](wasm-spec-3-pass-6-plan.md) (P6-A/P/X/F/O/R shape · wasm64 **cite-only**) · [`xiao-zhu-pass-6-plan.md`](xiao-zhu-pass-6-plan.md) · [`petersen-zech-pass-6-plan.md`](petersen-zech-pass-6-plan.md) · [`agentscope-pass-6-plan.md`](agentscope-pass-6-plan.md)  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) (`lace-projection.html` WebGPU 3D — **Shadow consumer**) · [`hologram/`](../hologram/README.md) · [`hologram/visual-primitives.md`](../hologram/visual-primitives.md) (WGSL live path — **Shadow consumer**) · [`rust-nostd-crate-map.md`](../plans/rust-nostd-crate-map.md) · [`rust-nostd-branch-contracts.md`](../plans/rust-nostd-branch-contracts.md) · wasm-spec-3 Pass 1–6 (**wasm64** — cite-only; different layer)  
**Sibling (default skip):** five-stakes · Wave B · new Order Proposal rewrite (P5-P stands; P6-P = rigor check only)  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `webgpu-*` for all products of this shelf.

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webgpu-crd-20260915.pdf` |
| Attachment SHA-256 | `6bc31a9e21074a039a5c854f1bfc33bdbf282cd8b48e22a4977ca406ca64afe1` |
| Pages | **321** · text layer yes · PDF one-based primary (Pass 1–5 certified) |
| Git | **Never `git add` the PDF** |

Law: ASCII SOURCE MACHINERY + Shadow Order Proposal remain **Shadow proposal** · not Core · not Φ · WebGPU = **HOST/GPU Shadow only** · GPUBuffer ≠ strand · GPUDevice ≠ Graphic D · `queue.submit`/draw/dispatch ≠ Φ · WGSL ≠ WORD · canvas ≠ fill `[GAP]` · WebGPU ≠ wasm64 · device-lost ≠ Lace cut · `mapAsync` ≠ append · Hands win · `[GAP]` sealed · **Order Proposal FORBID-as-Core-write; NON-binding**. Pass 6 distinctive product = **DIAGRAM SOUND** / deep accuracy audit — **not** a new Wave B.

```
pull/ff → claim clipboards → Hands + host/GPU mesh skim
        → P6-A structural analysis of SOURCE MACHINERY as systems diagram
        → P6-P rigor check of Order Proposal claims (still Shadow / NON-binding; FORBID-as-Core intact)
        → P6-X deep accuracy re-audit Spec↔M-G*↔P-G*↔overview (stricter than Pass 4/5 steward walks)
        → P6-F fix only analysis/matrix-cited drift
        → P6-O reconfirm singular canonical SOURCE MACHINERY overview
        → P6-R verdict + receipt · plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — HOST/GPU API reference · Shadow Order Proposal NON-binding · emission [GAP]

```
+======================================================================+
|  HOST / GPU API REFERENCE — WebGPU W3C CRD 2026-09-15                |
|  Pass 6 = RIGOROUS ANALYSIS + CORRECTNESS of the ASCII systems diagram.|
|  NOT Xiao–Zhu / Petersen / AgentScope LLM anti-model morals.         |
|  NOT wasm-spec-3 compile-target ISA Pass 6 (P-T* / wasm64 rebuild).  |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  Distinctive product: DIAGRAM SOUND — P6-A/P/X/F/O/R deep accuracy   |
|        audit of SOURCE MACHINERY + P-G1…P-G9 (not a new Wave B).     |
|  Shadow Order Proposal from Pass 5 is NON-binding on Core/src/Φ /    |
|        systems-manifest-ascii / Graphic D.  FORBID-as-Core-write.    |
|  FORBID: Buffer≠strand · Device≠Graphic D · submit≠Φ · WGSL≠WORD · |
|          canvas≠fill GAP · WebGPU≠wasm64 · lost≠cut · mapAsync≠append|
|  KEEP-read: host/GPU mechanics for Shadow projection / hologram.     |
|  rust-nostd / wasm-spec-3 wasm64 = cite-only (different layer).      |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Emission [GAP].  Status: HELD — plan only; execute writes P6 tables.|
+======================================================================+
```

This is **not** another Order Proposal write (Pass 5 delivered P5-P).  
This is **not** wasm-spec-3 **compile-target** Pass 6 (wasm64 seal / P-T* rebuild).  
This is **not** Xiao–Zhu / Petersen / AgentScope **LLM anti-model** Pass 6.  
It is **host/GPU diagram correctness**: cross-examine that SOURCE MACHINERY + P-G1…P-G9 + Shadow Order Proposal are coherent, complete, non-leaking, reverse-walk accurate, stamp-correct, and steward-refusable under Hands. Mirror AgentScope/Petersen/Xiao–Zhu/wasm-spec-3 Pass 6 (P6-A/P/X/F/O/R) adapted to **WebGPU HOST/GPU**.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-15 |
| 2 | **Leftovers** — D1–D6 + FM-Wgpu1…9 + D7 encoder→submit miniature |
| 3 | **System mechanisms** — M-G1…M-G9 + P3-M mesh (CONFIRM×9) |
| 4 | **ASCII SOURCE MACHINERY** — overview + P-G1…P-G9 + P4-X all PASS |
| 5 | **Shadow Order Proposal** + light P5-X CONFIRM (19 PASS · 0 FIX) |
| **6** | **Rigorously analyze and ensure** the ASCII systems diagram is **correct**: structure, safety stamps, proposal claims, deep Spec↔M↔P↔overview fence/Implements/algorithm-step fidelity · verdict **DIAGRAM SOUND** (or WITH OPENS / BLOCKED) |

Pass 5 answered “does Spec map to ASCII (light CONFIRM), and is the board a usable Shadow Order Proposal?”  
Pass 6 answers “is the **systems diagram** coherent, complete, non-leaking, reverse-walk accurate, stamp-correct, and steward-refusable under Hands?”

Still **Shadow / Layer III**. Not Core. Not `src/`. Not a rewrite of `systems-manifest-ascii.md`. Wave B **default skip**. Order Proposal stays **Shadow / NON-binding**. Emission stays **`[GAP]`**.

---

## What “rigorous analysis & correctness” means (HOST/GPU)

### A. Systems-diagram structure (P6-A)

Walk the canonical SOURCE MACHINERY fence and prove:

1. **Fence integrity** — overview + each P-G* panel fence is well-formed (balanced fences; stamps live **under** fences per opening contract; FORBID labels on overview edges are **labels**, not Lace objects / on-board stores).  
2. **Spine completeness** — Spec constructive HOST/GPU stages present once: `navigator.gpu` / `requestAdapter` (P-G1) → `requestDevice` / `device.queue` (P-G2) → buffer/map (P-G3) + texture/view (P-G4) → bind group (P-G5) → pipeline+WGSL (P-G6) → encoder/passes/finish (P-G7) → `queue.submit` / canvas configure (P-G8) → errors / `device.lost` (P-G9) → **FORBIDDEN** exit to Lace Core / Graphic D / Φ / wasm64 ISA swap.  
3. **Singular overview** — exactly **one** `## SOURCE MACHINERY overview` (count=1); reconfirm P5-O / P4-O.  
4. **Panel ids complete** — **P-G1…P-G9** each present with Spec cite · Lace stamp · Implements (via M-G*) · fence · under-fence stamp line.  
5. **No orphan nodes** — every overview box cites ≥1 P-G*/M-G* (or is explicitly marked INPUT / FORBIDDEN exit).  
6. **No missing Wave A coverage** — every M-G1…G9 / P-G1…G9 appears on overview.  
7. **Off-board integrity / no Core bleed** — Lace Core / Graphic D / Φ / emission / wasm64 ISA appear only as **FORBIDDEN exits**, never as on-board stores; book-side ASCII must not smuggle Core tokens as WebGPU objects.  
8. **Glyph discipline** — **no POINTER word inside any diagram fence**; no WORD / Graphic D / Φ / strand depicted as if they were WebGPU objects (FORBIDDEN-exit labels OK).  
9. **Stamp legend consistent** — ascii stamp legend ≡ clipboard stamp legend family (KEEP-read-as-host-API · FORBID-as-Core-write · FORBID-as-Lace-store · FORBID-as-Lace-strand · FORBID-as-emission-rule · SILENT-for-Lace-append · PROPOSAL-only · FORBID-as-compile-target-swap · FORBID-as-Core · FORBID fill-GAP).  
10. **Stamp under-fence placement** — each P-G* keeps stamps **under** the fence (not smuggled as fence glyphs); overview FORBID lines scored as edge labels vs under-fence contract (OPEN-with-cause if drifted into fence as inventable Lace objects).

Checklist table: item · evidence (line/fence cite) · PASS/OPEN.

### B. Order Proposal rigor (P6-P)

Analyze P5-P (clipboard full + ascii short mirror) against the diagram. Proposal remains **Shadow / NON-binding** — Pass 6 does **not** promote it or rewrite it unless overclaim / keep-out drift forces a P6-F tighten.

| Check | Question |
|---|---|
| Claim–diagram bind | Does each stage→hygiene row point at a real overview node / P-G*? |
| Overclaim | Does any sentence imply Core write, AGENTS.md law, Φ schedule, `src/` birth, accepted rust-nostd emission, or Core import of Device/Queue/Buffer as strand ops? |
| FORBID completeness | Are FORBID-as-Core-write · FORBID-as-Lace-store · FORBID-as-Lace-strand · FORBID-as-emission-rule · FORBID-as-Core · FORBID fill-GAP · FORBID-as-compile-target-swap · SILENT-for-Lace-append · PROPOSAL · NON-binding · Hands-refusal all explicit and consistent with panel stamps? |
| **P5-P keep-outs re-walk** | Buffer≠strand · Device≠Graphic D · submit/draw≠Φ · WGSL≠WORD · canvas≠fill GAP · WebGPU≠wasm64 · lost≠cut · mapAsync≠append — each still explicit and diagram-bound? |
| Shadow stamp + NON-binding | Proposal still stamped Shadow / PROPOSAL / NON-binding; no Core import of Device/Queue/Buffer as strand ops |
| Steward loop soundness | observe→name→diagram-check→stamp-check→OPEN list→decide — does “decide” exclude POINTER-when / Φ fill / Core install / fill-GAP / wasm64 swap? |
| File-order proposal | clipboard→mechanisms→ascii→plans — still proposal-only; projection/hologram named Shadow consumers; rust-nostd / wasm64 cited beside only? |
| Mirror fidelity | Ascii short mirror does **not strengthen** claims beyond clipboard P5-P |
| FORBID-as-Core intact | No Core bleed: proposal must not install into systems-manifest-ascii / Graphic D / AGENTS.md / `src/` |

Failures → OPEN; fix by tightening proposal wording (**not** by softening FORBIDs).

### C. Deep accuracy (P6-X) — stricter than P4-X / P5-X

For **each** P-G1…P-G9 (re-walk; do **not** inherit P4-X / P5-X PASS blindly — but **do not re-litigate clean PASS from P4/P5 unless drift / OPENS surface**):

1. **Spec locus → overview node + panel** — Mechanism cite / PDF pin agrees with M-G*; overview node attaches; re-sight with `pdftotext` **only** where pin is thin / contested / drift suspected.  
2. **Stamp match** — panel under-fence stamp ≡ card stamp family (M-G* hard FORBIDs).  
3. **M-G* alignment / algorithm step fidelity** — every M-G* numbered step is depictable on the panel fence (or caption); steward can walk card→fence glyph-by-glyph / step-by-step.  
4. **Fence fidelity** — glyphs depict those steps; Spec/API-side only; **no Core tokens / no POINTER word** inside fence.  
5. **FM-Wgpu* keep-outs still held** — present or explicitly N/A; fence must not depict FM-Wgpu* confusion as if allowed.  
6. **Overview attach** — panel’s stage appears on canonical overview.  
7. **Special gates (HOST/GPU):**  
   - **P-G1 / P-G2:** FORBID-as-Lace-strand explicit; Device/Adapter/Queue ≠ Graphic D / Core door; **FM-Wgpu2**.  
   - **P-G3:** FORBID-as-Lace-store + map FORBID-as-emission-rule · SILENT; Buffer ≠ strand · mapAsync ≠ append; **FM-Wgpu1 · FM-Wgpu9**.  
   - **P-G4 / P-G5:** FORBID-as-Lace-store; texture/bind ≠ second store; **FM-Wgpu4**.  
   - **P-G6:** FORBID-as-Core-write; WGSL ≠ WORD; **FM-Wgpu5**; hologram WGSL cite stays Shadow consumer.  
   - **P-G7:** FORBID-as-emission-rule · FORBID-as-Core · SILENT; encode/finish ≠ Φ; **D7** cross-link intact; **FM-Wgpu3**.  
   - **P-G8:** FORBID-as-emission-rule · canvas PROPOSAL-only · FORBID fill-GAP; submit ≠ Φ · canvas ≠ accept emission; **FM-Wgpu3 · FM-Wgpu6**.  
   - **P-G9:** SILENT-for-Lace-append · FORBID-as-emission-rule; lost ≠ Lace cut; **FM-Wgpu8**.  
   - **Overview forbidden exit / FM-Wgpu7:** WebGPU ≠ wasm64; Core/Φ/wasm64 ISA off-board.  
8. **Reopen policy** — reopen a row to FIX **only** if book OPENS surface as representation drift, stamp/fence/overview attach drifted since Pass 5, or a steward refuse test fails. Otherwise **CONFIRM** prior PASS with deeper evidence recorded.  
9. **False-friend fence scan** — no fence that accidentally looks like Graphic D / 1D strand / POINTER art.

Columns: `P · M · Cite · Stamp · Implements · Fence · Overview · FM · Verdict (PASS/FIX)`.

**Book OPENS (non-blocking · from Pass 3/5; do not finish from Lace):** full per-pass Valid Usage tables; multi-queue / timeline beyond Content/Device/Queue sketch; which host embed may call this from Lace projection. Score as OPEN-with-cause unless they contradict a panel.

### D. Fixes (P6-F)

Allowed: align Implements/stamps/pins; tighten fences; tighten proposal wording (still Shadow); demote duplicate overviews; add OPEN rows with cause; move stamps under-fence if drifted into fence; fix Core-bleed glyphs.  
**Apply fixes only if P6-A / P6-P / P6-X cite FIX.**  
Disallowed: soften FORBIDs for beauty; invent Φ; merge into Core ASCII; invent Wave B/C from TOC alone; five-stakes rewrite unless CONFLICT; rewrite rust-nostd / law / graphics / systems-manifest / `src/`; amend wasm-spec-3 products; amend clock / hologram as Core writers; retarget wasm products to wasm32; clone ISA/LLM morals onto this shelf.

### E. Canonical overview (P6-O)

Exactly **one** canonical SOURCE MACHINERY overview fence in `webgpu-ascii-machinery.md`. Reconfirm count=1 (P5-O / P4-O stand). Lace Core / Graphic D / Φ / wasm64 ISA stay **off-board**. Remove/demote duplicates only if P6-A finds drift.

### F. Receipt (P6-R)

Verdict: **DIAGRAM SOUND** / **DIAGRAM SOUND WITH OPENS** / **DIAGRAM BLOCKED**.  
Φ still `[GAP]`. Wave B still deferred (default skip). Order Proposal still Shadow / NON-binding. Pass 4/5 OPENS remain non-blocking unless P6-X finds representation conflict.  
Mark this plan **EXECUTED** only on execute — **this plan stays HELD** until then.

---

## Already done (baseline — re-check, don’t assume)

| Layer | Pass 5 / prior claim |
|---|---|
| PAGE A–H, X | Pass 1 — stand |
| D1–D6 + FM-Wgpu1…Wgpu9 + D7 | Pass 2 — stand; all FM pinned |
| M-G1…M-G9 + P3-M | Pass 3 — CONFIRM×9 · CONFLICT×0 |
| ASCII overview + P-G1…P-G9 + P4-X | Pass 4 — **all PASS** · singular overview |
| P5-X | **19 PASS / 0 FIX** (CONFIRM Pass 4) |
| P5-O | one canonical overview (count=1) |
| P5-P | Order Proposal on clipboard + ascii short mirror (Shadow / NON-binding) |
| P5-F | none |
| Wave B | skipped |
| Opens (non-blocking) | Valid Usage / multi-queue / host-embed; Waves B–D deferred |
| Emission | `[GAP]` |
| `src/` | absent |
| wasm-spec-3 | Pass 1–6 EXECUTED · **wasm64** · cite-only · **do not edit** |
| clock / hologram | Shadow consumers — cite-only |
| rust-nostd | proposals — cite-only |

Pass 6 may **confirm** or **reopen** those claims with deeper evidence. Do **not** re-litigate clean PASS unless drift found.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Promote proposal / ascii to Core / AGENTS.md / systems-manifest-ascii / Graphic D | Hands / Shadow only; FORBID-as-Core intact; NON-binding |
| Soften FORBID-as-Lace-store / strand / emission-rule / Core / fill-GAP / compile-target-swap / PROPOSAL-only / SILENT | morals stand |
| Invent POINTER when / arity / adjacency | Φ `[GAP]` |
| Fill emission `[GAP]` via canvas / submit / host GPU / mapAsync story | standing FORBID |
| Treat WebGPU as wasm64 / wasm-spec-3 compile target | different layer · FM-Wgpu7 · cite-only |
| Edit wasm-spec-3 products / retarget wasm32 | wrong shelf; human sealed wasm64 |
| Treat rust-nostd crate-map doors or branch-contracts as accepted birth / accepted emission | proposals only; cite beside |
| Core import of Device/Queue/Buffer as strand ops | FORBID-as-Lace-strand / store |
| Redraw Core `systems-manifest-ascii.md` | wrong object |
| Quiet rewrite of P3-M / five-stakes / map | wrong scope — five-stakes only if CONFLICT |
| Wave B–D invent from TOC | default skip |
| Amend clock / hologram / projection HTML as Core writers | Shadow consumers; cite-only |
| `src/` or Cargo / crates.io | Implementation Law |
| Clone Xiao–Zhu / Petersen / AgentScope LLM anti-model morals onto this shelf | wrong genre — WebGPU = **HOST/GPU** |
| Clone wasm-spec-3 P6 mem/table/stack/`br`/trap / wasm64-rebuild gates as if this were ISA | wrong false-friend class — adapt to Buffer/Device/submit/WGSL/canvas/wasm64/lost/mapAsync |
| Git-add PDF · push without ask | standing rules |
| Mark ascii Pass 6 EXECUTED / write P6 tables at **plan** time | plan only — execute writes P6-A/P/X/F/O/R |
| Execute P6-A/P/X/F/O/R in the plan commit | plan = **HELD** / NOT EXECUTED |
| New Wave B as this pass’s distinctive product | distinctive product = **DIAGRAM SOUND** audit |

---

## Products (execute)

1. **P6-A** checklist table (structure + fence integrity + singular overview + panel completeness + stamp legend + no Core bleed) — on clipboard Pass 6; pointer from ascii.  
2. **P6-P** proposal-rigor table + any wording fixes (still Shadow / NON-binding; keep-outs re-walk).  
3. **P6-X** deep accuracy matrix (9 panels + overview attach; special gates P-G1–2 / P-G3 / P-G4–5 / P-G6 / P-G7–8 / P-G9 / FM-Wgpu7; reopen only OPENS/drift).  
4. **P6-F** edits only if P6-A/P/X cite FIX.  
5. **P6-O** singular overview reconfirm (count=1).  
6. **P6-R** receipt with overall verdict (**DIAGRAM SOUND** / **WITH OPENS** / **BLOCKED**).  
7. Plan marked **EXECUTED** (only on execute).

---

## Coherence with standing artifacts

| Artifact | Pass 6 stance |
|---|---|
| `webgpu-clipboard.md` | P6-A/P/X/F/O/R tables + receipt |
| `webgpu-ascii-machinery.md` | P6-O confirm · P6-F only if cited · Pass 6 pointer |
| `webgpu-mechanisms.md` | untouched unless P6-F requires (prefer panel fixes) |
| P3-M / P4-X / P5-X / P5-P / FM-Wgpu* / D7 | stand; reopen only on drift |
| `clock/README.md` / `lace-projection.html` | **Shadow consumer** — cite-only; Order Proposal keep-out |
| `hologram/` / `visual-primitives.md` (WGSL) | **Shadow consumer** — cite-only; Order Proposal keep-out |
| rust-nostd crate-map / branch-contracts | **read-only cite** — proposals only |
| wasm-spec-3 (wasm64) | **cite-only** — different layer; **do not edit**; WebGPU ≠ wasm64 |
| pointer-emission.md | still `[GAP]` — untouched |
| law / graphics / systems-manifest / Core ASCII / five-stakes | **untouched** |
| PDF | never staged |
| `src/` | absent; stay absent |

---

## Tickets (execute checklist)

### T0 — Sync / claim

Before execute: `git pull --ff-only` · refresh claim (`Grok-webgpu-p6-exec` or similar) if clock turned · abort if BASE ≠ origin without human note.

### T1 — Hands + host/GPU mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → clock/README (`lace-projection.html` WebGPU 3D — Shadow consumer) → hologram + visual-primitives (WGSL — Shadow consumer) → rust-nostd crate-map + branch-contracts (read-only proposals) → wasm-spec-3 banner (**wasm64** cite-only; do not amend) → Pass 1–5 clipboard (incl. P5-P / P5-X **19 PASS** · P4-X all PASS) → ascii overview + P-G1…P-G9 → mechanisms M-G1…M-G9 → this plan → AgentScope/Petersen/Xiao–Zhu/wasm-spec-3 Pass 6 shape (read-only; adapt to **HOST/GPU**).

### T2 — PDF gate

Confirm `refs/local/webgpu-crd-20260915.pdf` · SHA-256 `6bc31a9e…ca64afe1` · `git check-ignore` · **never stage**. Re-sight **only** where Cite match is thin / contested / FIX needs a pin (light PDF) — e.g. Buffer PDF **53**, Device PDF **50**, submit PDF **218**, canvas PDF **228–235**, errors PDF **238**, WGSL PDF **109–110**.

### T3 — P6-A structural analysis of SOURCE MACHINERY

### T4 — P6-P Order Proposal rigor check (keep-outs re-walk; Shadow + NON-binding; FORBID-as-Core intact)

### T5 — P6-X deep panel re-walk (all P-G1…G9; special gates above; reopen only OPENS/drift)

### T6 — P6-F fixes (only if FIX) + P6-O reconfirm singular overview + stamp under-fence + no POINTER in fences

### T7 — P6-R receipt · plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "Grok-webgpu-p6-exec"
# commit: P6 tables + any fixes + receipt + plan EXECUTED
# never git-add PDF · never add src/ · never amend rust-nostd / wasm-spec-3 / Core / clock / hologram
./docs/coord/coord.sh release clipboards "Grok-webgpu-p6-exec"
```

Ask before push. Do **not** push unless asked. **Do not execute in the plan commit.**

---

## Acceptance tests (execute must pass)

1. P6-A checklist complete; every item PASS or OPEN-with-cause (fence integrity, singular overview count=1, P-G1…P-G9 complete, no POINTER/Φ invent inside fences, stamp legend consistent, no Core bleed into book-side ASCII, spine/orphans/Wave A/off-board/glyph discipline/stamp under-fence).  
2. P6-P shows proposal does not overclaim Core/Φ/`src/`; keep-outs Buffer≠strand · Device≠Graphic D · submit≠Φ · WGSL≠WORD · canvas≠fill GAP · WebGPU≠wasm64 · lost≠cut · mapAsync≠append all explicit; mirror ≤ clipboard strength; FORBID-as-Core intact; still Shadow / NON-binding; no Core import of Device/Queue/Buffer as strand ops.  
3. P6-X covers all P-G1…G9 with Implements reverse-walk + algorithm step fidelity + fence fidelity; special gates PASS or FIX-cited; FM-Wgpu* keep-outs still held; reopen only OPENS/drift.  
4. Overall verdict recorded (**DIAGRAM SOUND** / **DIAGRAM SOUND WITH OPENS** / **DIAGRAM BLOCKED**).  
5. Exactly one canonical overview (P6-O); Core/Φ/wasm64 off-board.  
6. No Φ invent; map/law/graphics/Core ASCII/`src/`/five-stakes/rust-nostd/wasm-spec-3/clock/hologram untouched except cited Shadow edits (five-stakes only if CONFLICT).  
7. PDF never staged.  
8. Steward refuse tests (below) pass using P6-A + P6-P + P6-X alone.  
9. P6-F applied **only** where matrix/analysis cites FIX.

---

## Steward refuse tests (diagram correctness + proposal)

Shoe in hands — refuse (P6-X / P6-P FAIL if representation or proposal enables them):

1. “Install this ASCII board / Order Proposal as Graphic D / Core / systems-manifest-ascii” → **FORBID-as-Core-write** · PROPOSAL · NON-binding (P6-A + P6-P)  
2. “GPUBuffer is the Lace strand” → **FORBID-as-Lace-store** (P-G3 / M-G3 / FM-Wgpu1)  
3. “GPUDevice / Adapter / Queue is Graphic D / Core door” → **FORBID-as-Lace-strand** (P-G1/P-G2 / FM-Wgpu2)  
4. “`queue.submit` / draw / dispatch emits POINTER / fills Φ” → **FORBID-as-emission-rule** (P-G7/P-G8 / FM-Wgpu3)  
5. “Texture / bind-group is a second Lace store” → **FORBID-as-Lace-store** (P-G4/P-G5 / FM-Wgpu4)  
6. “WGSL is Lace WORD” → **FORBID-as-Core-write** (P-G6 / FM-Wgpu5)  
7. “Canvas configure accepts pointer-emission.md / fills `[GAP]`” → **PROPOSAL-only** · FORBID fill-GAP (P-G8 / FM-Wgpu6)  
8. “WebGPU replaces wasm64 / wasm-spec-3 compile target” → **FORBID-as-compile-target-swap** (FM-Wgpu7)  
9. “Validation / device-lost is a Lace cut / Φ gate” → **SILENT** · FORBID-as-emission-rule (P-G9 / FM-Wgpu8)  
10. “`mapAsync` / CPU readback is Lace append authority” → **FORBID-as-emission-rule** (P-G3 / FM-Wgpu9)  
11. “Order Proposal rewrites clock / hologram / rust-nostd / wasm-spec-3 / pointer-emission / AGENTS.md” → **NON-binding** · cite only · Φ stays `[GAP]`  
12. “Import Device/Queue/Buffer into Core as strand ops” → **FORBID-as-Lace-strand** / **FORBID-as-Lace-store** · NON-binding

---

## Success criteria (plan turn vs execute turn)

**This plan turn (HELD):**

- `docs/clipboards/webgpu-pass-6-plan.md` exists, marked **HELD** (not EXECUTED)  
- Mirrors Pass 6 audit shape (P6-A / P6-P / P6-X / P6-F / P6-O / P6-R) adapted to HOST/GPU  
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
- **No wasm32 retarget** of wasm-spec-3 products; WebGPU ≠ wasm64; do not edit wasm-spec-3  
- **Never git-add the PDF**  
- **No push** without ask  
- **No Core bleed** — Hands at docs/ root; Shadow ≠ Core  
- **One strand**; claim/refresh/release clipboards via `./docs/coord/coord.sh`  
- Plan stays **HELD** until execute; do not mark EXECUTED in the plan commit

---

## Station claim protocol

```
git pull --ff-only origin main
./docs/coord/coord.sh claim clipboards "webgpu-pass-6-plan"   # plan turn (done)
# … write plan only …
./docs/coord/coord.sh check clipboards "webgpu-pass-6-plan"
# commit plan only
./docs/coord/coord.sh release clipboards "webgpu-pass-6-plan"
# DO NOT push

# execute turn (later):
./docs/coord/coord.sh claim clipboards "Grok-webgpu-p6-exec"
# … P6-A/P/X/F/O/R …
./docs/coord/coord.sh release clipboards "Grok-webgpu-p6-exec"
```

---

## Report shape (execute → parent / human)

Concise bullets:

- Verdict (DIAGRAM SOUND / WITH OPENS / BLOCKED) + commit SHA(s)  
- P6-A / P6-P / P6-X key counts (PASS/OPEN/FIX)  
- P6-F landed or none; P6-O count=1  
- Station FREE; ahead N; emission `[GAP]`; PDF clean; `src/` absent  
- Note: pushed or not; awaiting further Proceed if needed

---

## Execution (when you say Proceed / go pass 6)

1. Sync / refresh claim.  
2. T1–T6 (Wave B skip; reopen only OPENS/drift).  
3. Mark this plan EXECUTED.  
4. Check · commit · release.  
5. Stop. Do **not** push unless asked. Do **not** invent Wave B or fill `[GAP]`. Do **not** write P6 tables in the plan commit (already seeded as checklists only).

---

## Steward test

Shoe in hands, or no.  
Pass 5 proposed order and lightly confirmed Spec↔ASCII (**19 PASS**).  
Pass 6 **cross-examines** that the ASCII systems diagram is accurate and non-leaking under HOST/GPU Shadow law.  
If the board leaks toward Core, or Implements no longer reverse-walk, or stamps leave the under-fence line into fence glyphs as inventable Lace objects, or keep-outs soften, it is not sound.  
Buffer / Device / texture boxes still are not the strand / Graphic D / second store.  
submit / WGSL / canvas boxes still are not Φ / WORD / emission accept.  
WebGPU still is not wasm64.  
lost / mapAsync boxes still are not Lace cut / append.  
rust-nostd doors stay proposals. wasm-spec-3 stays cite-only.  
Decisive judgment is release/stop — not Φ.  
Emission stays `[GAP]`.  
Distinctive product = **DIAGRAM SOUND** — not a new Wave B.

---

## Plan-time skim receipt (not execute)

| Item | Result |
|---|---|
| Station | clipboards HELD `webgpu-pass-6-plan` · BASE `823bef9` |
| Origin tip at plan | `823bef9` (Pass 5 release `29d581d` + verification-iteration-2 + history pass 6) |
| Pass 4 verdict | P4-X **all PASS** · 0 open FIX · singular overview |
| Pass 5 | P5-X **19 PASS · 0 FIX** · P5-P Shadow Order Proposal · P5-O singular · P5-F none |
| Opens (non-blocking) | Valid Usage / multi-queue / host-embed; Waves B–D deferred |
| Overview count | **1** (`## SOURCE MACHINERY overview` grep count=1) |
| Panels | P-G1…P-G9 all present |
| Fence count (plan skim) | 11 code fences (banner + overview + 9 panels) |
| POINTER in fences | **False** (no `POINTER` word inside any diagram fence) |
| Stamp under-fence lines | **10** (overview + P-G1…P-G9) |
| Overview edge labels | FORBID-* / FORBIDDEN-exit tokens (Phi / Graphic D / Lace Core) appear **inside** overview fence as edge/exit labels — **P6-A must score** as label-vs-under-fence contract (OPEN-with-cause if treated as on-board Lace objects; expected PASS if labels-only / off-board exit) |
| P3-M | CONFIRM×9 · CONFLICT×0 |
| FM-Wgpu* | all pinned (Pass 2); keep-outs still named on panels |
| Order Proposal | clipboard full P5-P + ascii short mirror; stamps KEEP-read · FORBID-* · SILENT · PROPOSAL · NON-binding |
| Projection / hologram | cite as Shadow consumers (`lace-projection.html` WebGPU 3D; hologram WGSL live path) — Order Proposal keep-outs |
| rust-nostd | crate-map + branch-contracts present · proposals · emission `[GAP]` |
| wasm-spec-3 | Pass 1–6 EXECUTED · **wasm64** · cite-only · do not edit |
| pointer-emission.md | DRAFT / `[GAP]` |
| PDF | PRESENT · gitignored · never staged |
| Execute | **NOT performed** |
| P6-A/P/X/F/O/R bodies | **not written** (plan seeds checklists only) |
| Push | **NOT performed** |
| Emission | `[GAP]` |
| `src/` | absent |

---

## Commit scope (this plan commit only)

| Include | Exclude |
|---|---|
| `docs/clipboards/webgpu-pass-6-plan.md` (this file) | ascii / mechanisms / clipboard content edits · P6 tables · Order Proposal rewrite · Pass 1–5 plan bodies |
| `docs/coord/stations/clipboards.station` (claim/release as protocol) | PDF · `src/` · rust-nostd · wasm-spec-3 · law · graphics · systems-manifest · five-stakes · clock · hologram |

After plan commit: **release** clipboards station. Ahead of origin by plan commit(s) only. Do not push. Do not execute P6-A/P/X/F/O/R now. Plan remains **HELD**.
