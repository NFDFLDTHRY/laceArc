# Mathematical execution model — Pass 1 problem map

**Status:** EXECUTED (problem mapping). Not a formal model. Not an emitter.
**Station:** maps (`docs/plans/**`).
**Pinned main:** `898047252f9b60ba32e355ccaf329919469aa2f2` (2026-09-19).
**Emission / Φ:** remains `[GAP]`. No `src/`.

**One question:** What must be true, cited, sealed, or deferred before any mathematical execution model of Lace may begin — and which beginning (partial vs complete) does that evidence allow?

**One result:** This map. It does not introduce new Core equations, fill Φ, or amend Graphics / systems-manifest / ASCII.

---

## M1 — Problem statement

A **mathematical execution model** of Lace is a transition-system reading of Hands growth: state of the sole store, which morphisms are defined, which are sealed holes, which are forbidden.

Two distinct beginnings must not be conflated:

| Kind | Means | Requires |
|---|---|---|
| **Partial model** | Formalize only what Hands already state (state shape, WORD append, readings, forbidden ops, sealed Φ) | Hands sources + discipline not to invent |
| **Complete Core executor** | Total step that also decides POINTER participation | Human-accepted emission prose for Φ |

Pass 1 maps the problem. It does not write either artifact beyond this inventory and verdict.

---

## M2 — Known Hands facts (may ground a partial model)

Each row is SOURCE or LAW. None answers when a POINTER is written.

| ID | Fact | Class | Cite |
|---|---|---|---|
| K01 | One continuous strand; history only grows | LAW/SOURCE | Graphic D; systems-manifest Piece 1; AGENTS geometry/storage rule |
| K02 | Sole store = one append-only 1D array (Graphic D) | SOURCE | `docs/graphics/data-structure-1d-array.png`; Piece 6 |
| K03 | Entry kinds shown: WORD and POINTER | SOURCE | Graphic D; Pieces 4–5 |
| K04 | Indices permanent; no delete / rewrite / reset / cut | LAW/SOURCE | Piece 1, 6; AGENTS forbidden writes |
| K05 | Governing operator (dual voice, one step): arrive → route/append → participate → continue | SOURCE | Piece 2; ASCII Core box |
| K06 | Mechanism voice: "Input word arrives. Route new wire through that word's star. Continue." | SOURCE | Piece 2; AGENTS |
| K07 | Array voice: "Input arrives. Append a new section. Use pointers to participate in what already exists." | SOURCE | Piece 2; AGENTS |
| K08 | Star = accumulated passes of the same word-variable (formation / view), not a row type or side table | SOURCE | Pieces 7, 15; ASCII; AGENTS |
| K09 | Sequence of WORDs = physical route; not a second list or sentence object | SOURCE | Piece 8 |
| K10 | Meaning is not stored; routes / touches / structure only | SOURCE | Piece 14; AGENTS |
| K11 | Contract I = Core (fused); Contract II = thin Arrival; Layer III = Projection read-only | SOURCE | systems-manifest seams; ASCII contract map |
| K12 | Pieces 9–10 (dictionary / document) are *use of I*, not engines with their own store | SOURCE | ASCII; manifest |
| K13 | Piece 12 (dimension) is a reading of I, not Contract IV | SOURCE | ASCII; manifest |
| K14 | POINTER references earlier positions on the same line (constraint on whatever emission becomes) | SOURCE | Piece 5; pointer-emission §4 hard constraint |
| K15 | POINTER may reference WORD or POINTER in examples; general rule still open | SOURCE/GAP-adjacent | Graphic D example; pointer-emission |
| K16 | No query / delete / transaction / multi-Lace interface given | SOURCE | systems-manifest / ASCII |
| K17 | Holder train H×C×W operates *upon* I; zero state in L | LAW | AGENTS; ASCII; clock companions |
| K18 | Implementation posture when code exists: Rust `#![no_std]`, zero foreign deps, first-party branches | LAW | law-why; AGENTS Implementation Law |
| K19 | Core code gated on accepted pointer-emission prose (file existence ≠ acceptance) | LAW | AGENTS; pointer-emission Acceptance |

**Canonical graphics (Hands):**

| Letter | File |
|---|---|
| A | `docs/graphics/from-words-to-worlds.png` |
| B | `docs/graphics/mechanisms-in-3d.png` |
| C | `docs/graphics/n-dimensional-relationships.png` |
| D | `docs/graphics/data-structure-1d-array.png` |

---

## M3 — Sealed holes (must not be filled in Pass 1 or in a partial model)

| Gap | Obligation | Blocks complete executor? | Blocks partial model of stated WORD growth? |
|---|---|---|---|
| **G1** Word identity / tokenization | Case, punctuation, multiword names, homographs | Soft for general text ingest | No (shape of Arrive still stateable) |
| **G2 / Φ** POINTER emission | When written; arity; adjacency-as-relation?; WORD-only vs also POINTER targets as law | **Yes (hard)** | No — seal as named hole |
| **G3** Route boundaries | Dictionary / document / conversation / provenance encoding without new row kinds | Soft for those readings | No |
| **G4** Read / query / traversal | What a read may return; read ≠ arrival | Soft for query API | No — π signature only |
| **G5** Structural fidelity | Which array facts fix threading / axes vs rendering choice | Soft for faithful viewers | No |
| **G6** Concurrent arrival | Order when arrivals compete | Soft for multi-writer | No for single append story |
| **G7** Concrete realization | Encoding, bounds, capacity, failure | Soft for `no_std` crates | No for abstract transition sketch |

