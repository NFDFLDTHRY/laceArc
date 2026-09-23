# Language structure / interaction loop — Pass 2 plan: boundary / event algebra

**Status:** EXECUTED 2026-09-23 — boundary algebra, trace ledger and findings committed. BE-1 boundary non-identifiability and BE-2 span groundability proved within scope; G3 sharpened, not closed; no new row kind/store; RM-A unchanged; Pass 3 not opened. Direct PNG sight and local shell check-docs remain NOT_PERFORMED tooling qualifications.  
**Campaign position:** Pass 2 of the six-pass language-structure / interaction-loop campaign. Pass 1 is EXECUTED; Pass 3 is not opened by this file.  
**Station:** maps.  
**Pinned main before planning claim:** `dc50aa0858653bdf6cf1bd8a7a28e76575be26a8`.  
**Planning claim:** `76fdcde40c7b59af4840ef177097930352b35f16`.  
**Pass-1 inputs:** [evidence map](language-structure-lace-pass-1-evidence-map.md) · [findings](language-structure-lace-pass-1-findings.md).  
**Human acceptance:** ABSENT.  
**Core / RM-A / pointer acceptance / implementation:** unchanged. No `src/`. No new row kind. No new authoritative store.  
**One act:** determine what an interaction crossing would have to be, whether it can be represented with existing WORD/POINTER Lace, and which candidate boundary encodings survive the current laws.

This is a **boundary algebra / candidate court**, not an implementation pass and not a ruling that all output must be retained.

---

# 0. Why Pass 2 exists

Pass 1 established a sharp split:

```
SUBMITTED_IN
    !=
ADMITTED_IN
    !=
LOCAL_OUT
    !=
VIEW_OUT
    !=
EXTERNAL_COMMITTED_OUT
    !=
RETURNED_IN
    !=
STRUCTURAL_APPEND
```

Current law already handles several of these:

- `SUBMIT` places one pending arrival in the reduction-model hopper; Lace is unchanged.
- successful `STEP / Arrive` records an admitted input as WORD.
- `REFUSE` leaves Lace unchanged.
- S9 device-local output has no automatic retention authority.
- `PROJECT` / B11 / C11 make rendered views read-only.
- RootTouch is a legal rule-driven Join append.
- generic sampling-derived structural retention remains RM-A.
- feedback can affect the world and later return as lawful future input.

The unresolved interaction edge is:

```
selected local response
        |
        | ? external commitment ?
        v
user-facing response that actually happened
        |
        | ? recording / provenance ?
        v
same Lace interaction history
```

Pass 2 asks whether that edge can be made precise **without**:
- inventing a third row kind;
- keeping a second authoritative conversation log;
- making rendered output or model candidates authoritative;
- pretending source order alone identifies message boundaries or speaker roles;
- hiding RM-A in an output hook.

---

# 1. Pass-2 research question

> **What exact transition turns a finite externally committed textual interaction act into a pointable part of the same Lace history, and can inbound and outbound acts be distinguished and replayed using only existing WORD/POINTER structure plus lawful external boundary facts?**

A successful Pass 2 must say one of three things:

1. **Existing machinery suffices**, under explicit boundary premises, and the candidate representation is stated with all authority gaps exposed.
2. **Several lawful representations survive**, and the smallest discriminator is named.
3. **Existing WORD/POINTER structure cannot carry the required interaction provenance without an additional authority or representation**, and the exact impossibility / missing premise is demonstrated.

It must not choose a representation merely because it is convenient.

---

# 2. Scope: text interaction first, not every possible world event

The human hypothesis is about language and conversation. Pass 2 therefore scopes its base algebra to:

```
finite ordered textual inbound acts
finite ordered textual outbound acts
```

It does **not** silently generalize to:
- physical actions;
- silence;
- image/video output;
- tool execution;
- arbitrary sensor events.

HCC-A permits speech, silence and physical action as behavioral outputs, but the Core substrate currently has WORD/POINTER only. General non-text event representation would require its own evidence.

