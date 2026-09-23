# Mathematical execution model — findings handoff (evidence state at `b1ac324`, 2026-09-23)

**Purpose:** let another reasoning model independently determine what research question should come next. This is an evidence state, not a plan. It proposes no pass, takes no ruling, and does not assume RM-A requires a human ruling.  
**Tip:** `b1ac324` on `main` (the mathematical execution model audit closeout). Every line number below is of that tip. Model: [`docs/math-execution-model.md`](../math-execution-model.md) (2,365 lines). Theorem register: [`docs/math-execution-model-theorems.md`](../math-execution-model-theorems.md). Rulings register: [`math-execution-rulings-register.md`](math-execution-rulings-register.md). Claim census: [`math-execution-audit-pass-1-census.md`](math-execution-audit-pass-1-census.md). Campaign receipts: `math-execution-audit-pass-{1..6}-findings.md`, commits `6d988f9`, `666462e`, `6c6e590`, `6e7ff0e`, `b68a016`, `7734ec0`.  
**Stamps:** `PROVED_WITHIN_SCOPE` / `DERIVED` / `REQUIREMENT` / `OPEN` as in the theorem register §0; `GFX` / `HUMAN` as in the census §0; `[INFERENCE]` marks a reading made in this handoff and nowhere else in the tree.  
**Author:** Claude Fable 5.1 (cloud session), identity `Claude-Fable-math-audit`, maps. One author; not independent review. Two in-session script runs are reported in §6 with their inputs and outputs so they can be re-run; the scripts are not tracked (no `src/`).

---

## 1. What the model establishes

### 1.1 Definitions (`DEF` in the census; 215 rows)

| Object | Where | Note |
|---|---|---|
| Lace state \(L=(e_0,\ldots,e_{n-1})\), finite, append-only | S1.2 (l. 47–63) | formalization of Graphic D; `DERIVED`, not `GFX` |
| `Kind = {WORD, POINTER}`; WORD row `(WORD, v)`; POINTER row `(POINTER, a, b)` with \(a,b<j\); `Join_L(a,b) = L ⌢ (POINTER,a,b)` | S1.3 (l. 67–106) | binary by human rulings H5/H6 on D2/D1/D6 |
| **valid** state: every POINTER references strictly lower indices | pass-2 block, S1.3 (l. 108–132) | added 2026-09-22; used silently before |
| `Arrive(v) = L ⌢ (WORD, v)` | S2 (l. 134–140) | successful case only; refusal pointed at l. 142 |
| `StarWords`, `Seen`, `Root = min StarWords` | S3.1 (l. 185–232) | reads, not tables |
| `WordTrace`, `ValueTrace` | S3.2 (l. 234–252) | |
| `RootTouch(j,r) = Join(j,r)` | S3.3 (l. 254–280) | |
| `Reach`, sample instance, sample size, grounded point, ladder \(P_{n+1}=Join(P_n,s_{n+1})\), branch composition | S3.4 (l. 282–385) | |
| reference path, `Paths(i,t)` | Lemma L4 block (l. 323–336) | |
| contiguous cell \(\mathcal S[n,t]=(r_{t-n+1},\ldots,r_t)\) | S3.5 (l. 387–421) | bounded candidate tested in sampling Pass 2 |
| `SearchHandle = (through, anchor, item)` | S3.6 (l. 423–447) | disposable |
| \(\pi_\kappa\), \(\Pi(L)\) | S3.7 (l. 449–485) | |
| `STEP = LAND; {BECOME ROOT | ROOT TOUCH}; SampleRead; [Retain/Materialize OPEN]; Continue` | S4.6 (l. 660–689) | |
| device family \(\mathcal D_\theta=(Q,G,\Omega,\Delta,\omega)\); witness atoms; SEE stamps; Lace-identifiability; T0–T6; operator library \(\mathfrak M\) | S9.1, S9.5, S10.1, S10.2, S11.2, S12.2 | overlays, non-Core |

### 1.2 Requirements and invariants (`FENCE`; 150 rows)

