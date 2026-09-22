# Reference audit — pass 1 plan: Graphic D ASCII companion

**Status:** PLAN · not executed.  
**Station:** graphics (execution). This plan file is maps-owned.  
**Board:** [reference-audit-iteration-plan.md](reference-audit-iteration-plan.md) · findings RA-G05, RA-G08.  
**Pinned:** `21652f463b3178075cc9d4568847502766c0304a`.  
**Editor (declared):** whoever holds `graphics`; the board's author may execute under a fresh claim.  
**Emission:** RM-A `[GAP]` · G1 `[GAP]` · slot order `[GAP]` · no `src/`. D is where these questions are decided and this companion decides none of them.

## Question (one act)

Can `docs/graphics/data-structure-1d-array.png` be carried as text at panel grain — header, D1–D6, the nine *Key properties*, the footer rule — with every line traceable to a printed sentence or a D1 row, and not one line D does not print?

## Measured before proposing

- **No D companion exists.** `pointer-emission.md`: *"Graphic D has no ASCII file, and D is where every one of these questions is decided."* `ascii-iterations.md` iteration 3 pass 1: *"Graphic D ASCII spine (if named) — not written."* Three companions exist for A, B, C (four, four and four passes).
- **What is already carried.** D1's eleven rows: `graphics-close-reading.md` (transcribed exactly) and `plans/fixtures/d1-golden-v0.1.0.json` (re-sighted this session, 11/11). D2 schemas, D4/D6 sentences and the key properties: quoted piecemeal in `systems-manifest.md` Pieces 4–6, 12–13 and SM-C13.
- **Printed on D, sighted at reduced resolution this session** (execution re-sights at 1536×1024):
  - Title: *Lace Data Structure: One 1D Array, Everything is Lace.* Subtitle: *Words, pointers, and their relationships all live in the same append-only sequence.* Tagline (top right): *No separate graph. No separate database. No N-dimensional storage. Just one growing line. Pointers reference earlier positions in the same line. Complex structure emerges from how later entries participate in earlier entries.*
  - `1.` *The 1D Lace (append-only array)* — *Each entry is a section of the same continuous strand.* Table columns Index · Type · Content / References · Explanation; rows 0000–0010; footer *The array only grows. Nothing is deleted. Nothing is rewritten.*
  - `2.` *What each entry looks like* — *Minimal structure. No extra machinery.* WORD entry `{index: 0000, type: WORD, value: PIE}` — *A word is just its variable. The variable is the word.* POINTER entry `{index: 0002, type: POINTER, ref_A: 0000, ref_B: 0001}` — *A pointer references earlier entries in the same array. A pointer is also a section of Lace. It can be referenced by later entries.*
  - `3.` *How pointers build structure* — *Later entries can reference words or other pointers.* Column of the eleven rows with three annotated arrows: *Second PIE relates to first PIE* (0004→0000), *Relationship relates to relationship* (0007→0004), *Later relationship relates to an earlier relationship* (0010→0002).
  - `4.` *The same data in 3D (visualization)* — *This is a projection, not storage.* Labels PIE (star), DESSERT (star), WHOLE (star), CUSTOMER (star). *Repeated passages through the same variable form a star. Pointers create structure by routing through earlier entries. The 3D view is generated from the 1D array and its references. Nothing in the 3D view is stored in the main data structure.*
  - `5.` *Building a star (repeated occurrences)* — *Every occurrence of the same word adds another passage through the same star.* 1st PIE (0000) → 2nd PIE (0003) → 3rd PIE (later) → More PIE (more history). *Each new occurrence routes through the existing formation. The star becomes more complex as more history participates. The star is not a point. It is an accumulated 3D formation.*
  - `6.` *Higher-dimensional participation (emerges naturally)* — *Pointers can reference pointers, creating relationship-to-relationship chains.* WORD 0000 PIE → POINTER 0002 (0000→0001) → POINTER 0007 (0006→0004) → POINTER 0010 (0009→0002), bracketed *Word to word relationship · Relationship to relationship · Relationship to an earlier relationship.* *Each level can participate in later levels. This creates N-dimensional structure without changing the storage model. It is still one 1D array.*
  - *Key properties* (nine): one continuous append-only array · words and pointers are both entries · pointers reference earlier positions · pointers can reference other pointers · repeated words form stars · relationships participate in later relationships · N-dimensional structure emerges from participation · no separate graph, no separate database · 3D (and higher) views are projections, not storage.
  - Footer: *Same simple rule: Input arrives. Append a new section to the Lace. Use pointers to participate in what already exists. One line. Infinite structure.*