If the text case cannot be made lawful, the wider case is not attempted.

---

# 3. Existing machinery Pass 2 must preserve

## 3.1 Substrate

```
L = (e_0, ..., e_{n-1})

e_i =
    WORD(value)
    or
    POINTER(ref_A, ref_B)
```

with:
- append-only prefix freeze;
- backward same-line POINTER references;
- no second store;
- no stored semantic meaning;
- no projection write-back;
- repeated WORD occurrences remain distinct.

## 3.2 Inbound admission

Current reduction state:

```
Sigma = (L, h, K)
```

Relevant transitions:

```
SUBMIT:
(L, empty, K) -> (L, v, K)

STEP:
(L, v, K) -> (L ++ s, empty, K)

REFUSE:
(L, v, K) -> (L, v, K) + signal
```

A submission is not history merely because it exists in the hopper.

## 3.3 Read/device fence

S9 RD-1:

```
device-only step leaves L unchanged
```

S9.8:

```
device output has no automatic retention authority
```

S12:

```
Candidate != Evidence
VerifierScore != Truth
LearnedState != LaceFact
```

## 3.4 Existing contiguous grounding capability

For an **already selected** finite ordered contiguous source occurrence whose WORD rows exist, current bounded RM-B / RM-C results can reconstruct its WORD addresses and ground them by repeated Join.

This is a capability, not permission to create interaction envelopes.

Pass 2 may use it as a candidate constructor **only after it states where the event-span selection authority comes from**.

---

# 4. Central distinction: occurrence, message, crossing, and relation

Pass 2 must not collapse these four grains.

```
WORD OCCURRENCE
    one admitted lexical occurrence

TEXTUAL ACT / MESSAGE
    finite ordered group of occurrences presented/committed as one interaction unit

BOUNDARY CROSSING
    externally evidenced fact that this textual act entered or left the system

RELATIONAL APPEND
    a POINTER recording lawful participation between already-addressable Lace points
```

The fact that a message boundary exists outside Lace does not automatically mean the boundary is currently representable inside Lace.

The fact that a message can be grounded to one point does not automatically authorize that grounding.

The fact that two message points exist does not automatically authorize a response-pair Join.

---

# 5. The first theorem Pass 2 must attack: boundary non-identifiability

## Candidate theorem BE-1

Let two admissible interaction traces produce the same admitted WORD sequence and the same rule-driven Core Join rows, but partition those WORD occurrences into different inbound/outbound message boundaries or speaker roles.

If no boundary/provenance information is represented in Lace, then the resulting Lace states are equal.

Therefore no Lace-only read can reconstruct which partition / direction actually occurred.

Formally, for external traces (	au_1,	au_2):

```
EncodeCurrent(tau_1) = EncodeCurrent(tau_2) = L
but
Boundary(tau_1) != Boundary(tau_2)

=> no total f(L) can recover Boundary(tau)
```

unless an additional premise makes one trace inadmissible.

This is the boundary analogue of OBS-1.

### Required counterexample specimen

Use identical textual payload order under two different interaction segmentations.

Example abstract values:

```
a b c d
```

World 1:
```
IN  = [a b]
OUT = [c d]
```

World 2:
```
IN  = [a]
OUT = [b c d]
```

or a role swap with the same total word sequence.

Run the existing arrival/root/touch machinery only.

If the Lace rows are equal and no current field distinguishes the worlds, BE-1 holds for that scope.

### Why this matters

If the project wants Lace itself to be a **proving relational ground for input/output correspondence**, then either:
- interaction boundaries/direction must be represented in Lace; or
- the proof must explicitly depend on external evidence and cease to be Lace-only.

Pass 2 must make that trade explicit.

---

# 6. Candidate boundary algebras to test

The labels below are Pass-2 experiment labels only. They are not namespace/law identifiers.

## BE-A — plain loopback

After a response is externally committed, feed its text through the ordinary input/Arrive path.

```
external OUT text
    -> ordinary admitted WORD arrivals
```

No special event point. No speaker marker. No sidecar.

