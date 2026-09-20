# HologramIr → viewer binding (Layer III)

**Status: PLAN / BINDING SPEC. Documentation only. No `src/`. POINTER emission remains `[GAP]`.**  
**Station: maps. Companion to [hologram-ast-ir.md](hologram-ast-ir.md).**  
**Viewer: [docs/hologram/nostd-pipeline.html](../hologram/nostd-pipeline.html)**

This file is the rigorous contract between **HologramIr fields** and the **picture** the human reviews on phone or desktop. It does not replace the IR schema; it binds chrome to schema.

---

## 0. Why a separate binding doc

`hologram-ast-ir.md` defines the IR envelope. The spike viewer proved Canvas 2D can load the golden fixture. Elaboration needs an explicit map so:

- reviewers can audit “does this pixel mean that IR field?”
- edge kinds stay visually and semantically unmerged
- fixture honesty is visible (mode / emission_gate / empty `items[]`)
- animation cannot be mistaken for emission or proved birth

Engine constraint (locked for this elaboration): **Canvas 2D only** — no Three.js, no CDN, no npm. Android-friendly. WebGPU remains a deferred option in the parent plan.

---

## 1. Viewer binding — IR field → UI chrome

| IR field | UI chrome | Notes |
|---|---|---|
| `ir_version` | status line | Shown after load / reload |
| `generated_at` | status line | ISO string from fixture / extractor |
| `source.git_rev` | status line | Fixture tag or real rev |
| `source.paths` | (reserved) | Empty in golden; future workspace scan list |
| `source.rustc_or_ra` | (reserved / status) | Golden says no AST parse |
| `source.emission_gate` | **header chip** `emission_gate: blocked\|accepted` | Red chip when blocked; never invent acceptance |
| `mode` | **header chip** `mode: fixture\|workspace` | Fixture = warn-colored chip |
| `doors[]` | graph nodes | Full `id` label; `birth_index` badge; hit-test select |
| `doors[].path` | detail panel | Path string only; not a filesystem open |
| `doors[].status` | detail panel | `fixture` ≠ `proved` |
| `doors[].no_std` | detail panel | Boolean / unknown |
| `items[]` | footer + diag | Must stay empty until extractor; footer states this |
| `edges[]` | curved arrows | Filtered by kind toggles; z-ordered (see §2) |
| `edges[].note` | detail panel edge lists | Plan cites; optional enrichment only via `note` |
| `edges[].evidence` | detail panel | `plan` / `ast` / `mixed` |
| `transforms[]` | **transforms rail** + panel | Full names; seq prefix; tap selects |
| `transforms[].door_id` | graph highlight | Selecting a transform lights its door |
| `transforms[].inputs/outputs` | detail panel ports | carrier + ty_hint |
| `transforms[].effect` | detail panel | describe_only / compose / append_strand / read_only |
| `transforms[].emission_touch` | detail panel | Must be `false` until accepted emission |
| `timeline[]` | scrubber + event summary | Play advances token + steps events |
| `diagnostics[]` | **diag strip** | Severity colors; dismissible; reload restores |
| `pieces[]` | Manifest / Both: piece nodes along strand spine | Hands ground; tap → detail |
| `pieces[].graphic_cites` | detail panel | A/B/C/D cites |
| `seams[]` | optional background bands (Manifest / Both) | contract_I / contract_II / layer_III |
| `binds[]` | Both mode: dashed PROPOSAL links piece↔door | Packaging overlay — not LAW |
| `binds[].authority` | bind stroke label / detail | Fixture must be PROPOSAL |
| view mode (UI) | **Manifest \| Packaging \| Both** toggle | Default **Manifest**; not an IR field |


Static header paths (always visible as text, not live links required):

- schema: `docs/plans/hologram-ast-ir.md`
- golden: `docs/plans/fixtures/hologram-ir-golden-v0.2.0.json` (v0.1.0 historical)
- shape check: `docs/plans/tools/hologram-ir-shape-check.py` — shape only, never the plan (F7)
- binding: `docs/plans/hologram-ast-ir-viewer.md`

---

## 1.5 Manifest vs Packaging binding

Two pictures of one IR. Hands pieces are ground; crate doors are packaging overlay.

