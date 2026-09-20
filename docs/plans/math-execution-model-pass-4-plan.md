# Mathematical execution model — Pass 4 plan

**Status:** `[PLAN]` — not executed.
**Station:** maps (`docs/plans/**`).
**Depends on:**
- [math-execution-problem-map-pass-1.md](math-execution-problem-map-pass-1.md) — READY-PARTIAL ∧ BLOCKED-COMPLETE
- [math-execution-model-pass-2-plan.md](math-execution-model-pass-2-plan.md) + executed [`../math-execution-model.md`](../math-execution-model.md)
- [math-execution-model-pass-3-plan.md](math-execution-model-pass-3-plan.md) + executed [`../math-execution-model-pass-3-witness.md`](../math-execution-model-pass-3-witness.md)
**Pinned main at plan time:** `4de5fc106b128cad009a16abe4dc2ea875c79112` (refresh on execute).
**Emission / Φ:** remains `[GAP]`. No `src/`.

**One question:** Can the Pass 2 forbidden set, Pass 3 misreadings, and pointer-emission **non-answers** be turned into a catalog of **adversarial non-examples** (plus optional further bounded positive prefixes) that stress the partial algebra — without inventing emission or treating D1 as a generative policy?

**One result (on execute):** `docs/math-execution-model-pass-4-adversarial.md` (sibling doc; do not amend Pass 2 model or Pass 3 witness unless a cite conflict forces a STOP row).

---

## 0. Inheritance

| From | Carry |
|---|---|
| Pass 1 | READY-PARTIAL; BLOCKED-COMPLETE; Φ sealed; failure modes M6 |
| Pass 2 | `Arrive`/WORD; Star view; POINTER **shape** + backward-ref; Contracts I–III; forbidden morphisms S6; Φ hole |
| Pass 3 | D1 witness transcript; WORD = `Arrive`; POINTER = witness-only; W7 misreadings; Φ Q1–Q5 still open |
| Pass 3 handoff | Optional Pass 4 = further specimens / **adversarial non-examples**; still no Φ |

Pass 4 does **not** amend Pass 2 definitions or Pass 3’s D1 table unless a cite conflict is found — then STOP and open a conflict row; do not “fix” by invention.

---

## 1. What Pass 4 is / is not

| Is | Is not |
|---|---|
| A catalog of **adversarial non-examples** that violate Pass 2 shape / Contracts / S6 / Pass 1 M6 | An emission algorithm or negative training set that *defines* Φ |
| Optional **further positive prefixes** of Hands growth (e.g. empty \(L\), WORD-only prefixes of D1) as contrast specimens | New invented specimen tables not grounded in Hands / D1 |
| Mapping each non-example → which sealed claim or forbidden morphism it attacks | Closing Φ Q1–Q5 by process of elimination |
| Expanding Pass 3 W7 misreadings into concrete counter-sketches | Elevating `atomic-primitives-map.md` or emission DRAFT |
| Keeping every non-example tagged: *does not settle emission* | A test suite that greenlights `src/` |

**Law:** Non-examples may **refute a false reading** of the partial model. They must not be inverted into “therefore emit when …”. D1 remains a fixed specimen, not a scheduler (Pass 1 failure mode; Pass 3 law).

---

## 2. Product shape

### File

`docs/math-execution-model-pass-4-adversarial.md`

Header must say: ADVERSARIAL / non-example catalog; not an emitter; Φ `[GAP]`; does not extend Core morphisms beyond Pass 2; does not rewrite Pass 3’s D1 witness.

### Required sections

**A0 — Header & non-claims**  
Link Pass 2 model, Pass 3 witness, Pass 1 M6, Pass 2 S6, [`../pointer-emission.md`](../pointer-emission.md) explicit non-answers. Explicit: catalog ≠ Φ; catalog ≠ `src/` license.

**A1 — Claim inventory under attack**  
Short list of *already sealed* claims that non-examples may stress (not new claims):
- append-only \(L\); permanent indices  
- `Arrive` = WORD append only  
- POINTER shape: refs earlier, same line (hard constraint; not emission)  
- Star = view, not store  
- Contracts I / II / III boundaries  
- Φ Q1–Q5 unanswered  
- Pass 3: D1 POINTER rows witness-only  

**A2 — Adversarial non-example catalog**  
One table (or numbered sketches). Each row must have:

| ID | Sketch (1–3 lines) | Attacks | Cite | Must not infer |
|---|---|---|---|---|
| N01 | … | which S6 / M6 / W7 / Contract | Hands / Pass 2 / emission non-answer | Explicit one-liner |

**Minimum coverage (execute must include at least these families):**

