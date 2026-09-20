# Prefix device — Pass 4 PLAN

**Status:** EXECUTED — map on [`prefix-device-pass-4.md`](prefix-device-pass-4.md). Not accepted. Not SPOKEN.  
**Station:** maps + law (read emission; do not accept it). Graphics companions read-only.  
**Depends on:** prefix-device passes 1–3; [`docs/math-execution-model.md`](../math-execution-model.md) (PARTIAL); [`docs/pointer-emission.md`](../pointer-emission.md) Q0–Q5.  
**Object:** the mathematical model *already* in Hands and in that partial algebra, plus session speech as unlabeled speech — so the human can later name nuances they cannot yet stamp SPOKEN.  
**Why this pass exists:** SPOKEN requires a sentence whose nuances are known. The human said they cannot flip that flag because they cannot yet define those nuances in language. Pass 4 builds the **distinction sheet**, not the flag.

```
pull/ff → claim maps (emission file read-only unless a Bind line is added)
        → write this plan
        → STOP
execute (later, one authorized tick):
        → write the map product
        → do not stamp SPOKEN
        → do not amend Arrive / Φ in the partial model
        → check · commit · STOP
```

---

## 0. Question (one act)

**What mathematical objects are already defined, which session phrases collide with them, and what is the smallest set of named distinctions the human would need in order to speak Q0 / Q1 without inventing a third algebra?**

Pass 4 does not speak for them. It makes the collision *writable as options*.

---

## 1. Authority (highest first)

1. Graphics A–D (D = store).  
2. [`docs/math-execution-model.md`](../math-execution-model.md) S1–S6 — already-defined partial algebra.  
3. [`docs/pointer-emission.md`](../pointer-emission.md) Q0–Q5 + CLOSED refusals.  
4. Prefix-device passes 1–3 (readings / binds).  
5. Session speech this thread — **unlabeled**. Not Hands. Not SPOKEN.

Do not elevate session Φ-lens over S2 `Arrive`. Do not amend S2/S4 to absorb the lens.

---

## 2. Already defined (do not redefine)

From the partial model — copy cites, do not rewrite the algebra:

| Symbol | Meaning | Status |
|---|---|---|
| \(L=(e_0,\ldots,e_{n-1})\) | sole store | defined |
| \(\mathsf{Kind}=\{\mathsf{WORD},\mathsf{POINTER}\}\) | only two section kinds | defined |
| \(e_i=(\mathsf{WORD},v)\) | occurrence of value \(v\) at index \(i\) | defined |
| \(e_j=(\mathsf{POINTER},r_1,\ldots,r_k)\) with \(r_\ell<j\) | participation shape; \(k\) not law | shape + constraint; arity CONFLICT |
| \(\mathsf{Arrive}(v): L\mapsto L{}^\smallfrown(\mathsf{WORD},v)\) | entry morphism | defined |
| \(\mathrm{Star}(v)=\{i:e_i=(\mathsf{WORD},v)\}\) | view, not a row | defined as reading |
| \(\pi:L\to\mathsf{View}\) | projection, no write-back | defined |
| \(\Phi=\mathsf{Participate}\) | POINTER emission | `[GAP]` sealed |
| \(\mathsf{Step}_{\mathrm{partial}}=\mathsf{Arrive};\,\Phi_{[GAP]};\,\mathsf{Continue}\) | honest schema | defined as partial |

Pass 4 **uses** these. It does not add a third kind or a total `Step`.

---

## 3. Session phrases that are not yet mathematics

These are the phrases that blocked SPOKEN. Execute must attach each to a distinction, not to an Answer.

| Session phrase | Hazard if treated as law | Distinction it actually needs |
|---|---|---|
| “\(e_n=\Phi(L_{<n})\)” as the device | Collapses `Arrive` and `Participate` into one operator named Φ | **Morphism split:** next *cell* vs next *WORD* vs next *POINTER* |
| “don’t save the original text” | Can mean no sentence object (Hands) or no WORD rows (conflicts `Arrive` + D1 `0003`) | **Container vs occurrence** |
| “pointers to dictionary entries suffice” | Can mean participation encodes the document, or WORD is deleted after seed | **Encoding vs store** |
| “word = defining pointer cluster” | Can mean a VIEW of POINTER rows through `Star(v)`, or a replacement of D2 | **Identity: value / occurrence / star / cluster** |
| “pay a pointer into the star” | Sounds like Q1 when | **Payment as reading vs payment as append** |
| “dictionary is the prefix” | True as “no outer lexicon”; false as “Φ is therefore known” | **Seed as use of `Arrive` on definition text**, not a new operator |
| “punch card is N-D until one pointer owns the input” | Span pyramid / capstone POINTER | **Closed by p1:** N-D is D3/D6 reading; capstone when is Q1 `[GAP]` |
| “Array 1, Array 2, …” | Second stores | **Already refused.** Same \(L\) at length \(n\) |

