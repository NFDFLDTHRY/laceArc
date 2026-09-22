# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 3 behavioral-goal assays

**Status:** PASS-3 ASSAY REGISTER · specified before tool creation.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 3 — TEST THE DESTINATION.  
**Authority:** **NON-CANONICAL Lab/alignment evidence.** HCC-A, Coffee Cup, and Water remain the behavioral-goal sources. This register does not redefine them and does not select their internal machinery.  
**Pinned baseline:** `26e7edf6808ab12657275764c4e0b0ad1327e197`.  
**Implementation:** none. No Core code, holder runtime, RM-A rule, acceptance, or branch birth.

The register is intentionally mechanism-blind:

```
behavioral goal
    !=
source-described mechanism

passing the assay
    !=
matching source internals

failing the assay
    !=
using different machinery
```

---

## 1. Assay contract

Every row below is admitted only if:

- the behavioral claim is pointable to an existing behavioral-goal clipboard;
- PASS/FAIL can be judged from observable data;
- a third party does not need private chain-of-thought or hidden internal state;
- the assay can fail;
- literal HCC/Cup/Water machinery names are not required for PASS;
- any Lab proxy is named as a proxy;
- platform facts do not stand in for behavioral correctness.

### Result vocabulary

- **PASS** — observable relation holds for the bounded specimen.
- **FAIL** — anti-goal/falsifier is observed.
- **BLOCKED** — the specimen/candidate cannot expose a required observable without inventing hidden state or an illegal adapter.
- **UNTESTED** — assay is specified but no candidate/output has been run.
- **INCONCLUSIVE** — run exists but does not discriminate the goal.

---

## 2. HCC-A assays

### H-G1 — structure vs interpretation separation

| Field | Contract |
|---|---|
| Source | `docs/clock/hcc-a-systems-manifest.md` — Overview closing constraints; Data pipeline; packet dictionary |
| Behavioral statement | Pointable/external structure remains distinguishable from holder-local interpretation. A change in declared prior/context may change interpretation/response without rewriting the shared structural evidence. |
| Anti-goal | Interpretation change rewrites or substitutes the source/history so the new interpretation appears to have always been the evidence. |
| Observable surface | structure identity/hash before and after context change; local interpretation outputs; history rewrite flag |
| Input specimen | same pointable structure under two declared prior/context settings |
| Expected relation | same structure evidence; local interpretation/response may differ |
| Forbidden implementation assumption | literal RIC/PFC/Story Ledger/Meaning Engine components |
| Falsifier | structure evidence changes solely to agree with the altered interpretation |
| Current Lace support | **SUBSTRATE-SUPPORT**: append-only immutable history can preserve the shared structure; holder interpretation machinery is **OUTSIDE-LACE / HOLDER-LAYER** |
| Assay status | **TESTABLE as abstract behavioral relation** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

### H-G2 — feedback without history rewrite

| Field | Contract |
|---|---|
| Source | HCC clipboard — Feedback pipes; revolution schedule; world + identity feedback |
| Behavioral statement | Round-1 behavior/feedback may alter Round-2 context or priors while Round-1 evidence remains intact. |
| Anti-goal | Later feedback edits the earlier record to manufacture consistency. |
| Observable surface | immutable Round-1 history identity; declared Round-1 feedback; Round-2 context/prior |
| Input specimen | two rounds with explicit feedback channel |
| Expected relation | Round-2 differs because of recorded feedback; Round-1 history hash remains identical |
| Forbidden implementation assumption | literal πFB/πID pipes, S0–S7 storage, mutable Story Ledger |
| Falsifier | earlier evidence is rewritten or feedback has no traceable relationship to later context |
| Current Lace support | **SUBSTRATE-SUPPORT** for immutable earlier history and later additions; behavioral feedback producer remains **OUTSIDE-LACE / HOLDER-LAYER** |
| Assay status | **TESTABLE** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

### H-G3 — structure-only boundary