### Expected strength
- preserves one Lace;
- records output words as history.

### Expected weakness
- likely fails BE-1: replay cannot tell input from output or message boundaries.

---

## BE-B — externally selected event-span grounding

External boundary machinery supplies:

```
(start_source_position, end_source_position, direction)
```

The text itself still arrives through ordinary WORD admission.

After all WORD occurrences for that act exist, the known finite ordered occurrence set is grounded to one addressable point using the existing finite-sample Join construction.

```
payload WORD occurrences
        |
        | repeated Join, boundary-selected
        v
EventPoint
```

### Required distinction

This is **not sampling-derived RM-A** if the span is selected by the externally evidenced message boundary.

But it would still be a **new class-specific legal append condition** unless existing authority already permits boundary-grounding.

Pass 2 must classify that fact rather than silently call it current law.

---

## BE-C — role-anchor topology

Extend BE-B with pre-existing ordinary Lace anchors representing interaction direction, such as conceptual roles `IN` and `OUT`.

Candidate:

```
Join(EventPoint, InAnchor)
Join(EventPoint, OutAnchor)
```

or another fixed topology.

### Attack immediately

- Are role anchors just ordinary words or forbidden metadata?
- What establishes their identity under G1?
- Is using operand order to encode role legal under generic RM-C?
- Does a reserved role vocabulary contaminate ordinary language?
- Does this create semantic control words not sourced by the graphics?
- Can a user literally say "IN" or "OUT" without ambiguity?

No adoption in Pass 2.

---

## BE-D — sentinel / delimiter WORDs

Inject reserved boundary WORDs around interaction payloads.

Example candidate only:

```
<IN> a b </IN> <OUT> c d </OUT>
```

### Attack

- requires reserved vocabulary / G1 semantics;
- boundary token is not the user's actual language;
- may violate punch-card "input exactly as arrives";
- risks control metadata disguised as content;
- still needs rule for how sentinels participate structurally.

Expected to be high-risk; must be tested, not dismissed by taste.

---

## BE-E — external provenance sidecar

Keep message boundaries and roles in a separate interaction/event log keyed by Lace ranges.

### Attack

If that sidecar is required to reconstruct authoritative interaction history, it violates the one-store rule.

It may be lawful as:
- disposable UI state;
- external evidence;
- diagnostic metadata;

but then Lace alone is not the complete proving ground.

This candidate is useful as a control.

---

## BE-F — interaction pair point

Assume both an inbound event point (I) and an outbound event point (O) have lawful addressable representations.

Candidate relation:

```
Join(O, I)
```

or another ordered pair represents "O responded to I".

### Attack

- why is that relation appended?
- who supplies operand order?
- does transaction context constitute sufficient non-semantic authority?
- does generic RM-C permit this order?
- is this a new class-specific rule separate from RM-A?
- one output may depend on several earlier inputs / context points;
- one input may yield several outputs.

Pass 2 must not assume one-to-one conversation turns.

---

## BE-G — support-bearing output provenance

The reader returns:

```
(candidate response, support witness set S)
```

and after external commitment the event tries to retain a relation to (S).

### Attack

This is the most dangerous candidate because:
- (S) is device-selected;
- S9.8 forbids device output from automatic retention authority;
- highest-scored support is not truth;
- support may be a path/frontier/candidate not yet one addressable point.

Pass 2 may map it but must not use it to solve response provenance.

This likely belongs to Pass 5 after a boundary algebra exists.

---

# 7. Outbound commitment must be separated from local selection

A textual candidate becoming "the chosen answer" is still not proof that the answer reached the user.

Pass 2 must distinguish:

```
CANDIDATE_OUT
    |
    | local resolution
    v
SELECTED_OUT
    |
    | host attempts emission
    v
SEND_ATTEMPT
    |
    +---- failure ----> FAILED_OUT
    |
    +---- external sink acknowledges/display commits ----> COMMITTED_OUT
```

Only `COMMITTED_OUT` is eligible for the human's "actual output happened" hypothesis.

## Atomicity / custody question

