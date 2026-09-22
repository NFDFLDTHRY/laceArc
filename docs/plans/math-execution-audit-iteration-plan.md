# Mathematical execution model audit — iteration board (six passes)

**Status:** PLAN · nothing executed · each pass below stays `PLAN` until the human says proceed.  
**Station:** maps holds this board, the six pass plans, and every file the passes name (the model and its satellites sit at the `docs/` root under the maps catch-all; the theorem companion, receipts and register go under `docs/plans/`). No law, graphics, hologram or coord file is written by this campaign; anything owed there is a handoff.  
**Pinned:** `5ffe01156047df01e8cd0823a286b53e89082905` (`origin/main` at the maps claim, 2026-09-22 — the reference-audit closeout). Branch `claude/repo-reference-audit-sie0s7`.  
**Editor (declared):** Claude Fable 5.1, cloud session, identity `Claude-Fable-math-audit`. One agent wrote propose / attack / resolve for every finding below; not independent review.  
**Gate:** pointer draft reconciled but unaccepted · **RM-A retain-when OPEN / MISSING-A** · G1 OPEN · R3 OPEN · GAP-HOST OPEN · TARGET UNDECIDED · no `src/`. This campaign moves none of that.  
**No new theory. No Core row. No retention rule. No target. No acceptance. No implementation. No equation of S1–S12 changed; only labels, premises, proofs, qualifiers, pointers and dated additions.**

## The convening sentence — verbatim, 2026-09-22

> "I think next we had better examine, update and solve the mathematical execution model. Prepare a 6 pass mapping and analysis session working the mathematical execution model."

The sentence convenes an audit of [`docs/math-execution-model.md`](../math-execution-model.md) (S0–S12) and its satellites. It accepts nothing, rules nothing, opens no gate.

| Clause | Carried to |
|---|---|
| "examine" | Pass 1 — census of every claim, theorem, definition, fence and open in S0–S12; the human-rulings register |
| "update" | Pass 3 — internal coherence repair (labels, collisions, stamp vocabulary, current receipt) · Pass 4 — the four satellites and the update witness brought to current law by dated headers |
| "solve" | Pass 2 — every proof obligation the model's own premises permit is discharged and stamped `PROVED_WITHIN_SCOPE` with its premises named; every other obligation reduced to its exact remaining premise · Pass 5 — the bounded RM-B / RM-C closures written into the model as lemmas and the RM-A socket reduced to the docket's five questions |
| "6 pass mapping and analysis session" | Pass 6 — propagation, namespace gate, coherence tick, receipt, rulings prepared |

**What "solve" is read to mean, stated so the human can correct it (MA-H01).** Under the live law and `AGENTS.md`, RM-A retain-when may not be filled by an agent, and no `src/` may appear. So "solve" here means: (a) prove what is provable from the model's stated premises and say so in the C10 vocabulary; (b) state exactly which premise each remaining open waits on; (c) bring every bounded Lab closure the model only mentions in prose into the model as a lemma with its premises; (d) reduce the one general open, RM-A, to the smallest question set already prepared for the human. If "solve" was meant to reach further than (a)–(d), that is the human's ruling to give, and the board says so rather than guessing.

## Grounding receipt

