# Language structure / interaction loop — Pass 2 boundary / event algebra

Status: EXECUTED ANALYSIS ARTIFACT — Pass 2.
Plan: language-structure-lace-pass-2-plan.md.
Execution claim: 6608bdf522add1c6062d58008d90bf7c6f6ef04a.
Execution base: 1242652e11828a06f148d2e2f6cdb2fde280f58f.
Station: maps, ChatGPT-language-structure-pass2.
Authority: Lab analysis only. No human acceptance. No Core, law, model, manifest, graphics, or blueprint edit.
Core / RM-A / pointer acceptance / implementation: unchanged. No src. No new row kind. No new authoritative store.

## 0. Headline

Current Lace can preserve the word history of an interaction, but current Core cannot reconstruct interaction boundaries or direction from that history alone because those facts are not inputs to the current transition. This is BE-1 below.

Existing WORD / POINTER machinery is nevertheless expressive enough to ground any externally selected finite contiguous textual act to one point. This is BE-2. Therefore the missing issue is not basic representational capacity.

Bare span grounding is not a complete event encoding: a one-word act adds no boundary-specific row, span grounding carries no IN / OUT role, and an ordinary POINTER does not say why it was written. This is BE-3.

A corrected existing-row candidate can be exhibited using a fresh role-bound wrapper POINTER around a payload representative. That shows a third row kind has not been proved necessary. But the candidate requires new boundary authority, dedicated role anchors, and an external commitment witness. It is not current law.

## 1. Current transition boundary

| Surface | Current input | Lace effect | What it does not preserve |
|---|---|---|---|
| SUBMIT | external value into empty hopper | none | not yet history |
| STEP / Arrive | admitted value | WORD, plus ruled RootTouch when seen | no message or role label |
| REFUSE | pending value on capacity failure | none | no false success |
| S9 device-only step | Lace + local/context | none by RD-1 | local output is not history |
| PROJECT | Lace prefix | none | rendered view cannot write |
| S9 feedback | behavior affects external world | none backward | may produce later input |
| RootTouch | new seen occurrence + root | one Join | lexical participation, not conversation role |
| generic Join | selected ordered Lace points | one POINTER | selection remains authority-gated |

The current one-strand machine therefore knows ordered admitted WORD / POINTER history. It does not currently consume or store message-boundary or speaker-direction values.

## 2. Lab-only definitions

Let an external interaction trace be tau = E1 ... Em.

A textual act is described outside Core as:

E = direction, finite ordered word payload, crossing witness.

direction is IN or OUT.

Flatten(tau) is the concatenation of all textual payload words.

BoundaryTruth(tau) is the ordered list of act directions and act lengths.

These are analysis objects only. They are not proposed row types.

## 3. BE-1 — boundary non-identifiability

Statement.

Fix:
1. one initial Lace state;
2. one fixed bounded G1 equality relation;
3. one deterministic current Core transition sigma(L, v);
4. serial successful execution with no intervening OPEN;
5. no boundary or direction information supplied to sigma.

If two external traces have the same Flatten sequence, current execution produces the same final Lace.

If those traces have different BoundaryTruth, then no total Lace-only read can correctly recover BoundaryTruth for both.

Stamp: PROVED_WITHIN_SCOPE.

Proof.

Reduction-model M2 states that, with sigma fixed, the final strand is the fold of sigma over the admitted arrival sequence and is independent of PROJECT / PERSIST interleaving.

Therefore equal admitted arrival sequences give equal final Lace.

Assume a total Lace-only decoder f correctly recovers boundary truth. Choose two admissible traces with the same admitted word sequence but different boundary truth. Both produce the same Lace L*. Correctness would require f(L*) to equal two different boundary truths. Contradiction.

Concrete S1 witness.

Same word sequence:

a b c d

Trace A:
IN [a b]
OUT [c d]

Trace B:
IN [a]
OUT [b c d]

With distinct artificial words and no generic RM-A Join, both current traces are:

0000 WORD a
0001 WORD b
0002 WORD c
0003 WORD d

Concrete S2 role witness.

World A:
IN [yes]
OUT [yes]

World B:
OUT [yes]
IN [yes]

Both current traces are:

0000 WORD yes
0001 WORD yes
0002 POINTER 0001,0000

The POINTER is RootTouch. It does not encode speaker role.

