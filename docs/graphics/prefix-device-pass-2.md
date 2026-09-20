# Prefix device on Hands — Pass 2

**Status:** EXECUTED. Not accepted. Not emission.  
**Station:** graphics.  
**Plan:** [`prefix-device-pass-2-plan.md`](prefix-device-pass-2-plan.md)  
**Depends on:** [`prefix-device-pass-1.md`](prefix-device-pass-1.md)  
**Authority:** four PNGs, then pass 1 stamps. Picture wins.  
**Spoken:** session only. Not in-repo. Not acceptance.  
**Emission:** `[GAP]`. No `src/`. WORD remains a drawn D type. Ruling slots blank.

Pass 3 (Q0 opened; slots still unspoken): [`prefix-device-pass-3.md`](prefix-device-pass-3.md). Emission file: [`../pointer-emission.md`](../pointer-emission.md).

---

## Receipt

Two collisions kept separate. No winner.

| Collision | Result |
|---|---|
| I — what an arrival writes | HANDS: WORD rows with values, including later occurrences. SPOKEN: text need not be kept; pointers into seed suffice. Punch-card requires arrival order, not a section kind. Whether those are one fact: `[GAP]`. |
| II — what a word is to the machine | HANDS: variable is the word. SPOKEN: word is its defining pointer cluster. B4 route is KIN, not a replacement of D2. Whether cluster is VIEW or replacement: `[GAP]`. |

G2 not filled. "Then write POINTER" not written as Φ.

---

## Sheet I — saved text vs pointer-only

| Item | Stamp | Cite | Notes |
|---|---|---|---|
| D1 WORD rows carry values | HANDS | D1 `0000 PIE`, `0001 DESSERT`, `0005 WHOLE`, `0008 CUSTOMER` | The variable is stored on the line. |
| D1 second PIE is a WORD | HANDS | D1 `0003 WORD PIE`, then `0004 POINTER 0003→0000` | A later occurrence is a new WORD. The pointer is a later section, not the occurrence. |
| D2 WORD shape `{index, type, value}` | HANDS | D2 | "A word is just its variable. The variable is the word." |
| D5 more history = more WORD passages | HANDS | D5 first PIE `0000`, second `0003`, later more | Star grows by more WORD rows through the same variable. |
| B6 / C10 / A13 punch-card | HANDS | B6 raw sequence, no interpretation; C10 word by word; A13 punch-card style | Hopper sees words in order. Silent on WORD vs POINTER as the written section. |
| B5 sentence is the wire, not a unit | HANDS | B5; C10 the sentence becomes a physical route | Forbids a stored sentence object. Does not, by itself, delete WORD values. |
| Spoken: don't save original text | SPOKEN | this session | Not in the PNGs. Not in-repo. |
| Spoken: pointers to dictionary entries suffice | SPOKEN | this session | Compatible with D3 participation. Not drawn as "no WORD rows." |
| Does punch-card require a WORD row? | `[GAP]` | B6, C10 | Order is required. Kind of section written is not. |
| Does "no sentence object" delete WORD values? | `[GAP]` | B5 vs D1 | KIN only. B5 and D1 can both be true: no document blob, still WORD variables on the line. |

---

## Sheet II — variable vs defining cluster

| Item | Stamp | Cite | Notes |
|---|---|---|---|
| D2 variable *is* the word | HANDS | D2 | Identity drawn on the WORD row. |
| B4 / C9 definition is a route | HANDS | B4, C9, A11 | PIE → dessert → slice → whole → food is wire through ordinary stars. Nothing stored as a gloss. |
| A11 each star is a word | HANDS | A11 | Star identity tracks the word, not a separate sense object. |
| B10 stored gloss forbidden | HANDS | B10 | PIE = "a dessert…" is the anti-model. A cluster of POINTER rows on L is not that string. |
| Spoken: word = defining pointer cluster | SPOKEN | this session | Not on D2. Not accepted. |
| Is the cluster a VIEW of WORD rows + POINTER rows? | `[GAP]` | D3, D6, B4 | A reading: D2 keeps the variable; B4/D6 are how definition participates. Picture does not name that reading. |
| Is the cluster a replacement for the WORD row? | `[GAP]` | vs D2, D5 | Spoken leans that way for "the machine." Hands still draw WORD at first and later occurrences. |

B4 is KIN to Collision II. It is not a verdict. Route ≠ delete the variable.

---

## Ruling slots

Empty. Not Φ. Not G2.

```
I.  On a later arrival of a word already on L,
    the section written is:  WORD / POINTER / both / [unspoken]

    [unspoken]

II. To the machine, a word is:
    the variable on the WORD row /
    the defining cluster /
    the variable, with the cluster as VIEW /
    [unspoken]

    [unspoken]
```

---

## What this pass did not do

- Did not pick a winner.
- Did not demote WORD as a D type.
- Did not write document-feed-as-POINTER-only.
- Did not treat session speech as in-repo SPOKEN on the emission file.

Pass 3 opened Q0 and bound Q1/Q5. Did not fill these slots.

---

## Governing check

```text
Two collisions, not one.
HANDS keep WORD rows and D2's variable.
SPOKEN stays spoken.
B5 is not a license to erase D1 values.
B4 is not a license to replace D2.
G2 stays [GAP].
Shoe in hands, or no.
```