```text
TASK:                       examine / update / solve the mathematical execution model → six-pass plan
REPOSITORY / COMMIT:        NFDFLDTHRY/laceArc @ 5ffe011 (origin/main == campaign branch tip)
WORKING-TREE CHANGES:       none before the maps claim
LAW SOURCE / REVISION:      docs/law-why-these-documents.md @ acc81990 (unchanged by this campaign)
FILES READ IN FULL:         docs/math-execution-model.md (2,140 lines, S0–S12); the four satellites
                            (pass-3 witness, pass-4 adversarial, pass-5 projections, pass-6 arrival);
                            plans/math-execution-problem-map-pass-1.md; plans/reduction-pass-2-execution-model.md;
                            plans/math-execution-update-pass-{1-drift,4-align,5-witness,6-readiness}.md
FILES READ IN PART:         sampling-density-emergence pass-1 findings/plan (H7–H12) and pass-5 findings (§0, §12);
                            lab-source-architecture pass-6 findings (§0, §3, §5, §9, §10, §13) and design docket (§2–§8);
                            behavioral-read-devices pass-4 findings (§3, §23) and authority matrix (headings);
                            root-touch-fold pass-4 findings (§0–§2); manifest-reconciliation pass-3 §8; atomic-primitives-map §1–§2
NOT READ:                   root-touch-fold pass 1–3/5–6 bodies; behavioral-read-devices pass 1–3/5 bodies; sampling pass 2–4 bodies
GRAPHICS:                   D re-sighted this session at 2× (reference audit pass 1) — VISUALLY_OBSERVED; A–C at pass 2
MECHANICAL CHECKS RUN:      from the D1 fixture (three agreeing transcriptions): Reach(0010) = all eleven rows;
                            exactly two reference paths 0010→0000 ([10,9,7,4,0] and [10,2,0]); every POINTER ref
                            backward; whole-prefix ladder over m=11 rows lands its final point at index 20 = 2m−2 and
                            reaches every row; Root(PIE) = 0 with occurrences {0, 3}
PHYSICAL EVIDENCE:          NOT_PERFORMED
EVIDENCE STATE:             OBSERVED for every file/grep/script citation; NOT_TESTED for every proposed edit
CURRENT POINTER-EMISSION GAP: RM-A retain-when; untouched
HUMAN ACCEPTANCE:           ABSENT for every proposed change
PERMITTED NEXT ACTION:      the human reads this board and says proceed for pass 1, or not
FORBIDDEN NEXT ACTION:      executing any pass; writing a retain-when; adding S13 or a row kind; editing law-owned files
```

## Measured before proposing — the findings register

Stamps sit on the row. Nothing here is repaired by this board.

### Model-internal — `MA-M`

