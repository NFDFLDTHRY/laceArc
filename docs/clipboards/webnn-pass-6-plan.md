# WebNN CRD 2026-09-10 — Pass 6 PLAN (rigorous analysis & ASCII systems-diagram correctness)

**Status:** **EXECUTED** · 2026-09-18 ~23:01 PT · agent `WebNN Pass 6 EXECUTE` · was HELD ~22:58 PT  
**Station:** clipboards (EXECUTE `WebNN Pass 6 EXECUTE` · claim BASE `60eb30f` = `origin/main`)  
**Tip at plan:** `60eb30f` (= origin/main after kit cold-doors claim refresh; WebNN Pass 5 EXECUTE tip stands under it)  
**Spec:** *Web Neural Network API* (WebNN) — **W3C Candidate Recommendation Draft, 10 September 2026**  
**Under test:** `docs/clipboards/webnn-ascii-machinery.md` — SOURCE MACHINERY + **P-N1…P-N9** + Pass 5 Order Proposal short mirror  
**Proposal text:** clipboard Pass 5 **P5-P** (full) · ascii short mirror  
**Prior accuracy:** P4-X = **all PASS** (9 panels + overview) · P5-X = **19 PASS / 0 FIX** (baselines; Pass 6 goes **deeper**)  
**Companions:** `webnn-mechanisms.md` (M-N1…M-N9) · `webnn-clipboard.md` · FM-Webnn1…Webnn9 · D7 · pointer-emission = DRAFT/`[GAP]`  
**Ancestors:** [`webnn-pass-5-plan.md`](webnn-pass-5-plan.md) (**EXECUTED**) · Pass 1–4 plans  
**Templates mirrored (adapt HOST-NN; don’t clone HOST/GPU Buffer/submit or SHADER-LANG keep-outs wholesale):** [`webgpu-pass-6-plan.md`](webgpu-pass-6-plan.md) (**best** · P6-A/P/X/F/O/R shape · HOST/GPU **cite-only**) · [`wgsl-pass-6-plan.md`](wgsl-pass-6-plan.md) (SHADER-LANG adaptation · cite-only) · [`wasm-spec-3-pass-6-plan.md`](wasm-spec-3-pass-6-plan.md) (P6-A/P/X/F/O/R shape · wasm64 **cite-only**)  
**Mesh (read-only / cite-only):** [`pointer-emission.md`](../pointer-emission.md) = **DRAFT / `[GAP]`** · [`clock/README.md`](../clock/README.md) · [`hologram/`](../hologram/README.md) · [`hologram/visual-primitives.md`](../hologram/visual-primitives.md) · **webgpu-*** Pass 1–5 EXECUTED / Pass 6 HELD (**HOST/GPU companion** — cite-only; **do not edit**) · **wgsl-*** Pass 1–5 EXECUTED / Pass 6 PLAN HELD (**SHADER-LANG companion** — cite-only; **do not edit**) · wasm-spec-3 Pass 1–6 (**wasm64** — cite-only; different layer; **do not edit**)  
**Sibling (default skip):** five-stakes · Wave B · new Order Proposal rewrite (P5-P stands; P6-P = rigor check only)  
**Hands / law:** shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS.md Implementation Law  
**Kebab strand:** stick to `webnn-*` for all products of this shelf.

**PDF (this machine):**

| Field | Value |
|---|---|
| Working link (gitignored) | `refs/local/webnn-crd-20260910.pdf` |
| Attachment SHA-256 | `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` |
| Pages | **353** · text layer yes · PDF one-based primary (Pass 1–5 certified) |
| Git | **Never `git add` the PDF** |

Law: ASCII SOURCE MACHINERY + Shadow Order Proposal remain **Shadow proposal** · not Core · not Φ · WebNN = **HOST-NN Shadow only** · MLGraph ≠ strand · MLTensor/operands ≠ Lace store · `dispatch` ≠ Φ · operators ≠ WORD · WebNN ≠ WebGPU Device/Queue · WebNN ≠ WGSL · WebNN ≠ wasm64 · builder ≠ Core ctor · validation ≠ Lace cut · `exportToGPU` ≠ accept emission · Hands win · `[GAP]` sealed · **Order Proposal FORBID-as-Core-write; NON-binding**. Pass 6 distinctive product = **DIAGRAM SOUND** / deep accuracy audit — **not** a new Wave B.

```
pull/ff → claim clipboards → Hands + host-NN mesh skim
        → P6-A structural analysis of SOURCE MACHINERY as systems diagram
        → P6-P rigor check of Order Proposal claims (still Shadow / NON-binding; FORBID-as-Core intact)
        → P6-X deep accuracy re-audit Spec↔M-N*↔P-N*↔overview (stricter than Pass 4/5 steward walks)
        → P6-F fix only analysis/matrix-cited drift
        → P6-O reconfirm singular canonical SOURCE MACHINERY overview
        → P6-R verdict + receipt · plan EXECUTED · check · commit · release · STOP
```

---

## SPECIAL BANNER — WebNN HOST-NN SPECIAL · Shadow · Order Proposal from Pass 5 NON-binding · emission [GAP]

