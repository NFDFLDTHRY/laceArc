# Mathematical execution model audit — pass 6 findings: closeout receipt for the six-pass campaign

**Status:** EXECUTED — CLOSED. **Campaign closed. No pass 7.**  
**Plan:** [math-execution-audit-pass-6-plan.md](math-execution-audit-pass-6-plan.md) · board [math-execution-audit-iteration-plan.md](math-execution-audit-iteration-plan.md).  
**Proceed:** the human, 2026-09-22: *"Proceed with pass 6"*. Read as MA-H00 for pass 6 and nothing else.  
**Base:** `5ffe01156047df01e8cd0823a286b53e89082905` (`origin/main`, the reference-audit closeout). Every campaign commit sits on `claude/repo-reference-audit-sie0s7` above it: board `4b1bf7d`; pass receipts `6d988f9`, `666462e`, `6c6e590`, `6e7ff0e`, `b68a016`; this pass under claim `3b80b6c`.  
**Rulings taken by the agent: 0 of 5.** RM-A open; acceptance absent; no `src/`; no equation changed; no law, graphics, fixture or source-finding blob changed (`git diff --stat` from the pin over those paths: empty).

## 1. Verdict

**SIX PASSES EXECUTED, EACH ON THE HUMAN'S PROCEED, EACH UNDER ONE MAPS CLAIM, EACH WITH A RECEIPT.**

**THE MODEL NOW SAYS, FOR EVERY CLAIM, ON WHOSE AUTHORITY; FOR EVERY RULING, WHERE THE HUMAN'S SENTENCE IS; FOR EVERY PROOF, ITS PREMISES, ITS SCOPE AND ITS REFUTER; FOR THE ONE OPEN, EXACTLY WHICH FIVE QUESTIONS IT IS. IT DECIDES NOTHING IT COULD NOT DECIDE BEFORE.**

**"SOLVE" WAS READ AS (A)–(D) OF THE BOARD AND EXECUTED AS SUCH: WHAT THE MODEL'S PREMISES PERMIT IS PROVED AND STAMPED; WHAT THEY DO NOT IS REDUCED TO ITS MISSING PREMISE; THE LAB'S BOUNDED CLOSURES ARE LEMMAS; RM-A IS THE DOCKET'S FIVE QUESTIONS. WHETHER "SOLVE" MEANS MORE IS MA-H01, YOURS.**

## 2. The six passes, `n/m`

| Pass | Question | Result | Receipt |
|---|---|---|---|
| 1 | every claim classified; every ruling located | **472/472** claims classified (453 by the four kinds, 19 pass-verdict boxes `UNCLASSIFIED` under the second falsifier); rulings **12/12** located — 11 quoted verbatim, H9 paraphrase-located as a clause of H7, **0** `[PROPOSAL]`; 184 claims measured unstamped in place; model bytes changed 0 | [pass 1](math-execution-audit-pass-1-findings.md) |
| 2 | every proof obligation discharged or reduced | **14/14** results in the register: 9 `PROVED_WITHIN_SCOPE`, 4 `DERIVED`, 1 requirement, **0** `UNESTABLISHED`; silent lemmas **5/5** + Lemma WP; 99 lines added / 0 removed; script 0 failures over D1 and 500 random states | [pass 2](math-execution-audit-pass-2-findings.md) |
| 3 | internal coherence without changing an equation | labels **3/3**; collisions qualified **3/3**; stamps retied **10/10** (8 in place or beside, 2 of S8's by reference, by the plan's own rule); undefined identifiers **0** (from 1); current receipt **1**; 55 added / 7 removed, 0 equation tokens; S8 byte-identical; heading set unchanged | [pass 3](math-execution-audit-pass-3-findings.md) |
| 4 | satellites and update witness under current law | headers **5/5**; body lines changed **0**; bodies byte-identical by blob comparison | [pass 4](math-execution-audit-pass-4-findings.md) |
| 5 | bounded closures as lemmas; RM-A reduced | lemmas **3/3**; refused families cited **16/16**; docket questions verbatim **5/5**; sentences deciding retain-when **0**; 78 added / 0 removed | [pass 5](math-execution-audit-pass-5-findings.md) |
| 6 | close: propagation, namespace, tick, receipt, rulings | surfaces checked **11/11**, stale **1** (a pre-existing anchor, leftover); namespace reproduced then recomputed; tick **1**, prefix preserved; rulings taken **0/5** | this file |

