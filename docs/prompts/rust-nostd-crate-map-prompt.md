# Rust `#![no_std]` / first-party crates — ASCII diagram agent prompt

Paste everything inside the outer box to an agent. **Plan map only.** Not Core code. Emission `[GAP]`. No `src/` until `docs/pointer-emission.md` exists **and** the human accepted it.

Hands first: shoe → graphics A–D → systems-manifest → staking IMPLEMENTATION LAW → AGENTS.md Implementation Law → reason-model-map → then propose crate/branch layout.

Special attention: **keep the codebase structure intuitive** — a stranger who held a shoe lace should recognize the tree without a second glossary.

NOW path (defrag pass 4+): write `docs/plans/rust-nostd-crate-map.md`. Do not write the pre-shelf `docs/rust-nostd-crate-map.md` name.

```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  ASCII PROMPT  ·  RUST no_std / CRATE MAP                    ║
║  Plan map only · Hands win · POINTER emission = [GAP] · NO src/ yet      ║
╚══════════════════════════════════════════════════════════════════════════╝

  YOU ARE NOT writing Rust yet.
  YOU ARE NOT inventing emission.
  YOU ARE NOT adding crates.io, std, foreign submodules, or a second store.
  YOU ARE filling ASCII sheets that map the shoe onto an intuitive crate tree.


                    ┌────────────── HANDS ──────────────┐
                    │  shoe lace (two ends)               │
                    │  docs/graphics A B C D              │
                    │  docs/systems-manifest.md           │
                    │  staking IMPLEMENTATION LAW         │
                    │  AGENTS.md Implementation Law       │
                    └──────────────────┬─────────────────┘
                                       │ read first
                                       v
                    ┌────────────── LAW (when code ever) ┐
                    │  Rust · #![no_std] only             │
                    │  ZERO crates.io / foreign git       │
                    │  dependency == OUR first-party      │
                    │    branch · one branch, one task    │
                    │  prove task before next branch      │
                    │  Core calls only those branches     │
                    │  Height ≠ crates (seL4/Coq/…)       │
                    └──────────────────┬─────────────────┘
                                       │
                                       v
                         FILL CLIPBOARD PAGES BELOW


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
│   │   without opening README?  YES / NO for each proposed name.    │     │
│   │                                                                │     │
│   │   GOOD names sound like Hands:                                 │     │
│   │     strand · word · pointer · append · route · view            │     │
│   │   BAD names sound like Shadow/ML:                              │     │
│   │     embed · token · graph · gnn · ntk · reag · codec · weld    │     │
│   │                                                                │     │
│   │ KEEP: names a shoe-holder would recognize                      │     │
│   │ FORBID: jargon that needs a second glossary                    │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE B — PROPOSED WORKSPACE SKETCH (fill; do not create dirs)  │     │
│   │                                                                │     │
│   │   laceArc/   (repo root — docs stay source of record)          │     │
│   │   └── [WHEN ALLOWED] crates or first-party branches:           │     │
│   │                                                                │     │
│   │       _______________/   ← ONE task: ________________          │     │
│   │       _______________/   ← ONE task: ________________          │     │
│   │       _______________/   ← ONE task: ________________          │     │
│   │       core/              ← thin: calls only proven branches    │     │
│   │                                                                │     │
│   │   ORDER RULE: one branch exists → task stated + proven →       │     │
│   │               then and only then may another branch exist      │     │
│   │                                                                │     │
│   │   INTUITIVE LAYOUT PREFERENCE (edit if Hands conflict):        │     │
│   │                                                                │     │
│   │       strand/     Piece 6  — append-only 1D log                │     │
│   │       word/       Piece 4  — WORD section (no intern)          │     │
│   │       pointer/    Piece 5  — POINTER *type* only; emit=[GAP]   │     │
│   │       route/      Piece 2  — Continue / append section         │     │
│   │       view_star/  Piece 7  — Star as reading, not a table      │     │
│   │       view_proj/  Piece 13 — 1D/2D/3D projection, not store    │     │
│   │       core/       thin orchestration; no second machine        │     │
│   │                                                                │     │
│   │   vs Hands: confirms|refines|conflicts|silent                  │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE C — PIECE → BRANCH / MODULE TABLE                         │     │
│   │                                                                │     │
│   │  Piece / graphic   │ proposed crate/branch │ one-task sentence │     │
│   │  ─────────────────┼───────────────────────┼────────────────── │     │
│   │  1 Strand         │ _____________________ │ ________________ │     │
│   │  2 Continue       │ _____________________ │ ________________ │     │
│   │  3 Arrival        │ _____________________ │ ________________ │     │
│   │  4 WORD           │ _____________________ │ ________________ │     │
│   │  5 POINTER        │ _____________________ │ TYPE only;[GAP]  │     │
│   │  6 1D array       │ _____________________ │ ________________ │     │
│   │  7 Star           │ _____________________ │ VIEW not table   │     │
│   │  8–15 (group)     │ _____________________ │ ________________ │     │
│   │                                                                │     │
│   │  EMISSION (when to write POINTER):  DO NOT MAP — leave [GAP]   │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE D — DEPENDENCY EDGES (must stay thin)                     │     │
│   │                                                                │     │
│   │   Draw ASCII: which first-party branch may call which.         │     │
│   │   Core may call proven branches only.                          │     │
│   │   Branches must NOT form a crate graph that grows sideways.    │     │
│   │                                                                │     │
│   │        core                                                      │     │
│   │         │                                                        │     │
│   │         +--► ________  (task: ________)                          │     │
│   │         +--► ________  (task: ________)                          │     │
│   │         +--► ________  (task: ________)                          │     │
│   │                                                                │     │
│   │   FORBID: diamond of convenience · shared “utils” kitchen sink │     │
│   │   FORBID: alloc/std unless a first-party branch whose ONE      │     │
│   │           task is alloc, and that branch is proven             │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE E — ANTI-CRATES (Shadow that must not become folders)     │     │
│   │                                                                │     │
│   │  temptation folder     │ Hands deadbolt                        │     │
│   │  ─────────────────────┼────────────────────────────────────── │     │
│   │  tokenizer/            │ no mask/replace/intern (Xiao)         │     │
│   │  embed/ / vocab/       │ Graphic D — no second store           │     │
│   │  graph/ / gnn/         │ Graphic C — node-edge is shadow       │     │
│   │  ntk/ / train/         │ function≠construction; train≠history  │     │
│   │  reag/ / agent_errata/ │ HOLDER only — not array rows          │     │
│   │  reidemeister/         │ Rule Zero — no rewrite                │     │
│   │  star_table/           │ Star is a reading                     │     │
│   │  emit_pointer/         │ [GAP] — do not invent the rule here   │     │
│   │                                                                │     │
│   │  Mark each: absent | named-as-forbid | leak-risk               │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE F — INTUITIVE STRUCTURE CHECKLIST                         │     │
│   │                                                                │     │
│   │  [ ] Top-level names match graphics language                   │     │
│   │  [ ] One folder ↔ one Piece (or one proven task)               │     │
│   │  [ ] README of each branch states the ONE task in one sentence │     │
│   │  [ ] Forbidden states unrepresentable (types, not comments)    │     │
│   │  [ ] no_std on every crate; alloc only via proven branch       │     │
│   │  [ ] Views (star, 1D/2D/3D) cannot write the strand            │     │
│   │  [ ] core/ has no business logic that belongs in a branch      │     │
│   │  [ ] docs/ remains source of record; code cites graphic+piece  │     │
│   │  [ ] pointer emission module ABSENT (sealed [GAP])             │     │
│   │  [ ] No crates.io / Cargo.toml path deps to foreign trees      │     │
│   │                                                                │     │
│   │  Fail any box ⇒ redesign names before proposing code.          │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE G — BRANCH BIRTH ORDER (serial, not parallel fan-out)     │     │
│   │                                                                │     │
│   │   1st branch: ________  task: ________  proof shape: ________  │     │
│   │   2nd (only after 1 proven): ________                          │     │
│   │   3rd: ________                                                │     │
│   │   …                                                            │     │
│   │   core last or thin-last: after its callees are proven         │     │
│   │                                                                │     │
│   │   GATE: human accepted docs/pointer-emission.md                │     │
│   │         BEFORE any of these directories exist on disk           │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE H — ANYTHING THAT LOOKS LIKE “WHEN TO POINT”              │     │
│   │                                                                │     │
│   │   crate named emit / participate / touch / grab                │     │
│   │        ──silenced──► [GAP]                                     │     │
│   │   Type for POINTER row may exist; the *rule that appends it*   │     │
│   │   may not be invented in this map.                             │     │
│   │                                                                │     │
│   │   DELTA: silent | false friend | conflict                      │     │
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
│   │                                                                │     │
│   │  STILL [GAP]: POINTER when / arity / adjacency                 │     │
│   │  PRODUCT: docs map of crates — not code                        │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│ [clip]                                                                   │
└──────────────────────────────────────────────────────────────────────────┘


  FLOW (ASCII)

       fetch/ff main ──► shoe ──► graphics ──► manifest ──► IMPLEMENTATION LAW
              │
              v
         AGENTS.md Implementation Law
              │
              v
         reason-model-map (anti-imports)
              │
              v
         fill PAGE A → B → C → D → E → F → G → H → X
              │
              v
         write docs/plans/rust-nostd-crate-map.md
              │
              v
         STOP  (no src/ · no Cargo.toml · commit only if human asks)


  FORBIDDEN
    invent emission · add src/ · crates.io · foreign git submodule
    std as silent default · parallel unproven branch fan-out
    tokenizer/embed/graph/gnn/ntk/reag/star_table folders
    paraphrase away #![no_std] or one-branch-one-task
    “intuitive” as an excuse for a second store


  INTUITIVE = shoe-readable names + one task per door + thin core.
  Height (seL4/Coq/…) is the bar, not a crate to vendor.


  STEWARD TEST
    shoe lace in hands, or no.
    crate did it for you ⇒ you may not.


╔══════════════════════════════════════════════════════════════════════════╗
║  END ASCII PROMPT — map crates; leave [GAP] sealed; no src/              ║
╚══════════════════════════════════════════════════════════════════════════╝
```