| Field | Contract |
|---|---|
| Source | HCC clipboard — Overview closing constraints: objective reality, subjective compilation, forbids meaning transfer, restricts communication to structure |
| Behavioral statement | Two holders may share a pointable structural referent while maintaining different local interpretations; one holder's local meaning is not silently installed as the other's fact. |
| Anti-goal | Shared structure causes automatic interpretation/meaning cloning between holders. |
| Observable surface | shared structure ID; per-holder interpretation outputs; explicit meaning-transfer flag |
| Input specimen | same referent presented to two declared contexts/holders |
| Expected relation | shared structure remains identical; interpretations may differ; no forced meaning transfer |
| Forbidden implementation assumption | literal HCC holder internals |
| Falsifier | interpretation is copied across holders without a separate pointable structural basis |
| Current Lace support | **DERIVED-READ/SUBSTRATE-SUPPORT** for pointable shared structure; separate holders are **OUTSIDE-LACE / HOLDER-LAYER** |
| Assay status | **TESTABLE with multi-holder specimen** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

---

## 3. Coffee Cup assays

### C-G1 — causal-stage distinction

| Field | Contract |
|---|---|
| Source | `docs/clock/coffee-cup-systems-manifest.md` — C1 Conditions, C2 Release, C3 Trajectory, C4 Impact, C5 Aftermath |
| Behavioral statement | Conditions/possibility, initiation, live trajectory, resolved impact, and later aftermath remain observably distinguishable. |
| Anti-goal | Release is collapsed into impact, or aftermath is rewritten as part of the original physical event. |
| Observable surface | ordered event markers / states with distinct identities |
| Input specimen | one synthetic event trace with all five behavioral moments |
| Expected relation | precondition < release < trajectory < impact < aftermath; all distinct |
| Forbidden implementation assumption | literal C1–C5 runtime stages or five-tooth wheel |
| Falsifier | any required distinction collapses, especially release=impact or impact=aftermath |
| Current Lace support | **SUBSTRATE-SUPPORT** for preserving ordered history; event semantics require **OUTSIDE-LACE / HOLDER-LAYER** machinery |
| Assay status | **TESTABLE** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

### C-G2 — shrinking intervention window

| Field | Contract |
|---|---|
| Source | Coffee Cup clipboard — C3 Trajectory (Control Window) |
| Behavioral statement | Before impact, intervention opportunity narrows over time; after impact the already-resolved event cannot be changed. |
| Anti-goal | Later intervention has strictly more ability to alter the already-running event, or post-impact intervention edits the impact. |
| Observable surface | ordered intervention times; set/count of still-available outcomes; impact immutable flag |
| Input specimen | predeclared trace with early/mid/late/post-impact intervention points |
| Expected relation | opportunity is monotone non-increasing before impact; zero ability to alter the completed impact afterward |
| Forbidden implementation assumption | stored numeric Cup-window object or literal C3 machine |
| Falsifier | opportunity increases merely because time advances, or post-impact action changes recorded impact |
| Current Lace support | history/order **SUBSTRATE-SUPPORT**; counterfactual/intervention behavior is **MISSING-BEHAVIORAL-MACHINERY / HOLDER-LAYER** |
| Assay status | **TESTABLE on synthetic causal trace** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

### C-G3 — aftermath is causal

| Field | Contract |
|---|---|
| Source | Coffee Cup clipboard — C5 Aftermath; Loop: narrative rewrites next conditions |
| Behavioral statement | Different recorded aftermath can change later conditions/behavior while the original impact remains unchanged. |
| Anti-goal | The system obtains later differences by rewriting the original impact, or aftermath has no possible downstream effect. |
| Observable surface | Round-1 impact identity; aftermath state; Round-2 conditions/response |
| Input specimen | paired two-round traces equal through impact, differing only in aftermath |
| Expected relation | Round-1 impact identical; Round-2 condition/response may differ as a function of aftermath |
| Forbidden implementation assumption | literal C5 store or narrative row in Lace |
| Falsifier | original impact changes, or asserted causal difference has no traceable aftermath distinction |
| Current Lace support | immutable historical impact **SUBSTRATE-SUPPORT**; causal aftermath machinery remains **OUTSIDE-LACE / HOLDER-LAYER** |
| Assay status | **TESTABLE** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

---

## 4. Water / Dual Proofing assays

