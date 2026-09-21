# Hologram AST → IR — nostd pipeline projection

**Status: PLAN / PROPOSAL. Documentation only. No `src/`. POINTER emission remains `[GAP]`.**  
**Station: maps. Brief owner: human (2026-09-18).**

**Manifest Reconciliation Pass 2 qualification, 2026-09-21:** the sealed `hologram-ir-golden-v0.2.0.json` is the viewer's current default fixture but a **dated semantic snapshot**, not the current global mechanism map. Pass 32 now catalogs L-M01…L-M21 plus L-GAP-RM; the systems manifest binds SM-C01…SM-C21, SM-GAP-RM and the SM-X integration contracts. The v0.2.0 fixture intentionally remains frozen with P1–P15 and its historical three seam bands. It therefore does **not** encode the current A6/B4 or B10/B11 provenance corrections or the distinct derived sampling/search working-machinery layer. A semantic refresh requires a future schema/fixture revision; do not mutate the sealed v0.2.0 bytes in place.

## 0. What this file is

The Layer III hologram does **not** primarily project the `{A,B,C}` holder gearing diagram.

It projects **laceArc’s mapping onto the `#![no_std]` Rust build-up of system atomics**: the planned doors, their lawful calls, and the **data pipeline / transformations across time**.

**Hard requirement for dynamic update:** the live feed must read the Rust project’s **abstract syntax tree** (and derived facts). Markdown plans and git history may seed layout or timeline labels; they are **not** a substitute for AST tracking.

Until `docs/pointer-emission.md` is human-accepted and `src/` is lawful, the extractor runs only against an explicit **sealed fixture** (or stays dark). This schema is written so the same IR works for fixture → real crates without redesign.

Authority: graphics A–D, systems-manifest, staking / live Implementation Law, [rust-nostd-crate-map.md](rust-nostd-crate-map.md), [rust-nostd-branch-contracts.md](rust-nostd-branch-contracts.md), [atomic-primitives-map.md](../atomic-primitives-map.md). This file replaces none of them.

---

## 1. Product brief (locked)

| Requirement | Meaning |
|---|---|
| Subject | Current mapping of the project → nostd Rust atomics build-up |
| Open behavior | Auto-track the nostd Rust project |
| Dynamic update | **AST-backed** only |
| User sees | Data pipeline + transformations **across time** |
| Layer | III projection — read-only; must not write Core / Graphic D |
| Forbidden as primary subject | Holder `{A,B,C}` gearing HTML as the thing being “tracked” |

---

## 2. Planned doors (IR vocabulary)

Birth order (serial; from crate-map / branch cards):

1. `strand` — append-only retained line  
2. `word` — WORD occurrence value/layout (no intern store)  
3. `pointer` — POINTER layout constraints (TYPE-only until emission accepted)  
4. `route` — continue by composing strand/word/pointer for one admitted section  
5. `view_star` — read-only star projection from strand  
6. `view_proj` — read-only 1D/2D/3D shadow; may call view_star  
7. `core` — compose proved doors only (route + views)

**Nine proposed direct call edges** (crate-map Page D):

| Caller | Callees |
|---|---|
| strand | — |
| word | — |
| pointer | — |
| route | strand, word, pointer |
| view_star | strand |
| view_proj | strand, view_star |
| core | route, view_star, view_proj |

Three **separate** relations (atomic Pass 1): proposed direct call · serial birth prerequisite · required premise. The IR must not collapse these into one “depends_on” edge kind.

---

## 3. Intermediate representation (IR)

Versioned JSON (or MessagePack) document produced by the extractor and consumed by the Layer III viewer.

### 3.1 Envelope

```text
HologramIr {
  ir_version: "0.2.0"       // current viewer fixture schema; dated semantic snapshot
  generated_at: ISO-8601
  source: SourcePin
  mode: "fixture" | "workspace"
  doors: [DoorNode]         // packaging overlay (7 planned crates)
  pieces: [ManifestPiece]   // P1–P15 Hands / systems-manifest (0.2.0+)
  seams: [SeamBand]         // contract_I, contract_II, layer_III (0.2.0+)
  binds: [PieceDoorBind]    // piece ↔ door; authority PROPOSAL|SOURCE|LAW (0.2.0+)
  items: [AstItem]          // optional fine grain once src exists
  edges: [IrEdge]
  transforms: [TransformStep]
  timeline: [TimelineEvent]
  diagnostics: [Diag]
}
```

