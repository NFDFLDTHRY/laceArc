# Pointer emission

**Status:** DRAFT. **Object:** claimed. Law station.  
**Not accepted.** Not implemented. `src/` remains forbidden.  
Campaign Answers on Q0 / Q1 / Q5 / slot II are **SPOKEN**. That is not acceptance.

**Φ-morphism** is stated below. **Φ-schedule** is Q1 (now SPOKEN, not accepted).

Three rules used to be one sentence. That sentence was the blocker.

| Rule | Still | Not |
|---|---|
| Invent an emit-when, arity law, or adjacency law from habit, stakes, or “helpful” default | **Breach** | — |
| Record what the four graphics already close, or write the human’s in-repo sentence onto an Answer line | **Work on this file** | Acceptance |
| Human says this file is accepted, in-repo, in words | **Opens Implementation Law** | A commit, a draft rule v0, or an `emit` stub |

Existence is not acceptance. A filled Answer line is not acceptance. Only the acceptance sentence is acceptance.

## How this file may be edited

Under a live law claim:

- **CLOSED** — picture or D1 already settles it (including a ruled-out candidate). Cite the panel.
- **SPOKEN** — the human wrote the sentence in-repo, including this campaign. Record it here. Still not accepted until they say accepted.
- **CONFLICT** — two source-or-history readings, both kept visible. Do not pick a winner to soothe.
- **`[GAP]`** — picture silent, human silent.

Do not silence the graphics with a default. Do not treat this draft as Core code.

## Authority

- Four graphics in `docs/graphics/` (A–D) and `docs/systems-manifest.md` derived from them.
- This campaign (prefix-device passes 1–7): dictionary as seed on L; punch-card pays pointers into that seed; original sentence object is not kept; word-to-the-machine is the defining pointer cluster.
- Partial algebra: [`math-execution-model.md`](math-execution-model.md).

## Φ — partial definition

**Status:** morphism stated. Schedule SPOKEN on Q1. Not accepted.

Two morphisms. Not one device.

```text
Arrive(v)  :  L  ↦  L 〈 (WORD, v)

Φ          :  L × R  ↦  L 〈 (POINTER, r_1, …, r_k)
             R = { r | 0 ≤ r < |L| }, k ≥ 1, each r_i ∈ R

Φ-morphism = that append.
Φ-schedule = Q1.
```

`Arrive` is not merged into Φ. Session “next cell = Φ(prefix)” is not `Step`.

### CLOSED constraints on the morphism

| Constraint | Cite |
|---|---|
| Append only, same line | D footer, D1 |
| Kind is POINTER | D2 |
| Refs name earlier indices on this line | Q4 |
| A ref may be WORD or POINTER | Q4 |
| POINTER→POINTER allowed | D6, Q4 |
| First unseen v is Arrive, not Φ | Q0 CLOSED + SPOKEN |

Arity k stays **CONFLICT** (Q2). Written here as k ≥ 1. Not promoted to k = 2.

### CLOSED refusals on the schedule (not a when)

| Refusal | Cite |
|---|---|
| Adjacency of WORDs does not fire Φ | Q3 |
| Not one POINTER per WORD | Q1 Hands |
| Not every adjacent pair | Q1 Hands |

---

## Required open questions (AGENTS.md)

Entry admission is Q0. Pointer admission is Q1. They are not one question.

### 0. When is a WORD (entry) appended?

- **Question:** After a punch-card word arrives, when is a WORD section appended?
- **Graphic / Piece cited:** D1, D2, D5, A2, A5, B2, B3, B6, C10. Prefix-device pass 2 Collision I.
- **What the picture shows:** Empty line, then first WORD begins a star (A2; D1 `0000 PIE`). Later same variable is another WORD (D1 `0003 PIE`; D5).
- **Answer:** **SPOKEN (campaign).** A WORD is appended when a word first arrives as seed on L — dictionary wiring. That begins the star (`Arrive`). The punch-card document does not need a second WORD row for a word already on L; pointers into that star are the encoding. Original sentence text is not kept as an object.
- **HANDS CONFLICT:** D1 writes WORD `0003` for the second PIE. D5 draws later history as more WORD passages. Those rows are not deleted by the spoken schedule.
- **CLOSED:** intern is refused. First unseen v is WORD.
- **Stamp:** SPOKEN + CONFLICT + CLOSED intern. Not accepted.

### 1. When is a POINTER appended?