| View mode | Spine / nodes | Edges shown | Token animation | Authority shown |
|---|---|---|---|---|
| **Manifest** (default) | Continuous **strand** wire (P1/P6 visual); piece nodes along/near spine in control-flow order (3→4→7→5→2→8…); P13/P14 as projection/constraint annotations, not peer stores; optional seam bands | Piece-local only (no door call graph required) | Along governing-rule path: arrive → star → append → continue | Hands / systems-manifest |
| **Packaging** | Existing 7-door arc + birth badges | Typed IR edges with filters (call / birth_before / premise / dataflow) | Along transform door hops (legacy) | Crate-map plan (still fixture) |
| **Both** | Strand spine + piece nodes + doors as secondary nodes | Door edge filters **and** dashed PROPOSAL binds | Prefer governing-rule path; door hops secondary | Binds labeled PROPOSAL — not LAW |

Rules:

- Switching mode never invents emission or proved births.
- Edge filters apply in Packaging and Both for door edges; binds stay visually distinct (dashed violet/amber, “PROPOSAL”).
- Arrival / dictionary / document feeds (P3/P9/P10) are Contract II — **not a door**; do not invent an `arrival/` node.
- Canvas 2D only; mobile OK; fixture diags remain.

## 2. Edge-kind visual grammar

Kinds **must not merge** into a single “depends_on” stroke. Atomic Pass 1 keeps three separate relations; dataflow is a fourth for pipeline animation.

| Kind | Color | Stroke | Bend | Z-order (bottom → top) | Meaning |
|---|---|---|---|---|---|
| `dataflow` | orange `#ff8a3a` | solid, thicker | below chord (−) | 0 (under) | Value/section carrier movement |
| `birth_before` | green `#4dff8a` | solid | above chord (+) | 1 | Serial birth gate only — **not** a Rust call |
| `call` | cyan `#3ec8ff` | solid | mid (0) | 2 | Planned or AST-resolved callee |
| `premise` | violet `#9b7bff` | **dashed**, on top | slight + | 3 (top) | Open obligation; AST alone does not discharge |

**Why no merge**

- Collapsing `birth_before` into `call` invents a Rust edge that does not exist.
- Collapsing `premise` into `dataflow` pretends an open gate is flowing data.
- Collapsing `call` into `dataflow` confuses control/use with carrier movement.
- The hologram’s job is to keep these tensions visible, not soothe them.

**Selection highlight:** when a door is selected, incident edges of enabled kinds glow; non-incident edges dim. Legend buttons toggle kinds (default: all on).

---

## 3. Transform animation semantics

- **Token** = data carrier. It travels **along the transform sequence’s door positions**, which correspond to the planned dataflow pipeline (`describe_word` → … → `orchestrate`).
- Token motion is **not** emission. `emission_touch` stays `false`; the orange token does not authorize POINTER append.
- Token motion is **not** birth unlock. Birth gates remain blocked in the golden timeline.
- Play/pause + scrubber: scrub selects `timeline[i]`; play advances the token along door hops and cycles timeline events for summary text.
- Selecting a transform on the rail shows inputs/outputs/effect/emission_touch and highlights `door_id` on the graph.

Logical pipeline (from parent plan §4), mirrored by golden `transforms[].seq`:

```text
describe_word (word)
  → constrain_pointer (pointer)
  → compose_section (route)
  → retain_section (strand)
  → read_star (view_star)
  → read_proj (view_proj)
  → orchestrate (core)
```

---

## 4. Selection / inspection contract

### Door select

Show: `id`, `birth_index`, `path`, `status`, `no_std`.  
Lists: outgoing edges by kind (with notes), incoming edges by kind (with notes).  
Related: transforms whose `door_id` matches.  
Graph: highlight node + incident edges.

### Transform select

Show: `id`, `seq`, `name`, `door_id`, `effect`, `emission_touch`.  
Ports: inputs[] then outputs[] (name, carrier, ty_hint).  
Graph: highlight `door_id` node.  
Rail: mark active chip.

### Clear select

Tap empty canvas space. Panel returns to empty prompt.

---

## 5. Fixture vs workspace mode

| Behavior | `mode: "fixture"` | `mode: "workspace"` (future) |
|---|---|---|
| Data source | Sealed golden JSON | Extractor output / CI IR |
| `items[]` | Empty | Populated from AST |
| `evidence` on edges | Mostly `plan` | Prefer `ast` / `mixed` |
| Header chip | warn-colored fixture | green workspace |
| Honesty | Must show FIXTURE_MODE / EMISSION_GATE_BLOCKED diags | Must still honor emission_gate |
| Viewer | Same page; refetch URL / path may change later | Same binding |

Golden fixture pins:

- `emission_gate: "blocked"`
- `items: []`
- all `emission_touch: false`
- door `status: "fixture"` — **not** proved

---

