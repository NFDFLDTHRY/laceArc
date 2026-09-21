# Mathematical execution model — ROOT / TOUCH / FOLD campaign — Pass 6 PLAN

**Status:** **EXECUTED 2026-09-21 — PASS 6 COMPLETE.**
**Name:** SELECTION / ASSERTION / PROVENANCE
**Planning station:** maps (Astra-selection).
**Pinned main before claim:** a2796948118d91753f45c68a00a73ff7d5cdb4cf.
**Maps claim:** 9a3f3796f180313232768d7270990ecb704b19a2.
**Depends on:** ROOT / TOUCH / FOLD Passes 1–5, current pointer-emission/manifest reconciliation, Global ASCII Pass 29, and gate-question-surface Pass-1 census.
**Implementation:** no src/. No Cargo. No branch birth. No selector stub.
**Acceptance:** ABSENT.
**Current constructor:** fixed in reconciled draft law.
**Current unresolved Core-adjacent question:** arbitrary non-root-touch relation/sample selection.

Pass 6 does not begin by assuming the remaining hole is an automatic selector algorithm.

Its job is to determine what kind of hole it actually is.

---

## 0. Why Pass 6 exists

Passes 1–5 established:

\[
\mathsf{Arrive}(v)\Rightarrow\mathsf{WORD}(v)
\]

\[
\neg Seen(v)\Rightarrow\text{new WORD becomes Root}(v)
\]

\[
Seen(v)\Rightarrow\mathsf{Join}(\text{new occurrence},Root(v))
\]

\[
\mathsf{Join}(a,b)=(\mathsf{POINTER},a,b)
\]

with ordered earlier same-line WORD/POINTER operands.

For a selected finite sample:

\[
P_1=s_1,\qquad P_{n+1}=\mathsf{Join}(P_n,s_{n+1}).
\]

Pass 3 proved:
- one selected finite portion can become one later point;
- grounded branches can be joined;
- one final point can cover a whole finite Lace prefix;
- D1's six POINTER rows all use the same physical Join constructor.

Pass 4 admitted:

\[
\text{selected ordered operands}\longrightarrow\mathsf{Join}
\]

as the constructor boundary.

Pass 5 propagated the remaining hole as:

\[
\boxed{\text{arbitrary non-root-touch relation/sample selection}}
\]

But the word selection may hide an assumption:

> Core itself must automatically choose an arbitrary relation/sample.

That has not been proved.

Pass 6 asks:

\[
\boxed{\text{Is an automatic chooser actually required by the source?}}
\]

or is the unresolved thing instead:

\[
\boxed{\text{the provenance / authority / ownership of a relation assertion}}
\]

with Join already mechanical once that assertion is present?

---

## 1. New planning input: gate-question-surface Pass 1

Between Pass 5 and this planning claim, main gained:

- commit 8d58d55e5348afd16040ce45ada9a5768d39b70a
- maps release a2796948118d91753f45c68a00a73ff7d5cdb4cf
- gate-question-surface-pass-1-plan.md
- gate-question-surface-pass-1-census.md

Pass 6 must use that census.

Important constraints from it:

1. pointer-emission.md's Current question table is not the full open-question inventory.
2. Operand semantic ordering is a distinct neighboring question.
3. The gate campaign's Pass 2 owns the narrower test of whether ref_A is the described subject. It does not own the general chooser.
4. Closure provenance must be distinguished:
   - picture-closed
   - ruling-closed
   - inference-closed
5. Arity is current law by ruling/inference, while graphics-only close reading does not independently fix it.
6. Pass 6 must not silently convert an inference into a picture claim.
7. Acceptance of pointer-emission.md alone does not automatically answer all manifest open questions.

### Non-overlap rule

ROOT / TOUCH / FOLD Pass 6 will not:
- redo the gate census;
- solve ref_A / ref_B semantic slot ordering;
- edit the gate-question campaign's products;
- close other manifest questions merely because they bear on implementation.

It consumes their findings as constraints.

---

## 2. Pass-6 thesis

> The remaining word “selection” must be decomposed before anyone tries to implement or solve it.

There are three logically different questions.

### Q6-A — Construction

Given an ordered relation/sample, can Lace make the point?

**Current answer:** yes.

### Q6-B — Necessity

Does current source law require Core to automatically originate arbitrary non-root-touch relation assertions?

**Not yet established.**