- **Question:** After a word arrives and a WORD section is (or is not) appended, when — if ever — is a POINTER section also appended?
- **Graphic / Piece cited:** Graphic D (D1–D3, D6); Piece 5; Piece 2; B4; B6; C9; C10.
- **What the picture shows:** Later sections participate in earlier sections. D footer: use pointers to participate in what already exists.
- **Answer:** **SPOKEN (campaign).** Φ fires when an arriving word must participate in what already exists on the prefix: the word’s star, its definition route through other stars, or an earlier pointer. Dictionary is wired first. Punch-card input pays into those entries. That payment is the document encoding. Adjacency of WORD rows is not the trigger. A fixed one-pointer-per-word fan-out is not the trigger.
- **HANDS still CLOSED:** DESSERT–PIE and WHOLE–CUSTOMER adjacent WORDs do not emit. Fan-out after successive WORDs on D1 is 0, 1, 1, 2, 2 — not a constant.
- **Stamp:** SPOKEN schedule + CLOSED refusals. Not accepted.

### 2. What is the arity?

- **Question:** How many earlier indices may one POINTER name?
- **Answer:** **CONFLICT.** D2+D1 weigh toward two. Piece 5 and the missing words *exactly two* refuse promoting that to schema. Campaign did not pick k. Φ-morphism writes k ≥ 1 only.
- **Stamp:** CONFLICT. Not accepted. Not SPOKEN.

### 3. Do adjacent WORD rows already constitute a relation?

- **Answer:** **CLOSED** that adjacency does **not** fire Φ. **SPOKEN (campaign):** leftover adjacency is arrival order on the wire (B5), not a stored relation and not a sentence object. A relation is a POINTER row.
- **Stamp:** CLOSED emit + SPOKEN leftover. Not accepted.

### 4. Refs point only backward on the same line

**Hard constraint — CLOSED.**

Pointers reference earlier positions in the same line. This constrains Φ-morphism. It is not the schedule.

- POINTER→POINTER allowed: **CLOSED**.
- POINTER→POINTER required on every later participation: still open (picture illustrative).
- WORD-only targets as a restriction: **CLOSED** false.
- How “earlier” is proven: still open (no operator drawn).

### 5. Does a later pass through a star require a POINTER?

- **Question:** When the same word occurs again, is the new pass only a WORD, or must a POINTER also be written?
- **Answer:** **SPOKEN (campaign).** The later pass *is* the payment into the existing star — Φ, not intern. A second WORD is not required for the document encoding.
- **HANDS CONFLICT:** D1 writes WORD `0003` then POINTER `0004`. The occurrence and the payment are two rows there.
- **CLOSED:** intern refused.
- **Stamp:** SPOKEN + CONFLICT + CLOSED intern. Not accepted.

### Slot II — what a word is to the machine

- **Answer:** **SPOKEN (campaign).** To the machine, a word is the defining pointer cluster — the routes through the stars that define it (B4 / C9). The variable on a WORD row is how seed *enters*. It is not the only identity after definition is wired.
- **HANDS CONFLICT:** D2 “the variable is the word.”
- **Stamp:** SPOKEN + CONFLICT. Not accepted.

---

## Explicit non-answers

| lookalike | why not emission |
|---|---|
| Kauffman hitch / grab | kin of participation; not the spoken when |
| Reidemeister / slide / virtual | rewrite — Rule Zero |
| next-token / causal LM | projection, not append |
| `[MASK]` / intern / embed | cut / second store |
| train / NTK / GNN | second world |
| ReAG edge | holder photo ≠ POINTER |
| “touch grows lace” | rejected walker |
| exact-match ties | rejected |
| D06 substitution | not a write |
| clock tooth / Anchor / Locate | holder gear |
| option D as total Step | next-cell lens; Arrive still exists |

## Pass 7 — campaign Answers written

**Status:** EXECUTED. SPOKEN. Not accepted.  
**Receipt:** [`graphics/prefix-device-pass-7.md`](graphics/prefix-device-pass-7.md).

| Q | Now |
|---|---|
| Q0 | SPOKEN seed-WORD; later WORD not required; HANDS CONFLICT on `0003` |
| Q1 | SPOKEN pay-into-prefix; adjacency / fixed fan-out still refused |
| Q2 | CONFLICT (unchanged) |
| Q3 | CLOSED no-emit; SPOKEN leftover = route not relation |
| Q4 | CLOSED backward; required-shape still open |
| Q5 | SPOKEN later pass is Φ payment; HANDS CONFLICT on `0003`+`0004` |
| Slot II | SPOKEN cluster; HANDS CONFLICT on D2 |

---

## Acceptance

This file is accepted only when the human says so **in-repo**.

Until then:

- no `src/`
- no Cargo.toml
- no `emit` stub
- no “draft rule v0”

SPOKEN is not acceptance.

Shoe in hands, or no.