1. **Mutate / delete / reset / index reuse** (S6 item 1; M6)  
2. **Intern / collapse occurrences / count field** (S6 item 2; Pass 3 three identities)  
3. **Star / meaning / embedding / N-D store beside \(L\)** (S6 item 3)  
4. **Edge table / graph DB outside \(L\)** (S6 item 4)  
5. **Second Lace / second row-kind schema** (S6 item 5)  
6. **Projection write-back** (S6 item 6; Contract III)  
7. **Forward ref / off-line ref** (Pass 2 S4 hard constraint; emission §4)  
8. **Adjacent-WORD ⇒ emit** (Pass 3 W7; emission Q3; M6.7)  
9. **D1 binary drawing ⇒ arity law** (emission Q2; Pass 3 W7)  
10. **D1 as scheduler / training set / generative policy** (Pass 3 law; M6.7)  
11. **Shadow Anchor / OBS / “touch grows lace” as emit** (S6 item 8; emission non-answers)  
12. **Emission DRAFT commit / ASCII companion as Hands acceptance** (S6 item 9; M6.4–5)  
13. **`src/` / Cargo “to explore”** (S6 item 10; M6.6)  
14. **Membership set ⇒ complete star** (Pass 3 W3/W7)  
15. **Depicted operand arrow ⇒ append-order / emission rule** (Pass 3 W4)

Add further rows only if Hands-cited; do not invent cute failures without a cite.

**A3 — Optional further positive specimens (bounded)**  
At most: empty \(L\); WORD-only prefixes of D1 (e.g. through 0001 before first POINTER). Label each as **prefix of published specimen**, not a new story. State explicitly: WORD-only prefix does **not** settle emission Q3.

**A4 — Φ checklist (still open)**  
Repeat Q1–Q5: each non-example family **does not** answer the question (one line each).

**A5 — Relation to Pass 3**  
D1 table unchanged. Pass 4 may cite W2–W7; must not re-transcribe unless correcting a documented cite conflict.

**A6 — Forbidden misuses of this catalog**  
Short list: using N-rows as negative dataset to train emit; “all other cases emit”; completeness-by-elimination; elevating sketches to Hands law.

**A7 — Receipt**  
Pin SHA; Φ `[GAP]`; no `src/`; steward tests.

---

## 3. Authority (execute, read-only except product)

1. Graphics A–D PNGs (Hands)  
2. Pass 2 `docs/math-execution-model.md` (esp. S4–S6)  
3. Pass 3 `docs/math-execution-model-pass-3-witness.md` (esp. W3–W7)  
4. `docs/systems-manifest.md` (Pieces as cited by Pass 2)  
5. `docs/pointer-emission.md` (questions + **explicit non-answers** only — still DRAFT)  
6. Pass 1 problem map M6 failure modes  
7. This plan  

Do not amend Pass 2 model, Pass 3 witness, Graphics, manifest, emission draft, or AGENTS. Do not elevate `docs/atomic-primitives-map.md`.

---

## 4. Non-goals

- Filling Φ / accepting emission  
- Extending `Arrive` or adding `Participate`  
- New Core equations beyond Pass 2  
- Rust crates / `src/`  
- Shadow FSM / hologram IR  
- Re-auditing ASCII passes  
- Inventing a second specimen saga beyond D1 prefixes  
- A “complete” taxonomy of all possible mistakes  

---

## 5. Tickets (execute order)

| ID | Work | Done when |
|---|---|---|
| T0 | ff-only main; pin SHA; claim `maps` if live | Pin + claim recorded (or skip noted if stale holds) |
| T1 | Write A0–A1 from Pass 2/3/1 cites | Inventory matches sealed claims only |
| T2 | Write A2 catalog covering families 1–15 | Every row has Attacks / Cite / Must-not-infer |
| T3 | Write A3 optional prefixes (or explicit “omitted — D1 W1 sufficient”) | No invented tables |
| T4 | Write A4–A6 Φ still open + catalog misuses | Q1–Q5 unanswered |
| T5 | A7 + index `docs/plans/README.md` | Steward lines present |
| T6 | check → PR → release `maps` | PR opened; Φ `[GAP]` |
| T7 | STOP | No Pass 5 unless human asks |

---

## 6. Steward tests (fail = delete the sentence)

1. If any non-example is used to **derive** when/arity/adjacency emission, it failed.  
2. If D1 is called a scheduler, training set, or generative policy, it failed.  
3. If Pass 2’s Φ hole is closed, it failed.  
4. If a new specimen table appears without Hands cite, it failed.  
5. If Star becomes a table or Shadow state enters \(L\), it failed.  
6. If the catalog is said to authorize `src/`, it failed.  
7. If Pass 2 or Pass 3 products are silently rewritten “for consistency,” it failed.

---

## 7. Handoff after successful Pass 4 execute

| Next | Only if |
|---|---|
| Human review of adversarial catalog | Default |
| Emission acceptance (human) | Human drives `pointer-emission.md` |
| Pass 5 (optional): only if human names a new bounded math-execution task | Human asks; still no Φ unless accepted |
| Core `src/` / crates | **Blocked** until Φ accepted |

---

## Receipt (plan only)

| Field | Value |
|---|---|
| Pass | Math-execution Pass 4 **plan** |
| Kind | `[PLAN]` adversarial non-example catalog authorization |
| Parent | Pass 3 witness + Pass 2 partial model on main |
| Φ | `[GAP]` |
| Execute product | `docs/math-execution-model-pass-4-adversarial.md` |
| Pinned main (plan time) | `4de5fc106b128cad009a16abe4dc2ea875c79112` |