### Q6-C — Provenance / authority

If a non-root relation is to be written, what authoritatively supplies the ordered operands/sample?

**Current GAP.**

Pass 6 succeeds if it proves which of Q6-B/Q6-C is the real residual, or proves that the sources are insufficient to distinguish them.

It fails if it merely renames Select.

---

## 3. Analytical notation — not a new API

Pass 6 may use one neutral symbol:

\[
\rho
\]

where rho means an already-specified ordered relation/sample to be physically grounded.

For a pair:

\[
\rho=(a,b)
\]

For a finite sample:

\[
\rho=(s_1,\ldots,s_n).
\]

Construction is already known:

\[
\mathsf{Construct}(\rho)=\mathsf{Join}/\mathsf{Ground}.
\]

The unresolved question is:

\[
\operatorname{Origin}(\rho)=?
\]

### Hard fence

rho is analysis notation only.

Pass 6 must not turn it into:
- a row type;
- a queue item;
- a hidden Contract-II field;
- a command;
- a Rust type;
- a UI event;
- a Layer-III write;
- a new interface;
- stored semantic metadata.

The point of rho is to avoid assuming a function named Select.

---

## 4. Source stack for Pass 6

Read in this order:

1. Graphics A–D / current source transcriptions.
2. systems-manifest.md:
   - Piece 2 governing rule;
   - Piece 5 binary Join;
   - Pieces 7–12 touch/routes/dimension;
   - system-level composition/interfaces;
   - Contract I / Contract II / Layer III seams;
   - current selection boundary;
   - all 11 current open questions.
3. pointer-emission.md current reconciliation and selection boundary.
4. math-execution-model.md current model.
5. ROOT / TOUCH / FOLD Pass-3 findings:
   - H4–H6;
   - sample-size interpretations;
   - finite-sample theorem;
   - whole-prefix covering theorem;
   - D1 replay;
   - residual selection input.
6. Pass-4 selection placement matrix S-A…S-E.
7. Pass-5 findings / active-status census.
8. gate-question-surface Pass-1 census.
9. graphics-close-reading.md, especially D1 row semantics and current source-only open questions.
10. Global ASCII Pass 29 only as a derived systems reading.

Adjacent books / conceptual references remain anti-import evidence only.

---

## 5. Phase A — D1 relation-provenance audit

**Station:** maps.

No law edit in Phase A.

Audit all six D1 POINTER rows individually:

| D1 row | Current Join | Known role |
|---|---|---|
| 0002 | Join(0000,0001) | pair / ground relation |
| 0004 | Join(0003,0000) | RootTouch |
| 0006 | Join(0003,0005) | pair / ground relation |
| 0007 | Join(0006,0004) | relation joins relation |
| 0009 | Join(0008,0007) | point joins grounded relation |
| 0010 | Join(0009,0002) | grounded branch joins grounded branch |

For each row record:

1. Are the operands source-visible?
2. Is physical construction closed?
3. Is operand provenance source-visible?
4. Can operand choice be derived from LAND/root alone?
5. Can it be derived from the n+1 constructor alone?
6. Does a proposed provenance rule add extra rows absent from D1?
7. Is the cause picture-closed, ruling-closed, inference-only, or open?
8. Does the row prove an automatic chooser, or only that a relation was asserted?

### Control case

0004 is the control:

\[
\mathsf{Join}(0003,0000)
\]

Its provenance is ruled:
new occurrence + root.

The other five are the audit subject.

Do not prejudge their result.

---

## 6. Phase A — punch-card interpretation attack

Pass 3 contains the sentence:

> If higher-level punch-card law says which sample is active, the Core append sequence is fully determined by Join.

Pass 6 must test what “punch-card n+1” can lawfully mean.

### PC-1 — selected-sample ladder

Given a sample S, n+1 extends that sample by one selected point.

Already mathematically established.

Question:
- does this imply how S was chosen?

Expected distinction:
constructor capability vs provenance.

### PC-2 — whole-prefix after every arrival

Hypothesis:

> after each arrival, automatically ground the entire current prefix to one point.

Build the exact predicted row trace for D1's five-word arrival sequence.

Compare:
- row count;
- row order;
- references;
- extra rows;
- missing D1 rows.

**Falsifier:** any universally-required row absent from D1, or any D1 row not accounted for.

Pass 6 may refute this interpretation if the exact trace fails.

