# Kauffman pass 4 — rigorous mechanism map + constructive algorithms (PDF)

**Status:** EXECUTED (Wave A complete; Waves B–D deferred). Emission `[GAP]`.  
**Station:** clipboards (HELD `reference-Mapper`)  
**Base at plan:** `e0500ae` (refresh if main moves before execute)  
**Source:** L.H. Kauffman, *Knots and Physics*, 4ed · slug `dokumen.pub_knots-and-physics-4ed-9814383007`  
**PDF:** `refs/local/kauffman-knots-and-physics-4ed.pdf` · 865 pp. · image-only (`tiff2pdf`) · **never git-add**  
**Offset:** PDF p. ≈ printed p. + 19 (verified passes 1–3)  
**Primary artifact (new):** `docs/clipboards/kauffman-4ed-mechanisms.md`  
**Companion (update receipts only):** `docs/clipboards/kauffman-4ed-clipboard.md`  
**Read-only:** graphics A–D · systems-manifest · law · reason-model-map §1 · five-stakes PAGE 1/5  

Law: diagram ≠ rope · hitch kin · grab ≠ emission · Hands win · `[GAP]` sealed.

```
pull/ff → claim clipboards → Hands skim
       → open PDF (gitignored)
       → for each mechanism card: pin pages → extract rule → write algorithm
       → Lace stamp KEEP/FORBID/SILENT (never invent Φ)
       → write kauffman-4ed-mechanisms.md
       → receipt on book clipboard
       → check · commit · release · STOP
```

---

## Why this pass exists

Passes 1–3 built **admission** (what may sit beside Lace).  
Pass 4 builds **machinery from the book**: what procedures Kauffman actually states, written as constructive algorithms, each pinned to PDF pages, each stamped so none sneak into Core as emission or a second store.

This is **Shadow / Layer III documentation of the book**, not Lace `src/`, not `pointer-emission.md`, not a Rust crate.

---

## Non-goals (sealed)

| Forbidden | Why |
|---|---|
| Invent POINTER when / arity / adjacency | Φ stays `[GAP]` |
| Add `src/` or executable Core | Implementation law; emission not accepted |
| Treat bracket/Jones/Gauss/slide/Reidemeister as Lace writes | Pass 2–3 FORBID |
| Quietly amend reason-model-map / law / graphics | maps/law stations; report OPEN only |
| Git-add PDF or page rasters | gitignore |
| Claim “full OCR of 865 pages” as done without tooling | honesty of method |
| Push without ask | standing rule |

---

## Artifact schema (mandatory card shape)

Every mechanism in `kauffman-4ed-mechanisms.md` is one card. Empty required fields = card incomplete = not done.

```
### M-ID — Short name

| Field | Content |
|---|---|
| Kind | geometry / combinatorics / algebra / physics / biology-metaphor / diagram-rewrite |
| Book locus | Part · § · printed pp. · PDF pp. |
| Sighting method | pdftoppm+visual \| OCR (tool+version) \| prior pin cite |
| Eye-quote | ≤3 lines, verbatim enough to re-find |
| Inputs | named objects + types (diagram, tensions, braid word, …) |
| Outputs | named objects + types |
| Invariants | what must not change under the procedure |
| Algorithm | numbered constructive steps (see below) |
| Complexity / termination | how it stops; non-determinism if any |
| Worked miniature | one tiny example (optional but preferred on Wave A) |
| Lace stamp | KEEP-read \| FORBID-as-Core-write \| SILENT/off-shoe |
| Hands cite | Piece / Graphic / RM id |
| Map cite | K1–K9 or “none” |
| False friend | what it must not be mistaken for in Lace |
| Open gaps | `[GAP]` / `[OPEN]` only where book or Hands is silent |
```

### Algorithm writing standard

For each card, `Algorithm` must be **constructive** enough that a careful human could execute it on paper:

1. **Preconditions** (well-formed diagram, orientation, framing, …).  
2. **State** (what is being rewritten or accumulated).  
3. **Steps** numbered; each step is local and checkable.  
4. **Choice points** made explicit (e.g. which crossing to expand); if book is silent, mark `[OPEN]` — do not invent a scheduler.  
5. **Halt** condition.  
6. **Output certificate** (what you hold when done: polynomial, equivalence class, tension bound, …).

Pseudocode is allowed as fenced `text` blocks. Prefer book vocabulary over Lace vocabulary inside the algorithm body. Lace vocabulary belongs only in `Lace stamp` / `False friend`.

---

## Mechanism inventory (from TOC + prior pins)

IDs are stable. Wave letters = execute order.

### Wave A — Core diagram & physics mechanisms (must finish in pass 4 execute)

| ID | Mechanism | Seed PDF / printed | Expected stamp |
|---|---|---|---|
| M-A1 | Clove / hitch participation (later tension holds earlier wrap) | 23/4 · 342–343/323–324 | KEEP-read |
| M-A2 | Capstan / winding inequality \(T_2 \le \kappa T_1\), \(\kappa\) vs turns | 342–343/323–324 | FORBID-as-fields; KEEP-read as physics image |
| M-A3 | Closed-loop definition (knot as single closed rope) | 27–28/8–9 | FORBID-as-Lace-identity |
| M-A4 | Move Zero (planar isotopy / projection hygiene) | 35/16 | KEEP-read as projection only |
| M-A5 | Reidemeister I–III (+ ambient vs regular isotopy) | 35–36/16–17 | FORBID-as-Core-write |
| M-A6 | Bracket state-sum (splice A/B, state product, loop value) | 44+/25+ | FORBID-as-history-store; SILENT for Lace append |
| M-A7 | Jones via normalized bracket / skein | 68+/49+ | FORBID-as-history-store |
| M-A8 | Slide equivalence axioms → RII/RIII | 355/336 | FORBID-as-Core-write |
| M-A9 | Virtual knot / 1-handle stabilization (preface + appendix def) | 16/xv · 782/763 | FORBID-extra-rooms |