- Append-only; no delete, rewrite, reset, cut, index reuse — S1.2; Graphic D key properties (fixture l. 92–96).
- Every POINTER references earlier same-line entries; a POINTER is itself an entry — Graphic D; Lemma L2.
- Every successful word arrival lands as one WORD row — H3; unseen becomes root — H4; seen occurrence RootTouches — H1 (mandatory). S2, S3.3, S4.4.
- No second store, no Star/registry/embedding/N-D table, no graph DB as authority, no second row kind, no write-back from a projection — S6.1 items 1–6 (l. 789–800); B10/B11, C11, D.
- Derived working state is disposable: the 2D surface, handles, frontiers, candidates — S3.5, S3.6, S12.2; H10, H11.
- Device output has no automatic retention authority — S9.8 (l. 1128–1160). Device-only steps write nothing — RD-1.
- A Lace-grounded claim carries finite nonempty replayable support — EP-1 (l. 1394).
- No stored meaning — Graphic A (A9); S9 preamble (l. 866–876).
- Refusal leaves L unchanged and is not a Core row — reduction execution model X3 REFUSE (l. 75–78), invariant I1 (l. 106); pointed from S2 (l. 142) and S5 (l. 783).
- Core growth is deterministic modulo the ruling parameters over the consumed arrival sequence — reduction model M2 (l. 125). **Consequence used below:** any retain-when rule inside Core is a function of the prefix and the arrival.

### 1.3 `PROVED_WITHIN_SCOPE` (theorem register l. 26–34; S4.7 lemmas not yet in the register)

| Result | Where | Premises (compressed) | Scope limit |
|---|---|---|---|
| Lemma L1 Reach well-founded | l. 108 | validity; Reach def | nothing about operand selection |
| Lemma L2 validity and prefix-freeze invariant | l. 108 | Arrive/Join as concatenation; operand condition | — |
| Lemma L3 root stability under any append | l. 170 | `Root = min`; L2; a fixed equality relation | not G1; not whether a touch is appended |
| Lemma L4 = PATH-1, exactly two D1 paths 0010→0000 | l. 323 | Reach def; the fixture | the D1 witness |
| Lemma L5 D1 replay: eleven steps reproduce the eleven rows | l. 515 | the fixture; Arrive, Join, RootTouch | not *why* those operands |
| Theorem G (restated): ladder over a selected sample reaches it, appends \(n-1\) rows, later for \(n\ge2\) | l. 551 | Reach; Join; L1, L2 | an already-selected sample |
| Lemma WP: \(P_k\) at \(m+k-2\), final \(2m-2\), `Reach(P_k) = {0..k−1} ∪ {m..m+k−2}` | l. 603 | L1, L2, ladder | whether such a grounding is ever selected |
| RD-1 | l. 1046, note l. 1096 | typed algebra; device-only = no Arrive/Join | says nothing about code |
| OBS-1 | l. 1293, note l. 1328 | admissible world set; \(\pi_L\); \(z\) total | the conditional; its S10.4 witnesses are `DERIVED` |
| Lemma RM-B(contig) | l. 695 | (i) H3; (ii) positions map to addresses from the prefix; (iii) SM-C19 order; **(iv) the cell is already selected** | class-specific; representability ≠ topology |
| Lemma RM-C(RootTouch); Lemma RM-C(contig) | l. 708 | H1/H4; the cell's own order | generic RM-C open |

Script receipts: pass-2 findings §3 (D1 and 500 random valid states, 0 failures); pass-5 findings §3 (RM-B fold on D1: representative at index 14, `Reach ≠ Reach(0010)`).

### 1.4 `DERIVED`

HOST-1, ACCEL-1, ML-1, COPY-1 (register l. 36–39: sound inferences from source readings at rung \(T_0\)); the three OBS-1 source witnesses (S10.4); STAR-1 and VIEW-1 (fidelity fences over reads the model does not define formally; register §3); the S4.6 refused substitutes' refutations (pointed, S4.7.3 l. 718–741); **the operand-order rule read off the six D1 rows** (§6.3 below; `[INFERENCE]`, in-session only).

