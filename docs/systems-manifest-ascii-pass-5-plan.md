# Systems-manifest ASCII pass 5 plan — Core mechanisms

**Status:** EXECUTED on `docs/systems-manifest-ascii.md`. Emission `[GAP]`.  
**Station:** law  
**Authority:** `docs/systems-manifest.md` Pieces 1–2, 4–8, 11, 14–15 + composition points  
**Companion:** `docs/systems-manifest-ascii.md`  
**Not this pass:** H×C×W oil, five-stake axioms, filling G2.

Pass 4 listed source panels. Pass 5 draws the **machine those panels describe**. Mechanism ≠ panel title.

---

## What “mechanical” means on Graphic D

One operator on one store. No second clock inside I.

```
 input arrives
      │
      v
 append a section at next index     WORD  or  POINTER
      │
      v
 if POINTER: refs are strictly earlier indices
      │
      v
 participation is now on the tape
      │
      v
 continue
```

Star, route, document, dictionary, touch, dimension are **readings of that tape after several continues**, not extra operators.

---

## Tickets

### T1 — One-tick mechanism (ASCII)

Legal tick of I:

- Next index is unused. Indices forever.  
- Section is WORD or POINTER only.  
- WORD carries a variable (identity rule still `[GAP]`).  
- POINTER refs earlier indices only (D1 closed this).  
- No delete, rewrite, cut, second store.

Illegal as a tick: tidy-history compact; emit because adjacent; write P0 from a gear.

### T2 — Participation mechanism

Pointer is itself a section. Later POINTER may ref that section (D6). That is touch / “relation among relations” **as storage**, not a graph API.

Draw:

```
 WORD @ i
 WORD @ j
 PTR  @ k  → (i, j)          participates in words
 PTR  @ n  → (k, …)          participates in a participation
```

Arity in D1 is 2. Source never writes “exactly two forever.” Keep `[GAP]`.

### T3 — Star mechanism (formation, not a row)

Same variable appears at several WORD indices → star = that set of passes. Not stored as a row. D4: 3D view is not in the array.

```
 variable V
   pass @ i
   pass @ j
   pass @ …
 view: star(V)     write: only the WORDs
```

### T4 — Dual presentation of one mechanism

B12 / C12 / D footer / A13: geometric sentence and array sentence on one box (already pass 1). Pass 5 adds the **step list** so they cannot fork into two engines.

### T5 — What is not a Core mechanism

| Looks mechanical | Is |
|---|---|
| HCC S0–S7 | holder compile |
| Cup C1–C5 | event-time |
| Water F1–F5 | clutch |
| Reidemeister / slide | forbidden vs Rule Zero |
| query / delete / transaction | source gives none |
| G2 emission | unanswered |

### T6 — Sealed

Slot A vs B. Tokenization. Query operator. Adjacent-pair rule (already false).

---

## Execution (when you say go pass 5)

Edit only `docs/systems-manifest-ascii.md`. Mechanism diagrams + “not a mechanism” fence. STOP.

---

## Steward test

If the diagram needs a star table to run, it is wrong.  
If a step answers G2, delete the step.