### Wave B — Algebraic / braid / YBE mechanisms (pass 4 if time; else explicit defer list)

| ID | Mechanism | TOC printed seed | Stamp hypothesis |
|---|---|---|---|
| M-B1 | Braid word ↔ closure | Part I §7 ~p.85 | FORBID as Lace chronology |
| M-B2 | Yang–Baxter / R-matrix move | §8–10 | off-shoe algebra; FORBID as array law |
| M-B3 | Skein recursion (Homfly / specializations) | §5–6, §11 | FORBID as emission scheduler |
| M-B4 | Alexander via state/model | §12 | FORBID as store |
| M-B5 | Gauss code reconstruct / trip | 562/543 | FORBID as append-life |

### Wave C — Applied / metaphor mechanisms

| ID | Mechanism | Seed | Stamp hypothesis |
|---|---|---|---|
| M-C1 | DNA strand passage / enzyme (White, Lk/Tw/Wr) | 507/488 | FORBID cut-rejoin as Lace write |
| M-C2 | Rubber band / twisted tube (Part II) | TOC ~329 | read-only metaphor; SILENT/FORBID as Core |
| M-C3 | Quaternion / belt trick demonstrator | TOC ~403–427 | off-shoe; SILENT |

### Wave D — Virtual / Khovanov appendix (definitions only in pass 4)

| ID | Mechanism | Seed | Stamp |
|---|---|---|---|
| M-D1 | Virtual crossing / stabilized surface embedding | 782+ | FORBID rooms |
| M-D2 | Arrow polynomial expansion (if sighted) | ~800+ | FORBID as history |
| M-D3 | Khovanov cube / graded Euler → bracket | appendix | FORBID as Lace store |

**Pass 4 execute success bar:** Wave A complete (all M-A* cards filled to schema). Waves B–D: either complete cards **or** a `## Deferred` table with ID + reason + next seed page.

---

## Method (rigor under image-only PDF)

1. **Locate** via TOC (PDF ~p.18–19) + offset + prior pins.  
2. **Render** `pdftoppm -f N -l N -png -r ≥120`.  
3. **Read** visually (or OCR if installed; record tool).  
4. **Extract** rule into card; no paraphrase that changes arity of a move.  
5. **Cross-stamp** against Hands + map K#; on silence write `[GAP]` / `[OPEN]`.  
6. **Do not** fill Lace emission from a book recursion “scheduler.”

If two pages disagree, record both loci and mark `[OPEN]` — do not pick by convenience.

---

## Tickets

### T0 — Claim / base

Held at plan. Before execute: `git pull --ff-only` · refresh if clock turned.

### T1 — Scaffold artifact

Create `docs/clipboards/kauffman-4ed-mechanisms.md` with:

- Title / law blurb / PDF identity / offset  
- Legend for stamps  
- Empty section headers Wave A–D  
- Link to book clipboard + map §1 + five-stakes  

### T2 — Wave A cards (blocking)

Fill M-A1…M-A9 to schema. Prefer worked miniature on M-A5 (one R-move) and M-A6 (one crossing expand).

### T3 — Wave B–D

As many cards as sighting allows in one execute sitting; remainder → `Deferred` with seeds.

### T4 — Cross-walk table

One summary table: `M-ID → Lace stamp → K# → clipboard PAGE/FM`.

### T5 — Book clipboard receipt only

Add `## Pass 4 receipt` pointing at mechanisms file. Do not rewrite A–X morals.

### T6 — Check / commit / release

```
./docs/coord/coord.sh check clipboards "reference-Mapper"
# commit: mechanisms file + clipboard receipt + this plan EXECUTED
./docs/coord/coord.sh release clipboards "reference-Mapper"
```

Ask before push.

---

## Acceptance tests (execute must pass)

1. Every Wave A ID has all schema fields non-empty (or explicit `[OPEN]` with cause).  
2. Every algorithm has numbered steps + halt.  
3. No card stamps KEEP-as-Core-write for Reidemeister/slide/virtual/Jones/bracket/Gauss/DNA.  
4. No card claims to close Φ.  
5. PDF never staged.  
6. `kauffman-4ed-mechanisms.md` links to PDF pins that were actually sighted this pass or cited from passes 1–3 with “cite prior”.  
7. Steward test: if you cannot run the steps on paper from the card alone, the card fails.

---

## Relation to cloud/code agents

Pass 4 produce **docs algorithms**, not repo code. If a later human asks for Rust `no_std` toys that *simulate a FORBID diagram rewrite for study*, that is a **separate** task under Implementation Law and must not be smuggled into this pass.

---

## Execution (when you say go pass 4)

1. Refresh claim.  
2. T1–T5 with Wave A complete.  
3. Mark this plan EXECUTED; list deferred IDs.  
4. Check · commit · release.  
5. Stop.

---

## Steward test

Shoe in hands, or no.  
Book procedure on paper ≠ Lace append.  
If Kauffman gives a recursion without a unique next crossing, that nondeterminism is `[OPEN]`, not a hidden Lace scheduler.  
Φ stays `[GAP]`.


---

## Execution receipt

| Field | Value |
|---|---|
| When | 2026-09-18 (PT) |
| Agent | reference-Mapper |
| Artifact | `docs/clipboards/kauffman-4ed-mechanisms.md` |
| Wave A | M-A1…M-A9 filled to schema |
| Wave B–D | Deferred table in mechanisms file |
| Clipboard | Pass 4 receipt only |
| PDF staged | No |
| Push | Ask first |
