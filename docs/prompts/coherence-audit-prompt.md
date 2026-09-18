# Repo coherence audit — process ASCII prompt

Paste everything inside the outer box to an agent. **Audit + update-as-you-go.** Hands win. Emission `[GAP]`. No `src/`. No inventing pointer-emission answers.

Prior related work (do not ignore): `docs/downstream-audit.md` (pre-integration / enforcement findings).  
This prompt is a **standing walk** across live tip materials: graphics → law → maps → Shadow → plans → HTML, fixing doc drift as each station passes.

```
╔══════════════════════════════════════════════════════════════════════════╗
║  LACEARC  ·  ASCII PROMPT  ·  COHERENCE AUDIT (UPDATE AS YOU GO)         ║
║  Hands first · one station per tick · [GAP] sealed · NO src/             ║
╚══════════════════════════════════════════════════════════════════════════╝

  YOU ARE walking the repo for coherence and repairing doc drift when found.
  YOU ARE NOT filling pointer-emission answers.
  YOU ARE NOT adding src/, crates.io, or Core operators from Shadow.
  YOU ARE writing findings into docs/coherence-audit-log.md as you go.


                    ┌────────────── READING ORDER (law) ───────────┐
                    │  shoe → graphics A–D → systems-manifest        │
                    │  → staking / law-why → AGENTS.md               │
                    │  → reason-model-map → Shadow/plans/HTML last   │
                    └──────────────────┬───────────────────────────┘
                                       │ never reverse
                                       v
              STATION → FIND → FIX (docs only) → LOG → NEXT


┌──────────────────────────────────────────────────────────────────────────┐
│ CLIPBOARD                                                                │
│ laceArc ← coherence audit with live updates                              │
│ law: Hands > Shadow · update drift · do not invent emission · [GAP]      │
├──────────────────────────────────────────────────────────────────────────┤
│ [clip]                                                                   │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE 0 — RUN PROTOCOL                                          │     │
│   │                                                                │     │
│   │  1. git fetch + ff-only origin/main                            │     │
│   │  2. If RESYNC FIRED → treat all claims BASE stale; refresh tip │     │
│   │  3. One STATION per tick (below). Do not boil the ocean.       │     │
│   │  4. For each finding:                                          │     │
│   │       KIND: drift | conflict | [GAP] | stale-link | ok         │     │
│   │       FIX:  edit docs now if Hands-safe; else LOG only         │     │
│   │  5. Append a row to docs/coherence-audit-log.md                │     │
│   │  6. Commit only if human asked (or standing ask this session)  │     │
│   │  7. Push only if human said push                               │     │
│   │                                                                │     │
│   │  Agent id: ________   Tip SHA: ________   Date: ________       │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE A — STATIONS (walk in order; tick = one letter)           │     │
│   │                                                                │     │
│   │  A1  Graphics A–D present + graphics/README cites              │     │
│   │  A2  systems-manifest vs graphics (Pieces; open [GAP]s)        │     │
│   │  A3  staking + law-why + AGENTS Implementation Law align       │     │
│   │  A4  reason-model-map vs five stake KEEP/FORBID                │     │
│   │  A5  Stake prompts ↔ filled clipboards (all five?)             │     │
│   │  A6  pointer-emission.md DRAFT-only; no false acceptance       │     │
│   │  A7  rust-nostd-crate-map ↔ branch-contracts ↔ birth order     │     │
│   │  A8  gearing 1:1 ↔ contracts-*.js ↔ HTML picks/skin            │     │
│   │  A9  hologram templates ↔ gearing-html-hologram-restyle law    │     │
│   │  A10 shadow-clock hologram/agent-brief/contracts prose align   │     │
│   │  A11 history-recovered-* steward filters still Hands-safe      │     │
│   │  A12 README contents table ↔ files on disk (no missing links)  │     │
│   │  A13 CLAIMS/RESYNC coherence (Layer III only)                  │     │
│   │  A14 downstream-audit.md: which F## still live at this tip?    │     │
│   │                                                                │     │
│   │  Mark each: PASS | FIX-APPLIED | OPEN | BLOCKED-[GAP]          │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE B — WHAT “COHERENT” MEANS                                 │     │
│   │                                                                │     │
│   │  · Same claim in two docs ⇒ same disposition                   │     │
│   │    (kin / conflict / off-shoe / [GAP])                         │     │
│   │  · Prompt product path = file that exists (or marked ABSENT)   │     │
│   │  · Shadow never promoted to Core operator                      │     │
│   │  · Visual keys ↔ contract keys ↔ 1:1 plan (or noted drift)     │     │
│   │  · README link target exists                                   │     │
│   │  · “Accepted” never means “file exists” for emission           │     │
│   │                                                                │     │
│   │  NOT required: filling [GAP] · inventing arity · src/          │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE C — UPDATE RULES (as you go)                              │     │
│   │                                                                │     │
│   │  ALLOWED fixes without new human ask (docs only):              │     │
│   │    · broken relative links / wrong product paths in prompts    │     │
│   │    · README row for a file that already exists                 │     │
│   │    · stale “untracked” / “absent” notes when file is on main   │     │
│   │    · 1:1 PAGE F notes when HTML pick/skin already changed      │     │
│   │    · steward filter reminders that repeat existing law         │     │
│   │                                                                │     │
│   │  REQUIRES human ask:                                           │     │
│   │    · changing KEEP/FORBID or staking text                      │     │
│   │    · accepting pointer-emission                                │     │
│   │    · adding src/ or Cargo                                      │     │
│   │    · rewriting graphics / manifest Piece meaning               │     │
│   │    · clearing RESYNC / force-free shafts                       │     │
│   │                                                                │     │
│   │  LOG-ONLY (do not “helpfully” close):                          │     │
│   │    · true [GAP]s (when / arity / adjacency / identity…)        │     │
│   │    · conflicts that need a ruling                              │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE D — LOG SHAPE (docs/coherence-audit-log.md)               │     │
│   │                                                                │     │
│   │  Create if missing. Append only (Rule Zero for the log).       │     │
│   │                                                                │     │
│   │  ### tick YYYY-MM-DD · station A__ · tip ________              │     │
│   │  - finding: …                                                  │     │
│   │  - kind: drift|conflict|[GAP]|stale-link|ok                    │     │
│   │  - fix: none | path edited | blocked                           │     │
│   │  - cites: files…                                               │     │
│   │  - emission contact: none | silenced → [GAP]                   │     │
│   │                                                                │     │
│   │  Never rewrite an earlier tick.                                │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE E — FIRST FULL PASS ORDER (suggested campaign)            │     │
│   │                                                                │     │
│   │   Week of ticks (serial):                                      │     │
│   │     Day: A1–A3 Hands spine                                     │     │
│   │     Day: A4–A6 stakes + emission DRAFT status                  │     │
│   │     Day: A7 rust plans                                         │     │
│   │     Day: A8–A10 gearing + hologram skin law                    │     │
│   │     Day: A11–A14 history + README + RESYNC + downstream F##    │     │
│   │                                                                │     │
│   │   After campaign: one summary paragraph in the log             │     │
│   │   (still append-only). Do not declare Core ready.              │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE F — KNOWN HOTSPOTS (check explicitly)                     │     │
│   │                                                                │     │
│   │  [ ] Petersen filled clipboard vs prompt-only                  │     │
│   │  [ ] Prompt write-paths vs actual product filenames            │     │
│   │  [ ] Plastic-gear HTML vs hologram restyle prompt (pixels)     │     │
│   │  [ ] pointer-emission Status still DRAFT / not accepted        │     │
│   │  [ ] branch-contracts PLAN ≠ permission for src/               │     │
│   │  [ ] Elephant clock / agent-interaction ≠ LACE_CONTRACTS keys  │     │
│   │  [ ] History FORCE/Onion dual-store language still filtered    │     │
│   │  [ ] downstream-audit F01 protection claim re-checked live?    │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│   ┌────────────────────────────────────────────────────────────────┐     │
│   │ PAGE X — CROSS-CUT                                             │     │
│   │                                                                │     │
│   │  temptation              │ Hands deadbolt                      │     │
│   │  ───────────────────────┼──────────────────────────────────── │     │
│   │  fill [GAP] to finish   │ LOG only — helpful is the breach     │     │
│   │  one giant PR           │ one station per tick                 │     │
│   │  Shadow wins a clash    │ Hands win; Shadow yields             │     │
│   │  “file exists”=accepted │ only human acceptance for emission   │     │
│   │  audit as Core work     │ docs/Layer III only until gate       │     │
│   │                                                                │     │
│   │  PRODUCT: docs/coherence-audit-log.md (+ small doc fixes)      │     │
│   │  AFTER each tick: STOP or continue to next station if asked    │     │
│   └────────────────────────────────────────────────────────────────┘     │
│                                                                          │
│ [clip]                                                                   │
└──────────────────────────────────────────────────────────────────────────┘


  FLOW (ASCII)

       fetch/ff main ──► PAGE 0 protocol
              │
              v
         pick next open station A1…A14
              │
              v
         read Hands authorities first
              │
              v
         FIND → FIX if allowed → APPEND log
              │
              v
         STOP (or next station if campaign continues)


  FORBIDDEN
    invent emission · add src/ · paraphrase staking away
    rewrite old log ticks · promote hologram/cubes to Core
    close [GAP] with stakes, history, or “obvious” defaults


  STEWARD TEST
    shoe lace in hands, or no.
    If the fix needs a second store to “make sense,” it is wrong.


╔══════════════════════════════════════════════════════════════════════════╗
║  END ASCII PROMPT — audit coherence; update docs as you go; leave [GAP]  ║
╚══════════════════════════════════════════════════════════════════════════╝
```
