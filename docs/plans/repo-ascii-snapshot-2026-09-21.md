# Repository ASCII snapshot — 2026-09-21, before the restructuring

**Status:** snapshot. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Base:** `575a54e`. **1,543 commits · 607 tracked `.md` · 127,160 lines · 4 source PNGs.**
**Purpose:** a restructuring was announced. This is the *before* picture, drawn so that after the move a reader can tell what changed from what was lost. **It proposes no structure and closes nothing.**
**Pattern:** the graphics shelf's own — [`graphic-a-ascii.md`](../graphics/graphic-a-ascii.md), *"Not Graphic A… settles nothing the PNG does not."* This is not the repository. It is a reading of its shape on one day.

---

## S1 — Shelf topology, with door coverage

Counts are tracked files. `door` is the shelf index's own coverage of its shelf.

```
laceArc/
├── README.md · AGENTS.md · CLAUDE.md · CONTRIBUTING.md · LICENSE      [law]
├── .claude/            4   hooks + settings                           [kit]
├── refs/local/         0 tracked — 5 staked sources, gitignored
└── docs/              44 at root                        door  24/43  ⚠
    ├── plans/        205 ───────────────────────────────  door 209/209 ✓
    │   ├── fixtures/   4   golden IR v0.1/v0.2 · d1-golden v0.1.0
    │   └── tools/      3   hologram shape check · lace-candidate-run
    ├── clipboards/    99 ───────────────────────────────  door  99/99  ✓
    ├── clock/         30 + passes/ 62 + tests/ 2 + wasm/ 1
    │   │                                      door  21/29  ⚠  passes 31/61 ⚠
    ├── kit/           48                                   door  ✓
    ├── graphics/      37   ← 4 PNGs are the source of record door  17/36  ⚠
    ├── history/       34                                   door  27/33  ⚠
    ├── hologram/      32                                   door  18/31  ⚠
    ├── prompts/       22                                   door  ✓
    ├── gearing/       22 + claims/ 9                       door  15/21  ⚠
    └── coord/          9 + stations/ 12 + tests/ 2         door  ✓

    7 thin doors · 0 orphans · 0 stale absence · 0 law-copy drift
    202 advisories · 195 of the last 200 commits carry no actor trailer
```

**Read the shape.** Two shelves are 1:1 and they are the two largest. Five of the seven thin doors are the oldest shelves. **`docs/graphics/` — the source of record — has the second-worst coverage in the tree at 17 of 36.**

## S2 — Station ownership

Eleven stations. **All FREE at snapshot time.** `coord.sh which <path>` resolves a path to exactly one.

```
  station        owns                                              files
  ─────────────  ────────────────────────────────────────────────  ─────
  law            AGENTS · CLAUDE · law-why · systems-manifest         ~12
                 pointer-emission · references · README · .gitignore
  maps           docs/plans/** · reason-model · atomic-primitives      ~215
                 namespace-register · CATCH-ALL for docs/*.md
  clipboards     docs/clipboards/**                                     99
  hologram       docs/hologram/** AND docs/clock/**                    127
  kit            docs/kit/** · .claude/**                               52
  graphics       docs/graphics/** · graphics-close-reading.md           38
  history        docs/history/** · history-recovered*                   34
  prompts        docs/prompts/**                                        22
  gearing-meta   docs/gearing/*.md|*.sh   (NOT contracts-*.js)          ~13
  coord          docs/coord/**                                          23
  renderer       3 named .html viewers                                   3
  ─────────────  ────────────────────────────────────────────────  ─────
  gear shafts    8, via docs/gearing/claim.sh — axle gears trainA/B/C
                 cells escape audits   (guard contracts-*.js)

  NOTE  maps holds a catch-all: any unmatched file at docs/ root is maps.
  NOTE  hologram owns two unrelated shelves — docs/hologram AND docs/clock.
  NOTE  claim() reads the LOCAL station file after a fetch that never
        merges, so two agents who have not pulled can both claim. gate()
        catches the collision afterwards. Detected, not prevented.
```

## S3 — The three layers, as ruled 2026-09-21