| ID | Tree says | What the file shows | Stamp | Pass |
|---|---|---|---|---|
| **MA-M01** | The model rests HUMAN-authority claims on rulings `H1`–`H12` — **35 citations** (H1 ×5, H2 ×1, H3 ×2, H4 ×5, H5 ×6, H6 ×11, H7–H12 ×5) — but carries **no register** of them | No table in the model, the manifest or the pointer draft states each ruling's sentence and locator. `H7`–`H12` are quoted (the human's chat sentences) in `sampling-density-emergence-pass-1-{plan,findings}.md`. `H1`–`H6` are **paraphrased only** — `root-touch-fold-pass-4-findings.md` §2 and `manifest-reconciliation-pass-3-traceability.md` §8 — with **no quoted human sentence found** (`grep` for `> “` in the ROOT/TOUCH/FOLD findings: 0; headings `H1`–`H6`: 0 outside the HCC clipboard, whose `H1`–`H11` are a colliding family) | OBSERVED | 1 |
| **MA-M02** | The model stamps `PROVED` ×7, `proved` ×2, `constructively proved` ×1 | `agent-control.md` C10's vocabulary is `PROVED_WITHIN_SCOPE` with premises named; C08 requires the theorem and its premises before "proved". The model never writes the scope token | OBSERVED | 2, 3 |
| **MA-M03** | Theorem G (S4.2): *"Every finite nonempty sample … can be represented by one **later** Lace point"* | For n = 1 the proof's base case is *"the selected row is already one addressable point"* — not later. Statement and proof disagree on the base case | OBSERVED | 2 |
| **MA-M04** | S4.3 whole-prefix covering point: one paragraph, no index arithmetic | True: grounding rows 0…m−1 in order appends m−1 joins; the final point sits at index 2m−2 and reaches indices 0…2m−2 (mechanically re-verified on D1: index 20, all rows). The model states the conclusion without the arithmetic or the lemma that each intermediate join is reached | OBSERVED (script) | 2 |
| **MA-M05** | S2–S4 rely silently on unstated lemmas | Not written anywhere in the model: (a) `Reach` is well-defined because refs strictly descend (well-founded recursion); (b) `Arrive` and `Join` preserve the backward-reference validity invariant and prefix-freeze; (c) root stability under **any** append — `Root_{L⌢e}(v) = Root_L(v)` when seen, since min over a set extended only by larger indices is unchanged (S2 asserts it as H1's consequence without the one-line proof); (d) `PATH-1` as a proposition with its witness (S3.4 boxes `ReachMembership ≠ PathMultiplicity` and gives the two paths, but never names PATH-1 there); (e) the six D1 Join readings as a checked replay (S4.1 table, no check recorded) | OBSERVED | 2 |
| **MA-M06** | S12.8: *"Pass-4 PATH-1 and **VIEW-1** remain binding"*; header cites AUTH-1 | `VIEW-1` is defined only in `behavioral-read-devices-pass-4-findings.md` §9 (*"This is VIEW-1"*); `STAR-1` likewise in §6 and the star-projection artifact. Neither is defined or pointed at in the model. The boxed statements they name (S3.1 Root ≠ FullStar; S3.7 FlatGraphView ≠ FullLaceStructure) carry no label. The namespace register registers `AUTH-1` and `PATH-1` only | OBSERVED | 3, 6 |
| **MA-M07** | Inside the model: S9.10 *"HCC parallel RIC/PFC and **S0–S7** source mechanisms"*, *"Water **S0–S4** and F1–F5"*; S10.10 *"Six-Act diagnostic ≠ **S0–S7** runtime flow"* | In this file `S0`–`S12` are section numbers; the three phrases mean HCC phases and Water states. The namespace register already records the `S0`–`S7` collision (HCC phase · model section); the model's own text does not qualify it | OBSERVED (3 lines) | 3 |
| **MA-M08** | S8 *Steward receipt* says *"Current campaign: SAMPLING / DENSITY / EMERGENCE Passes 1–5 EXECUTED + Pass 6 reconciliation current"* | S9–S12 and Global ASCII Pass 39 postdate it; no receipt in the file covers S0–S12. S8 is the S0–S8 receipt and is not rewritten; the file needs a dated current receipt | OBSERVED | 3 |
| **MA-M09** | S3.2: *"Adjacency does not fire Φ (emission Q3 CLOSED). Leftover adjacency is emission Q3 SPOKEN …"* | `Φ` is registered as historical emission notation; the current constructor is `Join`. Correct as dated history; unqualified in a current section | OBSERVED | 3 |
| **MA-M10** | S2, S5: *"every **successful** word arrival lands"* | *Successful* presupposes a refusal path. That path is defined in `reduction-pass-2-execution-model.md` (REFUSE, R4) and the Pass-6 envelope (finite refusal boundary), which the model never cross-references | OBSERVED | 3 |
| **MA-M11** | Header and S0 say RM-B is *"partially closed for selected finite contiguous samples"* and RM-C *"closed for RootTouch and contiguous grounding"* | S4 states neither as a lemma. The closures live in `lab-source-architecture-pass-6-findings.md` §3 and §5 with their premises (contiguous cell `S[n,t]`; deterministic WORD-row reconstruction from the prefix; SM-C19 order preservation). The model mentions results it does not carry | OBSERVED | 5 |
| **MA-M12** | S4.6 lists six refused universal Retain/Materialize substitutes | No refuting evidence is cited beside them; the sampling campaign and the docket §5 hold the refutations (and the docket lists sixteen forbidden families, ten more than S4.6) | OBSERVED | 5 |
| **MA-M13** | 48 `\boxed{}` statements (S3 5 · S9 7 · S10 6 · S11 15 · S12 15), three `∎` | Boxes mix definitions, fences and theorems with no index saying which is which; the three proved theorems (G, RD-1, OBS-1) and the whole-prefix construction are the only ones with a proof mark | OBSERVED (count) | 1, 2 |
| **MA-M14** | S0 non-claims table | Current and consistent with the manifest and pointer draft on every row checked (arrival, root, RootTouch, binary Join, Theorem G, n+1, no registry, D1 0010 coverage, N-D, SM-GAP-RM, G1, acceptance, `src/`) | OBSERVED — **no finding** | — |

### Cross-file — `MA-X`

| ID | Tree says | What the files show | Stamp | Pass |
|---|---|---|---|---|
| **MA-X01** | The four satellites at the `docs/` root are indexed by the court as current readings | `pass-3-witness`, `pass-5-projections`, `pass-6-arrival`: **0** current-law qualification lines; they still say *"Pass 2 partial algebra"*, *"Φ = [GAP]"*, *"Q2 arity: No — binary drawings are illustrative"*, *"Q5 … unanswered"*. `pass-4-adversarial` carries a partial 2026-09-20 qualification (Q4 only). Current law (model S1.3/S3.3/S4.5, pointer draft): binary Join CLOSED, RootTouch CLOSED, Q3 CLOSED, Q5 = WORD + RootTouch, the open is RM-A | OBSERVED | 4 |
| **MA-X02** | `plans/math-execution-update-pass-5-witness.md` (executed 2026-09-20) re-audits D1 *"under UPDATE labels"* | Its column still says *"Q2 CONFLICT"*, *"H-PTR empty"*, *"required-shape still OPEN"* — the pre-reconciliation stamps; no dated qualification. An executed artifact: header qualification only, body byte-identical | OBSERVED | 4 |
| **MA-X03** | `docs/clock/system-mathematical-model.md` | Carries a *HISTORICAL CONCEPTUAL INTERPRETATION* header and S9.10 quarantines it as STALE-CORE — **consistent; no finding** | OBSERVED | — |
| **MA-X04** | The RM-A design docket (`lab-source-architecture-pass-6-design-docket.md`) prepares the obligation, input/output discipline, sixteen forbidden families and five required questions | The model does not link it; S4.5/S4.6 say only *"[GAP]"* | OBSERVED | 5 |
| **MA-X05** | `reduction-pass-2-execution-model.md` (Σ = (L, h, K)) carries its ROOT/TOUCH/FOLD Pass-5 qualification | Consistent with the model; the model's S5 does not point at it for REFUSE / R3 / R4 (see MA-M10) | OBSERVED | 3 |
| **MA-X06** | `atomic-primitives-map.md` | Carries current-law and Pass-4 fidelity qualifications — **consistent; no finding** | OBSERVED | — |
| **MA-X07** | `namespace-register.md`: families `S0`–`S12`, `RD-1 OBS-1 EP-1`, `HOST-1 ACCEL-1 ML-1 COPY-1`, `AUTH-1 PATH-1` | `STAR-1`, `VIEW-1` and *Theorem G* are cited in the model/Pass-4 artifacts and unregistered; registering them moves the headline and needs the reproduction gate | OBSERVED | 6 |

### Verified sound — no finding

- D1 replay: all six POINTER rows fit `Join(a,b)` with backward refs; 0004 = `Join(0003, 0000)` is the RootTouch witness.
- `Reach_{D1}(0010) = {0000,…,0010}` (S0 row, S4.3 witness): true.
- PATH-1's two paths: exactly `[10,9,7,4,0]` and `[10,2,0]`; no third.
- Whole-prefix ladder arithmetic: final index 2m−2, full coverage.
- S1.1 wall, S5 contracts, S6 refusal stratification, S7 soft diff, S9 RD-1 and S10 OBS-1 proofs (type-separation theorems): valid as stated.
- S11 topology and S12 verdicts: consistent with the Pass-3/5 receipts and the current clipboards door.

## Thesis and falsifier, per pass

| Pass | Station | One question | Thesis (can lose) | Falsifier |
|---|---|---|---|---|
| 1 | maps | Can every claim in S0–S12 be classified (GFX / HUMAN / DERIVED / OVERLAY / OPEN; definition / fence / theorem) and every HUMAN claim traced to a pointable ruling with its locator? | Yes: a census file and a rulings register; H7–H12 have quoted sentences; H1–H6 will have paraphrase locators only | A ruling with no locator at all → that claim is stamped `[PROPOSAL]` in the register and reported, not hidden |
| 2 | maps | Can every proof obligation the model's own premises permit be discharged in place, stamped `PROVED_WITHIN_SCOPE` with premises, and every remaining obligation reduced to its exact missing premise? | Yes: Theorem G restated (n=1 case), whole-prefix lemma with arithmetic, five silent lemmas written, D1 replay recorded as checked | A proof fails → `UNESTABLISHED` in the register, the claim's stamp downgraded, no premise added silently |
| 3 | maps | Can the model's text be made internally coherent — labels attached, collisions qualified, stamps in C10 vocabulary, a dated current receipt — without changing one equation? | Yes: each edit is a label, a qualifier, a pointer or a dated addition | Any change to a formula, a boxed statement's content, or S8's bytes |
| 4 | maps | Can the four satellites and the update witness carry current law by dated headers with bodies byte-identical? | Yes | A body line changed; a header that claims more than the model's current table |
| 5 | maps | Can the bounded RM-B / RM-C closures enter the model as lemmas with premises, the refused families gain their refutations, and RM-A be reduced to the docket's five questions — without one sentence that decides retain-when? | Yes: a dated S4.7, linking the docket, deciding nothing | Any sentence that fires retention, ranks a candidate, or names a threshold |
| 6 | maps | Can the campaign close with propagation checked, the namespace gate reproduced, one appended tick, a receipt with `n/m`, and every ruling left with the human? | Yes | A ruling taken; a namespace headline guessed; the tick rewrites history; a pass 7 |

## Station sequence and commit shape

Every pass runs under a maps claim: pull ff-only → `claim maps "<Identity>"` → edit only maps-owned paths → `gate` → commit with an actor trailer → `release`. A pass never touches law (`systems-manifest.md`, `pointer-emission.md`, `AGENTS.md`, `docs/README.md`), graphics, hologram or coord files; anything owed there is a handoff row in its findings.

```text
pass 1  maps   plans/math-execution-audit-pass-1-census.md (new) · plans/math-execution-rulings-register.md (new) · findings
pass 2  maps   math-execution-model.md (dated lemma blocks in S2–S4, no equation changed) · math-execution-model-theorems.md (new, docs root) · findings
pass 3  maps   math-execution-model.md (labels, qualifiers, pointers, C10 stamps, dated current receipt) · findings
pass 4  maps   math-execution-model-pass-{3,4,5,6}-*.md headers · plans/math-execution-update-pass-5-witness.md header · findings
pass 5  maps   math-execution-model.md (dated S4.7) · findings
pass 6  maps   namespace-register.md (gate) · coherence-audit-log.md (append) · plans/README.md rows · receipt · rulings
```

## Coverage, as fractions, at the pin

| Surface | Now | After the six passes, if every thesis holds |
|---|---|---|
| Human rulings the model cites, with a register row and locator | 0/12 | 12/12 (H7–H12 quoted; H1–H6 paraphrase-located or `[PROPOSAL]`) |
| Theorems stamped in C10 vocabulary with premises named | 0/10 (G, whole-prefix, RD-1, OBS-1, EP-1, HOST-1, ACCEL-1, ML-1, COPY-1, PATH-1) | 10/10 or `UNESTABLISHED` where a proof fails |
| Silent lemmas written | 0/5 | 5/5 |
| Undefined identifiers in the model | 1 (VIEW-1) | 0 |
| Unlabeled boxed theorems the Pass-4 names refer to | 3 (STAR-1, PATH-1, VIEW-1) | 0 |
| Section-number collisions unqualified | 3 lines | 0 |
| Off-vocabulary proof stamps | 10 | 0 |
| Satellites and update witness with a current-law header | 1/5 (partial) | 5/5 |
| Bounded RM-B / RM-C closures stated in the model as lemmas | 0/3 | 3/3 |
| Refused Retain/Materialize families with cited refutation | 0/6 (docket: 16) | 16/16 |
| Receipts covering S0–S12 | 0 | 1 |

## Rulings prepared for the human — never taken here

| ID | Ruling | Why it is theirs |
|---|---|---|
| **MA-H00** | *Proceed* for pass 1, and for each later pass in turn | Plan → Proceed → Commit |
| **MA-H01** | Whether "solve" means anything beyond (a)–(d) above. Under the live law an agent may not fill RM-A; if the human intends an RM-A design/ruling pass, that is the human-facing step the lab-source Pass-6 docket already prepared, and it is a separate convening | Reserved by `AGENTS.md` *Never* and the live law |
| **MA-H02** | Whether the rulings register (pass 1) should be promoted from a maps companion into the manifest or the pointer draft | Law station; the register would then carry law authority |
| **MA-H03** | Whether the theorem companion (pass 2) may be cited by the manifest as the proof surface for Pieces 5 and 11 | Law station |
| **MA-H04** | Whether the four satellites move from the `docs/` root to a shelf, closing part of the `docs/README.md` door (24/43) | A filing decision the restructure plan reserved |
| **MA-H05** | Whether S1–S6 may be renumbered or a new section number added; this board assumes **no** and uses dated subsections / unnumbered additions so `S0`–`S12` stays a stable family | The section family is cited from `AGENTS.md`, `README.md`, the court and the namespace register |

## May write / must not (this board)

**May write:** this file, `math-execution-audit-pass-{1..6}-plan.md`, seven rows in `docs/plans/README.md`, the maps claim/release.  
**Must not:** execute a pass; change an equation; add a section number; write a retain-when, a threshold, a candidate ranking; touch law-, graphics-, hologram- or coord-owned files; treat the convening sentence as acceptance.

## Expected vs actual

Expected: seven plan files and seven index rows land under one maps claim; `check-docs` reports 0 orphans and no new advisories. Actual: `NOT_TESTED` until the closing gate is run.

## Stop

This board stops when the seven files are committed and the maps station is released. The human's *proceed* for pass 1 is the next event. No pass 7.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Checking that every knot the diagram claims is a knot you can tie with the cord in hand, and writing down which ones you have not tied, is allowed. Tying the one the human has not asked for is not. RM-A remains `[GAP]`.