### 3.2 SourcePin

```text
SourcePin {
  git_rev: string           // tip or fixture tag
  paths: [string]           // crates / modules scanned
  rustc_or_ra: string       // tool identity + version
  emission_gate: "blocked" | "accepted"   // never invent acceptance
}
```

### 3.3 DoorNode

One node per planned door (and later per real crate/package).

```text
DoorNode {
  id: "strand" | "word" | "pointer" | "route" | "view_star" | "view_proj" | "core" | string
  kind: "planned_door" | "crate" | "module"
  birth_index: u8           // 1..7 when known
  no_std: bool | unknown
  status: "absent" | "fixture" | "present" | "proved"   // proved ≠ claimed
  path: string | null       // e.g. future strand/
}
```

### 3.3b ManifestPiece (Hands ground — ir_version ≥ 0.2.0)

Puzzle pieces from [systems-manifest.md](../systems-manifest.md). **Hands graphics remain authority.** Packaging doors do not replace pieces.

```text
ManifestPiece {
  id: "P1" .. "P15"
  title: string
  kind: string              // Primitive / Mechanism / Stage / Region / …
  summary: string           // one line
  graphic_cites: [string]   // A/B/C/D panel cites
}
```

### 3.3c SeamBand (contract seams — ir_version ≥ 0.2.0)

**Dated-schema note:** the v0.2.0 seam vocabulary predates the current contract decomposition. Its `contract_I / contract_II / layer_III` bands remain valid as the fixture's historical shape, but the current manifest also names **derived working sampling/search machinery** that is reconstructible/non-authoritative and is neither Contract I storage nor Piece-13 projection. Do not force that machinery into `layer_III` merely because v0.2.0 lacks a band for it.

```text
SeamBand {
  id: string                // e.g. contract_I | contract_II | layer_III
  label: string
  contains_piece_ids: [string]  // subset of P1..P15
}
```

- **contract_I** ≈ Lace Core (irreducible): strand/array/WORD/POINTER/star/route/touch/invariants/governing rule  
- **contract_II** ≈ Arrival Surface: Piece 3 + dictionary/document feeds (P9–P10) — **not a door**  
- **layer_III** ≈ Projection views: P12/P13 (read-only; must not write Core)

### 3.3d PieceDoorBind (packaging overlay — ir_version ≥ 0.2.0)

Maps Hands pieces → planned crate doors (crate-map Page C). **Default authority is PROPOSAL** — never invent LAW.

```text
PieceDoorBind {
  piece_id: "P1" .. "P15"
  door_id: DoorNode.id
  role: string              // one-task contribution of this bind
  authority: "PROPOSAL" | "SOURCE" | "LAW"
}
```

Golden Page C mappings (all `PROPOSAL` in fixture):

| door | pieces |
|---|---|
| strand | P1, P6 (also P8 retains order) |
| word | P4 |
| pointer | P5 |
| route | P2, P8 |
| view_star | P7, P15 |
| view_proj | P13 |
| core | P2 (composition facade) |

Arrival/feeds (P3, P9, P10) note **Contract II — not a door**. P11/P14 have no exclusive door; P14 constrains every door; P12 is Layer III reading config.

### 3.4 AstItem (fine grain; optional until src/)

```text
AstItem {
  id: string                // stable: path::name or ra item_id
  door_id: string
  kind: "fn" | "struct" | "enum" | "trait" | "impl" | "mod" | "const" | "type" | "other"
  name: string
  span: { file, start_line, end_line } | null
  attrs: [string]           // e.g. detected #![no_std]
}
```

### 3.5 IrEdge (typed; do not merge kinds)

```text
IrEdge {
  id: string
  kind: "call" | "birth_before" | "premise" | "dataflow"
  from: string              // door_id or item_id
  to: string
  evidence: "ast" | "plan" | "mixed"
  note: string | null       // plan cite when evidence=plan
}
```

