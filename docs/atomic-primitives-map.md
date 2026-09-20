# Atomic primitives map — Lace

**One strand, two entry forms, append-only growth.** A WORD records a distinct word occurrence. A POINTER is a further section of that same strand referring to earlier sections. Stars, routes, touches, and higher-dimensional participation describe the structure accumulated on the strand.

**Status: [PROPOSAL] for the decomposition and notation in this map.** The cited source facts remain source facts; deductions are marked `[INFERENCE]`. This is a read-only specification map, not an accepted emission contract or Core implementation. “Atomic” means small specification obligations here. It asserts neither hardware atomicity nor a proof that this is a mathematically minimal basis.

**Source revision:** `NFDFLDTHRY/laceArc` at `ba6a0ee5660dc4222701d8c5b0a38f4a4d6af041`. Graphic letters refer to the [four canonical graphics](graphics/README.md); piece numbers refer to the [systems manifest](systems-manifest.md). The complete [staking law](staking-the-workspace.md) and [live law](law-why-these-documents.md) remain binding. This map does not replace either text.

## 1. The atomic map

These are different roles within **one irreducible contract**, not five services or five kinds of stored object.

| ID | Element | Role and smallest source-supported obligation | Physical grounding | Source |
|---|---|---|---|---|
| P0 | **One strand / one array** | Carrier. Start empty; all WORD and POINTER sections belong to the same ordered line. The strand has two ends and remains open to further growth. | One cord; earlier wrapping stays on that cord. | A1; B1; C1; D1; live law; Piece 1, 6; RM1 |
| P1 | **Occurrence at a position** | Identity and order intrinsic to P0. Each appended section has its own permanent position. Two occurrences of the same word remain two sections. | Two passes through one eyelet remain two passes. | D1–D2, D5; Piece 4, 6, 8; RM2, RM7 |
| P2 | **WORD** | Entry form. A word occurrence carries its word value at its own position. The examples establish repeated occurrences; the general word-boundary and identity rules remain G1. | A new passage through the word's formation. | A2, A5; B2–B3; D2, D5; Piece 4 |
| P3 | **POINTER** | Entry form. A new section refers to already existing earlier positions on the same line. Those positions may contain WORD or POINTER. The new POINTER can itself be referred to later. | A later grab can involve an earlier wrap while leaving it intact. This analogy does not select or schedule a POINTER. | B8; C7; D2–D3, D6; Piece 5, 11; RM4 |
| P4 | **APPEND** | Growth effect. Add a new section at the end, preserving every earlier section and position. This states the permitted effect, not which POINTER should be appended: G2 remains open. | More cord and another pass; previous passes remain. | B1, B12; C1, C12; D1 and footer; Piece 1–2, 6 |

P1 follows from the indexed carrier; it is listed separately because occurrence identity is a separate obligation to preserve. Only P2 and P3 are entry kinds. P4 is the only source-supported change to the line. Input arrival belongs to Contract II; observation belongs to Layer III. Neither introduces another entry kind.

**Continue** means that this same rule remains available for subsequent arrivals and later participation, without closing or resetting the strand. It supplies no scheduler, emission frequency, or promise that a computer call runs forever. The next WORD need not occupy the next array position: Graphic D interleaves WORD and POINTER sections.

### Constraints that accompany every composition

| Constraint | Required property | Source |
|---|---|---|
| K1 — Preserve the prefix | Earlier entries retain their contents and positions. No deletion, rewrite, reset, cut, or index reuse. | B1; C1; D1; Piece 1, 6 |
| K2 — Preserve occurrences and arrival order | Repetition adds distinct passages. Do not intern, reorder, discard, or collapse them to counts or one edge. | A4–A5, A8, A12; B3, B5; C10; D5 |
| K3 — Refer backward within the line | Every referenced position already exists before its POINTER section. POINTER-to-POINTER participation uses the same rule. | D2–D3, D6 |
| K4 — Keep one authoritative structure | No Star table, object-owned relationship list, meaning store, graph database, extra dimension store, or second Lace. | B10; D header and key properties; live law |
| K5 — Observe without write-back | A view can expose recorded structure; drawing or relabeling cannot change old entries or supply unrecorded participation. | B11; C11; D4; live law |
| K6 — Keep the strand open | Recursive participation and definitions do not join the two ends, remove wraps, or restore a historical closed-loop construction. | Live law; staking law; pass-5 sit map |

