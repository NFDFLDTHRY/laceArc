# Mathematical execution model — Pass 6 Arrival (Contract II)

**Status:** ARRIVAL reading under Pass 2 Contract II / Piece 3. **Not an emitter.**
**Pass:** 6 execute (authorized by [plans/math-execution-model-pass-6-plan.md](plans/math-execution-model-pass-6-plan.md)).
**Parents:** [math-execution-model.md](math-execution-model.md) (Pass 2); [math-execution-model-pass-3-witness.md](math-execution-model-pass-3-witness.md); [math-execution-model-pass-4-adversarial.md](math-execution-model-pass-4-adversarial.md); [math-execution-model-pass-5-projections.md](math-execution-model-pass-5-projections.md).
**Pinned main:** `5da058eb5802b2f2c660e0707792232b6109450f`.
**Emission / Φ:** `[GAP]`. **G1 tokenization:** still open. No `src/`.

**Source roles:** Graphics A–D are the source of record; the manifest is derived from them. AGENTS / live law govern permitted work. **Reading dependencies:** Pass 2 S2 / S5 Contract II / S6; manifest Piece 3, Contract II, and Pieces 9–10 as *use of I*; Pass 4 N03–N05 / N08; Pass 5 (II ≠ III); Pass 1 K11 / G1; [pointer-emission.md](pointer-emission.md) with its closed constraints and unresolved questions. This order describes derivation, not an authority ranking or acceptance.

Steward line: *Shoe in hands. Arrival feeds the strand. It does not keep a second book, and it does not decide participation.*

---

## R0 — Header and non-claims

| Claim | This document |
|---|---|
| Reads Contract II as thin ordered feed into \(\mathsf{Arrive}\) | **Yes** |
| Requires **zero own store** at the Arrival edge | **Yes** |
| Treats Pieces 9–10 as the same surface on other streams | **Yes** |
| Explains when / why a POINTER is written | **No** |
| Answers G1 tokenization / case / multiword identity | **No** |
| Extends Core morphisms beyond Pass 2 | **No** |
| Rewrites Pass 2–5 products | **No** |
| Authorizes `src/` or an NLP / query crate | **No** |

**Law:** Feed ≠ store. Feed ≠ emit. Arrival ≠ projection. Silence on tokenization and Φ remains `[GAP]` (do not fill).

---

## R1 — Arrival schema (sealed, not new)

From Pass 2 S2 / S5 and Piece 3 only:

1. An **ordered** stream of word-occurrences is offered to Contract I.
2. Each accepted offering is realized by \(\mathsf{Arrive}(v)\): append \((\mathsf{WORD}, v)\) to \(L\).
3. Contract II holds **no** persistent table of documents, vocabularies, parses, or counts — only the act of feeding I.
4. No new Core morphism is introduced here.

Punch-card fidelity (Piece 3): arrival order *is* the order the model recognizes. There is no second “logical order” kept at the edge.

---

## R2 — May / must-not at the edge

| May | Must not |
|---|---|
| Preserve arrival order into successive \(\mathsf{Arrive}\) calls | Interpret / parse-away before append |
| Feed WORD values as Hands occurrences | Drop stopwords or “normalize away” occurrences |
| Use multiple streams (Pieces 9–10) as the **same** Arrival surface | Keep a document, lexicon, or parse **store** in II (Piece 14 breach; Pass 4 N03–N05) |
| Refuse to invent POINTER rows from II | Emit POINTER from Arrival (Φ sealed; Pass 4 N08) |
| Stay thin: adapter into I only | Write into \(L\) from Contract III through II (Pass 5; Pass 4 N06) |
| Leave G1 choices unmarked when Hands are silent | Declare a tokenizer rule as Hands law |

---

## R3 — Streams (Pieces 9–10)

| Stream | Role under Contract II |
|---|---|
| Piece 3 raw / conversational arrival | Primary illustration of ordered feed |
| Piece 9 dictionary wiring | **Same** Arrival surface on a dictionary stream — *use of I*, not a peer Core |
| Piece 10 document feed | **Same** Arrival surface on a document stream — *use of I*, not a peer Core |

Systems-manifest Contract II: Arrival contains Piece 3 and the document/dictionary feeds as the same surface applied to different streams. State coupling must stay zero beyond appending into I. If Arrival keeps documents, vocabularies, or parses, it has become a second store.

---

## R4 — Seams to I / III / Φ

| Seam | Reading |
|---|---|
| II → I | Append-only via \(\mathsf{Arrive}\); II does not own \(L\) |
| II → Φ | **Does not fill.** Participation / POINTER emission remains `[GAP]` |
| II → III | No path. III reads \(L\) only (Pass 5 \(\pi\)); no write-back through Arrival |
| Feed adjacency → emission Q3 | **Does not settle.** Adjacent offerings are not an emit rule (Pass 4 N08) |
| II → Shadow / RIC intake | Out of Contract II. Holder gear is not Arrival |

---

## R5 — G1 / Φ checklist (still open)

| Open item | Settled by this Arrival reading? |
|---|---|
| **G1** Tokenization / case / punctuation / multiword identity | **No.** Piece 3 marks criteria as unspecified; this reading does not invent them. |
| **Q1** When is a POINTER appended? | **No.** |
| **Q2** What is the arity? | **No.** |
| **Q3** Do adjacent WORDs already constitute a relation? | **No.** Order-preserving feed ≠ adjacency⇒emit. |
| **Q4** POINTER→POINTER / WORD-only / proof of earlier? | **No new answer from Contract II.** Current Q4 already permits POINTER→POINTER and rejects WORD-only targeting; proof procedure and required emission remain open. |
| **Q5** Does a later star pass require a POINTER? | **No.** |

Rejected emission lookalikes remain non-answers here too.

---

## R6 — Forbidden misreadings

1. Arrival = NLP pipeline that discards or rewrites tokens before append.  
2. Arrival keeps a corpus / lexicon / parse database at the edge.  
3. Pieces 9–10 = extra Cores or second Laces.  
4. Punch-card order ⇒ adjacency must emit POINTER.  
5. A chosen tokenizer ⇒ Hands-accepted law (G1 still open).  
6. Shadow Anchor / OBS / “touch grows lace” as Arrival emit.  
7. Treating this file as a `Participate` implementation or ingest crate license.  
8. Opening `src/` because Contract II is now explicit.

---

## R7 — Steward receipt

| Field | Value |
|---|---|
| Pass | Math-execution Pass 6 **EXECUTED** (Arrival reading) |
| Product | `docs/math-execution-model-pass-6-arrival.md` |
| Pinned SHA | `5da058eb5802b2f2c660e0707792232b6109450f` |
| Φ | `[GAP]` |
| G1 | Still open |
| Contract II invariant | Thin feed; **zero own store** |
| Streams 9–10 | Use of I; not peer engines |
| Pass 2 morphisms extended? | **No** |
| Pass 3–5 products amended? | **No** |
| `src/` | Not authorized |
| Parent plan | `docs/plans/math-execution-model-pass-6-plan.md` |

**Steward tests (plan §6):** no edge store; no emit-from-II; 9–10 not peer Cores; G1 and Φ unanswered; Shadow ≠ II; no `src/` license; Pass 2–5 not silently rewritten.

*Shoe in hands. Feed named. Participation cut remains sealed.*