- `call` — from AST use/path resolution or planned callee table when fixture  
- `birth_before` — serial gate only; never implies a Rust call  
- `premise` — open obligation from branch cards / atomic crosswalk  
- `dataflow` — value/section movement through the pipeline (see §4)

### 3.6 TransformStep (pipeline across time)

The “data pipeline and transformations” the human asked to see.

```text
TransformStep {
  id: string
  seq: u32                  // order in a run or logical pipeline
  name: string              // e.g. "retain_section", "describe_word", "read_star"
  door_id: string
  inputs: [DataPort]
  outputs: [DataPort]
  effect: "append_strand" | "describe_only" | "read_only" | "compose" | "unknown"
  emission_touch: false     // MUST stay false until accepted emission exists
}
```

```text
DataPort {
  name: string
  ty_hint: string | null    // from AST when present; else plan prose
  carrier: "strand_section" | "word_value" | "pointer_layout" | "view_label" | "other"
}
```

### 3.7 TimelineEvent

```text
TimelineEvent {
  t: string                 // ISO time or git_rev or pass id
  kind: "commit" | "birth_gate" | "ast_refresh" | "pass_receipt"
  summary: string
  ir_diff: { added_nodes, removed_nodes, added_edges, removed_edges } | null
}
```

### 3.8 Diag

```text
Diag {
  severity: "error" | "warn" | "info"
  code: string              // e.g. FORBIDDEN_DEP, EMISSION_STUB, CYCLE
  message: string
  span: ... | null
}
```

Extractor **must** emit diags for: crates.io/`extern crate` leaks, cycles vs planned DAG, `emit_pointer` stubs, second-store patterns named in crate-map Page E — as **warnings/errors in IR**, not silent drops.

---

## 4. Pipeline story (what the viewer animates)

Logical pipeline (plan-shaped; AST fills ports when code exists):

```text
Arrival (Contract II surface — not a Core door)
    → route/compose → strand/append (WORD / later POINTER sections)
         ↗ word/describe        ↗ pointer/constraints (no emit authority)
    → view_star/read
    → view_proj/read
    → core/orchestrate (no raw append bypass)
```

Transform tokens in the hologram move along `dataflow` edges. Birth gates unlock door nodes over the timeline. Call edges light when AST resolves a callee. Premise edges stay visually distinct (e.g. dashed) until discharged in docs/proof — AST alone does not “prove” a premise.

---

## 5. Extractor architecture

| Stage | Responsibility | Tooling (future) |
|---|---|---|
| Pin | Resolve workspace roots + git rev | git / path config |
| Parse | Syntax trees per crate | `syn` **or** rust-analyzer syntax (first-party / vendored policy TBD under Implementation Law) |
| Lower | AST → AstItem + local calls | name resolution (ra) preferred over path-string heuristics |
| Map | Items → DoorNode via path/crate root | directory ↔ door table from crate-map |
| Edges | call / dataflow from AST; birth/premise from plan overlay | never invent emission edges |
| Timeline | commits + extractor runs | git log; optional CI artifact |
| Emit | HologramIr JSON | written beside viewer or served read-only |

**Implementation Law tension:** Core crates forbid crates.io. The **extractor** that feeds Layer III may be a separate host tool (std allowed on the host) that never becomes a Core dependency. That split must stay explicit: extractor ≠ `core/` door.

**Fixture mode:** checked-in minimal Rust snippets under a clearly marked non-Core path (only after human accepts a fixture location) **or** synthetic IR golden files. No pretending fixtures are proved births.

---

## 6. Viewer contract (Layer III)

- Consumes `HologramIr` only (plus optional lookref chrome).  
- Auto-refresh on open: run extractor (or fetch last CI IR) → replace scene.  
- Time scrubber binds to `timeline[]`.  
- Picking a node shows door/item ports and diags — not holder gear contracts unless explicitly a secondary pane.  
- **Current elaborated page:** Canvas 2D only (`docs/hologram/nostd-pipeline.html`) — no Three.js/CDN/npm. WebGPU scene-graph remains deferred; full-screen SDF is not the pipeline subject.