## 3. Propagation — what cites the model, and whether passes 1–5 changed what it relies on

| # | Surface | What it says of the model | Still true? | Owner · handoff |
|---|---|---|---|---|
| 1 | `AGENTS.md`, *Current behavioral-machine court* | S9–S12 carry the current non-Core machine mathematics; S9 is (Q,G,Ω,Δ,ω); device-only work has no Lace write | yes; RD-1 now carries premises and `PROVED_WITHIN_SCOPE` | law · none |
| 2 | `README.md` rows *Core mathematical substrate* (S0–S8), *Device-local machine operators* (S12), *Current integration baseline* (Pass 39; RM-A OPEN) | S0–S8 substrate plus L-M01…L-M21 / L-GAP-RM; S12 optional; RM-A open | yes; S4.7 sits inside S4; RM-A open before and after | law · none |
| 3 | `docs/README.md` row 44 (court) and rows 45–48 (satellites) | *Current mathematical court S0–S12 … RM-A and G1 remain open; no implementation follows*; the satellites described neutrally | yes | law by the board's sequence · **handoff:** a row for the theorem register and one for the rulings register (MA-H03, MA-H04); the docs-root door is 24/44 |
| 4 | `docs/prompts/context-pass.md` §Current machine court, §3 table, §9, the diagram | S9 algebra + RD-1; S10 SEE-*, OBS-1, EP-1; S12 operators; blueprints | yes | prompts · none |
| 5 | `docs/namespace-register.md` | families `S0`–`S12`, `RD-1 OBS-1 EP-1`, `HOST-1 …`, `AUTH-1 PATH-1` | was incomplete (MA-X07) | maps · **updated this pass (§4)** |
| 6 | `docs/systems-manifest-ascii.md` Pass 39 | S9 read device, RD-1 identity on authoritative Lace, S10 court, S12 operators over the unchanged substrate | yes | maps (docs-root companion) · none |
| 7 | `docs/systems-manifest.md` SM-X rows *Current mathematical status* | S9 algebra, S10 court, S11 planes and T0–T6, GAP-HOST, S12 library, blueprints | yes | law · optional: `SM-GAP-RM` may cite S4.7's two lemmas (MA-H02/H03) |
| 8 | `docs/pointer-emission.md` *Authority* (current construction: the model) and the *What has already been written* table (the satellites as *witness under the partial algebra*, *non-examples*, *projection readings*) | dated descriptions of the satellites | yes as dated history; the satellites now carry their own current-law headers | law · none |
| 9 | `docs/atomic-primitives-map.md` Pass-4 fidelity qualification | root/occurrence are partial reads; Reach is membership not multiplicity; *D1 contains two distinct reference paths from 0010 to 0000* | yes; Lemma L4 makes it *exactly two* | maps · none |
| 10 | the three clock clipboards' *Current mathematical realization / target semantics — Behavioral Read Devices Pass 5/6* headers (HCC-A, Coffee Cup, Water) | blueprints under S9–S12; the Water UNK/INVALID ruling | yes; the census stamps the Water ruling `HUMAN` at S12.13 | hologram · none |
| 11 | `docs/graphics-close-reading.md` line 138 | links `math-execution-model.md#s43-partial-step-schema-honest` | **stale** — S4.3 has been *Whole-prefix covering point* since the ROOT / TOUCH / FOLD campaign; found by pass 1, predates this audit | maps root file, outside this pass's *May write* · **leftover** (§9) |

No law-, kit-, hologram-, graphics- or coord-owned surface was edited. The first falsifier did not fire.