### W-G1 — pointability gate

| Field | Contract |
|---|---|
| Source | `docs/clock/water-systems-manifest.md` — A-OBS; I-A1 Pointability |
| Behavioral statement | A claim treated as an observation must be anchored to something pointable. An unanchored accusation is not equivalent evidence. |
| Anti-goal | repetition/confidence/heat upgrades an unanchored assertion into pointable evidence. |
| Observable surface | claim anchor metadata; admission/rejection result |
| Input specimen | one anchored quote/event and one unanchored accusation |
| Expected relation | anchored item admissible; unanchored item requires anchor / is not OBS-equivalent |
| Forbidden implementation assumption | OBS as a Graphic-D row type |
| Falsifier | unanchored accusation accepted as equivalent evidence |
| Current Lace support | pointable indices may provide **SUBSTRATE-SUPPORT**; claim/evidence classification is **HOLDER/APPLICATION-LAYER** |
| Assay status | **TESTABLE** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

### W-G2 — rapids != transfer

| Field | Contract |
|---|---|
| Source | Water clipboard — B-Rapids; I-B1 Pressure ≠ Transfer |
| Behavioral statement | interaction pressure/loudness/volume does not by itself establish shared understanding or crossing. |
| Anti-goal | more urgency/messages automatically raises “understanding/crossing” to success. |
| Observable surface | pressure/volume; shared-anchor state; crossing/understanding result |
| Input specimen | high-pressure exchange with no shared pointable referent |
| Expected relation | crossing/understanding remains false or blocked despite high pressure |
| Forbidden implementation assumption | literal River/FSM runtime |
| Falsifier | success is reported solely from loudness/volume |
| Current Lace support | **OUTSIDE-LACE / HOLDER-LAYER**; no Core claim |
| Assay status | **TESTABLE** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

### W-G3 — shared-footing transition

| Field | Contract |
|---|---|
| Source | Water clipboard — A-DELTA; B-Delta; FSM S0–S3; I-A2 sharedness |
| Behavioral statement | Two parties may begin with separate inventories; meaningful pairing/crossing becomes possible only after an acknowledged pointable shared element exists. |
| Anti-goal | one silently merged inventory substitutes for two parties, or crossing is declared before shared footing. |
| Observable surface | party-A inventory; party-B inventory; shared-anchor set before/after; delta/crossing availability |
| Input specimen | two separate inventories, then one acknowledged shared anchor |
| Expected relation | inventories remain separate; before shared anchor delta/crossing false; afterward it may become possible |
| Forbidden implementation assumption | merged global ledger, F3 as Core edge, one-strand D1 pretending to be two parties |
| Falsifier | hidden merge or successful crossing before shared footing |
| Current Lace support | current one-strand Lace **cannot by itself represent the two-holder behavioral scenario**; **OUTSIDE-LACE / HOLDER-LAYER** |
| Assay status | **TESTABLE with explicit multi-party fixture** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

### W-G4 — UNK as explicit missing evidence

| Field | Contract |
|---|---|
| Source | Water clipboard — A-UNK; F4 Unknowns |
| Behavioral statement | When required evidence is missing, the system can name what evidence is needed rather than filling the gap through confidence or volume. |
| Anti-goal | fabricated evidence is used to claim resolution. |
| Observable surface | required-evidence description; fabricated-evidence flag; resolution state |
| Input specimen | task lacking one named observation |
| Expected relation | missing evidence is named; unresolved state remains until supplied |
| Forbidden implementation assumption | UNK as a stored Core row |
| Falsifier | unresolved gap marked solved using invented evidence |
| Current Lace support | **HOLDER/APPLICATION-LAYER** behavior; Lace history may later carry supplied structure but does not itself classify UNK |
| Assay status | **TESTABLE** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

---

## 5. Cross-source compatibility assays

### X-G1 — recurrence without fusion

