# Language structure / interaction loop — Pass 2 findings

Status: EXECUTED — boundary / event algebra analysis complete.
Plan: language-structure-lace-pass-2-plan.md.
Primary artifacts:
- language-structure-lace-pass-2-boundary-algebra.md
- language-structure-lace-pass-2-trace-ledger.md
Station: maps, ChatGPT-language-structure-pass2.
Core / law / model / manifest / graphics / pointer draft / behavioral blueprints: unchanged.
Human acceptance: none taken.
RM-A: unchanged general status.
Pass 3: not opened by this file.

## 1. Executive verdict

Pass 2 found a real theorem and a real architectural boundary.

First: current Lace is boundary-non-identifying. If two interaction histories produce the same admitted word sequence under the same deterministic current Core transition, they produce the same Lace even when their user/system segmentation or roles differ. Therefore current Lace cannot reconstruct interaction boundaries or speaker direction unless those facts are represented somehow.

Second: this does not imply a new row kind is necessary. Current finite-sample grounding proves that any externally selected finite contiguous textual span can be represented by one existing Lace point using existing WORD / POINTER mechanics. A role-bound wrapper candidate further exhibits that the existing row vocabulary is expressive enough in principle to carry grouping and direction.

Third: representational capacity is not authority. Current law does not establish role anchors, an outbound commitment witness, or a class-specific rule saying an actual interaction crossing must append a wrapper. Therefore the project still owes a boundary protocol.

The main result is:

CURRENT ROW KINDS: sufficient in principle has been exhibited.
CURRENT BOUNDARY LAW: sufficient has not been established.

## 2. BE-1 result

Boundary non-identifiability is PROVED_WITHIN_SCOPE.

Premises:
- fixed initial Lace;
- fixed bounded word equality;
- fixed deterministic sigma(L,v);
- serial successful execution;
- no boundary / role values supplied to sigma;
- no intervening reload.

By reduction-model M2, final Lace depends on the admitted arrival sequence, not on an external partition of that sequence.

Two external traces with equal admitted words and different segmentation therefore produce the same Lace.

A Lace-only function cannot return both different boundary truths from the same Lace state.

S1 and S2 mechanically witness this.

This is the strongest Pass-2 result because it converts G3 from a vague documentation open into a non-identifiability boundary.

## 3. Can externally known text acts be grounded?

Yes, mechanically.

BE-2 is PROVED_WITHIN_SCOPE as a construction result.

For a finite contiguous external text act whose WORD occurrences already exist:
- WordTrace reconstructs the ordered WORD-row addresses;
- Theorem G / the existing finite-sample ladder can ground them;
- length n requires n minus one Join rows;
- length one reuses the existing WORD row.

This reuses the mathematical core of RM-B(contig) and RM-C(contig).

But the proof is about representability.

It does not grant the boundary authority to append those Joins.

Therefore the answer is:

Can a message-shaped span become one point? YES.
Does current law say every committed message should do that? NO.

## 4. Candidate dispositions

### BE-A plain loopback

Disposition:
COMPATIBLE_CANDIDATE for payload recording.
REFUTED as complete boundary algebra.

It records response words but loses interaction grouping and direction.

### BE-B span grounding

Disposition:
COMPATIBLE_CANDIDATE ingredient.
REFUTED as complete boundary algebra.

It can encode tested multiword segmentation, but:
- one-word acts create no fresh boundary row;
- it does not encode IN / OUT;
- an ordinary Join is not self-typed as an event wrapper;
- legal-append authority is absent.

### BE-C role anchors

Disposition:
CONDITIONAL.

It demonstrates structural direction encoding without a new row kind if dedicated role anchors already exist.

Missing premises:
- anchor establishment;
- reserved role identity;
- wrapper append authority;
- class-specific ordering;
- collision/exclusivity rule.

### BE-D sentinel WORDs

Disposition:
FORBIDDEN as a transparent current-Core encoding.

It mutates the raw language route with control vocabulary that was not actually spoken, creates G1 collisions, and hides metadata inside content.

### BE-E authoritative sidecar

Disposition:
FORBIDDEN as authoritative interaction history.

It solves the problem by creating a second truth store.

It remains lawful only as non-authoritative UI, diagnostics, external evidence, or custody.

### BE-F interaction pair

Disposition:
CONDITIONAL for an explicit transaction edge.
REFUTED as universal one-pair provenance.

