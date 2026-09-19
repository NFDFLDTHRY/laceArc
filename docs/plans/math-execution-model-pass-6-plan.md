# Mathematical execution model — Pass 6 plan

**Status:** `[PLAN]` — not executed.
**Station:** maps (`docs/plans/**`).
**Depends on:**
- [math-execution-problem-map-pass-1.md](math-execution-problem-map-pass-1.md) — READY-PARTIAL ∧ BLOCKED-COMPLETE
- [math-execution-model-pass-2-plan.md](math-execution-model-pass-2-plan.md) + executed [`../math-execution-model.md`](../math-execution-model.md)
- [math-execution-model-pass-3-plan.md](math-execution-model-pass-3-plan.md) + executed [`../math-execution-model-pass-3-witness.md`](../math-execution-model-pass-3-witness.md)
- [math-execution-model-pass-4-plan.md](math-execution-model-pass-4-plan.md) + executed [`../math-execution-model-pass-4-adversarial.md`](../math-execution-model-pass-4-adversarial.md)
- [math-execution-model-pass-5-plan.md](math-execution-model-pass-5-plan.md) + executed [`../math-execution-model-pass-5-projections.md`](../math-execution-model-pass-5-projections.md)
**Pinned main at plan time:** `5da058eb5802b2f2c660e0707792232b6109450f` (refresh on execute).
**Emission / Φ:** remains `[GAP]`. No `src/`.

**One question:** Can **Contract II (Arrival)** — Piece 3’s thin ordered feed into \(\mathsf{Arrive}\), with Pieces 9–10 as *use of I* on other streams — be transcribed as a bounded reading under Pass 2: what may enter the strand, what Arrival must not store, and how Arrival relates to Contracts I and III — without filling Φ (including tokenization G1) or amending Pass 2–5 products?

**One result (on execute):** `docs/math-execution-model-pass-6-arrival.md` (sibling doc; do not amend Pass 2–5 products unless a cite conflict forces a STOP row).

---

## 0. Inheritance

| From | Carry |
|---|---|
| Pass 1 | READY-PARTIAL; BLOCKED-COMPLETE; Φ sealed; G1 tokenization soft/hard-for-ingest; K11 Contract II = thin Arrival |
| Pass 2 | \(\mathsf{Arrive}\)/WORD; S5 Contract II row; S6 forbidden (esp. second store at edge); Φ hole |
| Pass 3 | D1 storage specimen — arrivals already *on* \(L\), not an Arrival engine |
| Pass 4 | Refusals: second store (N03–N05); write-back (N06); adjacency⇒emit (N08) |
| Pass 5 | Contract III projection readings complete for A–C; handoff allows Pass 6 if human names a task |
| Pass 5 handoff | Soft G4 query API still **not** this pass |

**Why this task:** Pass 2 named three contracts; Pass 3–4 stressed Core store + refusals; Pass 5 sealed Contract III views. Contract II Arrival is the remaining contract surface in the triad — still without inventing emission or a lexicon store.

Pass 6 does **not** amend Pass 2–5 products unless a cite conflict is found — then STOP and open a conflict row; do not “fix” by invention.

---

## 1. What Pass 6 is / is not

| Is | Is not |
|---|---|
| A **Contract II Arrival reading** under Pass 2 S5 + Piece 3 | An emission rule or POINTER scheduler |
| States: thin ordered feed into \(\mathsf{Arrive}\); **zero own store** | A document / vocabulary / parse store at the edge |
| Pieces 9–10 as *same surface, other streams* (use of I), not extra engines | A second Lace or NLP preprocessor that drops tokens |
| Marks tokenization / case / multiword identity as **G1 `[GAP]`** (may note Soft) | Answering G1 or Φ Q1–Q5 |
| Seams: Arrival → I (append only); Arrival ↛ III write; Arrival ↛ Φ | A query / traversal API (G4) |

**Law:** Arrival is punch-card fidelity into Contract I. Sequence of appends *is* the recognized order. Interpreting before append, or keeping a second store at the edge, is out of model (Piece 3 failure modes; Piece 14).

---

## 2. Product shape

### File

`docs/math-execution-model-pass-6-arrival.md`

Header must say: ARRIVAL reading; Contract II; not an emitter; Φ `[GAP]`; G1 tokenization still open; does not extend Core morphisms beyond Pass 2; does not rewrite Pass 2–5 products.

### Required sections

**R0 — Header & non-claims**  
Link Pass 2 S2 / S5 Contract II; Piece 3; Pieces 9–10 as use-of-I; Pass 4 N03–N05 / N08; Pass 5 (III ≠ II). Explicit: feed ≠ store; feed ≠ emit; arrival ≠ projection.

**R1 — Arrival schema (sealed, not new)**  
Restate only Pass 2 + Piece 3:
- Ordered word-occurrences feed \(\mathsf{Arrive}(v)\) appends into \(L\).
- Zero persistent state in II beyond the act of feeding I.
- No new morphism.

