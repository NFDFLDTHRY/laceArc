# MANIFEST RECONCILIATION — Pass 1 findings

**Status:** **EXECUTED** 2026-09-21.  
**Campaign:** Manifest Reconciliation. **Pass:** 1.  
**Primary semantic products:** [global mechanism catalog](../systems-manifest-ascii.md#pass-32--manifest-reconciliation-pass-1--canonical-mechanism-catalog) · [mechanism contract registry](../systems-manifest.md#current-mechanism-contract-registry--manifest-reconciliation-pass-1).  
**Source court:** the four canonical PNGs A–D, sight-read directly from the four source images supplied by the human in this session.  
**Implementation:** none. No `src/`, Cargo, build, Core code, acceptance, or retention-rule invention.  
**Lab Source Architecture Pass 4:** remains **PAUSED**. Its experiment is preserved but its source premise must be rewritten before resumption.

## 1. What Pass 1 changed

The two canonical documents now have explicit non-overlapping jobs:

```
systems-manifest-ascii.md
    catalogs mechanisms + authority + connections + contract IDs

systems-manifest.md
    defines behavioral contracts and integration boundaries
```

Pass 32 is the current global-catalog layer. The manifest carries the matching SM-C01…SM-C21 contracts, the open SM-GAP-RM boundary, and SM-X-* integration contracts for non-Core mechanism families.

Older global-ASCII pass bodies remain dated history beneath the current catalog.

## 2. 45/45 source-panel census

The census below records the mechanism families each source panel actually supports. It is a **mapping**, not a new source transcription.

### Graphic A — growth story

| Panel | Source job seen | Canonical mechanism routing |
|---|---|---|
| A1 Start | empty continuous Lace | L-M01 |
| A2 First word | first occurrence begins word-star; wire continues | L-M03 · L-M04 · L-M07 |
| A3 More words | each word through its star/new star; sequence continues | L-M03 · L-M07 · L-M08 |
| A4 Sentence in 3D | sentence is physical route in arrival order | L-M08 |
| A5 Repetition strengthens stars | later occurrence uses same star from new direction | L-M07 |
| A6 PIE in context | “The order said: PIE”; each word through star; PIE creates/reinforces star | **L-M10 · L-M07** |
| A7 Later words connect | slice/pie traverse stars; sequence enlarges PIE formation | L-M07 · L-M08 |
| A8 Ambiguity forms in 3D | same PIE star, distinct paths, not collapsed edges | L-M16 · L-M07 |
| A9 Responsibility chain | document chain follows actual text sequence; no meanings stored | L-M10 · L-M08 · L-M16 |
| A10 Higher-dimensional touch | new input meets prior star history; prior structure participates later | L-M11 · L-M12 |
| A11 Growing lexical Lace | dictionary + document share one Lace; definitions/documents/conversations add wire | L-M09 · L-M10 · L-M07 |
| A12 Zoom PIE star | many distinct passes/context sources remain, none merged/lost | L-M07 · L-M12 · L-M17 |
| A13 What model gives you | one strand, preserved occurrences, persistent stars, routes, touches, punch-card arrival, no meaning; governing rule | L-M02 · L-M16 |

### Graphic B — wire mechanisms

| Panel | Source job seen | Canonical mechanism routing |
|---|---|---|
| B1 Continuous wire | one strand, no cuts/resets/rewriting, history extends | L-M01 |
| B2 Word occurrence arrives | new wire routes through persistent word-star | L-M03 · L-M07 |
| B3 Repetition builds star | later occurrences add passes; passes remain | L-M07 · L-M12 |
| B4 Dictionary wiring | **explicit definition route PIE → dessert → slice → whole → food**, no stored definition | **L-M09 · L-M16** |
| B5 Sequence is physical | exact word order is exact route; sentence is wire | L-M08 |
| B6 Document feed | raw ordered word feed, no interpretation, one Lace | L-M03 · L-M10 |
| B7 Higher-dimensional touch | new wire threads existing 3D structure, not attach-only | L-M11 |
| B8 Touch participates later | touch remains; future wire may traverse it; permanent structure | **L-M12** (+ L-M11 context) |
| B9 Star-inside-star traffic | many passes/crossings in one star; complexity accumulates | L-M07 · L-M17 |
| B10 No collapse | database lookup / flat edge / stored definition / semantic collapse are anti-models | **L-M16** |
| B11 Projection vs Lace | 2D graph is a shadow; actual Lace has threading/depth; view only | **L-M15** |
| B12 Governing rule | arrive → route through star → continue | L-M02 |

### Graphic C — dimensional presentation

| Panel | Source job seen | Canonical mechanism routing |
|---|---|---|
| C1 Rule zero | one strand, always growing | L-M01 |
| C2 1D presentation | order/time view of same wire | L-M08 · L-M14 |
| C3 2D presentation | flat projection reveals crossings/adjacency but collapses depth | L-M14 · L-M15 |
| C4 3D presentation | looping/threading/persistent stars become visible | L-M07 · L-M14 |
| C5 What a dimension adds | independent participation axis, not new meaning/content | L-M14 · L-M16 |
| C6 4D presentation | dictionary/document/conversation/provenance are independent route families over same star | L-M14 |
| C7 5D+ | touches participate in later touches; relations among relations | L-M12 · L-M13 · L-M14 |
| C8 How N-D presents | denser/recoverable/revisitable structure from repeated threading | L-M14 · L-M17 |
| C9 Dictionary wiring example | definition route through other stars; later docs reuse stars; no stored meaning | L-M09 · L-M16 |
| C10 Input treatment | raw ordered word-by-word input; occurrence preserved; no parsing/discard | L-M03 · L-M10 · L-M08 |
| C11 Projection vs actual Lace | flat graph is shadow; actual Lace retains threading/context; no write-back | L-M15 |
| C12 Governing rule | same three verbs; touches remain/reuse; no stored meaning | L-M02 · L-M12 · L-M16 |

### Graphic D — storage court

| Surface | Source job seen | Canonical mechanism routing |
|---|---|---|
| D1 1D Lace | concrete WORD/POINTER history; six retained POINTER witnesses including POINTER→POINTER | L-M04 · L-M05 · L-M06 · L-M13; bounded witness for L-M18 |
| D2 Entry shapes | WORD variable; POINTER has two earlier refs; POINTER is itself Lace | L-M04 · L-M05 · L-M06 |
| D3 Pointers build structure | later entries may reference WORD or POINTER | L-M05 · L-M13 |
| D4 Same data in 3D | 3D is visualization generated from 1D refs; not stored | L-M06 · L-M07 · L-M15 |
| D5 Building a star | repeated word occurrences add passages through same formation | L-M04 · L-M07 |
| D6 Higher-dimensional participation | POINTER→POINTER chains; each level can participate later; still one array | L-M05 · L-M12 · L-M13 · L-M14 |
| D footer | append new section; use pointers to participate in existing Lace | L-M01 · L-M02 · L-M06 |
| D key properties | one array; WORD/POINTER only; backward refs; pointer→pointer; stars; later relationship participation; no separate graph/store; views are projections | L-M01 · L-M04 · L-M05 · L-M06 · L-M12 · L-M13 · L-M15 |

**Coverage: 45/45 source surfaces.**

## 3. The provenance defect that forced this pass

A prior relationship-evidence finding attributes the explicit `PIE → dessert → slice → whole → food` route to **A6**. Direct sight of the PNG disproves that attribution.

- **A6:** “The order said: PIE.” Context/star reinforcement.
- **B4:** explicit dictionary definition path.
- **C9:** dictionary-wiring analogue.
- **A11/A12:** dictionary/document integration and dictionary-definition traffic.

The defect had propagated into current canonical consumers. Pass 1 repairs the two canonical documents:

- `systems-manifest-ascii.md` Pass 32: L-M09 = **B4 · C9 · A11/A12**.
- `systems-manifest.md` Piece 9 / SM-C09: same.
- A6 remains under document/context feed, where it actually belongs.

Historical receipts are not rewritten.

## 4. Second source-boundary correction

The old projection source bundle sometimes grouped **B10–B11**.

Direct source separation is:

- **B10 = no-collapse / anti-model**, therefore SM-C16.
- **B11 = projection vs actual Lace**, therefore SM-C15.

The current manifest now reflects that split. Piece 14 also gains A8/A12 as direct no-collapse/preserved-distinct-pass evidence.

## 5. Persistence is not retention

The source graphics strongly establish:

```
already-recorded passage/touch
        ↓
remains in Lace
        ↓
can participate later
```

This is **persistence + re-entry** (SM-C12).

They do not universally establish:

```
sampled structural candidate
        ↓
???? exact condition ????
        ↓
new retained POINTER
```

That remains **SM-GAP-RM**.

B8 is therefore important source evidence, but its contract is: *once a touch exists, it remains and may participate later*. Reading B8 as the universal sampled-structure retention predicate would fire F5.

## 6. Graphic-C 2D and H7–H12 sampling are different mechanisms

Pass 1 preserves two different derived objects:

- **Graphic C 2D / 3D / N-D:** SOURCE/VIEW presentation of participation that already exists.
- **H7–H12 position×scale sampling:** HUMAN + DERIVED/LAB working machinery used to discover structural evidence.

SM-C20 is explicitly not attributed to C3. Both are non-authoritative stores, but only the latter performs sampling computation.

## 7. D1 state witness is not a generative rule

D1 proves that six POINTER rows with specific operands exist in the illustrated prefix. It strongly constrains:
- binary shape in that specimen;
- backward references;
- POINTER→POINTER permission/witnesses;
- retained relation topology.

D1 does **not** by itself explain the universal condition that selected/materialized those six rows. SM-GAP-RM stays open.

## 8. Catalog ↔ contract verification

Current canonical catalog:
- **21** named Lace mechanisms: L-M01…L-M21;
- **1** explicit open seam: L-GAP-RM;
- **4** external integration classes: behavioral-goal, research, platform/toolchain, Layer III.

Contract resolution check:
- SM-C01…SM-C21: **all present**;
- SM-GAP-RM: **present**;
- SM-X-BEH / SM-X-RES / SM-X-PLAT / SM-X-L3: **all present**;
- catalog contract refs missing from manifest: **0**.

The original Pieces 1–15 remain detailed contracts and are not renumbered. Specialized current contracts cover the later mechanisms that do not fit one-to-one into those original Pieces.

## 9. Contract decomposition correction

The old “2 contracts + 1 dependent layer” description predated current sampling/search machinery.

Current decomposition is now:

```
Contract I      persistent Lace / legal rows
Contract II     thin arrival surface

Derived working machinery
                sampling + search
                reconstructible / non-authoritative
                no independent write authority

Layer III       projection / visualization / steward reads
                no upward write
```

This prevents real sampling computation from being demoted to “just a picture” while also preventing it from becoming a second store.

## 10. Downstream drift register — NOT repaired in Pass 1

Pass 1 intentionally repairs the canonical pair first. These consumers now require a bounded propagation pass.

| Surface | Drift found | Disposition |
|---|---|---|
| `docs/atomic-primitives-map.md` | mechanism 9 still cites **A6, A11; B4; C9** for dictionary wiring | **CURRENT DRIFT — repair next** |
| `docs/atomic-primitives-map.md` | projection mechanism still cites **B10–B11** together | **CURRENT DRIFT — repair next** |
| `docs/plans/fixtures/hologram-ir-golden-v0.2.0.json` | definition-route graphics include A6; projection graphics include B10–B11 | **fixture drift — evaluate/rebuild only under fixture rules** |
| `docs/history/relationship-evidence-pass-2-findings.md` | explicitly misreads A6 as the B4 route | **HISTORICAL — preserve, annotate/index rather than rewrite** |
| `docs/history/relationship-evidence-pass-3-handoff.md` | carries A6/A11→Piece9 routing inherited from old manifest | **HISTORICAL handoff — preserve; current reader qualification needed if surfaced** |
| `docs/kit/agent-control.md` | current prose still says arbitrary non-root-touch relation/sample selection is the remaining gap | **CURRENT STALE FRAME — repair next** |
| `docs/prompts/context-pass.md` | same stale selector-era current sentence | **CURRENT STALE FRAME — repair next** |
| `docs/plans/lab-source-architecture-pass-4-plan.md` | premise says no pass ever read A–D for retention; prefix-device work already did bounded retention-adjacent reading | **PAUSED PLAN — rewrite premise before resume, do not execute as-is** |

Search also returns many dated ROOT/TOUCH/FOLD and historical pass records containing the older selector phrase. Those are not automatically drift: dated receipts may remain as history if clearly superseded.

## 11. Falsifier results

| F | Result |
|---|---|
| F1 catalog mechanism lacks contract | **did not fire** — 0 missing |
| F2 active canonical contract lacks catalog route | **did not fire** for current Lace mechanisms after registry |
| F3 SOURCE cites wrong panel | **FIRED before repair** — A6/B4; current canonical pair corrected |
| F4 HUMAN/DERIVED attributed to PNG | **did not fire in new registry**; sampling explicitly separated from C3 |
| F5 persistence treated as retain-when | **did not fire in new contracts**; SM-C12 vs SM-GAP-RM split |
| F6 D1 promoted to full selection algorithm | **did not fire** |
| F7 superseded history treated as current | **found downstream stale-current phrases**, queued; historical bodies preserved |
| F8 cataloging promotes candidate to Core | **did not fire**; SM-X-* fences explicit |
| F9 retention/materialization silently closed | **did not fire**; SM-GAP-RM explicit |
| F10 ASCII/manifest duplicate each other | **did not fire**; catalog vs contract roles explicit |

## 12. Pass 1 verdict

**PASS 1 EXECUTED — CANONICAL PAIR RECONCILED WITH DOWNSTREAM DRIFT REGISTERED.**

The global ASCII now answers **what mechanisms exist and how they connect**. The systems manifest now answers **how each mechanism behaves and what it may not do**. The four graphics are upstream of both; human/derived/lab machinery is labeled rather than back-attributed to the pictures.

The next correct task is a **downstream propagation pass**, not Lab Source Architecture Pass 4. Pass 4 remains paused until its premise is rewritten against this canonical map.
