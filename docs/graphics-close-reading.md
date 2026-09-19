# Close reading: what the four graphics actually fix

Second pass over `docs/graphics/`, at panel and row grain.

`docs/systems-manifest.md` maps the pieces and names the gaps. This file does not
repeat it. It works the one piece of hard evidence the source contains — the
eleven numbered rows in panel D1 — and reports what those rows close, what they
leave open, and one claim in the source that no file in this repo had recorded.

Source of record is unchanged: `docs/graphics/`, then the manifest. Panels are
cited as in the manifest (`A1`–`A13`, `B1`–`B12`, `C1`–`C12`, `D1`–`D6`).

**Grounding** (`docs/kit/agent-control.md` C01). Graphic D read directly from
`docs/graphics/data-structure-1d-array.png`: `VISUALLY_OBSERVED`. Panel D1's
eleven rows transcribed and the derived claims re-checked mechanically. Physical
cord: `NOT_PERFORMED` - no AI here has held a lace. Claim origin: `SOURCE` for
§1-§3, `INFERENCE` for §4 (stated as such), `SOURCE` for §5. Human acceptance:
`ABSENT` throughout. This file settles nothing and proposes no Core structure.

---

## The evidence

Panel D1, transcribed exactly:

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

Six pointers. Everything below is read off them.

---

## 1. What the rows close

These hold in all six pointers. They are not inferences.

- **Backward-only.** Every reference is to a strictly lower index than the
  pointer's own. 0002 refs {0000, 0001}; 0004 refs {0003, 0000}; 0006 refs
  {0003, 0005}; 0007 refs {0006, 0004}; 0009 refs {0008, 0007}; 0010 refs
  {0009, 0002}. No exception. Confirms D "Key properties" and `CONTRIBUTING.md`
  item 3.
- **Arity is 2, uniformly.** Six of six. The two-slot shape is not only in the
  examples: D2 draws it as the entry schema, under the heading *"What each entry
  looks like"* and the line *"Minimal structure. No extra machinery."* The
  manifest calls the shape "(example form)" (Piece 5). D2 is drawn as more than
  that. The source still never writes the words *exactly two*, so arity stays
  open — but the evidence for 2 is stronger than "one example."
- **A pointer may reference a pointer.** 0007, 0009, 0010. This is the storage
  correspondent of higher-dimensional participation, stated outright in D6.
- **Type is closed at two values.** Only WORD and POINTER appear. No document,
  conversation, or provenance entry type exists anywhere in D.

---

## 2. The slot problem: what distinguishes `ref_A` from `ref_B`

The manifest records that references point backward (Piece 5). It does not
record what puts an index in slot A rather than slot B. The rows answer, and the
answer is not what an implementer would guess.

**Slot order is not chronological.** Two of six pointers have `ref_A < ref_B`;
four have `ref_A > ref_B`:

| Pointer | ref_A | ref_B | Order |
|---|---|---|---|
| 0002 | 0000 | 0001 | A < B |
| 0004 | 0003 | 0000 | A > B |
| 0006 | 0003 | 0005 | A < B |
| 0007 | 0006 | 0004 | A > B |
| 0009 | 0008 | 0007 | A > B |
| 0010 | 0009 | 0002 | A > B |

So `ref_A` is not "the earlier one" and not "the newly arrived one."

**What it is, in all six:** the subject of the panel's own gloss. "**PIE** relates
to DESSERT" (A=PIE). "**New PIE** relates to first PIE" (A=new PIE). "**This
PIE** relates to WHOLE" (A=this PIE). "**A relationship** participates in another
relationship" (A=0006). "**CUSTOMER** relates to that relationship"
(A=CUSTOMER). "**This relationship** relates to an earlier relationship"
(A=0009). Six of six: `ref_A` is the thing being described, `ref_B` is what it
is described against.

**[GAP] Nothing in the array determines which of the two is the subject.** In
0002 and 0006 the subject is the *earlier* member of the pair; in 0004 it is the
*later*. All three have PIE as subject — PIE is the topic of the passage, and
the topic is chosen by the author of the example, not computed from the line. An
implementer handed a word and a target still cannot derive slot assignment.

This is a distinct gap from emission timing. Even granted a rule for *when* a
pointer is written and *what* it points at, the pointer's own internal shape
carries an undetermined choice. Filling it with a convention — "A is always the
new arrival" — would contradict rows 0002 and 0006.

---

## 3. Emission is underdetermined, and the rows prove it

The manifest states that D1 "is an illustrative mix of WORD and POINTER rows,
not a complete emission algorithm" (Piece 5), and marks the emission rule
[GAP]. The rows demonstrate it rather than assert it. Two independent
demonstrations:

**Adjacency does not emit a pointer.** The array holds four adjacent WORD pairs.
Only two are linked:

| Adjacent WORD pair | Words | Linked by |
|---|---|---|
| 0000, 0001 | PIE, DESSERT | 0002 ✔ |
| 0001, 0003 | DESSERT, PIE | — ✘ |
| 0003, 0005 | PIE, WHOLE | 0006 ✔ |
| 0005, 0008 | WHOLE, CUSTOMER | — ✘ |

DESSERT→PIE and WHOLE→CUSTOMER are consecutive words with no pointer between
them. "Every consecutive pair emits a pointer" is therefore ruled out by the
source itself — not merely unstated.

**Pointer count per arrival is variable.** Pointers appended after each WORD,
in order: **0, 1, 1, 2, 2**. No arrival-driven rule of fixed fan-out fits.

Taken together: D1 shows what pointers *can express*. It is not a trace of a
deterministic emitter, and it cannot be reverse-engineered into one.

One further pattern, recorded but **not** promoted to a rule: every entry except
the newest (0010) is referenced by at least one later entry. If that were a
constraint it would be a powerful one — every section eventually participates.
The source never states it, and eleven rows are not enough to distinguish a rule
from a tidy illustration. **[GAP]**

---

## 4. The dimension ladder has exactly one rung with no store

Graphic C climbs 1D → 5D+. Read each rung against D's entry schema and ask what
in the array carries it. [INFERENCE] — the mapping is this file's reading, not
drawn in the source.

| Rung | C says | Storage correspondent in D |
|---|---|---|
| 1D (C2) | "a line in time and order" | index order |
| 2D (C3) | "crossings and adjacency … co-occur" | index adjacency *(see §3 — whether adjacency alone is a relation is itself open)* |
| 3D (C4) | "looping, over/under, threading; repeated words form persistent stars" | equality of `value` across WORD entries (D5) |
| **4D (C6)** | "the same star in multiple independent relation families — dictionary / document / conversation / provenance route" | **none** |
| 5D+ (C7) | "touches participate in later touches; relation among relations" | a POINTER whose ref is a POINTER index (D6, rows 0007/0009/0010) |

Four of five rungs land on something the array holds. **4D does not.** A POINTER
entry is `{index, type, ref_A, ref_B}`. No slot distinguishes a dictionary route
from a document route from a provenance route. C6 asks for *four independent
relational axes*; D gives no way to tell one axis from another.

This is the structural reason `CONTRIBUTING.md` has to forbid splitting
dictionary / document / conversation / provenance into engines: the graphics
name four families the store cannot currently distinguish, so the pressure to
add a discriminator is constant and comes from the source itself.

Three readings are open. **The source does not choose, and neither does this
file:**

1. **Families are reader-supplied.** Consistent with D4, "the 3D view is
   generated from the 1D array and its references. Nothing in the 3D view is
   stored." Cost: C6's *independent* axes must then be recoverable from topology
   alone, which the source never demonstrates.
2. **A family is just a route** — a path through the array — and C6's four
   labels are exposition, not structure. Cost: "traversed under another axis"
   (C6) becomes loose talk.
3. **A field is missing from D.** Cost: a schema change the source did not draw.
   The manifest already flags this move as a model break (Hidden couplings).

**[GAP]** Which of the three holds.

---

## 5. A source claim this repo had not recorded

Graphic A's header reads:

> One continuous strand. **Every word a centimeter of wire.** Every word's star
> a persistent 3D formation. Meaning does not exist. Only structure, sequence,
> and participation.

**`centimeter`, read off the PNG at iteration 4 pass 5.** This document and three
files on the graphics shelf had transcribed it `centimetre`. The graphic is the
source of record; the spelling here now matches it.

The scale clause appears nowhere in `README.md`, `AGENTS.md`,
`docs/systems-manifest.md`, or `docs/reason-model-map.md`. It matters because the
repo's first line is a physical instruction — *put a shoe lace in your hands* —
and this is the only place the source fixes the exchange rate between that object
and the model.

### The centimeter is the index unit

**Human ruling:** *the unit is the index. The centimeter **is** the index unit,
whatever a unit of lace is.*

**So the header's clause is not an analogy and must not be read as one.** It is the
source naming the step between one position on the strand and the next. One
centimeter is one index. The lace is a 1D array; the array's positions are
indices; the source calls an index a centimeter of wire.

**This document said otherwise for one commit.** It read the ruling as demoting
the clause to a physical metaphor — *"an index has no centimetres"* — and that was
wrong. The ruling names the unit; it does not retire it.

**The conversion table is kept for the record and is `[UNSUPPORTED]`.**