| Field | Contract |
|---|---|
| Sources | Coffee Cup C5 recurrence; HCC feedback pipes; Water S4→new inventories |
| Behavioral statement | Multiple feedback paths can affect later rounds while remaining distinguishable in provenance/effect. |
| Anti-goal | all feedback is collapsed into one opaque “meaning state,” making causal provenance unrecoverable. |
| Observable surface | separate feedback channels; later-round effects; fused-state flag |
| Input specimen | one prior round with Cup aftermath, HCC world/prior feedback, Water crossing/action output |
| Expected relation | each channel remains separately identifiable and may affect later conditions; no mandatory fused state |
| Forbidden implementation assumption | required H×C×W runtime train |
| Falsifier | outputs can only be explained through one fused mutable state |
| Current Lace support | append-only provenance may give **SUBSTRATE-SUPPORT**; behavioral feedback machinery is **OUTSIDE-LACE / HOLDER-LAYER** |
| Assay status | **TESTABLE on synthetic multi-channel trace** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

### X-G2 — pointable structure across holders

| Field | Contract |
|---|---|
| Sources | HCC structure-only boundary + Water OBS/shared footing |
| Behavioral statement | Two holders can share one pointable structural referent while preserving distinct local interpretations. |
| Anti-goal | shared pointability requires shared meaning, or local interpretation is copied as fact. |
| Observable surface | common structure ID; separate local interpretation outputs; meaning-transfer flag |
| Input specimen | two holders with same anchored referent and different context |
| Expected relation | shared structure equal; interpretations may differ; no forced meaning transfer |
| Forbidden implementation assumption | literal HCC/Water state machines or merged holder state |
| Falsifier | shared structure automatically clones local meaning |
| Current Lace support | pointable retained structure may supply **DERIVED-READ/SUBSTRATE-SUPPORT**; two-holder behavior remains **OUTSIDE-LACE** |
| Assay status | **TESTABLE** |
| Platform | NONE-AT-BEHAVIORAL-STAGE |

---

## 6. Mechanism-blindness audit

Each admitted assay was checked against:

- **M1 source-like** — candidate uses source names/components;
- **M2 alien** — candidate uses unrelated internal machinery but exposes the same behavioral observations.

| Goal | M1 can pass? | M2 can pass? | Bias found? |
|---|---|---|---|
| H-G1 | yes | yes | no |
| H-G2 | yes | yes | no |
| H-G3 | yes | yes | no |
| C-G1 | yes | yes | no |
| C-G2 | yes | yes | no |
| C-G3 | yes | yes | no |
| W-G1 | yes | yes | no |
| W-G2 | yes | yes | no |
| W-G3 | yes | yes | no |
| W-G4 | yes | yes | no |
| X-G1 | yes | yes | no |
| X-G2 | yes | yes | no |

**Design verdict:** all twelve assays are mechanism-agnostic at the specification level.

Source labels are deliberately absent from PASS conditions.

---

## 7. Assay-control design — specified before code

A single host-side Lab harness is justified because the twelve assays already have machine-independent observable relations and falsifiers.

Proposed tool:
- `docs/plans/tools/lace-behavior-assay.py`

Proposed control fixture:
- `docs/plans/fixtures/behavioral-goals-assay-controls-v0.1.0.json`

The fixture is **not a behavioral candidate**. It is an assay self-test.

Each goal receives:
- one **behavior-without-source-labels** PASS control;
- one **label-mimic / anti-goal** FAIL control where useful.

The harness must ignore decorative `labels[]` fields.

Therefore:
- a control can print `RIC`, `C3`, `DELTA` and still FAIL;
- a control can contain none of those labels and still PASS.

This is the operational form of the mechanism-blindness rule.

### Required control teeth

At minimum the self-test must catch:

- H-G1 history/structure rewrite despite source labels;
- H-G2 feedback implemented by rewriting Round 1;
- H-G3 forced meaning transfer;
- C-G1 release=impact collapse;
- C-G2 post-impact intervention changing impact;
- C-G3 aftermath implemented by rewriting impact;
- W-G1 unanchored accusation accepted as evidence;
- W-G2 pressure reported as crossing;
- W-G3 hidden inventory merge;
- W-G4 fabricated missing evidence;
- X-G1 fused feedback state;
- X-G2 copied interpretation.

If any bad control passes, the assay harness is not admitted.

---

## 8. Current Lace support classification