---

## 4. Nuance catalog execute must fill

Each row: name, formal sketch using only S1–S3 symbols, Hands cite, session kin, **speakable options** (not picked).

### N1 — Three writes that session called one “device”

| Option | Formal | Already in model? |
|---|---|---|
| A | only \(\mathsf{Arrive}(v)\) | yes |
| B | \(\mathsf{Arrive}(v)\) then some \(\Phi\) | \(\Phi\) hole |
| C | \(\Phi\) only (no WORD on later arrival) | conflicts Q0 CLOSED first-WORD and Q5 `0003` unless scoped to *later* only |
| D | one operator that sometimes writes WORD and sometimes POINTER | session lens; not in S2 |

Slot I is the pick among A–D for *later* arrival. Pass 4 lists them. Does not pick.

### N2 — Four “what a word is”

| Layer | Symbol | Hands | Session |
|---|---|---|---|
| value | \(v\in V\) | D2 variable | “the word” |
| occurrence | index \(i\) with \(e_i=(\mathsf{WORD},v)\) | D1 `0000` vs `0003` | punch-card arrival |
| star | \(\mathrm{Star}(v)\) | D5, B3 | “star at index 1,2,3” — **misread if star is an index**; star is a set of indices |
| cluster | set of POINTER rows that participate in \(\mathrm{Star}(v)\) or in B4’s definition route | B4 route; D3/D6 | “word to the machine is the defining cluster” |

Slot II is: machine-identity = value, occurrence, star, cluster, or value-with-cluster-as-VIEW. Pass 4 lists them. Does not pick.

### N3 — Two “don’t save text”

| Sense | Hands | Conflicts |
|---|---|---|
| No sentence *container* | B5, math S3.2 | none |
| No WORD *values* after seed | session | `Arrive`; D1; Q0 first-WORD CLOSED |

If the human later speaks sense 1, that is already Hands and does not fill Φ.  
If they speak sense 2, that is Collision I and Q0 later-arrival — still a pick, not a default.

### N4 — Seed

Dictionary-on-lace = `Arrive` applied to definition-route words, plus POINTER rows that *witness* B4 (witness-only until Φ).  
Not a Seed functor. Not an outer lexicon.

### N5 — Recursion

POINTER→POINTER is CLOSED-allowed (Q4). It is not a recursive function \(\Phi\) on the whole lace as a single law. Session “recursive to the entire substrate” = *the next write may name any earlier cell, including POINTER cells*. That sentence is already Q4 + D6. It does not answer Q1.

---

## 5. Product

`docs/graphics/prefix-device-pass-4.md`

Required sections:

- S0 header: PARTIAL map; not SPOKEN; not acceptance; Φ stays `[GAP]`.  
- S1 reuse table (copy §2; cite math-execution-model section numbers).  
- S2 morphism split (N1) with options A–D.  
- S3 identity layers (N2) with four layers.  
- S4 text-saving senses (N3).  
- S5 seed and recursion (N4–N5).  
- S6 **speak-sheet**: one blank line per slot I / II / Q0-later / Q1-when, each followed by the option list in the human’s words *and* the symbol. Empty until they write.  
- S7 steward tests (below).  
- S8: do not edit `math-execution-model.md` or fill emission Answers.

Also: one Bind line on `docs/pointer-emission.md` under Q0/Q1: “nuance map: prefix-device-pass-4.md. Still not SPOKEN.”

---

## 6. What execute must not do

- Stamp SPOKEN on any Answer.  
- Pick A–D or an identity layer.  
- Redefine \(\Phi\) as “next cell of prefix.”  
- Add a third `Kind`.  
- Draw span arrays.  
- Amend `docs/math-execution-model.md` Arrive/Φ sections.  
- Accept the emission file.  
- Add `src/`.

---

## 7. Steward tests (fail = delete the sentence)

1. If the map answers “when is a POINTER written?”, it failed.  
2. If session Φ-lens replaces S2 `Arrive`, it failed.  
3. If “don’t save text” is written as one sense, it failed.  
4. If star is given an index as if it were a row, it failed.  
5. If cluster replaces D2 without being marked option, it failed.  
6. If a speak-sheet line is filled by the agent, it failed.  
7. If `src/` or acceptance is implied, it failed.

---

## 8. After this pass

The human can point at N1 option C, or N2 layer “cluster as VIEW”, and *that* pointing is what becomes a SPOKEN sentence later.  
Pass 5 (not this ticket): only if they write on the speak-sheet in-repo.

---

## 9. Governing check

```text
Algebra already exists. Do not fork it.
Session speech is unlabeled.
Nuance first, flag never on this tick.
Two morphisms until they say one.
Four identity layers until they say which.
Two “don’t save text” senses.
Φ stays [GAP].
Shoe in hands, or no.
```
