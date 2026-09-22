# Pass 4 source mechanism map — Where the Water Is Loud / Dual Proofing Systems

**Campaign:** Source → Lab → Lace Alignment Restart · Pass 4.  
**Source:** uploaded `Where the Water Is Loud.txt`.  
**Source SHA-256:** `9b7eddd593765fb370ffd90020e9995fd30a96ce261cb9c5140ec3e14f97ff65`.  
**Source lines:** 522.  
**Authority:** source-analysis / Lab evidence. **Not Core. Not an implementation design.**  
**Purpose:** recover the source's two cooperating proofing systems plus interface as desired-behavior mechanisms, separately from Pass-3 pointability/crossing assay projections.

**Current-target qualification — Behavioral Read Devices Pass 6:** this file remains a faithful map of what the supplied Water source itself said at Alignment Restart Pass 4. Later human rulings supersede two source-level target behaviors for the current machine: **UNK is now a nonblocking predicted evidence shape that waits for future evidence**, and **INVALID is now a claim later evidence has established as wrong; lexical/non-computable phrase matching is not the current INVALID rule.** Preserve W-BM09/W-BM10/W-BM11 and the original F5 material below as source provenance/history, but do not use them as the current target contract. Current target route: [`law-why-these-documents.md`](../law-why-these-documents.md#conceptual-reference-documents) plus the Pass-5 [Water device blueprint](math-execution-behavioral-read-devices-pass-5-water-device-blueprint.md).

## 0. Source-level thesis

Water describes a communication-repair architecture with three source-defined parts:

1. **System A — Proof Ledger**  
   turns messy conversation into pointable/addressable claims, differences, unknowns and invalid input;

2. **System B — River Proofing**  
   identifies whether the parties are on banks, in rapids, or at a crossable delta;

3. **Delta Bridge interface**  
   translates River location into Proof Ledger requirements and vice versa, using shared states and functions.

The source's purpose is not “decide who is right.”

It is:

```
Can understanding happen yet?
If not:
    where are we?
    what is missing?
    what must change before crossing is possible?
```

Pass-3 assays capture several invariants, but not this whole mechanism.

---

## 1. Story-derived mechanism observations

The narrative portion already demonstrates the later formal system.

| ID | Tags | Source | Desired-behavior mechanism |
|---|---|---|---|
| **W-BM01** | BM-FAILURE · BM-OBSERVABLE | Story L10–46 | **Pressure without reference produces heat, not compute.** Tense statements without examples/reference points increase density/urgency while nothing “catches.” |
| **W-BM02** | BM-DIAGNOSTIC · BM-TRANSITION | Story L47–61 | **Slow down and recover one pointable thing.** Written, slower exchange exposes missing structure; “pick one thing you can point at” becomes the repair move. |
| **W-BM03** | BM-INVARIANT | Story L63–89 | **Pointable shared structure is compatible with disagreement.** Understanding begins when both can point at the same thing even if interpretations differ. |
| **W-BM04** | BM-FLOW · BM-METAPHOR | Story L70–104 | **Banks/Rapids/Delta topology.** High-energy rapids feel like communication but do not transfer; crossing happens where shared footing exists. |
| **W-BM05** | BM-NORMATIVE-NOT · BM-DIAGNOSTIC | Story L95–109 | **Diagnose location, not moral defect.** Earlier failure need not imply malice/stupidity; repair is noticing that crossing is not yet available. |

The story is evidence/examples for the formal mechanism. The later Specs section carries stronger formal language.

---

## 2. Proof Ledger mechanism — System A

| ID | Tags | Source | Desired-behavior mechanism | Inputs / state | Transform / output | Invariants / failure | Pass-3 coverage | Placement |
|---|---|---|---|---|---|---|---|---|
| **W-BM06** | BM-ONTOLOGY · BM-STATE | Specs L298–315 | **Proof Ledger primitive space:** OBS / DELTA / UNK / INVALID. | conversational claims/evidence | classify into computable proofing roles | categories have distinct jobs | Pass 3 covers pieces only | HOLDER/APPLICATION-REQUIRED; **FORBID-AS-CORE types** |
| **W-BM07** | BM-INVARIANT · BM-TRANSFORM | L303–306; L318–319 | **OBS pointability.** OBS is a time/context-anchored pointable claim; unanchored interpretive intent is anti-property. | candidate claim | admit as OBS or not | no pointability → no OBS, unless explicitly UNK | **W-G1 = STRONG/PARTIAL** | pointable Lace may support anchors; classification remains holder/interface behavior |
| **W-BM08** | BM-STATE · BM-TRANSFORM | L307–309; L320–321 | **DELTA as paired mismatch between inventories.** Two OBS nodes/inventories are required. | OBS_A + OBS_B (or OBS vs expected rule) | DELTA mismatch | separate inventories allowed; pairing required for resolution | **W-G3 = PARTIAL-to-STRONG** | MULTI-PARTY-REQUIRED; DELTA not a Core POINTER by default |
| **W-BM09** | BM-STATE · BM-INVARIANT | L310–312; L322–323 | **UNK is an unresolved dependency that blocks comprehension.** Must specify what would become OBS and what DELTAs it would resolve. | unresolved missing evidence | explicit dependency/needed evidence | unresolved UNK cannot be ignored | **W-G4 = PARTIAL-to-STRONG** | holder proofing state; exact halt/budget source-open |
| **W-BM10** | BM-TRANSFORM · BM-FAILURE | L313–315; L325–329 | **INVALID routes non-computable input back toward computable structure.** | accusation / unusable statement | reject + request OBS/DELTA/UNK | heat/no compute; not simply “false” | **MISSING** | holder/interface behavior |
| **W-BM11** | BM-INVARIANT | L317–323 | **Proof Ledger invariants:** pointability; sharedness optional at OBS but mandatory at DELTA resolution; UNK blocks coherent comprehension. | ledger state | constrains legal progress | these conditions define computation readiness | W-G1/W-G3/W-G4 = **PARTIAL** | functional obligation above substrate |
| **W-BM12** | BM-FAILURE | L325–335 | **Proof Ledger failure modes/limits.** Meta without anchors, directives without premises, accusation language; system is high-fidelity but heavy in live speech. | live conversation | detects compute failure | serialization/writing may be required | **MISSING** | behavioral/interface design constraint |

---

## 3. River Proofing mechanism — System B

| ID | Tags | Source | Desired-behavior mechanism | Inputs / state | Transform / output | Invariants / failure | Pass-3 coverage | Placement |
|---|---|---|---|---|---|---|---|---|
| **W-BM13** | BM-STATE | L337–352 | **Banks / Rapids / Delta regions.** Model where meaningful crossing can occur. | conversational condition | location/topology state | regions have different transfer capability | W-G2/W-G3 = partial | holder/application state |
| **W-BM14** | BM-INVARIANT | L343–345 | **Banks:** separate positions; visibility/shouting possible; transfer low/absent. | two parties | isolated-position state | separation is normal, not failure | **W-G3 = THIN** | MULTI-PARTY-REQUIRED |
| **W-BM15** | BM-INVARIANT · BM-FAILURE | L347–357 | **Rapids:** high pressure/urgency/emotional velocity; pressure ≠ transfer. Conversations may start here because pressure compels engagement. | high-pressure interaction | pressure-zone state | loudness is energy, not comprehension | **W-G2 = STRONG/PARTIAL** | holder/application behavior |
| **W-BM16** | BM-STATE · BM-TRANSITION | L350–356 | **River Delta / crossing zone:** lower-energy/shared footing where traversal/exchange becomes possible. | slowed interaction + shared structure | crossing becomes possible | no delta → cannot resolve | **W-G3 = PARTIAL** | holder/application behavior |
| **W-BM17** | BM-FAILURE | L359–369 | **River failure modes:** rapids amplify confusion; banks become positional warfare; motion/talk volume can be mistaken for progress. River is fast at topology sensing but vague without compute schema. | conversation state | failure diagnosis | separates topology detection from proof computation | **W-G2 = PARTIAL; others missing** | desired behavior includes diagnostic/refusal |

---

## 4. Structural isomorphism — source-defined compatibility

| ID | Tags | Source | Desired-behavior mechanism |
|---|---|---|---|
| **W-BM18** | BM-ONTOLOGY · BM-INVARIANT | L371–383 | **The two systems describe the same underlying requirement:** crossing needs shared reference objects and bounded unknowns. |
| **W-BM19** | BM-METAPHOR · BM-FLOW | L375–383 | Source mapping: Banks ≈ separate OBS inventories; Rapids ≈ high-rate talk with missing anchors/unresolved UNK; Delta ≈ paired shared OBS + declared UNK list. |
| **W-BM20** | BM-INVARIANT | L381–383 | Source equivalence: River “crossing possible” ↔ Proof Ledger “at least one shared OBS pair + declared UNK list.” |

Important strength rule:

`≈` is source-defined conceptual/functional isomorphism.

It is **not** identity of runtime data structures.

---

## 5. Delta Bridge — interface mechanism

| ID | Tags | Source | Desired-behavior mechanism | Pass-3 coverage | Placement |
|---|---|---|---|---|
| **W-BM21** | BM-TRANSFORM · BM-FLOW | L385–388 | **Interop translation:** River location ↔ Proof Ledger requirements. The interface's one job is translation/routing between the two systems. | **MISSING** | HOLDER/APPLICATION-REQUIRED |
| **W-BM22** | BM-STATE · BM-TRANSITION | L390–423 | **Shared FSM S0–S4** that both systems recognize. | W-G3 = **THIN** | HOLDER/APPLICATION-REQUIRED · temporal/stateful |
| **W-BM23** | BM-TRANSITION | L393–397 | **S0 Banks:** no shared references; allowed outputs are UNK declarations / OBS requests / “opposite banks.” | W-G3 covers precondition only | multi-party state |
| **W-BM24** | BM-TRANSITION · BM-FAILURE | L399–403 | **S1 Rapids:** urgency/heat + missing anchors; INVALID accusations; demand OBS; crossing impossible. | W-G2 partial | stateful routing |
| **W-BM25** | BM-TRANSITION | L405–411 | **S2 Delta setup:** one party presents pointable element and other acknowledges it; creates OBS_A/OBS_B; crossing can start. | W-G3 strong projection | multi-party acknowledgement |
| **W-BM26** | BM-TRANSITION | L413–417 | **S3 Crossing:** DELTA exists + UNKs listed; resolve DELTAs / promote UNKs to OBS. | **MISSING** | holder proof computation |
| **W-BM27** | BM-TRANSITION | L419–423 | **S4 Bank rebuild:** crossing completed; decisions/actions can occur safely from resolved DELTAs. | **MISSING** | holder/action layer |

The FSM is not merely a labels list. Each state has source-defined entry conditions and allowed outputs.

---

## 6. F1–F5 behavioral interface functions

| ID | Tags | Source | Function | Source input | Source output / state effect | Pass-3 coverage |
|---|---|---|---|---|---|---|
| **W-BM28** | BM-TRANSFORM · BM-DIAGNOSTIC | L425–431 | **F1 Locate()** | conversational signal | River location + Proof Ledger routing target | **MISSING** |
| **W-BM29** | BM-TRANSFORM | L433–436 | **F2 Anchor()** | pointable thing from participant | OBS node with pointer metadata; “at delta” translation | W-G1/W-G3 = **PARTIAL** |
| **W-BM30** | BM-TRANSFORM | L438–441 | **F3 Pair()** | two OBS nodes | DELTA node; crossing possible/start | W-G3 = **PARTIAL** |
| **W-BM31** | BM-TRANSFORM | L443–447 | **F4 Unknowns()** | blockage/missing-context signal | UNK specifying required OBS; widen delta | W-G4 = **PARTIAL** |
| **W-BM32** | BM-TRANSFORM · BM-FAILURE | L449–452 | **F5 Reject()** | non-computable claim | INVALID + request for anchor/UNK; rapids translation | **MISSING** |

These are desired-behavior interface operations.

They are not automatically Lace Core APIs.

---

## 7. Unit-of-progress mechanism

| ID | Tags | Source | Desired-behavior mechanism |
|---|---|---|---|
| **W-BM33** | BM-FLOW · BM-OBSERVABLE | L454–474 | **Proof Ledger progress:** OBS created → DELTA created → UNK resolved; output audit trail. |
| **W-BM34** | BM-FLOW · BM-OBSERVABLE | L461–474 | **River progress:** rapids → delta → crossing; output topology awareness. |
| **W-BM35** | BM-TRANSFORM | L472–474 | **Interface division of labor:** River detects where you are; Proof Ledger specifies what must exist for crossing. |

Pass 3 has no assay that tests the **whole progress mechanism**.

---

## 8. Source-open parameters — must remain open

| ID | Tags | Source | Open degree |
|---|---|---|---|
| **W-BM36** | BM-OPEN | L476–483 | OBS pointer/anchor format |
| **W-BM37** | BM-OPEN | L484–486 | INVALID stop-word / pattern list |
| **W-BM38** | BM-OPEN | L487–493 | UNK operational rule: halt at any unresolved UNK vs bounded UNK budget |

These are source-declared unresolved design inputs.

The repo may record examples, but may not silently choose them as source truth.

---

## 9. Kernel sentence / routing mechanism

| ID | Tags | Source | Desired-behavior mechanism |
|---|---|---|---|
| **W-BM39** | BM-DIAGNOSTIC · BM-TRANSFORM · BM-EXAMPLE | L495–501; narrative L101–109 | The repair utterance compactly encodes **location + move-to-delta + OBS request**. Its literal sentence is an example; the behavioral mechanism is routing from rapids toward pointable shared footing without blame/dominance. |

Pass 3 W-G1/W-G2/W-G3 each cover pieces but not this integrated repair operation.

---

## 10. Pass-3 assay fidelity audit — Water

| Pass-3 assay | Source mechanisms covered | Verdict | Missing mechanism content |
|---|---|---|---|
| **W-G1 pointability gate** | W-BM07, part of W-BM11/W-BM29 | **PARTIAL-to-STRONG** | misses explicit UNK alternative, Anchor() output/translation, ledger integration |
| **W-G2 rapids != transfer** | W-BM15/W-BM17/W-BM24 | **PARTIAL-to-STRONG** | misses routing response, invalid handling, location transition |
| **W-G3 shared-footing transition** | W-BM08/W-BM14/W-BM16/W-BM23–W-BM25 | **PARTIAL** | misses DELTA computation, UNK list, S3 crossing, S4 rebuild, full two-system translation |
| **W-G4 UNK explicit missing evidence** | W-BM09/W-BM31 | **PARTIAL-to-STRONG** | misses explicit relation to DELTAs, state/location translation, unresolved-UNK operational open |
| *(none)* | INVALID / F5 Reject | **MISSING** | non-computable input routing untested |
| *(none)* | structural isomorphism | **MISSING** | two systems' functional equivalence untested |
| *(none)* | Delta Bridge translation | **MISSING** | interface itself untested |
| *(none)* | full S0–S4 FSM | **MISSING** | Pass 3 tests only parts of progression |
| *(none)* | F1 Locate | **MISSING** | location-to-ledger routing absent |
| *(none)* | F3 Pair as interface op | **THIN via W-G3** | actual pair/delta output not tested |
| *(none)* | units of progress | **MISSING** | no assay measures Ledger vs River progress |
| *(none)* | kernel routing operation | **MISSING** | integrated repair move untested |

**Water Pass-3 result:** valid individual invariants, but **thin relative to the source's full desired system**.

---

## 11. Current repo / source fidelity observations

The existing `docs/clock/water-systems-manifest.md` is unusually rich and preserves:
- OBS/DELTA/UNK/INVALID;
- River regions;
- S0–S4;
- F1–F5;
- source-open parameters;
- kernel sentence;
- major failure modes.

However, its gear/clutch terminology and cross-source meshes are repo interpretation.

Pass 4 therefore classifies current clipboard fidelity as:

**FAITHFUL WITH INTERPRETIVE OVERLAY**, not source drift.

The original source must remain distinguishable from:
- “clutch” machinery;
- HCC/Cup meshes;
- Graphic-D keep-out stamps;
- repo-specific pass history.

---

## 12. Water placement summary

| Mechanism family | Current placement |
|---|---|
| pointable anchors | Lace may provide SUBSTRATE/DERIVED-READ support after arrival |
| separate party inventories | MULTI-PARTY-REQUIRED · HOLDER/APPLICATION |
| OBS/DELTA/UNK/INVALID proof state | HOLDER/APPLICATION-REQUIRED |
| Banks/Rapids/Delta topology | HOLDER/APPLICATION-REQUIRED |
| shared FSM S0–S4 | TEMPORAL/WORKING-STATE-REQUIRED |
| F1–F5 interface functions | OPEN-IMPLEMENTATION-MECHANISM above Core |
| audit trail / progress | holder/application observable |
| literal OBS/DELTA as Lace row types | **FORBID-AS-CORE unless separately ruled** |
| open pointer/list/budget parameters | **SOURCE-OPEN** |
| exact implementation/data structures | OPEN |

## 13. Source-map verdict

**Water desired-behavior mechanisms are mapped with explicit source opens.**

Pass-3 Water assays are useful but do not yet test the desired two-system + interface behavior as a whole.
