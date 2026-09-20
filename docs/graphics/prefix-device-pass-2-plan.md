# Prefix device on Hands — Pass 2 PLAN

**Status:** EXECUTED — sheet on `docs/graphics/prefix-device-pass-2.md`. Not accepted. Not emission.  
**Station:** graphics.  
**Depends on:** [`prefix-device-pass-1.md`](prefix-device-pass-1.md) EXECUTED.  
**Object:** the leftover pass 1 named — spoken “don’t save the text” versus Graphic D WORD rows.  
**This pass:** write a conflict sheet. Keep both sides visible. Do not pick a winner.  
**Authority:** four PNGs, then pass 1 stamps.  
**Spoken (not Hands, not acceptance):** dictionary seed; arrival pays a pointer into that seed; original text need not be kept; a word to the machine is its defining cluster.  
**Not authority:** span pyramids, emit-when, arity, adjacency-as-relation, clock, crates, history.  
**Emission:** `[GAP]`. No `src/`. Do not edit `docs/pointer-emission.md` this pass.

```
pull/ff → claim graphics
        → write this plan
        → STOP
execute (this tick):
        → fill the conflict sheet from the PNGs
        → leave ruling slots empty
        → mark this plan EXECUTED
        → check · commit · STOP
```

---

## 0. Question (one act)

**Are D1 WORD rows and the spoken “pointers to dictionary entries are enough” the same fact on one line, two readings of one fact, or a real conflict?**

Pass 2 does not answer. It separates the collision into two sheets so a later ruling cannot smash them into G2.

---

## 1. Already flat (pass 1)

| Holds |
|---|
| D is the only store |
| D2 draws two section kinds: WORD and POINTER |
| Recursion on the substrate is D3 + D6 |
| B4 / B6 / A2 / A11 / C9 / C10 are SEED on that same line |
| D1 mix is not Φ's schedule |
| B8 / A10 are prefix-available, not a when |

Do not restamp panels. This pass hangs under those stamps.

---

## 2. Two collisions (keep separate)

### Collision I — what an arrival writes

| Side | Claim | Where it lives |
|---|---|---|
| Hands | An arriving word can be a WORD row with a value (`PIE`, `DESSERT`, `CUSTOMER`). Second PIE is WORD `0003`, not only a pointer. | D1, D2, D5, A2, A5 |
| Spoken | After the dictionary is on the line, input need not keep the original text. Pointers into dictionary entries are the structure. | this session; not in-repo |

Punch-card (B6 / C10 / A13) sits on both sides: raw word-by-word arrival. It does not say whether the *section written* is WORD, POINTER, or both.

### Collision II — what a word is to the machine

| Side | Claim | Where it lives |
|---|---|---|
| Hands | “A word is just its variable. The variable is the word.” Star = repeated passage through that variable. | D2, D5, B2, B3 |
| Spoken | A word is the pointer cluster that defines it. | this session; B4 / C9 give the *route*, not that identity-replacement |

B4 “a definition is a route through other stars” is not yet “delete the WORD row.” Route and identity are different sentences.

Execute fills evidence rows. It does not merge I and II.

---

## 3. Stamp vocabulary (this pass only)

| Stamp | Means |
|---|---|
| HANDS | Picture states this side. Cite panel. |
| SPOKEN | Human said this in session. Not in-repo. Not accepted. |
| KIN | Looks related; does not decide the collision. |
| `[GAP]` | Picture silent on which write / which identity. |
| RULING | Empty until the human writes in-repo. |

---

## 4. Sheets (empty until execute)

### Sheet I — saved text vs pointer-only

| Item | Stamp | Cite | Notes |
|---|---|---|---|
| D1 WORD rows carry values | | | |
| D1 second PIE is a WORD | | | |
| D2 WORD shape `{index, type, value}` | | | |
| D5 more history = more WORD passages | | | |
| B6 / C10 punch-card names words arriving | | | |
| B5 sentence is the wire, not a unit | | | |
| Spoken: don’t save original text | | | |
| Spoken: pointers to dict entries suffice | | | |
| Does punch-card require a WORD row? | | | |
| Does “no sentence object” delete WORD values? | | | |

### Sheet II — variable vs defining cluster

| Item | Stamp | Cite | Notes |
|---|---|---|---|
| D2 variable *is* the word | | | |
| B4 / C9 definition is a route | | | |
| A11 each star is a word | | | |
| B10 stored gloss forbidden | | | |
| Spoken: word = defining pointer cluster | | | |
| Is the cluster a VIEW of WORD rows + POINTER rows? | | | |
| Is the cluster a replacement for the WORD row? | | | |

### Ruling slots (stay empty)

```
I.  On a later arrival of a word already on L,
    the section written is:  WORD / POINTER / both / [unspoken]

II. To the machine, a word is:
    the variable on the WORD row /
    the defining cluster /
    the variable, with the cluster as VIEW /
    [unspoken]
```

Filling either slot from habit is a fail. Filling either slot as a when-law is a fail.

---

## 5. What execute may write

- Product: `docs/graphics/prefix-device-pass-2.md` — filled sheets I and II, ruling slots blank.
- Mark this plan EXECUTED.
- One line on [`prefix-device-pass-1.md`](prefix-device-pass-1.md) pointing at the product.
- Door pointer on [`README.md`](README.md).

---

## 6. What execute must not do

- Pick a winner.
- Delete or demote WORD as a D type.
- Write “document feed is POINTER-only” as Φ.
- Edit `docs/pointer-emission.md`.
- Treat session speech as SPOKEN-in-repo (it is not; it is session-SPOKEN on the sheet).
- Start pass 3.

---

## 7. Single execute act

When the human says proceed (not this tick):

1. Re-open D1 D2 D5, B4 B5 B6 B10, A2 A5 A11, C9 C10.
2. Fill sheets I and II with HANDS / SPOKEN / KIN / `[GAP]` only.
3. Leave ruling slots blank.
4. Stop.

**Success:** both collisions visible; WORD still a drawn type; G2 untouched.  
**Failure:** “don’t save text” becomes Core; second PIE is explained away; cluster replaces D2; a when-rule sneaks in as “then write POINTER.”

---

## 8. Queued — not this pass

| Later | Act |
|---|---|
| Pass 3 | Only after a human in-repo sentence on I and/or II: which emission Answer lines may be marked SPOKEN. Not invented here. |

---

## 9. Governing check

```text
Two collisions, not one.
I = what arrival writes.
II = what a word is.
Hands keep WORD rows until the human says otherwise in-repo.
Spoken stays spoken.
Φ stays a lens.
G2 stays [GAP].
Shoe in hands, or no.
```