The constraints are laws on composition, not additional callable operators.

## 2. Composition into the documented mechanisms

This table covers **all 15 manifest pieces**. A composition here identifies structural dependencies. It does not prescribe a sequence of POINTER writes. A row marked G2 has no complete construction algorithm yet.

| Piece | Mechanism | Composition / dependency | What remains open | Source |
|---|---|---|---|---|
| 1 | Continuous strand | P0 extended by P4 under K1, K6. | Concrete resource and failure contract G7. | A1; B1; C1; D1 |
| 2 | Governing rule | Arrival contributes a new P2 occurrence to P0; the same rule threads the word's formation, participates through P3, and continues. | The participation/emission part G2. No independent graph-building phase follows ingest. | B12; C12; D footer |
| 3 | Raw input / arrival | Contract II supplies ordered word occurrences to the governing rule, preserving each arrival through P1, P2, P4. | Word boundaries and identity G1; concurrent ordering G6. | A2–A4; B6; C10 |
| 4 | WORD entry | P2 at its distinct P1 position in P0. A repeated word is a new occurrence. | G1; no normalization default. | D1–D2, D5 |
| 5 | POINTER entry | P3 appended by P4; references earlier P1 positions under K3. | Trigger, selection, arity, adjacency, and interleaving G2. | D1–D3, D6 |
| 6 | Only store | P0 contains both entry forms and grows by P4 under K1–K4. | Concrete encoding, persistence, resources G7. | Graphic D |
| 7 | Star formation | First occurrence begins the formation; subsequent same-variable passages accumulate, with their order and participation retained. Depends on P1–P4, not a Star record. | General identity G1; construction G2; faithful structural readout G5. | A2, A5, A12; B2–B3; D4–D5 |
| 8 | Sequence as route | Ordered occurrences on the continuous strand give the word route through formations. No sentence container is added. | Whether adjacent WORDs imply a relation is still G2. Sequence alone does not settle it. | A4; B5; C2 |
| 9 | Dictionary wiring | Definition text uses the governing rule and sequence-as-route through ordinary stars. | G1–G2; identifying and traversing a particular definition G3–G4. | A6, A11; B4; C9 |
| 10 | Document feed | Document words use the same arrival and route mechanism as dictionary words. Distinct contextual passages remain. | Boundary/provenance representation G3. | A6–A9, A11; B6; C10 |
| 11 | Touch / re-entry | New participation can refer to earlier participation because a P3 section is itself addressable through P1. Existing sections remain. | Which touch is admitted or written G2; read-versus-new-arrival distinction G4. | A10; B7–B8; C7; D6 |
| 12 | Dimension | Read independent participation and relations among relations in the same P0. Further participation uses P3, not another store. | Axis identification and independence criterion G5; emission G2. | C5–C8; D6 |
| 13 | Projection | Read P0's order, occurrences, and references into a sequence, graph drawing, or 3D view under K5. | General traversal G4; faithful geometry/readout G5. | B10–B11; C2–C4, C11; D4 |
| 14 | No stored meaning / no collapse | K1–K5 constrain every preceding composition. Ambiguity remains as distinct passages. | No new mechanism is needed to enforce this at specification level; implementation enforcement is unproved. | A8, A13; B10; C9, C12; D |
| 15 | Star-internal traffic | Observe incoming passages, internal participation, and outgoing passages of Piece 7 with order and occurrence distinctions preserved. | Precise readout G4–G5; emission G2. | A12; B9 |

### Further names already used in the repository

