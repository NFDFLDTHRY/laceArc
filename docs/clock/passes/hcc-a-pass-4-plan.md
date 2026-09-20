# HCC-A pass 4 plan — pipeline register vs attachment

**Status:** EXECUTED on the clipboard. Emission `[GAP]`.  
**Station:** hologram  
**Clipboard:** `docs/clock/hcc-a-systems-manifest.md` (pipeline register is composition; H1–H11 remain stations)  
**Reference:** HCC-A v1.0 attachment (not in git)  
**Floor:** `docs/atomic-primitives-map.md` read only

Pass 1 headings. Pass 2 leftovers. Pass 3 climb. Reforge made pipes. Pass 4 is **bijection and payload typing** — make every station and every π tell the same story, with named packets.

---

## What pass 4 is not

- Not a new gearbox
- Not Core Pieces 1–15
- Not amending the atomic map
- Not filling G2 / POINTER
- Not Water / Cup mesh
- Not a projection-parser tick (HTML fetches markdown; `##` pipes are invisible to the current piece parser — separate hologram ticket if you want π on screen)

---

## Tickets

### T1 — Station ↔ π bijection

Every H / SM / P / Act field that names an input or output must name the **same payload** as the π row. Today H3 “structured arrival traces” and πRIC “ordered traces” rhyme; H6 ops vs πL “ledger edits” still drift.

Product: table `H* ↔ π*` with match / drift / `[GAP]`. Drift updates the **station** to the pipe, or the pipe to the attachment — attachment wins.

### T2 — Named packets

Attachment payloads are not “data.” Pass 4 names them and forbids mixing:

| Packet | Produced by | Consumed by | Not |
|---|---|---|---|
| constraint | R | I | a readable object |
| raw signal | I | RIC and PFC | a compile |
| ordered trace | RIC | C | a second P0 |
| schema stream | PFC | C | Contract II ingest |
| ledger op | C | L | P4 |
| ledger state | L | M, ISL | Graphic D |
| weight / transition | M | E, B, ISL | project-meaning |
| affect | E | ISL, B (local) | a transmissible packet |
| identity snapshot | ISL | B, PFC_{n+1} | a star |
| act | B | R (πFB) | POINTER |
| next-world structure | πFB | next RIC | an append |

If a station still says “inputs: identity + meaning + emotion + templates” it must unpack to those packets.

### T3 — Dual shaft + valve

Register already says RIC∥PFC is one intake and P4 is the valve. Stations H3/H4/C still read as siblings. Pass 4 adds one sentence on H3, H4, H5: **same packet family, two transforms, one valve.** PFC-only = blocked pipe.

### T4 — Two writers, two sinks

πFB → R. πID / Act VI → PFC. Pass 4 stamps H10b and H9/Acts so they cannot collapse into one “feedback” packet.

### T5 — Acts as fold, not a second mill

Each Act is a *read* of a π segment plus diagnostic prompts. Act II must not grow a second πL. Act VI is the only Act that writes (into πID).

### T6 — H11 as trace tape of this pipe

YAML `event_trace` fields map onto packets in T2. `person_model` maps onto knobs. Still `[X]` if stored as Graphic D. Not a new π.

### T7 — Remaining `[GAP]` stay sealed

- POINTER when / arity / adjacency
- Numeric P4 switching procedure
- ISL halt clock
- Empty L at first rev (attachment silent)

Do not invent packets to close these.

---

## Execution (when you say go pass 4)

1. Claim hologram.
2. Edit only `docs/clock/hcc-a-systems-manifest.md`.
3. Add **Pipe ↔ station bijection**, **Packet dictionary**, T3–T6 stamps on the existing stations.
4. Append Pass 4 deltas. Do not rewrite Pass 1–3 history.
5. STOP.

---

## Steward test

If the packet cannot be pointed at in the attachment, it is not a packet.  
If the packet would land on P0, it is `[X]` or `[GAP]`, not a fill.
