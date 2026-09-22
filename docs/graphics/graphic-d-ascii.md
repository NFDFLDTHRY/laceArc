# Graphic D — ASCII companion

**Not Graphic D.** [`data-structure-1d-array.png`](data-structure-1d-array.png) is the source. This is an ASCII reading of its six panels, its key-properties box, its header and its footer, and it settles nothing the PNG does not.

**Executed:** [reference audit pass 1](../plans/reference-audit-pass-1-plan.md), on the human's word *"proceed with pass 1"* (2026-09-22).  
**Station:** graphics.  
**Store:** Graphic D is the only store. A, B and C are the same strand seen as growth, mechanism and dimension.  
**Not this file:** A, B, C companions · the manifest spine (`docs/systems-manifest-ascii.md`) · the D1 close reading (`docs/graphics-close-reading.md`, which works the rows; this file carries them) · the D1 fixture (`docs/plans/fixtures/d1-golden-v0.1.0.json`) · `src/` · any POINTER emission, arity, slot, tokenization or retention answer.

**Grounding** (`docs/kit/agent-control.md` C01): every sentence below marked *printed* was read from the tracked PNG at 1536×1024, cropped panel by panel and upscaled 2× (panel 3's arrow column 3×) — `VISUALLY_OBSERVED`, and the stamp covers every line in the *Printed on D* sections and the rows table. Physical cord: `NOT_PERFORMED`. Claim origin: `SOURCE` for printed text; `INFERENCE` only where a line says so. Human acceptance: `ABSENT`.

**Gate:** RM-A retain-when `[GAP]` · G1 `[GAP]` · slot order `[GAP]` · pointer draft unaccepted · no `src/`. D is where these questions are decided, and this companion decides none of them.

Panel numerals `1.`–`6.` are printed on the artwork. The letter `D` is this repository's.

---

## Header (printed on D)

```
 Lace Data Structure: One 1D Array, Everything is Lace
 Words, pointers, and their relationships all live in the same append-only sequence.
```

Top right:

```
 No separate graph.  No separate database.  No N-dimensional storage.
 Just one growing line.  Pointers reference earlier positions in the same line.
 Complex structure emerges from how later entries participate in earlier entries.
```

---

## Spine

```
                         D1  THE 1D LACE (append-only array)
                         each entry is a section of the same continuous strand
                         eleven rows: 0000–0010, WORD | POINTER
                         the array only grows; nothing deleted; nothing rewritten
                                   |
                                   |  what one entry is
                                   v
                         D2  WHAT EACH ENTRY LOOKS LIKE
                         minimal structure; no extra machinery
                         WORD    {index, type, value}
                         POINTER {index, type, ref_A, ref_B}
                         a pointer is also a section of Lace
                                   |
                                   |  entries name earlier entries
                                   v
                         D3  HOW POINTERS BUILD STRUCTURE
                         later entries can reference words or other pointers
                         the same eleven rows drawn as a line with three gloss arcs
                                   |
                                   |  the line, seen
                                   v
                         D4  THE SAME DATA IN 3D (visualization)
                         a projection, not storage
                         PIE / DESSERT / WHOLE / CUSTOMER drawn as stars
                         nothing in the 3D view is stored
                                   |
                                   |  the same word again
                                   v
                         D5  BUILDING A STAR (repeated occurrences)
                         1st PIE (0000) → 2nd PIE (0003) → 3rd PIE (later) → more PIE
                         the star is not a point; an accumulated 3D formation
                                   |
                                   |  pointers naming pointers
                                   v
                         D6  HIGHER-DIMENSIONAL PARTICIPATION (emerges naturally)
                         WORD 0000 → POINTER 0002 → POINTER 0007 → POINTER 0010
                         each level can participate in later levels
                         still one 1D array
                                   |
                                   v
                         KEY PROPERTIES (nine)  ·  FOOTER RULE

                           Input arrives.
                           Append a new section to the Lace.
                           Use pointers to participate in what already exists.


  D is the store. A, B, C are how the same strand looks.
  Two entry types on D: WORD | POINTER. No third.

  G2  POINTER when                  = [GAP]   (D shows rows, not a schedule)
  arity as drawn                    = 2 in D2, 6 of 6 in D1; the words "exactly two" are not printed
  slot assignment (ref_A vs ref_B)  = [GAP]   (close reading §2)
  G1  word equality                 = [GAP]   (D2 "the variable is the word"; no equality rule printed)
  RM-A retain-when                  = [GAP]   (nothing on D)
```

---

## D1 — The 1D Lace (append-only array)

Printed subtitle: *Each entry is a section of the same continuous strand.*

Printed table, transcribed exactly. Column heads as printed: **Index · Type · Content / References · Explanation.**

| Index | Type | Content / References | Explanation |
|---|---|---|---|
| 0000 | WORD | PIE | First occurrence of PIE |
| 0001 | WORD | DESSERT | First occurrence of DESSERT |
| 0002 | POINTER | 0000 → 0001 | PIE relates to DESSERT |
| 0003 | WORD | PIE | Second occurrence of PIE |
| 0004 | POINTER | 0003 → 0000 | New PIE relates to first PIE |
| 0005 | WORD | WHOLE | Occurrence of WHOLE |
| 0006 | POINTER | 0003 → 0005 | This PIE relates to WHOLE |
| 0007 | POINTER | 0006 → 0004 | A relationship participates in another relationship |
| 0008 | WORD | CUSTOMER | Occurrence of CUSTOMER |
| 0009 | POINTER | 0008 → 0007 | CUSTOMER relates to that relationship |
| 0010 | POINTER | 0009 → 0002 | This relationship relates to an earlier relationship |

Printed footer of the panel: *The array only grows. Nothing is deleted. Nothing is rewritten.*

Counts read off the rows, not printed: five WORD rows, six POINTER rows; every reference names a lower index; three pointers name a pointer (0007, 0009, 0010). The close reading §1–§3 works these; this file only carries them.

---

## D2 — What each entry looks like

Printed subtitle: *Minimal structure. No extra machinery.*

```
 WORD entry                          POINTER entry
 ●  index: 0000                      ●→ index: 0002
    type:  WORD                         type:  POINTER
    value: PIE                          ref_A: 0000
                                        ref_B: 0001
```

Printed beneath the WORD entry:

> A word is just its variable. The variable is the word.

Printed beneath the POINTER entry:

> A pointer references earlier entries in the same array.
> A pointer is also a section of Lace. It can be referenced by later entries.

Two schemas are printed. No third entry type, no field beyond these, no route-family field, no count, no gloss.

---

## D3 — How pointers build structure

Printed subtitle: *Later entries can reference words or other pointers.*

The eleven rows drawn as one vertical line — blue dots for WORD rows, yellow dots with a right-pointing tail for POINTER rows — each labelled with its index and, for pointers, its `ref_A → ref_B`. Three double-headed arcs are drawn beside the line with a gloss each:

| Arc (colour) | Drawn between rows | Printed gloss |
|---|---|---|
| blue | 0000 ↔ 0003 | Second PIE relates to first PIE |
| green | 0004 ↔ 0007 | Relationship relates to relationship |
| pink | 0007 ↔ 0010 | Later relationship relates to an earlier relationship |

**The arcs are glosses, not `ref_A/ref_B` arrows** — `[INFERENCE]` from the row text, premises stated: the blue arc joins the two operands of row 0004 (`0003 → 0000`), not the pointer row itself; the green arc joins row 0007 to its `ref_B` 0004; the pink arc joins 0007 and 0010, and no single row references that pair — 0010 names 0009 and 0002, and 0009 names 0007. Read the arcs as the picture's commentary on three of the six pointers. The references are in the rows.

---

## D4 — The same data in 3D (visualization)

Printed subtitle: *This is a projection, not storage.*

Four labelled formations: **PIE (star)** · **DESSERT (star)** · **WHOLE (star)** · **CUSTOMER (star)**, threaded by coloured wire.

Printed beneath:

> Repeated passages through the same variable form a star.
> Pointers create structure by routing through earlier entries.
> The 3D view is generated from the 1D array and its references.
> Nothing in the 3D view is stored in the main data structure.

Four stars for the four distinct values on D1. The picture is Piece 13; it cannot write back.

---

## D5 — Building a star (repeated occurrences)

Printed subtitle: *Every occurrence of the same word adds another passage through the same star.*

```
 1st PIE   →   2nd PIE   →   3rd PIE   →   More PIE
 (0000)        (0003)        (later)       (more history)
```

Printed beneath:

> Each new occurrence routes through the existing formation.
> The star becomes more complex as more history participates.
> The star is not a point. It is an accumulated 3D formation.

`(0000)` and `(0003)` are D1 rows. `(later)` and `(more history)` are not rows; D prints no third PIE index.

---

## D6 — Higher-dimensional participation (emerges naturally)

Printed subtitle: *Pointers can reference pointers, creating relationship-to-relationship chains.*

```
 WORD        POINTER          POINTER          POINTER
 ●    ───→   ●      ───→      ●      ───→      ●      ───→
 0000        0002             0007             0010
 PIE         0000 → 0001      0006 → 0004      0009 → 0002
 └──────────────┘            └──────┘         └──────────────┘
  Word to word               Relationship      Relationship to
  relationship               to relationship   an earlier relationship
```

Printed at the right:

> Each level can participate in later levels. This creates N-dimensional structure without changing the storage model. It is still one 1D array.

**Level, not reference** — `[INFERENCE]`, premise: the printed refs under each dot. The chain's arrows run 0000 → 0002 → 0007 → 0010, but row 0007 references 0006 and 0004, not 0002. The arrows draw four *levels* — a word, a word-to-word pointer, a pointer-to-pointer, a pointer to an earlier pointer — chosen from D1, not a path of references. Row 0010 does reference 0002, so the last hop is also a real reference; the middle hop is not. Do not read D6 as *"0002 is referenced by 0007."*

---

## Key properties (printed, nine)

```
 • One continuous append-only array
 • Words and pointers are both entries
 • Pointers reference earlier positions
 • Pointers can reference other pointers
 • Repeated words form stars
 • Relationships participate in later relationships
 • N-dimensional structure emerges from participation
 • No separate graph, no separate database
 • 3D (and higher) views are projections, not storage
```

---

## Footer (printed on D)

```
 Same simple rule: Input arrives. Append a new section to the Lace.
 Use pointers to participate in what already exists.        One line. Infinite structure.
```

This is the array voice of the rule A13 / B12 / C12 print in the mechanism voice. Same rule, two sayings; AGENTS.md carries both.

---

## Fields

Off Graphic D only. In / Does / Break / Gap. Not manifest piece fields.

| # | Printed title | In | Does | Break | Gap |
|---|---|---|---|---|---|
| D1 | The 1D Lace (append-only array) | arrivals and pointers already appended | shows eleven rows of one append-only line; WORD and POINTER as rows; refs to lower indices | delete, rewrite, reorder, compact; a second line | when each POINTER row was appended `[GAP]` (G2); slot order `[GAP]` |
| D2 | What each entry looks like | one WORD, one POINTER | fixes the two entry shapes: `{index,type,value}` and `{index,type,ref_A,ref_B}`; a pointer is Lace and referenceable | a third type; an extra field; a payload on WORD; a gloss | equality of `value` `[GAP]` (G1); the words *exactly two* not printed |
| D3 | How pointers build structure | the same eleven rows | draws the line with three gloss arcs; later entries reference words or pointers | reading an arc as a stored edge; an edge table | which pairs get a pointer `[GAP]` (G2) |
| D4 | The same data in 3D (visualization) | the D1 line and its references | renders four stars from repeated values and routes; stores nothing | treating the render as state; writing back | — |
| D5 | Building a star (repeated occurrences) | PIE at 0000, 0003, later | each occurrence is another passage through one formation; star is not a point | interning the repeats; a Star table; a count | whether a later pass must carry a POINTER beyond what D1 shows at 0004 `[GAP]` |
| D6 | Higher-dimensional participation (emerges naturally) | rows 0000, 0002, 0007, 0010 | shows four levels of participation on one array; pointers may reference pointers | reading the level arrows as `ref_A/ref_B`; an N-D store | — |
| keys | Key properties | the six panels | nine printed invariants of the store | any of the nine negated | — |
| footer | Same simple rule | an arrival | states the array voice of the rule | a second rule; a query interface | *when* to use a pointer `[GAP]` |

---

## Fence

| On D | Not on D — and not in this file |
|---|---|
| eleven rows, two types, backward refs | an emission schedule, a fan-out rule, an adjacency rule |
| `ref_A` / `ref_B` as two printed slots | the words *exactly two*; a slot-assignment rule |
| *the variable is the word* | an equality / case / tokenization rule; an intern table |
| pointer-to-pointer at 0007, 0009, 0010 | a required pointer per later pass beyond row 0004 |
| stars as projection (D4, D5) | a Star table, a Star row, coordinates |
| nine key properties | a document / conversation / provenance row type |
| the array-voice footer rule | a query, delete, transaction or multi-Lace interface |
| four stars for four values | a stored meaning for any of them |

HCC π, Cup C*, Water OBS do not appear here. A's, B's and C's files are not this file.

---

## What D leaves open — pointed, not filled

Each item is already open in `graphics-close-reading.md` §6 or `systems-manifest.md`; this file adds none and closes none.

- **when** a POINTER row is appended (G2 / RM-A retain-when) — D shows results, not a schedule;
- **arity** — drawn as two, six of six, never written as a rule;
- **slot assignment** — what puts an index in `ref_A` rather than `ref_B` (close reading §2);
- **G1** — what makes two `value`s the same word;
- **eventual reference** — D1 happens to reference every row but the newest; not printed as a rule (close reading §3);
- **route families** — C6's four names have no field on D2 (close reading §4).

---

## Pass 1 deltas

| Ticket | Action |
|---|---|
| T1 | Header, tagline, footer transcribed as printed |
| T2 | D1 eleven rows carried; diffed clean against the close reading and the fixture (receipt in the pass findings) |
| T3 | D2–D6 and the nine key properties transcribed; D3 arc endpoints and the D6 level-vs-reference note recorded as `[INFERENCE]` with premises |
| T4 | Fields and Fence tables; opens pointed, none filled; pointer from `docs/graphics/README.md` |

A map on this station is four passes. This is pass 1 of the D companion and the whole of reference-audit pass 1. Leftovers are the next iteration's, not pass 7.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Copying the eleven rows off the picture onto paper is allowed. Deciding which row should have been written is not. RM-A remains `[GAP]`.