| Text | Lace | |
|---|---|---|
| a 12-word sentence | 12 cm — a hand's span | `[UNSUPPORTED]` |
| a 114 cm shoe lace (45 in) | ~114 words — a short paragraph | `[UNSUPPORTED]` |
| a 1,000-word document | 10 m | `[UNSUPPORTED]` |
| an 80,000-word book | 800 m | `[UNSUPPORTED]` |

**What is wrong with it is the counting, not the unit.**

It reads *one word, one centimeter* as *one word, one index* — **and that assumes
only WORDs occupy indices.** They do not. The array holds WORD **and** POINTER
entries, and panel `D1` shows **eleven rows for five words: six pointers against
five words.** Measured in indices, `D1`'s example is **eleven centimeters, not
five**, and every row of the table above is short by whatever the pointers cost.

**`[GAP]` — does a POINTER occupy a centimeter?** The source names the unit and
does not say what fills it. `D1` puts pointers in the array's own rows, which is
the reason to think they do; nothing in the four graphics states it. **The ruling
fixes the unit. It does not fix the census, and a convenient census must not be
invented for it.**

So the hands test in `docs/reason-model-map.md` still measures something real —
**a centimeter of lace is an index of Lace** — and what remains unknown is how many
indices a given text costs, not what an index is.

---

## 6. What `docs/pointer-emission.md` has to decide

`AGENTS.md` names that file as the next honest artifact and forbids Core until it
exists. This section is the inventory it has to work from — what is already
settled, and what only the author can settle. It proposes no answers.

**Already closed by the source — any rule must satisfy these:**

1. References point strictly backward (§1).
2. A pointer may reference a WORD or a POINTER (§1, D6).
3. A pointer is itself Lace and is referenceable by later entries (D2).
4. Only WORD and POINTER exist as types (§1).
5. Nothing is deleted or rewritten; indices are permanent (D1 footer).

**Open — the author decides, and the graphics cannot help:**

6. **When** a pointer is appended. Ruled out by §3: "on every adjacent pair."
7. **Arity.** Six of six are 2-ref and D2 draws two slots; the source never
   fixes it (§1).
8. **Slot assignment** — what makes an index `ref_A` rather than `ref_B` (§2).
   This one is easy to miss, because a reader assumes chronology and the rows
   refute it.
9. Whether adjacent WORD rows are already a relation without a pointer (§3, and
   manifest open question 2).
10. Whether every entry must eventually be referenced (§3).
11. Which of the three 4D readings holds (§4).

Items 6, 7 and 9 are already in the manifest's open questions. **Items 8, 10 and
11 are added by this pass.**

Word-identity is not on this list. It is prior to all of it: `value` equality is
the only identity key the source shows (D2, "a word is just its variable"), so
the tokenization gap and the star-identity mechanism are one gap, and the
manifest already says changing it "would silently fuse or split stars"
(Piece 7).

---

## 7. Historical bearings (external report — data, not authority)

A conversation-recovery note dated 18 September 2026, produced by another
assistant, was supplied to this repository. Under `docs/kit/agent-control.md` C06 it
is **another agent's report: data to analyse.** It grants no authority and closes
no gap. It is recorded here only where it bears on a finding above.

One claim in it was mechanically checkable and **checks out**: it cites commit
`eed8396` as the agent-policy publication, and that commit exists on `main`.

### Bears on §1 — arity

The note reports that a September 6-7 phase used **unary `ATOM` / `POINT(target)`**
language. `docs/kit/agent-control.md` C04 already anticipates this and directs that it
be recorded as `[CONFLICT]`, not resolved.

> **[CONFLICT]** Graphic D draws two slots and six of six pointers use two. The
> project's own history contains a *unary* pointer form. Neither silently becomes
> authority. §1 above says the evidence for arity 2 "is stronger than one
> example" — that remains true of the graphics, and it is now explicitly not a
> reason to choose. Arity stays open.

### Bears on §2 — slot assignment

The note reports a 29 August correction — *"No sorting!!! Arrival sequence!"* —
rejecting canonicalization and symmetry of Touch arguments.

> **[INFERENCE]** Independent of the graphics, the author has previously refused
> to let argument order be normalised away. §2 found that D1's slot order is
> semantic rather than chronological and must not be assumed. These agree. The
> note states the historical language "is not a current POINTER schema," so this
> is corroboration of the *shape* of the finding, not a closure of item 8.

### Bears on §6 — emission

The note reports a 26 August user statement, *"Nothing can touch lace without
growing lace,"* alongside a historical position that logical reads append
pointers.

> **[CONFLICT]** That is an emission-shaped claim, and if accepted it would bear
> directly on item 6. The note itself records the current disposition: read and
> emission semantics are **not accepted**, and "no automatic emission rule
> follows." Recorded as a historical candidate. It does not close item 6.

