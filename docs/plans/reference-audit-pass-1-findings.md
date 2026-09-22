# Reference audit — pass 1 findings: Graphic D ASCII companion

**Status:** EXECUTED — CLOSED.  
**Plan:** [reference-audit-pass-1-plan.md](reference-audit-pass-1-plan.md) · board [reference-audit-iteration-plan.md](reference-audit-iteration-plan.md).  
**Proceed:** the human, 2026-09-22: *"proceed with pass 1"*. Read as RA-H00 for pass 1 and as RA-H05 answered (the companion is named); recorded here, not inferred elsewhere.  
**Pre-pass baseline:** `dc3a03d2d51b46b7ce8e539a39ef4bf19c67f9a6` (main after PR #21 merged the plans).  
**Graphics claim:** `4e70950` · **companion commit:** `1f70c0a` · **graphics release:** `4558a7c`.  
**No PNG byte changed. No law, manifest, pointer draft, fixture or tool changed. No emission, arity, slot, G1 or RM-A answer written.**

## 1. Verdict

**GRAPHIC D NOW HAS AN ASCII COMPANION: `docs/graphics/graphic-d-ascii.md`.**

**D1 ROWS DIFF CLEAN AGAINST THE CLOSE READING AND THE FIXTURE, 11/11 EACH.**

**PANEL 3 ARCS AND PANEL 6 CHAIN RECORDED AS GLOSS / LEVEL ILLUSTRATION, NOT REFERENCES.**

**ITERATION 3 OF THE GRAPHICS ASCII CAMPAIGN OPENED; NO PASS 7.**

## 2. Re-sight receipt

The PNG (1536×1024) was cropped into nine regions — header, panels 1–6, key properties, footer — each upscaled 2× with Lanczos; panel 3's arrow column was cropped again at 3×. Every sentence carried into the companion was read from those crops. Grounding: `VISUALLY_OBSERVED`; the stamp covers the *Printed on D* header/footer, the D1 table, the D2 schemas and their four sentences, the D3 subtitle and three glosses, the D4/D5/D6 subtitles and body sentences, and the nine key properties. Physical cord: `NOT_PERFORMED`.

| Sentence class | Planned reading matched the full-resolution read |
|---|---|
| Header, subtitle, tagline (3 lines) | 3/3 |
| Panel titles and subtitles (6 + 6) | 12/12 |
| D1 rows (11) and panel footer | 12/12 |
| D2 schemas (2) and sentences (4) | 6/6 |
| D3 glosses (3) | 3/3 — arc **endpoints** corrected in the open, below |
| D4 body (4) · D5 labels (4) and body (3) · D6 body (1) | 12/12 |
| Key properties (9) · footer rule (2 clauses + tagline) | 12/12 |

**Correction made in the open.** The plan's *Measured* section read panel 3's arcs at reduced resolution as *0004→0000*, *0007→0004*, *0010→0002*. At 3× the three arcs are double-headed and drawn between rows **0000 ↔ 0003**, **0004 ↔ 0007** and **0007 ↔ 0010**. The glosses were read correctly; the endpoints were not. The companion records the endpoints as drawn and marks the reading of them as `[INFERENCE]` with premises (blue arc joins the two operands of row 0004; green joins 0007 to its `ref_B`; pink spans a pair no single row references). The plan file is not rewritten; this receipt dates its reading.

## 3. D1 diff

Mechanical row comparison (index, type, content/refs, explanation) of the companion's table against `docs/graphics-close-reading.md` (*Panel D1, transcribed exactly*) and against `docs/plans/fixtures/d1-golden-v0.1.0.json` (rows rendered as `0000`, `ref_A → ref_B`):

```
companion == close reading : True   (11/11)
companion == fixture       : True   (11/11)
```

Three independent transcriptions of D1 now agree byte for byte on every cell. RA-G07 stands as PASS.

## 4. What the companion carries, and what it refuses

Carried as `SOURCE`: header (3 lines), spine, D1 table and footer, D2 two schemas and four sentences, D3 three glosses with arc endpoints, D4 four sentences and four star labels, D5 four labels and three sentences, D6 chain labels and one sentence, nine key properties, footer rule.

Carried as `[INFERENCE]`, premises stated on the line: the D3 arcs are glosses, not `ref_A/ref_B`; the D6 chain is levels, not a reference path (row 0007 names 0006 and 0004, not 0002; row 0010 does name 0002); the row counts (5 WORD, 6 POINTER, 3 pointer-to-pointer).

Refused (Fence table): schedule, fan-out, adjacency rule; *exactly two*; slot rule; equality/tokenization; Star table or row; document/conversation/provenance type; query/delete/transaction interface; stored meaning.

Pointed, not filled (*What D leaves open*): G2 timing / RM-A, arity as drawn, slot assignment, G1, eventual reference, route families — each already open in the close reading §6 or the manifest.

## 5. Files changed

| File | Station | Change |
|---|---|---|
| `docs/graphics/graphic-d-ascii.md` | graphics | new |
| `docs/graphics/README.md` | graphics | one companion row |
| `docs/graphics/ascii-iterations.md` | graphics | iteration 3 opened; rows 1–3 updated; 4–6 unchanged |
| `docs/coord/stations/graphics.station` | coord protocol | claim / release |
| `docs/plans/reference-audit-pass-1-findings.md` · `docs/plans/README.md` · `reference-audit-pass-1-plan.md` status line | maps | this receipt, its index row, plan status → EXECUTED |

Deviation from the plan, in the open: the plan said maps hands the findings row into `plans/README.md` in pass 5. The row is added now so the receipt is not an orphan at any commit; pass 5 still owns the three pre-existing unlinked files.

Verified unchanged: all four PNGs (git shows no change), `docs/graphics-close-reading.md`, `docs/systems-manifest.md`, `docs/pointer-emission.md`, `docs/plans/fixtures/d1-golden-v0.1.0.json`, every tool under `docs/plans/tools/`.

## 6. Checks

- `.claude/hooks/check-docs.sh`: four hard checks pass; links resolve. Advisory: orphans 2 (the same two files, pass 5's), graphics door 18/37 (companion added; the 19 pass plans remain pass 2's item RA-G10).
- `coord.sh gate graphics` on the three graphics files: OK at base `dc3a03d` (== origin/main).

## 7. Falsifier disposition

| F | Result |
|---|---|
| A companion line without a printed source | HELD — every non-printed line is marked `[INFERENCE]` with premises or sits in Fields/Fence/opens as a pointer |
| Answers *when* / arity beyond D2·D1 / slot / G1 / RM-A | HELD — none written |
| A/B/C material copied into D's file | HELD — A13/B12/C12 are named once as the mechanism voice of the footer rule; nothing else imported |
| PNG bytes changed | HELD |
| Plan reading contradicted by the full-resolution read | **FIRED once** — D3 arc endpoints; corrected in the open (§2), plan not rewritten |

## 8. Coverage moved

| Surface | Before | After |
|---|---|---|
| Graphics with an ASCII companion | 3/4 | **4/4** |
| Companion panels carrying the printed title | D 0/6 | **D 6/6** (A 13/13 unchanged; B 6/12, C 7/12 wait on pass 2) |
| Independent D1 transcriptions in agreement | 2 | **3** |
| Iteration 3 rows executed | 0/6 | 1/6 executed, 1 folded into it, 1 half-recovered (D), 3 untouched |

## 9. Final receipt

```
GRAPHIC D COMPANION:      PRESENT  (graphic-d-ascii.md)
D1 ROWS:                  11/11 == close reading  ·  11/11 == fixture
PANEL NUMERALS:           PRINTED ON ALL FOUR PNGs (recorded for D here; A/B/C queued to pass 2)
D3 ARCS:                  GLOSS ARCS 0000-0003 / 0004-0007 / 0007-0010, not refs
D6 CHAIN:                 LEVELS, not a reference path
PNG BYTES:                UNCHANGED
G2 / SLOT / G1 / RM-A:    [GAP]  (pointed, not filled)
POINTER ACCEPTANCE:       ABSENT
IMPLEMENTATION:           CLOSED
NEXT:                     pass 2 (graphics) — PLAN; waits on the human's proceed
```

Pass 1 stops here.
