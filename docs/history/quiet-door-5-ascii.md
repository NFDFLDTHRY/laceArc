# Quiet door #5 — History ASCII

**Status:** CLOSED 6/6. Receipt: [quiet-door-5-receipt.md](quiet-door-5-receipt.md).  
**Object:** `docs/history/README.md`  
**Station:** history.  
**Executed:** [quiet-door-5-pass-1-plan.md](quiet-door-5-pass-1-plan.md) · [quiet-door-5-pass-2-plan.md](quiet-door-5-pass-2-plan.md) · [quiet-door-5-pass-3-plan.md](quiet-door-5-pass-3-plan.md) · [quiet-door-5-pass-4-plan.md](quiet-door-5-pass-4-plan.md) · [quiet-door-5-pass-5-plan.md](quiet-door-5-pass-5-plan.md) · [quiet-door-5-pass-6-plan.md](quiet-door-5-pass-6-plan.md).  
**Not:** Core. Not an emitter. Not Hands. Not history pass 8. Not door #4 pass 7.  
**Emission:** `[GAP]`. No `src/`. History door bytes untouched. Extracts untouched.

This diagram is a reading of the history door. The extracts stay evidence. The sit-notes stay rulings. Live law still stores.

---

## Spine (pass 1)

```
                         HISTORY DOOR
                         docs/history/README.md
                         readings against current law
                         not Core; not an emitter; not source of record
                         four graphics remain Hands
                         rejected walkers stay rejected
                         moved here in defrag pass 1


  Extract vs sit-note
    extract  = what a pass recovered (evidence)
    sit-note = how that extract sits against law now (ruling)
    separate files on purpose

  Bound
    pass 1  sit
    pass 2  sit
    pass 3  extract
    pass 4  extract + sit
    pass 5  extract + sit
    pass 6  plan + extract + sit
            HCC-A / Cup / Water originals vs surfaces
    pass 7  extract + evidence JSON
            bound; cites pass 6

  [X]  new extract this iteration
  [X]  revive a walker
  [X]  history amends live law
  [X]  src/
  [GAP] pointer-emission answers (G2)
```

History reads. Law stores. Walkers stay dead. This is not pass 8.

---

## Fence

| On this door | Not this spine |
|---|---|
| readings against current law | a second Hands store |
| extract ≠ sit-note | merge them into one file |
| passes 1–7 bound | invent pass 8 |
| walkers rejected | revive from an extract |
| no `src/` | open Rust |

---

## Pass 1 deltas

| Ticket | Action |
|---|---|
| T1 | Spine drawn from `docs/history/README.md` headings |
| T2 | Extract vs sit-note named, not merged |
| T3 | G2 pointed, not filled |
| T4 | Door + extracts untouched |

Queued (later passes on this door): extract vs sit-note vs law grain; readings-do-not-amend-law walk; seam vs live law and court; receipt.

## Pass 2 — fields

Off the history door headings. Door wins over invention.

| # | Block | In | Does | Break | Gap | Role |
|---|---|---|---|---|---|---|
| Hy1 | the history door | a reader at `docs/history/` | names extracts and sit-notes | treat this page as live law | — | index |
| Hy2 | readings, not Core | recovered notes | says not source of record | treat history as Hands | — | fence |
| Hy3 | extract | what a pass recovered | holds evidence | rewrite the extract into a sit-note | — | evidence |
| Hy4 | sit-note | an extract against current law | holds the ruling | treat the ruling as a new extract | — | ruling |
| Hy5 | bound 1–7 | the table on the door | lists what already landed | invent pass 8 | — | bound list |
| Hy6 | rejected walkers | AGENTS adjacent-reading list | says stay rejected | revive from an extract | — | forbid |
| Hy7 | pass 6 HCC/Cup/Water | originals vs surface branches | extract + sit already bound | drop gears into Core as rows | — | bound extract |
| Hy8 | pass 7 evidence JSON | machine record, not prose | cites pass 6 | treat JSON as live law | — | machine record |

G2 stays `[GAP]`.

## Pass 2 deltas

| Ticket | Action |
|---|---|
| T1 | Eight In / Does / Break / Gap / Role rows |
| T2 | Hy2 Break = history as Hands; Hy6 Break = revive walker |
| T3 | Spine left in place |
| T4 | Door + extracts untouched |