```
+======================================================================+
|  HOST-NN / WebNN SPECIAL — W3C CRD 2026-09-10                        |
|  Pass 6 = RIGOROUS ANALYSIS + CORRECTNESS of the ASCII systems diagram.|
|  NOT Xiao–Zhu / Petersen / AgentScope LLM anti-model morals.         |
|  NOT wasm-spec-3 compile-target ISA Pass 6 (P-T* / wasm64 rebuild).  |
|  NOT WebGPU HOST/GPU Pass 6 (P-G* / Buffer/submit keep-outs stay there).|
|  NOT WGSL SHADER-LANG Pass 6 (P-S* / module/type/entry stay there).  |
|  NOT Lace Core.  NOT Graphic D.  NOT pointer-emission fill.          |
|  Distinctive product: DIAGRAM SOUND — P6-A/P/X/F/O/R deep accuracy   |
|        audit of SOURCE MACHINERY + P-N1…P-N9 (not a new Wave B).     |
|  Shadow Order Proposal from Pass 5 is NON-binding on Core/src/Φ /    |
|        systems-manifest-ascii / Graphic D.  FORBID-as-Core-write.    |
|  FORBID: MLGraph≠strand · MLTensor≠store/append · dispatch≠Φ ·       |
|          WebNN≠WORD · WebNN≠WebGPU Device/Queue · WebNN≠WGSL ·       |
|          WebNN≠wasm64 · builder≠Core ctor · exportToGPU≠accept GAP   |
|  KEEP-read-as-host-NN-API: host-NN mechanics for Shadow projection.  |
|  webgpu-* HOST/GPU · wgsl-* SHADER-LANG · wasm-spec-3 wasm64 =       |
|        cite-only (do not edit).                                      |
|  No src/ until pointer-emission accepted.  One strand.               |
|  Emission [GAP].  Status: EXECUTED — P6 tables on clipboard; verdict DIAGRAM SOUND WITH OPENS.|
+======================================================================+
```

This is **not** another Order Proposal write (Pass 5 delivered P5-P).  
This is **not** wasm-spec-3 **compile-target** Pass 6 (wasm64 seal / P-T* rebuild).  
This is **not** WebGPU **HOST/GPU** Pass 6 (P-G* / Buffer/Device/submit/canvas keep-outs stay on that shelf — **cite-only**; do **not** clone them wholesale).  
This is **not** WGSL **SHADER-LANG** Pass 6 (P-S* / module/type/entry/discard/barrier keep-outs stay on that shelf — **cite-only**; do **not** clone them wholesale).  
This is **not** Xiao–Zhu / Petersen / AgentScope **LLM anti-model** Pass 6.  
It is **host-NN diagram correctness**: cross-examine that SOURCE MACHINERY + P-N1…P-N9 + Shadow Order Proposal are coherent, complete, non-leaking, reverse-walk accurate, stamp-correct, and steward-refusable under Hands. Mirror WebGPU/WGSL/wasm-spec-3 Pass 6 (P6-A/P/X/F/O/R) adapted to **WebNN HOST-NN**.

---

## Why this pass exists

| Pass | Job |
|---|---|
| 1 (PDF) | **Admission** — PAGE A–H, X stamped against CRD 2026-09-10 |
| 2 | **Leftovers** — D1–D6 + FM-Webnn1…9 + D7 host-NN lifecycle miniature |
| 3 | **System mechanisms** — M-N1…M-N9 + P3-M mesh (CONFIRM×9) |
| 4 | **ASCII SOURCE MACHINERY** — overview + P-N1…P-N9 + P4-X all PASS |
| 5 | **Shadow Order Proposal** + light P5-X CONFIRM (19 PASS · 0 FIX) |
| **6** | **Rigorously analyze and ensure** the ASCII systems diagram is **correct**: structure, safety stamps, proposal claims, deep Spec↔M↔P↔overview fence/Implements/algorithm-step fidelity · verdict **DIAGRAM SOUND** (or WITH OPENS / BLOCKED) |

Pass 5 answered “does Spec map to ASCII (light CONFIRM), and is the board a usable Shadow Order Proposal?”  
Pass 6 answers “is the **systems diagram** coherent, complete, non-leaking, reverse-walk accurate, stamp-correct, and steward-refusable under Hands?”

Still **Shadow / Layer III**. Not Core. Not `src/`. Not a rewrite of `systems-manifest-ascii.md`. Wave B **default skip**. Order Proposal stays **Shadow / NON-binding**. Emission stays **`[GAP]`**.

---

## What “rigorous analysis & correctness” means (HOST-NN)

### A. Systems-diagram structure (P6-A)

Walk the canonical SOURCE MACHINERY fence and prove:

1. **Fence integrity** — overview + each P-N* panel fence is well-formed (balanced fences; stamps live **under** fences per opening contract; FORBID labels on overview edges are **labels**, not Lace objects / on-board stores).  
2. **Spine completeness** — Spec constructive HOST-NN stages present once: `navigator.ml` / `createContext` / MLContext (P-N1) → MLGraphBuilder / `input`/`constant` (P-N2) → MLOperand / tensors (P-N3) → operators / op graph (P-N4) → `build` → MLGraph (P-N5) → `dispatch` / ML task source (P-N6) → MLTensor / `exportToGPU` (P-N7) → validation / `opSupportLimits` (P-N8) → security / privacy / §5.3 (P-N9) → **FORBIDDEN** exit to Lace Core / Graphic D / Φ / WebGPU Device·Queue swap / WGSL swap / wasm64 ISA swap.  
3. **Singular overview** — exactly **one** `## SOURCE MACHINERY overview` (count=1); reconfirm P5-O / P4-O.  
4. **Panel ids complete** — **P-N1…P-N9** each present with Spec cite · Lace stamp · Implements (via M-N*) · fence · under-fence stamp line.  
5. **No orphan nodes** — every overview box cites ≥1 P-N*/M-N* (or is explicitly marked INPUT / FORBIDDEN exit).  
6. **No missing Wave A coverage** — every M-N1…N9 / P-N1…N9 appears on overview.  
7. **Off-board integrity / no Core bleed** — Lace Core / Graphic D / Φ / emission / WebGPU Device·Queue / WGSL / wasm64 ISA appear only as **FORBIDDEN exits**, never as on-board stores; book-side ASCII must not smuggle Core tokens as WebNN objects.  
8. **Glyph discipline** — **no POINTER word inside any diagram fence**; no invent Φ inside fences; no WORD / Graphic D / Φ / strand depicted as if they were WebNN objects (FORBIDDEN-exit labels OK).  
9. **Stamp legend consistent** — ascii stamp legend ≡ clipboard stamp legend family (**KEEP-read-as-host-NN-API** · KEEP-read · FORBID-as-Core-write · FORBID-as-Lace-WORD · FORBID-as-Lace-store · FORBID-as-Lace-strand · FORBID-as-emission-rule · SILENT-for-Lace-append · PROPOSAL-only · FORBID-as-WebGPU-conflation · FORBID-as-WGSL-conflation · FORBID-as-compile-target-swap · FORBID-as-Core · FORBID fill-GAP · FORBID accept-GAP).  
10. **Stamp under-fence placement** — each P-N* keeps stamps **under** the fence (not smuggled as fence glyphs); overview FORBID lines scored as edge labels vs under-fence contract (OPEN-with-cause if drifted into fence as inventable Lace objects).

Checklist table: item · evidence (line/fence cite) · PASS/OPEN.  
**Do not write the P6-A table at plan time** — execute only.

### B. Order Proposal rigor (P6-P)

Analyze P5-P (clipboard full + ascii short mirror) against the diagram. Proposal remains **Shadow / NON-binding** — Pass 6 does **not** promote it or rewrite it unless overclaim / keep-out drift forces a P6-F tighten.

| Check | Question |
|---|---|
| Claim–diagram bind | Does each stage→hygiene row point at a real overview node / P-N*? |
| Overclaim | Does any sentence imply Core write, AGENTS.md law, Φ schedule, `src/` birth, or Core import of MLGraph/MLContext/builder as strand ops / WORD / emission? |
| FORBID completeness | Are FORBID-as-Core-write · FORBID-as-Lace-WORD · FORBID-as-Lace-store · FORBID-as-Lace-strand · FORBID-as-emission-rule · FORBID-as-Core · FORBID fill-GAP · FORBID accept-GAP · FORBID-as-WebGPU-conflation · FORBID-as-WGSL-conflation · FORBID-as-compile-target-swap · SILENT-for-Lace-append · PROPOSAL · NON-binding · Hands-refusal all explicit and consistent with panel stamps? |
| **P5-P keep-outs re-walk** | MLGraph≠strand · MLTensor≠store/append · dispatch≠Φ · WebNN≠WORD · WebNN≠WebGPU Device/Queue · WebNN≠WGSL · WebNN≠wasm64 · builder≠Core ctor · exportToGPU≠accept GAP — each still explicit and diagram-bound? |
| Shadow stamp + NON-binding | Proposal still stamped Shadow / PROPOSAL / NON-binding; **KEEP-read-as-host-NN-API** intact; FORBID-as-Core-write intact; no Core import of Context/Graph/builder/tensor as strand/store/Φ |
| Steward loop soundness | observe→name→diagram-check→stamp-check→OPEN list→decide — does “decide” exclude POINTER-when / Φ fill / Core install / fill-GAP / WebGPU conflation / WGSL conflation / wasm64 swap? |
| File-order proposal | clipboard→mechanisms→ascii→plans — still proposal-only; projection/hologram named Shadow consumers; webgpu-* / wgsl-* / wasm64 cited beside only? |
| Mirror fidelity | Ascii short mirror does **not strengthen** claims beyond clipboard P5-P |
| FORBID-as-Core intact | No Core bleed: proposal must not install into systems-manifest-ascii / Graphic D / AGENTS.md / `src/` |

Failures → OPEN; fix by tightening proposal wording (**not** by softening FORBIDs).  
**Do not write the P6-P table at plan time** — execute only.