There is an unavoidable ordering problem:

### record-before-send
Lace may claim an output occurred even if sending fails.

### send-before-record
An output may actually occur and then a crash may prevent its Lace recording.

Pass 2 must not solve this by pretending external world + Lace append are atomic.

It must instead:
- identify the abstract semantic crossing;
- identify the possible record/commit gap;
- classify exactly-once / recovery as an implementation/host/custody obligation;
- say whether R3/R4/GAP-HOST become conditional dependencies for a proof-grade implementation.

This may produce a new handoff rather than a Core mechanism.

---

# 8. Event grain is a parameter, not a hidden choice

For the text case, Pass 2 must test at least:

```
word-level crossing
chunk-level crossing
whole-message crossing
```

The base candidate should model a textual act as:

```
E = (direction, finite ordered word-occurrence span, external crossing witness)
```

without deciding whether a streaming UI commits one event per token/chunk/message.

If two grains produce materially different relational histories, that difference must be named for later human/application authority.

No implementation-specific streaming behavior becomes Core law.

---

# 9. Required adversarial specimens

Pass 2 must use structural/artificial words where possible so semantics cannot leak in.

## S1 — same words, different segmentation

```
a b c d
```

Trace A:
```
IN [a b] ; OUT [c d]
```

Trace B:
```
IN [a] ; OUT [b c d]
```

Purpose: BE-1.

## S2 — same payload in opposite roles

```
IN  [yes]
OUT [yes]
```

and role-swapped equivalent.

Purpose: role/direction identity cannot come from lexical value.

## S3 — repeated words across boundary

```
IN  [a b a]
OUT [a b]
```

Purpose:
- G1/root reuse;
- message grouping must preserve distinct occurrences.

## S4 — local candidate never sent

Reader generates:
```
x
y
z
```

selects `y`, send fails.

Purpose: no candidate/selection append may masquerade as external event.

## S5 — rendered projection only

A view emits visual/text representation of Lace but no user-response event under the test contract.

Purpose: hard projection no-write control.

## S6 — one input, two committed outputs

```
IN [a b]
OUT1 [c]
OUT2 [d e]
```

Purpose: reject hidden one-input/one-output assumption.

## S7 — several inputs contribute to one output

```
IN1 [a]
IN2 [b c]
OUT [d]
```

Purpose: response provenance is not automatically one pair.

## S8 — response becomes later quoted input

```
IN  [a]
OUT [b c]
IN  [b c d]
```

Purpose: test feedback/re-entry without collapsing occurrences.

## S9 — outbound commit / record gap

Model:
- external sink commits response;
- Lace recording attempt fails/interruption occurs.

Purpose: expose host/custody debt honestly.

---

# 10. Candidate invariants

Any surviving boundary algebra must preserve:

### B-I1 — one authoritative Lace
No second durable interaction history is needed to know the facts the candidate claims Lace proves.

### B-I2 — occurrence fidelity
Every admitted word occurrence remains distinct.

### B-I3 — raw-content fidelity
User/system language is not rewritten to fit a control schema.

### B-I4 — local-output exclusion
Candidate generation, ranking and uncommitted selected output do not become Lace history merely by existing.

### B-I5 — projection exclusion
A rendered view never writes Lace.

### B-I6 — actual-crossing discipline
A recorded outbound event must correspond to a pointable external commitment witness, not merely an intended/send-attempted response.

### B-I7 — boundary replay
If the candidate claims Lace itself knows input/output roles or message boundaries, those must be reconstructible from the Lace prefix plus only the premises explicitly allowed by the candidate.

### B-I8 — no semantic chooser
Boundary grouping/direction comes from external interaction facts, not inferred word meaning.

### B-I9 — no RM-A laundering
Event-boundary selection must not be presented as the solution to arbitrary sampling-derived relation retention.

### B-I10 — no generic slot semantics by accident
If Join operand order carries direction/role, exact authority for that role ordering must be supplied.

### B-I11 — feedback is append-only
Later user reaction adds later history; it never rewrites the prior output event.