Refuter.

BE-1 would fail if current Core already consumed or retained a lawful boundary / direction discriminator. Current manifest G3 and C6 say it does not.

## 4. BE-2 — externally selected contiguous text is mechanically groundable

Statement.

Given a nonempty finite contiguous source-word span whose WORD rows already exist in a named prefix, the span's ordered WORD-row addresses are reconstructible from WordTrace. Repeated Join can ground the list to one addressable point.

Length one: the representative is the existing WORD row.

Length n at least two: the finite-sample ladder appends n minus one POINTER rows.

Stamp: PROVED_WITHIN_SCOPE as construction capability.

Basis.

This is the same mathematics as Theorem G, RM-B(contig), and RM-C(contig).

Authority fence.

This proves:

externally named finite span
→ ordered existing WORD rows
→ one representative is constructible.

It does not prove:

external message boundary
→ Core is currently authorized to append those grounding Joins.

Calling the result an EventPoint is candidate semantics, not current law.

## 5. BE-3 — bare span grounding is incomplete

Candidate BE-B from the plan treats the payload representative itself as the event point.

That does not completely encode interaction boundaries.

First failure: one-word acts.

The n = 1 grounding case appends nothing. Therefore:

IN [yes]
OUT [yes]

still has no boundary-specific row beyond ordinary repeated-word RootTouch.

Second failure: no direction.

A grounded payload says only that these ordered occurrences were grouped by the candidate. It does not say IN or OUT.

Third failure: an untyped Join does not explain why it exists.

The same Join topology could also be present because another structural rule retained those operands.

Stamp: PROVED_WITHIN_SCOPE for the BE-B candidate.

Disposition: useful construction ingredient, not complete boundary algebra.

## 6. BE-4 — selected output is not committed output

The interaction boundary must distinguish:

CANDIDATE_OUT
→ SELECTED_OUT
→ SEND_ATTEMPT
→ either FAILED_OUT or COMMITTED_OUT.

Counterexample:

1. device generates candidates x, y, z;
2. resolver selects y;
3. send fails;
4. user never receives y.

Therefore SELECTED_OUT is not COMMITTED_OUT.

Stamp: DERIVED from an explicit failure counterexample.

Consequence.

S9 / S12 local selection cannot prove actual output happened. A response-history rule needs an external commitment witness or must explicitly choose weaker intended-output semantics.

## 7. BE-5 — one input/output pair is not universal provenance

Candidate BE-F uses Join(O, I) to mean output O responded to input I.

That can encode one selected transaction edge if event points and order are already lawful.

It is not a universal response-provenance representation.

S6:
IN [a b]
OUT1 [c]
OUT2 [d e]

One input may have multiple outputs.

S7:
IN1 [a]
IN2 [b c]
OUT [d]

One output may depend on several prior inputs.

One pair can name only one edge. A complete support relation needs repeated relations, an already-lawful aggregate context point, or another declared structure.

Disposition: CONDITIONAL for one explicit transaction edge; REFUTED as a universal one-pair provenance rule.

## 8. Candidate court

### BE-A — plain output loopback

After external commitment, feed outbound text through ordinary arrival.

Strength:
- one Lace;
- output word occurrences become durable;
- repeated words re-enter existing roots / stars;
- no new row type.

Failure:
- BE-1 still applies;
- no message grouping;
- no IN / OUT;
- no response-to relation.

Disposition: COMPATIBLE_CANDIDATE for payload recording; REFUTED as complete boundary algebra.

### BE-B — externally selected span grounding

External boundary supplies one contiguous act span. Ground it with existing finite-sample machinery.

Strength:
- construction is proved.

Failure:
- BE-3;
- no direction;
- no current authority says boundary fact fires the grounding Joins.

Disposition: COMPATIBLE_CANDIDATE ingredient; incomplete.

### BE-C — role anchors

Assume earlier dedicated role points A_IN and A_OUT.

Candidate wrappers:

Join(payloadRepresentative, A_IN)

or

Join(payloadRepresentative, A_OUT)

Strength:
- fresh wrapper exists even for a one-word act;
- direction is structurally distinguishable if anchors are known;
- no new row kind.

Open premises:
1. how the role anchors are established;
2. why they have reserved boundary meaning;
3. why the boundary may append this wrapper;
4. class-specific operand order;
5. ordinary structural retention must not accidentally masquerade as a role wrapper.

