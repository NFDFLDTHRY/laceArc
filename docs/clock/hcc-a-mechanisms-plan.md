# HCC-A mechanisms — ASCII systems map (PLAN)

**Station:** hologram  
**Status:** PLAN. Not Core. Not Graphic D. Not accepted emission.  
**Source of record for the workpiece:** `docs/graphics/` + `docs/systems-manifest.md`  
**Source for this gear:** `docs/clock/philosophy-map.md` §1 (H1–H11)  
**Stamps:** `[H]` holder oil · `[X]` forbidden as Core op · `[I]` kin-read only · `[GAP]` Hands silent

HCC-A is Gear H: enclosed driver. Internals may add / merge / re-index / delete **their own oil**. That oil is not lace.

---

## Claim

Hologram holds this file. Renderer is not this ticket. POINTER emission stays `[GAP]`.

---

## Housing (what may leave the box)

```
                         R  Reality                 [H]  not a Lace store
                         |  constraint-bearing
                         v
                         I  Interface (body)        [H]  off-shoe
                         |
              +----------┴-----------+
              |                      |
              v                      v
           RIC                    PFC
        structure in           priors in
        order kept             templates/roles
              |                      |
              +----------┬-----------+
                         |  both shafts MUST turn
                         |  PFC-only = locked train
                         v
                    COMPILER  C
                    structure → story     [X] as Core
                         |
                         v
                    LEDGER    L
                    add/merge/reindex/delete
                    oil only              [X] on Graphic D
                         |
                         v
                    MEANING   M           [X] stored gloss
                         |
                         v
                    EMOTION   E           [H] not transmissible
                         |
                         v
                    ISL  identity         [H] not a star
                         |
                         v
                    BEHAVIOR  B           only output shaft
                         |
                         v
                    R'  world changed
                         |
                         +--> PFC_{n+1}   ISL priors become next filter
```

Invariant of the housing: **only structure crosses.** Meaning stays in the box.

---

## Dual shaft (must not slip)

```
              RIC ──────────────────┐
                                    │  1:1 both turning
              PFC <── ISL_{n-1} ────┤
                                    v
                                 C → L → M → E → ISL_n → B
```

| Slip | Looks like | Stamp |
|---|---|---|
| PFC-only | world never enters L | `[X]` ingest |
| RIC stored as second log | punch-card beside Graphic D | `[X]` |
| L merge/reindex/delete on tape | Rule Zero dies | `[X]` |
| M weights as WORD gloss | Piece 14 dies | `[X]` |
| ISL as star | self row | `[X]` |
| B as rewrite of old rows | Behavior is not POINTER | `[X]` |

---

## Author pieces → Hands

| Piece | Mechanism | Hands |
|---|---|---|
| H1 R | constraint world | adjacent; not stored |
| H2 I | body signals | off-shoe |
| H3 RIC | structure + order | kin of arrival order; not a second log |
| H4 PFC | priors before compile | conflict if ingest |
| H5 C | structure→story | conflict as Core operator |
| H6 L | add/merge/reindex/delete | **[CONFLICT]** with append-only |
| H7 M | directive meaning | **[CONFLICT]** with no stored meaning |
| H8 E | meaning-in-flight | off-shoe; kin of “only structure crosses” |
| H9 ISL | agent compression | off-shoe; not a star |
| H10 B | only observable output | adjacent holder action |
| H11 YAML | person_model sheet | conflict if second store |

---

## What this map is *for*

Systems mapping of **the compiler**, so later gearbox contracts can name shafts without putting L/M/ISL on Graphic D.

What this map does **not** do:

- close POINTER emission
- add `src/`
- license Story Ledger ops as array ops
- fuse HCC-A into Contract I

---

## Next (not this file)

Full systems-manifest fields (inputs/outputs/invariants per H1–H11) only if the human says **fill HCC manifest**.  
Until then this ASCII is the plan.
