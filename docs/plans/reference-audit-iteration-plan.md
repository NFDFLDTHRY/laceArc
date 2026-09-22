# Reference audit — iteration board (six passes)

**Status:** PLAN · nothing executed · each pass below stays `PLAN` until the human says proceed.  
**Station:** maps holds this board and the six pass plans. Execution stations, in order: graphics · graphics · law · hologram · maps · coord then maps.  
**Pinned:** `21652f463b3178075cc9d4568847502766c0304a` (`origin/main` at the maps claim, 2026-09-22). Branch `claude/repo-reference-audit-sie0s7`.  
**Editor (declared):** Claude Fable 5.1, cloud session, identity `Claude-Fable-reference-audit`. One agent wrote propose / attack / resolve for every finding below; that is not independent review.  
**Gate:** pointer draft reconciled but unaccepted · **RM-A retain-when OPEN / MISSING-A** · G1 OPEN · R3 OPEN · GAP-HOST OPEN · TARGET UNDECIDED · no `src/`. This campaign moves none of that.  
**No new theory. No Core change. No target selection. No acceptance. No implementation. No PNG byte changes.**

## The convening sentence — verbatim, 2026-09-22

> "Familiarize yourself with this repo ensuring the references materials, technically references and behavioral obligations are correctly represented / in a form of most use to the Lab machinery of this repo. Pay special attention to the 4 graphics that describe lace. ***Plan to reconcile and resolve all issues and misreprestation found in 6 passes.***"

The sentence convenes an audit. It accepts nothing, rules nothing, and opens no gate.

| Clause | Carried to |
|---|---|
| "Pay special attention to the 4 graphics" | Pass 1 (the missing Graphic D companion) · Pass 2 (A/B/C companion fidelity against the PNGs) |
| "references materials … correctly represented" | Pass 3 (law-station reference wording at the court root) · Pass 5 (research/technical shelf routing, verified) |
| "technically references" | Pass 5 (verified consistent; recorded, not edited) |
| "behavioral obligations … of most use to the Lab machinery" | Pass 4 (behavioral-goal clipboards ground on the staked source identity and current Water law) · Pass 5 (obligation → assay → blueprint → open ledger) |
| "reconcile and resolve all issues … in 6 passes" | Pass 6 (last coord debt, coherence tick, receipt, rulings prepared for the human) |

## Grounding receipt

```text
TASK:                       repository reference / graphics / behavioral-obligation audit → six-pass plan
REPOSITORY / COMMIT:        NFDFLDTHRY/laceArc @ 21652f46 (origin/main); plans on claude/repo-reference-audit-sie0s7
WORKING-TREE CHANGES:       none before the maps claim
LAW SOURCE / REVISION:      docs/law-why-these-documents.md @ 21652f46 (unchanged by this campaign)
GRAPHICS ACTUALLY VIEWED:   A VISUALLY_OBSERVED · B VISUALLY_OBSERVED · C VISUALLY_OBSERVED · D VISUALLY_OBSERVED
                            — all four read from the tracked PNGs, rendered at reduced resolution by the
                            viewing tool. Panel numerals and titles: high confidence. Body sentences:
                            readable, but every sentence a pass carries into a companion is re-sighted at
                            full resolution at execution (1536×1024 for A, D; 1672×941 for B, C).
MANIFEST / REASON-MAP USED: systems-manifest.md Overview, Pieces 1–15, SM-C01–SM-C21, open questions;
                            graphics-close-reading.md §1–§7; reason-model-map not required for these findings
PHYSICAL EVIDENCE:          NOT_PERFORMED (no cord held; the board cites panels and files only)
EVIDENCE STATE:             OBSERVED for every file/grep citation; VISUALLY_OBSERVED for every PNG citation;
                            NOT_TESTED for every proposed edit
RELEVANT UNREAD SOURCE:     refs/local/ behavioral-goal texts (gitignored, not in this session); the
                            technical PDFs (not in git). No finding below depends on them.
CURRENT POINTER-EMISSION GAP: RM-A retain-when; untouched
HUMAN ACCEPTANCE:           ABSENT for every proposed change
HISTORICAL CONFLICTS:       law's existence-vs-acceptance sentence pair (routed to the human, RA-H01)
PERMITTED NEXT ACTION:      the human reads this board and says proceed for pass 1, or not
FORBIDDEN NEXT ACTION:      executing any pass from this board; editing a PNG; filling RM-A/G2
```