**R2 — May / must-not at the edge**  
Table: may (preserve order; feed WORD values; multiple streams via 9–10 as use of I) / must-not (parse-away; drop stopwords; intern; keep doc/lexicon/parse store; emit POINTER from II; write from III back through II).

**R3 — Streams (Pieces 9–10)**  
Bounded: document feed and dictionary feed are the **same Arrival surface** on different streams — not peer engines, not second stores. Cite systems-manifest Contract II paragraph.

**R4 — Seams to I / III / Φ**  
Short table: II→I append only; II does not fill Φ; III reads I only (Pass 5); adjacency in the feed does not settle emission Q3 (Pass 4 N08).

**R5 — G1 / Φ checklist (still open)**  
G1 tokenization + Φ Q1–Q5: each **not** answered by this reading (one line each).

**R6 — Forbidden misreadings**  
Short list: Arrival = NLP pipeline; Arrival keeps corpus DB; Pieces 9–10 = extra Cores; punch-card ⇒ adjacency emit; tokenization choice ⇒ Hands law; this doc ⇒ `src/`.

**R7 — Receipt**  
Pin SHA; Φ `[GAP]`; G1 open; no `src/`; steward tests.

---

## 3. Authority (execute, read-only except product)

1. Pass 2 `docs/math-execution-model.md` (esp. S2 \(\mathsf{Arrive}\), S5 Contract II, S6)
2. `docs/systems-manifest.md` Piece 3; Contract II paragraph; Pieces 9–10 only as *use of I*
3. Pass 4 adversarial catalog (N03–N05, N08 cross-links)
4. Pass 5 projections (II ≠ III seam only)
5. Pass 1 map (K11; G1)
6. `docs/pointer-emission.md` (questions + non-answers only — still DRAFT)
7. This plan

Do not amend Pass 2–5 products, Graphics, manifest, emission draft, or AGENTS. Do not elevate `docs/atomic-primitives-map.md` or Shadow / RIC holder intake as Contract II.

---

## 4. Non-goals

- Filling Φ / accepting emission  
- Answering G1 tokenization / case / multiword rules  
- Extending \(\mathsf{Arrive}\) or adding \(\mathsf{Participate}\)  
- Query / traversal / indexer API (G4)  
- NLP preprocessor design  
- Shadow FSM / gearing as Arrival  
- HTML / hologram deploy work  
- `src/` / crates  

---

## 5. Tickets (execute order)

| ID | Work | Done when |
|---|---|---|
| T0 | ff-only main; pin SHA; claim `maps` if live | Pin + claim recorded (or skip noted) |
| T1 | Write R0–R1 from Pass 2 S5 + Piece 3 | Schema restated; no new morphism |
| T2 | Write R2–R3 may/must-not + streams 9–10 | Zero-store invariant explicit |
| T3 | Write R4 seams I / III / Φ | N08 adjacency≠emit; III read-only |
| T4 | Write R5–R6 G1/Φ open + misreadings | Q1–Q5 and G1 unanswered |
| T5 | R7 + index `docs/plans/README.md` | Steward lines present |
| T6 | check → PR → release `maps` | PR opened; Φ `[GAP]` |
| T7 | STOP | No Pass 7 unless human asks |

---

## 6. Steward tests (fail = delete the sentence)

1. If Arrival is given a document/lexicon/parse **store**, it failed.  
2. If II is said to **emit** POINTER or settle adjacency⇒emit, it failed.  
3. If Pieces 9–10 become peer Cores or second Laces, it failed.  
4. If G1 or Φ Q1–Q5 is answered, it failed.  
5. If Shadow / RIC intake is called Contract II, it failed.  
6. If the doc authorizes `src/` or a tokenizer crate as Hands law, it failed.  
7. If Pass 2–5 products are silently rewritten “for consistency,” it failed.

---

## 7. Handoff after successful Pass 6 execute

| Next | Only if |
|---|---|
| Human review of Arrival reading | Default |
| Emission acceptance (human) | Human drives `pointer-emission.md` |
| Pass 7 (optional): only if human names a new bounded math-execution task | Human asks; still no Φ unless accepted |
| Soft G4 query API / traversal | **Not** authorized — needs its own named task |
| G1 tokenization acceptance | Human; separate from Φ unless human couples them |
| Core `src/` / crates | **Blocked** until Φ accepted |

---

## Receipt (plan only)

| Field | Value |
|---|---|
| Pass | Math-execution Pass 6 **plan** |
| Kind | `[PLAN]` Contract II / Arrival reading authorization |
| Parent | Pass 2 S5 + Pass 5 III complete on main |
| Φ | `[GAP]` |
| G1 | still open |
| Execute product | `docs/math-execution-model-pass-6-arrival.md` |
| Pinned main (plan time) | `5da058eb5802b2f2c660e0707792232b6109450f` |