### C. Deep accuracy (P6-X) — stricter than P4-X / P5-X

For **each** P-N1…P-N9 (re-walk; do **not** inherit P4-X / P5-X PASS blindly — but **do not re-litigate clean PASS from P4/P5 unless drift / OPENS surface**):

1. **Spec locus → overview node + panel** — Mechanism cite / PDF pin agrees with M-N*; overview node attaches; re-sight with `pdftotext` **only** where pin is thin / contested / drift suspected.  
2. **Stamp match** — panel under-fence stamp ≡ card stamp family (M-N* hard FORBIDs).  
3. **M-N* alignment / algorithm step fidelity** — every M-N* numbered step is depictable on the panel fence (or caption); steward can walk card→fence glyph-by-glyph / step-by-step.  
4. **Fence fidelity** — glyphs depict those steps; Spec/host-NN-side only; **no Core tokens / no POINTER word / no invent Φ** inside fence.  
5. **FM-Webnn* keep-outs still held** — present or explicitly N/A; fence must not depict FM-Webnn* confusion as if allowed.  
6. **Overview attach** — panel’s stage appears on canonical overview.  
7. **Special gates (HOST-NN):**  
   - **P-N1:** FORBID-as-Lace-strand · FORBID-as-WebGPU-conflation · **KEEP-read-as-host-NN-API**; MLContext/`createContext` ≠ Graphic D / Core door / Device identity; **FM-Webnn2 · FM-Webnn6**.  
   - **P-N2:** FORBID-as-Lace-strand · FORBID-as-Core-write · FORBID-as-Core; builder ≠ Core ctor / Graphic D factory; **D7** cross-link intact; **FM-Webnn1 · FM-Webnn9**.  
   - **P-N3:** FORBID-as-Lace-store; MLOperand/tensor ≠ Lace store / append / second strand; **FM-Webnn3**.  
   - **P-N4:** FORBID-as-Lace-WORD · FORBID-as-WGSL-conflation; operators ≠ WORD / WGSL entry; **FM-Webnn5 · FM-Webnn7**.  
   - **P-N5:** FORBID-as-Lace-strand · FORBID-as-Core; MLGraph ≠ lace cord / strand; **D7** cross-link intact; **FM-Webnn1 · FM-Webnn9**.  
   - **P-N6:** FORBID-as-emission-rule · SILENT-for-Lace-append; `dispatch` ≠ Φ / POINTER when; **D7** cross-link intact; **FM-Webnn4**.  
   - **P-N7:** FORBID-as-Lace-store · PROPOSAL-only · FORBID-as-WebGPU-conflation · FORBID accept-GAP / FORBID fill-GAP; MLTensor ≠ store · `exportToGPU` ≠ Buffer identity · ≠ accept emission; **FM-Webnn3 · FM-Webnn6 · FM-Webnn9**.  
   - **P-N8:** SILENT-for-Lace-append · FORBID-as-emission-rule; validation ≠ Lace cut / Φ gate.  
   - **P-N9:** FORBID-as-Core-write · FORBID-as-WebGPU-conflation; threat/privacy ≠ Lace law · ≠ WebGPU identity · ≠ wasm64; **FM-Webnn6 · FM-Webnn8**.  
   - **Overview forbidden exit / FM-Webnn6·7·8:** WebNN ≠ WebGPU Device/Queue · WebNN ≠ WGSL · WebNN ≠ wasm64; Core/Φ/host-API/shader/wasm64 off-board.  
8. **Reopen policy** — reopen a row to FIX **only** if book OPENS surface as representation drift, stamp/fence/overview attach drifted since Pass 5, or a steward refuse test fails. Otherwise **CONFIRM** prior PASS with deeper evidence recorded.  
9. **False-friend fence scan** — no fence that accidentally looks like Graphic D / 1D strand / POINTER art / Core schema / WebGPU Device·Queue board / WGSL module board.

Columns: `P · M · Cite · Stamp · Implements · Fence · Overview · FM · Verdict (PASS/FIX)`.  
**Do not write the P6-X matrix at plan time** — execute only.

**Book OPENS (non-blocking · from Pass 2/4/5; do not finish from Lace):** ISSUE 5/7 completion/error signaling during `dispatch()` (Spec silent / open); which host embed may call this from Lace projection. Score as OPEN-with-cause unless they contradict a panel.

### D. Fixes (P6-F)

Allowed: align Implements/stamps/pins; tighten fences; tighten proposal wording (still Shadow); demote duplicate overviews; add OPEN rows with cause; move stamps under-fence if drifted into fence; fix Core-bleed glyphs.  
**Apply fixes only if P6-A / P6-P / P6-X cite FIX.**  
Disallowed: soften FORBIDs for beauty; invent Φ; merge into Core ASCII; invent Wave B/C from TOC alone; five-stakes rewrite unless CONFLICT; rewrite webgpu-* / wgsl-* / wasm-spec-3 / law / graphics / systems-manifest / `src/`; amend clock / hologram as Core writers; clone HOST/GPU Buffer/submit or SHADER-LANG keep-outs wholesale onto this shelf.

