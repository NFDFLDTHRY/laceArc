# Mathematical execution model — Pass 2 plan

**Status:** `[PLAN]` — not executed. Authorization to write a sealed **partial** model only.
**Station:** maps (`docs/plans/**` for this plan; product may sit at docs root under maps catch-all or as cited below).
**Depends on:** [math-execution-problem-map-pass-1.md](math-execution-problem-map-pass-1.md) — verdict **READY-PARTIAL ∧ BLOCKED-COMPLETE** (merged PR #3).
**Pinned main at plan time:** refresh on execute (`git rev-parse origin/main`).
**Emission / Φ:** remains `[GAP]`. No `src/`. No Cargo. No emitter stub.

**One question:** What exact sealed-partial document may Pass 2 write, from which Hands cites, without answering Φ?

**One result (on execute):** `docs/math-execution-model.md` — a partial transition-system reading of Hands. This plan file does not write that body.

---

## 0. Inheritance from Pass 1

Pass 1 already decided:

| Decision | Carry into Pass 2 |
|---|---|
| READY-PARTIAL | Pass 2 **may** write the sealed partial model |
| BLOCKED-COMPLETE | Pass 2 **must not** claim a total Core step or open `src/` |
| Φ / G2 sealed | Name the hole; link `docs/pointer-emission.md`; invent nothing |
| Shadow / H×C×W out of Core | Universe = Hands \(L\) only |
| Soft: pin SHA; diff Hands §2 vs atomic map; header discipline | Do these in execute tickets before/while drafting |

Pass 2 does **not** reopen the problem map unless a Hands source conflict appears; then STOP and amend Pass 1 with a cited conflict row.

---

## 1. Product

| Item | Path | Role |
|---|---|---|
| Partial model (execute output) | `docs/math-execution-model.md` | Sealed Hands transition reading |
| This plan | `docs/plans/math-execution-model-pass-2-plan.md` | Authorization + tickets |
| Index | `docs/plans/README.md` | One row for this plan; after execute, note model path |

**Document header (required on the model file):**

- Status: PARTIAL mathematical execution model — not an emitter  
- Completeness requires human-accepted Φ  
- Φ / POINTER emission = `[GAP]`  
- No `src/` implied  
- Authority order: Graphics A–D → systems-manifest → ASCII companion → this formalization (lowest)

---

## 2. Authority order (execute, read-only except product)

1. `docs/graphics/` A–D (D = sole store)  
2. `docs/systems-manifest.md`  
3. `docs/systems-manifest-ascii.md` (companion; not Hands)  
4. `AGENTS.md` + law-why / staking  
5. `docs/pointer-emission.md` (DRAFT questions only)  
6. Align-without-elevating: `docs/atomic-primitives-map.md`, Hands §2 of `docs/clock/system-mathematical-model.md`  
7. Pass 1 problem map (readiness + failure modes)

Do not amend Graphics, manifest, ASCII, emission draft, or AGENTS in Pass 2.

---

## 3. Required sections of `docs/math-execution-model.md`

### S0 — Header & non-claims
Partial vs complete; Φ sealed; Shadow excluded; file-existence ≠ acceptance.

### S1 — Universe & state
- \(\mathcal{H}\) only; sole carrier \(L = (e_0,\ldots,e_{n-1})\)  
- \(\mathsf{Kind} = \{\mathsf{WORD}, \mathsf{POINTER}\}\)  
- Indices permanent; append-only  
- Cite Graphic D + Pieces 1, 4–6  

### S2 — Defined morphism: Arrive / WORD
- \(\mathsf{Arrive}(v): L \mapsto L{}^\smallfrown(\mathsf{WORD}, v)\)  
- Dual voice of Piece 2 stated as **one** operator whose WORD half is this append  
- Token/identity details = G1 `[GAP]` (shape still writeable)

### S3 — Readings (not stores)
- \(\mathrm{Star}(v)\) as index set / formation view — **not** a table  
- Sequence-as-route (Piece 8)  
- Touch / re-entry as later participation **reading** — construction still needs Φ  
- Layer III \(\pi: L \to \mathsf{View}\) with no write-back

### S4 — POINTER shape + sealed Φ
- Example/shape: refs to earlier indices on the same line (Hands constraint)  
- Arity in Graphic D is illustrative, not law  
- \(\Phi\) = emission rule = `[GAP]`  
- Enumerate `pointer-emission.md` questions 1–5 **unanswered**  
- Explicit: adjacency-as-relation unanswered; do not default

### S5 — Contracts I / II / III
Map ASCII boxes → formal roles; Piece 12 = reading of I, not Contract IV; Pieces 9–10 = use of I.

### S6 — Forbidden morphisms `[X]`
Delete, rewrite, reset, cut, intern-with-count, Star table, meaning store, graph DB, N-D store, second Lace, write-back from III, Shadow oil in \(L\).

### S7 — Alignment note
Short diff table: this doc ↔ atomic P0–P4 ↔ Hands §2 — same atoms or marked PROPOSAL-only. No silent elevation of proposals to law.

### S8 — Steward receipt
Pin SHA; Φ `[GAP]`; READY-PARTIAL satisfied; BLOCKED-COMPLETE restated; shoe-in-hands line.

---

## 4. Explicit non-goals (Pass 2 execute)

- Answering G1–G7 / accepting emission  
- Total `Step` / `Participate` algorithm  
- Shadow FSM, hologram IR, rust crate births  
- ASCII re-audit  
- `src/`, Cargo.toml, emit stubs  
- Inferring Φ from Graphic D’s illustrative mix

---

## 5. Tickets (execute order)

| ID | Work | Done when |
|---|---|---|
| T0 | `ff-only` main; pin SHA into model header; `coord.sh which` + `claim maps` | Claim held; pin recorded |
| T1 | Soft diff Hands §2 vs atomic P0–P4 (notes in S7 only) | Conflicts cited or “no fork” |
| T2 | Write S0–S3 from Graphics + manifest only | Every morphism cited; Star not a table |
| T3 | Write S4: shape + Φ hole + emission questions listed unanswered | Zero invented when/arity/adjacency |
| T4 | Write S5–S6 from ASCII contract map + AGENTS forbiddens | Piece 12 not Contract IV |
| T5 | S7 alignment + S8 receipt; index README row for model | Steward lines present |
| T6 | `coord.sh check` → commit → `release maps` → PR | PR opened; Φ still `[GAP]` |
| T7 | STOP | No Pass 3 scheduled unless human asks |

---

## 6. Steward tests (fail = delete the sentence)

1. If the model answers “when is a POINTER written?”, it failed.  
2. If Star is allocatable storage, it failed.  
3. If Shadow state appears inside \(L\), it failed.  
4. If it implies `src/` is allowed, it failed.  
5. If you cannot walk Arrive with a shoe-lace metaphor for WORD-only growth, it failed.  
6. If ASCII is cited as Hands authority over a PNG, it failed.

---

## 7. Handoff after successful Pass 2 execute

| Next | Only if |
|---|---|
| Human review of `docs/math-execution-model.md` | Default |
| Emission acceptance work | Human drives `pointer-emission.md` — **not** a Math-Solver invent pass |
| Pass 3 (optional): Graphic D example as witness transcript under partial algebra | Human asks; still no Φ |
| Rust nostd Core crates | **Blocked** until Φ accepted |

---

## Receipt (plan only)

| Field | Value |
|---|---|
| Pass | Math-execution model Pass 2 **plan** |
| Kind | `[PLAN]` authorization for sealed partial model |
| Parent | Pass 1 problem map (PR #3) |
| Φ | `[GAP]` |
| Execute product | `docs/math-execution-model.md` |
