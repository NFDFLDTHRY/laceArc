# Pointer emission

**Status:** DRAFT. **Object:** claimed. Law station.  
**Not accepted.** Not implemented. `src/` remains forbidden.  
This file is the next honest artifact. It may be worked.

**Φ-morphism** is stated in the section Φ — partial definition. **Φ-schedule** is Q1.

Three rules used to be one sentence. That sentence was the blocker.

| Rule | Still | Not |
|---|---|
| Invent an emit-when, arity law, or adjacency law from habit, stakes, or “helpful” default | **Breach** | — |
| Record what the four graphics already close, or write the human’s in-repo sentence onto an Answer line | **Work on this file** | Acceptance |
| Human says this file is accepted, in-repo, in words | **Opens Implementation Law** | A commit, a draft rule v0, or an `emit` stub |

Existence is not acceptance. A filled Answer line is not acceptance. Only the acceptance sentence is acceptance.

## How this file may be edited

Under a live law claim:

- **CLOSED** — picture or D1 already settles it (including a ruled-out candidate). Cite the panel. Not a schedule invented.
- **SPOKEN** — the human wrote the sentence in-repo. Record it here. Still not accepted until they say accepted.
- **CONFLICT** — two source-or-history readings, both kept visible. Do not pick a winner to soothe.
- **`[GAP]`** — picture silent, human silent. On this file that mark now means **schedule**, not “Φ has no shape.”

Do not silence the graphics with a default. Do not treat this draft as Core code.

## Authority

- Four graphics in `docs/graphics/` (A–D) and `docs/systems-manifest.md` derived from them.
- Prefix-device readings: [`graphics/prefix-device-pass-1.md`](graphics/prefix-device-pass-1.md), [`graphics/prefix-device-pass-2.md`](graphics/prefix-device-pass-2.md), [`graphics/prefix-device-pass-3.md`](graphics/prefix-device-pass-3.md). Nuance map (not SPOKEN): [`graphics/prefix-device-pass-4.md`](graphics/prefix-device-pass-4.md). Φ-morphism receipt: [`graphics/prefix-device-pass-5.md`](graphics/prefix-device-pass-5.md). Fidelity sheet: [`graphics/prefix-device-pass-6.md`](graphics/prefix-device-pass-6.md).
- Partial algebra: [`math-execution-model.md`](math-execution-model.md) — S4 names Φ-morphism / Φ-schedule after pass 6.
- If the picture is silent → write `[GAP]` on the schedule. Do not invent.
- Stake PDFs, history recoveries, shadow-clock / gearing, crate maps, and “helpful” defaults are silenced for *invented* answers. They may be cited as CONFLICT when the repo already recorded one.

## Φ — partial definition

**Status:** morphism stated. Schedule not stated. Not accepted. Not SPOKEN.

Two morphisms. Not one device.

```text
Arrive(v)  :  L  ↦  L 〈 (WORD, v)

Φ          :  L × R  ↦  L 〈 (POINTER, r_1, …, r_k)
             R = { r | 0 ≤ r < |L| }, k ≥ 1, each r_i ∈ R

Φ-morphism = that append.
Φ-schedule = the rule that chooses whether R is supplied
             and which r_i. That rule is Q1.
```

Session lens “next cell = Φ of the prefix” is pass 4 option D. It is not this definition. `Arrive` is not merged into Φ.

### CLOSED constraints on the morphism

| Constraint | Cite |
|---|---|
| Append only, same line | D footer, D1 |
| Kind is POINTER | D2 |
| Refs name earlier indices on this line | Q4 |
| A ref may be WORD or POINTER | Q4 |
| POINTER→POINTER allowed | D6, Q4 |
| First unseen v is Arrive, not Φ | Q0 |

Arity k stays **CONFLICT** (Q2). Written here as k ≥ 1. Not promoted to k = 2.

### CLOSED refusals on the schedule (not a when)

| Refusal | Cite |
|---|---|
| Adjacency of WORDs does not fire Φ | Q3 |
| Not one POINTER per WORD | Q1 |
| Not every adjacent pair | Q1 |

### Still the schedule

Q1 Answer remains `[GAP]`. Pass 4 options A–D remain unpicked. Speak-sheet on [`graphics/prefix-device-pass-4.md`](graphics/prefix-device-pass-4.md) remains blank.

**Pass 6 bind:** [`math-execution-model.md`](math-execution-model.md) S4 now names Φ-morphism / Φ-schedule. Answers on this file unchanged.

---

## Required open questions (AGENTS.md)

Entry admission is Q0. Pointer admission is Q1. They are not one question. Q1 is Φ-schedule.

### 0. When is a WORD (entry) appended?