It may not silently replace it with another schedule.

### PC-3 — one active sample, persistent across arrivals

Hypothesis:

> one currently active sample ladder grows by n+1 as the punch card advances.

Questions:
- where is active-sample identity stored?
- can it be derived from Lace alone?
- does D1 show one ladder or branched simultaneous samples?
- do 0007 / 0010 force branch composition inconsistent with one active left fold?

No hidden state may be assumed.

### PC-4 — materialize every possible portion

Hypothesis:

> H5 “any portion can reference any other portion” means automatically materialize all possible finite portions.

Attack:
- D1 exact-row witness;
- no-collapse;
- append explosion;
- absence of a sample registry;
- capability vs obligation distinction.

If this predicts relations the witness does not contain, refute it as a universal rule.

### PC-5 — branched local samples

Pass 3 established:

\[
p=\mathsf{Join}(p_A,p_B)
\]

is legal and needed to describe D1 structure.

Pass 6 asks only:
- does branch legality determine which branches combine?

Do not confuse legal composition with provenance.

---

## 7. Phase A — ownership / interface hypothesis board

Evaluate these as placement classes, not algorithms.

### O-A — automatic Core chooser

\[
Select(L,v)\rightarrow\rho
\]

Current Pass-4 status: BLOCKED.

Pass 6 asks whether any source actually makes automatic choice a mandatory Core responsibility.

To upgrade O-A, evidence must establish more than:
- capability;
- an example relation;
- “participate” prose;
- D1 operands.

It must establish that Core itself originates the relation choice.

### O-B — raw Contract-II relation payload

\[
(v,\rho)
\]

Current Pass-4 status: REFUTED under punch-card word input.

Reopen only if a source actually gives Contract II relation metadata.

### O-C — structural active-sample law

\[
(L,v)\mapsto\rho
\]

without semantic meaning or side state.

This is the punch-card candidate class.

It must survive:
- D1 exact rows;
- branched grounding;
- no hidden boundary;
- no sample registry;
- no extra state.

### O-D — route/document/definition boundary chooses relation

Current status: BLOCKED.

Re-test only against explicit source text.

Document or C6 family names are not selection metadata unless the source says so.

### O-E — Layer-III / UI / query assertion

An explicit relation operation from outside Core.

Current status:
- no write/query interface exists;
- Layer III is read-only.

Pass 6 may conclude:
**new ruling/interface would be required**.

It may not create that interface.

### O-F — relation assertion as constructor precondition only

Current S-E boundary:

\[
\rho\longrightarrow\mathsf{Join}/\mathsf{Ground}.
\]

Question:

> Is that all current Core law actually requires?

If yes, the remaining GAP should be described as relation-assertion provenance / authority / ownership, not as an unfinished automatic Core algorithm.

This result would not tell us who supplies rho.

### O-G — source insufficient

If the sources cannot distinguish O-A from O-F, preserve both and stop.

No preference by software convenience.

---

## 8. “One operator” contradiction test

The manifest says:

> arrive → append section → participate in existing sections by routing/pointing → continue

and:

> one irreducible contract (Lace Core)

Pass 6 must confront this directly.

Questions:

1. Does “participate” mean Core selects relations, or Core executes a supplied relation assertion?
2. Does “one operator” constrain storage/morphism only, or provenance too?
3. Can a relation assertion be outside Core without creating a second Core engine?
4. If no existing interface supplies the assertion, is that evidence the selector must be internal, or simply an unresolved interface/authority hole?
5. Does D1 settle this?
6. Do H5/H6 settle it?

Do not use “irreducible Core” as proof of a chooser without the missing premise.

---

## 9. Capability vs obligation proof

Pass 6 must explicitly separate these statements.

### Capability

H5:

> any portion of lace can reference any other portion of lace be one point.

Mathematically:

\[
\forall S\in\text{finite addressable portions},
\quad
\exists p:
\operatorname{Reach}(p)\supseteq S.
\]

### Automatic obligation

A much stronger statement would be:

\[
\forall L,v,
\quad
\text{Core must choose a particular }S(L,v)
\]

or:

\[
\forall S,
\quad
\text{Core eventually materializes }S.
\]

Pass 6 must identify whether any current source/ruling supplies the quantifier shift from can to must choose.

If not, it must not be assumed.

---

## 10. D1 schedule-strength test

D1 serves at least three roles:
- row-format witness;
- binary/recursive Join witness;
- concrete relation specimen.