**Emission draft path:** `docs/pointer-emission.md` (DRAFT). Unanswered questions 1–5. Rejected lookalikes listed. **Committing the draft does not accept it.**

**ASCII labels:** G2 / Φ stay `[GAP]` through ASCII passes (including pass 25). Companion must not fill them.

---

## M4 — Prerequisite ledger

| Prerequisite | Kind | Needed for |
|---|---|---|
| Pinned SHA for Graphics + systems-manifest + systems-manifest-ascii + pointer-emission | soft | Reproducible mapping (this file pins `898047252f9b60ba32e355ccaf329919469aa2f2`) |
| Diff Hands Core §2 (`docs/clock/system-mathematical-model.md`) vs `docs/atomic-primitives-map.md` P0–P4 | soft | Avoid forking competing atoms in Pass 2 |
| maps station claim before editing `docs/plans/**` | soft | Coord law |
| Header discipline: partial vs complete executor | soft | Stop later agents treating `[GAP]` as a TODO to invent |
| Human-accepted Φ (in-repo acceptance of exact emission prose) | **hard** | Complete Core executor / any `src/` Core |
| Accepted answers to G1 if claiming general naturalistic ingest | hard for that claim | Not for abstract WORD morphisms |

---

## M5 — Existing artifact audit

| Artifact | Role | Overclaim risk | Pass 1 stance |
|---|---|---|---|
| `docs/systems-manifest.md` | Hands contract map (authority after Graphics) | None as prose authority | Cite; do not replace |
| `docs/systems-manifest-ascii.md` | Companion spine; passes 1–25 executed | Treating ASCII as Hands or as Φ answer | Companion only |
| `docs/graphics/*` | Source of record | Replacing PNG with ASCII/HTML | Hands win |
| `docs/pointer-emission.md` | DRAFT question list | "Draft on main" ⇒ accepted | Sealed unanswered |
| `docs/atomic-primitives-map.md` | `[PROPOSAL]` P0–P4, K1–K6, G1–G7 | Reading proposal as accepted Core atoms | Align Pass 2; do not elevate silently |
| `docs/clock/system-mathematical-model.md` | Dual-universe formal sketch; Hands §2 + Shadow | Importing Shadow into Core execution; treating Participate as defined | Hands §2 reusable; Shadow out of Core model |
| `docs/plans/atomic-construction-pass-1-plan.md` | Construction / crate crosswalk plan | Confusing with math-execution problem map | Different station question |
| Earlier chat transition-ticket Pass 1 | Premature model tickets | Skipping problem mapping | **Superseded by this map** |
| Rust nostd crate / branch plans | Downstream implementation planning | Starting crates before Φ | Blocked for Core code; readable as aspiration only |

---

## M6 — Failure modes (how a "start" goes wrong)

1. Inventing Φ (when / arity / adjacency) to make a total `Step` function.  
2. Allocating a Star table or meaning store beside \(L\).  
3. Pouring H×C×W / Shadow gear oil into Contract I state.  
4. Treating systems-manifest-ascii as Hands or as emission.  
5. Treating pointer-emission DRAFT presence or a commit as acceptance.  
6. Adding `src/` or Cargo "to explore" before accepted emission.  
7. Inferring emission from Graphic D's illustrative WORD/POINTER mix.  
8. Collapsing many passes into one edge or interning WORD with a count.  
9. Write-back from Layer III into \(L\).  
10. Scheduling crate births as if they discharge G2.

---

## M7 — Readiness verdict

| Verdict | Applies? | Meaning |
|---|---|---|
| **READY-PARTIAL** | **Yes** | Hands facts K01–K19 suffice to authorize a *later* Pass 2 that writes a sealed partial model (state, Arrive/WORD, Star-as-view, forbidden set, Φ hole named not filled). |
| **NOT-READY** | **No** (soft pins addressed here) | Mapping honesty does not wait on further Soft items beyond station claim at write time. |
| **BLOCKED-COMPLETE** | **Yes (always, today)** | No total Core executor and no Core `src/` until Φ is human-accepted in-repo. |

**Joint verdict:** **READY-PARTIAL ∧ BLOCKED-COMPLETE**.

Steward line: *Shoe in hands. Partial formalization of what the strand already is may begin. Participation cut remains sealed.*

---

## M8 — Handoff

**Next authorized task (exactly one):** Pass 2 — write the sealed **partial** mathematical execution model document (proposed path `docs/math-execution-model.md` or under `docs/plans/` only if still planning), containing:

- universe = Hands \(L\) only  
- state + WORD append morphism  
- Star / sequence / touch as readings  
- POINTER shape + backward-ref invariant  
- Φ explicitly `[GAP]` with pointers to `docs/pointer-emission.md` questions  
- Contract I/II/III boundaries  
- forbidden morphisms  
- header: not an emitter; completeness requires accepted Φ  

**Not scheduled by this map:** answering G1–G7, Shadow FSM, hologram IR, rust crate births, ASCII re-audit.

---

## Receipt

| Field | Value |
|---|---|
| Pass | Math-execution problem map Pass 1 |
| Kind | Problem mapping (EXECUTED) |
| Pinned SHA | `898047252f9b60ba32e355ccaf329919469aa2f2` |
| Φ | `[GAP]` |
| Verdict | READY-PARTIAL ∧ BLOCKED-COMPLETE |
| Supersedes | Chat transition-ticket Pass 1 draft |

