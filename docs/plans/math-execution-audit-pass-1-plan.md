# Mathematical execution model audit — pass 1 plan: census and the human-rulings register

**Status:** PLAN · not executed.  
**Station:** maps.  
**Board:** [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md) · findings MA-M01, MA-M13.  
**Pinned:** `5ffe01156047df01e8cd0823a286b53e89082905`.  
**Editor (declared):** whoever holds `maps`.  
**Emission:** RM-A `[GAP]` · G1 `[GAP]` · no `src/`. This pass reads the model and writes two companions; it edits the model not at all.

## Question (one act)

Can every claim in S0–S12 be classified — by authority (GFX / HUMAN / DERIVED / OVERLAY / OPEN, the Pass-4 legend) and by kind (definition / fence / theorem / open) — and every HUMAN-authority claim traced to a ruling row that carries the human's sentence or, where none is quoted anywhere, its best paraphrase locator and a `[PROPOSAL]` stamp?

## Measured before proposing

- **Citations.** The model cites `H1` ×5, `H2` ×1, `H3` ×2, `H4` ×5, `H5` ×6, `H6` ×11, `H7–H12` ×5 — 35 in all — and carries no register.
- **Where the rulings live.** `H7`–`H12`: quoted human sentences in `sampling-density-emergence-pass-1-plan.md` §0 and `…-pass-1-findings.md` §1 (e.g. H8: *"The sampling itself. You don't choose the relationships, you find them over time as lace grows."*). `H1`–`H6`: one-line paraphrases in `math-execution-root-touch-fold-pass-4-findings.md` §2 (Q0–Q5 adjudication) and `manifest-reconciliation-pass-3-traceability.md` §8 (*H1–H12 amendment map*); no quoted sentence found by `grep` in the ROOT/TOUCH/FOLD findings. `H2` is recorded there as *"historical grounding requirement precursor … absorbed by H5/H6"*.
- **Collision.** The HCC clipboard's `H1`–`H11` (Reality … Meaning Engine) share the literal tokens; the namespace register does not yet route them because the model's `H` family is unregistered.
- **Boxes.** 48 boxed statements (S3 5 · S9 7 · S10 6 · S11 15 · S12 15); three `∎`. Named theorems: G, RD-1, OBS-1; named fences/definitions: EP-1, HOST-1, ACCEL-1, ML-1, COPY-1; named in the Pass-4 artifacts only: AUTH-1, PATH-1, STAR-1, VIEW-1.
- **The Pass-4 authority matrix** already classified A1–A13/B1–B12/C1–C12/D1–D6 → S0–S11 and the reverse census; it predates S12 and does not classify by kind.

## Thesis / falsifier

**Thesis.** Two files close the question. (1) `math-execution-audit-pass-1-census.md`: one row per claim-bearing sentence or box in S0–S12 — section · claim · authority stamp · kind · what it cites · what cites it — with counts per section and a list of every claim whose authority stamp is not stated in the model. (2) `math-execution-rulings-register.md`: one row per ruling `H1`–`H12` — the human's sentence verbatim where one is quoted in the tree, else the earliest paraphrase and its file/section; date; what it closes; which model sections and manifest contracts depend on it; stamp `HUMAN` when a sentence is quoted, `HUMAN (paraphrase-located)` when only a paraphrase exists, `[PROPOSAL]` when nothing pointable is found.

**Falsifier.** A ruling the model cites has no locator in the tree at all → the register stamps it `[PROPOSAL]`, the census marks every claim resting on it, and the pass-1 findings say which model claims are then standing on an unlocated sentence. The register does not invent a sentence. A second falsifier: a claim in the model that the census cannot classify → recorded as `UNCLASSIFIED` with the reason, not forced.

## Steps

1. Pull ff-only · `claim maps "<Identity>"` with an expected hold.
2. Census: walk S0–S12 heading by heading; for each boxed statement, table row of S0/S4.5/S7/S8, theorem, definition and "must not" list, write one row. Use the Pass-4 legend for authority and add the kind column. Count per section. Record every sentence that asserts something with no authority stamp anywhere near it.
3. Register: for each `H1`–`H12`, search the tree for a quoted human sentence (`> “`, *Human:*, *the human said*) and for the earliest paraphrase; record file, section, date, stamp. For `H1`–`H6`, also record the ROOT/TOUCH/FOLD pass in whose findings the ruling first appears, and whether that findings file names the human's channel (chat, issue, in-repo).
4. Dependency map: for each ruling, list the model sections (by `S#.#`) and manifest contracts (`SM-C##`) that cite it; the `H` family collision with the HCC clipboard is noted for pass 6's namespace row.
5. Findings: counts (rulings quoted `n/12`, paraphrase-located `n/12`, unlocated `n/12`); claims per authority class; unstamped claims `n/m`; the falsifier disposition.
6. `check-docs` (the two new files must be linked — the pass-1 findings and the plans-README rows in pass 6 do that; until then the findings file links them, and the campaign board is already indexed) · gate · commit · release.

## May write / must not

**May write (maps):** `docs/plans/math-execution-audit-pass-1-census.md` (new) · `docs/plans/math-execution-rulings-register.md` (new) · `docs/plans/math-execution-audit-pass-1-findings.md` (new).  
**Must not:** edit `math-execution-model.md` or any satellite · invent a human sentence · reclassify a Pass-4 authority stamp without citing why · write a retain-when · touch the manifest or pointer draft (MA-H02 decides whether the register is promoted).

## Expected vs actual

| | Expected | Actual |
|---|---|---|
| Rulings with a quoted sentence | 6/12 (H7–H12) | NOT_TESTED |
| Rulings with a paraphrase locator only | 6/12 (H1–H6) | NOT_TESTED |
| Rulings with no locator | 0/12 | NOT_TESTED |
| Census rows | ≈ 48 boxes + ≈ 60 table rows + named lists; exact count is the measurement | NOT_TESTED |
| Claims with no authority stamp | > 0 in S9–S12 prose; count is the finding | NOT_TESTED |
| Model bytes changed | 0 | NOT_TESTED |
| Human acceptance | ABSENT | — |

## Stop

Stop when the census, the register and the findings are committed under one maps claim and released. Pass 2 needs its own claim.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Writing down who said each rule about the lace, and where, before you check the rules, is allowed. RM-A remains `[GAP]`.