Pass 6 asks whether it is also a provenance/schedule witness.

For each non-root row, distinguish:

\[
\text{D1 shows }\rho
\]

from:

\[
\text{D1 explains why }\rho.
\]

A depicted operand pair does not automatically explain its own origin.

### Hard rule

Do not infer:

> because D1 contains Join(a,b), Core selected a,b from L.

That is exactly the proposition under test.

---

## 11. Neighboring questions held out of scope

The gate-question census found additional questions that bear on implementation.

Pass 6 keeps them visible but separate:

- word identity / tokenization;
- operand semantic ordering;
- concurrency / multi-writer append;
- eventual-reference rule;
- C6 route-family labels;
- document/conversation/provenance boundaries;
- read/query/traversal;
- projection remainder;
- multi-Lace/snapshot/export.

### Especially operand ordering

Gate-question Pass 2 owns:

> does D1 settle ref_A as described subject?

ROOT / TOUCH / FOLD Pass 6 owns:

> who/what supplies the relation that has an ordered subject/object pair at all?

Do not merge them.

---

## 12. Pass-6 outcome classes

Phase A must end in exactly one primary verdict.

### V-A — AUTOMATIC-CORE-REQUIRED

Evidence establishes that current Core must originate arbitrary non-root relation choices.

Then:
- the automatic selector remains a genuine Core GAP;
- Pass 6 does not invent it;
- produce an exact minimal ruling/problem statement for the human.

### V-B — PUNCH-CARD-LAW-ESTABLISHED

A source/ruling establishes a deterministic active-sample rule and it survives D1 exactly.

Then:
- state that rule at source strength;
- classify its authority;
- do not call it picture-closed if it depends on ruling/inference;
- still do not implement.

This is a high bar.

### V-C — ASSERTION-PROVENANCE GAP

Current Core law requires:
- relation assertion / ordered operands as precondition;
- mechanical Join/Ground afterward;

but does not establish an automatic Core chooser.

Then the remaining hole is reclassified:

\[
\boxed{\operatorname{Origin}(\rho)=\text{GAP}}
\]

or, in prose:

> relation-assertion provenance / authority / ownership.

This does not create an assertion interface.

### V-D — NEW-INTERFACE-RULING REQUIRED

The source requires non-root relation assertions but no current legal contract surface can carry them.

Then:
- identify the exact missing interface decision;
- state why Contract II, Layer III and current Core seams cannot host it as written;
- send one bounded ruling question to the human.

No interface is invented.

### V-E — MIXED

Example:
- RootTouch provenance automatic/closed;
- some punch-card grounding provenance source-defined;
- remaining arbitrary relations still lack provenance.

Record per-class scope.

### V-F — INSUFFICIENT / CONFLICT

If current sources do not distinguish the models, preserve alternatives.

No invented winner.

---

## 13. Closure-authority discipline

Every Pass-6 disposition must carry one authority stamp:

- P — picture/source-closed
- R — explicit human ruling
- I — inference from stated premises
- HIST — historical receipt
- OPEN — unsupported
- CONFLICT — sources/rulings disagree

Examples:

- RootTouch operands: R + D1 witness
- POINTER→POINTER permission: P
- binary Join current law: R/I using D2 + D1 + H5/H6, not picture-only
- arbitrary chooser today: OPEN
- proposed prefix-ground schedule: I/PROPOSAL until ruled, even if it matches a specimen

Pass 6 must not use bare “CLOSED” when the authority kind matters.

---

## 14. Phase A required products

Under maps:

1. math-execution-root-touch-fold-pass-6-findings.md
2. D1 six-row provenance table.
3. punch-card PC-1…PC-5 exact test board.
4. ownership O-A…O-G matrix.
5. capability-vs-obligation quantifier audit.
6. one-operator contradiction audit.
7. exact primary verdict V-A…V-F.
8. exact list of what remains open after that verdict.
9. no law edit.

Commit Phase A before any other station is touched.

Release maps.

---

## 15. Phase B — conditional law reconciliation

**Do not automatically enter Phase B.**

Before Phase B:
1. refresh main;
2. inspect the gate-question-surface campaign's current status;
3. verify no active law/maps work conflicts;
4. read Phase-A findings from committed bytes.

### Phase-B entry condition

Enter law only if Phase A establishes a source/ruling-supported reclassification that changes current law wording.

