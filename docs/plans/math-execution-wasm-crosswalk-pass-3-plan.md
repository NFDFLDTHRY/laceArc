# Mathematical execution × WASM Spec 3.0 — Pass 3 plan (adversarial misreadings)

**Status:** `[PLAN]` — not executed.
**Station:** maps (`docs/plans/**`).
**Pinned main at plan time:** `143af15ebefa0fc387c4d13a552e57089617dff4` (refresh on execute).
**Emission / Φ:** remains `[GAP]`. No `src/`.
**WASM role:** Shadow compile-target only. **Not** Core. **Not** Graphic D.

**Depends on:**
- Pass 1 map: [math-execution-wasm-crosswalk-pass-1.md](math-execution-wasm-crosswalk-pass-1.md)
- Pass 2 reading: [math-execution-wasm-crosswalk-pass-2-reading.md](math-execution-wasm-crosswalk-pass-2-reading.md) — KEEP/FORBID/SILENT ledger
- Math-execution Pass 4 adversarial catalog (cite-only pattern): [`../math-execution-model-pass-4-adversarial.md`](../math-execution-model-pass-4-adversarial.md)
- WASM mechanisms false-friend rows (cite-only): [`../clipboards/wasm-spec-3-mechanisms.md`](../clipboards/wasm-spec-3-mechanisms.md)
- G-III-4 fence; pointer-emission (questions only)

**One question:** Can concrete **adversarial misreadings** (false-friend sketches) be cataloged that violate Pass 2 FORBID/SILENT rows and Pass 1 M4 promotions — without inventing Φ, softening forbids, editing clipboards, or lifting BLOCKED-BRIDGE-COMPLETE?

**One result (on execute):** `docs/plans/math-execution-wasm-crosswalk-pass-3-adversarial.md` — adversarial / non-example catalog (not a bridge; not an emitter).

---

## 0. Inheritance

| From | Carry |
|---|---|
| Pass 1 | Two shelves; sealed holes; M4 forbids; READY-PARTIAL ∧ BLOCKED-BRIDGE |
| Pass 2 | K1 stamps; K2 KEEP; K3 FORBID; K4 SILENT/GAP; K5 seams; non-extension |
| Pass 2 handoff | Pass 3 only if human names a bounded task — **this plan is that task** |
| Math-exec Pass 4 | Shape of adversarial rows (sketch / attacks / cite / must-not-infer) |
| WASM M-T* | Existing **False friend** lines (FM-*) as cite sources — do not invent new Spec claims |

**Why this task:** Pass 2 stated the ledger. Pass 3 stresses it with concrete misreadings (same role math-exec Pass 4 played for the partial algebra).

---

## 1. What Pass 3 is / is not

| Is | Is not |
|---|---|
| Catalog of **adversarial misreadings** that break Pass 2 K3/K4 | A KEEP expansion that softens FORBID |
| Rows: ID · sketch · attacks (which K3/K4/M4) · cite · must-not-infer | Filling Φ by elimination |
| May cite existing FM-* false friends on mechanisms | Editing mechanisms / clipboard / ascii-machinery |
| Restates BLOCKED-BRIDGE-COMPLETE | `src/` / bridge crate / rust-nostd rewrite |

**Law:** Misreadings refute false bridges. They must not be inverted into “therefore emit when…”. Silence on Φ stands.

---

## 2. Product shape

### File

`docs/plans/math-execution-wasm-crosswalk-pass-3-adversarial.md`

Header: ADVERSARIAL misreading catalog; Shadow target only; Φ `[GAP]`; bridge blocked; does not amend Pass 1–2 products or WASM clipboards.

### Required sections

**A0 — Header & non-claims**  
Link Pass 1–2; math-exec Pass 4 as shape precedent; mechanisms FM-* as cite-only. Explicit: catalog ≠ Φ; catalog ≠ `src/`.

**A1 — Claim inventory under attack**  
Short list of sealed Pass 2 claims misreadings may stress (K3/K4/K5; not new claims).

**A2 — Adversarial catalog**  
Table (or numbered sketches). Each row:

| ID | Sketch (1–3 lines) | Attacks | Cite | Must not infer |
|---|---|---|---|---|

**Minimum coverage (execute must include at least these families):**