## Measured before proposing — the findings register

Every row cites the surface that says the wrong thing and the source or file that shows otherwise. Stamps sit on the row. Nothing here is repaired by this board.

### Graphics (source of record) — `RA-G`

| ID | Tree says | Source / tree shows | Stamp | Pass |
|---|---|---|---|---|
| **RA-G01** | Panel numbers are not printed: `graphic-b-ascii.md:41` and `graphic-c-ascii.md:42` *"Printed panel numbers on the PNG were not recovered this tick"*; `graphics-close-reading.md:445` *"They are not printed in the graphics"*; `ascii-iterations.md:61` queues *"printed A/B/C numbers if recovered"*; `namespace-register.md` Graphic-panel row: *"labels assigned by the manifest and the close reading"* | **All four PNGs print their panel numerals**: A `1.`–`13.`, B `1.`–`12.`, C `1.`–`12.`, D `1.`–`6.`, each before its title. Only the letter prefix A/B/C/D is repo-assigned. The repo's A1–A13 / B1–B12 / C1–C12 / D1–D6 scheme is 1:1 with the printed numerals | VISUALLY_OBSERVED (4/4 PNGs) · OBSERVED (5 surfaces) | 2, 5 |
| **RA-G02** | B and C companions use working titles: B2 *Wire through star*, B3 *Star*, B7 *Touch (thread, not attach)*, B8 *Touch remains*, B10 *[X] Collapse*, B11 *[X] Graph as thing*; C3 *2D crossings / adjacency*, C5 *More dimensions ≠ more meaning*, C6 *Four named families (views)*, C7 *5D+ touches of touches*, C8 *Symptoms of N-D*; both files say *"If a later pass reads a different title on the artwork, the PNG wins"* | Printed B titles: 2 *A word occurrence arrives* · 3 *Repetition builds the star* · 7 *Higher-dimensional touch* · 8 *Touch participates later* · 10 *No collapse* · 11 *Projection vs Lace*. Printed C titles: 2 *1D presentation* · 3 *2D presentation* · 4 *3D presentation* · 5 *What a dimension adds* · 6 *4D presentation* · 7 *5D and beyond* · 8 *How N-dimensionality presents itself* · 9 *Dictionary wiring example* · 10 *Input treatment* · 11 *Projection vs actual Lace* · 12 *Governing rule*. A's working titles already match the print | VISUALLY_OBSERVED | 2 |
| **RA-G03** | `graphic-b-ascii.md`: B9 source labels *"not recovered this tick"*; *"Three-column grouping (wire / star / touch) as printed headers: `[GAP]`"* | B9 prints three labels: *Incoming passes (from many contexts)* · *Outgoing passes to other stars* · *Internal threading in higher dimensions (many crossings)*. No wire/star/touch column headers are printed; B is a 4×3 grid of numbered panels. The grouping gap closes **negative** | VISUALLY_OBSERVED | 2 |
| **RA-G04** | A/B/C companions carry each panel's operator and a fields table but not the panel's printed lists | Not transcribed anywhere on the graphics shelf: A13's ten check-marks as printed (companion carries nine bullets); B10's four ✗ anti-models (*database lookup · one flat edge · stored definition · semantic collapse*) and its ✓ line; B11's two columns; B12's **eight numbered points** and footer; C8's six *Visible symptoms*; C10's specimen *"The customer paid the restaurant for the dessert slice."* drawn as nine occurrence nodes with **three separate `the` nodes**; C11's ✗5 / ✓5 columns; C12's seven bullets and footer; the A/B/C header and tagline lines. The manifest quotes several of these; the shelf that is the source's text route does not | VISUALLY_OBSERVED · OBSERVED (companions grep) | 2 |
| **RA-G05** | `pointer-emission.md`: *"Graphic D has no ASCII file, and D is where every one of these questions is decided"*; `ascii-iterations.md` iteration 3 pass 1: *"Graphic D ASCII spine (if named) — not written"* | Still true. D1 is transcribed in the close reading and `fixtures/d1-golden-v0.1.0.json`; D2–D6, the nine *Key properties*, the header tagline and the footer rule exist only as partial quotations inside the manifest | OBSERVED | 1 |
| **RA-G06** | `graphic-a-ascii.md` writes **`centimetre`** four times (header block, note line, Fence row, Pass-4 operator box) | The PNG header prints **`centimeter`**. Known since verification iteration 4 pass 5 (`graphics-close-reading.md` §5: *"three files on the graphics shelf had transcribed it centimetre"*), left unedited then because the graphics station was not held (iteration-4 receipt: *"verified against the PNG, not edited"*). The author's ruling that the unit is *one item in the lace array* is already in close reading §5a | VISUALLY_OBSERVED · OBSERVED | 2 |
| **RA-G07** | `fixtures/d1-golden-v0.1.0.json` claims D1 *"verified against the panel by sighted read"* (2026-09-20) | Re-sighted this session: **11 of 11 rows match** the PNG in index, type, value/refs and gloss; the five *properties_the_panel_states* are printed on D. **PASS.** Nothing to repair; the re-sighting date is worth recording once | VISUALLY_OBSERVED | 5 |
| **RA-G08** | (no wrong claim found: 0 grep hits for `0002 → 0007` or `0007 → 0010` as references) | D6 draws the chain WORD `0000` → POINTER `0002` → POINTER `0007` → POINTER `0010` under *"Word to word / Relationship to relationship / Relationship to an earlier relationship"*. Row `0007` references `0006` and `0004`, **not** `0002`: the D6 arrows are level illustration, not `ref_A/ref_B`. The D companion should say so before someone reads the picture as a reference chain | VISUALLY_OBSERVED · OBSERVED | 1 |
| **RA-G09** | `docs/graphics/README.md:5` — the canonical graphics table has a three-column header and a two-column delimiter row | GitHub-flavored Markdown needs equal counts; the source-of-record index may not render as a table. Same defect at `pointer-emission.md:14` (law), and in dated artifacts `systems-manifest-ascii.md:3708,3738` (Pass 23) and `source-lab-lace-alignment-pass-4-water-behavior-mechanisms.md:101` | OBSERVED (5 hits, mechanical scan) | 2 · 3 · RA-H02/H03 |
| **RA-G10** | `docs/graphics/README.md` links 17 of 36 files on its own shelf | The 19 unlinked files are the pass plans behind the three companions and the prefix-device sheets; each is reachable only through its product. The clock door solved the same shape with a *Provenance* row | OBSERVED (check-docs door coverage) | 2 |

