# Rust `no_std` plans — second reading

**Status:** `[PROPOSAL]` dated review. One agent. No `src/`. **Current qualification:** binary Join/root-touch/finite-sample mechanics are reconciled in unaccepted draft law; arbitrary non-root-touch relation/sample selection remains `[GAP]`.
**Station:** maps. Reads the two rust plans, the atomic map, the Pass 1 plan, the hologram IR schema, its viewer binding, the validator and both golden fixtures, the emission draft, and the IMPLEMENTATION LAW block. Writes this file and one README row. Applies no amendment.
**Relation to Pass 1:** [the Pass 1 plan](atomic-construction-pass-1-plan.md) §4 step 4 names the premise to investigate for each birth. This reading follows three of those to a consequence and hands them back. Pass 1 stays `NOT_RUN` and stays its editor's.

The two plans are careful about the gate. They are less careful about
each other. Read as one design, they contain three contradictions that no
amount of emission acceptance will resolve, one process hole that would
stop the first birth from ever finishing, and one piece of tooling that
cannot tell the plan from its opposite. These findings remain independent of the **current arbitrary-selection `[GAP]`** and of human acceptance. Most are plan/process contradictions rather than constructor questions. All of them would have surfaced on the first day anyone tried to write
`strand/`.

**Severity words used below:** *blocks-birth* — a birth cannot graduate
as written; *contradiction* — two plan sentences cannot both hold;
*mislead* — a reader of the artifact would believe something the plan
does not say; *cosmetic*.

---

## Current qualification — ROOT / TOUCH / FOLD Pass 5

This second reading is a dated analysis of the earlier Rust plans. Its F1–F11 findings and historical evidence remain as written unless explicitly qualified here.

Later law reconciliation changes the premise status of the old G2 bundle:

**Current draft-law constructor facts**
- successful word arrival appends WORD;
- unseen WORD becomes root;
- seen occurrence remains WORD and RootTouches root;
- POINTER is binary Join(a,b);
- both operands are earlier same-line entries;
- WORD and POINTER are legal operand kinds;
- Join rows may be referenced by later Join;
- repeated Join grounds finite selected samples;
- adjacency alone does not emit.

**Still unresolved**
- arbitrary non-root-touch relation/sample selection;
- semantic ordered-operand choice for an arbitrary relation assertion;
- G1 identity/tokenization;
- exact implementation ownership of selection;
- human acceptance of pointer-emission.md;
- the independent capacity/proof/test/dependency issues F1–F11 identified.

The current birth-premise reading is therefore:

| Birth | Current required premises beyond the global acceptance gate | Not assigned here |
|---|---|---|
| 1 strand/ | G7 capacity strategy, index width, failure contract; generic section preservation | relation selection |
| 2 word/ | WORD representation + accepted G1 domain needed for equality-sensitive claims | arbitrary selector |
| 3 pointer/ | binary Join layout is a draft-law premise; prove earlier/same-line evidence representation and immutable refs | arbitrary operand selection |
| 4 route/ | append/continuation composition over independently authorized sections | arbitrary relation/sample selector ownership remains open |
| 5 view_star/ | G1 identity/equality domain + read contract | relation selector |
| 6 view_proj/ | G5 read/projection fidelity | relation selector |
| 7 core/ | all required proved predecessors + arrival-surface ownership + accepted law | arbitrary selection ownership still unresolved |

This qualification does **not** decide F1(a) vs F1(b), F2's dependency edge, the proof standard, test-host carve-out, validator defects, arrival ownership, or any branch eligibility.

Known constructor \(\neq\) accepted implementation authorization.

---

## 1. Findings

### F1 — `pointer/` cannot make a forward reference unrepresentable as a zero-dependency leaf