| Name | Dependency in the map | Boundary |
|---|---|---|
| Conversation and provenance routes | The same strand, arrival rule, sequence, and participation as Pieces 8–10. C6 names these route families. | Naming a family supplies neither a new row type nor its boundary encoding; G3. |
| Project meaning / recursive definition | Words are defined through routes of other word stars; those words have further definition routes. Pieces 7–9, 11 support this structural description. | Live-law usage of “meaning”; no stored gloss, HCC-A weight, accepted traversal algorithm, or closed splice. |
| Cluster / variable label | A Layer III name for observed index geometry after legal growth. A changed cluster can receive created, split, or merged labels. | Label operations do not mutate WORD values, change occurrence identity, or write POINTERs. |
| Clock tick | One legal append, P4, as counted in the live law. | Neither elapsed time nor a holder's request establishes that a legal append occurred. G2 still controls the missing construction rule. |
| Focus / zoom / camera | A selected view of existing structure. | Focus is not the append frontier. Picture depth is not contact admission or POINTER arity. |

Sources: [live law, Clock and Meaning](law-why-these-documents.md), [mathematical model §2.3.1](clock/system-mathematical-model.md), [pass-5 sit map](history/history-recovered-pass-5-sit.md), and [visual vocabulary](hologram/visual-primitives.md).

## 3. Concrete witness: Graphic D's existing example

The following is a transcription of **D1**, not a trace generated by a proposed emission algorithm. D2's two-reference example does not settle general arity.

| Position | Kind | Value / depicted references |
|---|---|---|
| 0000 | WORD | PIE |
| 0001 | WORD | DESSERT |
| 0002 | POINTER | 0000 → 0001 |
| 0003 | WORD | PIE |
| 0004 | POINTER | 0003 → 0000 |
| 0005 | WORD | WHOLE |
| 0006 | POINTER | 0003 → 0005 |
| 0007 | POINTER | 0006 → 0004 |
| 0008 | WORD | CUSTOMER |
| 0009 | POINTER | 0008 → 0007 |
| 0010 | POINTER | 0009 → 0002 |

This example witnesses three compositions:

1. **Repeated occurrence:** WORD at 0000 and WORD at 0003 both show PIE. Their occurrence identities remain different. D5 describes accumulating passages through the same star.
2. **Participation in participation:** 0007 refers to the already present POINTER sections 0006 and 0004. 0009 then involves a WORD and that earlier participation. No new entry kind appears.
3. **Continued reuse:** 0010 refers to 0009 and the older 0002. Neither earlier POINTER is edited to accommodate the later reference.

### Three identities must remain distinct

| Identity | What answers it | What it does not decide |
|---|---|---|
| Occurrence identity | Which permanent position? PIE at 0000 differs from PIE at 0003. | Whether two values name the same word-variable. |
| Word-variable identity | Whether occurrences are of the same variable; the repeated PIE example is explicit. | Case, punctuation, normalization, multiword names, or a general matching algorithm: G1. |
| Observed cluster label | What a view names the structure it observes at a particular prefix. | Permission to split, merge, rename, or replace historical WORD sections. |

The set of PIE occurrence positions `{0000, 0003}` is a useful membership observation. **It is not the complete star formation.** It omits the route, order context, and participation displayed elsewhere in D1 and A12/B9. The mathematical model's `Star(v)` membership set must therefore be read together with its participation qualification, never substituted for the formation.

### Three orders must remain distinct

| Order / direction | D1 witness | Consequence |
|---|---|---|
| Append order | 0005 exists before 0006. | Later growth extends the line. |
| Reference from a POINTER section to an operand | Section 0006 refers to positions 0003 and 0005; both are earlier than 0006. | Backward-reference invariant K3. |
| Arrow depicted between a POINTER's operands | At 0006 the illustration shows 0003 → 0005. | An operand arrow need not descend in index. It is not the same relation as 0006 referring backward to its operands. |

Consequently “all arrows go backward” is too broad. Only the reference from a later POINTER section to each referenced earlier position has the strict index-descent property.

## 4. Bounded deductions and construction limits

These are **[INFERENCE] proof sketches over the abstract description**, reviewed by one agent. They are not implementation proofs, physical experiments, or evidence of accepted emission semantics.

