# Graphic A → ASCII systems diagram — Pass 4 PLAN

**Status:** PLAN only. Not run. One act. Remainder queued.  
**Station:** graphics (HELD Grok-graphics).  
**Authority:** `docs/graphics/from-words-to-worlds.png` — header, A1–A13 captions, A13 governing rule, A11 “dictionary + document,” footer. Then passes 1–3 on [`graphic-a-ascii.md`](graphic-a-ascii.md).  
**Not authority:** Graphic B/C/D panels (cite D only as type seam). Manifest Pieces 9–11 field dumps. C6 family names.  
**Emission:** `[GAP]`. No `src/`. PNG bytes stay put. Passes 1–3 stay.

Pass 3 split A8 and inventoried A12. The human named pass 4 and required a rigorous mechanism map of A. Execute is not this tick.

```
pull/ff → refresh graphics
        → write this plan
        → STOP
execute (later, one authorized tick):
        → append mechanism map to graphic-a-ascii.md
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**What is the mechanism Graphic A actually states, how does every panel apply that one mechanism, and what does A refuse to add as extra machinery — especially dictionary / document versus Graphic D’s two entry types?**

Rigorous here means: quote A’s operator; classify each panel as an application of that operator or as a view of applications already done; mark every name on A that is **not** a type on D; leave silent what A does not draw.

Pass 4 does not invent a second operator. It does not fill G2. It does not start Graphic B.

---

## 1. What is already flat (do not redo)

| Pass | Holds |
|---|---|
| 1 | A1→A13 spine; A13 mechanism sentence; 3D = reading of D |
| 2 | In / Does / Break / Gap per panel |
| 3 | A7/A8 two passes; A12 six source labels; none merged |

Pass 4 hangs a **mechanism map** under those. It does not redraw them.

---

## 2. Operator as A states it (T1)

A13, after the checklist:

> Everything builds on the same simple rule:  
> Input word arrives. Route new wire through that word’s star. Continue.

Header constraints on that rule:

> One continuous strand.  
> Every word a centimetre of wire.  
> Every word’s star a persistent 3D formation.  
> Meaning does not exist. Only structure, sequence, and participation.

Footer: not a database; one growing 3D history / 3D object — already dual-bound in pass 1 to D as store.

Execute draws **one operator box**. Three verbs only: arrive · route through star · continue.  
No fourth verb. No “emit POINTER.” No “write definition.”

A13 also states punch-card: input treated exactly as it arrives. That is how arrival is allowed to look, not a second machine.

---

## 3. Application register (T2)

Every panel is either the operator’s precondition, one application of the operator, a specimen of several applications, or a view of applications already done.

Rows execute will fill (empty until proceed). Re-read the PNG. If a panel is not an application, say so in Role; do not force a verb.

| # | Role (precondition / application / specimen / view / statement) | What arrives | What is routed | What continues | New machine? |
|---|---|---|---|---|---|
| A1 | | | | | |
| A2 | | | | | |
| A3 | | | | | |
| A4 | | | | | |
| A5 | | | | | |
| A6 | | | | | |
| A7 | | | | | |
| A8 | | | | | |
| A9 | | | | | |
| A10 | | | | | |
| A11 | | | | | |
| A12 | | | | | |
| A13 | | | | | |

Expected shape (not frozen; execute may correct off the PNG):

- A1 precondition (empty strand).
- A2–A5 successive applications (first star, more stars, sentence-as-route, repeat pass).
- A6–A9 specimen: same operator on PIE feeds; A8 is a second application, not a disambiguator.
- A10 application onto a star that already contains history (“higher-dimensional touch” is A’s name for that application, not a new opcode).
- A11 statement that dictionary and document are the same operator on different feeds.
- A12 view of accumulated applications through one star.
- A13 statement of the operator.

`New machine?` must be `no` or the panel is misread. If execute cannot defend `no` from A’s caption, mark `[GAP]` — do not invent a machine to close it.

---

## 4. A11 versus D types (T3)

A11 on A: “A growing lexical Lace (partial view).” “Dictionary + document wired together.” “Each star is a word.” “Every definition, every document, every conversation adds more wire through these stars.”

A names three **feeds**: definition, document, conversation.  
Graphic D names two **types**: WORD, POINTER.

Execute must draw the seam, not close it with a new type.

```
 A names          D stores
 --------         --------
 definition  \ 
 document     }→  more WORD rows (and, when the rule exists, POINTER rows)
 conversation /   types on D: WORD | POINTER only

 document-boundary-as-entry     [GAP]   (A never draws a DOCUMENT row)
 conversation-as-entry          [GAP]
 definition-as-stored-gloss     [X]     (A13 / header forbid stored meaning)
```

`[X]` = A already forbids it.  
`[GAP]` = A is silent and D does not show that row; pass 4 does not add it.

Do not import B4’s PIE→dessert→slice path unless that path is drawn on A11. It is not. A11 is a partial view of many stars, not that path.

---

## 5. Seam table — on A / not on A (T4)

Execute fills from the PNG. Do not promote a Shadow name into A’s operator.

| Name | On Graphic A? | Mechanism status on this map |
|---|---|---|
| arrive / route through star / continue | A13 | the operator |
| punch-card arrival | A13 | constraint on arrival |
| star as persistent 3D formation | header, A2, A5, A12, A13 | formation / view of passes |
| sentence as physical route | A4 | application (sequence = route) |
| distinct passes, not collapsed edges | A8 | success condition, not a tool |
| higher-dimensional touch | A10 | application onto prior formation |
| dictionary + document + conversation | A11 | feed names, same operator |
| meaning | header, A9, A13 | does not exist; not stored |
| WORD / POINTER / index / arity / when | not on A | D / G2. Point. Do not fill. |
| Star table / sense list / document type | not on A | forbidden or `[GAP]` as in T3 |

---

## 6. What execute may write

Graphics station only.

- Append “Pass 4 — mechanism map” to [`graphic-a-ascii.md`](graphic-a-ascii.md): operator box, filled application register, A11↔D seam, seam table.
- Add pass 4 to that file’s Executed line.
- Mark this plan EXECUTED.

---

## 7. What execute must not do

- Redraw passes 1–3.
- Fill G2 or edit `docs/pointer-emission.md`.
- Add DOCUMENT / CONVERSATION / DEFINITION as array types.
- Copy B4 definition-path or B9 star-inside-star as if they were A.
- Treat A10 “touch” as the missing POINTER rule.
- Start Graphic B or C.
- Add `src/` or retouch PNGs.

---

## 8. Single execute act

When the human says proceed (not this tick):

1. Re-read A11 and A13 on the PNG. Operator quote must match A13.
2. Fill the thirteen-row application register. Every `New machine?` defended from that panel’s caption.
3. Draw the A11↔D seam. Document boundary stays `[GAP]`. Stored gloss stays `[X]`.
4. Fill the seam table. Stop.

Success: one operator; thirteen roles; dictionary/document/conversation are feeds; D still has two types; G2 still `[GAP]`.  
Failure: a second rule appears; a third array type appears; A10 becomes emission.

---

## Queued — next named pass, not this one

Pass 5+: Graphic B or C — other graphics, other tickets.  
This station’s A map is four passes if pass 4 executes. Do not open B from a leftover A ticket.

---

## 9. Governing check

```text
One pass, one act.
A states one rule. Panels apply it or view it.
Feeds are not types.
D remains the store.
Φ stays [GAP].
```