Disposition: CONDITIONAL. Expressively viable, authority absent.

### BE-D — sentinel / delimiter WORDs

Inject control words around payloads.

Failure:
- modifies the raw route with words not actually said;
- requires reserved vocabulary semantics under G1;
- collides with ordinary language;
- hides metadata as content.

Disposition: FORBIDDEN as a transparent current-Core boundary encoding.

### BE-E — authoritative sidecar

Keep boundaries / roles in another durable event log keyed by Lace ranges.

Failure:
- solves the problem by creating another authoritative history.

Disposition: FORBIDDEN as authoritative state.

A sidecar may remain disposable UI, diagnostics, external evidence, or custody. Claims preserved only there are not Lace-only facts.

### BE-F — interaction pair

After event points exist, append a relation between output event and one input/context event.

Strength:
- binary Join can represent one selected directed edge if a class-specific role/order rule exists.

Failure:
- BE-5: one pair is not universal support/provenance.

Disposition: CONDITIONAL for explicit transaction edges; universal form REFUTED.

### BE-G — support-bearing output provenance

Reader returns response plus a support set selected by search/model machinery.

Failure:
- support was selected by device machinery;
- S9.8 forbids device output from automatic retention authority;
- Candidate is not Evidence;
- highest score is not Truth.

Disposition: FORBIDDEN as automatic retention. Defer support retention until a later lawful provenance policy exists.

## 9. BE-H — corrected survivor: role-bound event wrapper

Pass 2 can exhibit one synthesis candidate that answers the representational-capacity question without claiming authority.

Premises.

1. external boundary supplies a finite ordered payload span;
2. a pointable external witness establishes that the act actually crossed;
3. two dedicated earlier Lace points A_IN and A_OUT exist with boundary-role meaning under an explicit protocol;
4. the protocol has class-specific authority to append one wrapper Join;
5. wrapper order is fixed as payload representative first, role anchor second.

Construction.

First, ordinary successful WORD arrivals preserve the payload.

Second, build payload representative P:
- one word: that WORD row;
- several words: BE-2 repeated-Join grounding.

Third, append one fresh wrapper:

IN:
Join(P, A_IN)

OUT:
Join(P, A_OUT)

The fresh wrapper exists even for a one-word act.

What it would provide under its premises:
- event grouping;
- direction;
- one store;
- existing row kinds only;
- raw payload unmodified;
- repeated lexical occurrences preserved.

Why it is not current law:
- no current role anchors;
- no current reserved boundary-anchor identity;
- no current boundary-triggered wrapper authority;
- no current class-specific role-wrapper ordering rule;
- no current exact outbound commitment witness.

Disposition: COMPATIBLE_CANDIDATE / CONDITIONAL.

Key result.

Existing WORD / POINTER forms are expressive enough in principle under additional boundary premises. A third row kind has not been shown necessary.

This is not the same as proving existing law is sufficient.

## 10. Event grain

Word-level, chunk-level, and whole-message crossings produce different histories.

Word-level makes streaming details structural and loses the higher-level act unless later grouped.

Chunk-level imports transport policy.

Whole-message best matches the bounded conversation hypothesis, but streaming products may commit output before final completion.

Pass-2 scope therefore uses whole-message as an experimental grain only. Event grain remains boundary/application policy, not Core law.

## 11. Outbound commit versus Lace recording

No current theorem makes an external user-visible sink and Lace persistence atomic.

Record before send:
- Lace may claim output happened;
- send can fail.

Send before record:
- user can receive output;
- process can fail before Lace records it.

Therefore proof-grade external-output history needs a host/custody/recovery contract such as:
- pointable commit receipt;
- pending outbound-record custody;
- idempotent replay;
- durable ordering.

Pass 2 does not design that protocol.

Gap consequences:
- GAP-HOST becomes directly relevant to external commit evidence;
- R3 becomes conditional for durable complete output history;
- R4 gains an outbound-custody analogue;
- none justifies an EVENT row type.

A bounded Lab may assume a supplied external commitment witness while keeping these implementation debts explicit.

## 12. G3 decomposition

Current G3 is too coarse for the interaction loop.

Pass 2 exposes:

G3-A — segmentation
Which ordered WORD occurrences form one external textual act?

G3-B — direction
Was the act inbound or outbound?