### References and the court root — `RA-R`

| ID | Tree says | Source / tree shows | Stamp | Pass |
|---|---|---|---|---|
| **RA-R01** | `docs/references.md:146`: *"Pointer emission remains a `[GAP]` until written in `docs/pointer-emission.md` from the four graphics"* | The file exists and is a reconciled draft; the current open is RM-A retain-when. Repo-lag Pass 2 audited `references.md` as current and missed this trailing sentence | OBSERVED | 3 |
| **RA-R02** | `README.md:97`: `AGENTS.md` = *"Standing orders for any Grok / Grok Bot / Grok Build session in this tree"* | `CLAUDE.md`: the orders *"apply to every local and cloud agent, Claude Code included"*; `AGENTS.md` itself says *"Load this file as standing orders"* | OBSERVED | 3 |
| **RA-R03** | `docs/README.md` court table lists the PNGs, the manifest and the D1 close reading | No row can point at a Graphic D companion until Pass 1 exists; no court surface says the panel numerals are printed | OBSERVED | 3 |
| **RA-R04** | `systems-manifest.md` cites panels as A1…D6 and `graphics-close-reading.md` says *"Panels are cited as in the manifest"* | The numerals are the PNGs' own (RA-G01); one sentence in the manifest's *Source corpus* block would make that pointable | OBSERVED | 3 |
| **RA-R05** | `docs/clipboards/README.md`: five stake texts + Wasm + WebNN executed Pass 6; WebGPU and WGSL Pass 6 `HELD / NOT_EXECUTED`; shelf 10 Pass 0/1 executed with recipe rows `NOT_RUN`; TARGET UNDECIDED carried | Verified against the plan headers: `webgpu-pass-6-plan.md` and `wgsl-pass-6-plan.md` are `HELD · NOT EXECUTED`; `webnn-pass-6-plan.md` and `wasm-spec-3-pass-6-plan.md` are `EXECUTED`. **Consistent. No edit.** | OBSERVED | 5 (record) |
| **RA-R06** | `docs/clipboards/README.md` clipboards table: Rowlands ASCII-machinery and mechanisms rows carry `—` in the *Stake* column | Both files are executed Pass-6 products; the cells are empty, not wrong | OBSERVED | handoff (clipboards) |

