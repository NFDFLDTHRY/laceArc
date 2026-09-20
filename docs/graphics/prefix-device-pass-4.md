# Prefix device on Hands — Pass 4

**Status:** EXECUTED map. Not accepted. Not SPOKEN. Not emission.  
**Station:** maps.  
**Plan:** [`prefix-device-pass-4-plan.md`](prefix-device-pass-4-plan.md)  
**Algebra reused:** [`docs/math-execution-model.md`](../math-execution-model.md) S1–S6. Not amended.  
**Emission:** [`docs/pointer-emission.md`](../pointer-emission.md) Q0–Q5. Answers unchanged.

This file names distinctions. It does not pick them. The speak-sheet at S6 is blank on purpose.

---

## S0 — Non-claims

| Claim | Here |
|---|---|
| Partial reuse of the existing algebra | Yes |
| Total Step / filled Φ | No |
| SPOKEN on Q0 / Q1 | No |
| Session next-cell-as-Φ as law | No — that lens is unbundled in S2 |
| Third Kind | No |
| `src/` | No |

---

## S1 — Algebra already defined

Cite [`math-execution-model.md`](../math-execution-model.md). Do not fork.

Lace state L = (e_0, …, e_{n-1}). Kind = {WORD, POINTER}.

WORD entry: (WORD, v). POINTER entry: (POINTER, r_1, …, r_k) with each r earlier than the new index.

Arrive(v) appends (WORD, v).

Star(v) = { i < |L| : e_i = (WORD, v) }. A set of indices. Not an index. Not a row.

Φ = Participate = [GAP].

Step_partial = Arrive ; Φ_[GAP] ; Continue.

Arity k stays CONFLICT (emission Q2). Backward refs stay CLOSED (Q4).

---

## S2 — N1 Morphism split

Session called one device: the next cell is Φ of the prefix.
The algebra already has two morphisms plus Continue. Those are not one symbol.

| Name | What is appended | Status |
|---|---|---|
| next cell | WORD or POINTER | description of growth; not an operator |
| Arrive(v) | WORD | defined |
| Φ | POINTER | `[GAP]` |
| Continue | nothing by itself | the same rule remains available |

### Options for a later arrival of a v already on L

| Option | Formal | Hands | Blocks |
|---|---|---|---|
| A | only Arrive(v) | D5 later WORD; Q5 at least WORD | does not write POINTER |
| B | Arrive(v) then some Φ | D1 0003 WORD then 0004 POINTER | Φ still `[GAP]` (whether must) |
| C | Φ only | session don't-save-text / pointers suffice | conflicts Q0 first-WORD if applied to first arrival; later-only is slot I |
| D | one operator that sometimes writes WORD and sometimes POINTER | session lens | not in S2; would replace Arrive |

Slot I is the pick among A–D for later arrival. Not picked here.

First arrival of a new v is not among these options. Q0 CLOSED: that write is WORD.

---

## S3 — N2 Identity layers

Four layers session called “the word.”

| Layer | Symbol | Hands | Not |
|---|---|---|---|
| value | v in V | D2 the variable is the word | a row |
| occurrence | index i with e_i = (WORD, v) | D1 0000 vs 0003 | intern / count |
| star | Star(v) | D5, B3 | a single index; “star at index 1” names the first occurrence, not the star |
| cluster | POINTER rows that participate in Star(v) or in the B4 definition route | B4 route; D3/D6 chains | a gloss string; a replacement of D2 unless so picked |

Slot II is: machine-identity = value / occurrence / star / cluster / value with cluster as VIEW.
Not picked here. Cluster-as-VIEW does not delete WORD rows. Cluster-as-replacement is Collision II.

---

## S4 — N3 Two senses of “don’t save the text”

| Sense | Formal | Hands | Φ? |
|---|---|---|---|
| 1. No sentence container | no extra object wrapping a span of WORDs | B5; math S3.2 | already Hands; does not fill Φ |
| 2. No WORD values after seed | later arrivals are not Arrive | session only | Collision I; Q0 later-arrival `[GAP]` |

Sense 1 and D1 WORD rows can both be true.
Sense 2 cannot sit next to Arrive and D1 0003 unless scoped as option C on later arrivals only.

---

## S5 — N4 Seed and N5 recursion

**Seed.** Dictionary-on-lace is Arrive applied to the words of a definition route, plus POINTER rows that witness B4. Those POINTER rows are D1-style witnesses until Φ exists. There is no Seed functor and no outer lexicon. “The prefix is the dictionary” means later writes may name earlier cells. It does not mean Φ is known.

**Recursion.** Q4 CLOSED: a POINTER may name a POINTER. Session “recursive to the entire substrate” is that permission plus “the next write sees the whole current L.” That is prefix-available. It is not Q1.

**Capstone / N-D until one pointer owns the input.** Pass 1 already stamped N-D as D3/D6 view. A single POINTER whose refs cover an input is a possible later write. Whether it must exist is Q1 `[GAP]`. Not a span array.

---

## S6 — Speak-sheet (blank)

Write on this page later if a distinction is the one you mean. Agent leaves the lines empty. A filled line here is the only thing Pass 5 may copy as SPOKEN.

**Slot I — later arrival of a word already on L**

Options: A only Arrive / B Arrive then Φ / C Φ only / D one mixed operator

```
I =
```

**Slot II — what a word is to the machine**

Options: value / occurrence / star / cluster / value with cluster as VIEW

```
II =
```

**Q0 later-arrival kind** (same collision as I; first arrival stays WORD)

```
Q0-later =
```

**Q1 when a POINTER is appended**

Options remain `[GAP]` until a sentence that is not a lookalike (adjacency emit, fixed fan-out, touch-grows-lace).

```
Q1-when =
```

---

## S7 — Steward tests

1. This file does not answer when a POINTER is written.
2. Session lens did not replace Arrive.
3. Don’t-save-text is two senses.
4. Star is a set of indices.
5. Cluster is an option, not D2.
6. Speak-sheet lines are empty.
7. No `src/`. No acceptance.

---

## S8 — What this pass did not do

- Did not edit `docs/math-execution-model.md` S2/S4.
- Did not change emission Answer stamps.
- Did not pick I / II.
- Did not stamp SPOKEN.

Bind only: emission Q0/Q1 point here as the nuance map.

---

## Governing check

```text
Algebra reused, not forked.
Two morphisms until they say one.
Four identity layers until they say which.
Two senses of don't-save-text.
Seed is Arrive plus witnesses.
Recursion is Q4, not Q1.
Speak-sheet blank.
Φ stays [GAP].
Shoe in hands, or no.
```