### 1.5 Source-backed (`GFX`) and human-ruled (`HUMAN`)

- `GFX`: the eleven D1 rows and the six operand pairs ([fixture](fixtures/d1-golden-v0.1.0.json), sighted 2026-09-20); the two-reference schema (D2); POINTER→POINTER (D6); the five key properties (fixture l. 92–96); the fixture's own ruled-out lines (l. 98–101): every adjacent pair, chronological slot, reverse-chronological slot; B10/B11/C11 no-collapse, projection-is-shadow; A9 no stored meaning.
- `HUMAN`: H1–H12, quoted at their locators in the rulings register (l. 24–35): H1, H2 in [ROOT / TOUCH / FOLD pass-1 plan](math-execution-root-touch-fold-pass-1-plan.md) l. 18, 20; H3 in the [pass-2 plan](math-execution-root-touch-fold-pass-2-plan.md) l. 27; H4–H6 in the [pass-3 plan](math-execution-root-touch-fold-pass-3-plan.md) l. 31, 34, 37; H7–H12 in the [sampling pass-1 plan](sampling-density-emergence-pass-1-plan.md) l. 24–120 (H9 has no sentence of its own; it is a clause of H7). Also the Water UNK/INVALID ruling (S12.13) and the conceptual-reference correction ([live law](../law-why-these-documents.md) l. 9).

### 1.6 Unresolved (`OPEN`; 50 rows)

RM-A retain-when (S4.5 l. 651; S4.7.4 l. 743–767); generic RM-C (l. 716); G1 word equality; R3 carrier; GAP-HOST; TARGET; pointer-draft acceptance; the C6 route-family discriminator (S3.7); exact geometry of any view; H×C×W coupling (S12.14); the Water source-opens (S10.12); and, established in this handoff: **the sampling-driven component of any retention mechanism is constrained by no specimen in the tree** (§6.4).

---

## 2. RM-A, exactly

### 2.1 Input type

From the [docket](lab-source-architecture-pass-6-design-docket.md) §3 (l. 49–67) and S4.7.4 (l. 743–767): sampling-derived structural evidence reconstructed from the current prefix \(L_n\) — the S3.5 position×scale reads and S3.6 frontier/witness reads (manifest SM-C20, SM-C21); the current root, occurrence, RootTouch and retained-participation facts read from \(L_n\) (S3.1–S3.4); exact bounded specimen facts when frozen (the fixture); and any additional input a new ruling or design introduces **by name with its authority**. Under M2 the rule is a function `f(L_n, arrival) → {joins to append}`.

### 2.2 Expected output / effect

Docket §4 (l. 69–83): `retain? · selected object · evidence`. In the model's names: the selected object is a finite ordered sample of addressable points (the input of Lemma RM-B(contig) and the S4.2 ladder) or a declared constituent-point description from which one follows; the evidence is finite nonempty `SEE-L` support under EP-1, replayable from the named prefix; the write is the unchanged binary Join / repeated grounding (S4.1–S4.2). RootTouch is the one retained append that already fires without RM-A.

### 2.3 Every constraint it must satisfy (the accepted set)