### E. Canonical overview (P6-O)

Exactly **one** canonical SOURCE MACHINERY overview fence in `webnn-ascii-machinery.md`. Reconfirm count=1 (P5-O / P4-O stand). Lace Core / Graphic D / Φ / WebGPU Device·Queue / WGSL / wasm64 ISA stay **off-board**. Remove/demote duplicates only if P6-A finds drift.

### F. Receipt (P6-R)

Verdict: **DIAGRAM SOUND** / **DIAGRAM SOUND WITH OPENS** / **DIAGRAM BLOCKED**.  
Φ still `[GAP]`. Wave B still deferred (default skip). Order Proposal still Shadow / NON-binding. Pass 4/5 OPENS remain non-blocking unless P6-X finds representation conflict.  
Mark this plan **EXECUTED** only on execute — **this plan stays HELD** until then.

---

## Already done (baseline — re-check, don’t assume)

| Layer | Pass 5 / prior claim |
|---|---|
| PAGE A–H, X | Pass 1 — stand |
| D1–D6 + FM-Webnn1…Webnn9 + D7 | Pass 2 — stand; all FM pinned |
| M-N1…M-N9 + P3-M | Pass 3 — CONFIRM×9 · CONFLICT×0 |
| ASCII overview + P-N1…P-N9 + P4-X | Pass 4 — **all PASS** · singular overview |
| P5-X | **19 PASS / 0 FIX** (CONFIRM Pass 4) |
| P5-O | one canonical overview (count=1) |
| P5-P | Order Proposal on clipboard + ascii short mirror (Shadow / NON-binding) |
| P5-F | none |
| Wave B | skipped |
| Opens (non-blocking) | `dispatch` completion signaling / host-embed; Waves B–D deferred |
| Emission | `[GAP]` |
| `src/` | absent |
| webgpu-* | Pass 1–5 EXECUTED · Pass 6 HELD · cite-only · **do not edit** |
| wgsl-* | Pass 1–5 EXECUTED · Pass 6 PLAN HELD · cite-only · **do not edit** |
| wasm-spec-3 | Pass 1–6 EXECUTED · **wasm64** · cite-only · **do not edit** |
| clock / hologram | Shadow consumers — cite-only |

Pass 6 may **confirm** or **reopen** those claims with deeper evidence. Do **not** re-litigate clean PASS unless drift found.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Promote proposal / ascii to Core / AGENTS.md / systems-manifest-ascii / Graphic D | Hands / Shadow only; FORBID-as-Core intact; NON-binding |
| Soften FORBID-as-Lace-WORD / store / strand / emission-rule / Core / fill-GAP / accept-GAP / WebGPU-conflation / WGSL-conflation / compile-target-swap / PROPOSAL-only / SILENT | morals stand |
| Invent POINTER when / arity / adjacency | Φ `[GAP]` |
| Fill emission `[GAP]` via `dispatch` / MLGraph / builder / `exportToGPU` / validation story | standing FORBID |
| Treat WebNN as WebGPU Device/Queue/Buffer host API | different Spec · **FM-Webnn6** · cite-only |
| Treat WebNN as WGSL / shader-lang | different Spec · **FM-Webnn7** · cite-only |
| Treat WebNN as wasm64 / wasm-spec-3 compile target | different layer · **FM-Webnn8** · cite-only |
| Edit webgpu-* / wgsl-* / wasm-spec-3 products | wrong shelf; cite-only |
| Core import of MLGraph/MLContext/builder/tensor as strand/store ops | FORBID-as-Lace-strand / store |
| Redraw Core `systems-manifest-ascii.md` | wrong object |
| Quiet rewrite of P3-M / five-stakes / map | wrong scope — five-stakes only if CONFLICT |
| Wave B–D invent from TOC | default skip |
| Amend clock / hologram / projection HTML as Core writers | Shadow consumers; cite-only |
| `src/` or Cargo / crates.io | Implementation Law |
| Clone WebGPU Buffer / Device / `queue.submit` / canvas / `mapAsync` / `device.lost` keep-outs wholesale onto this shelf | wrong false-friend class — adapt to **HOST-NN** (MLGraph/MLTensor/`dispatch`/WORD/WebGPU·WGSL·wasm64/builder/`exportToGPU`) |
| Clone WGSL module / type / address-space / entry / discard / barrier keep-outs wholesale onto this shelf | wrong false-friend class — SHADER-LANG stay on **wgsl-*** |
| Clone wasm-spec-3 P6 mem/table/stack/`br`/trap / wasm64-rebuild gates as if this were ISA | wrong false-friend class |
| Clone Xiao–Zhu / Petersen / AgentScope LLM anti-model morals onto this shelf | wrong genre — WebNN = **HOST-NN** |
| Git-add PDF · push without ask | standing rules |
| Mark ascii Pass 6 EXECUTED / write P6 tables at **plan** time | plan only — execute writes P6-A/P/X/F/O/R |
| Execute P6-A/P/X/F/O/R in the plan commit | plan = **HELD** / NOT EXECUTED |
| New Wave B as this pass’s distinctive product | distinctive product = **DIAGRAM SOUND** audit |
| Invent new stamp names | stamp vocab from existing webnn shelf only (**KEEP-read-as-host-NN-API** stands) |

