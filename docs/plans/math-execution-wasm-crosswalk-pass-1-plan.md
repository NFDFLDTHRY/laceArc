# Mathematical execution × WASM Spec 3.0 — Pass 1 plan (problem map)

**Status:** `[PLAN]` — not executed.
**Station:** maps (`docs/plans/**`).
**Pinned main at plan time:** `a675ecff96cb5b4220519df101a59c3ccedeb4f0` (refresh on execute).
**Emission / Φ:** remains `[GAP]`. No `src/`.
**WASM role:** Shadow **compile-target** shelf only (`wasm64-unknown-unknown`). **Not** Core. **Not** Graphic D.

**Depends on (read-only):**
- Math-execution sealed stack on main: problem map Pass 1; model Pass 2; D witness Pass 3; adversarial Pass 4; A–C projections Pass 5; Arrival Pass 6
- WASM Spec 3.0 Shadow products: [`../clipboards/wasm-spec-3-clipboard.md`](../clipboards/wasm-spec-3-clipboard.md), [`../clipboards/wasm-spec-3-ascii-machinery.md`](../clipboards/wasm-spec-3-ascii-machinery.md), [`../clipboards/wasm-spec-3-mechanisms.md`](../clipboards/wasm-spec-3-mechanisms.md)
- Fence: systems-manifest-ascii **G-III-4** (linear mem/table/stack ≠ \(L\); br/return ≠ Φ; trap ≠ cut)
- Adjacent (cite only): [`rust-nostd-crate-map.md`](rust-nostd-crate-map.md), [`rust-nostd-branch-contracts.md`](rust-nostd-branch-contracts.md), [`../clock/wasm/README.md`](../clock/wasm/README.md), [`../pointer-emission.md`](../pointer-emission.md)

**One question:** What must be inventoried, sealed, and forbidden before any math-execution *reading* of the WASM Spec 3.0 compile-target shelf may begin — without promoting WASM into Core, filling Φ, amending Hands, or opening `src/`?

**One result (on execute):** `docs/plans/math-execution-wasm-crosswalk-pass-1.md` — a **problem map** (not a formal bridge model; not an emitter; not a crate plan rewrite).

---

## 0. Finding that opens this pass

| Ask | Fact |
|---|---|
| Did math-execution Passes 1–6 look at the WASM reference? | **No.** Zero cites of `wasm` / `WebAssembly` / `wasm-spec-3-*` in `docs/math-execution*.md` or `docs/plans/math-execution*.md` (verified at pin `a675ecff96cb5b4220519df101a59c3ccedeb4f0`). |
| Where does WASM live today? | Shadow Layer III: clipboard + ascii-machinery + mechanisms; ascii board **G-III-4**; clock/wasm bake is projection-only, not Spec authority. |
| Standing fence | KEEP-read-as-target · FORBID-as-Core-write · FORBID-as-Lace-store · FORBID-as-emission-rule · SILENT-for-Lace-append · no `src/` until Φ accepted |

This Pass 1 **does not** fix that omission by inventing a bridge. It authorizes a **problem map** so a later pass can crosswalk honestly.

---

## 1. What Pass 1 is / is not

| Is | Is not |
|---|---|
| A **problem map** of math-execution seals ∩ WASM target shelf | A WASM→Lace execution model or ISA rewrite of Pass 2 |
| Inventory of Hands/math-exec facts vs WASM Spec facts already stamped | Filling Φ from `br` / `call` / traps / validation |
| Explicit **KEEP / FORBID / GAP** ledger for any future crosswalk | Promoting linear memory / table / stack as \(L\) |
| Readiness verdict: what a later Pass 2 crosswalk *may* attempt | `src/`, crates.io, or rust-nostd map rewrite |
| Citation of G-III-4 and clipboard stamps | Editing clipboard / ascii-machinery / mechanisms products |

**Law:** WASM is a **compilation target** beside Lace, not Lace Core. Math-execution remains Hands-grounded. Crosswalk silence is preferable to smuggled Φ.

---

## 2. Product shape

### File

`docs/plans/math-execution-wasm-crosswalk-pass-1.md`

Header: PROBLEM MAP; Shadow compile-target only; Φ `[GAP]`; no `src/`; does not amend math-execution Pass 2–6 products or WASM clipboard products.

### Required sections

**M0 — Header & non-claims**  
State the finding (math-exec never cited WASM). Link math-exec stack + wasm-spec-3 trio + G-III-4. Explicit non-claims: not Core; not emission; not Graphic D; not clock/wasm bake-as-Spec.

**M1 — Two shelves (do not conflate)**  
Table: Math-execution partial algebra (Pass 2–6) vs WASM Spec 3.0 target shelf (clipboard stamps). Columns: role, authority, may write?, Φ status.

**M2 — Known facts that may ground a later crosswalk**  
Short cite list only (no invention): e.g. \(L\) append-only WORD/POINTER shape; Arrive; Star view; Contracts I–III; WASM module/validate/reduce/store as **target** semantics already stamped KEEP-read-as-target.

**M3 — Sealed holes (must stay open)**  
Φ Q1–Q5; G1 tokenization; any “WASM op ⇒ Arrive/Participate” map; host import as emission; trap as Lace cut.