### B-I12 — failure is visible
If commit and Lace-recording can diverge, the candidate must expose that state rather than claim proof-grade completeness.

---

# 11. Proof / falsifier targets

## P2-T1 — boundary non-identifiability

Attempt BE-1 rigorously.

**Pass condition:** exhibit two admissible traces with equal Lace and distinct boundary truth under current machinery.

**Refuter:** current Lace already contains enough lawful information to distinguish them.

## P2-T2 — contiguous event grounding applicability

Test whether an externally supplied finite text-act span satisfies the premises of bounded RM-B(contig) / RM-C(contig).

**Pass condition:** materialization is mechanically possible once the span is supplied.

**Important:** this proves capability only. It does not establish that boundary-grounding is an authorized append.

## P2-T3 — role encoding court

For BE-C / BE-D / alternatives:
- identify exact information preserved;
- determine whether it creates a new type/store;
- test collision with ordinary language;
- test replay after repeated identical payloads.

## P2-T4 — response-commit separation

Prove by counterexample that:

```
SELECTED_OUT != COMMITTED_OUT
```

and therefore no local resolver event alone can ground the human's "actual output" history.

## P2-T5 — one-pair insufficiency

Use S6/S7 to attack the assumption that response provenance is one input point ↔ one output point.

## P2-T6 — proof-ground claim

For every surviving candidate, state exactly which propositions become replayable:

Examples:
- role of a textual act;
- event grouping;
- event order;
- response-to relation;
- prior structural support.

If a candidate cannot prove one of these from its declared state, mark it unsupported rather than inferring it.

---

# 12. Evidence sources Pass 2 must read at execution

## Current law / substrate
1. `AGENTS.md`
2. `docs/law-why-these-documents.md`
3. `docs/systems-manifest.md` — Pieces 3, 9, 10, SM-C21, SM-GAP-RM, G3/G4 opens
4. `docs/atomic-primitives-map.md`
5. `docs/pointer-emission.md`
6. current Graphic C/D ASCII companions and current direct/inherited graphic receipts

## Mathematical / transition machinery
7. `docs/math-execution-model.md` — S2, S3.4–S3.7, S4.7, S9–S12
8. `docs/math-execution-model-theorems.md`
9. `docs/plans/reduction-pass-2-execution-model.md`
10. `docs/plans/math-execution-model-findings-handoff-2026-09-23.md`

## Pass-1 campaign
11. `language-structure-lace-pass-1-evidence-map.md`
12. `language-structure-lace-pass-1-findings.md`

## Behavioral feedback / provenance
13. HCC device blueprint — behavior output and feedback
14. Coffee Cup device blueprint — aftermath / later external event
15. Water device blueprint — local output exclusion
16. source→Lab→Lace obligation ledger
17. historical FORCE output-history evidence, retained at historical strength only

## Dictionary/route boundary ancestry where relevant
18. seed-dictionary Pass 6 soundness
19. manifest C6/G3 route-family boundary material

Follow explicit successors if current main changes before execution.

---

# 13. Required Pass-2 products

Execution may create analysis artifacts only.

## Product A — boundary algebra

Create:

`docs/plans/language-structure-lace-pass-2-boundary-algebra.md`

It must contain:
- typed states / transitions;
- BE-1 theorem attempt;
- candidate court BE-A through BE-G or corrected successors;
- invariants;
- exact open premises;
- at least S1–S9 traces;
- candidate dispositions.

## Product B — interaction trace ledger

Create:

`docs/plans/language-structure-lace-pass-2-trace-ledger.md`

For each specimen:

| Trace | External truth | Candidate encoding | Lace rows / derived event points | What can replay recover? | Falsifier result |
|---|---|---|---|---|---|

If useful, execution may use an ephemeral script to mechanically generate candidate traces. The script need not and should not become `src/`; the exact inputs/outputs must be recorded in the ledger.

## Product C — findings

Create:

`docs/plans/language-structure-lace-pass-2-findings.md`