One input can have several outputs and one output can depend on several prior inputs.

### BE-G support-bearing auto-retention

Disposition:
FORBIDDEN as automatic retention.

Device-selected support does not acquire Lace authority by selection, confidence, or external response commitment.

### BE-H role-bound event wrapper

Disposition:
COMPATIBLE_CANDIDATE / CONDITIONAL.

It composes:
- externally selected text span;
- existing finite grounding;
- one fresh role-wrapper Join;
- dedicated IN / OUT role anchors.

It provides a fresh event point even for a one-word act and can encode direction without changing row kinds.

It is not current law because every boundary premise that gives the wrapper meaning is still absent.

## 5. Existing WORD / POINTER sufficiency

Pass 2 did not prove that a third row kind is required.

BE-H exhibits a representation using only:
- WORD payload occurrences;
- POINTER grounding;
- POINTER role wrapper.

Therefore:

new row kind required = NOT ESTABLISHED.

However:

existing row kinds sufficient under current law = NOT ESTABLISHED.

The difference is the boundary protocol.

## 6. The outbound commitment problem

Pass 2 formally separated:

CANDIDATE_OUT
→ SELECTED_OUT
→ SEND_ATTEMPT
→ COMMITTED_OUT
→ RECORDED_OUT.

Selected output is not committed output.

The explicit send-failure counterexample proves this distinction.

This creates a second boundary problem after representation:

How does the system know that the external act actually happened?

The human's original statement was about actual input/output as a proving ground. Therefore SELECTED_OUT is too early.

COMMITTED_OUT is the relevant semantic boundary.

## 7. Commit / record atomicity

No current mechanism makes external delivery and Lace recording atomic.

Record first:
- send can fail;
- Lace can falsely claim user-visible output.

Send first:
- external commit can succeed;
- crash can prevent Lace recording.

Therefore exact complete output history requires a custody/recovery design.

Pass 2 does not design one.

It names the affected existing gaps:
- GAP-HOST for external send/ack mediation;
- R3 for durability if committed history must survive failure;
- R4-style custody for committed-but-unrecorded output.

These are implementation/host obligations, not a reason to add a new Core row type.

## 8. G3 is now five questions

Pass 2 decomposes the old route/boundary/provenance gap into:

G3-A segmentation:
which word occurrences form one external act?

G3-B direction:
was the act inbound or outbound?

G3-C commitment:
what pointable evidence establishes that an outbound act actually crossed?

G3-D retained representation:
what authorized existing-row topology lets Lace replay segmentation/direction?

G3-E conversation/session scope:
which acts belong to one interaction route when several streams exist?

This decomposition is Lab analysis, not a manifest edit.

## 9. RM-A status

General RM-A remains OPEN.

Pass 2 clarifies that event-boundary selection is not the same problem as sampling-derived structural retention.

A future rule:

actual committed textual boundary -> append event wrapper

would be a class-specific boundary append rule.

It would not answer:

which arbitrary sampling-derived structural pattern deserves retention?

Therefore Pass 2 narrows confusion around RM-A without closing it.

## 10. RM-B / RM-C status

RM-B(contig):
reused successfully as representational machinery.

RM-C(contig):
payload source order already supplies grounding order.

Generic RM-C:
still open.

A role wrapper and response-pair relation would each owe a class-specific ordered-role rule.

## 11. Interaction provenance is not one pair

S6 and S7 refute a hidden one-input/one-output architecture.

One input may lead to several outputs.

One output may depend on several prior inputs.

Therefore a future response-provenance layer must distinguish at least:
- immediate transaction relation;
- full structural support/provenance.

Those are not the same thing.

BE-F may eventually encode the first.
BE-G attempted to encode the second but is currently fenced from automatic retention.

## 12. Feedback result

S8 confirms the attractive part of the original hypothesis.

If outbound response words are eventually lawfully recorded as ordinary Lace occurrences:
- later user repetition produces new distinct occurrences;
- those occurrences naturally RootTouch prior roots;
- later input can reuse the same historical formation;
- no rewriting is needed.

So the append-only substrate is structurally compatible with input-output-feedback accumulation.

The missing part remains how outbound interaction acts become lawfully pointable history.

## 13. Gap-impact verdict