### Behavioral obligations — `RA-B`

| ID | Tree says | Source / tree shows | Stamp | Pass |
|---|---|---|---|---|
| **RA-B01** | `docs/clock/hcc-a-systems-manifest.md`, `coffee-cup-systems-manifest.md`, `water-systems-manifest.md`: *"attachment `…txt`. Not in git."* No bytes, lines, blob or SHA-256 on any of the three, nor on `train-h-c-w-systems-manifest.md`; the Water clipboard cites **0** source line numbers | Live law, *Source identity, staked 2026-09-21*: bytes / lines / git blob / SHA-256 for all three texts, and *"Claims about these texts now cite lines."* The Pass-4 mechanism maps already carry the SHA-256 and cite `L49–56`-style lines; the clipboards that are the lab's source interface do not | OBSERVED | 4 |
| **RA-B02** | `docs/clock/philosophy-map.md` header carries the 2026-09-20 classification correction only; lines 421, 427 and 620 state *"UNK (missing, blocks comprehension)"*, *"Unresolved UNK in talk blocks crossing"*, *"UNK is a recursive block"*; `shadow-clock-gear-contracts.md:600` *"Unresolved UNK blocks coherent crossing"* | Current human ruling (AGENTS, live law, Water clipboard header): UNK is a **nonblocking** predicted evidence shape; INVALID is a claim later evidence has established wrong; no invalid-phrase table. Neither file carries that qualification; `grep nonblocking` on the philosophy map returns nothing | OBSERVED | 4 |
| **RA-B03** | `source-lab-lace-alignment-pass-2-traceability.md` is the register that traces source → clipboard → Lab → Lace | It has **0** mentions of the Pass-5 device blueprints or S12; the obligation → assay (Pass 3) → blueprint (Pass 5) → open chain is not written in one place. The Lab's assay tool and controls fixture key on goal IDs (`H-G1`…) that the blueprints do not cite back | OBSERVED | 5 |

### Lab machinery and maps — `RA-L`

| ID | Tree says | Source / tree shows | Stamp | Pass |
|---|---|---|---|---|
| **RA-L01** | `docs/plans/README.md` links 293 of 296 files | Unlinked: `math-execution-behavioral-read-devices-pass-5-machine-construction-sit.md`, `…-pass-6-coherence-matrix.md`, `…-pass-6-propagation-docket.md`; the last two are true orphans (check-docs: *"2 file(s) nothing references"*) | OBSERVED | 5 |
| **RA-L02** | `namespace-register.md` Graphic-panel row: labels *"assigned by the manifest and the close reading"* | Numerals printed, letters assigned (RA-G01); the register is where a citation reader looks first | OBSERVED | 5 |
| **RA-L03** | `docs/plans/fixtures/README.md` records the 2026-09-20 sighted verification of D1 | A second, independent sighting now exists (RA-G07); one dated line keeps the oracle's provenance current | OBSERVED | 5 |
| **RA-L04** | `coherence-audit-log.md` last tick is Pass 39 / repo-lag Pass 5 at `52b82a8` | This campaign's closeout needs one appended tick; nothing above it is rewritten | OBSERVED | 6 |