| # | Constraint | Source |
|---|---|---|
| C1 | append-only; refs earlier same-line; POINTER is an entry; views are projections | Graphic D key properties; S1.2; L2 |
| C2 | every successful arrival lands as WORD | H3; S2 |
| C3 | unseen → root; seen → RootTouch `Join(new, root)`, mandatory | H4, H1; S3.3 |
| C4 | binary Join; \(n+1\) ladder; one row per sample scale; any portion can be one point | H5, H6, D2, D1, D6; S4.2 |
| C5 | no arbitrary or semantic chooser; relations discovered through growth; sampling shows where to make touches | H7, H8 |
| C6 | the star is a view / search aid | H9; S3.6 |
| C7 | durable history is 1D; the sampling surface is derived and disposable | H10, H11; S3.5 |
| C8 | pointers may connect any sampling level | H12 |
| C9 | adjacency alone does not emit | pointer draft Q3 CLOSED (l. 161); fixture l. 99 |
| C10 | exact D1 reproduction from the word stream alone, no oracle tuning, prefix-only | docket §8 (l. 146–159); the fixture |
| C11 | forbidden inputs (§2.4) | docket §3 |
| C12 | the sixteen refused families | docket §5 (l. 85–104); S4.7.3 |
| C13 | no second store; working state replayable from the prefix | S6; EP-1; docket §8 |
| C14 | device output has no automatic retention authority | S9.8 |
| C15 | slot order is neither chronological nor reverse-chronological; ref_A is the described subject in the six examples | fixture l. 100–101; S1.3 l. 104 |
| C16 | 0002 and 0006 are retained with no prior repeat; seven of fifteen D1 cells have no exact-cover retained point; 0007 was retained instead of the cheaper cover | sampling Pass 2 T-R1 (l. 850), T-R2 (l. 862), T-R5 (l. 882) |
| C17 | materialization of a selected contiguous cell and its order are closed | S4.7.1–S4.7.2 |
| C18 | an out-of-D1 specimen before any general claim; oracle independence; false-positive accounting | docket §8 |
| C19 | word equality is a parameter | G1 |
| C20 | no dependence on word meaning | A9; S9 preamble |
| C21 | deterministic modulo the ruling parameters | reduction model M2 (l. 125) |

### 2.4 Every input it is forbidden to use

Docket §3 (l. 60–67), carried into S4.7.4: meanings or similarity scores; embeddings; external learned-model state (S12.5); future rows or outcomes; D1 answer labels; hidden document/provenance classes (S3.7 leaves C6 OPEN); source-domain quantities (tension, ReAG semantics) without a ruled correspondence. Also, by C14 and C13: device-local state \(Q\) that is not replayable from \(L\).

### 2.5 Every candidate considered, and its disposition

| Candidate / family | Disposition | Why · where |
|---|---|---|
| RootTouch only; retain nothing else | **rejected** | row 0002 exists (fixture) |
| every sampled cell | **rejected** | sampling Pass 1 C-C (l. 265), F1-5 (l. 842); T-R2 |
| every adjacent pair | **rejected** | F1-6 (l. 843); fixture l. 99; Q3 CLOSED |
| exact-repeat-only | **rejected** | T-R1 (l. 850): 0002, 0006 retained at H = 0 |
| first-seen-every-cell | **rejected** | T-R2 (l. 862), F2-12 |
| cheapest-contiguous universal grounding | **rejected** | T-R5 (l. 882): 0007 = Join(0006, 0004) chosen over the one-Join cover |
| recurrence threshold | **not admitted** | T-R3 (l. 870): no source backs a scalar; docket rider (§7) |
| equal-scale-only relations | **rejected** | H12; T-R4 |
| semantic similarity / embedding | **rejected** | sampling Pass 1 recurrence table (l. 442); S6 item 3; S12.5 |
| "B8 says it remains, therefore retain" | **rejected** | [lab-source Pass 6](lab-source-architecture-pass-6-findings.md) §6 (l. 278); manifest SM-C12 must-not (l. 445) |
| D1 lookup / caption grammar | **rejected** | [BRD Pass 4 findings](math-execution-behavioral-read-devices-pass-4-findings.md) §14 (l. 498): `D1StateWitness ≠ RetainWhen` |
| chronological ref_A/ref_B | **rejected** | fixture l. 100–101 |
| A5 count as HCC weight; Kauffman no-slip; Rowlands nilpotency; Xiao selector; AgentScope ReAG state | **rejected** | lab-source Pass 6 §6 (l. 296–316); S12.5 |
| future / downstream-outcome selection | **forbidden** | docket §3; prefix-only |
| platform primitive as policy | **forbidden** | lab-source §9 item 4; S11.9, S11.12 |
| strictly recurrence-driven (H8 read literally) | **rejected** | same evidence as T-R1: D1 requires first-occurrence retention (§6.2) |
| root-keyed occurrence joins | **rejected** | 0006 = Join(0003, 0005), not Join(0000, 0005) `[INFERENCE]` |
| a touch counts as a covering relation | **rejected** | same row would be Join(0005, 0004) `[INFERENCE]` |
| immediate frontier collapse after every append | **rejected** | no Join(0002, 0004) after the touch `[INFERENCE]` |
| device-output-driven retention | **rejected** | C14; C13 (\(Q\) not replayable) |
| emission / boundary-event driven | **conditional** | consistent only with a crossing-set definition the tree lacks and two carve-outs (§4); needs an input not in §2.1 |
| Mechanism A — occurrence chaining, eager frontier collapse | **survives** | §6.3; reproduces D1 exactly |
| Mechanism B — occurrence chaining, single chain | **survives** | §6.3; reproduces D1 exactly |
| the sampling-driven component of any mechanism | **unconstrained** | no D1 join needs it; no specimen exercises it (§6.4) |