## Pass 3 — grain

Extract is evidence. Sit-note is ruling. Law stores. Those are not the same column.

| Kind | Says | `which` | Collapse would look like |
|---|---|---|---|
| History door | readings against current law; not Core | history | treat the index as live law |
| Extract (as a class) | what a pass recovered | history | rewrite evidence into a ruling |
| Sit-note (as a class) | how that extract sits against law now | history | treat the ruling as live law |
| Pass 6 extract | HCC-A / Cup / Water originals vs surfaces | history | drop gears into Core as rows |
| Pass 6 sit-note | ruling on that extract | history | amend live law from the sit |
| Pass 7 extract + JSON | bound; cites pass 6; machine record | history | treat JSON as the store |
| Live law | the store; history does not amend it | law | let an extract win over this file |

## Pass 3 deltas

| Ticket | Action |
|---|---|
| T1 | Seven-row grain |
| T2 | Extract ≠ sit-note ≠ law |
| T3 | Pass 8 not a row |
| T4 | Door + extracts + live law untouched |

## Pass 4 — walk

This walk recovers evidence, sits it against law, and does not write law. Hands keeps A13. Walkers stay dead.

### Operator (from the history door)

```
 ╔══════════════════════════════════════════════════════════════╗
 ║  Readings against current law. Not Core.                     ║
 ║  History does not amend law.                                 ║
 ╚══════════════════════════════════════════════════════════════╝

  reader arrives at docs/history/README.md
    if an extract is asked     → evidence; do not rewrite it
    if a sit-note is asked     → ruling; not live law
    if law is asked            → send to live law
    never: extract ⇒ law
    never: sit-note ⇒ law
    never: walker ⇒ revived
    never: this iteration ⇒ pass 8

  not "emit POINTER."
  not A13 arrive / through-star / continue.
```

### Application register

| # | Role | What arrives | What is walked | What continues | New machine? |
|---|---|---|---|---|---|
| Hy1 | door | a reader at `docs/history/` | index of extracts / sits | live law still the store | no |
| Hy2 | readings | a bid to treat history as Hands | keep them off Core | — | no |
| Hy3 | extract | a recovered pass | hold evidence | do not rewrite | no |
| Hy4 | sit-note | an extract against current law | hold the ruling | do not become law | no |
| Hy5 | bound 1–7 | a request for pass 8 | list what landed | stop | no |
| Hy6 | walkers | a revival from an extract | reject | AGENTS list still binds | no |
| Hy7 | pass 6 | HCC / Cup / Water originals vs surfaces | already bound | gears stay off Core rows | no |
| Hy8 | pass 7 JSON | a machine record | cite pass 6 | not the store | no |

All `New machine?` = no.

### History versus live law versus Hands

```
 quiet-door-5-ascii.md       history door            live law
 --------------------       -------------            --------
 history reading            the index                the store
 names extract / sit        names extract / sit      wins

 wrapper-as-Core            [X]
 Hands verbs pasted here    [X]
 walker revived             [X]
 pass 8                     [X]
 G2                         [GAP]
```

## Pass 4 deltas

| Ticket | Action |
|---|---|
| T1 | One walk box quoted from the history door |
| T2 | Eight-row register; all New machine?=no |
| T3 | History ↔ live law ↔ Hands |
| T4 | Door + extracts + live law untouched |

## Pass 5 — seam

Four files. None becomes another.

| File | Names | Stores | Amends law? | Becomes the other if |
|---|---|---|---|---|
| `docs/history/README.md` | extracts and sit-notes; not Core | no | no | treated as live law |
| `docs/law-why-these-documents.md` | why the stakes; how code may exist | yes — live law | this is the store | treated as a history extract |
| `docs/README.md` | Hands / gate / law / maps | no | no | treated as an extract or as live law |
| `docs/history/quiet-door-5-ascii.md` | the history door as a reading | no | no | treated as live law or as pass 8 |

History names. Law stores. Court names Hands. This file reads the history door.

## Pass 5 deltas

| Ticket | Action |
|---|---|
| T1 | Four-file seam |
| T2 | None of the four rewritten |
| T3 | This reading is not the store |
| T4 | Door / extracts / live law / court untouched |
