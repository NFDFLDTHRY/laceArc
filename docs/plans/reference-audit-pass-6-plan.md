# Reference audit — pass 6 plan: closeout — last coord debt, coherence tick, receipt, rulings (coord, then maps)

**Status:** PLAN · not executed.  
**Stations:** coord (one commit) then maps (one commit). This plan file is maps-owned.  
**Board:** [reference-audit-iteration-plan.md](reference-audit-iteration-plan.md) · findings RA-C01, RA-L04 · rulings RA-H01–RA-H05.  
**Pinned:** `21652f463b3178075cc9d4568847502766c0304a`.  
**Editor (declared):** whoever holds `coord`, then whoever holds `maps`. The agent that wrote the board does not take a ruling.  
**Emission:** untouched.

## Question (one act)

Can the campaign close with coverage stated as fractions, the last repo-lag debt paid, exactly one appended coherence tick, and every decision that is the human's left with the human?

## Measured before proposing

- **RA-C01.** `docs/coord/stations/README.md:9`: *"`docs/clipboards/**` — KEEP/FORBID mappings of the five stake texts"*. The shelf's own door: ten campaigns (five stakes + WebAssembly 3.0, WebGPU, WGSL, WebNN, rust-target with the Cargo A4 mapping). Repo-lag Passes 2–5 each handed this row off; Pass 5 verified it still present.
- **RA-L04.** `coherence-audit-log.md` is append-only; its last tick is *2026-09-22 · current-entry coherence · tip 52b82a8a*. The modern standing process is `prompts/coherence-audit-prompt.md`.
- **Receipt shape.** The generator's pass 6 role: *coverage as fractions; what grew; next board*. Repo-lag findings files carry verdict · census · falsifier table · gate table · final receipt block.
- **Rulings prepared on the board:** RA-H01 (law sentence pair), RA-H02 (pointer-draft delimiter), RA-H03 (format-only repairs to dated artifacts), RA-H04 (shelving the manifest-ASCII pass plans), RA-H05 (whether D's companion was named). None is taken by this pass.

## Thesis / falsifier

**Thesis.** One coord edit, one appended tick, one receipt and one rulings section close the campaign; the tree's advisory counts move only where a pass said they would.

**Falsifier.** The tick rewrites or re-dates any earlier tick or the log header; the receipt says *done* where a pass reported `n/m < 1`; the agent takes a ruling; the closeout opens a pass 7 or another campaign.

## Steps

1. **coord.** Pull ff-only · `claim coord "<Identity>"` · reword the clipboards row to name the ten campaigns and the door that lists them · gate · commit · release. One commit; nothing else on the coord shelf.
2. **maps.** Pull ff-only · `claim maps "<Identity>"`.
3. Re-run `.claude/hooks/check-docs.sh`; record every advisory count against the board's coverage table (before / after).
4. Append one tick to `coherence-audit-log.md` in the standing form: finding · class · governing source · evidence scope · fix · station · cites · open gates preserved (RM-A OPEN / MISSING-A; G1; R3; GAP-HOST; H×C×W coupling; TARGET UNDECIDED; acceptance ABSENT; `src/` ABSENT) · next narrow question. Byte-prefix check: the log before the append is an exact prefix of the log after.
5. Write `reference-audit-pass-6-findings.md`: verdict; per-pass `n/m` rows; falsifier and gate tables for the campaign; the rulings section listing RA-H01–H05 with the exact question each asks and *not taken*; what grew (files added, doors closed); *next board* — leftovers, if any, as the next iteration's pass 1, never pass 7.
6. `plans/README.md`: the pass-6 rows.
7. Gate · commit · release. Say *proceed is the human's word* and stop.

## May write / must not

**May write (coord):** `docs/coord/stations/README.md` (one row). **May write (maps):** `docs/coherence-audit-log.md` (append only) · `reference-audit-pass-6-findings.md` · `docs/plans/README.md`.  
**Must not:** touch `coord.sh`, any `.station` file beyond claim/release, tests or hooks · rewrite any earlier tick or the log header · take RA-H01–H05 · claim acceptance, a target, a closed gate · open a pass 7.

## Expected vs actual

| | Expected | Actual |
|---|---|---|
| Repo-lag docket remainder | 0 (from 1) | NOT_TESTED |
| Coherence-log prefix check | exact prefix preserved | NOT_TESTED |
| `check-docs` orphans / thin doors | 0 orphans; thin doors as the passes reported | NOT_TESTED |
| Rulings taken by the agent | 0 of 5 | NOT_TESTED |
| Human acceptance | ABSENT | — |

## Stop

Stop when the coord row, the tick, the receipt and the index rows are committed and both stations are released. The next event is the human's: a ruling, or nothing.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Putting the lace down and writing what you did is the last act, not another pull on the cord. RM-A remains `[GAP]`.