**Are the survivors materially different?** Yes. On the seven-word stream in §6.3 Mechanism A writes seventeen rows whose final point reaches every row; Mechanism B writes sixteen and leaves rows 0001 and 0002 unreachable from the tip. Different retained topology, different row count, different global-coverage property.

---

## 3. Why RM-A is classified as missing

1. **Source silence, established.** Graphic D shows which rows were appended, not the condition that appended them (S4.1 authority boundary l. 505–513; BRD Pass 4 §14). No panel in A–D states a retain-when; the 45-surface graphics court (BRD Pass 4 findings §2) recorded none.
2. **The rulings name a class, not a predicate.** H7/H8 say relations are found through growth by sampling; they give no condition (sampling Pass 1 findings §1, l. 72–120).
3. **Candidate exhaustion, established.** Sixteen families refuted or forbidden (§2.5), each with a receipt.
4. **Source insufficiency, certified.** [Lab-source Pass 6 §9](lab-source-architecture-pass-6-findings.md) (l. 356–373): every staked source family harvested; every cross-family chain stops at a named illegal or missing adapter; "no admissible existing evidence supplies MISSING-A". This is an **exhaustion argument over the staked sources**, not a theorem about all possible mechanisms.
5. **Non-identification, warned not proved.** The Petersen-style warning (lab-source §4, l. 204–224; docket §6) that finite fit is not mechanism identity is cited as a warning. No document in the tree proves that the accepted constraint set admits more than one mechanism.

**Therefore:** the repository proves (1), (3) and (4). It **assumes** underdetermination — the docket's "a new design/ruling is now justified" (§9, l. 371) rests on (4), and the audit's MA-H01 rests on the docket. Underdetermination relative to the accepted constraint set is **exhibited in this handoff (§6.3), in-session, by two explicit mechanisms with a script check; no tree receipt carries it yet.** The "human ruling required" framing in the tree is a consequence of the live law forbidding an agent to fill RM-A ([AGENTS.md](../../AGENTS.md) *Never*), not a finding that the mathematics needs a human.

---

## 4. The alternative framing, tested as a hypothesis

**Hypothesis E:** *Lace records actual system events rather than selecting what reality is worth remembering.* Boundary events: admitted arrivals (reduction model SUBMIT/STEP) and emissions to the outside (S9.7's \(R'\), l. 1098–1126). Ephemeral: the S3.5 cells, S3.6 handles, S12.2 candidates, device state \(Q\), rendered views.

