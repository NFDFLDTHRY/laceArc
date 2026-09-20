# Mathematical execution model — Pass 3 plan

**Status:** `[PLAN]` — not executed.
**Station:** maps (`docs/plans/**`).
**Depends on:**
- [math-execution-problem-map-pass-1.md](math-execution-problem-map-pass-1.md) — READY-PARTIAL ∧ BLOCKED-COMPLETE
- [math-execution-model-pass-2-plan.md](math-execution-model-pass-2-plan.md) + executed [`../math-execution-model.md`](../math-execution-model.md)
**Pinned main at plan time:** refresh on execute.
**Emission / Φ:** remains `[GAP]`. No `src/`.

**One question:** Can Graphic D’s published example be transcribed as a **witness** under the Pass 2 partial algebra — showing which steps are instances of defined morphisms vs which rows only *appear* without Φ — without inventing emission?

**One result (on execute):** `docs/math-execution-model-pass-3-witness.md` (or a clearly marked `## W` appendix only if the human prefers a single file — default is a **sibling witness doc**, so Pass 2’s sealed model stays stable).

---

## 0. Inheritance

| From | Carry |
|---|---|
| Pass 1 | READY-PARTIAL; BLOCKED-COMPLETE; Φ sealed |
| Pass 2 | `Arrive`/WORD defined; Star view; POINTER **shape** + backward-ref; `Participate`/`Φ` hole; forbidden set |
| Pass 2 handoff | Optional Pass 3 = Graphic D example as witness transcript; still no Φ |
| Atomic map §3 | D1 table 0000–0010 as necessity witness, **not** a scheduler |

Pass 3 does **not** amend Pass 2’s definitions unless a cite conflict is found — then STOP and open a conflict row, do not “fix” by invention.

---

## 1. What Pass 3 is / is not

| Is | Is not |
|---|---|
| A **prefix transcript** of Graphic D’s example rows under partial algebra | An emission algorithm derived from the example |
| Label each row: WORD via `Arrive`, or POINTER as **witness-only** (exists in source; construction rule still Φ) | “Therefore adjacent WORDs emit POINTER” |
| Separate three identities (occurrence / word-variable / cluster label) on PIE 0000 vs 0003 | Collapsing PIE occurrences |
| Separate three orders (append order / POINTER-to-operand ref / depicted operand arrow) | “All arrows go backward” |
| Restate necessity witnesses already in atomic §3 in Pass 2’s vocabulary | Elevating atomic map from PROPOSAL to law |
| Keep Φ questions 1–5 unanswered | Answering when/arity/adjacency from D1 |

**Law:** D1 is a fixed source specimen. It may **witness or refute** a bounded claim. It is not generated output and not a training set for inventing Φ (Pass 1 failure mode #7; atomic §3).

---

## 2. Product shape

### File

`docs/math-execution-model-pass-3-witness.md`

Header must say: WITNESS transcript; not an emitter; Φ `[GAP]`; does not extend Core morphisms beyond Pass 2.

### Required sections

**W0 — Header & non-claims**  
Link Pass 2 model + Graphics D + atomic §3 as specimen source. Explicit: example ≠ scheduler.

**W1 — Specimen table**  
Transcribe D1 rows 0000–0010 (WORD/POINTER and depicted refs) with cites. No extra rows.

**W2 — Step audit under partial algebra**  
For each index, one line:

| index | kind | Pass-2 status |
|---|---|---|
| 0000 | WORD PIE | Instance of `Arrive(PIE)` |
| 0001 | WORD DESSERT | Instance of `Arrive(DESSERT)` |
| 0002 | POINTER 0000→0001 | **Witness-only** — shape OK (backward); emission reason Φ `[GAP]` |
| … | … | … |

Never write “emitted because …” with a filled because.

**W3 — Three identities on PIE**  
Occurrence 0000 ≠ 0003; word-variable reading; cluster label ≠ permission to mutate history.

**W4 — Three orders**  
Append order vs POINTER-section→operand refs (strict descent) vs depicted operand arrows (need not descend). Cite atomic §3 / D1.

**W5 — Necessity witnesses (bounded)**  
Restate only: (1) repeated occurrence, (2) participation-in-participation 0007/0009/0010, (3) continued reuse without editing earlier POINTERs. Mark **not** a completeness theorem.

**W6 — Φ checklist (still open)**  
Map each emission draft Q1–Q5 to “D1 does not settle this” with one-line why.

**W7 — Forbidden misreadings**  
Short list: adjacent-WORD⇒emit; membership⇒full star; example⇒arity law; OBS/Anchor⇒emit; etc.

**W8 — Receipt**  
Pin SHA; Φ `[GAP]`; no `src/`; steward tests.

---

## 3. Authority (execute, read-only except product)

1. Graphic D PNG  
2. Pass 2 `docs/math-execution-model.md`  
3. `docs/systems-manifest.md` Pieces 4–5, 7, 11  
4. `docs/pointer-emission.md` (questions only)  
5. `docs/atomic-primitives-map.md` §3 as **specimen transcription aid** (PROPOSAL — do not elevate)  
6. This plan

Do not amend Pass 2 model, Graphics, manifest, emission draft, or AGENTS.

---

## 4. Non-goals

- Filling Φ / accepting emission  
- Extending `Arrive` or adding `Participate`  
- New Core equations beyond Pass 2  
- Rust crates / `src/`  
- Shadow FSM / hologram IR  
- Re-auditing ASCII passes  
- Treating D1 as generative policy

---

## 5. Tickets (execute order)

| ID | Work | Done when |
|---|---|---|
| T0 | ff-only main; pin SHA; claim `maps` | Pin + claim recorded |
| T1 | Transcribe W1 table from Graphic D / atomic §3; cross-check PNG narrative if needed | 0000–0010 match specimen; no extra rows |
| T2 | Write W2 step audit (Arrive vs witness-only POINTER) | Every POINTER row marked witness-only + Φ |
| T3 | Write W3–W5 identities, orders, necessity witnesses | Bounded claims only |
| T4 | Write W6–W7 Φ checklist + misreadings | Q1–Q5 still unanswered |
| T5 | W0/W8 + index `docs/plans/README.md` | Steward lines present |
| T6 | check → PR → release `maps` | PR opened; Φ `[GAP]` |
| T7 | STOP | No Pass 4 unless human asks |

---

## 6. Steward tests (fail = delete the sentence)

1. If any line explains **why** a POINTER was required, it failed.  
2. If arity is declared from D1, it failed.  
3. If adjacent WORDs are said to emit, it failed.  
4. If Pass 2’s Φ hole is closed, it failed.  
5. If Star becomes a table, it failed.  
6. If D1 is called a scheduler or training set, it failed.

---

## 7. Handoff after successful Pass 3 execute

| Next | Only if |
|---|---|
| Human review of witness doc | Default |
| Emission acceptance (human) | Human drives `pointer-emission.md` |
| Pass 4 (optional): further specimens / adversarial non-examples | Human asks; still no Φ |
| Core `src/` / crates | **Blocked** until Φ accepted |

---

## Receipt (plan only)

| Field | Value |
|---|---|
| Pass | Math-execution Pass 3 **plan** |
| Kind | `[PLAN]` witness transcript authorization |
| Parent | Pass 2 partial model on main |
| Φ | `[GAP]` |
| Execute product | `docs/math-execution-model-pass-3-witness.md` |