G3-C — commitment
What pointable fact says an outbound selected response actually crossed?

G3-D — retained representation
If Lace itself must replay A/B, what WORD / POINTER topology is authorized to carry them?

G3-E — session / conversation scope
Which external acts belong to one interaction route when multiple streams exist?

None is closed by this pass.

## 13. Relationship to RM-A / RM-B / RM-C

RM-A:
UNCHANGED as the general sampling-derived retain-when problem.

Event-boundary selection is a different selection source. A future boundary rule would be a class-specific append condition, not the general answer to RM-A.

RM-B:
Mechanically reusable. BE-2 uses the same finite ordered grounding machinery.

RM-C:
Contiguous payload order is already intrinsic. Role-wrapper order and response-pair order would require their own class-specific rules.

## 14. Gap impact

| Gap / surface | Pass-2 effect |
|---|---|
| G1 | unchanged globally |
| G3 | split into G3-A through G3-E; central interaction blocker |
| G4 | unchanged; later replay can consume event structure if it exists |
| C6 | named route families still do not provide a discriminator |
| RM-A | unchanged general status |
| RM-B(contig) | reusable construction capability |
| generic RM-C | unchanged; new boundary classes owe class-specific order |
| R3 | conditional dependency for durable output-history completeness |
| R4 | outbound custody debt exposed |
| GAP-HOST | elevated for external commitment witness |
| S9 | output versus feedback distinction becomes central |
| S10 / EP-1 | external commitment may be evidence without becoming automatic Lace |
| S12 | local candidate / selection explicitly fenced from commitment |
| Open #15 | unchanged |
| TARGET | unchanged |
| H×C×W coupling | unchanged |

## 15. What each candidate can actually support

| Candidate | payload words | grouping | role | response edge | Lace-only after recording |
|---|---|---|---|---|---|
| BE-A | yes | no | no | no | words only |
| BE-B | yes | partial / multiword | no | no | grouping needs convention |
| BE-C | assumes payload rep | if paired with span | conditional yes | no | only under new protocol |
| BE-D | yes | yes | yes | no | control-word pollution; forbidden current |
| BE-E | yes | yes | yes | arbitrary | no, sidecar required |
| BE-F | assumes event points | inherited | inherited | one selected edge | conditional |
| BE-G | candidate only | n/a | n/a | model-selected support | forbidden as auto-write |
| BE-H | conditional | yes | yes | not by itself | yes under explicit new protocol |

## 16. Pass-2 conclusion

The repository did not support the claim that WORD / POINTER rows are fundamentally incapable of carrying interaction boundaries.

A role-bound wrapper demonstrates enough representational capacity in principle.

The repository also did not support the claim that current law already tells us how to do it.

The machine therefore appears to owe a boundary protocol, not necessarily a new row type.

That protocol would have to supply:
1. external text span;
2. external commitment witness;
3. event grain;
4. direction / role fact;
5. lawful boundary-wrapper append condition;
6. replayable role-anchor or equivalent convention;
7. host/custody behavior for commit-record divergence.

Pass 2 accepts none of those premises.

## 17. Evidence stamps

BE-1 boundary non-identifiability — PROVED_WITHIN_SCOPE.
BE-2 finite text-span groundability — PROVED_WITHIN_SCOPE.
BE-3 bare-span incompleteness — PROVED_WITHIN_SCOPE.
BE-4 selected is not committed — DERIVED by explicit failure counterexample.
BE-5 one-pair universal provenance — REFUTED by S6 / S7.

BE-A — COMPATIBLE_CANDIDATE / incomplete.
BE-B — COMPATIBLE_CANDIDATE ingredient / incomplete.
BE-C — CONDITIONAL.
BE-D — FORBIDDEN current transparent encoding.
BE-E — FORBIDDEN as authoritative state.
BE-F — CONDITIONAL; universal form REFUTED.
BE-G — FORBIDDEN as automatic retention.
BE-H — COMPATIBLE_CANDIDATE / CONDITIONAL.

New row kind required — NOT ESTABLISHED.
Existing row kinds sufficient under current law — NOT ESTABLISHED.
Existing row kinds sufficient in principle under added boundary premises — EXHIBITED.
G3 closed — NO.
RM-A closed — NO.

Pass 2 supplies a boundary court. It supplies no boundary ruling.