Must answer:
- Is BE-1 proved/refuted/unestablished?
- Can external text spans be grounded using existing bounded machinery?
- Which boundary candidates survive?
- Is an outbound event representable with current row kinds?
- What information requires external provenance?
- Does G3 split into new subquestions?
- Does RM-A change status?
- Do R3/R4/GAP-HOST become conditional dependencies?
- Does Pass 3 remain dictionary corpus/G1/density, or does boundary work leave a prerequisite unfinished?

---

# 14. Execution sequence

## T0 — re-anchor
- refresh current main;
- claim maps;
- record execution pin;
- compare Pass-1 artifacts against current head;
- check for new Fable/math/global-ASCII work that changes boundary premises.

## T1 — reconstruct current transition boundary
Draw one table from:
`SUBMIT / STEP / REFUSE / PROJECT / device step / feedback`.

Do not introduce candidate event writes yet.

## T2 — run BE-1
Construct S1/S2 with current machinery only.

If boundary truth is not recoverable, record the exact non-identifiability result before testing encodings.

## T3 — test BE-A baseline
Record output text by ordinary loopback only.

Measure what is preserved and what is lost.

## T4 — test event-span grounding
Use S1/S3/S8.

Check all RM-B(contig) / RM-C(contig) premises explicitly:
- selected externally by message boundary;
- constituent WORD occurrences exist;
- finite ordered span;
- replayable mapping from source positions.

State whether authorization is missing even when construction succeeds.

## T5 — test role / direction encodings
Attack:
- role anchors;
- sentinel words;
- topology-only encodings;
- any alternative discovered during execution.

Do not invent semantic metadata silently.

## T6 — test response-pair topology
Use S6/S7.

Determine whether one pair is sufficient or whether a response may need an explicitly plural context relation.

Do not solve plural support in this pass if it requires reader-selected evidence.

## T7 — commit-versus-record court
Use S4/S9.

Separate:
`SELECTED_OUT`, `SEND_ATTEMPT`, `COMMITTED_OUT`, `RECORDED_OUT`.

Name the exact custody/recovery gap.

## T8 — classify gap impacts
At minimum:
- G1
- G3
- G4
- C6
- RM-A/B/C
- R3/R4
- GAP-HOST
- S9/S10/S12
- Open #15

## T9 — write findings and stop
Do not plan or execute Pass 3.

The human decides whether to proceed.

---

# 15. Candidate disposition vocabulary

Use only:

- **SUPPORTED_CURRENT** — already current law/model.
- **PROVED_WITHIN_SCOPE** — theorem with premises/refuter.
- **DERIVED** — follows from stated source/model premises.
- **COMPATIBLE_CANDIDATE** — no contradiction found, but not authority.
- **CONDITIONAL** — works only if named open premise is supplied.
- **REFUTED** — explicit counterexample / fence.
- **FORBIDDEN** — violates standing law.
- **UNESTABLISHED** — neither proof nor refutation.
- **OPEN** — current architecture intentionally leaves it unresolved.

Do not use "accepted" unless actual human acceptance is evidenced.

---

# 16. Pass-2 falsifiers

The pass must fail loudly if:

1. a new EVENT/MESSAGE row kind is invented;
2. a sidecar event log becomes necessary authoritative state without being called a second store;
3. a local candidate is recorded as output before external commitment;
4. a projection/render counts as committed response solely because it was displayed internally;
5. event role is inferred from word meaning;
6. a user-visible response is assumed delivered without an external commitment witness;
7. role/direction is hidden in Join slot order without authority;
8. a message boundary is recovered from adjacency without evidence;
9. event grounding is called RM-A closure merely because its span is externally supplied;
10. one input ↔ one output is assumed universally;
11. output support selected by a model is granted automatic retention authority;
12. failed send / crash gap is hidden;
13. Pass 2 changes law/model/manifest to make a candidate fit;
14. Pass 3 begins automatically.

---

# 17. Expected outcomes before execution

These are hypotheses, not promised results.

