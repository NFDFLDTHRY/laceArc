# Pointer emission

**Status:** DRAFT. **Object:** claimed. Law station HELD Grok-evidence.  
**Not accepted.** Not implemented. `src/` remains forbidden.  
This file is the next honest artifact. It may be worked.

Three rules used to be one sentence. That sentence was the blocker.

| Rule | Still | Not |
|---|---|---|
| Invent an emit-when, arity law, or adjacency law from habit, stakes, or “helpful” default | **Breach** | — |
| Record what the four graphics already close, or write the human’s in-repo sentence onto an Answer line | **Work on this file** | Acceptance |
| Human says this file is accepted, in-repo, in words | **Opens Implementation Law** | A commit, a draft rule v0, or an `emit` stub |

Existence is not acceptance. A filled Answer line is not acceptance. Only the acceptance sentence is acceptance.

## How this file may be edited

Under a live law claim:

- **CLOSED** — picture or D1 already settles it (including a ruled-out candidate). Cite the panel. Not Φ invented.
- **SPOKEN** — the human wrote the sentence in-repo. Record it here. Still not accepted until they say accepted.
- **CONFLICT** — two source-or-history readings, both kept visible. Do not pick a winner to soothe.
- **`[GAP]`** — picture silent, human silent.

Do not silence the graphics with a default. Do not treat this draft as Core code.

## Authority

- Four graphics in `docs/graphics/` (A–D) and `docs/systems-manifest.md` derived from them.
- If the picture is silent → write `[GAP]`. Do not invent.
- Stake PDFs, history recoveries, shadow-clock / gearing, crate maps, and “helpful” defaults are silenced for *invented* answers. They may be cited as CONFLICT when the repo already recorded one.

## Required open questions (AGENTS.md)


### 1. When is a POINTER appended?

- **Question:** After a word arrives and a WORD section is (or is not) appended, when — if ever — is a POINTER section also appended?
- **Graphic / Piece cited:** Graphic D (D1–D3, D6); Piece 5 Boundary; Piece 2 Continue.
- **What the picture shows:** The array contains both WORD rows and POINTER rows. A later section can participate in earlier sections. Continue is “append a new section.”
- **What the picture does not settle:** Which arrivals write WORD only, which write POINTER, which write both, and what in the hands decides. Piece 5: Graphic D’s table is an illustrative mix, not a complete emission algorithm.
- **Answer:** `[GAP]`

### 2. What is the arity?

- **Question:** How many earlier indices may one POINTER name?
- **Graphic / Piece cited:** Graphic D example shape; Piece 5 Inputs/Outputs `{index, type: POINTER, ref_A, ref_B}`.
- **What the picture shows:** An example with two ref slots (`ref_A`, `ref_B`).
- **What the picture does not settle:** Whether arity is always two, sometimes one, sometimes many, or variable. The example form is not a schema law.
- **Answer:** `[GAP]`

### 3. Do adjacent WORD rows already constitute a relation?

- **Question:** If two WORD rows sit next to each other on the line, is that already a relation, or is a relation only a POINTER row?
- **Graphic / Piece cited:** Graphic D sequence of rows; Piece 3 arrival order; Piece 8 sequence-as-route; Piece 5 Boundary.
- **What the picture shows:** Arrival order is kept. Sequence of WORDs is a physical route through stars. Piece 5: the source does **not** say every consecutive word pair automatically emits a POINTER.
- **What the picture does not settle:** Whether adjacency-without-POINTER is a relation, a non-relation, or something unnamed. Arrival order is not emission.
- **Answer:** `[GAP]`

### 4. Refs point only backward on the same line

**Hard constraint (graphics allow this much):**

Pointers reference earlier positions in the same line. Piece 5 Preconditions / Invariants; Graphic D “Pointers reference earlier positions in the same line.” Forward indices and external stores are failure modes in Piece 5.

This is a constraint on whatever emission later becomes. It is not itself the emission rule.

**Still unspecified (questions, not answers):**

- May a POINTER target another POINTER as a general rule, or only in the D6 example chain?  
  Picture: D6 shows an example chain WORD → POINTER → POINTER → POINTER. Piece 5 Purpose: “including earlier pointers.” Piece 5 also calls the table illustrative.  
  **Answer:** `[GAP]`
- May a POINTER target only WORD?  
  **Answer:** `[GAP]`
- How is “earlier” proven at append time?  
  Picture silent on a check, proof, or comparison operator.  
  **Answer:** `[GAP]`

## Further questions forced by the graphics

### 5. Does a later pass through a star require a POINTER?

- **Question:** When the same word occurs again and the wire passes through that word’s star (Graphic A5, B3; Piece 7), is the new pass only a WORD row, or must a POINTER also be written?
- **Graphic / Piece cited:** Graphic A5 / B3; Piece 4 WORD; Piece 7 Star; Graphic D WORD rows.
- **What the picture shows:** A new occurrence is more wire through the same star. The store example writes WORD entries for occurrences.
- **What the picture does not settle:** Whether that pass is POINTER, WORD, both, or unspecified.
- **Answer:** `[GAP]`

No other extra questions. Document provenance, query operators, and spelling/case are silences of other pieces; they do not by themselves force an emission rule.

## Explicit non-answers

These are **rejected lookalikes**, not candidate rules. This table is not an algorithm.

| lookalike | why not emission |
|---|---|
| Kauffman hitch / grab | kin of participation; does not say *when* |
| Reidemeister / slide / virtual | rewrite — Rule Zero |
| next-token / causal LM | projection, not append |
| `[MASK]` / intern / embed | cut / second store |
| train \(w\) / NTK / GNN | second world |
| ReAG edge | holder photo ≠ POINTER |
| “touch grows lace” | history — rejected walker |
| exact-match ties | history — rejected |
| D06 substitution | not a write |
| variable / cluster label | names; does not write POINTER |
| clock tooth / Anchor / Locate | holder gear; Graphic D is silent |

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
