# HCC-A pass 3 plan — atomic primitives up, recursive systems

**Status:** EXECUTED on the clipboard (Climb A–D). Atomic map not amended. Emission `[GAP]`.  
**Station:** hologram (clipboard). Atomic map is **maps** — read only this tick.  
**Clipboard:** `docs/clock/hcc-a-systems-manifest.md`  
**Floor:** `docs/atomic-primitives-map.md` P0–P4, K1–K6, composition into Lace Pieces 1–15  
**Reference:** attachment HCC-A v1.0 (not in git)  
**Why this pass exists:** Pass 1–2 walked author headings. They did not climb from Lace atoms, and they did not treat HCC loops as *systems that recurse into each other*.

---

## What was missing

The clipboard is a flat mill: H1…H10b side by side. HCC-A is not flat.

Author recursion already in the attachment:

```
R → I → RIC∥PFC(ISL_{n-1}) → C → L → M → E → ISL_n → B → R'
                                                      │
                                                      └─► PFC_{n+1}
```

That is **three nested recursions**, not one loop drawn twice:

1. **World recursion** — B changes R; new structure is next RIC. (§2.8 / H10b)
2. **Identity recursion** — ISL priors *are* the next PFC. PFC is not a side channel.
3. **Directive recursion** — M transitions change allowed B, which changes R, which changes next RIC. “Meaning is directive.”

Pass 1–2 named the arrows. They did not say what each recursion is *made of*, what it is forbidden to be made of, or how two recursions couple when they share oil (L).

Lace recursion is a different object:

> A word is defined by words that themselves recurse. Project-meaning = routes / touches / participation on one open strand.

Atomic map already stamped: that meaning is Pieces 7–9, 11. It is **not** HCC-A M weights.

---

## Climb (execute in this order)

Do not start at H1. Start at P0.

### L0 — Lace atoms (Hands, not imported)

Read, do not rewrite, `docs/atomic-primitives-map.md`:

| Atom | Obligation |
|---|---|
| P0 | one strand / one array, two ends, open |
| P1 | occurrence identity at a position |
| P2 | WORD entry form |
| P3 | POINTER entry form |
| P4 | APPEND is the only change |
| K1–K6 | prefix, order, backward ref, one structure, view-no-write, strand stays open |

Composition table Pieces 1–15 stays Hands. Pass 3 may **cite** rows. It may not amend the atomic map (maps station).

### L1 — What HCC is allowed to *see* of L0

Only kind-kin, already stated, now as a climb row:

| HCC | May see | May not become |
|---|---|---|
| RIC order | P1 arrival order | a second P0 |
| “structure crosses” | K5 / Piece 14 negation | POINTER emission |
| B as request for more strand | a holder act that *might* later be an arrival | P4 itself |
| H10b “new structure” | R changed | Graphic D append |

Write this as **Climb table A** on the clipboard. Every later HCC piece must point at an L0 row or at `[X]`.

### L2 — HCC internals as recursive *systems*, not sibling gears

Each internal is a system that consumes the previous system’s output and can feed an earlier system on the next revolution.

| System | Recurses into | Shared oil | Forbidden identification |
|---|---|---|---|
| C | L (write) | L | Piece 2 governing rule |
| L | M, ISL, Act II | L | P0 / P4 / K1 (merge/delete) |
| M | E, B, next R via B | L + priority stack | Piece 14 / project-meaning recursion |
| E | ISL, B (P6 Mode D) or L (P6 Mode C rewrite) | none transmissible | a row |
| ISL | PFC_{n+1} | priors | Piece 7 star |
| PFC | C (this rev) | ISL_{n-1} | Contract II ingest |
| H10b | R → I → RIC | world | P4 |

**Mode C vs Compiler C** already stamped. Pass 3 adds: P6 Mode C is a recursion *into L* (story-rewrite). That is why it is `[X]` on Graphic D twice — once as letter, once as K1.

### L3 — Coupling of recursions (the missing relationships)

Pass 3 writes a **coupling lattice**, not more sibling pieces.

Required edges (author-supported):

- ISL_n → PFC_{n+1} → C_{n+1} → L_{n+1}  (identity recursion uses the mill)
- M_n → B_n → R' → RIC_{n+1} → C_{n+1} → L_{n+1} → M_{n+1}  (directive recursion)
- P6 Mode C → L rewrite → M  (emotion rewrite recursion; oil only)
- Act VI → P1 templates → PFC  (play-layer write into identity recursion)
- Cluster labels on Lace (Layer III) ⟂ ISL snapshot  (same English “who/what”, different object)

Mark `[CONFLICT]` where the author uses one English word for two systems (meaning, structure, identity, story, pointer).

### L4 — Depths already numbered in philosophy-map

Philosophy-map depths 0–4 (event / compile / talk / spec) are a *holder* stack. Pass 3 maps them onto L0–L3:

| Depth | Lives at | Recurses? |
|---|---|---|
| 0 R | L1 world | via H10b |
| 1 compile | L2 mill | via ISL and M |
| 2 talk | Water, not this clipboard | do not fill Water UNK from L |
| 3 noticing | hologram / steward | K5 |
| 4 spec / YAML | H11 | parameters of L2, not a new atom |

Do not invent depth 5.

### L5 — What still must not happen

- Close G2 / POINTER emission from any HCC recursion
- Treat cluster-label merge as L merge
- Treat star as ISL
- Amend `atomic-primitives-map.md` from this station
- Put P0–P4 into Graphic D as HCC row types
- Update projection HTML by hand — it fetches the clipboard

---

## Clipboard product (when you say go pass 3)

Add to `docs/clock/hcc-a-systems-manifest.md` only:

1. **Climb A** — L0 cite table (atoms vs HCC see/not-become)
2. **Climb B** — L2 recursive systems table
3. **Climb C** — L3 coupling lattice (named edges, shared oil, `[CONFLICT]` English)
4. **Climb D** — project-meaning recursion vs M directive recursion (two recursions, zero shared state)
5. Pass 3 deltas table under Pass 2. Do not rewrite Pass 1–2 history.

No new Core piece numbers. No `src/`. Attachment stays out of git.

---

## Steward test

If the relationship cannot be pointed at in the attachment **and** seated on an L0 atom or an explicit `[X]`, it does not enter the clipboard.  
“Feels recursive” is not a row.
