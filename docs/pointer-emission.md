# Pointer emission

**Status:** DRAFT. **Object:** claimed. Law station.  
**Not accepted.** Not implemented. `src/` remains forbidden.  
This file is the next honest artifact. It may be worked.

Three rules used to be one sentence. That sentence was the blocker.

| Rule | Still | Not |
|---|---|
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
- Prefix-device readings: [`graphics/prefix-device-pass-1.md`](graphics/prefix-device-pass-1.md), [`graphics/prefix-device-pass-2.md`](graphics/prefix-device-pass-2.md), [`graphics/prefix-device-pass-3.md`](graphics/prefix-device-pass-3.md). Nuance map (not SPOKEN): [`graphics/prefix-device-pass-4.md`](graphics/prefix-device-pass-4.md).
- If the picture is silent → write `[GAP]`. Do not invent.

## Required open questions (AGENTS.md)

Entry admission is Q0. Pointer admission is Q1. They are not one question.

### 0. When is a WORD (entry) appended?

- **Question:** After a punch-card word arrives, when is a WORD section appended?
- **Graphic / Piece cited:** D1, D2, D5, A2, A5, B2, B3, B6, C10. Prefix-device pass 2 Collision I.
- **What the picture shows:** Empty line, then first WORD begins a star (A2; D1 `0000 PIE`). Later same variable is another WORD (D1 `0003 PIE`; D5). Punch-card feeds words in arrival order (B6, C10). D2: the variable is the word.
- **What the picture does not settle:** Whether a later arrival of an already-present variable could be POINTER-only (session speech “do not save the original text”; pass 2 slot I still `[unspoken]`).
- **Answer:** `[GAP]` for later-arrival kind. **CLOSED** that the first occurrence of a variable is a WORD. **CLOSED** intern (same as Q5: `0003` is a new WORD, not a count on `0000`).
- **Stamp:** `[GAP]` + two CLOSED. Not accepted. Not SPOKEN.
- **Bind:** Pass 2 Collision I. Pass 4 nuance map N1 options A–D and N3 two senses of don’t-save-text: [`graphics/prefix-device-pass-4.md`](graphics/prefix-device-pass-4.md). Map is not SPOKEN.

### 1. When is a POINTER appended?

- **Question:** After a word arrives and a WORD section is (or is not) appended, when — if ever — is a POINTER section also appended?
- **Graphic / Piece cited:** Graphic D (D1–D3, D6); Piece 5 Boundary; Piece 2 Continue.
- **What the picture shows:** The array contains both WORD rows and POINTER rows. A later section can participate in earlier sections. Continue is “append a new section.” D footer: use pointers to participate in what already exists.
- **What the picture does not settle:** Which arrivals write WORD only, which write POINTER, which write both, and what in the hands decides. Piece 5: Graphic D’s table is an illustrative mix, not a complete emission algorithm.
- **Answer:** `[GAP]` for the positive *when*.
- **CLOSED (ruled out, not a when):** “every adjacent WORD pair emits” — D1 WORD pairs DESSERT–PIE (0001 then 0003) and WHOLE–CUSTOMER (0005 then 0008) have no pointer. “One POINTER per WORD arrival” — D1 fan-out after successive WORDs is 0, 1, 1, 2, 2.
- **Stamp:** `[GAP]` + two CLOSED refusals. Not accepted. Not SPOKEN.
- **Bind:** Pass 2 Collision I. Pass 4 N1 / speak-sheet Q1-when. Map is not this Answer.

### 2. What is the arity?

- **Question:** How many earlier indices may one POINTER name?
- **Answer:** **CONFLICT.** D2+D1 weigh toward two. Piece 5 and the missing words *exactly two* refuse promoting that to schema. No SPOKEN pick.
- **Stamp:** CONFLICT. Not accepted.

### 3. Do adjacent WORD rows already constitute a relation?

- **Answer:** **CLOSED** that adjacency does **not** emit a POINTER. **`[GAP]`** whether leftover adjacency *is* a relation.
- **Stamp:** split. Not accepted. Not SPOKEN.

### 4. Refs point only backward on the same line

**Hard constraint — CLOSED:** Pointers reference earlier positions in the same line. This is a constraint on whatever emission later becomes. It is not the emission rule.

- POINTER→POINTER allowed: **CLOSED**. Required: `[GAP]`.
- WORD-only targets as a restriction: **CLOSED** false.
- How earlier is proven: `[GAP]`.

## Further questions forced by the graphics

### 5. Does a later pass through a star require a POINTER?

- **Answer:** `[GAP]` for *require*. **CLOSED** that a later pass is at least a new WORD occurrence (0003), not a collapsed intern.
- **Bind:** Q0 later-arrival, Q1, pass 2 I, pass 4 N1 option B vs C.

## Pass 4 — nuance map bound

**Status:** EXECUTED bind. Not SPOKEN.  
**Map:** [`graphics/prefix-device-pass-4.md`](graphics/prefix-device-pass-4.md).  
Speak-sheet blank. Answers above unchanged.

---

## Acceptance

This file is accepted only when the human says so **in-repo**.

Until then: no `src/`, no Cargo.toml, no `emit` stub, no “draft rule v0”.

Committing this draft does not accept it.

Shoe in hands, or no.