**M4 — Forbidden promotions (failure modes)**  
At least: linear mem ⇒ \(L\); table ⇒ Star store; stack/frames ⇒ append log; br/return/call ⇒ Φ; validate ⇒ admit POINTER; instantiate ⇒ Core birth; wat ⇒ Hands; clock/wasm bake ⇒ Spec authority; math-exec Pass 3 D1 ⇒ WASM training set.

**M5 — Existing artifact audit**  
Paths + one-line role: math-exec Pass 1–6; wasm-spec-3 clipboard/ascii/mechanisms + passes 1–6 plans; rust-nostd maps; clock/wasm README; pointer-emission; G-III-4 rows. Mark each: cite-only / out-of-scope / must-not-edit this pass.

**M6 — Readiness verdict**  
Exactly one joint verdict for a *later* bounded crosswalk execute (proposed name Pass 2), e.g. **READY-PARTIAL-CROSSWALK ∧ BLOCKED-BRIDGE-COMPLETE** (or clearer equivalent): partial *map* of correspondences/refusals may proceed; complete bridge / `src/` blocked until Φ human-accepted.

**M7 — Handoff**  
Next authorized task (exactly one): Pass 2 crosswalk *reading* (KEEP/FORBID tables under math-exec vocabulary) **or** STOP pending human. No `src/`.

**M8 — Receipt**  
Pin SHA; Φ `[GAP]`; finding restated; steward tests.

---

## 3. Authority (execute, read-only except product)

1. Graphics A–D / systems-manifest (Hands) — via math-execution Pass 2 cites only  
2. Math-execution products Pass 1–6 (already on main)  
3. `docs/clipboards/wasm-spec-3-clipboard.md` + ascii-machinery + mechanisms (Shadow; cite-only — **do not edit**)  
4. `docs/systems-manifest-ascii.md` G-III-4 fence  
5. `docs/pointer-emission.md` (questions + non-answers)  
6. rust-nostd plans + `docs/clock/wasm/README.md` (adjacent cite-only)  
7. This plan  

Do not amend math-execution Pass 2–6 prose, WASM clipboard products, Graphics, or AGENTS. Do not elevate ASCII companion over Hands. Do not open `src/`.

---

## 4. Non-goals

- Filling Φ / answering WASM-as-emission  
- Rewriting Pass 2 algebra to match WASM ops  
- Editing wasm-spec-3 clipboard / mechanisms / ascii-machinery  
- rust-nostd crate tree rewrite  
- Choosing wasm32 (shelf target is **wasm64**)  
- Host embed / JS glue as Core  
- Query API (G4)  
- `src/` / crates.io  

---

## 5. Tickets (execute order)

| ID | Work | Done when |
|---|---|---|
| T0 | ff-only main; pin SHA; claim `maps` if live | Pin + claim recorded (or skip noted) |
| T1 | Reconfirm zero math-exec↔wasm cites; write M0–M1 | Finding + two-shelf table present |
| T2 | Write M2–M4 facts / sealed holes / forbidden promotions | Φ and store fences explicit |
| T3 | Write M5 artifact audit (paths only) | Each path role + edit policy |
| T4 | Write M6–M7 verdict + handoff | Exactly one next task; bridge complete blocked |
| T5 | M8 + index `docs/plans/README.md` | Steward lines present |
| T6 | check → PR → release `maps` | PR opened; Φ `[GAP]` |
| T7 | STOP | No Pass 2 crosswalk execute unless human asks |

---

## 6. Steward tests (fail = delete the sentence)

1. If WASM linear mem/table/stack is called Lace \(L\) / Star store, it failed.  
2. If br/return/call/trap is used to **answer** Φ, it failed.  
3. If math-execution Pass 2–6 products are silently rewritten, it failed.  
4. If wasm-spec-3 clipboard products are edited in this pass, it failed.  
5. If clock/wasm bake is treated as Spec 3.0 authority, it failed.  
6. If the map authorizes `src/` or a bridge crate, it failed.  
7. If the “math-exec never cited WASM” finding is omitted or softened without re-audit, it failed.

---

## 7. Handoff after successful Pass 1 execute

| Next | Only if |
|---|---|
| Human review of problem map | Default |
| Pass 2: bounded KEEP/FORBID crosswalk reading (math-exec vocabulary ↔ WASM target stamps) | Human asks; still no Φ; no clipboard edits |
| Emission acceptance | Human drives `pointer-emission.md` |
| rust-nostd / `src/` | **Blocked** until Φ accepted |
| Promote WASM ops into Core | **Never** under this campaign’s standing fence |

---

## Receipt (plan only)

| Field | Value |
|---|---|
| Pass | Math-execution × WASM Pass 1 **plan** |
| Kind | `[PLAN]` problem-map authorization |
| Finding | Math-execution Passes 1–6 **did not** cite WASM reference |
| Φ | `[GAP]` |
| Execute product | `docs/plans/math-execution-wasm-crosswalk-pass-1.md` |
| Pinned main (plan time) | `a675ecff96cb5b4220519df101a59c3ccedeb4f0` |