**WHERE:** [branch contracts](rust-nostd-branch-contracts.md) Page D, `pointer/` card; [crate map](rust-nostd-crate-map.md) Page D edge table.
**HANDS CITE:** D2/D3 "Pointers reference earlier positions in the same line"; Piece 5 invariants.
**STAMP:** `[I]` `[CONFLICT]` (plan against itself)
**SEVERITY:** blocks-birth (#3)
**EVIDENCE:** The card's forbidden states say *"Self/forward/dangling/external targets admitted as valid"* must be unrepresentable. Page B defines unrepresentable: *"only if the future admitted type surface cannot express it."* The same card says *"May call: None ... it does not secretly add a runtime dependency on `strand/`."* A crate that cannot see the strand cannot see the frontier; it therefore cannot distinguish index 3 from index 9999. Under Rust's type surface, `Pointer { ref: 9999 }` is expressible in a crate that has no strand to check against. The card knows this — *"the mechanism for carrying evidence of existing/same-line/earlier status remain unstated. They must be proven at later composition"* — which moves the obligation to `route/` (#4). The `route/` card duly lists *"bypassing reference admissibility"* as its own forbidden state. So the invariant is claimed by #3 and held by #4. Birth #3's checklist line *"Forbidden states are named and blocked by the actual type/capability story"* cannot be ticked at birth #3.
**PROPOSED:** Choose one, in writing: **(a)** `pointer/` may call `strand/` (read-only) and a POINTER value can only be constructed with a frontier witness — backward-only becomes a type law at #3, the edge count goes from nine to ten, the DAG and birth order are unchanged; or **(b)** `pointer/` stays a layout leaf, its forbidden-states box drops the forward/dangling line and says *representable here, rejected at `route/`*, and `route/` carries two theorems. (a) matches the law's *"forbidden states are unrepresentable"*; (b) matches *"one branch, one task"* less well, since #4 would then own admissibility and composition. Pass 1 step 4 row 3 asks exactly this. The answer is not "later composition"; it is one of these two.

### F2 — `view_star/` cannot group by value without `word/`'s equality or a second rule

**WHERE:** branch contracts Page E, `view_star/` card; crate map Page D.
**HANDS CITE:** D5 (PIE at 0000 and 0003 are one star); Piece 7.
**STAMP:** `[I]` `[CONFLICT]`
**SEVERITY:** contradiction; blocks-birth (#5)
**EVIDENCE:** The card: *"May call: `strand/`, read-only. No `route/` call and **no new dependency on `word/`**. ... this branch cannot invent a second equality rule or duplicate a normalization procedure."* Reading a star means grouping occurrences whose WORD values are equal. The only equality the plan admits is `word/`'s `value_equal`, and `word/` is the crate `view_star/` may not call. `strand/` cannot offer it: it is born before `word/` and *"must not depend on implementations in not-yet-born `word/`"*. Comparing raw payload bytes inside `view_star/` is a second equality rule — bytewise — which the `word/` card explicitly does not choose. The crate map lists *"how views receive values without duplicating word identity"* as an open composition obligation; the branch card closes it by forbidding the only edge that discharges it.
**PROPOSED:** Add the read-only edge `view_star/ → word/` for `value_equal`. Eleven edges with F1(a); still a DAG; `word/` is born before `view_star/`. Pass 1 step 4 row 5 asks this; the answer is the edge.

### F3 — Neither layout card names its constructor, and the constructor decides the graph

**WHERE:** branch contracts Page D, `word/` and `pointer/` "Public surface" lists.
**HANDS CITE:** Piece 3/4 (an arriving occurrence becomes a WORD section); D2 layout.
**STAMP:** `[I]` `[GAP]`-adjacent (a plan omission, not a source silence)
**SEVERITY:** contradiction (with Page B's "names only" completeness) and the root of F1/F8
**EVIDENCE:** `word/` allowed ops are `value`, `value_equal`. `pointer/` allowed op is `references`. Both lists are read-side only. Page B says the public-surface lists are complete: *"Public-surface lists contain names only"* and an op absent from the list is unrepresentable. Under that rule, no crate can construct a `WordSection` from arriving bytes: `strand/` cannot (born first, must not know the layout), `route/` cannot (does not own the layout), and `word/` does not list one. Same for a POINTER: `pointer/` lists `from_unchecked_indices` as *absent*, which implies a checked constructor exists — but does not list it. The constructor is the single most consequential op in each card, because *where it lives is the dependency edge*: a POINTER constructor that takes a frontier witness is F1(a); one that takes bare indices is F1(b).
**PROPOSED:** Each layout card lists its constructor by name, states what it takes (bytes verbatim for WORD; indices plus witness for POINTER), and states what it cannot do (normalize; forge). This is a card completion, not a new door.

### F4 — `strand/` is blocked by capacity, not by emission, and no table says so per birth

**WHERE:** branch contracts Page B and `strand/` proof shape; crate map Page G; [atomic map](../atomic-primitives-map.md) G7.
**HANDS CITE:** A1 (start empty), D1 footer (one line), the law's *"no alloc unless a FIRST-PARTY branch exists whose ONE task is alloc"*.
**STAMP:** `[I]` `[INFERENCE]`
**SEVERITY:** blocks-birth (#1); mislead (a reader concludes emission is the only gate)
**EVIDENCE:** `alloc` is absent from all seven births. Under `#![no_std]` with no allocator the retained line can only live in a fixed-size array, a caller-supplied backing slice, or a linker-placed region — each is a premise the storage theorem depends on. The `strand/` proof shape is stated *"for ... sufficient declared resources"*; Page B says *"if a branch's claimed theorem needs one, the unresolved premise blocks that claim."* So birth #1 is blocked by G7 whether or not the reconciled pointer law is eventually accepted. The atomic map says this in one sentence (*"Closing G2 ... does not automatically close G1 or G3–G7"*). No document says which gap blocks which birth. A reader of the crate map's Page G — *"Depend on no later birth"* for `strand/` — concludes that once emission is accepted, `strand/` can begin. It cannot.
**PROPOSED (dated):** the original birth × premise table below was written before H1–H6 / Pass-4 law reconciliation. Use the **Current qualification** table above for present premise status; preserve this older table as the proposal F4 originally made.

| Birth | Historical proposed premise at this reading | Historical note |
|---|---|---|
| 1 `strand/` | G7: capacity strategy, index width, failure signal; section type left parametric | then listed G1/G2 as not needed |
| 2 `word/` | G1 representation | then listed broad G2 as not needed |
| 3 `pointer/` | then-open arity / slot / frontier witness | arity is now superseded by binary Join; frontier issue F1 remains |
| 4 `route/` | then-broad G2 timing / target selection | current residual is arbitrary relation/sample selection |
| 5 `view_star/` | G1 identity + G4 read | still independent of constructor arity |
| 6 `view_proj/` | G5 fidelity | still independent of constructor arity |
| 7 `core/` | all predecessors + arrival home | selector ownership remains unresolved |

The law gates *all* code on emission acceptance; this table does not loosen that. It says what *else* must be accepted, birth by birth, so that acceptance of emission is not mistaken for the whole gate.

### F5 — "Proven" has no evidence standard, so birth #1 cannot terminate

**WHERE:** [law](../law-why-these-documents.md) IMPLEMENTATION LAW and POSTURE; branch contracts Page G checklist; crate map Page G.
**HANDS CITE:** the law: *"iterate that branch until the task is mathematically stated and proven / then and only then may another branch exist"*; *"proofs or proof-shaped invariants live in OUR branches"*; *"Those names are a HEIGHT. They are not crates."*
**STAMP:** `[H]` (process) `[GAP]` in the plan, not the source
**SEVERITY:** blocks-birth (all seven, serially)
**EVIDENCE:** The serial order advances only on "proven". The plan lists what evidence is *not* sufficient — *"Tests, examples, model agreement, and a compiling build are distinct evidence"* — and defers what *is*: *"Any additional human requirement for a written proof note must be identified and met."* Coq, seL4 and the rest are named as a bar and forbidden as imports. No document states what artefact discharges "proven" for one door. Under that silence, birth #1 can be complete and correct and still never graduate, because no one can say it has. Every later birth waits on it.
**PROPOSED:** `[PROPOSAL]` for the human to accept or replace — a minimum standard per door: (i) a proof note at `docs/proofs/<door>.md` with theorem, premises, argument, and the exact reviewed revision; (ii) one `compile_fail` witness per forbidden state in the card (needs F6); (iii) one bounded exhaustive check per allowed op over the declared finite domain (needs G7); (iv) the human's acceptance line naming the SHA. Whatever the standard, its absence is the finding.

### F6 — "No test exception" as written forbids `cargo test`

**WHERE:** branch contracts Page G checklist and `core/` card; crate map Page F.
**HANDS CITE:** law: *"If a crate did it for you, you may not do it"*; IMPLEMENTATION LAW *"no std"*.
**STAMP:** `[H]` `[CONFLICT]` (plan against Rust)
**SEVERITY:** blocks-birth (F5 cannot be met without a test path)
**EVIDENCE:** Page G: *"`#![no_std]` applies to the entire effective build; there is no silent `alloc`, `std`, or test/helper exception."* `core/`: *"no `std` feature, test-mode exception or generated helper may introduce it."* Rust's built-in harness links `std` into the *test binary*; the library under test stays `#![no_std]`, the binary that runs its tests does not, and the idiom is `#[cfg(test)] extern crate std;`. The plan's wording forbids that binary. Under that reading `cargo test`, doctests and `compile_fail` doctests are all unavailable, and the only lawful path is a first-party `#![no_std]` test runner — an eighth birth the plan does not have and the law would require to be proven before anything it tests. The IR plan has already made the distinction the rust plans need: [hologram-ast-ir.md](hologram-ast-ir.md) §5, *"The extractor that feeds Layer III may be a separate host tool (std allowed on the host) that never becomes a Core dependency."*
**PROPOSED:** State the same carve-out for proof and test binaries: the shipped library artefact is the "effective build"; host-side test and proof binaries may link `std` and are not dependencies of any door. One sentence in Page G. Without it F5 has no evidence path at all.

### F7 — The golden fixture's validator cannot tell the plan from its opposite

**WHERE:** [tools/hologram-ir-shape-check.py](tools/hologram-ir-shape-check.py); [hologram-ast-ir.md](hologram-ast-ir.md) §3.8; [viewer binding](hologram-ast-ir-viewer.md) §8 item 11.
**HANDS CITE:** none needed — this is tooling against the plan, not against the source.
**STAMP:** `[III]`
**SEVERITY:** mislead ("golden", "validator PASS")
**EVIDENCE:** Run on this tip. The golden passes. Six mutations of the golden were then validated:

| Mutation of the golden fixture | Validator |
|---|---|
| all six `birth_before` edges reversed — `core` born first | **PASS** |
| add `call core → strand` — the bypass the `core/` card forbids | **PASS** |
| add `call strand → core` — a dependency cycle | **PASS** |
| add `call view_proj → route` — a view reaching the append door | **PASS** |
| delete all nine planned `call` edges | **PASS** |
| flip one `transforms[].emission_touch` to `true` | FAIL |

The validator checks that ids exist, endpoints are doors, and one honesty flag is false. It does not check the graph against the plan it is named for. §3.8 requires diagnostics for *"cycles vs planned DAG"*; the closest thing to an extractor in the tree does not produce them. Acceptance item 11 — *"endpoint ∈ doors and transform.door_id ∈ doors"* — is met and is shape-only. A fixture that a wrong plan also satisfies is not golden.
**PROPOSED:** The validator carries the plan as data: the seven ids *in birth order*, the nine (or eleven, after F1/F2) permitted call edges, and rejects any `birth_before` edge that is not adjacent-in-order, any `call` edge not in the permitted set, and any cycle. Twenty lines. Until then, "validator PASS" should not appear in an acceptance list.

### F8 — The IR's dataflow pipeline animates a step the cards do not define

**WHERE:** golden v0.2.0 `transforms[]` and `dataflow` edges; [hologram-ast-ir.md](hologram-ast-ir.md) §4; viewer §3.
**HANDS CITE:** Piece 3 (arrival supplies occurrences); Piece 2.
**STAMP:** `[III]` `[INFERENCE]`
**SEVERITY:** mislead
**EVIDENCE:** The golden's transform sequence is `describe_word (word) → constrain_pointer (pointer) → compose_section (route) → retain_section (strand) → …`, and it carries `dataflow` edges `word → route` and `pointer → route`. The viewer moves an orange token along that path. But under the cards, `word/` and `pointer/` have no producing op (F3): they *read* sections that already sit on the strand. Nothing flows *out of* `word/` into `route/` at runtime; `route/` *uses* `word/`'s layout, which is a `call`, and the viewer binding §2 itself warns *"Collapsing `call` into `dataflow` confuses control/use with carrier movement."* The only thing that flows into `route/` is an arrival, and Arrival is a seam band in this IR, not a door. So the picture shows `word/` producing values. The plan says Arrival does. This is the persuasive-wrong-artifact pattern: read-only, fixture-honest, every diag present, and the pipeline it draws is not the pipeline the cards describe.
**PROPOSED:** Wait for F3. If the cards give `word/` and `pointer/` constructors, the dataflow `word → route` is real and stays. If they do not, the dataflow edges become `arrival(seam) → route → strand`, and `word → route` / `pointer → route` are `call` only. The fixture follows the cards, not the other way round.

### F9 — Historical false gaps in the old emission draft (now reconciled)

**WHERE:** [pointer-emission.md](../pointer-emission.md) §4, sub-questions 1 and 2. Law station — not edited here.
**HANDS CITE:** D3 *"later entries can reference words or other pointers"*; D6 chain; D1 rows 0007 (→0006, 0004), 0009 (→0008, 0007), 0010 (→0009, 0002).
**STAMP:** `[CONFLICT]` (draft against source)
**SEVERITY:** mislead (a `[GAP]` where the picture speaks)
**EVIDENCE:** The draft asks *"May a POINTER target another POINTER as a general rule, or only in the D6 example chain? Answer: `[GAP]`"* and *"May a POINTER target only WORD? Answer: `[GAP]`."* The crate map (Page H), the branch contracts (source difference 2), the atomic map (K3) and [the close reading](../graphics-close-reading.md) §1 each state that D3 grants the permission in words and D1 witnesses it three times. The law's own rule is *"Mark `[GAP]` where the source is silent."* The source is not silent on kind. It is silent on *when*, and that stays open.
**Current status:** Pass 4 reconciled this later. WORD/POINTER operand kinds, binary arity, RootTouch, and adjacency-alone=false are now current draft-law facts. **Arbitrary relation/sample selection remains `[GAP]` and acceptance remains absent.** F9 is retained as the dated finding that correctly identified the target-kind false gap before that reconciliation.

### F10 — One task, three views; and the order puts the cheapest view behind the hardest premise

**WHERE:** branch contracts Page E, `view_proj/` one-task sentence; Page G serial order.
**HANDS CITE:** C2 (1D presentation), C11, D4.
**STAMP:** `[III]` `[PROPOSAL]`
**SEVERITY:** cosmetic-to-mislead
**EVIDENCE:** `view_proj/` is *"Present the strand as a read-only 1D, 2D or 3D shadow."* Three views is arguably three tasks under *"one branch, one task."* Separately: the 1D view needs only a strand read (F4 table), while `view_star/` (#5) needs G1-identity, the hardest open premise. The serial order is law; the *assignment* of tasks to births is plan. As assigned, the one view that needs no open premise waits behind the one that needs the worst.
**PROPOSED:** Either state that `view_proj/`'s one task is the 1D view and 2D/3D are later births, or accept that the 1D shadow — the thing [the projection brief](lace-projection-brief.md) already plans as a data-only artifact — will be born last among the views for no source reason.

### F11 — No door receives a word

**WHERE:** crate map Page A (*"The absence of an arrival/ folder is a layout choice"*); branch contracts `core/` card; [hologram-ast-ir.md](hologram-ast-ir.md) §4 (*"Arrival (Contract II surface — not a Core door)"*).
**HANDS CITE:** Piece 3; manifest Contract II.
**STAMP:** `[II]` `[GAP]` in the plan
**SEVERITY:** blocks-birth (#7)
**EVIDENCE:** Contract II is deliberately not a door: *"Arrival remains necessary as a thin surface. It must not own a vocabulary or second history."* Correct as a contract. As code, something must receive bytes and call `route::Continue`. `core/` *"adds no row, store, identity rule or business operation"* and only delegates. Under `#![no_std]` there is no `main` unless a crate declares an entry point, and *"no I/O surprise"* is law. The plan therefore has no place for the function that turns an arrival into a call. It is either an eighth crate the plan refuses, or a `core/` responsibility the `core/` card does not claim.
**PROPOSED:** `core/`'s one task names it: *compose the proved doors and expose the arrival surface as a function taking an already-segmented occurrence*. Segmentation (G1) stays outside. Nothing else changes.

### Lesser notes

| Note | Where | Consequence |
|---|---|---|
| `P1` means *occurrence at a position* in the atomic map and *Piece 1, continuous strand* in the IR golden and schema — both in `docs/plans/` | atomic map §1; hologram-ast-ir §3.3b | Pass 1's crosswalk will collide on its own identifiers. Prefix one family (`AP0–AP4`) before Pass 1 runs. |
| The golden's `layer_III` seam holds P12 and P13 only; the manifest lists Layer III as *"Piece 13, plus 3D pictures of Pieces 7, 12, 15"* and the crate map files Piece 12 as a *reading of Core* | golden `seams[]`; crate map Page C row 12 | The Manifest-mode picture places Dimension outside Core. Minor; worth one line in the fixture note. |
| Nine edges become eleven under F1(a) + F2 | crate map Page D | Still acyclic; birth order unchanged; the "nine" appears in four documents and the golden. |

---

## 2. What this reading does not find

Stated because C10 requires evidence at its actual strength, and because
the plans get a great deal right.

- The gate is respected everywhere. No document claims acceptance, no stub, no `src/`. Verified by tree inspection on this tip.
- The nine-edge table is acyclic and every edge points to an earlier birth. Verified by hand.
- The anti-crate table (crate map Page E) and the forbidden-ops lists are the strongest part of the plan. Nothing here weakens them.
- The slot-assignment gap, the interior-mutability caution, the `no_std`-is-not-proof caution, and the finite-resource refusal are all correct and correctly placed.
- The IR plan's host-tool split (§5) is the right idea and is the model for F6.
- The Pass 1 plan's step 4 already lists the F1/F2/F4 seams as questions. This reading agrees with the questions and supplies the consequences.
- The viewer loads nothing from a CDN and fetches one relative path. Verified by grep.

---

## 3. Amendments proposed, none applied

| # | Amendment | From | File | Station | Decides |
|---|---|---|---|---|---|
| A1 | `pointer/` may call `strand/`; POINTER constructor takes a frontier witness — *or* the forbidden-state line moves to `route/` | F1, F3 | branch contracts, crate map Page D | maps | human, after Pass 1 |
| A2 | `view_star/` may call `word/` for `value_equal` | F2 | branch contracts, crate map Page D | maps | human, after Pass 1 |
| A3 | Both layout cards name their constructor | F3 | branch contracts | maps | Pass 1 editor |
| A4 | Birth × premise table | F4 | branch contracts Page G | maps | Pass 1 editor |
| A5 | Evidence standard for "proven" | F5 | new `docs/proofs/` convention, or Page G | law | human |
| A6 | Host-tool carve-out for test/proof binaries | F6 | branch contracts Page G | maps | human |
| A7 | Validator carries the plan as data; rejects wrong order, wrong edge, cycle | F7 | `tools/hologram-ir-shape-check.py` | maps | its author — **still open.** Iteration 4 pass 5 renamed the tool rather than repairing it; A7 is the repair and it waits on A1–A10 settling |
| A8 | Golden dataflow follows the cards once A3 lands | F8 | golden fixture, viewer §3 | maps / hologram | its author |
| A9 | Close the two §4 kind sub-questions in the draft, in words | F9 | `docs/pointer-emission.md` | law | human only |
| A10 | `core/` names the arrival function | F11 | branch contracts | maps | Pass 1 editor |

Every row is `[PROPOSAL]`. None supplies the still-open arbitrary relation/sample selector or human acceptance. A1–A2 change the edge
count, which four documents and the golden repeat as "nine"; whoever
applies them updates all five.

---

## 4. Answer to Pass 1's next narrow question

The Pass 1 plan ends: *"Beyond the global implementation gate, which
claimed guarantee in the seven-card construction first depends on a
premise whose provider is missing, circular, or later in the required
birth order?"*

In birth order: **#1 `strand/`** depends on *"an independently admissible
immutable section"*, whose provider is `route/` (#4) — later. This one
dissolves if `strand/` is generic in its section type, which its own card
already implies (*"must not depend on ... not-yet-born `word/` or
`pointer/`"*); then admissibility is a parameter, not a premise. The first
guarantee that does **not** dissolve is **#3 `pointer/`**: *"forward
targets unrepresentable"* needs a frontier, whose only provider is
`strand/` (#1) — earlier, and reachable — but the plan's call table
forbids the edge. That is F1. Its provider is neither missing nor circular
nor later. It is one row away in a table the plan will not let it read.

---

## 5. Receipt

| Field | Observed |
|---|---|
| Tip | Read at `49117e4`. Between that tip and `663a65c` the incoming commits touched only `docs/clock/`; none of the files cited here changed (`git diff --name-only`, checked before commit). Maps claimed through `coord.sh`. |
| Read in full | crate map (A–H, X); branch contracts (A–H, X, all seven cards); atomic map §§1–7; Pass 1 plan §§1–7; hologram-ast-ir §§0–9; viewer binding §§0–9; validator source; both golden fixtures; emission draft; law IMPLEMENTATION LAW, POSTURE, STILL FORBIDDEN, STEWARD TEST; plans README; hologram README row. |
| Ran | `hologram-ir-validate.py` on the golden (PASS). Six mutations of the golden through the same validator (five PASS, one FAIL — table in F7). `grep` for external loads in `nostd-pipeline.html` (none). Repository link check (green on this tip before this file). |
| Did not | Hold a cord. Write or compile any Rust. Run Pass 1. Edit any plan, the draft, the golden, the validator or the viewer. Consult independent reviewers — one agent proposed, attacked and resolved. |
| Physical / graphics | Graphics A–D read earlier in this session at source resolution; D1's eleven rows re-checked against the atomic map's transcription. Physical test: `NOT_PERFORMED`. |
| Acceptance | `ABSENT`. Pass-4 law reconciliation did not change this; this file accepts nothing and opens nothing. |

**Next narrow question:** which of A1(a) and A1(b) does the human want —
backward-only as a type law at birth #3 with a tenth edge, or a layout
leaf whose invariant is held one birth later? Nothing downstream can be
drawn until that is answered, and it is not an emission question.

**STOP.**

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

You can tie a knot that refers to an earlier wrap. You cannot tie one that
refers to a wrap you have not made. A crate that cannot see the cord
cannot tell the difference. **Binary Join is now a current draft-law premise; arbitrary relation/sample selection remains `[GAP]`, and acceptance remains absent.**
