# Reference audit — pass 5 findings: the Lab's obligation ledger and the maps repairs

**Status:** EXECUTED — CLOSED.  
**Plan:** [reference-audit-pass-5-plan.md](reference-audit-pass-5-plan.md) · board [reference-audit-iteration-plan.md](reference-audit-iteration-plan.md).  
**Proceed:** the human, 2026-09-22: *"proceed with pass 5"*.  
**Pre-pass baseline:** `dc3a03d2d51b46b7ce8e539a39ef4bf19c67f9a6` (origin/main); stacked on passes 1–4 on the campaign branch.  
**Maps claim:** `e187d60` · **maps commit:** `6e26b79`.  
**No Pass-2/3/4/5 artifact, blueprint, assay register, tool or fixture JSON edited. No holder, H×C×W schedule, retention rule or scalar objective written. RM-A open; acceptance absent; no `src/`.**

## 1. Verdict

**NAMESPACE MEASURING INSTRUMENT REPRODUCED BEFORE MUTATION, AND THE HEADLINE HELD AFTER IT.**

**ONE DATED LEDGER NOW JOINS EVERY PASS-4 OBLIGATION TO ITS GOAL, PREDICATE, BLUEPRINT SECTION AND OPEN.**

**ORPHANS 0; THE PLANS DOOR IS 1:1; THE D1 ORACLE'S PROVENANCE IS CURRENT.**

## 2. Hard measurement gate

The register's counting rule was implemented from its own text. The first run reproduced the row count (62) but not the tokens — the register writes a range as two backticked endpoints joined by an en-dash (`\`A1\`–\`A13\``), not as one literal, so the first parser saw endpoints only. Corrected; second run:

```
rows 62  distinct 456  colliding 127  memberships 677
distribution: 329×1 · 70×2 · 37×3 · 8×4 · 7×5 · 5×6
```

**Exact reproduction of the 2026-09-22 headline before any edit.** After the Graphic-panel *Defined in* cell was qualified (a non-Range cell), the same run gave the same numbers. The falsifier *headline moves* did not fire. The parser is a session instrument, not a repository tool; no counting script was added, per the register's own rule.

## 3. The ledger

[`source-lab-lace-alignment-obligation-ledger-2026-09-22.md`](source-lab-lace-alignment-obligation-ledger-2026-09-22.md). Rows were generated from the maps' tables by script — ID, source lines, mechanism title, *Pass-3 coverage* cell and *Placement* cell are copied verbatim — then joined to the Pass-3 goal IDs found in each coverage cell, the tool's `CHECKS` predicate names, the blueprint sections this receipt's author routed to (marked `[INFERENCE]` in the column header, since the blueprints do not cite obligation IDs), and the opens each blueprint lists in its own *opens* section (HCC §19, Cup §17, Water §15).

| Measure | Value |
|---|---|
| Obligations carried | **71** = H-BM 21 · C-BM 11 · W-BM 39 (every ID the three maps define) |
| Coverage cells naming a goal | 28/71 (H 6 · C 6 · W 16) |
| Coverage cells saying MISSING | 26 (H 15 · C 4 · W 7) |
| Coverage cells saying THIN | 3 (H 1 · W 2; overlapping with goal cells) |
| Rows whose map table has no Pass-3 column | 15 (Water story, isomorphism, progress and open tables) |
| Goals → predicates → controls | 12/12 → 12/12 → 24 cases; self-test re-run this session: `mismatches=0` |
| Rows routed to a blueprint section | 71/71 by inference |
| Cells without a file citation | 0 |

Water rows carry the current human ruling only in the blueprint column: `W-BM09` (blocking UNK) and `W-BM10` (lexical INVALID) route to the blueprint's §7 / §8 successors with the supersession stated; `W-BM37` / `W-BM38` route to §15 *no longer current OPEN*. Their map cells are copied as written.

The ledger's own fence: no obligation invented, none marked better covered than its map says, no parameter chosen; `SM-X-BEH` governs.

## 4. The three repairs

| File | Change | Result |
|---|---|---|
| `docs/plans/README.md` | rows for the ledger and for the three previously unlinked files (`…pass-5-machine-construction-sit`, `…pass-6-coherence-matrix`, `…pass-6-propagation-docket`), content unchanged | `check-docs`: orphans **0** (from 2); plans door 1:1 |
| `docs/namespace-register.md` | Graphic-panel *Defined in* cell: numerals printed, letters assigned; dated | headline 62/456/127/677 unchanged; the last live surface saying labels are assigned is qualified |
| `docs/plans/fixtures/README.md` | one dated sentence on the D1 row: re-sighted 2026-09-22, 11/11, companion as third agreeing transcription | oracle provenance current |

## 5. Verified sound, no edit (RA-R05, RA-R06)

The clipboards door's pass-status claims match the plan headers (WebGPU / WGSL Pass 6 `HELD · NOT EXECUTED`; WebNN / Wasm Pass 6 `EXECUTED`; shelf 10 recipe rows `NOT_RUN`). The two `—` stake cells on that door are clipboards-station cosmetics; handed off, not edited.

## 6. Checks

- `.claude/hooks/check-docs.sh`: four hard checks pass; links resolve; **orphans 0**; advisory total **7** (from 10).
- `coord.sh gate maps` on the four files: OK at base `dc3a03d`.
- `python3 docs/plans/tools/lace-behavior-assay.py`: `cases=24 goals=12 mismatches=0`.

## 7. Falsifier disposition

| F | Result |
|---|---|
| ledger invents an obligation not in a Pass-4 map | HELD — rows generated from the maps' own ID cells; 71 = 21 + 11 + 39 |
| assigns a goal ID an assay does not test | HELD — goal IDs come only from coverage cells; all 12 exist in `CHECKS` |
| marks anything COVERED that the map marked THIN or MISSING | HELD — coverage cells copied verbatim; no status column of the ledger's own |
| proposes a coupling schedule or RM-A rule | HELD — opens column only names what the blueprints name; H×C×W coupling recorded OPEN |
| a Pass-2/3/4/5 artifact edited instead of cited | HELD — `git diff --stat` of the maps commit: ledger (new), plans README, namespace register, fixtures README only |
| namespace headline moves | HELD — identical before and after |

## 8. Coverage moved

| Surface | Before | After |
|---|---|---|
| Obligation → goal → predicate → blueprint → open, in one file | none | **one dated ledger, 71 rows** |
| `docs/plans/README.md` door | 302/305 | **1:1** |
| `check-docs` orphans | 2 | **0** |
| Live surfaces saying panel labels are assigned, unqualified | 1 | **0** |
| D1 oracle sightings recorded | 1 | **2** |

## 9. Final receipt

```
NAMESPACE GATE:        62 / 456 / 127 / 677 reproduced before; identical after
LEDGER:                71 obligations · 12 goals · 12 predicates · 24 controls · 3 blueprints · opens named
RE-JUDGED:             nothing
ORPHANS:               0
PLANS DOOR:            1:1
D1 ORACLE:             re-sighting dated; 3 agreeing transcriptions
RM-A:                  OPEN / MISSING-A
H×C×W SCHEDULE:        OPEN
POINTER ACCEPTANCE:    ABSENT
IMPLEMENTATION:        CLOSED
NEXT:                  pass 6 (coord, then maps) — PLAN; waits on the human's proceed
```

Pass 5 stops here.