### Disposition of prior implementations

The note reports that a 29 August handoff rejected all three walker candidates and
left no clean authoritative file, and it lists prior failures in which machinery
was altered and the altered machine's results attributed to Lace — an invented
recursion guard, a "local fidelity mirror" substituted for the authoritative file,
an external spelling lookup bypassing traversal, and breadth-first closure
standing in for continuing behaviour.

### Second pass (same day, same status: data, not authority)

**Anchor note** (F3, applied here). The binding on `main`,
`docs/history/history-recovered-pass-2-2026-09-18.md`, is a *reading* of the extract and
does not carry every passage cited below. Checked: the phrases
`dynamic-arity` and `original image identities` appear in the extract
(`Lace_Memory_Recovery_Pass_2_2026-09-18.md`, workspace attachment) but **not** in
that binding. Those two items are cited to the extract, which is not in this
repository — an anchor this repository cannot currently resolve. **[GAP]** whether
the extract itself should be filed.

`Lace_Memory_Recovery_Pass_2_2026-09-18.md` reads ten historical documents
directly. Four items bear here.

**The provenance of the four graphics is unestablished.** The pass reports that a
14 September exchange calls four images "communication barrier passing outputs"
and that one was described as containing `ref_A`/`ref_B`, but that the search
**"did not recover original image identities"**, generation dates, or links
proving those images are the current A/B/C/D files.

> This file is built entirely on panel D1 of
> `docs/graphics/data-structure-1d-array.png`. Current law names the four graphics
> the source of record, so the reading stands on the declared source. But the
> chain from those images to any earlier authored artifact is **`UNESTABLISHED`**,
> and this file should not be read as reaching past the images themselves.

**Arity gains a third candidate, so §1 loosens further.** The same passage names a
September **"dynamic-arity diagram"** as a separate lead.

> **[CONFLICT]** Three historical positions now stand against Graphic D's two
> slots: unary `POINT(target)` (§7 above), dynamic arity (this pass), and the
> two-reference form D2 draws. §1 says the evidence for 2 "is stronger than one
> example." That remains true *of the graphics* and is now clearly not a reason to
> choose. Arity is more open than when §1 was written, not less.

**One historical emission rule survives contact with D1.** The pass records that
an arriving figure matching an earlier figure causes a tie to be appended
(D01 §3.5; D09 "A tie is a block"). Tested against the eleven rows:

| | Result |
|---|---|
| Repeat-occurrence WORDs in D1 | one — `0003 PIE`, first at `0000` |
| Does it carry a tie back to its first occurrence | yes — `0004`, *"New PIE relates to first PIE"* |
| Pointers the rule accounts for | 1 of 6 |

> **[INFERENCE]** This is a different status from the adjacency candidate in §3.
> Adjacency is **refuted** by D1 — two of four adjacent pairs carry no pointer.
> The exact-match tie is **not refuted**: it holds on every case D1 contains
> (1 of 1), and is merely **insufficient**, saying nothing about the other five
> pointers. A partial emission rule is not a closure of item 6, and the pass notes
> at least two further competing historical accounts — admission as *change* in a
> populated window (D07 §9), and pointability/crossing (D04). Recorded, not
> adopted.

**Citation hazard, self-applying.** The pass found that D01 cites `axioms.html`
card numbers as load-bearing, that the recovered deck has no such numbers, and
that the subjects at those ordinals do not match — concluding that
**"title, actual text and version are needed."**

> Panel labels `D1`, `B8`, `C6` are assigned by the manifest and by these files.
> They are not printed in the graphics. Combined with the unestablished provenance
> above, this repository can drift exactly as D01 did. This file happens to
> transcribe D1's eleven rows verbatim, so its claims survive a relabelling; that
> was not deliberate. See `docs/clock/agent-interaction-model.md` §3b F3.

Evidence state for every item in this section: `OBSERVED` in a retrieved report;
`NOT_TESTED` here. Human acceptance: `ABSENT`. No item above changes §1-§6.

## Citation index

| Claim | Panel |
|---|---|
| The eleven-row array | D1 |
| WORD and POINTER entry schemas; "minimal structure, no extra machinery" | D2 |
| Pointers referencing pointers | D3, D6 |
| 3D view generated, not stored | D4 |
| Star as repeated passage through one variable | D5, B3, A5 |
| Dimension ladder 1D → 5D+ | C2, C3, C4, C6, C7 |
| Four named relation families | C6 |
| "Every word a centimeter of wire" | A header |
| Sequence is the physical route | B5, A9 |
| Projection is a shadow that cannot write back | B11, C11, D4 |
