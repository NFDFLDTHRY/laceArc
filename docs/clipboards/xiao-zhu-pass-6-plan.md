# Xiao & Zhu pass 6 — rigorous analysis & ASCII systems-diagram accuracy

**Status:** **EXECUTED** — 2026-09-18 ~19:47 PT · agent `Xiao-Zhu Pass 6 execute` · verdict **DIAGRAM SOUND**. Emission `[GAP]`. Tokenizer `[GAP]`.  
**Station:** clipboards (HELD `Xiao-Zhu Pass 6 plan only` at plan time; refresh claim before execute)  
**Base at plan:** `4df3fae` (== `origin/main` after Pass 5 tip `1b9cba1` + clock i5p2/i5p3) · refresh to current `origin/main` before execute  
**Book:** Tong Xiao & Jingbo Zhu, *Foundations of Large Language Models*  
**arXiv:** `2501.09223v2` [cs.CL] · 15/17 Jun 2025  
**License:** CC BY-NC 4.0 — cite; do not fold body into Apache Core  
**Under test:** `docs/clipboards/xiao-zhu-foundations-ascii-machinery.md` — SOURCE MACHINERY + P-A1…P-A9 + Pass 5 Order Proposal short mirror  
**Proposal text:** clipboard Pass 5 P5-P (full) · ascii short mirror  
**Prior accuracy:** P4-X = 9/9 PASS · P5-X = **11 PASS / 0 FIX** (baselines; Pass 6 goes **deeper**)  
**Companions:** `xiao-zhu-foundations-mechanisms.md` · `xiao-zhu-foundations-clipboard.md` · map §3 X1–X7 · five-stakes PAGE 3/5  
**Hands:** shoe → graphics A–D → systems-manifest → law-why → map §3 → M-A* → P-A* → overview → P5-P → this plan  
**Ancestors:** [`xiao-zhu-pass-5-plan.md`](xiao-zhu-pass-5-plan.md) · Pass 1–4 plans  
**Mirrors:** [`agentscope-pass-6-plan.md`](agentscope-pass-6-plan.md) · [`petersen-zech-pass-6-plan.md`](petersen-zech-pass-6-plan.md)

**PDF (gitignored):** `refs/local/xiao-zhu-foundations-llm.pdf` → attachment `0f5d145d298a90bbe1648b365d97b8833e86be3c31bedd7db900a932ba50bc1a` · **277** pp. · printed ≈ PDF − 7 · **never `git add`**

Law: ASCII board + Order Proposal remain **Shadow proposal** · not Core · not Φ · intern/MASK/embed/next-token/decode ≠ Core · soft/SFT/RLHF steward-only · KV ≠ POINTER when · tokenizer `[GAP]` · Hands may refuse · `[GAP]` sealed.

```
pull/ff → claim → Hands skim
        → P6-A structural analysis of SOURCE MACHINERY as systems diagram
        → P6-P rigor check of Order Proposal claims (stage→hygiene + FORBIDs; still Shadow / non-binding)
        → P6-X deep accuracy re-audit M↔P↔overview (stricter than P5-X steward walk)
        → P6-F fix only analysis/matrix-cited drift
        → P6-R verdict + receipt · plan EXECUTED · check · commit · release · STOP
```

---

## Why this pass exists

| Pass | Job |
|---|---|
| 4 | Draw SOURCE MACHINERY + P-A1…P-A9 + P4-X |
| 5 | First M↔P accuracy + establish Order Proposal (Shadow) |
| **6** | **Rigorously analyze and ensure** the ASCII systems diagram is **correct**: structure, safety stamps, proposal claims, deep fence/Implements/algorithm-step fidelity |

Pass 5 answered “do cards and panels roughly match, and is the board a usable hygiene proposal?”  
Pass 6 answers “is the **systems diagram** coherent, complete, non-leaking, reverse-walk accurate, stamp-correct, and steward-refusable under Hands?”

Still Shadow. Not Core. Not Wave B. Not a rewrite of `systems-manifest-ascii.md`. This book remains the **anti-model of ingest**.

---

## What “rigorous analysis & correctness” means

### A. Systems-diagram structure (P6-A)

Walk the canonical SOURCE MACHINERY fence and prove:

1. **Spine completeness** — book constructive stages present once: corpus D + self-sup → tokenize / shared vocab V → e = x + e_pos (+ e_seg) → causal next-token **and** BERT MASK fork → soft / SFT / RLHF|DPO → prefill → decode / KV → **FORBIDDEN** exit to Lace Core / Graphic D / emission / tokenizer.  
2. **No orphan nodes** — every overview box cites ≥1 P-A*/M-A* (or is explicitly marked INPUT / FORBIDDEN exit).  
3. **No missing Wave A coverage** — every M-A1…A9 appears on overview (soft/SFT/RLHF may share one aggregated node — confirm M-A6..8 / P-A6..8 attach).  
4. **Off-board integrity** — Lace Core / Graphic D / Φ / Lace tokenizer appear only as **FORBIDDEN exits**, never as on-board stores.  
5. **Glyph discipline** — overview fence contains **no** `WORD` / `POINTER` / Graphic-D row art as if book objects; **no POINTER word inside any diagram fence**.  
6. **Stamp under-fence placement** — each P-A* keeps stamps **under** the fence (not smuggled as fence glyphs); overview FORBID lines are labels, not Lace objects.  
7. **Singularity** — still exactly one canonical overview (reconfirm P5-O).  
8. **Panel coverage** — P-A1…P-A9 each present with Mechanism cite · Lace stamp · Implements · fence · under-fence stamp line.

Checklist table: item · evidence (line/fence cite) · PASS/OPEN.

### B. Order Proposal rigor (P6-P)

Analyze P5-P (clipboard full + ascii short mirror) against the diagram. Proposal remains **Shadow / non-binding** — Pass 6 does **not** promote it.

| Check | Question |
|---|---|
| Claim–diagram bind | Does each stage→hygiene row point at a real overview node / P-A*? |
| Overclaim | Does any sentence imply Core write, AGENTS.md law, Φ schedule, or Lace tokenizer invent? |
| FORBID completeness | Are FORBID-as-Core-write · FORBID-as-Lace-identity · FORBID-as-store · FORBID next-token/decode as Core continue · FORBID MASK as Lace cut · FORBID-as-POINTER-when · FORBID corpus→DOCUMENT · FORBID as Core rows · FORBID-as-Lace-history · SILENT-for-Lace-append · PROPOSAL · Hands-refusal all explicit and consistent with panel stamps? |
| Steward loop soundness | observe→name→diagram-check→stamp-check→OPEN list→decide — does “decide” exclude POINTER-when / Φ fill / Lace tokenizer invent / Core install? |
| File-order proposal | clipboard→mechanisms→ascii→plans — still proposal-only (not mandatory Core path)? |
| Mirror fidelity | Ascii short mirror does **not strengthen** claims beyond clipboard P5-P |
| FORBID-as-Core intact | No Core bleed: proposal must not install into systems-manifest-ascii / Graphic D / AGENTS.md |

Failures → OPEN; fix by tightening proposal wording (**not** by softening FORBIDs).

### C. Deep accuracy (P6-X) — stricter than P5-X

For **each** P-A1…P-A9 (re-walk; do **not** inherit P5-X PASS blindly):

1. **Cite match** — Mechanism cite / PDF pin agrees with M-A* (re-sight with `pdftotext` **only** where pin is thin / contested).  
2. **Stamp match** — panel under-fence stamp ≡ card stamp family (M-A* hard FORBIDs).  
3. **Algorithm step fidelity** — every “Implements” step id exists as a numbered step on the card; steward can walk card→fence glyph-by-glyph.  
4. **Fence fidelity** — glyphs depict those steps; book-only; **no Core tokens / no POINTER word** inside fence.  
5. **False-friend / FM link** — present or explicitly N/A; fence must not depict FM-X* confusion as if allowed.  
6. **Overview attach** — panel’s stage appears on canonical overview.  
7. **Special gates (Xiao–Zhu):**  
   - **P-A2:** FORBID-as-Lace-identity explicit; tokenizer stays `[GAP]`; fence is vocab intern only (not Lace WORD/Star).  
   - **P-A5:** MASK ≠ Lace cut explicit; 80/10/10 corruption visible; see D7; not Piece 3 cut.  
   - **P-A8:** FORBID as Core write + FORBID-as-Lace-history explicit; fence is preference/reward/policy only (not Lace append / history rewrite).  
   - **P-A9:** FORBID Core continue + FORBID-as-POINTER-when + FORBID-as-store (KV) explicit; fence is prefill/decode/KV only; Φ stays `[GAP]`.  
   - **P-A3 / P-A6:** FORBID-as-store / FORBID as Core rows still under fence.  