## 4. Namespace register, under the reproduction gate

| Step | Result |
|---|---|
| Reproduce the current headline before mutation | **62 / 456 / 127 / 677**, 70×2 / 37×3 / 8×4 / 7×5 / 5×6 — exact, with the reference-audit's counting script |
| Add | family *Model human ruling* `H1`–`H12` (defined in the pass-1 register); family *Audit lemma* `L1`–`L5` `WP` (the pass-2 blocks and the theorem register); literals `STAR-1` `VIEW-1` into the *Graphics-fidelity theorem* row; notes on the `RM-A RM-B RM-C` row (the S4.7 lemma names are readings, not tokens) and the `S0`–`S12` row (`S4.7` dated subsection; the unnumbered receipt is not an S-token) |
| Collisions | new row `H1`–`H11`: HCC station · model human ruling (`H12` ruling only; `H10b` HCC only). `L1`–`L5`, `WP`, `STAR-1`, `VIEW-1` collide with nothing registered |
| Recompute | **64 / 465 / 138 / 697**, 81×2 / 37×3 / 8×4 / 7×5 / 5×6 — computed twice (in the editing script and by the standalone counter on the written file), not guessed |
| History | the previous headline preserved in the *Historical statistics* paragraph with its commit and the reproduction statement |
| Not registered | *Theorem G* (a name), the parenthesized RM lemma names (readings of registered literals), `S4.7` (a decimal label, per the row's own rule) |

The second falsifier (a guessed headline) did not fire.

## 5. Coherence tick

One tick appended in the standing form; the file's previous 255 lines are byte-identical (SHA-256 prefix `1e368929bd83cd61` before and after). No earlier tick or header byte rewritten. The third falsifier did not fire.

## 6. The findings register, dispositioned

| ID | Disposition | Where |
|---|---|---|
| MA-M01 | closed — the rulings register exists; the board's count corrected to 36 sites and H1–H6 to *quoted* | pass 1 |
| MA-M02 | closed — nine `PROVED_WITHIN_SCOPE`, four `DERIVED`; ten stamps retied, two of S8's by reference | passes 2, 3 |
| MA-M03 | closed — Theorem G restated with its n = 1 base case | pass 2 |
| MA-M04 | closed — Lemma WP with the index arithmetic | pass 2 |
| MA-M05 | closed — Lemmas L1–L5 written | pass 2 |
| MA-M06 | closed — STAR-1 / PATH-1 / VIEW-1 labeled and pointed; registered | passes 3, 6 |
| MA-M07 | closed — three collisions qualified in place plus one note | pass 3 |
| MA-M08 | closed — unnumbered current receipt after S12; S8 untouched | pass 3 |
| MA-M09 | closed — Φ dated in S3.2 | pass 3 |
| MA-M10 | closed — refusal pointed from S2 and S5 | pass 3 |
| MA-M11 | closed — Lemmas RM-B(contig), RM-C(RootTouch), RM-C(contig) | pass 5 |
| MA-M12 | closed — sixteen families cited | pass 5 |
| MA-M13 | closed — 48 boxes classified in the census; 19 verdict boxes named as verdicts beside S9.12, S10.14, S11.14 | passes 1, 2, 3 |
| MA-M14 | no finding | — |
| MA-X01 | closed — four dated headers | pass 4 |
| MA-X02 | closed — one dated header | pass 4 |
| MA-X03 | no finding | — |
| MA-X04 | closed — S4.7 links and quotes the docket | pass 5 |
| MA-X05 | closed — Σ model pointed from S5 | pass 3 |
| MA-X06 | no finding | — |
| MA-X07 | closed — registered under the gate | pass 6 |

Eighteen findings closed; three were no-finding rows on the board. None reopened.

## 7. Coverage, board → closeout

| Surface | Board | Closeout |
|---|---|---|
| Human rulings with a register row and locator | 0/12 | **12/12** (11 quoted, H9 paraphrase-located) |
| Theorems stamped in C10 vocabulary with premises | 0/10 | **10/10** (G, WP, RD-1, OBS-1, PATH-1 proved; EP-1 requirement; HOST-1, ACCEL-1, ML-1, COPY-1 derived) |
| Silent lemmas written | 0/5 | **5/5** |
| Undefined identifiers in the model | 1 | **0** |
| Unlabeled boxed theorems the Pass-4 names refer to | 3 | **0** |
| Section-number collisions unqualified | 3 lines | **0** |
| Off-vocabulary proof stamps | 10 | **0 unretied**; 2 remain in S8's bytes by rule, retied by reference |
| Satellites and update witness with a current-law header | 1/5 partial | **5/5** |
| Bounded RM-B / RM-C closures stated as lemmas | 0/3 | **3/3** |
| Refused Retain/Materialize families with cited refutation | 0/6 (docket 16) | **16/16** |
| Receipts covering S0–S12 | 0 | **1** |

## 8. What did not move, by design

- **No equation.** 232 lines added to the model across passes 2, 3 and 5; the 7 removed lines are stamps, labels, qualifiers and pointers, none carrying `\[`, `\]`, `\boxed`, `\mathsf` or `=`. Every boxed statement's content is as it was.
- **No verdict.** The nineteen pass-verdict boxes stand; they are now named as verdicts beside them.
- **No section number** among `S0`–`S12`; one dated subsection, `S4.7`, named by the board's pass-5 plan.
- **S8's bytes.** Identical.
- **The law.** `AGENTS.md`, `CLAUDE.md`, `CONTRIBUTING.md`, the live law, the frozen stake, the manifest, the pointer draft, `docs/README.md`, `README.md`: unchanged since the pin.
- **The sources.** The four PNGs, the D1 fixture, the lab-source Pass-6 findings and docket, the sampling findings: unchanged since the pin.
- **The gates.** RM-A OPEN / MISSING-A · G1 OPEN · R3 OPEN · GAP-HOST OPEN · TARGET UNDECIDED · pointer acceptance ABSENT · `src/` ABSENT.

## 9. Rulings — prepared on the board, none taken

| ID | Ruling | State |
|---|---|---|
| MA-H00 | *proceed* per pass | given six times |
| MA-H01 | whether "solve" means an RM-A design/ruling pass beyond (a)–(d) | **not taken** — S4.7.4 states the five questions and supplies no answer |
| MA-H02 | promote the rulings register into the manifest or pointer draft | **not taken** — it is a maps companion, DERIVED, and says so |
| MA-H03 | may the manifest cite the theorem register for Pieces 5 and 11 | **not taken** — the register is indexed from the plans shelf and the model only |
| MA-H04 | shelve the four satellites | **not taken** — they sit where they sat, with headers |
| MA-H05 | section numbering | **assumed no**; one dated subsection added by the board's own plan; recorded, not ruled |

## 10. What grew

23 files touched since the pin: the model (+239 net), the theorem register (new, 79), the pass-1 census (864), the rulings register (63), the board and six plans (538), six receipts (656), five satellite/witness headers (25), the plans index (14), the maps station file. `git diff --stat 5ffe011..HEAD`: 2361 insertions, 12 deletions.

## 11. Next board — leftovers become the next iteration's pass 1, never pass 7

- The stale anchor at `docs/graphics-close-reading.md` line 138 (one word; maps root file).
- Three theorem-register rows for Lemma RM-B(contig), Lemma RM-C(RootTouch), Lemma RM-C(contig) (the pass-5 plan's *May write* did not include the register).
- The court-table rows for the theorem register and the rulings register (MA-H03/H04; the docs-root door is 24/44).
- The human-facing RM-A design/ruling pass the lab-source Pass-6 docket prepared, if the human convenes it (MA-H01). Not an agent's to open.

*Proceed is the human's word.* This campaign has no pass 7.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. The lace is down. What was checked, what was tied, and what is left for the owner to decide are written. RM-A remains `[GAP]`.
