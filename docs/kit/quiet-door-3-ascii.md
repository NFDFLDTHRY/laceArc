# Quiet door #3 — Court ASCII

**Object:** `docs/README.md`  
**Station:** kit (reading). Law wins on the door.  
**Executed:** [quiet-door-3-pass-1-plan.md](quiet-door-3-pass-1-plan.md) · [quiet-door-3-pass-2-plan.md](quiet-door-3-pass-2-plan.md) · [quiet-door-3-pass-3-plan.md](quiet-door-3-pass-3-plan.md).  
**Not:** live law. Not Hands. Not Graphic D. Not cold-doors pass 7. Not door #1 pass 7.  
**Emission:** `[GAP]`. No `src/`. Court door bytes untouched.

This diagram is a reading of the court. The court still names. Live `docs/law-why-these-documents.md` wins.

---

## Spine (pass 1)

```
                         THE COURT
                         docs/README.md
                         shoe in hands is the court
                         kit reads; law wins; door bytes stay
                         not everything here is Hands


  Hands — source of record
    graphics/                 four canonical PNGs
    systems-manifest.md       Pieces 1–15
    graphics-close-reading.md D1 eleven rows
    everything else on this page
      is derived and can be wrong about them

  Open gate
    pointer-emission.md       DRAFT. Not accepted.
    a commit is not acceptance
    existence is not acceptance

  Law
    law-why-these-documents.md    live law
    staking-the-workspace.md      original ASCII
    references.md                 citations; no PDF

  Maps and readings
    reason-model-map.md
    atomic-primitives-map.md      [PROPOSAL]
    namespace-register.md
    systems-manifest-ascii.md
    never a second source

  Operations
    coherence-audit-log.md        append-only
    defrag-plan.md                complete; superseded as filing plan

  Not prose
    shadow-clock-gearing.html     Layer III; ≠ Graphic D

  Shelves
    clock clipboards coord gearing
    history hologram kit plans prompts


  [X]  second Hands store
  [X]  accepted emission
  [X]  src/
  [GAP] pointer-emission answers (G2)
```

The court names. Law is stored in live law. D is still the Hands store. Kit is not a second store.

---

## Fence

| On this door | Not this spine |
|---|---|
| kit reads the court | a substitute for live law |
| Hands / gate / law / maps split | merge those into one type |
| DRAFT emission, not accepted | fill G2 |
| no `src/` | open Rust |
| shelves have their own doors | this page is those shelves |

---

## Pass 1 deltas

| Ticket | Action |
|---|---|
| T1 | Spine drawn from `docs/README.md` headings |
| T2 | Dual-bind: kit reads; law wins |
| T3 | G2 pointed, not filled |
| T4 | Court bytes untouched |

Queued (later passes on this door): Hands vs law vs maps grain; court-indexes mechanism; seam vs live law and package door; receipt.

## Pass 2 — fields

Off the court headings. Door wins over invention.

| # | Block | In | Does | Break | Gap | Role |
|---|---|---|---|---|---|---|
| Ct1 | the court page | a reader at `docs/` | names Hands / gate / law / maps / operations / shelves | treat this page as live law | — | index |
| Ct2 | Hands | the four PNGs + manifest + D1 reading | says source of record; everything else can be wrong about them | treat this kit reading as a fifth graphic | printed panel numbers stay graphics | source pointer |
| Ct3 | open gate | `pointer-emission.md` | says DRAFT; existence ≠ acceptance | treat DRAFT as accepted | answers (G2) | gate |
| Ct4 | Law | live law + staking + references | points at the file that wins | copy law onto this page | R1 sizes stay law-station | law pointer |
| Ct5 | Maps and readings | derived files named here | says never a second source | treat a map as Hands | maps-owned bodies stay maps | reading pointer |
| Ct6 | Operations | audit log + defrag plan | names append-only / complete | rewrite an earlier audit tick | — | ops pointer |
| Ct7 | Not prose | shadow-clock HTML | says Layer III; ≠ Graphic D | treat the viewer as D | renderer PAUSED stays hologram | viewer pointer |
| Ct8 | Shelves | eight shelf paths | sends the reader to those doors | this page becomes those shelves | — | shelf index |

G2 stays `[GAP]`.

## Pass 2 deltas

| Ticket | Action |
|---|---|
| T1 | Eight In / Does / Break / Gap / Role rows |
| T2 | Ct1 Break = page as live law; Ct3 Break = DRAFT accepted |
| T3 | Spine left in place |
| T4 | Court bytes untouched |

## Pass 3 — grain

Page label is what the court *calls* the file. `which` is who *owns* it. Those are not the same column.

| Named on the court | Page label | `which` now | Collapse would look like |
|---|---|---|---|
| `graphics/` | Hands — source of record | graphics | treat the court as owning the PNGs |
| `systems-manifest.md` | Hands | law | treat the contract map as a fifth graphic |
| `graphics-close-reading.md` | Hands | graphics | treat D1 reading as live law |
| `pointer-emission.md` | open gate | law | treat DRAFT as accepted because law owns it |
| `law-why-these-documents.md` | Law — live law | law | treat the court page as this file |
| `staking-the-workspace.md` | Law | law | treat staking as the winner over live law |
| `references.md` | Law | law | drop PDFs into the repo because Law named them |
| `reason-model-map.md` | Maps and readings | maps | treat KEEP/FORBID as Hands |
| `atomic-primitives-map.md` | Maps — `[PROPOSAL]` | maps | treat P0–P4 as Core |
| `namespace-register.md` | Maps | maps | merge A5 senses because they share a letter |
| `systems-manifest-ascii.md` | Maps | maps | treat the ASCII spine as the manifest |
| `coherence-audit-log.md` | Operations | maps | rewrite an earlier tick |
| `defrag-plan.md` | Operations | maps | treat complete as still the filing plan of record |
| `shadow-clock-gearing.html` | Not prose | renderer | treat the viewer as Graphic D |

Hands on this page is a **source claim**. It is not `which=graphics` for every row under that heading. Manifest sits in Hands on the page and in law at `which`.

## Pass 3 deltas

| Ticket | Action |
|---|---|
| T1 | Fourteen-row grain |
| T2 | Page label ≠ ownership |
| T3 | Manifest Hands-on-page / law-at-which |
| T4 | Court bytes untouched |