8. **False-friend fence scan** — no fence that accidentally looks like Graphic D / 1D array / POINTER art.

Columns: `P · M · Cite · Stamp · Implements · Fence · Overview · FM · Verdict (PASS/FIX)`.

### D. Fixes (P6-F)

Allowed: align Implements/stamps/pins; tighten fences; tighten proposal wording; demote duplicate overviews; add OPEN rows with cause; move stamps under-fence if drifted into fence.  
Disallowed: soften FORBIDs for beauty; invent Φ; invent Lace tokenizer; merge into Core ASCII; invent Wave B/C from TOC alone; five-stakes rewrite unless CONFLICT.

### E. Receipt (P6-R)

Verdict: **DIAGRAM SOUND** / **DIAGRAM SOUND WITH OPENS** / **DIAGRAM BLOCKED**.  
Φ still `[GAP]`. Tokenizer still `[GAP]`. Wave B still deferred (default skip). Order Proposal still Shadow / non-binding.

---

## Already done (baseline — re-check, don’t assume)

| Layer | Pass 5 claim |
|---|---|
| P4-X | 9/9 PASS |
| P5-X | 11 PASS / 0 FIX |
| P5-O | one canonical overview |
| P5-P | Order Proposal on clipboard + ascii short mirror (Shadow / NON-binding) |
| Wave B | skipped |
| Emission / tokenizer | both `[GAP]` |

Pass 6 may **confirm** or **reopen** those claims with deeper evidence.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Promote proposal to Core / AGENTS.md / systems-manifest-ascii / Graphic D | Hands / Shadow only; FORBID-as-Core intact |
| Soften FORBID-as-Lace-identity / FORBID-as-store / next-token/decode / MASK≠cut / POINTER-when / corpus→DOCUMENT / Core rows / Lace-history | morals stand |
| Invent POINTER when / arity / adjacency | Φ `[GAP]` |
| Invent a Lace tokenizer (close PAGE F) | tokenizer `[GAP]` |
| Redraw Core `systems-manifest-ascii.md` | wrong object |
| Quiet rewrite of P3-M / five-stakes / map §3 | wrong scope — five-stakes rewrite only if CONFLICT |
| Wave B–D invent from TOC | default skip |
| `src/` or other-shelf edits | wrong Shadow shelf |
| Fold CC BY-NC body into Apache Core | license |
| Git-add PDF · push without ask | standing rules |
| Mark ascii Pass 6 EXECUTED / write P6 tables at **plan** time | plan only — execute writes P6-A/P/X/F/R |

---

## Products (execute)

1. **P6-A** checklist table (structure) — on clipboard Pass 6; pointer from ascii.  
2. **P6-P** proposal-rigor table + any wording fixes (still Shadow).  
3. **P6-X** deep accuracy matrix (9 panels + overview attach; special gates P-A2/P-A5/P-A8/P-A9).  
4. **P6-F** edits only if cited.  
5. **P6-R** receipt with overall verdict.  
6. Plan marked **EXECUTED**.

---

## Tickets

### T0 — Sync / claim

Before execute: `git pull --ff-only` · refresh claim `reference-Mapper` (or equivalent) if clock turned.

### T1 — Hands skim

Shoe → A–D → manifest → law → map §3 (X1–X7) → M-A* → ascii overview+panels → clipboard P5-P/P5-X → five-stakes PAGE 3/5 (read-only).

### T2 — PDF gate

Confirm `refs/local/xiao-zhu-foundations-llm.pdf` · SHA-256 `0f5d145d…ba50bc1a` · 277 pp · `git check-ignore` · never stage. Re-sight **only** where Cite match is thin / contested (light PDF).

### T3 — P6-A structural analysis of SOURCE MACHINERY

### T4 — P6-P Order Proposal rigor check (+ tighten if overclaim; FORBID-as-Core intact)

