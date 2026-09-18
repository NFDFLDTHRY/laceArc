# Rust `#![no_std]` — next plan: per-branch contracts ASCII prompt

Paste everything inside the outer box to an agent. **Plan only.** Deepen `docs/plans/rust-nostd-crate-map.md` into per-branch contracts (API surface, forbidden states, proof shape). Not code. Not `src/`. Emission `[GAP]`.

Prerequisite (already on disk): `docs/plans/rust-nostd-crate-map.md`  
Gate for any real dirs: human-accepted `docs/pointer-emission.md` (still may be absent — do not invent it here).  
Hands first: graphics → manifest → IMPLEMENTATION LAW → crate map → this prompt.
NOW path (defrag pass 4+): `docs/plans/rust-nostd-*.md`. Do not write the pre-shelf `docs/rust-nostd-*.md` names.


```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  ASCII PROMPT  ·  no_std BRANCH CONTRACTS (NEXT PLAN)        ║
║  Plan only · shoe names · one branch one task · [GAP] · NO src/          ║
╚══════════════════════════════════════════════════════════════════════════╝

  YOU ARE NOT writing Rust source.
  YOU ARE NOT creating Cargo.toml / crates / directories on disk.
  YOU ARE NOT inventing pointer emission.
  YOU ARE writing docs that lock each planned branch to one task + types
  that make forbidden states unrepresentable — still prose.


                    ┌────────────── INPUTS ──────────────┐
                    │  docs/plans/rust-nostd-crate-map.md        │
                    │  docs/graphics A–D                   │
                    │  docs/systems-manifest.md            │
                    │  staking / AGENTS Implementation Law │
                    │  docs/reason-model-map.md (anti)     │
                    └──────────────────┬─────────────────┘
                                       │ read first
                                       v
                         FILL → write docs/plans/rust-nostd-branch-contracts.md


┌──────────────────────────────────────────────────────────────────────────┐
│ CLIPBOARD                                                                │
│ laceArc ← per-branch contracts (next plan after crate map)               │
│ law: map is not permission · serial birth · type≠emit · [GAP]            │
├──────────────────────────────────────────────────────────────────────────┤
│ [clip]                                                                   │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE A — RELATION TO PRIOR MAP                                 │     │
│   │                                                                │     │
│   │   Prior product: docs/plans/rust-nostd-crate-map.md                  │     │
│   │   This product:  docs/plans/rust-nostd-branch-contracts.md           │     │
│   │                                                                │     │
│   │   KEEP tree: strand word pointer route view_star view_proj core│     │
│   │   KEEP birth: strand → word → pointer → route → views → core   │     │
│   │   KEEP: no arrival/ · no emit_pointer/ · no utils/             │     │
│   │                                                                │     │
│   │   If this pass wants to RENAME a door → must re-pass intuition │     │
│   │   test (shoe-readable) and update BOTH docs.                   │     │
│   │                                                                │     │
│   │   Status: PLAN. Not acceptance. Not Implementation Law open.   │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE B — CONTRACT CARD TEMPLATE (one per branch)               │     │
│   │                                                                │     │
│   │   Fill this card for: strand, word, pointer, route,            │     │
│   │   view_star, view_proj, core (seven cards).                    │     │
│   │                                                                │     │
│   │   ### branch: ________/                                        │     │
│   │   birth order: #__                                             │     │
│   │   one-task sentence: _______________________________________   │     │
│   │   Hands cite: Piece __ / Graphic __                            │     │
│   │                                                                │     │
│   │   #### Owns (types / invariants — prose, not code)             │     │
│   │   - _______________________________________________________    │     │
│   │                                                                │     │
│   │   #### Must not own                                            │     │
│   │   - _______________________________________________________    │     │
│   │                                                                │     │
│   │   #### Public surface (names only — no signatures that emit)   │     │
│   │   - allowed ops: ___________________________________________   │     │
│   │   - absent ops (unrepresentable): __________________________   │     │
│   │                                                                │     │
│   │   #### May call (first-party only)                             │     │
│   │   - _______________________________________________________    │     │
│   │                                                                │     │
│   │   #### Forbidden states (must be unrepresentable)              │     │
│   │   - rewrite index i · delete · intern collapse · …             │     │
│   │                                                                │     │
│   │   #### Proof shape (what “proven” means before next birth)     │     │
│   │   - _______________________________________________________    │     │
│   │                                                                │     │
│   │   #### no_std / alloc                                          │     │
│   │   - #![no_std] required: yes                                   │     │
│   │   - alloc: absent | only via proven alloc/ branch (not now)    │     │
│   │                                                                │     │
│   │   #### Emission contact                                        │     │
│   │   - none | type-only | [GAP] if anything looks like “when”     │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE C — strand/ (1st) — FORCE DETAIL                          │     │
│   │                                                                │     │
│   │   task: append-only 1D log (Piece 1 ≡ Piece 6)                 │     │
│   │                                                                │     │
│   │   Must settle in prose:                                        │     │
│   │   · what is an Entry vs a Section?                             │     │
│   │   · how indices are forever (no reuse / vacuum)                │     │
│   │   · frontier-only growth                                       │     │
│   │   · two ends as views, not two stores                          │     │
│   │                                                                │     │
│   │   Unrepresentable: mutate @ i · delete · splice middle         │     │
│   │   Does NOT settle: when POINTER is written → [GAP]             │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE D — word/ + pointer/ — TYPE DISCIPLINE                    │     │
│   │                                                                │     │
│   │   word/:                                                       │     │
│   │   · occurrence ≠ intern id (Xiao deadbolt)                     │     │
│   │   · equality key as graphics show; case/stem = [GAP] if silent │     │
│   │                                                                │     │
│   │   pointer/:                                                    │     │
│   │   · LAYOUT / TYPE only                                         │     │
│   │   · no fn emit_pointer · no participate · no grab              │     │
│   │   · backward-only target constraint may be STATED as type law  │     │
│   │     if graphics allow; “when appended” stays [GAP]             │     │
│   │                                                                │     │
│   │   FORBID: pointer/ README that answers emission questions      │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE E — route/ + views + core                                 │     │
│   │                                                                │     │
│   │   route/: Continue = append a section onto strand              │     │
│   │           must not grow a hidden emit helper                   │     │
│   │                                                                │     │
│   │   view_star/: read-only stars; Star table unrepresentable      │     │
│   │   view_proj/: 1D/2D/3D shadow; write entrypoint unrepresentable│     │
│   │                                                                │     │
│   │   core/: thin orchestration; no business that belongs in a     │     │
│   │          branch; calls only proven first-party doors           │     │
│   │                                                                │     │
│   │   Shadow gearing (A/B/C HTML) is NOT a Core crate.             │     │
│   │   Do not map trainA teeth into strand/.                        │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE F — WORKSPACE SKETCH (still virtual)                      │     │
│   │                                                                │     │
│   │   Draw ASCII of future layout ONLY as comment-plan:            │     │
│   │                                                                │     │
│   │   laceArc/                                                     │     │
│   │   ├── docs/          (source of record — already real)         │     │
│   │   └── [AFTER ACCEPTANCE]                                       │     │
│   │       ├── strand/    Cargo.toml + src/  (1st birth)            │     │
│   │       ├── word/      …                                         │     │
│   │       └── …                                                    │     │
│   │                                                                │     │
│   │   Note: path deps only between OUR crates. Zero crates.io.     │     │
│   │   Do NOT write those files now.                                │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE G — PROVE-BEFORE-NEXT CHECKLIST                           │     │
│   │                                                                │     │
│   │   For each birth step, “proven” means ALL of:                  │     │
│   │   [ ] one-task sentence unchanged                              │     │
│   │   [ ] forbidden states named and blocked in type story         │     │
│   │   [ ] no_std; no silent alloc                                  │     │
│   │   [ ] no crates.io                                             │     │
│   │   [ ] shoe test: doable to a lace in hands                     │     │
│   │   [ ] emission still [GAP] (no stub)                           │     │
│   │   [ ] human may require written proof note in docs/ before     │     │
│   │       allowing the next branch — record that rule here         │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE H — OPEN GAPS (do not fill)                               │     │
│   │                                                                │     │
│   │   [GAP] when POINTER is appended                               │     │
│   │   [GAP] arity                                                  │     │
│   │   [GAP] adjacent WORD rows as relation?                        │     │
│   │   [GAP] word-identity (case/stem) if graphics silent           │     │
│   │                                                                │     │
│   │   Point to docs/prompts/pointer-emission-prompt.md for the outline     │     │
│   │   that must exist BEFORE any branch directory is real.         │     │
│   │   Do not draft answers in this contracts file.                 │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE X — CROSS-CUT                                             │     │
│   │                                                                │     │
│   │  temptation              │ Hands deadbolt                      │     │
│   │  ───────────────────────┼──────────────────────────────────── │     │
│   │  start coding strand/   │ gate: accepted pointer-emission.md   │     │
│   │  “just signatures”      │ signatures that emit = invention     │     │
│   │  parallel branch PRs    │ serial prove only                    │     │
│   │  gearing crates in Core │ [III] stays Shadow                   │     │
│   │  utils/ “shared”        │ FORBID                               │     │
│   │                                                                │     │
│   │  PRODUCT: docs/plans/rust-nostd-branch-contracts.md                  │     │
│   │  AFTER: STOP · commit only if human asks · no src/             │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│ [clip]                                                                   │
└──────────────────────────────────────────────────────────────────────────┘


  FLOW (ASCII)

       fetch/ff main
              │
              v
         rust-nostd-crate-map.md (prior) + Hands law
              │
              v
         fill PAGE A → B (×7 cards) → C → D → E → F → G → H → X
              │
              v
         write docs/plans/rust-nostd-branch-contracts.md
              │
              v
         STOP


  FORBIDDEN
    invent emission · add src/ · Cargo.toml · crates.io
    parallel unproven births · emit stubs · Shadow gears as Core
    paraphrase away one-branch-one-task


  STEWARD TEST
    shoe lace in hands, or no.
    A contract that needs a second store to “make sense” is wrong.


╔══════════════════════════════════════════════════════════════════════════╗
║  END ASCII PROMPT — deepen crate map into branch contracts; no src/      ║
╚══════════════════════════════════════════════════════════════════════════╝
```
