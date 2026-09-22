# Reference audit — pass 2 findings: A / B / C companion fidelity

**Status:** EXECUTED — CLOSED.  
**Plan:** [reference-audit-pass-2-plan.md](reference-audit-pass-2-plan.md) · board [reference-audit-iteration-plan.md](reference-audit-iteration-plan.md).  
**Proceed:** the human, 2026-09-22: *"proceed with pass 2"*.  
**Pre-pass baseline:** `dc3a03d2d51b46b7ce8e539a39ef4bf19c67f9a6` (origin/main; pass 1 not yet merged, so this pass stacks on the pass-1 commits on the campaign branch).  
**Graphics claim:** `6aa9476` · **companion commit:** `5199ba3` · **graphics release:** `62063e0`.  
**No PNG byte changed. No dated section, delta table, receipt or G2 stamp rewritten. No law, manifest, pointer draft, namespace register, fixture or tool changed.**

## 1. Verdict

**THE THREE COMPANIONS NOW CARRY WHAT THE PNGs PRINT: NUMERALS, TITLES, SUBTITLES, LISTS, LABELS.**

**PRINTED TITLES RE-SIGHTED 37/37 AGAINST THE PLAN'S TABLE.**

**`centimetre` → `centimeter` ON THE GRAPHICS SHELF; THE CLOSE READING'S "NOT PRINTED" SENTENCE QUALIFIED IN PLACE.**

**GRAPHICS DOOR 1:1 WITH ITS SHELF.**

## 2. Re-sight receipt

A (1536×1024) cropped into header + 13 panels; B and C (1672×941) into header + 12 panels each; every crop upscaled 2×. Grounding for every sentence carried: `VISUALLY_OBSERVED`; the stamp is placed on each companion's pass-2 section and covers that section. Physical cord: `NOT_PERFORMED`.

| Class | Result |
|---|---|
| Panel numerals printed | A `1.`–`13.` · B `1.`–`12.` · C `1.`–`12.` — 37/37 |
| Printed titles vs the plan's table | 37/37 match (A 13, B 12, C 12) |
| Printed subtitles vs the plan's table | 24/24 for B and C; A's feed lines 12/12 |
| B9 printed labels | 3/3 as planned |
| Wire/star/touch column headers on B | none printed — gap closed negative |
| Header spelling on A | `centimeter` |
| Lists carried (A13 ten · B10 4+1 · B11 5+5 · B12 8 · C8 6 · C11 5+5 · C12 7) | all read and transcribed |
| C10 specimen | *"The customer paid the restaurant for the dessert slice."* — nine occurrence nodes, `the` drawn three times |

**Nothing in the plan's tables was contradicted by the full-resolution read.** Falsifier (a) did not fire.

**Recorded, not copied — artwork glyph defects.** The rendering prints `occurrecos` (A2), `obiect` (A11), `indefinitiely` (B1), `Itt is` (B10), `remaing` (B11), `tways` (C5), and a stray period after A6's closing quote. Each companion lists its own under *Artwork glyph defects*; the readings carry the words, as the A file's Pass-3 rule already required (*PNG wins; garbled OCR not copied*).

## 3. Deviations from the plan, in the open

1. **B9 label table.** The plan said to turn the Iteration-2 B9 table's `—` row into three rows. That table is a dated section; the plan's own falsifier (b) forbids rewriting one. Resolved by leaving the dated table byte-identical and placing the three labels in the new dated pass-2 section with a sentence saying it supersedes the `—` row.
2. **B2 / C3 fields rows.** Likewise left as written (`printed title on PNG [GAP]` in the Pass-2 / Iteration-2 pass-4 fields tables); each companion's pass-2 section states the supersession.
3. **C correctness board.** As planned: one dated `Pass` row added beneath the historical `[GAP]` row; the historical row untouched.
4. **`centimetre` count.** The A file now has 0 transcriptions of `centimetre` and 3 mentions of it in the dated pass-2 section that records the correction. The board's expected *0* is met for transcriptions; the mentions are the receipt.

## 4. Files changed