**Prefix preservation.** Assume a finite prefix and an extension that adds one section while leaving all prior positions unchanged. After one such extension the old prefix is unchanged by the premise. Induction gives the same result after any finite sequence of these extensions. This proves history preservation for the stipulated append effect; it does not prove that any particular emitted section was authorized.

**Distinct occurrences remain distinct.** Assume every appended section receives the next unused position and K1 holds. Different appends then occupy different positions, and later growth cannot identify or replace them. Equal WORD values do not change that positional distinction.

**Finite backward-reference descent.** In a finite prefix, follow only the relation “POINTER section at j references position r.” K3 gives `0 ≤ r < j` at every step. A chain beginning at j can make at most j strictly decreasing steps, so that relation has no cycle. This proves neither termination of an unspecified general traversal nor acyclicity of all depicted operand relations. Unbounded future growth alone does not prove an infinite walk through a fixed finite prefix.

**[UNESTABLISHED] Full construction and minimality.** The sources support the listed forms and constraints. They do not yet provide a total rule taking arbitrary arrivals to all required POINTER sections, a faithful reconstruction algorithm for all geometric distinctions, or a proof that this basis is algebraically minimal. Removing occurrence distinction loses the two PIE passages; removing POINTER addressability loses D1's 0007/0009/0010 participation. Those are necessity witnesses at the stated grain, not a general completeness theorem.

### Open construction obligations

| Gap | Exact unresolved obligation | Source / impact |
|---|---|---|
| G1 — Arrival and word identity | What are word boundaries? What distinguishes or equates case, punctuation, homographs, and multiword names? | Manifest Q1; agent-control C04–C05. Needed for general arrival and star reuse. |
| G2 — POINTER emission | What observable condition emits a POINTER, when relative to WORD arrivals, with which earlier targets, at what arity? Does adjacency already constitute participation? What distinguishes no emission from an emitted section? | Manifest Q2; D2 is only an example; AGENTS implementation gate. Needed to construct the full mechanism. |
| G3 — Route boundaries | How are dictionary, document, conversation, and provenance boundaries represented or recognized using the permitted model? | Manifest Q3 and C6. No new boundary row is authorized. |
| G4 — Read / query / traversal | Which recorded structure may a read traverse, in what direction, and what does it return? If interaction later causes an arrival, what distinguishes that from the read itself? | Manifest Q4; mathematical model §2.8. Layer III stays strictly read-only. |
| G5 — Structural fidelity | Which array facts establish threading, independent participation axes, and a faithful view? Which geometric details are only rendering choices? | Manifest Q6; C5–C8; D4. No inference of missing participation from a picture. |
| G6 — Concurrent arrival | What establishes one order when arrivals compete? | Manifest Q5. The shared-agent editing protocol is not a Core scheduler. |
| G7 — Concrete realization | Representation, index bounds, capacity, allocation, persistence, interruption and failure behavior must be contracted before relevant implementation. | Agent task template §5; control C08. Engineering obligations, not newly discovered Core operators. |

Closing G2 is necessary for Core construction and does not automatically close G1 or G3–G7. The mathematical model §6's executable-incompleteness “if and only if” wording is too strong to use as a sufficiency result: control C03 explicitly keeps other facts needed by an implementation open. No such sufficiency claim is made here.

## 5. Conceptual references and visual vocabulary