---

## Products (execute)

1. **P6-A** checklist table (structure + fence integrity + singular overview + panel completeness + stamp legend + no Core bleed) — on clipboard Pass 6; pointer from ascii.  
2. **P6-P** proposal-rigor table + any wording fixes (still Shadow / NON-binding; keep-outs re-walk).  
3. **P6-X** deep accuracy matrix (9 panels + overview attach; special gates P-N1…P-N9 / FM-Webnn*; reopen only OPENS/drift).  
4. **P6-F** edits only if P6-A/P/X cite FIX.  
5. **P6-O** singular overview reconfirm (count=1).  
6. **P6-R** receipt with overall verdict (**DIAGRAM SOUND** / **WITH OPENS** / **BLOCKED**).  
7. Plan marked **EXECUTED** (only on execute).

---

## Coherence with standing artifacts

| Artifact | Pass 6 stance |
|---|---|
| `webnn-clipboard.md` | P6-A/P/X/F/O/R tables + receipt |
| `webnn-ascii-machinery.md` | P6-O confirm · P6-F only if cited · Pass 6 pointer |
| `webnn-mechanisms.md` | untouched unless P6-F requires (prefer panel fixes) |
| P3-M / P4-X / P5-X / P5-P / FM-Webnn* / D7 | stand; reopen only on drift |
| `clock/README.md` / projection | **Shadow consumer** — cite-only; Order Proposal keep-out |
| `hologram/` / `visual-primitives.md` | **Shadow consumer** — cite-only; Order Proposal keep-out |
| webgpu-* (HOST/GPU) | **cite-only** — different Spec; **do not edit**; WebNN ≠ Device/Queue |
| wgsl-* (SHADER-LANG) | **cite-only** — different Spec; **do not edit**; WebNN ≠ WGSL |
| wasm-spec-3 (wasm64) | **cite-only** — different layer; **do not edit**; WebNN ≠ wasm64 |
| pointer-emission.md | still `[GAP]` — untouched |
| law / graphics / systems-manifest / Core ASCII / five-stakes | **untouched** |
| PDF | never staged |
| `src/` | absent; stay absent |

---

## Tickets (execute checklist)

### T0 — Sync / claim

Before execute: `git pull --ff-only` · refresh claim (`WebNN Pass 6 EXECUTE` or similar) if clock turned · abort if BASE ≠ origin without human note.

### T1 — Hands + host-NN mesh skim

Shoe → graphics A–D → systems-manifest → staking / law-why → AGENTS Implementation Law → pointer-emission `[GAP]` → clock/README (Shadow consumer) → hologram + visual-primitives (Shadow consumer) → webgpu-* banner (**HOST/GPU** cite-only; do not amend) → wgsl-* banner (**SHADER-LANG** cite-only; do not amend) → wasm-spec-3 banner (**wasm64** cite-only; do not amend) → Pass 1–5 clipboard (incl. P5-P / P5-X **19 PASS** · P4-X all PASS) → ascii overview + P-N1…P-N9 → mechanisms M-N1…M-N9 → this plan → webgpu/wgsl/wasm-spec-3 Pass 6 shape (read-only; adapt to **HOST-NN**).

### T2 — PDF gate

Confirm `refs/local/webnn-crd-20260910.pdf` · SHA-256 `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` · `git check-ignore` · **never stage**. Re-sight **only** where Cite match is thin / contested / FIX needs a pin (light PDF) — e.g. createContext PDF **28–29**, MLGraph PDF **50**, builder/`build` PDF **62** / **67–68**, `dispatch` PDF **32–33**, MLTensor/`exportToGPU` PDF **57–58** / **42–43**, §5.3 PDF **19–20**.

### T3 — P6-A structural analysis of SOURCE MACHINERY

### T4 — P6-P Order Proposal rigor check (keep-outs re-walk; Shadow + NON-binding; FORBID-as-Core intact)

### T5 — P6-X deep panel re-walk (all P-N1…N9; special gates above; reopen only OPENS/drift)

### T6 — P6-F fixes (only if FIX) + P6-O reconfirm singular overview + stamp under-fence + no POINTER in fences