## 6. Non-goals (restated for the picture)

- No inventing POINTER emission from AST or from animation.
- No treating door nodes as proved births.
- No `src/`, no Cargo workspace from this viewer.
- No Three.js / CDN / npm in this page.
- Not `shadow-clock-gearing.html`; not the `{A,B,C}` holder machine.
- Markdown crate-maps are not the live dynamic feed (AST is); fixture is the interim honest stand-in.

---

## 7. Worked example — golden fixture walkthrough

File: [fixtures/hologram-ir-golden-v0.2.0.json](fixtures/hologram-ir-golden-v0.2.0.json) (current; v0.1.0 historical)

### 7.1 Birth chain (`birth_before` × 6)

```text
strand → word → pointer → route → view_star → view_proj → core
```

Birth indices 1…7 on door badges. These edges are serial gates from the crate-map — they do **not** imply Rust calls.

### 7.2 Nine calls (`call` × 9)

| from | to |
|---|---|
| route | strand, word, pointer |
| view_star | strand |
| view_proj | strand, view_star |
| core | route, view_star, view_proj |

Matches crate-map Page D proposed direct call table.

### 7.3 Dataflow pipeline (`dataflow` × 6)

| from | to | note (carrier story) |
|---|---|---|
| word | route | word describe feeds compose |
| pointer | route | pointer constraints feed compose; no emit authority |
| route | strand | compose → append retained section |
| strand | view_star | read-only star projection |
| strand | view_proj | read-only shadow |
| view_star | view_proj | proj may use star read |

Token animation follows transform seq doors: word → pointer → route → strand → view_star → view_proj → core.

### 7.4 Premise edges (`premise` × 2)

| from | to | obligation |
|---|---|---|
| pointer | route | OPEN: emission acceptance before POINTER append authority |
| strand | core | OPEN: human-accepted pointer-emission.md before any birth |

Dashed violet, drawn on top. Selecting either endpoint surfaces the OPEN note.

### 7.5 Timeline (2 events)

1. `pass_receipt` — sealed golden IR; no AST items  
2. `birth_gate` — all seven births ineligible; emission not accepted  

### 7.6 Diagnostics (3)

`FIXTURE_MODE` (info), `EMISSION_GATE_BLOCKED` (warn), `NO_AST_ITEMS` (info).

---

## 8. Acceptance criteria — “elaborated viewer”

Done when all of the following hold on main:

1. **Header** shows LaceArc / nostd pipeline hologram, Layer III, mode + emission_gate chips from IR, and schema/golden/validate/binding paths as text.
2. **Diag strip** uses severity colors; diags are dismissible; reload restores them.
3. **Edge filters** toggle call / birth_before / premise / dataflow (default all on); legend is clickable.
4. **Graph** shows full door names, birth badges, tap/click hit-test, incident-edge highlight, kind curvature + z-order (dataflow under, birth chord, call mid, premise dashed on top).
4b. **Mode toggle** Manifest | Packaging | Both (default Manifest): Manifest shows strand spine + pieces; Packaging keeps 7-door arc; Both shows PROPOSAL binds as dashed piece↔door links.
4c. Golden v0.2.0 loads by default; validator PASS on pieces/seams/binds; binds authority PROPOSAL only.
5. **Detail panel** for door: id, birth_index, path, status, no_std; outgoing/incoming by kind with notes; related transforms.
6. **Transforms rail** shows full names (wrap on mobile); tap selects transform → inputs/outputs/effect/emission_touch; highlights door_id.
7. **Timeline** scrubber + play/pause; token animates along transform/dataflow path; current event summary visible.
8. **Reload IR** refetches golden JSON; status shows `generated_at` and `git_rev`.
9. **Mobile** portrait-readable: panel below graph; no truncated-only door labels.
10. **Footer** explicitly: not shadow-clock-gearing; not {A,B,C} holder; AST items empty until extractor; emission `[GAP]`.
11. **Validator** exit 0 on golden; includes endpoint ∈ doors and transform.door_id ∈ doors invariants.
12. **This binding doc** is linked from hologram README and plans README.

Not done: real AST extractor, workspace mode, WebGPU scene, any `src/`.

---

## 9. Reload / githack

Serve `docs/` over HTTP, or open via raw.githack against the commit that contains `nostd-pipeline.html` and the golden JSON (relative fetch `../plans/fixtures/...` must resolve).

Example pattern (fill SHA after push):

```text
https://raw.githack.com/NFDFLDTHRY/laceArc/<SHA>/docs/hologram/nostd-pipeline.html
```