Examples:
- GAP automatic selector → GAP relation-assertion provenance;
- deterministic punch-card law established at named authority strength;
- explicit Core necessity established.

### If Phase A only says insufficient evidence

Do not edit law.

Close Pass 6 in maps with V-F.

### Possible law targets

Only if justified:
- docs/pointer-emission.md
- docs/systems-manifest.md

Allowed changes:
- current selection/provenance wording;
- current question-table authority labels if needed;
- exact interface/open-question wording required by Phase A.

Forbidden:
- human acceptance;
- arbitrary selector algorithm;
- new API/interface;
- code;
- rewriting historical Pass-7 receipts;
- resolving gate-question campaign ownership questions without its evidence.

Release law.

---

## 16. Phase C — maps closeout

If Phase B runs:
- refresh math-execution-model status wording if needed;
- write a propagation docket for a later pass;
- do not propagate through global ASCII / graphics / controls in Pass 6.

If Phase B does not run:
- record that current law remains unchanged.

In both cases:
- close findings;
- mark plan executed only after all required tests are recorded;
- index the pass;
- release maps;
- STOP.

### No Pass-6 global propagation

Pass 5 just completed a repo-wide propagation wave.

Pass 6 is a classification / source-necessity pass.

If law wording changes, a later pass may propagate it.

---

## 17. Falsifier board

| ID | Falsifier | Consequence |
|---|---|---|
| F6-1 | a source explicitly says Core automatically chooses arbitrary relation operands | O-F-only thesis fails; automatic selector is Core-required |
| F6-2 | per-arrival whole-prefix punch-card rule reproduces D1 exactly and is source/ruling-backed | active-prefix hypothesis survives |
| F6-3 | per-arrival prefix rule predicts extra/missing D1 rows | refute it as universal schedule |
| F6-4 | all-portions-auto rule predicts relations absent from D1 | refute automatic materialization |
| F6-5 | one-active-sample rule cannot explain D1 branching without hidden state | refute it as complete rule |
| F6-6 | Contract II explicitly carries relation/sample metadata in source | reopen S-B |
| F6-7 | Layer III or query surface has source-authorized write-to-Core relation assertion | reopen O-E |
| F6-8 | route/document/definition boundary is source-stated as selection metadata | reopen S-D/O-D |
| F6-9 | H5/H6 say “must automatically choose,” not merely “can ground” | capability-vs-obligation distinction fails |
| F6-10 | D1 explains why each non-root pair is selected, not merely shows it | provenance gap shrinks |
| F6-11 | analysis needs a new row, store, queue or hidden field to state the result | STOP — invented machinery |
| F6-12 | result conflicts with gate-question census / active campaign ownership | STOP and hand off |

---

## 18. Proof board

Pass-6 findings must score:

| ID | Requirement |
|---|---|
| P6-1 | all six D1 POINTER rows have provenance dispositions |
| P6-2 | RootTouch is the closed control case |
| P6-3 | selected-sample construction is separated from sample provenance |
| P6-4 | whole-prefix-after-every-arrival hypothesis is traced exactly |
| P6-5 | one-active-sample hypothesis is tested against D1 branches |
| P6-6 | all-portions-auto hypothesis is attacked |
| P6-7 | capability vs obligation quantifiers are explicit |
| P6-8 | one-operator / irreducible-Core wording is confronted |
| P6-9 | Contract II hidden-sample route remains refused unless sourced |
| P6-10 | Layer III remains read-only unless a source explicitly changes it |
| P6-11 | route/document boundaries are not selection metadata without source |
| P6-12 | operand semantic ordering remains separate from provenance |
| P6-13 | closure authority P/R/I/HIST/OPEN/CONFLICT is stamped |
| P6-14 | one V-A…V-F verdict is produced |
| P6-15 | no automatic selector/interface/API is invented |
| P6-16 | acceptance gate, no-src/Cargo, and Rust proof gates remain intact |

Target: **16 / 16 PASS.**

---

## 19. What Pass 6 must not do

Pass 6 does not:

- implement Select;
- define Select(L,v);
- assume an active sample pointer;
- add sample identity state;
- add a relation command;
- add relation metadata to Contract II;
- let Layer III write;
- infer meaning/similarity;
- use document boundaries as hidden selection;
- automatically materialize every possible sample without source;
- resolve ref_A semantic ordering owned by the gate-question campaign;
- reopen binary arity merely because graphics-only close reading is weaker;
- accept pointer-emission.md;
- modify frozen human-law history;
- create src/, Cargo, Rust source or implementation branches;
- start Pass 7 automatically.