| Question | Expected disposition |
|---|---|
| boundary segmentation is recoverable from current Lace with no encoding | likely **REFUTED** by BE-1 |
| plain output loopback preserves words | likely **YES** |
| plain loopback preserves input/output role | likely **NO** |
| externally supplied finite text span can be grounded | likely **PROVED_WITHIN_SCOPE** under existing bounded lemma |
| grounding authorization already exists for interaction events | likely **OPEN** |
| role anchors can encode direction lawfully | **CONDITIONAL / high-risk** |
| sentinel words are clean | likely **REFUTED or strongly conditional** |
| sidecar provenance as authority is lawful | **FORBIDDEN** |
| one input-output pair captures all response provenance | likely **REFUTED** |
| local selection equals external commitment | **REFUTED** |
| current WORD/POINTER forms are sufficient in principle | **UNDECIDED** until court |
| RM-A closes | **NO** |
| G3 becomes more sharply specified | likely **YES** |
| R3/R4/GAP-HOST become relevant to exact output recording | likely **CONDITIONAL** |

If execution disagrees, the evidence wins.

---

# 18. Relationship to the remaining campaign

Pass 2 exists to make the later passes possible.

```
PASS 1  map the architecture
        DONE
          |
PASS 2  type the interaction boundary
        THIS PLAN
          |
PASS 3  dictionary corpus / G1 / density
        only after Pass 2 says what a textual act is
          |
PASS 4  Star query / match / rank
        requires stable interaction/event identity for evaluation
          |
PASS 5  decode / response / feedback
        requires Pass-2 committed-output crossing
          |
PASS 6  adversarial synthesis
        compare whole loop against RM-A/A-B/global manifest
```

Pass 2 may alter this order if it finds a more fundamental contradiction.

---

# 19. Pass-2 write surface

## May write
- `docs/plans/language-structure-lace-pass-2-boundary-algebra.md`
- `docs/plans/language-structure-lace-pass-2-trace-ledger.md`
- `docs/plans/language-structure-lace-pass-2-findings.md`
- this plan's status line on execution
- `docs/plans/README.md` index rows
- maps claim/release

## Must not write
- `AGENTS.md`
- live law
- systems manifest
- global ASCII companion
- pointer-emission draft
- mathematical model
- theorem/rulings registers
- graphics / companions
- behavioral blueprints
- seed-dictionary historical bodies
- any Core implementation / `src/`
- a new row kind
- a new authoritative store
- a human ruling
- a general RM-A rule

If a surviving candidate implies a law/model change, record a handoff only.

---

# 20. Completion gates

Pass 2 is complete only if:

1. current inbound/device/view transitions are reconstructed before candidate additions;
2. BE-1 is proved, refuted, or honestly stamped UNESTABLISHED;
3. all S1–S9 specimens are evaluated;
4. at least plain loopback and one explicit boundary encoding are compared;
5. local output vs committed output is formally separated;
6. event-span grounding is checked against every bounded RM-B/RM-C premise;
7. any use of role anchors / sentinels / slot order names its authority debt;
8. sidecar provenance is classified under the one-store fence;
9. one-to-many and many-to-one interaction cases are handled;
10. send/record atomicity debt is visible;
11. every surviving candidate says exactly what Lace can replay/prove;
12. RM-A remains separate unless actual evidence closes a bounded class;
13. no law/model/manifest source is edited;
14. artifacts are indexed;
15. tooling limitations are recorded, not converted into PASS;
16. maps is released;
17. Pass 3 remains unopened.

---

# 21. Steward test

With a physical lace:

- speaking a word is not the same thing as thinking of a word;
- pointing at the lace is not tying a knot;
- deciding what you intend to say is not the same as saying it;
- a knot cannot honestly claim "this was the other person's sentence" unless some physical mark or lawful structure preserves that distinction;
- writing the same words twice creates two passages, not one occurrence;
- if the person heard you before you marked the lace, there is a real gap between the world event and the record.

Pass 2 must find out whether the existing two kinds of section can carry enough structure to preserve that history, or whether the architecture still owes one explicit boundary premise.

It does not get to hide the answer in a side notebook.