Pass 3 makes **no claim that current Lace satisfies HCC-A/Cup/Water**.

| Goal | Current Lace support | Missing behavioral machinery |
|---|---|---|
| H-G1 | SUBSTRATE-SUPPORT: immutable pointable history | holder interpretation/context machinery |
| H-G2 | SUBSTRATE-SUPPORT: later history can reference earlier history | behavioral feedback/context update |
| H-G3 | DERIVED-READ/SUBSTRATE-SUPPORT: shared pointable structure | two-holder local interpretation boundary |
| C-G1 | SUBSTRATE-SUPPORT: ordered immutable event history can be preserved | event-stage interpretation |
| C-G2 | SUBSTRATE-SUPPORT for order only | intervention/counterfactual capability model |
| C-G3 | SUBSTRATE-SUPPORT for immutable impact + later additions | causal aftermath→later-condition machinery |
| W-G1 | SUBSTRATE-SUPPORT for pointable indices | claim/evidence admission behavior |
| W-G2 | none required in Core | interaction/understanding behavior |
| W-G3 | **OUTSIDE-LACE** multi-party inventories | holder/application multi-party state |
| W-G4 | none required in Core | explicit missing-evidence reasoning behavior |
| X-G1 | SUBSTRATE-SUPPORT for separate provenance/history | distinct feedback processes above Lace |
| X-G2 | DERIVED-READ/SUBSTRATE-SUPPORT for pointable referent | two-holder local interpretation behavior |

**Current coverage verdict before any future holder candidate:** Lace supplies useful substrate properties, but **behavioral goal satisfaction is not yet demonstrated**.

---

## 9. Goal/assay debt register

| Debt | Current items |
|---|---|
| **GOAL-SPECIFIED** | all 12 minimum assays |
| **ASSAY-SPECIFIED** | all 12 minimum assays |
| **TESTABLE-NOW as harness self-test** | all 12 |
| **NO-CURRENT-CANDIDATE** | all holder-level behavioral goals; no accepted holder runtime exists |
| **NEEDS-HOLDER-LAYER** | H-G1/2/3; C-G1/2/3; W-G1/2/3/4; X-G1/2 at behavioral execution |
| **NEEDS-MULTI-PARTY-SPECIMEN** | H-G3, W-G3, X-G2 |
| **NEEDS-TEMPORAL-SPECIMEN** | H-G2, C-G1/2/3, X-G1 |
| **BLOCKED-BY-RM-A** | none asserted by this pass; future candidate-specific dependency must be proved |
| **INSTRUMENT-MISSING** | none for assay self-test if proposed harness passes; real candidate adapter remains future |
| **FIXTURE-MISSING** | future candidate fixtures; self-test fixture is planned |
| **PLATFORM-DEPENDENT** | none of the twelve behavioral relations at specification stage |
| **SOURCE-AMBIGUOUS** | exact HCC arbitration procedure; Water UNK budget/INVALID list are source-open but not needed for the minimum relations |
| **CROSS-SOURCE-CORRESPONDENCE-UNPROVED** | X-G1/X-G2 are compatibility assays, not claims that a fused H×C×W machine is required |

Debt is not failure.

---

## 10. Preliminary Pass-3 verdict before harness execution

### Goal specification

**BEHAVIORAL GOALS OPERATIONALIZED**, for the twelve bounded assay targets in this register.

This is not a claim that every sentence in all three sources has been operationalized.

### Assay integrity

**MECHANISM-AGNOSTIC**, specification-level, pending adversarial harness self-test.

### Current coverage

**BOUNDED BEHAVIORAL COVERAGE / NAMED DEBT.**

There is currently no holder/application candidate whose behavior can justify broad HCC-A/Cup/Water satisfaction claims.

---

## 11. Stop conditions

This register does not:
- select HCC/Cup/Water machinery;
- define RM-A;
- create a holder architecture;
- turn a synthetic fixture into behavioral evidence about Lace;
- claim current Lace passes the goals;
- create Core code.

The next Pass-3 step is only to implement and run the assay **self-test** described above. A real behavioral-candidate run would be a separate bounded event requiring an actual candidate output surface.
