# Reference audit — pass 5 plan: the Lab's obligation ledger and the maps repairs (maps station)

**Status:** EXECUTED — CLOSED · receipt [reference-audit-pass-5-findings.md](reference-audit-pass-5-findings.md). Ledger file name as executed: `source-lab-lace-alignment-obligation-ledger-2026-09-22.md`.  
**Station:** maps (execution and this file).  
**Board:** [reference-audit-iteration-plan.md](reference-audit-iteration-plan.md) · findings RA-B03, RA-L01, RA-L02, RA-L03, RA-G07, RA-R05, RA-R06.  
**Pinned:** `21652f463b3178075cc9d4568847502766c0304a`.  
**Editor (declared):** whoever holds `maps`.  
**Emission:** untouched. The ledger below records obligations and where each is assayed and realized mathematically; it proposes no holder, no RM-A rule and no schedule.

## Question (one act)

Can the Lab's chain — source obligation → clipboard → Pass-3 assay → Pass-5 mathematical blueprint → open parameter — be written as one dated ledger keyed by obligation ID, so a candidate or a reader can find every edge in one place, alongside the four bounded maps repairs the audit found?

## Measured before proposing

- **RA-B03.** `source-lab-lace-alignment-pass-2-traceability.md` (the source → clipboard → Lab → Lace register) has **0** mentions of *blueprint* or *S12*; it predates Behavioral Read Devices Pass 5. The Pass-4 mechanism maps assign IDs (`H-BM04`, `H-BM07`, …) with line ranges, assay audits and `MISSING` / `THIN` marks; the Pass-3 goal assays assign `H-G1`…`C-G…`/`W-G…` goal IDs; `plans/tools/lace-behavior-assay.py` and `fixtures/behavioral-goals-assay-controls-v0.1.0.json` key on the goal IDs; the Pass-5 blueprints realize obligations mathematically with named opens. No single file joins obligation ID → goal ID → assay check → blueprint section → open.
- **RA-L01.** `docs/plans/README.md` links 293/296: unlinked `math-execution-behavioral-read-devices-pass-5-machine-construction-sit.md`, `…-pass-6-coherence-matrix.md`, `…-pass-6-propagation-docket.md`; `check-docs` reports the last two as orphans.
- **RA-L02.** `namespace-register.md`, Graphic-panel row: *"labels assigned by the manifest and the close reading"*. The numerals are printed (board RA-G01).
- **RA-L03 / RA-G07.** `fixtures/README.md` records D1's sighted verification of 2026-09-20; a second independent sighting (this session, 11/11) exists and is not recorded.
- **RA-R05.** Technical clipboards door verified consistent with plan headers (WebGPU/WGSL Pass 6 `HELD · NOT EXECUTED`; WebNN and Wasm Pass 6 `EXECUTED`; shelf 10 rows `NOT_RUN`). No maps edit; recorded here so the board's *technically references* clause has a receipt.
- **RA-R06.** Two `—` stake cells on the clipboards door: clipboards station; handoff only.
- **Namespace arithmetic.** The current register headline is 62 / 456 / 127 / 677 (Pass 5, 2026-09-22). RA-L02 changes a *Defined in* cell, not a *Range* cell, so under the register's own counting rule the headline must not move. The pass reproduces the headline before and after as its measurement gate, as repo-lag Pass 5 did.

## Thesis / falsifier

**Thesis.** A new dated file `source-lab-lace-alignment-obligation-ledger-2026-09.md` (name fixed at execution to match the campaign's naming) carries one table per source — obligation ID · source lines (as cited by the Pass-4 map) · Pass-3 goal ID(s) · assay predicate name in `lace-behavior-assay.py` · Pass-5 blueprint section · open parameter · status (`COVERED` / `THIN` / `MISSING`, copied from the Pass-4 audit, not re-judged) — and states coverage as fractions. The four maps repairs are one line each.

**Falsifier.** The ledger invents an obligation not in a Pass-4 map; assigns a goal ID an assay does not test; marks anything `COVERED` that the Pass-4 audit marked `THIN` or `MISSING`; proposes a coupling schedule or an RM-A rule; or any Pass-2/3/4/5 artifact is edited instead of cited. The namespace headline moving is a falsifier for RA-L02.

## Steps

1. Pull ff-only · `claim maps "<Identity>"` with an expected hold.
2. Reproduce the namespace headline (62 / 456 / 127 / 677) with the register's stated counting rule before any edit; stop on failure and record the instrument fault.
3. Build the ledger from the three Pass-4 maps (IDs, lines, status), the Pass-3 assay register (goal IDs), the assay tool (predicate names), and the three blueprints (section anchors, opens). Every cell cites its file; nothing is re-derived from the source texts (not available in this session; the Pass-4 maps are the line-cited surface).
4. State coverage: obligations with an assay `n/m`; with a blueprint section `n/m`; with an open parameter `n/m`; `MISSING`/`THIN` counts carried from Pass 4.
5. `plans/README.md`: three rows for the unlinked files; one row for the ledger; rows for the pass-1–4 findings files as they exist; the campaign's own rows.
6. `namespace-register.md`: qualify the Graphic-panel *Defined in* cell — *numerals printed on the PNGs; the A/B/C/D letter assigned by the manifest and the close reading*; re-run the headline; it must read 62 / 456 / 127 / 677.
7. `fixtures/README.md`: one dated line — *re-sighted 2026-09-22 against the PNG, 11/11 rows* — in the D1 fixture row.
8. `check-docs` (expect orphans 0, plans door 296/296 + campaign files) · gate · commit · release · findings file.

## May write / must not

**May write (maps):** the new ledger file · `docs/plans/README.md` · `docs/namespace-register.md` (one cell) · `docs/plans/fixtures/README.md` (one line) · `reference-audit-pass-5-findings.md`.  
**Must not:** edit any executed Pass-2/3/4/5 artifact, blueprint, assay register or tool · change a fixture JSON · touch the assay tool · re-judge a Pass-4 status · write a holder, an H×C×W schedule, a retention rule, a scalar objective · edit clipboards-station files (RA-R06 is a handoff).

## Expected vs actual

| | Expected | Actual |
|---|---|---|
| Namespace headline before and after | 62 / 456 / 127 / 677 both times | NOT_TESTED |
| Obligations in the ledger | every `H-BM*`, `C-BM*`, `W-BM*` row the Pass-4 maps define; count stated | NOT_TESTED |
| Ledger cells without a file citation | 0 | NOT_TESTED |
| `check-docs` orphans | 0 (from 2) | NOT_TESTED |
| Plans door | 1:1 | NOT_TESTED |
| Human acceptance | ABSENT | — |

## Stop

Stop when the ledger, the four repairs and the findings are committed under one maps claim and released. Pass 6 begins with a coord claim.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. An index of which knots the three books ask for, and which test bench can tell if one was tied, is paper beside the lace. RM-A remains `[GAP]`.