1. Linear mem ⇒ \(L\)  
2. Table ⇒ Star store  
3. Stack/frames ⇒ append log  
4. `br`/`return`/`call` ⇒ Φ  
5. Validate ⇒ admit POINTER  
6. Instantiate / decode ⇒ Core birth / `src/`  
7. wat/text ⇒ Hands law  
8. clock/wasm bake ⇒ Spec authority  
9. Pass 3 D1 ⇒ WASM trainer / scheduler  
10. Arrival ⇒ host ingest engine  
11. Trap ⇒ Lace cut  
12. Valtype ⇒ WORD/POINTER kinds  
13. Export/view chrome ⇒ write-back into \(L\)  
14. “All non-FORBID ops KEEP-emit” completeness-by-elimination  
15. Using this catalog as negative training for an emitter  

Add further rows only if Hands/Pass 2/clipboard-cited; do not invent Spec procedures.

**A3 — Relation to Pass 2**  
Pass 2 tables unchanged; A2 rows map onto K3/K4 IDs; cite conflicts ⇒ STOP row.

**A4 — Φ / G1 checklist (still open)**  
Q1–Q5 + G1: each misreading family does **not** answer them.

**A5 — Forbidden misuses of this catalog**  
Negative dataset for emit; completeness-by-elimination; elevating sketches to Hands; authorizing `src/`.

**A6 — Receipt**  
Pin SHA; Φ `[GAP]`; bridge blocked; steward tests.

---

## 3. Authority (execute, read-only except product)

1. Pass 2 reading (esp. K3–K5)  
2. Pass 1 map (M3–M4)  
3. Math-execution Pass 4 adversarial (shape precedent only)  
4. wasm-spec-3 mechanisms FM-* / M-T* (**cite-only — do not edit**)  
5. clipboard stamp legend; G-III-4  
6. pointer-emission (questions + non-answers)  
7. This plan  

Do not amend Pass 1–2 products, math-exec Pass 2–6, WASM clipboards, Graphics, or AGENTS. No `src/`.

---

## 4. Non-goals

- Filling Φ / lifting BLOCKED-BRIDGE-COMPLETE  
- Softening Pass 2 FORBID rows  
- Editing wasm-spec-3 products  
- New KEEP morphisms  
- rust-nostd / `src/`  
- Query API (G4)  

---

## 5. Tickets (execute order)

| ID | Work | Done when |
|---|---|---|
| T0 | ff-only main; pin SHA; claim `maps` if live | Pin + claim recorded (or skip noted) |
| T1 | Write A0–A1 from Pass 2 K3/K4 | Inventory matches sealed claims |
| T2 | Write A2 covering families 1–15 | Every row has Attacks / Cite / Must-not-infer |
| T3 | Write A3–A5 relation / Φ open / misuses | Q1–Q5 unanswered |
| T4 | A6 + index `docs/plans/README.md` | Steward lines present |
| T5 | check → PR → release `maps` | PR opened; Φ `[GAP]` |
| T6 | STOP | No Pass 4 unless human asks |

---

## 6. Steward tests (fail = delete the sentence)

1. If any misreading is used to **derive** Φ when/arity/adjacency, it failed.  
2. If a Pass 2 FORBID is softened or dropped, it failed.  
3. If mem/table/stack is allowed as \(L\), it failed.  
4. If clipboard products are edited, it failed.  
5. If BLOCKED-BRIDGE-COMPLETE is lifted, it failed.  
6. If the catalog authorizes `src/` or an emitter, it failed.  
7. If Pass 1–2 products are silently rewritten, it failed.

---

## 7. Handoff after successful Pass 3 execute

| Next | Only if |
|---|---|
| Human review of adversarial catalog | Default |
| Pass 4 (optional): only if human names a new bounded crosswalk task | Human asks; still no Φ |
| Emission acceptance | Human drives `pointer-emission.md` |
| rust-nostd / `src/` | **Blocked** until Φ accepted |
| Promote WASM ops into Core | **Never** |

---

## Receipt (plan only)

| Field | Value |
|---|---|
| Pass | Math-execution × WASM Pass 3 **plan** |
| Kind | `[PLAN]` adversarial misreading catalog authorization |
| Parent | Pass 2 KEEP/FORBID reading on main |
| Φ | `[GAP]` |
| Bridge | BLOCKED-BRIDGE-COMPLETE retained |
| Execute product | `docs/plans/math-execution-wasm-crosswalk-pass-3-adversarial.md` |
| Pinned main (plan time) | `143af15ebefa0fc387c4d13a552e57089617dff4` |