### Coordination — `RA-C`

| ID | Tree says | Source / tree shows | Stamp | Pass |
|---|---|---|---|---|
| **RA-C01** | `docs/coord/stations/README.md:9`: clipboards station = *"KEEP/FORBID mappings of the five stake texts"* | The shelf carries ten campaigns (five stakes + Wasm, WebGPU, WGSL, WebNN, rust-target/Cargo). The last item on the repo-lag docket, verified still present | OBSERVED | 6 |

### Verified sound — no finding

- Graphic D panel 1 ↔ close reading ↔ golden fixture: 11/11 (RA-G07).
- Manifest source routes B4 · C9 · A11/A12 for the definition path; A6 as context specimen: matches the PNGs.
- C6 family names, C5 plane labels `D1`–`D4`/`Dn`, D2 entry schemas `{index,type,value}` / `{index,type,ref_A,ref_B}`: match.
- Root README's *The four graphics* and *What is not Lace* sections: match B10 and the four headers.
- Technical clipboards door statuses (RA-R05).
- Law transport copies: `check-docs` reports 0 drift; actor attribution 0 unsigned in the last 200.

## Thesis and falsifier, per pass

| Pass | Station | One question | Thesis (can lose) | Falsifier |
|---|---|---|---|---|
| 1 | graphics | Can Graphic D be carried as text at panel grain, every line traceable to a printed sentence or a D1 row, adding nothing D does not print? | Yes: header, D1–D6, nine key properties, footer — with the D6 level-vs-reference note | Any companion line without a printed source; any line that answers RM-A, G1, slot order or *when* |
| 2 | graphics | Can the A/B/C companions be made 1:1 with the PNGs' printed numerals, titles and lists, keeping every dated G2 stamp intact? | Yes, by addition and by the files' own *PNG wins* rule; `centimetre`→`centimeter` is a transcription repair, not a ruling | A companion changes a Pass-N delta table or an iteration receipt; a printed title contradicts the reduced-resolution read (then the full-resolution read wins and the board is corrected in the open) |
| 3 | law | Can the court root say what the graphics shelf now shows without duplicating it or touching the gate? | Yes: four sentences and one table delimiter | Any law edit beyond RA-R01–R04 / RA-G09; any wording that reads as acceptance or closes RM-A |
| 4 | hologram | Can the behavioral-goal clipboards ground on the staked source identity and current Water law without rewriting their dated bodies? | Yes: one identity header each, one Water qualification each, routes to the line-cited Pass-4 maps | A dated pass body or gear table is rewritten; blocking-UNK is deleted rather than dated; a clipboard gains Core authority by the header |
| 5 | maps | Can the Lab's chain source → clipboard → assay → blueprint → open be written as one dated ledger, plus the four maps repairs, without a new mechanism? | Yes: an addendum file keyed by obligation ID; four bounded edits | The ledger proposes a holder, an RM-A rule or a schedule; a Pass-2 artifact is rewritten instead of appended to |
| 6 | coord → maps | Can the campaign close with coverage stated as fractions, the last coord debt paid, one appended tick and every ruling left with the human? | Yes | A ruling is taken by the agent; the tick rewrites history; coverage is stated as "done" instead of `n/m` |

## Station sequence and commit shape

One station per commit. Pull ff-only → `coord.sh which` → `claim <station> "<Identity>"` → edit only what it owns → `gate` → commit with an actor trailer → `release`. Each pass file names its files exactly. A pass may not touch another station's file; it hands off in its findings.