- **The D6 hazard (RA-G08).** The D6 arrows run 0000 → 0002 → 0007 → 0010. Row 0007 references 0006 and 0004; it does not reference 0002. The arrows are level illustration (word→relationship→relationship-of-relationship→earlier-relationship), not `ref_A/ref_B`. The tree has 0 claims that misread this today; the companion writes the distinction down so it stays 0.
- **Lab consumers.** `plans/tools/lace-candidate-run.py` and `lace-retention-harness.py` key on the D1 fixture; candidate admission envelopes cite D2/D6 and the key properties by panel. A companion gives every printed D sentence a line a reader without image tools can cite.

## Thesis / falsifier

**Thesis.** D can be carried as a spine plus per-panel field tables in the form the A/B/C companions already use, with a *Not on D* fence, and every line stamped `SOURCE` to a panel or `D1 row`.

**Falsifier.** Any line that (a) has no printed source on D, (b) answers *when* a POINTER is appended, arity beyond what D2/D1 show, slot assignment, G1 equality, or RM-A, or (c) copies A/B/C material into D's file. One such line fails the pass; the file is corrected in the open, not defended.

## Steps

1. `git pull --ff-only origin main` · `coord.sh which docs/graphics/graphic-d-ascii.md` → `graphics` · `claim graphics "<Identity>"` with an expected hold.
2. Open the PNG at full resolution. Re-sight every sentence in *Measured* above; correct this plan's readings in the open where they differ. Grounding line on the file: `VISUALLY_OBSERVED`, with the sentences it covers named.
3. Write `docs/graphics/graphic-d-ascii.md`:
   - header block (title, subtitle, tagline) as printed;
   - spine D1 → D6 in the A/B/C companion shape;
   - D1 as the eleven rows, byte-matched to `graphics-close-reading.md` and `d1-golden-v0.1.0.json` (a `diff` of the row text is part of the receipt);
   - D2 as the two entry schemas with their two sentences each;
   - D3 with its three annotated arrows;
   - D4, D5, D6 with their printed sentences; the D6 *level, not reference* note beside the chain, citing rows 0007 and 0010;
   - the nine key properties verbatim; the footer rule verbatim;
   - a *Fields* table (In / Does / Break / Gap) for D1–D6, following the A/B/C pattern;
   - a *Fence* table: on D versus not on D (no schedule, no arity sentence, no slot rule, no tokenizer, no Star table, no document type);
   - a *What D leaves open* list that only points: G2 timing, arity as drawn-but-unstated, slot order, G1, eventual reference, C6 families — each already open in the close reading §6 and the manifest;
   - pass-1 delta table.
4. `docs/graphics/README.md`: one row *Graphic D ASCII companion (reference audit pass 1)*, same sentence shape as A/B/C: *Does not replace the PNG. Does not fill G2.*
5. `ascii-iterations.md`: the iteration-3 pass-1 row moves from *not written* to the file, dated; iteration 3 opens with this pass and pass 2 (the board's pass 2) as its pass 2 — six passes, then stop. If the human rules the companion *not named* (RA-H05), stop at step 2 and record that instead.
6. `coord.sh gate graphics "<Identity>" <files>` · `.claude/hooks/check-docs.sh` (links resolve; door coverage for the graphics shelf reported as a fraction) · commit with an actor trailer · `release`.
7. Findings file `reference-audit-pass-1-findings.md` (maps hands the row into `plans/README.md` in pass 5): sentences re-sighted `n/m`, diff result on D1 rows, falsifier disposition, anything that differed from this plan.

## May write / must not

**May write (graphics):** `docs/graphics/graphic-d-ascii.md` (new) · `docs/graphics/README.md` (one row) · `docs/graphics/ascii-iterations.md` (iteration-3 rows).  
**Must not:** touch any PNG byte · edit `graphics-close-reading.md` in this pass (pass 2) · edit the manifest, the pointer draft, the fixture, or any plans file · write an emission rule, an arity sentence, a slot convention, a tokenizer, a Star table, a document row type · import A/B/C panels · stamp `SPOKEN` or `accepted` anywhere.

## Expected vs actual

| | Expected | Actual |
|---|---|---|
| Sentences carried from D | every printed sentence, ≈ 40 lines of source text | NOT_TESTED |
| D1 row diff against close reading and fixture | 0 differences | NOT_TESTED |
| Lines without a printed source | 0 | NOT_TESTED |
| Emission / arity / slot / G1 answers added | 0 | NOT_TESTED |
| `check-docs` link failures | 0 | NOT_TESTED |
| Physical | NOT_PERFORMED | — |
| Human acceptance | ABSENT | — |

## Stop

Stop when `graphic-d-ascii.md` is on the branch, its D1 rows diff clean, the README row and iteration row are in, the gate passed and the station is released. Do not begin pass 2 under the same claim.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Copying the eleven rows off the picture onto paper is allowed; deciding which row should have been written is not. RM-A remains `[GAP]`.