| File | Station | Change |
|---|---|---|
| `docs/graphics/graphic-a-ascii.md` | graphics | four `centimetre` → `centimeter`; A13 tenth check; dated pass-2 section appended |
| `docs/graphics/graphic-b-ascii.md` | graphics | line-41 sentence replaced (numerals printed); grouping gap closed negative; dated pass-2 section appended |
| `docs/graphics/graphic-c-ascii.md` | graphics | line-42 sentence replaced; one dated correctness-board row; dated pass-2 section appended |
| `docs/graphics-close-reading.md` | graphics | §7: one dated qualifying sentence after *"They are not printed in the graphics."*; §1–§6 untouched |
| `docs/graphics/README.md` | graphics | delimiter row `|---|---|---|`; numerals sentence; *Provenance* table linking the 19 pass plans |
| `docs/graphics/ascii-iterations.md` | graphics | iteration-3 pass-3 row → EXECUTED |
| `docs/coord/stations/graphics.station` | coord protocol | claim / release |
| this receipt · `docs/plans/README.md` · `reference-audit-pass-2-plan.md` status line | maps | receipt, index row, plan status → EXECUTED |

Verified unchanged: all four PNGs; every Pass-N / i2pN section and delta table in the three companions (the diff touches only the replaced sentences, the four spelling repairs, the tenth A13 bullet, the added board row, and appended sections); `docs/systems-manifest.md`; `docs/pointer-emission.md`; `docs/namespace-register.md`; the D1 fixture.

## 5. Checks

- `.claude/hooks/check-docs.sh`: four hard checks pass; links resolve. `docs/graphics/README.md` no longer appears in the thin-door list (was 17/36, then 18/37; now 1:1). Advisory total 10 (from 11). Orphans 2 — pass 5's.
- `coord.sh gate graphics` on the six graphics-owned files: OK at base `dc3a03d`.

## 6. Falsifier disposition

| F | Result |
|---|---|
| (a) full-resolution read contradicts a planned title or list | HELD — 37/37 titles, all lists as planned |
| (b) a dated section rewritten | HELD — see §3 items 1–3 for the two places the plan would have breached it, resolved by appending instead |
| (c) a printed sentence smuggled in as a mechanism | HELD — B12 ⑦ *grows without bound* recorded as a source sentence with R4 explicitly left where it is; ⑧ recorded as the source's own one-store fence |

## 7. Coverage moved

| Surface | Before | After |
|---|---|---|
| Companion panels carrying the printed title | A 13/13 · B 6/12 · C 7/12 · D 6/6 | **A 13/13 · B 12/12 · C 12/12 · D 6/6** |
| Live surfaces claiming numerals are not printed | 5 | **1** (`namespace-register.md` Graphic-panel row — pass 5) |
| `centimetre` transcriptions on the graphics shelf | 4 | **0** |
| Printed lists on the shelf (A13 · B10 · B11 · B12 · C8 · C10 · C11 · C12) | 0/8 | **8/8** |
| B9 labels | 0/3 | **3/3** |
| `docs/graphics/README.md` door | 18/37 | **1:1** |
| Iteration 3 rows executed | 1/6 | **2/6** (rows 1 and 3; row 2 folded into 1; rows 4–6 untouched) |

## 8. Final receipt

```
NUMERALS:              PRINTED ON ALL FOUR PNGs — recorded on A, B, C (D at pass 1)
TITLES:                37/37 as printed; 13 B/C working titles differ and are aliased
LISTS / LABELS:        8/8 lists, B9 3/3 labels, panel labels on A9/A11/A12 and B1-B8, C1-C9
CENTIMETER:            as printed; 4 transcriptions repaired
GROUPING GAP (B):      CLOSED NEGATIVE
CLOSE READING §7:      QUALIFIED IN PLACE, DATED
GRAPHICS DOOR:         1:1
DATED SECTIONS:        BYTE-IDENTICAL
PNG BYTES:             UNCHANGED
G2 / SLOT / G1 / C6:   [GAP]  (pointed, not filled)
POINTER ACCEPTANCE:    ABSENT
IMPLEMENTATION:        CLOSED
NEXT:                  pass 3 (law) — PLAN; waits on the human's proceed
```

Pass 2 stops here.