| Evidence | Bearing |
|---|---|
| H3 every arrival lands; H10/H11 derived state is disposable; S3.5–S3.6, S12.2 candidates never Lace | **supports** the input half and the ephemeral half |
| S9.7: an emission may become a later input through Arrive/RootTouch | **supports** the loop; does not say emissions are appended |
| D1 POINTER notes ("PIE relates to DESSERT", "CUSTOMER relates to that relationship") read as records of acts | **compatible**; D1 shows no emission events and no output WORD rows — either its span has no outputs, or outputs are not appended as words. **Undecided** |
| Coffee Cup requires Impact evidence to stay pointable (S9.9) | **supports**: appended actions would be pointable |
| H1: RootTouch is appended on a seen arrival with no boundary event of its own | **contradicts E as stated**; E must add "and rule-driven appends" |
| S9.8 letter: device output has no automatic retention authority | **contradicts** unless "output" is split into local \(y_t\) and the crossing |
| Contract III, S6 item 6, B11/C11: no write-back from a projection; reduction model PROJECT emits with no state change (X3 l. 85–88; I1) | **contradicts** unless rendered views are carved out of "actual output" |
| H7 "the n+1 sampling will … show the system where to make touches" | **contradicts** if "the system" is Core; **consistent** if it is the device layer whose emissions cross |
| H7/H8 no chooser; A9 no stored meaning | **constrains**: an emission must already be pointer-shaped; extracting relations from an emitted sentence would be a semantic chooser |
| where the boundary is: hopper \(h\) and carrier \(K\) sit outside \(L\) (reduction X2 l. 39); S11.12 compute plane ≠ evidence class; platform primitive ≠ policy | **undecided**: E needs a mathematically defined crossing set; none exists in the tree |

**Result:** E is not refuted and not supported by any source sentence. It is consistent with the model only with two carve-outs (views; rule-driven RootTouch) and one new definition (the crossing set), and it relocates the selection question into whatever decides what is emitted (S12's \(\rho\), S9's \(\Delta\)) rather than removing it. Under E the D1 sparsity is emission sparsity, which D1 can neither confirm nor deny.

---

## 5. Possible conflations in the current model