---

## 20. Expected value of the pass

Right now the repository says:

\[
\text{selected operands}\rightarrow\mathsf{Join}
\]

and then names an “arbitrary chooser” GAP.

Pass 6 asks whether the missing left side should actually be represented conceptually as:

\[
\boxed{\operatorname{Origin}(\rho)}
\]

rather than prematurely as:

\[
\boxed{Select(L,v)}
\]

That distinction matters.

If the source requires automatic selection, preserve the true Core blocker.

If the source requires only that an asserted relation reach the constructor, then Core mechanics may already be complete while an interface/authority provenance problem remains outside or at the boundary.

If the source does not decide, stop there.

No software convenience gets to answer it.

---

## 21. Stop condition

Pass 6 stops when:

- D1 provenance is audited row by row;
- punch-card interpretations PC-1…PC-5 are tested;
- ownership classes O-A…O-G are disposed;
- capability vs obligation is explicit;
- one V-A…V-F verdict is committed;
- all closure claims carry authority kind;
- the gate-question campaign is not overwritten;
- law is edited only if Phase-A evidence requires it;
- no automatic selector or interface is invented;
- acceptance remains absent;
- no src/ / Cargo / Rust appears;
- maps is released;
- then STOP.

## Steward test

The remaining hole may be smaller than the word “selector” makes it sound.

Do not build a chooser merely because the constructor needs operands.

First prove that the machine is supposed to choose.

A shoe lace can join two pieces once your hands put them together. That fact alone does not say what chose those two pieces.


---

## 22. Execution receipt

### Phase A — maps

- claim: aa02d8fd88e98e40dc82da6d5970ff4f34316b69
- findings: 266c6388388f7672ae3dadcf48d2dc17a89979d6
- maps release: 5ce84af5739218647761e26c552592dde07876b0
- verdict: **V-C — ASSERTION-PROVENANCE GAP**

Phase-A results:
- D1 provenance: 1 ruled special case + 5 OPEN relation origins
- PC-2 whole-prefix-per-arrival: REFUTED as universal
- PC-3 one persistent active sample: REFUTED as complete rule
- PC-4 all-portions-auto: REFUTED as obligation
- automatic Core chooser requirement: NOT ESTABLISHED
- relation-assertion provenance / authority: remaining GAP

### Phase B — law

- claim: c7a403265a5b2f4be69ca97afd75438ace4f53ae
- pointer-emission: c4a399bd537393888a87acbf533ec932e0f69dca
- systems-manifest: 491421f93bf8336108e5ca3831154d544759d99b
- manifest stale-label sweep: 2ec1174e8903bea7b459361ee23b624eb87430a1
- law release: a61a3913106debb42c74e690f79ef2e6b6f15726

Law result:

\[
\operatorname{Origin}(\rho)=[GAP]
\]

replaces the stronger implied assumption of an unfinished automatic selector.

No external relation interface is established.

### Phase C — maps

- maps reclaim: 311c86cc640782d2d9ce41f2f1fce65ca0909c67
- math-model status refresh: 57908a7779226dac72b3677837266e2acdc3d3a9
- propagation docket: 0bc86bd800732bc6fce8f07447b6d28ce1a43d9d
- final findings: f01581cecebb183e82d83ee39c329fdbcf384298

### Final proof board

**P6-1 through P6-16: 16/16 PASS.**

### Implementation check

At closeout tip 0bc86bd800732bc6fce8f07447b6d28ce1a43d9d:
- 691 tracked paths
- recursive tree not truncated
- src/: 0
- Cargo.toml: 0
- .rs files: 0

### Final state

Settled:
- LAND / WORD
- unseen -> root
- seen -> RootTouch
- binary Join
- earlier same-line WORD/POINTER operands
- finite-sample grounding
- branched relation-of-relation construction

Open:
- **arbitrary non-root relation-assertion provenance / authority / ownership**

Not established:
- automatic Core chooser
- external assertion/write interface
- hidden Contract-II relation payload
- Layer-III write path
- route/document selector

Acceptance:
- ABSENT

Implementation:
- still forbidden

**STOP. No Pass 7 opened automatically.**