```text
pass 1  graphics   docs/graphics/graphic-d-ascii.md (new) · graphics/README.md row · ascii-iterations.md i3 row
pass 2  graphics   graphic-a/b/c-ascii.md · graphics/README.md · graphics-close-reading.md §7 · ascii-iterations.md
pass 3  law        references.md · README.md · docs/README.md · systems-manifest.md (one sentence) · pointer-emission.md (delimiter, if RA-H02 says yes)
pass 4  hologram   hcc-a/coffee-cup/water/train-h-c-w systems-manifests · philosophy-map.md · shadow-clock-gear-contracts.md (header note only)
pass 5  maps       plans/README.md · plans/fixtures/README.md · namespace-register.md · a new dated obligations ledger · findings 1–5 rows
pass 6  coord      coord/stations/README.md
        maps       coherence-audit-log.md (append) · reference-audit-pass-6-findings.md · plans/README.md rows · rulings brief section
```

## Coverage, as fractions, at the pin

| Surface | Now | After the six passes, if all theses hold |
|---|---|---|
| Graphics with an ASCII companion | 3/4 | 4/4 |
| Companion panels carrying the printed title | A 13/13 · B 6/12 · C 7/12 · D 0/6 | 13/13 · 12/12 · 12/12 · 6/6 |
| Live surfaces claiming numerals are not printed | 5 | 0 |
| Behavioral-goal clipboards carrying the staked identity | 0/4 | 4/4 |
| Behavioral-goal surfaces carrying current Water law | 1/3 (Water clipboard only) | 3/3 |
| `docs/plans/README.md` door | 293/296 | 296/296 (+7 campaign files) |
| `docs/graphics/README.md` door | 17/36 | 36/37 (companion added; plans linked) |
| Orphans reported by `check-docs` | 2 | 0 |
| Repo-lag docket remainder | 1 | 0 |

## Rulings prepared for the human — never taken here

| ID | Ruling | Why it is theirs |
|---|---|---|
| **RA-H00** | *Proceed* for pass 1, and for each later pass in turn | Plan → Proceed → Commit |
| **RA-H01** | The live law's sentence pair — *"forbidden until `pointer-emission.md` exists"* versus *"when the human has accepted"* — is human-authored and flagged unresolved in the law itself | Law station; reserved by the law's own header |
| **RA-H02** | Whether the format-only delimiter repair at `pointer-emission.md:14` is wanted | The draft law file; edits there are watched |
| **RA-H03** | Whether dated executed artifacts (`systems-manifest-ascii.md` Pass 23 tables; the Pass-4 Water map) may receive format-only delimiter repairs, or stay byte-frozen | The tree's rule is that executed receipts are not rewritten; a delimiter is not content, but the human decides |
| **RA-H04** | Whether `systems-manifest-ascii-pass-7…25-plan.md` move to a shelf (restructure phase 5) to close the `docs/README.md` door | A filing decision the restructure plan reserved |
| **RA-H05** | Whether the Graphic D companion is *named* — `ascii-iterations.md` wrote *"if named"* | This board reads *"pay special attention to the 4 graphics"* as naming it; the human confirms or not |

## May write / must not (this board)

**May write:** this file, `reference-audit-pass-{1..6}-plan.md`, seven rows in `docs/plans/README.md`, the maps station claim/release.  
**Must not:** execute a pass; touch a PNG; edit graphics-, law-, hologram- or coord-owned files; fill RM-A, G1, G2, slot order or *when*; treat the convening sentence as acceptance; propose a second store, a Star table, a schema field, or code.

## Expected vs actual

Expected: seven plan files and seven index rows land under one maps claim; `check-docs` reports 0 new orphans; nothing else in the tree changes. Actual: `NOT_TESTED` until the closing gate is run and recorded in the pass-6 receipt.

## Stop

This board stops when the seven files are committed and the maps station is released. The human's *proceed* for pass 1 is the next event. No pass 7.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc. Reading the print on the four pictures more carefully is something you can do with the lace still in your hands. RM-A remains `[GAP]`.
