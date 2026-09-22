# Gearing visual ↔ code 1:1 — ASCII diagram agent prompt

**Classification, 2026-09-22: BOUNDED FUTURE AUDIT TICKET.** An existing 1:1 map already records the dated visual/code comparison. Reuse this prompt only for a newly authorized re-audit against current renderer/contracts and current Rust proposal state. The Rust side remains a future implementation-decomposition proposal and the compilation target is **TARGET UNDECIDED**; no code birth follows from visual symmetry.


Paste everything inside the outer box to an agent. **Audit / map only.** Layer III. Not Core. Emission `[GAP]`. No `src/` until pointer-emission is accepted.

Goal: the **visual clock gearing mapper** (`docs/shadow-clock-gearing.html` + `docs/gearing/contracts-*.js`) and the **code** (planned Rust `#![no_std]` first-party layout in `docs/plans/rust-nostd-crate-map.md` / later crates) stay in a **strict one-to-one** relationship — every visible contract key has exactly one code unit, and every gearing-related code unit has exactly one visual key.

Hands first for Core. Shadow first for the clock. Do not fuse them.

```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  ASCII PROMPT  ·  GEARING VISUAL ↔ CODE  1:1                 ║
║  Layer III · Hands win on Core · POINTER emission = [GAP] · NO src/ yet  ║
╚══════════════════════════════════════════════════════════════════════════╝

  YOU ARE NOT inventing emission.
  YOU ARE NOT making the WebGPU clock into Lace Core.
  YOU ARE NOT adding crates.io or a second store.
  YOU ARE filling sheets that force 1:1 between visual keys and code units.


                    ┌────────────── AUTHORITY ──────────────┐
                    │  Contracts prose:                       │
                    │    docs/clock/shadow-clock-gear-contracts.md  │
                    │  Visual data (keys):                    │
                    │    docs/gearing/contracts-*.js          │
                    │  Visual renderer (frozen [III]):        │
                    │    docs/shadow-clock-gearing.html       │
                    │  Code plan (Hands / when allowed):      │
                    │    docs/prompts/rust-nostd-crate-map-prompt.md  │
                    │    docs/plans/rust-nostd-crate-map.md (if any)│
                    │  Math dual-universe (if present):       │
                    │    docs/clock/system-mathematical-model.md    │
                    └──────────────────┬────────────────────┘
                                       │ read first
                                       v
                         FILL CLIPBOARD PAGES BELOW


┌──────────────────────────────────────────────────────────────────────────┐
│ CLIPBOARD                                                                │
│ laceArc ← gearing visual ↔ code  1:1                                     │
│ law: one visual key ↔ one code unit · Shadow≠Core · [GAP] sealed         │
├──────────────────────────────────────────────────────────────────────────┤
│ [clip]                                                                   │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE A — WHAT “1:1” MEANS HERE                                 │     │
│   │                                                                │     │
│   │   VISUAL KEY  k  ∈  window.LACE_CONTRACTS                      │     │
│   │        │                                                       │     │
│   │        │  exactly one                                          │     │
│   │        v                                                       │     │
│   │   CODE UNIT  u(k)  — module | type | const | test name         │     │
│   │                                                                │     │
│   │   and the inverse: every gearing-related u has exactly one k   │     │
│   │                                                                │     │
│   │   SAME id string preferred:  A3 ↔ A3 · t2 ↔ t2 · X1 ↔ X1       │     │
│   │                                                                │     │
│   │   NOT 1:1:                                                     │     │
│   │     · one tooth drawn from two modules                         │     │
│   │     · one module owning two unrelated teeth                    │     │
│   │     · visual-only “decoration” with no contract key            │     │
│   │     · code “helper” that is really a second contract           │     │
│   │                                                                │     │
│   │ KEEP: bijection key ↔ unit                                     │     │
│   │ FORBID: orphan visual · orphan code · silent merge             │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE B — TWO UNIVERSES (do not fuse)                           │     │
│   │                                                                │     │
│   │   ┌─ SHADOW / HOLDER [III] ─┐     ┌─ HANDS / CORE ─────────┐ │     │
│   │   │ gearing HTML + shafts   │     │ strand/word/pointer…   │ │     │
│   │   │ A,B,C trains · cells    │     │ #![no_std] first-party │ │     │
│   │   │ escapement · audits     │     │ ONE append-only line   │ │     │
│   │   └───────────┬─────────────┘     └───────────┬────────────┘ │     │
│   │               │                               │              │     │
│   │               │  1:1 lives HERE               │              │     │
│   │               │  (Shadow code ↔ visual)       │  separate    │     │
│   │               v                               │  map         │     │
│   │        docs/clock/gearing-code-1to1.md              │  (rust map)  │     │
│   │                                               v              │     │
│   │                                    Great Contract Wall       │     │
│   │                                    (no ReAG in array)        │     │
│   │                                                                │     │
│   │ If “code” means Core crates: map only *boundary stamps*        │     │
│   │ ([H]/[III]/[X]/[GAP]) — never WORD/POINTER operators.         │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE C — SHAFT INVENTORY (visual side)                         │     │
│   │                                                                │     │
│   │  Shaft file                    │ keys present │ keys missing │     │
│   │  ─────────────────────────────┼──────────────┼───────────── │     │
│   │  contracts-axle.js            │ ____________ │ ___________ │     │
│   │  contracts-gears.js (A,B,C,   │ ____________ │ ___________ │     │
│   │    AB,BC,CA)                  │              │             │     │
│   │  contracts-trainA.js (A1–A9)  │ ____________ │ ___________ │     │
│   │  contracts-trainB.js (B1–B5)  │ ____________ │ ___________ │     │
│   │  contracts-trainC.js (C1–C10) │ ____________ │ ___________ │     │
│   │  contracts-cells.js (t0–t6)   │ ____________ │ ___________ │     │
│   │  contracts-escape.js (E1,E2,  │ ____________ │ ___________ │     │
│   │    R1)                        │              │             │     │
│   │  contracts-audits.js (X1–X6)  │ ____________ │ ___________ │     │
│   │                                                                │     │
│   │  Renderer loads ALL eight via <script src> — note any orphan.  │     │
│   │  WebGPU mesh for A/B/C must bind to same keys as chips.        │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE D — CODE INVENTORY (planned or present)                   │     │
│   │                                                                │     │
│   │  For EACH key k from PAGE C:                                   │     │
│   │                                                                │     │
│   │    k     │ proposed path / symbol      │ layer │ notes         │     │
│   │    ─────┼─────────────────────────────┼───────┼───────────── │     │
│   │    ____ │ ___________________________ │ III/H │ ____________ │     │
│   │                                                                │     │
│   │  Layer column:                                                 │     │
│   │    III = Shadow holder tooling (default for gearing)           │     │
│   │    H   = Hands Core (ONLY if stamp is [I] and not a gear)      │     │
│   │    X   = forbidden — must not exist                            │     │
│   │                                                                │     │
│   │  Prefer path shaped like:                                      │     │
│   │    gearing/train_a/a3.rs  or  shadow_clock::train_a::A3        │     │
│   │  Same string as the visual key.                                │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE E — BIJECTION AUDIT                                       │     │
│   │                                                                │     │
│   │   keys_in_LACE_CONTRACTS  = { … }                              │     │
│   │   units_in_code_plan      = { … }                              │     │
│   │                                                                │     │
│   │   ORPHAN VISUAL (in JS, no code unit):                         │     │
│   │     ________________________________________________________   │     │
│   │                                                                │     │
│   │   ORPHAN CODE (unit with no visual key):                       │     │
│   │     ________________________________________________________   │     │
│   │                                                                │     │
│   │   COLLISIONS (two units claim one key / two keys one unit):    │     │
│   │     ________________________________________________________   │     │
│   │                                                                │     │
│   │   RESULT: BIJECTION | BROKEN                                   │     │
│   │   If BROKEN: list the minimal rename/split/delete to fix.      │     │
│   │   Do not “fix” by inventing emission or Core rows.            │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE F — RENDERER ↔ DATA 1:1                                   │     │
│   │                                                                │     │
│   │   WebGPU mesh / chip / label  │ contract key │ drift?          │     │
│   │   ───────────────────────────┼──────────────┼──────────────── │     │
│   │   gear A                     │ A / A1–A9    │ yes|no|________ │     │
│   │   gear B                     │ B / B1–B5    │ yes|no|________ │     │
│   │   gear C                     │ C / C1–C10   │ yes|no|________ │     │
│   │   mesh AB BC CA              │ AB BC CA     │ yes|no|________ │     │
│   │   axle                       │ axle         │ yes|no|________ │     │
│   │   cells t0–t6                │ t0–t6        │ yes|no|________ │     │
│   │   escapement                 │ E1 E2 R1     │ yes|no|________ │     │
│   │   audit chips X1–X6          │ X1–X6        │ yes|no|________ │     │
│   │                                                                │     │
│   │   FORBID: decorative gear with no contract body                │     │
│   │   FORBID: contract body never selectable / never mesh-bound    │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE G — PROSE ↔ JS ↔ CODE (triple lock)                       │     │
│   │                                                                │     │
│   │   shadow-clock-gear-contracts.md  ──1:1──►  contracts-*.js     │     │
│   │              │                                   │             │     │
│   │              └──────────── 1:1 ──────────────────┘             │     │
│   │                              │                                 │     │
│   │                              v                                 │     │
│   │                     code unit u(k)                             │     │
│   │                                                                │     │
│   │   Pick 3 sample keys and prove the triple:                     │     │
│   │     key ____  prose §____  js file ____  code path ____        │     │
│   │     key ____  prose §____  js file ____  code path ____        │     │
│   │     key ____  prose §____  js file ____  code path ____        │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE H — ANYTHING THAT LOOKS LIKE “WHEN TO POINT”              │     │
│   │                                                                │     │
│   │   visual “grab” / hitch mesh / participation arrow             │     │
│   │        ──silenced──► [GAP]                                     │     │
│   │   1:1 does NOT authorize an emit_pointer crate.                │     │
│   │                                                                │     │
│   │   DELTA: silent | false friend | conflict                      │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE X — CROSS-CUT                                             │     │
│   │                                                                │     │
│   │  temptation              │ Hands / Layer deadbolt              │     │
│   │  ───────────────────────┼──────────────────────────────────── │     │
│   │  viz becomes Core       │ [III] only; wall stays               │     │
│   │  code without visual    │ orphan — delete or add key           │     │
│   │  visual without code    │ orphan — add unit or drop tooth      │     │
│   │  rename only on one side│ break 1:1 — rename both              │     │
│   │  utils aggregating keys │ FORBID — one key one unit            │     │
│   │  emit stub “for later”  │ [GAP] — stub is invention            │     │
│   │  src/ before acceptance │ FORBIDDEN                            │     │
│   │                                                                │     │
│   │  STILL [GAP]: POINTER when / arity / adjacency                 │     │
│   │  PRODUCT: docs/clock/gearing-code-1to1.md  (table + orphans)         │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│ [clip]                                                                   │
└──────────────────────────────────────────────────────────────────────────┘


  FLOW (ASCII)

       fetch/ff main
              │
              v
         gear-contracts.md ──► contracts-*.js ──► shadow-clock-gearing.html
              │
              v
         rust-nostd-crate-map (plan) · system-mathematical-model (if any)
              │
              v
         fill PAGE A → B → C → D → E → F → G → H → X
              │
              v
         write docs/clock/gearing-code-1to1.md
              │
              v
         STOP  (no src/ · commit only if human asks)


  FORBIDDEN
    invent emission · add src/ · fuse Shadow gears into Core crates
    orphan keys · orphan units · decorative-only meshes
    crates.io · ReAG in the array · paraphrase away 1:1


  STEWARD TEST
    shoe lace in hands, or no.
    If the clock tooth has no named code twin (or twin has no tooth),
    the map is wrong — do not paper over it.


╔══════════════════════════════════════════════════════════════════════════╗
║  END ASCII PROMPT — force visual↔code bijection; leave [GAP] sealed      ║
╚══════════════════════════════════════════════════════════════════════════╝
```