HCC-A, The Coffee Cup, and Where the Water Is Loud / Dual Proofing Systems are **conceptual reference documents**, as [corrected by the human on 2026-09-20](law-why-these-documents.md#conceptual-reference-documents). The clock's driver/phase/clutch labels below are interpretations of their concepts. They do not establish required holder machinery, runtime dependencies, or legal-append conditions. Their concepts remain available for reasoning; none supplies a Core operator or an additional Graphic D entry.

| Mechanism family | Constituent vocabulary / composition | Where it belongs |
|---|---|---|
| HCC-A concepts; interpreted as clock train A / driver | Reality → Interface; parallel RIC and PFC; Compiler; Story Ledger; Meaning Engine; Emotional Layer; Identity/State Layer; Behavior; feedback to Reality; S0–S7 phases and Six-Act cycle. | `[H]` names the conceptual model's domain, not a required component. Ledger mutation and meaning weights are not Lace writes; B does not specify G2. |
| Coffee Cup concepts; interpreted as clock train B / phase | Conditions, Release, Trajectory, Impact, Aftermath; Aftermath changes subsequent Conditions. Trajectory is the intervention window. | Conceptual causal sequence. No stage rewrites a historical Lace occurrence or decides POINTER emission. |
| Water/Proofing concepts; interpreted as clock train C / clutch | Banks, Rapids, Delta, Crossing, Bank Rebuild; OBS, DELTA, UNK, INVALID; Locate, Anchor, Pair, Unknowns, Reject. | Conceptual communication vocabulary. An OBS address is not a Graphic D position; Anchor is not P3/P4. |
| Coupled clock interpretation | Co-presence cells t0–t6, Lock/Release escapement, Aftermath/Rebuild/ActVI recurrence, and six boundary audits. | `[III]` conceptual display, not required holder composition. The [walk artifact](clock/shadow-clock-gear-contracts.md) controls its panel copies. It does not supply G2. |
| Visual primitives | Worldline, slice, stream, helix, shells, projected crossings; holder recirculation may be shown as a torus. | `[III]`. No closed Core ends, vortex reconnection write, stored coordinates, or dynamical physics inferred from a picture. |

Source crosswalk: HCC-A §§1–5; *The Coffee Cup*, Stages One–Five and its loop; *Where the Water Is Loud*, Specs §§1–4, 6; repository [philosophy map](clock/philosophy-map.md), [hologram](clock/shadow-clock-hologram.md), [walks](clock/shadow-clock-gear-contracts.md), and [visual vocabulary](hologram/visual-primitives.md).

The five academic stakes also supply no atomic Core operator. Kauffman's later grab and diagram/cord distinction, Rowlands' empty start, Xiao–Zhu's arrival-order contrast, Petersen–Zech's function/construction distinction, and AgentScope's holder failure taxonomy retain exactly the KEEP/FORBID boundaries in the full law and [reason-model map](reason-model-map.md). This task does not reopen their rejected constructions.

## 6. Propose / attack / resolve

**Proposal:** Use P0–P4 with K1–K6 as the source-grounded specification map, and use the composition table to locate every current manifest mechanism and its outstanding construction obligation.

**Attack and resolution:** Performed by the same agent that proposed the map; this is not independent review.

| Candidate failure | Pointable counterexample or boundary | Resolution in this map |
|---|---|---|
| One WORD plus a repetition count is sufficient. | D1 has PIE at both 0000 and 0003. | P1/P2 and K2 retain both. |
| A list of matching indices is the whole star. | A12/B9 require distinct traffic and contexts; D1 includes participation beyond WORD membership. | Section 3 limits the membership reading. Full readout remains G5. |
| Every adjacent WORD pair emits a binary POINTER. | Manifest Q2 explicitly leaves timing, arity, and adjacency open. | G2 stays open; D1 is a witness, not a scheduler. |
| “Backward” forces every depicted operand arrow to descend. | D1 row 0006 depicts 0003 → 0005. | Section 3 separates the three relations; the proof uses only section-to-reference descent. |
| Add a continuation field now and fill it later. | A later write changes an earlier section, even if performed once. | K1 rules it out; no mutable continuation slot. |
| Labels splitting or merging must split or merge historical WORDs. | Live law confines these acts to naming observed geometry. | Three identities remain separate; K5 applies. |
| An OBS anchor or a holder's Release provides emission. | Water's talk pointers and Cup's phases are concepts in reference documents, not Lace operations. | Section 5 keeps their interpreted effects out of Graphic D; G2 is unchanged. |
| Pointer depth gives a numeric dimension or intelligence score. | C5–C8 discuss independent participation; no such metric is specified. | G5 remains open; density proves neither learning nor reasoning. |
| Recursive definitions close the ends or guarantee an infinite existing path. | Live law forbids a closed splice; finite descending references cannot cycle. | K6 and the bounded proof preserve both distinctions. |
| Completing emission alone proves the whole system executable. | Word identity, traversal, encoding, resources, and relevant failure obligations can still be unsettled. | G1–G7 remain separate obligations. |
| A derived cache may become the authority because it is called a view. | Control C05 requires removing a derived aid to lose no authoritative fact; the permanent store prohibitions still apply. | P0 and K4–K5 preserve authority on the line. |

**Bounded verdict:** Complete as a mapping of the current 15 manifest pieces and the named conceptual-reference/view families above. Incomplete as an executable construction, physical validation, minimality proof, or accepted POINTER contract. These limits are part of the result.

**Next narrow question:** What precise source-backed condition distinguishes a WORD-only continuation from one that also appends a POINTER, and how does that condition determine the earlier targets? A future `docs/pointer-emission.md` must resolve the relevant G2 questions and receive human acceptance of its exact revision before Core code is permitted. This map supplies no answer by default.

## 7. Task and source receipt

| Field | Observed scope / status |
|---|---|
| Requested outcome | “We need an atomic primitives mapping from which we build all the mechanism of lace.” |
| Assigned question | Can every documented Lace mechanism be traced to source-supported elements and constraints while its missing construction rules stay explicit? |
| Task / branch | Atomic primitives mapping; existing `main`; docs/review only. No implementation branch opened. |
| Base | `ba6a0ee5660dc4222701d8c5b0a38f4a4d6af041`; clean before this file. |
| Re-anchor | Initial read at `68b31c3`; origin advanced to `ba6a0ee`. Read the new five-stake clipboard and README/reference additions; canonical graphics, manifest, and law were unchanged. Fast-forwarded before writing. |
| Law revision | Live law last changed at `73ae4e2c123c048458f5bae6a193733b8226e7e5`. The older transport copy in agent-control omits the later clock/label/meaning/history blocks; this map uses the live law for those rules. |
| Physical operation | Source analogy: add a passage and allow later participation while retaining all previous passes on one two-ended cord. Physical test by this agent: **NOT_PERFORMED**. |
| Graphics | A, B, C, D visually inspected. D1 transcription checked against the image. |
| Prose read | Manifest Pieces 1–15, seams, questions; standing orders; control C01–C12; task template; full staking/live law; relevant reason-map and philosophy-map sections; mathematical model; shadow hologram and relevant walk sections; visual primitives; pass-5 sit; pass-6 plan; current resync. |
| Original holder texts | HCC-A v1.0, Coffee Cup, and Water/Proofing supplied text originals read in full. Source identities are recorded in the repository reference/philosophy maps; no original copied into git. |
| Unread / unperformed | No new full reading of the five academic works or exhaustive historical recovery. Pass 6 remains a plan. No physical experiment, Core runtime test, renderer change, or independent review. |
| Known source limitations | General arity remains unresolved despite D2's binary example; historical unary POINT is not imported. Membership is not full star structure. Unbounded extension does not by itself prove infinite traversal. Emission closure is not sufficient for every implementation obligation. |
| Allowed file / effects | Only `docs/atomic-primitives-map.md`: a reviewable prose map. No changes to other contributors' files, renderer, canonical graphics, law, or source definitions. |
| Expected check | All 15 pieces mapped; every composition names its dependencies and unresolved obligations; local links resolve; sole changed file is this map. |
| Actual evidence | Source review and file inspection: Pieces 1–15 each appear once in the composition table; all 14 local links resolve; D1 has all 11 transcribed rows and every POINTER operand is earlier than its containing section. Only this file is changed. These are document checks, not a Core execution test. |
| Acceptance | Human authorization covers making the mapping. Acceptance of an exact POINTER-emission contract is **ABSENT** in the inspected state. This receipt creates none. |
| Enforcement | This document is advisory; it does not configure runtime or repository access controls. |
| Completion boundary | Deliver the mapping and its source/review evidence. No new Core code or automatic opening of another task. |