### T5 — P6-X deep panel re-walk (all P-A1…A9; special focus P-A2 / P-A5 / P-A8 / P-A9)

### T6 — P6-F fixes; reconfirm singular overview + stamp under-fence + no POINTER in fences

### T7 — P6-R receipt · plan EXECUTED · check · commit · release

```
./docs/coord/coord.sh check clipboards "reference-Mapper"
# commit: P6 tables + any fixes + receipt + plan EXECUTED
./docs/coord/coord.sh release clipboards "reference-Mapper"
```

Ask before push. Do **not** push unless asked.

---

## Acceptance tests (execute must pass)

1. P6-A checklist complete; every item PASS or OPEN-with-cause (spine, orphans, Wave A coverage, off-board, glyph discipline, stamp under-fence, singularity, panel coverage).  
2. P6-P shows proposal does not overclaim Core/Φ/tokenizer; FORBIDs explicit; mirror ≤ clipboard strength; FORBID-as-Core intact; still Shadow / non-binding.  
3. P6-X covers all P-A1…A9 with Implements reverse-walk + algorithm step fidelity + fence fidelity; special gates P-A2/P-A5/P-A8/P-A9 PASS.  
4. Overall verdict recorded (DIAGRAM SOUND / DIAGRAM SOUND WITH OPENS / DIAGRAM BLOCKED).  
5. Exactly one canonical overview; Core/Φ/tokenizer off-board.  
6. No Φ invent; no Lace tokenizer invent; map/law/graphics/Core ASCII/`src/`/five-stakes untouched except cited Shadow edits (five-stakes only if CONFLICT).  
7. PDF never staged; CC BY-NC body not pasted into Core.  
8. Steward refuse tests (shoe in hands):  
   - refuse “install this systems diagram as Graphic D / Core ASCII” using P6-A + P6-P alone;  
   - refuse “intern vocab as Lace WORD” using P-A2 / P6-X;  
   - refuse “MASK the strand” using P-A5 / P6-X;  
   - refuse “decode as POINTER when” / “KV as second store” using P-A9 / P6-X;  
   - refuse “RLHF as Lace history” using P-A8 / P6-X.

---

## Execution (when you say go pass 6)

1. Sync / refresh claim.  
2. T1–T6 (Wave B skip).  
3. Mark this plan EXECUTED.  
4. Check · commit · release.  
5. Stop. Do **not** push unless asked. Do **not** invent Wave B or Φ / Lace tokenizer.

---

## Steward test

Shoe in hands, or no.  
Pass 5 proposed order.  
Pass 6 **cross-examines** that the ASCII systems diagram is accurate and non-leaking.  
If the board leaks toward Core, or Implements no longer reverse-walk, or stamps leave the under-fence line into fence glyphs, it is not sound.  
Corpus boxes still do not fuel DOCUMENT.  
Vocab-intern boxes still are not Lace WORD identity.  
Embed / KV boxes still are not a second store.  
Next-token / MASK / decode boxes still are not continue / cut / POINTER when.  
Soft / SFT / RLHF boxes still are steward-only — not Lace history.  
Decisive judgment is release/stop — not Φ.  
Tokenizer stays `[GAP]`. Emission stays `[GAP]`.

---

## Plan receipt (EXECUTED)

| Field | Value |
|---|---|
| Status | **EXECUTED** |
| When (execute) | 2026-09-18 ~19:47 PT |
| Station | clipboards · claim `Xiao-Zhu Pass 6 execute` |
| Base (execute sync) | rebased plan tip onto `origin/main` `9f3dd6f` (local plan SHA moved `db97342`→`ca3ee92`); claim BASE=`9f3dd6f` |
| P6-A | **8 PASS · 0 OPEN** |
| P6-P | **7 PASS · 0 OPEN** · no wording fix · still Shadow / non-binding |
| P6-X | **9 PASS · 0 FIX** · special gates P-A2/P-A5/P-A8/P-A9 **PASS** |
| P6-F | **1** (ascii steward embed moral typo) |
| Verdict | **DIAGRAM SOUND** |
| Wave B | **SKIP** |
| Emission | `[GAP]` |
| Tokenizer | `[GAP]` |
| Push | **not** performed |
| Products | clipboard Pass 6 · ascii Status + P6 pointer + steward fix · this plan EXECUTED |