- **Question:** After a punch-card word arrives, when is a WORD section appended?
- **Graphic / Piece cited:** D1, D2, D5, A2, A5, B2, B3, B6, C10. Prefix-device pass 2 Collision I.
- **What the picture shows:** Empty line, then first WORD begins a star (A2; D1 `0000 PIE`). Later same variable is another WORD (D1 `0003 PIE`; D5). Punch-card feeds words in arrival order (B6, C10). D2: the variable is the word.
- **What the picture does not settle:** Whether a later arrival of an already-present variable could be POINTER-only (session speech “do not save the original text”; pass 2 slot I still `[unspoken]`).
- **Answer:** `[GAP]` for later-arrival kind. **CLOSED** that the first occurrence of a variable is a WORD. **CLOSED** intern (same as Q5: `0003` is a new WORD, not a count on `0000`).
- **Stamp:** `[GAP]` + two CLOSED. Not accepted. Not SPOKEN.
- **Bind:** Pass 2 Collision I. Pass 4 N1 A–D and N3. Pass 5: first unseen v is Arrive, not Φ-morphism.

### 1. When is a POINTER appended?

- **Question:** After a word arrives and a WORD section is (or is not) appended, when — if ever — is a POINTER section also appended?
- **Graphic / Piece cited:** Graphic D (D1–D3, D6); Piece 5 Boundary; Piece 2 Continue.
- **What the picture shows:** The array contains both WORD rows and POINTER rows. A later section can participate in earlier sections. Continue is “append a new section.” D footer: use pointers to participate in what already exists.
- **What the picture does not settle:** Which arrivals write WORD only, which write POINTER, which write both, and what in the hands decides. Piece 5: Graphic D’s table is an illustrative mix, not a complete emission algorithm.
- **Answer:** `[GAP]` for the **schedule**. Φ-morphism is stated above. This Answer is not that morphism.
- **CLOSED (ruled out, not a when):** “every adjacent WORD pair emits” — D1 WORD pairs DESSERT–PIE (0001 then 0003) and WHOLE–CUSTOMER (0005 then 0008) have no pointer. “One POINTER per WORD arrival” — D1 fan-out after successive WORDs is 0, 1, 1, 2, 2.
- **Stamp:** `[GAP]` schedule + two CLOSED refusals. Not accepted. Not SPOKEN.
- **Bind:** Pass 2 Collision I. Pass 4 N1 / speak-sheet Q1-when. Pass 5 Φ-morphism section. Map is not this Answer.

### 2. What is the arity?

- **Question:** How many earlier indices may one POINTER name?
- **Graphic / Piece cited:** Graphic D example shape; Piece 5 Inputs/Outputs `{index, type: POINTER, ref_A, ref_B}`.
- **What the picture shows:** D2 draws two slots under “What each entry looks like” / “Minimal structure.” D1 six of six pointers name two earlier indices.
- **What the picture does not settle:** The words *exactly two* are not on the graphic. Piece 5 still calls the shape example form. Repo history recorded a unary POINT form as `[CONFLICT]`.
- **Answer:** **CONFLICT.** D2+D1 weigh toward two. Piece 5 and the missing words *exactly two* refuse promoting that to schema. No SPOKEN pick. Φ-morphism writes k ≥ 1 only.
- **Stamp:** CONFLICT. Not accepted.

### 3. Do adjacent WORD rows already constitute a relation?

- **Question:** If two WORD rows sit next to each other on the line, is that already a relation, or is a relation only a POINTER row?
- **Graphic / Piece cited:** Graphic D sequence of rows; Piece 3 arrival order; Piece 8 sequence-as-route; Piece 5 Boundary.
- **What the picture shows:** Arrival order is kept. Sequence of WORDs is a physical route through stars. Adjacent WORDs sometimes have a POINTER between them and sometimes do not.
- **What the picture does not settle:** Whether adjacency-without-POINTER is a relation, a non-relation, or something unnamed (Piece 8 route is not automatically Piece 5 participation).
- **Answer:** **CLOSED** that adjacency does **not** fire Φ. **`[GAP]`** whether leftover adjacency *is* a relation.
- **Stamp:** split. Not accepted. Not SPOKEN.

### 4. Refs point only backward on the same line

**Hard constraint — CLOSED:**

Pointers reference earlier positions in the same line. Graphic D key properties; D1 six of six; Piece 5 invariants. Forward indices and external stores remain failure modes. This is a constraint on the Φ-morphism. It is not the schedule.

**Sub-questions:**

- May a POINTER target another POINTER as a general permission, or only in the D6 illustration?  
  Picture: D6 states later sections can participate in earlier participation. D1 rows 0007, 0009, 0010 do that. Piece 5 Purpose: “including earlier pointers.” Piece 5 also calls D1 illustrative.  
  **Answer:** **CLOSED** that POINTER→POINTER is drawn and named as allowed. **`[GAP]`** whether every later participation *must* write that shape. Not “only an isolated D6 doodle.”
- May a POINTER target only WORD?  
  **Answer:** **CLOSED** as *false if read as a restriction.* D1 and D6 name POINTER targets. WORD targets also exist (0002, 0004, 0006).
- How is “earlier” proven at append time?  
  **Answer:** `[GAP]`. Picture silent on a check or comparison operator. The rows only show the constraint holding.

## Further questions forced by the graphics

### 5. Does a later pass through a star require a POINTER?