### T7 — P6-R receipt · plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "WebNN Pass 6 EXECUTE"
# commit: P6 tables + any fixes + receipt + plan EXECUTED
# never git-add PDF · never add src/ · never amend webgpu-*/wgsl-*/wasm-spec-3/Core/clock/hologram
./docs/coord/coord.sh release clipboards "WebNN Pass 6 EXECUTE"
```

Ask before push. Do **not** push unless asked. **Do not execute in the plan commit.**

---

## Acceptance tests (execute must pass)

1. P6-A checklist complete; every item PASS or OPEN-with-cause (fence integrity, singular overview count=1, P-N1…P-N9 complete, no POINTER/Φ invent inside fences, stamp legend consistent, no Core bleed into book-side ASCII, spine/orphans/Wave A/off-board/glyph discipline/stamp under-fence).  
2. P6-P shows proposal does not overclaim Core/Φ/`src/`; keep-outs MLGraph≠strand · MLTensor≠store · dispatch≠Φ · WebNN≠WORD · WebNN≠WebGPU Device/Queue · WebNN≠WGSL · WebNN≠wasm64 · builder≠Core ctor · exportToGPU≠accept GAP all explicit; mirror ≤ clipboard strength; FORBID-as-Core intact; still Shadow / NON-binding; **KEEP-read-as-host-NN-API** held.  
3. P6-X covers all P-N1…N9 with Implements reverse-walk + algorithm step fidelity + fence fidelity; special gates PASS or FIX-cited; FM-Webnn* keep-outs still held; reopen only OPENS/drift.  
4. Overall verdict recorded (**DIAGRAM SOUND** / **DIAGRAM SOUND WITH OPENS** / **DIAGRAM BLOCKED**).  
5. Exactly one canonical overview (P6-O); Core/Φ/WebGPU/WGSL/wasm64 off-board.  
6. No Φ invent; map/law/graphics/Core ASCII/`src/`/five-stakes/webgpu-*/wgsl-*/wasm-spec-3/clock/hologram untouched except cited Shadow edits (five-stakes only if CONFLICT).  
7. PDF never staged.  
8. Steward refuse tests (below) pass using P6-A + P6-P + P6-X alone.  
9. P6-F applied **only** where matrix/analysis cites FIX.

---

## Steward refuse tests (diagram correctness + proposal)

Shoe in hands — refuse (P6-X / P6-P FAIL if representation or proposal enables them):

1. “Install this ASCII board / Order Proposal as Graphic D / Core / systems-manifest-ascii” → **FORBID-as-Core-write** · PROPOSAL · NON-binding (P6-A + P6-P)  
2. “MLGraph is the Lace strand / Graphic D” → **FORBID-as-Lace-strand** (P-N5 / M-N5 / **FM-Webnn1**)  
3. “MLContext / `createContext` / device selection is Graphic D / Core door” → **FORBID-as-Lace-strand** (P-N1 / **FM-Webnn2 · FM-Webnn6**)  
4. “MLTensor / operands / constant tensors are the Lace store / append surface” → **FORBID-as-Lace-store** (P-N3 / P-N7 / **FM-Webnn3**)  
5. “`dispatch` / ML task source emits POINTER / fills Φ” → **FORBID-as-emission-rule** (P-N6 / **FM-Webnn4**)  
6. “WebNN operators are Lace WORD / Core schema” → **FORBID-as-Lace-WORD** (P-N4 / **FM-Webnn5**)  
7. “WebNN is WebGPU Device/Queue/Buffer (identity merge)” → **FORBID-as-WebGPU-conflation** (**FM-Webnn6**)  
8. “WebNN is WGSL / shader-lang / operators are shader entry points” → **FORBID-as-WGSL-conflation** (**FM-Webnn7**)  
9. “WebNN replaces wasm64 / wasm-spec-3 compile target” → **FORBID-as-compile-target-swap** (**FM-Webnn8**)  
10. “MLGraphBuilder is Lace Core constructor / Graphic D factory; `exportToGPU` accepts pointer-emission / fills `[GAP]`” → **FORBID-as-Core-write** · PROPOSAL-only · FORBID accept-GAP (P-N2 / P-N7 / **FM-Webnn9 · FM-Webnn6**)  
11. “Validation / `opSupportLimits` is a Lace cut / Φ gate” → **SILENT** · FORBID-as-emission-rule (P-N8)  
12. “Order Proposal rewrites clock / hologram / webgpu-* / wgsl-* / wasm-spec-3 / pointer-emission / AGENTS.md” → **NON-binding** · cite only · Φ stays `[GAP]`

---

## Success criteria (plan turn vs execute turn)

**This plan turn (HELD):**

- `docs/clipboards/webnn-pass-6-plan.md` exists, marked **HELD** (not EXECUTED)  
- Mirrors Pass 6 audit shape (P6-A / P6-P / P6-X / P6-F / P6-O / P6-R) adapted to **HOST-NN**  
- Plan committed; station released FREE; ahead of origin; **not pushed**  
- Emission `[GAP]`; PDF clean (never staged); `src/` absent  
- No ascii / mechanisms / clipboard content edits; **no P6 tables written yet**

**Execute turn (later — when human says Proceed):**

- P6-A/P/X/F/O/R delivered; verdict recorded (**DIAGRAM SOUND** / WITH OPENS / BLOCKED); plan marked EXECUTED  
- Station check → commit → release; ask before push

---

## Refuse lines (standing)

- **No `src/`** until pointer-emission accepted  
- **No invent Φ** / POINTER when / arity / adjacency  
- **No wasm32 retarget** of wasm-spec-3 products; WebNN ≠ wasm64; do not edit wasm-spec-3  
- **Never git-add the PDF**  
- **No push** without ask  
- **No Core bleed** — Hands at docs/ root; Shadow ≠ Core  
- **One strand**; claim/refresh/release clipboards via `./docs/coord/coord.sh`  
- **Cite-only** webgpu-* / wgsl-* / wasm-spec-3 — do not edit them  
- **Stamps from existing shelf only** — invent none; **KEEP-read-as-host-NN-API** stands  
- Plan stays **HELD** until execute; do not mark EXECUTED in the plan commit

---

## Station claim protocol

```
git pull --ff-only origin main
./docs/coord/coord.sh claim clipboards "WebNN Pass 6 PLAN HELD"   # plan turn (done)
# … write plan only …
./docs/coord/coord.sh check clipboards "WebNN Pass 6 PLAN HELD"
# commit plan only
./docs/coord/coord.sh release clipboards "WebNN Pass 6 PLAN HELD"
# DO NOT push