The existing `docs/shadow-clock-gearing.html` remains a **Shadow holder** visual. It is not the AST pipeline hologram. Do not silently retitle it as nostd tracking.

**IR ↔ picture binding (rigorous):** [hologram-ast-ir-viewer.md](hologram-ast-ir-viewer.md) — field→chrome map, edge visual grammar, transform token semantics, selection contract, fixture vs workspace, golden walkthrough, elaborated-viewer acceptance.

---

## 7. Non-goals

- Filling POINTER emission from AST shape  
- Creating `src/` or Cargo workspace in this plan  
- Using markdown crate-maps as the live dynamic feed  
- Importing crates.io into Core  
- Treating `{A,B,C}` shafts as the nostd pipeline  

---

## 7.5 Golden fixture

Sealed plan-shaped IR (no AST parse):

- [fixtures/hologram-ir-golden-v0.2.0.json](fixtures/hologram-ir-golden-v0.2.0.json) — **current** (pieces + seams + binds; viewer default)
- [fixtures/hologram-ir-golden-v0.1.0.json](fixtures/hologram-ir-golden-v0.1.0.json) — historical doors-only envelope

`mode` is `"fixture"`. `items` is empty. `emission_gate` is `"blocked"`. Binds are `authority: "PROPOSAL"` only. Viewer spikes must show FIXTURE_MODE / EMISSION_GATE_BLOCKED / BINDS_PROPOSAL_ONLY diags and must not imply proved births or LAW packaging.

## 8. Acceptance for this planning doc

Done when:

1. This file is on main under `docs/plans/`.  
2. Envelope + edge kinds + transform/timeline shapes are reviewable.  
3. AST-hard-requirement and emission/`src/` gates are explicit.  
4. plans README links this file.

Not done for full pipeline: AST extractor against crates, adding `src/`. Validator + Layer III viewer are elaborated on the golden fixture (see §9 ticks 3–4 and hologram-ast-ir-viewer.md).

---

## 8.5 Version 0.2.0

Additive fields `pieces`, `seams`, `binds` on the same envelope. Prefer **0.2.0** for new work; keep 0.1.0 as historical. Validator accepts both. Viewer defaults to Manifest mode (Hands ground / strand spine); Packaging mode keeps the 7-door arc; Both overlays PROPOSAL binds as dashed links. Hands graphics remain authority; crate doors remain packaging overlay. Emission stays `[GAP]`. No `src/`.

## 9. Next implementation ticks (ordered; each needs its own claim)

1. Human review of this IR.  
2. Golden `HologramIr` fixture JSON (maps or hologram station). **Done** — v0.1.0 historical; **v0.2.0 current** with pieces/seams/binds.  
3. Host extractor / validator spike (std host tool) against fixture — still no Core `src/`. **Spiked** — `tools/hologram-ir-shape-check.py` checks golden IR (0.1.0 and 0.2.0: doors/edges/transforms; 0.2.0 also pieces×15, seams endpoints, binds endpoints + PROPOSAL honesty). Not a full AST extractor.

   **`[GAP]` — nothing in this tree checks the graph against the plan.** The tool above checks shape only: it does not know the birth order, does not reject a dependency cycle, and does not catch the forbidden `core -> strand` bypass. Six deliberately wrong plans were run through it and **five passed**, returning a summary byte-identical to the golden's — [F7](rust-nostd-second-reading.md). It was named `hologram-ir-validate.py` until iteration 4 pass 5, when it was **renamed rather than repaired**: amendment A7 is the repair and a validator built against a plan still carrying open amendments A1–A10 would be wrong in a new way. **A shape check passing is not evidence that a plan is right.**  
4. New Layer III viewer page bound to IR (hologram station) — mesh/graph, not SDF-as-pipeline. **Elaborated** — `docs/hologram/nostd-pipeline.html` (Canvas 2D; Manifest / Packaging / Both modes; strand spine; filters; inspection; transforms rail; timeline token; mobile). Binding: [hologram-ast-ir-viewer.md](hologram-ast-ir-viewer.md).  
5. After emission acceptance: point extractor at real first-party crates as they birth.