| Gap / surface | Result |
|---|---|
| G1 | unchanged globally |
| G3 | sharpened substantially; now G3-A through G3-E |
| G4 | unchanged; downstream event replay depends on G3 |
| C6 | names route families but still supplies no discriminator |
| RM-A | unchanged general status |
| RM-B(contig) | mechanically useful for event payload grounding |
| generic RM-C | unchanged; boundary candidate classes owe local role/order |
| R3 | conditional dependency for durable output-history completeness |
| R4 | outbound custody analogue exposed |
| GAP-HOST | elevated for pointable external commit evidence |
| S9 | local output / external feedback distinction confirmed |
| S10 / EP-1 | external witness may support a claim but is not automatic Lace |
| S12 | local generation/resolution fenced from commitment |
| Open #15 | unchanged |
| TARGET | unchanged |
| HxCxW coupling | unchanged |

## 14. Tooling / evidence boundaries

This execution used connected GitHub reads and writes plus an ephemeral in-session trace calculator.

The trace calculator used only:
- exact artificial token equality;
- current Arrive;
- mandatory RootTouch;
- repeated Join for explicitly selected spans.

Its exact specimen inputs and row outputs are preserved in the trace ledger.

No generic retention rule was simulated.

As in Pass 1:
- binary PNG re-sighting was not independently performed in this connector-only session;
- current tracked graphics remain under their existing direct visual receipts;
- repository-local shell check-docs was not available in the connected GitHub tool surface.

These are NOT_PERFORMED coverage limits, not passed tests.

## 15. Does Pass 3 remain valid?

Yes, with one scope qualification.

Pass 3 can still investigate:
- actual dictionary corpus candidates;
- G1 identity grain;
- structural density / availability;
- seed bootstrapping.

Those experiments do not require the outbound boundary problem to be solved.

However the end-to-end interaction-loop claim:

input -> Star search -> response -> recorded output -> later evidence

remains boundary-gated by G3-A through G3-D and the commit/record custody problem.

Therefore Pass 3 remains a valid independent next research pass if the human convenes it.

## 16. Smallest unresolved boundary question after Pass 2

Pass 2 reduced the next boundary-specific decision to:

Can a boundary protocol lawfully establish stable, replayable IN / OUT event identity using existing Lace points and a pointable external commitment witness, without reserved semantic control words, a second authoritative store, or hidden Join-slot semantics?

BE-H is the concrete candidate to attack if boundary work resumes.

Pass 2 does not ask the human to choose BE-H.

It records exactly what would have to be proven.

## 17. Completion gates

| Gate | Result |
|---|---|
| current transition boundary reconstructed first | PASS |
| BE-1 disposition | PROVED_WITHIN_SCOPE |
| S1 through S9 evaluated | PASS |
| plain loopback compared with explicit boundary encodings | PASS |
| local selection vs external commit separated | PASS |
| event-span grounding checked against bounded machinery | PASS |
| role/sentinel/slot authority debt exposed | PASS |
| sidecar classified under one-store rule | PASS |
| one-to-many / many-to-one handled | PASS |
| send-record debt visible | PASS |
| replay/proof claims bounded per candidate | PASS |
| RM-A kept separate | PASS |
| no law/model/manifest source edited | PASS |
| artifacts indexed | pending closeout step |
| local shell check-docs | NOT_PERFORMED tooling limit |
| direct binary PNG sight | NOT_PERFORMED tooling limit |
| maps released | pending closeout step |
| Pass 3 unopened | PASS |

## 18. Final Pass-2 verdict

BOUNDARY NON-IDENTIFIABILITY: PROVED_WITHIN_SCOPE.

TEXT-SPAN GROUNDABILITY: PROVED_WITHIN_SCOPE.

PLAIN OUTPUT LOOPBACK: payload-preserving but boundary-incomplete.

BARE EVENT-SPAN GROUNDING: representationally useful but boundary-incomplete.

ROLE-BOUND WRAPPER: existing-row capacity EXHIBITED, authority CONDITIONAL.

NEW ROW KIND NECESSARY: NOT ESTABLISHED.

SECOND AUTHORITATIVE EVENT STORE: FORBIDDEN.

EXTERNAL COMMIT WITNESS: STILL REQUIRED for actual-output semantics.

G3: SHARPENED, NOT CLOSED.

RM-A: UNCHANGED GENERAL STATUS.

PASS 3: remains available, not opened here.

The machine does not need another kind of bead yet.

It needs a lawful rule for when the world has actually touched the cord and how that touch is marked with the beads it already has.