| Pair | Where the model separates them | Where it may conflate them |
|---|---|---|
| observation / retention | S3.5 "sampled observation does not imply retained POINTER append" (l. 401); S4.7.1 | the STEP schema (S4.6 l. 660) and docket §2 (l. 23) frame retention as a decision **over sampled observations**; that presupposition is what E denies, and nothing in a source states it |
| derivation / retention | S4.7.1 "capability is not a trigger" | H2 ("grounds words together scaling up until 1 point represents the entire lace") is recorded as absorbed into H5/H6 as capability ([traceability](manifest-reconciliation-pass-3-traceability.md) §8 l. 227); if H2 is a process statement, that absorption conflates the other way |
| output / candidate structure | S12.3 `Candidate ≠ Evidence` (l. 2085) | S9.8 (l. 1128) uses "device output" for both the local typed \(y_t\) and what crosses to the world; S9.7 has \(R'\) but no term for the crossing |
| persistence / importance | SM-C12 must-not (manifest l. 445); S3.3; S4.7.3 row 7 | the words "warrants durable retention" (docket §2) and "retain-when" import a worth judgement into the name of the gap |
| addressability / admission | S4.7.1 premise (iv) in bold; Lemma RM-B input "already selected" | H5 "any portion can be one point" read as admission; S8 "repeated Join can ground arbitrary finite selected portions" is capability |
| implementation policy / Core law | S11 overlay court; S6.2 items 7–10 labeled repository law | "successful" arrival (REFUSE under R4 is an envelope ruling, S2 l. 142); "cheapest contiguous" in a Core refusal list (S4.6); the boundary location (X2); and **the assumption that retain-when is a Core law at all** (S0 "General SM-GAP-RM interface"; S5 Contract I contains GROUND) rather than a device or realization policy — S9.8 forbids device retention authority by repository rule, not by derivation |

---

## 6. What a genuine solution would be

### 6.1 Criteria (from the tree)

Docket §7 (l. 132–144): (1) the structural condition on lawful evidence; (2) the exact selected object; (3) a constituent-point description when the object is not already addressable points; (4) what would falsify the rule; (5) universal or class-specific. A design that cannot answer (2) is not an RM-A rule; a scalar needs an authority. Docket §8: prefix legality, replay, oracle independence, false-positive accounting, D1 without oracle tuning, the RootTouch/CheatingMemory/SidecarMemory controls, and at least one out-of-D1 specimen.

### 6.2 Satisfiability of the accepted set

Satisfiable, with one internal tension: H8 read strictly ("you find them over time as lace grows") contradicts C16 (0002 and 0006 retained with no prior repeat). The set is consistent only under the weak reading already noted by the sampling campaign ([Pass 1 findings](sampling-density-emergence-pass-1-findings.md) l. 375, A-B OPEN): a structural component fires on first occurrence and sampling adds to it. No other contradiction was found.

### 6.3 Non-uniqueness, exhibited

D1 forces five rules on any mechanism that reproduces it `[INFERENCE, script-checked]`:

1. A seen arrival gets its RootTouch and nothing else.
2. An unseen arrival at index \(j\) whose previous WORD occurrence \(p\) is covered by no non-touch POINTER appends `Join(p, j)`; if \(p\) has a touch \(t\), it then appends `Join(last, t)`.
3. An unseen arrival whose previous occurrence is covered by a non-touch POINTER appends `Join(j, R)`, \(R\) the latest such POINTER, and then a **closing step** fires.
4. A touch (`Join(occurrence, root)` written under H1) does not count as covering.
5. Operand order: two WORDs, older first; one WORD, the WORD first; two POINTERs, newer first — consistent with all six rows and with "ref_A is the described subject".

The closing step is not forced. Two mechanisms:

- **A (eager collapse):** after rule 3, join the new point to every remaining frontier element (rows not referenced by any later POINTER), newest first, until one point remains.
- **B (single chain):** after rule 3, join the new point to the most recent other frontier element once, then stop.

Script check (in-session, 2026-09-23, fixture `d1-golden-v0.1.0`): **both reproduce the eleven D1 rows exactly**, including all six operand pairs. Distinguishing stream `PIE DESSERT PIE WHOLE PIE CUSTOMER APPLE`: rows 0–12 identical under both (0 PIE, 1 DESSERT, 2 J(0,1), 3 PIE, 4 J(3,0), 5 WHOLE, 6 J(3,5), 7 J(6,4), 8 PIE, 9 J(8,0), 10 CUSTOMER, 11 J(8,10), 12 J(11,9), 13 APPLE, 14 J(13,12)); then **A** appends 15 = J(14,7), 16 = J(15,2), seventeen rows, final point reaches all; **B** appends 15 = J(14,7) only, sixteen rows, rows 1 and 2 unreachable from the tip. Both are deterministic, prefix-only, semantics-free, threshold-free, and use no forbidden input. Further freedom D1 leaves: two consecutive seen words; a seen word whose root is not 0000; a close over a frontier of three or more; the same word twice running; the collapse order within A.

### 6.4 The sampling layer is unconstrained by any specimen

The D1 stream `PIE DESSERT PIE WHOLE CUSTOMER` contains no repeated bigram. Every D1 join is explained at the word/occurrence level by rules 1–5. A mechanism whose sampling-driven component is **empty** passes every test the tree can run, while H7/H8 require that component to exist. The sampling campaign (Passes 2–5) studied recurrence on the Coffee Cup text without any retained-row oracle, so it could refute rules but never select one.

### 6.5 The smallest missing constraints, ranked by cost

1. **The scope of H2.** If "scaling up until 1 point represents the entire lace" is a requirement on growth, Mechanism B and every non-covering rule are eliminated. The tree records H2 as capability (traceability §8). One sentence from the ruling's author settles it; it is a clarification of an existing ruling, not a new choice.
2. **One sighted out-of-D1 specimen** containing a second seen word before an unseen word (the stream in §6.3 or equivalent) with its retained rows. Decides A against B and fixes the collapse order. Empirical, not a choice; docket §8 already requires it.
3. **One specimen with a repeated bigram** and its retained rows. The only thing that can constrain the sampling layer H7/H8 require.
4. **If E is pursued:** a mathematical definition of the crossing set (which reduction-model transitions count), and whether emissions are pointer-shaped.

---

## 7. Verification index

| Conclusion | Verify at |
|---|---|
| model text, lemma blocks, S4.7, receipt | `docs/math-execution-model.md` l. 108, 170, 323, 515, 551, 603, 691–767, 1096, 1328, 2345 at `b1ac324` |
| 472-claim census, 184 unstamped, 19 verdict boxes | `docs/plans/math-execution-audit-pass-1-census.md` §1, §4, §5; commit `6d988f9` |
| rulings quoted, locators | `docs/plans/math-execution-rulings-register.md` l. 24–35; the four plan files cited in §1.5 |
| 14 results, stamps, refuters | `docs/math-execution-model-theorems.md` §1–§3; pass-2 findings §3 script receipt; `666462e` |
| stamps retied, S8 identical, heading set unchanged | pass-3 findings §2–§3 (hashes `c02b75ab40d2ce38`, `7f696a70471b9c79`); `6c6e590` |
| satellite bodies byte-identical | pass-4 findings §3 (blob hashes); `6e7ff0e` |
| RM-B/RM-C lemmas, sixteen families, five questions | S4.7; pass-5 findings §2–§4; `b68a016`; lab-source Pass 6 §3–§5 l. 90–274; docket §2–§8 l. 23–159 |
| refutations T-R1–T-R5, F1-5, F1-6, A-B | `sampling-density-emergence-pass-2-findings.md` l. 850–890; `-pass-1-findings.md` l. 265, 375, 842–843, 1025–1026 |
| certificate; non-identification | lab-source Pass 6 §9 l. 356–373; §4 l. 204–224 |
| determinism, REFUSE, PROJECT, I1 | `docs/plans/reduction-pass-2-execution-model.md` l. 75–88, 106, 125 |
| D1 rows, key properties, ruled-out lines | `docs/plans/fixtures/d1-golden-v0.1.0.json` l. 12–101 |
| no equation changed by the audit | pass-6 findings §8; `git diff 5ffe011..7734ec0 -- docs/math-execution-model.md` (7 removed lines, none with `\[` `\]` `\boxed` `\mathsf` `=`) |
| the two mechanisms and the distinguishing stream | §6.3 above (re-run by implementing rules 1–5 and the two closing steps over the fixture's `word_stream`) |

---

## Evidence state

**KNOWN** — the eleven D1 rows and six operand pairs; the five key properties; the twelve rulings' sentences and where they are; that no source sentence states a retain-when; that sixteen candidate families are refuted or forbidden with receipts; that the audit changed no equation.

**PROVED** — within scope: L1–L5, Theorem G restated, Lemma WP, RD-1, OBS-1, RM-B(contig), RM-C(RootTouch), RM-C(contig); D1 replay; exactly two paths 0010→0000; ladder indices \(m+k-2\), \(2m-2\).

**DERIVED** — HOST-1, ACCEL-1, ML-1, COPY-1; STAR-1, VIEW-1; the S10.4 witnesses; the five D1-forced rules and the operand-order rule (in-session); that the constraint set is satisfiable only under the weak reading of H8.

**REFUTED** — every cell; every adjacent pair; repeat-only; first-seen-every-cell; cheapest cover; equal-scale-only; chronological slot; root-keyed occurrence joins; touch-as-covering; immediate frontier collapse; strictly recurrence-driven retention; device-output retention.

**STILL POSSIBLE** — Mechanism A; Mechanism B; every variant differing only in the unexhibited cases; any sampling-driven component including none; Hypothesis E with a crossing-set definition and two carve-outs.

**GENUINELY UNKNOWN** — the closing rule and its order; behavior in the five unexhibited D1 cases; whether the sampling layer retains anything and when; whether emissions are appended, as what, and where the boundary is; whether H2 is a requirement or a capability; whether retain-when is a Core law or a device/realization policy.

**ASSUMED BUT NOT PROVED** — that RM-A is underdetermined (the tree certifies source insufficiency; non-uniqueness is exhibited only here, in-session, without a tree receipt); that retain-when belongs to Core rather than to the device layer; that H8's discovery clause is compatible with D1 (it is, only under the weak reading); that the D1 drawing exercises the mechanism's sampling component at all (it does not); that a human ruling is required (that follows from the live law's *Never*, not from the mathematics).