- **Question:** When the same word occurs again and the wire passes through that word’s star (Graphic A5, B3; Piece 7), is the new pass only a WORD row, or must a POINTER also be written?
- **Graphic / Piece cited:** Graphic A5 / B3; Piece 4 WORD; Piece 7 Star; Graphic D WORD rows.
- **What the picture shows:** A5/B3: later occurrence is more wire through the same star, new direction. D1 writes WORD 0003 for the second PIE. POINTER 0004 *may* then relate that occurrence to the first; it is not drawn as the occurrence itself.
- **What the picture does not settle:** Whether that pass *must* also write a POINTER.
- **Answer:** `[GAP]` for *require* (schedule). **CLOSED** that a later pass is at least a new WORD occurrence (0003), not a collapsed intern.
- **Stamp:** `[GAP]` + one CLOSED (no intern). Not accepted.
- **Bind:** Q0 later-arrival kind and Q1 schedule. Pass 2 Collision I. Pass 4 N1 option B vs C. Pass 5 does not pick slot I.

No other extra questions. Document provenance, query operators, and spelling/case are silences of other pieces; they do not by themselves force a schedule.

## Explicit non-answers

These are **rejected lookalikes**, not candidate rules. This table is not an algorithm.

| lookalike | why not emission |
|---|---|
| Kauffman hitch / grab | kin of participation; does not say *when* |
| Reidemeister / slide / virtual | rewrite — Rule Zero |
| next-token / causal LM | projection, not append |
| `[MASK]` / intern / embed | cut / second store |
| train / NTK / GNN | second world |
| ReAG edge | holder photo ≠ POINTER |
| “touch grows lace” | history — rejected walker |
| exact-match ties | history — rejected |
| D06 substitution | not a write |
| variable / cluster label | names; does not write POINTER |
| clock tooth / Anchor / Locate | holder gear; Graphic D is silent |
| prefix-device next-cell lens as Φ | option D; not the morphism above |
| chat ENTRY/POINTER pair | offered; not written back; not SPOKEN |
| pass 4 nuance map | distinctions; speak-sheet blank; not SPOKEN |

## Pass 1 — stamp walk

**Status:** EXECUTED. Not accepted. No SPOKEN lines. No `src/`.

### Pass 1 stamp table

| Q | Stamp | Cite |
|---|---|
| Q1 when | `[GAP]` | D1 mix; Piece 5 illustrative |
| Q1 every-adjacent-emits | CLOSED ruled out | D1 0001–0003, 0005–0008 |
| Q1 fixed fan-out | CLOSED ruled out | D1 0,1,1,2,2 |
| Q2 arity as law | CONFLICT | D2+D1 two-slot vs Piece 5 example form vs no words *exactly two* |
| Q3 emit on adjacency | CLOSED ruled out | same D1 pairs |
| Q3 adjacency *is* a relation | `[GAP]` | Piece 8 route ≠ Piece 5 participation |
| Q4 backward same line | CLOSED | D key properties; six of six |
| Q4 POINTER→POINTER allowed | CLOSED | D6; 0007/0009/0010; Piece 5 “including earlier pointers” |
| Q4 POINTER→POINTER required | `[GAP]` | illustration is not a must |
| Q4 WORD-only targets | CLOSED false as restriction | D1 mixed targets |
| Q4 how earlier is proven | `[GAP]` | no operator on the picture |
| Q5 require POINTER on re-pass | `[GAP]` | A5/B3 more wire; 0003 is WORD |
| Q5 later pass is intern | CLOSED ruled out | 0003 new occurrence |

## Pass 3 — entry admission opened

**Status:** EXECUTED. Not accepted. No new SPOKEN lines. No `src/`.

### Pass 3 stamp table

| Q | Stamp | Cite |
|---|---|
| Q0 first occurrence is WORD | CLOSED | A2; D1 `0000` |
| Q0 intern | CLOSED ruled out | D1 `0003`; same as Q5 |
| Q0 later-arrival kind | `[GAP]` | pass 2 slot I unspoken |
| Q1 when | `[GAP]` (unchanged) | bind pass 2 I |
| Q5 require POINTER | `[GAP]` (unchanged) | bind Q0/Q1 |

## Pass 4 — nuance map bound

**Status:** EXECUTED bind. Not SPOKEN.  
**Map:** [`graphics/prefix-device-pass-4.md`](graphics/prefix-device-pass-4.md).  
Speak-sheet blank.

## Pass 5 — Φ-morphism stated

**Status:** EXECUTED. Not SPOKEN. Not accepted.  
**Receipt:** [`graphics/prefix-device-pass-5.md`](graphics/prefix-device-pass-5.md).

| Piece | Stamp |
|---|---|
| Φ-morphism | stated |
| Φ-schedule (Q1) | `[GAP]` unchanged |
| Arrive merged into Φ | refused |
| Option D as law | refused |

## Pass 6 — algebra fidelity

**Status:** EXECUTED bind. Not SPOKEN.  
**Sheet:** [`graphics/prefix-device-pass-6.md`](graphics/prefix-device-pass-6.md).  
Law Answers unchanged.

---

## Acceptance

This file is accepted only when the human says so **in-repo**.

Until then:

- no `src/`
- no Cargo.toml
- no `emit` stub
- no “draft rule v0”

Committing this draft does not accept it.
Implementing from this draft does not accept it.

Shoe in hands, or no.