```
  ┌─ MATERIALS ─────────────────── building materials, never Core ─┐
  │  concepts    Kauffman · Rowlands · Petersen-Zech · Xiao-Zhu    │
  │              AgentScope          staked refs/local, by SHA     │
  │  execution   wasm 3.0 · WebGPU · WGSL · WebNN · rustc · cargo  │
  │              10 clipboard campaigns, 6 passes each             │
  └───────────────────────────┬────────────────────────────────────┘
                              │  KEEP / FORBID / SILENT
                              v
  ┌─ SUBSTRATE ──────────── Lace · the source of record ───────────┐
  │  docs/graphics/  A  from-words-to-worlds.png     growth        │
  │                  B  mechanisms                   behaviour     │
  │                  C  n-dimensional                dimensions    │
  │                  D  data-structure-1d-array.png  THE STORE     │
  │  then docs/systems-manifest.md                                 │
  │                                                                │
  │  one append-only array · WORD | POINTER · refs point backward  │
  │  nothing deleted · nothing rewritten · indices permanent       │
  │  3D views are projections, stored nowhere                      │
  └───────────────────────────^────────────────────────────────────┘
                              │  targets  (client, not constraint)
  ┌─ MACHINE ───────────────  │  ruled architecture 2026-09-21 ────┐
  │  HCC-A          the compiler   RIC ∥ PFC → C → L → M → E → ISL │
  │                 S0..S7 loop    staked 97010d27, 12,084 B       │
  │  Coffee Cup     causality      Conditions→Release→Trajectory→  │
  │                 Impact→Aftermath→rewrites Conditions           │
  │                                staked e22c06ce,  7,623 B       │
  │  Water          admission      OBS | DELTA | UNK | INVALID     │
  │                 S0..S4 FSM     staked 0812654c, 19,862 B       │
  └────────────────────────────────────────────────────────────────┘

  Staked 2026-09-21 into refs/local/, gitignored. Blob SHAs match the
  identities docs/history recorded from the bootstrap branch, byte for
  byte. Before that date the four docs/clock manifests carried NO source
  identity — "attachment. Not in git." Every reading was of a memory.
```

## S4 — The gate

```
  docs/pointer-emission.md          DRAFT · NOT ACCEPTED · src/ forbidden
  ├── CLOSED   Q0 WORD admission ...................... by human ruling
  │            unseen arrival → root .................. by human ruling
  │            seen arrival → occurrence, root stays ... silent
  │            Q1 root touch .......................... ruling + D1 witness
  │            Q1 physical constructor: binary Join ... silent
  │            Q2 arity = 2 ........................... silent  ← inference
  │            Q3 adjacency trigger: no ............... silent
  │            Q4 earlier/same-line refs .............. silent
  │            Q4 target kind WORD|POINTER ............ silent
  │              9 CLOSED rows · 3 name their authority · 6 do not
  │
  └── [GAP]    the sampling-derived retention / materialization
               condition: when discovered structure becomes a RETAINED
               pointer, and how an ephemeral sampled structure is
               grounded when a retained operand requires an address
               + G1 word equality / tokenization

  the question surface lives in FIVE places and they do not agree
  ┌────────────────────────────────────┬──────┬─────────────────────┐
  │ pointer-emission.md  question table│  13  │ what acceptance sees│
  │ systems-manifest.md  open questions│  11  │ 9 absent from above │
  │ systems-manifest-ascii.md  table   │  12  │ incl. "emission     │
  │                                    │      │ still unanswered"   │
  │ graphics-close-reading.md §6       │   6  │ author-decides only │
  │ pointer-emission.md  Pass-7 hist.  │   6  │ dated, retained     │
  └────────────────────────────────────┴──────┴─────────────────────┘
```

## S5 — The lab, one day old

```
  docs/plans/fixtures/d1-golden-v0.1.0.json
      Graphic D panel 1 — 11 rows, 5 word arrivals, 6 pointers
      transcribed from the close reading, verified against the panel
      by sighted read 2026-09-20

  docs/plans/tools/lace-candidate-run.py
      host-side · no network · no src/ · builds a list in memory

      candidate         by rule  by oracle   exact
      words_only              0          6     yes
      root_touch              1          5     yes   ← row 0004
      adjacent_pairs          6          0      no   diverges 0004

      Of D1's six pointers, ONE is derivable from the word stream.
      Five are not.

  LIMIT, stated: the runner holds WHEN fixed and tests WHICH OPERANDS.
  It does not test whether a rule would have emitted at all.
  CAVEAT: built against the older "operand selection" framing. The gate
  now asks a RETENTION question — what makes discovered structure worth
  keeping. The bench measures derivability, not retention. Not the same.
```

---

## What a restructuring should not lose

Named because each was expensive to find and none is recoverable from a file listing.

1. **The graphics door is 17/36** — the worst coverage in the tree sits on the source of record.
2. **`hologram` owns two unrelated shelves**, and `maps` holds a catch-all for the `docs/` root. Both are load-bearing accidents.
3. **Six of nine `CLOSED` gate rows do not say what closed them**, and the file's own rules distinguish picture-closure from human ruling.
4. **Five question inventories, disagreeing.** Nine of the manifest's eleven open questions are absent from the table acceptance would cover.
5. **`claim()` cannot prevent a collision**, only `gate()` detects one. Two agents collided twice in 24 hours.
6. **The machine's junctions were mapped and then forbidden** — `water-pass-1-plan.md`'s table is headed *"Must not become"* and its rows are the complete correspondence between machine and substrate.
7. **The four `docs/clock` manifests are readings of texts staked only since 2026-09-21.** Everything written about the machine before that date is a reading of a compression.

**This snapshot settles nothing.** It is a photograph taken the day before the furniture moves.
