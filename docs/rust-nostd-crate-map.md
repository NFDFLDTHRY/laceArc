# CLIPBOARD — laceArc ← Rust `#![no_std]` crate / branch map

Plan map only. Hands win. POINTER emission = `[GAP]`. **NO `src/` yet.**
Shelf note (defrag pass 2): this file is the **crate tree**. Serial birth cards live in `docs/rust-nostd-branch-contracts.md`. Neither file is an accepted emission rule.
Not Core code. Not a Cargo workspace. Do not create these directories.

Law: `docs/law-why-these-documents.md` IMPLEMENTATION LAW + `AGENTS.md`.
Height (seL4 / Coq / CompCert / …) is the bar, not a crate to vendor.

```
fetch/ff main → shoe → graphics A–D → manifest → IMPLEMENTATION LAW
                 → AGENTS.md
                 → reason-model-map (anti-imports)
                 → PAGE A → B → C → D → E → F → G → H → X
                 → this file
                 → STOP
```

---

```
┌──────────────────────────────────────────────────────────────────────────┐
│ CLIPBOARD                                                                │
│ laceArc ← Rust no_std crate / branch map (INTUITIVE STRUCTURE)           │
│ law: one strand · one store · branch=task · no emission invent · [GAP]   │
├──────────────────────────────────────────────────────────────────────────┤
│ [clip]                                                                   │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE A — INTUITION TEST (name the tree like the shoe)          │     │
│   │                                                                │     │
│   │   Can a stranger map each top folder to a graphic piece        │     │
│   │   without opening README?                                      │     │
│   │                                                                │     │
│   │     strand/      YES  Graphic D / Piece 6                      │     │
│   │     word/        YES  Graphic D WORD box                       │     │
│   │     pointer/     YES  Graphic D POINTER box  (TYPE only)       │     │
│   │     route/       YES  Graphic B Continue                       │     │
│   │     view_star/   YES  Graphic A/B star as seen                 │     │
│   │     view_proj/   YES  Graphic C projection                     │     │
│   │     core/        YES  thin Hands; not a second machine         │     │
│   │     arrival/     NO as a crate name that owns tokens           │     │
│   │                   (surface, not a store — keep off this tree)  │     │
│   │                                                                │     │
│   │ KEEP: names a shoe-holder would recognize                      │     │
│   │ FORBID: embed token graph gnn ntk reag codec weld utils        │     │
│   │ vs Hands: CONFIRMS. Arrival stays a surface, not a door.       │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE B — PROPOSED WORKSPACE SKETCH (fill; do not create dirs)  │     │
│   │                                                                │     │
│   │   laceArc/   (repo root — docs stay source of record)          │     │
│   │   └── [WHEN ALLOWED — after pointer-emission.md accepted]      │     │
│   │                                                                │     │
│   │       strand/      ← ONE task: append-only 1D log of entries   │     │
│   │       word/        ← ONE task: WORD section bytes; no intern   │     │
│   │       pointer/     ← ONE task: POINTER *type* only; emit=[GAP] │     │
│   │       route/       ← ONE task: Continue = append a section     │     │
│   │       view_star/   ← ONE task: read stars off WORD equality    │     │
│   │       view_proj/   ← ONE task: 1D/2D/3D shadow; cannot write   │     │
│   │       core/        ← thin: calls only proven branches          │     │
│   │                                                                │     │
│   │   ORDER RULE: one branch exists → task stated + proven →       │     │
│   │               then and only then may another branch exist      │     │
│   │                                                                │     │
│   │   Piece 1 and Piece 6 are ONE physical object.                 │     │
│   │   Do not birth both strand/ and array/. That is two stores.    │     │
│   │                                                                │     │
│   │   vs Hands: CONFIRMS the sketch in the prompt.                 │     │
│   │             REFINE: no arrival/ crate; no emit_pointer/.       │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE C — PIECE → BRANCH / MODULE TABLE                         │     │
│   │                                                                │     │
│   │  Piece / graphic   │ proposed crate/branch │ one-task sentence │     │
│   │  ─────────────────┼───────────────────────┼────────────────── │     │
│   │  1 Strand         │ strand/               │ same log as 6    │     │
│   │  2 Continue       │ route/                │ append a section │     │
│   │  3 Arrival        │ (surface, not crate)  │ words in, append │     │
│   │                   │                       │ out; owns nothing│     │
│   │  4 WORD           │ word/                 │ one occurrence   │     │
│   │  5 POINTER        │ pointer/              │ TYPE only;[GAP]  │     │
│   │  6 1D array       │ strand/               │ the only store   │     │
│   │  7 Star           │ view_star/            │ VIEW not table   │     │
│   │  8 Sequence-route │ route/ + strand/      │ route IS the log │     │
│   │  9 Dictionary     │ view_star/            │ wiring is seen   │     │
│   │ 10 Document feed  │ view_proj/            │ punch-card view  │     │
│   │ 11 Touch          │ (no crate)            │ later grab=[GAP] │     │
│   │ 12 Dimension      │ view_proj/            │ axis is a view   │     │
│   │ 13 Projection     │ view_proj/            │ cannot write     │     │
│   │ 14 No meaning     │ (constraint, all)     │ no meaning table │     │
│   │ 15 Star-internal  │ view_star/            │ interior reading │     │
│   │                                                                │     │
│   │  EMISSION (when to write POINTER):  DO NOT MAP — leave [GAP]   │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE D — DEPENDENCY EDGES (must stay thin)                     │     │
│   │                                                                │     │
│   │        core                                                      │     │
│   │         │                                                        │     │
│   │         +--► route       (task: Continue = append section)       │     │
│   │         |      +--► word     (task: WORD section; no intern)     │     │
│   │         |      +--► pointer  (task: POINTER type only)           │     │
│   │         |      +--► strand   (task: append-only 1D log)          │     │
│   │         +--► view_star   (task: read stars; no write)            │     │
│   │         |      +--► strand                                       │     │
│   │         +--► view_proj   (task: 1D/2D/3D shadow; no write)       │     │
│   │                +--► strand                                       │     │
│   │                +--► view_star                                    │     │
│   │                                                                │     │
│   │   word and pointer know section layout.                          │     │
│   │   They do not allocate a second world.                           │     │
│   │   Views call strand read-only. If a view writes, it is dead.     │     │
│   │                                                                │     │
│   │   FORBID: diamond of convenience · shared “utils” kitchen sink │     │
│   │   FORBID: alloc/std unless a first-party branch whose ONE      │     │
│   │           task is alloc, and that branch is proven             │     │
│   │   ALLOC: not in the first birth. Absent until proven needed.   │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE E — ANTI-CRATES (Shadow that must not become folders)     │     │
│   │                                                                │     │
│   │  temptation folder     │ Hands deadbolt                 mark   │     │
│   │  ─────────────────────┼─────────────────────────────── ────── │     │
│   │  tokenizer/            │ no mask/replace/intern (Xiao)  forbid │     │
│   │  embed/ / vocab/       │ Graphic D — no second store    forbid │     │
│   │  graph/ / gnn/         │ Graphic C — node-edge shadow   forbid │     │
│   │  ntk/ / train/         │ function≠construction          forbid │     │
│   │  reag/ / agent_errata/ │ HOLDER only                    forbid │     │
│   │  reidemeister/         │ Rule Zero — no rewrite         forbid │     │
│   │  star_table/           │ Star is a reading              forbid │     │
│   │  emit_pointer/         │ [GAP] — stub is invention      forbid │     │
│   │  codec/ / weld/        │ history anti-imports           forbid │     │
│   │  utils/                │ kitchen sink                   forbid │     │
│   │  arrival/ as store     │ surface owns nothing           leak   │     │
│   │                                                                │     │
│   │  All of the above: named-as-forbid. None may appear on disk.   │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE F — INTUITIVE STRUCTURE CHECKLIST                         │     │
│   │                                                                │     │
│   │  [x] Top-level names match graphics language                   │     │
│   │  [x] One folder ↔ one Piece (or one proven task)               │     │
│   │      (1+6 share strand/; 8 rides route/+strand/)               │     │
│   │  [x] README of each branch states the ONE task in one sentence │     │
│   │      (when born — not now)                                     │     │
│   │  [x] Forbidden states unrepresentable (types, not comments)    │     │
│   │      (plan: no intern id; views have no append entrypoint)     │     │
│   │  [x] no_std on every crate; alloc only via proven branch       │     │
│   │  [x] Views (star, 1D/2D/3D) cannot write the strand            │     │
│   │  [x] core/ has no business logic that belongs in a branch      │     │
│   │  [x] docs/ remains source of record; code cites graphic+piece  │     │
│   │  [x] pointer emission module ABSENT (sealed [GAP])             │     │
│   │  [x] No crates.io / Cargo.toml path deps to foreign trees      │     │
│   │                                                                │     │
│   │  Fail any box ⇒ redesign names before proposing code.          │     │
│   │  This map passes as a *plan*. It does not pass as permission.  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE G — BRANCH BIRTH ORDER (serial, not parallel fan-out)     │     │
│   │                                                                │     │
│   │   GATE: human accepted docs/pointer-emission.md                │     │
│   │         BEFORE any of these directories exist on disk           │     │
│   │                                                                │     │
│   │   1st branch: strand/                                           │     │
│   │       task: append-only 1D log                                  │     │
│   │       proof shape: no rewrite of index i; no delete;            │     │
│   │                    two ends; grow only at frontier              │     │
│   │   2nd (only after 1 proven): word/                              │     │
│   │       task: WORD section; occurrence ≠ intern id                │     │
│   │   3rd: pointer/                                                 │     │
│   │       task: POINTER *layout* only. No function that emits.      │     │
│   │   4th: route/                                                   │     │
│   │       task: Continue = append a section onto strand             │     │
│   │   5th: view_star/                                               │     │
│   │       task: form stars by reading; no Star table                │     │
│   │   6th: view_proj/                                               │     │
│   │       task: project; write entrypoint unrepresentable           │     │
│   │   core last: after its callees are proven                       │     │
│   │                                                                │     │
│   │   alloc/ is not in this list. Birth it only if a proven         │     │
│   │   task statement exists and Hands still hold.                   │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE H — ANYTHING THAT LOOKS LIKE “WHEN TO POINT”              │     │
│   │                                                                │     │
│   │   crate named emit / participate / touch / grab                │     │
│   │        ──silenced──► [GAP]                                     │     │
│   │   Type for POINTER row may exist (pointer/ after gate).        │     │
│   │   The *rule that appends it* may not be invented in this map.  │     │
│   │   A stub emit.rs is still invention. ABSENT.                   │     │
│   │                                                                │     │
│   │   DELTA: silent on when / arity / adjacency                    │     │
│   │           + false friend (pointer/ folder looks like Φ)        │     │
│   │           + conflict if route/ grows an emit helper            │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE X — CROSS-CUT                                             │     │
│   │                                                                │     │
│   │  temptation              │ Hands deadbolt                      │     │
│   │  ───────────────────────┼──────────────────────────────────── │     │
│   │  clever crate graph     │ one branch, one task, serial prove   │     │
│   │  crates.io “just once”  │ ZERO external deps                   │     │
│   │  std for speed          │ #![no_std]; alloc only if FP branch  │     │
│   │  utils/ kitchen sink    │ no sideways growth                   │     │
│   │  ML-shaped folders      │ shoe language only                   │     │
│   │  emit module “stub”     │ [GAP] — stub is still invention      │     │
│   │  src/ before acceptance │ FORBIDDEN                            │     │
│   │  two folders for 1 and 6│ one strand, one store                │     │
│   │                                                                │     │
│   │  STILL [GAP]: POINTER when / arity / adjacency                 │     │
│   │  PRODUCT: docs map of crates — not code                        │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│ [clip]                                                                   │
└──────────────────────────────────────────────────────────────────────────┘
```

---

## Steward notes

- INTUITIVE = shoe-readable names + one task per door + thin core. Not “easy to vendor.”
- `pointer/` after the gate is a type crate. It is not `docs/pointer-emission.md`.
- Arrival is a surface in the manifest. A crate that owned tokens would be Xiao intern by another door.
- This file does not create directories, Cargo.toml, or `src/`.
- `docs/clipboards/agentscope-clipboard.md` is a separate tracked clipboard (AgentScope hold) and is not this map.

Shoe in hands, or no.