# execute turn (later):
./docs/coord/coord.sh claim clipboards "WebNN Pass 6 EXECUTE"
# … P6-A/P/X/F/O/R …
./docs/coord/coord.sh release clipboards "WebNN Pass 6 EXECUTE"
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
Pass 6 **cross-examines** that the ASCII systems diagram is accurate and non-leaking under HOST-NN Shadow law.  
If the board leaks toward Core, or Implements no longer reverse-walk, or stamps leave the under-fence line into fence glyphs as inventable Lace objects, or keep-outs soften, it is not sound.  
MLGraph / MLContext / builder boxes still are not the strand / Graphic D / Core ctor.  
MLTensor / operand boxes still are not the store / append.  
`dispatch` / operator / export boxes still are not Φ / WORD / emission accept.  
WebNN still is not WebGPU Device/Queue, not WGSL, not wasm64.  
webgpu-* / wgsl-* / wasm-spec-3 stay cite-only.  
Decisive judgment is release/stop — not Φ.  
Emission stays `[GAP]`.  
Distinctive product = **DIAGRAM SOUND** — not a new Wave B.

---

## Plan-time skim receipt (not execute)

| Item | Result |
|---|---|
| Station | clipboards HELD `WebNN Pass 6 PLAN HELD` · BASE `60eb30f` |
| Origin tip at plan | `60eb30f` (kit cold-doors claim refresh; Pass 5 release under it) |
| Pass 4 verdict | P4-X **all PASS** · 0 open FIX · singular overview |
| Pass 5 | P5-X **19 PASS · 0 FIX** · P5-P Shadow Order Proposal · P5-O singular · P5-F none |
| Opens (non-blocking) | `dispatch` completion signaling / host-embed; Waves B–D deferred |
| Overview count | **1** (`^## SOURCE MACHINERY overview` grep count=1) |
| Panels | P-N1…P-N9 all present |
| Fence count (plan skim) | 11 code fences (banner + overview + 9 panels) |
| POINTER in fences | **False** (no `POINTER` word inside any diagram fence) |
| Stamp under-fence lines | **10** (overview + P-N1…P-N9) |
| Overview edge labels | FORBID-* / FORBIDDEN-exit tokens (Phi / Graphic D / Lace Core / WebGPU / WGSL / wasm64) appear **inside** overview fence as edge/exit labels — **P6-A must score** as label-vs-under-fence contract (OPEN-with-cause if treated as on-board Lace objects; expected PASS if labels-only / off-board exit) |
| P3-M | CONFIRM×9 · CONFLICT×0 |
| FM-Webnn* | all pinned (Pass 2); keep-outs still named on panels |
| Order Proposal | clipboard full P5-P + ascii short mirror; stamps **KEEP-read-as-host-NN-API** · FORBID-* · SILENT · PROPOSAL · NON-binding |
| Projection / hologram | cite as Shadow consumers — Order Proposal keep-outs |
| webgpu-* / wgsl-* / wasm-spec-3 | cite-only · do not edit |
| pointer-emission.md | DRAFT / `[GAP]` |
| PDF | PRESENT · SHA `e11532183ed50d11e91c70881c59b805346b6607d41e82e7d52aca520df53fdc` · gitignored · never staged · 353 pp |
| Execute | **PERFORMED** · P6-A/P/X/F/O/R delivered · verdict **DIAGRAM SOUND WITH OPENS** |
| P6-A/P/X/F/O/R bodies | **written** on clipboard Pass 6 · ascii Pass 6 receipt |
| Push | **NOT performed** |
| Emission | `[GAP]` |
| `src/` | absent |

---

## Commit scope (this plan commit only)

| Include | Exclude |
|---|---|
| `docs/clipboards/webnn-pass-6-plan.md` (this file) | ascii / mechanisms / clipboard content edits · P6 tables · Order Proposal rewrite · Pass 1–5 plan bodies |
| `docs/coord/stations/clipboards.station` (claim/release as protocol) | PDF · `src/` · webgpu-* · wgsl-* · wasm-spec-3 · law · graphics · systems-manifest · five-stakes · clock · hologram |

After plan commit: **release** clipboards station. Ahead of origin by plan commit(s) only. Do not push. Do not execute P6-A/P/X/F/O/R now. Plan remains **HELD**.
