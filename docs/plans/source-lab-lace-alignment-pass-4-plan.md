# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 4 PLAN

**Status:** EXECUTED — see source-lab-lace-alignment-pass-4-findings.md.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 4.  
**Pass name:** **READ THE MACHINES AGAIN — desired-behavior mechanism recovery.**  
**Planning station:** maps · `Astra-alignment-restart`.  
**Pinned current main before planning claim:** `386c4c230d6ad13c7dd2964423c5f296897e9f17`.  
**Planning claim commit:** `e06341646d4b47d12123b3e019a8b32031e336f9`.  
**Inherits:** Restart Pass 1 vertical alignment, Pass 2 operational traceability, Pass 3 behavioral-goal assays, global ASCII Passes 33–35, Pass-32 mechanism catalog, current HCC-A/Coffee Cup/Water clock clipboards.  
**Implementation:** none. No `src/`, Cargo implementation, branch birth, holder runtime, RM-A design, pointer acceptance, or Core promotion.  
**Primary objective:** rigorously reread and map the three conceptual system-description originals as **desired-behavior mechanisms**, then audit whether the current repo and Pass-3 assay layer preserve those mechanisms accurately.

Pass 3 deliberately made the assays mechanism-agnostic.

Pass 4 asks whether that useful abstraction accidentally threw away **source-defined functional/causal mechanism that is itself part of the desired behavior**.

---

## 0. Source identity — originals first

Pass 4 is grounded in the three human-supplied original text files, not in repo paraphrases.

| Source | Uploaded filename | Lines | SHA-256 |
|---|---|---:|---|
| HCC-A v1.0 | `Human Cognitive Compiler Architecture.txt` | 490 | `209c8f259225a4899b3736837919447381e94352a67d7f915eb95c36db90f3f9` |
| Coffee Cup | `The Coffee Cup (1).txt` | 196 | `7bc4fd8d5df1ff58c75609e50bda6376216e5520fc2594d20b26a7a1c52c2cd4` |
| Water / Dual Proofing | `Where the Water Is Loud.txt` | 522 | `9b7eddd593765fb370ffd90020e9995fd30a96ce261cb9c5140ec3e14f97ff65` |

Execution rule:

1. hash the source bytes before analysis;
2. if a local `refs/local/` copy is available, compare identity;
3. if bytes differ, record the difference and **do not silently merge them**;
4. repo clipboards are comparison targets, not source substitutes;
5. previous H/C/W maps, Pass-3 assays, and the H×C×W train may be wrong.

No outside source is needed to interpret these documents unless the human later asks for one.

---

## 1. Architectural court

```
                 BEHAVIORAL GOALS
        HCC-A · Coffee Cup · Water
                    |
              source clipboards
                    |
                    | possible machinery,
                    | behavioral constraints,
                    | hypotheses
                    v

        BOOKS / PAPERS / RESEARCH
                    |
              source clipboards
                    |
                    | possible machinery,
                    | algorithms, mathematics,
                    | known constraints
                    v

              +-----------+
              | laceArc   |
              |    LAB    |
              +-----------+
                    |
             propose / attack
             reproduce / test
             falsify / retain evidence
                    |
                    v
                  LACE
                    |
          substrate / machine under
              experimental growth
                    |
                    v

          HARDWARE / PLATFORM REALITY
       CPU · GPU · WASM · WebGPU · WebNN
       Rust · no_std · browser · device
                    |
             hardware/spec/reference
                 clipboards
                    |
                    v
       physical execution constraints
```

Pass 4 refines the top of this model.

The behavioral-goal sources contain **two different things at once**:

```
SOURCE DOCUMENT
     |
     +--> desired behavior / outcome constraints
     |
     +--> desired-behavior mechanisms
          causal structure
          state relationships
          feedback
          separation rules
          transition rules
          parameters
          failure modes
          interface behavior
```

Those desired-behavior mechanisms are not automatically the concrete runtime implementation.

---

## 2. Three-way distinction — mandatory

Pass 4 must keep these three layers separate.

### 2.1 SOURCE BEHAVIORAL MECHANISM

A functional, causal, temporal, state, interface, or information-processing relation the source explicitly uses to describe the target system.

Examples:
- HCC-A RIC and PFC run in parallel and both feed compilation;
- Coffee Cup conditions → release → trajectory → impact → aftermath → later conditions;
- Water Proof Ledger + River model + Delta Bridge mutually constrain a crossing process.

These relations may be **part of what the desired behavior means**.

### 2.2 OBSERVABLE ASSAY

A bounded external projection that can falsify part of a behavioral mechanism.

Examples:
- structure does not get rewritten when interpretation changes;
- release remains distinct from impact;
- high pressure without shared footing is not crossing.

An assay is **not automatically a complete specification of the mechanism**.

### 2.3 IMPLEMENTATION MECHANISM

Concrete machinery that realizes the behavioral mechanism:
- Lace structures;
- holder state;
- compiler code;
- replay-derived state;
- caches;
- algorithms;
- Rust types;
- GPU/CPU execution;
- etc.

This remains experimental unless separately established.

Required relationship:

```
SOURCE BEHAVIORAL MECHANISM
           |
           +------> observable assay(s)
           |
           +------> implementation obligations / degrees of freedom
                         |
                         X concrete implementation still open
```

Pass 4 must reject both bad equations:

```
source mechanism == exact runtime component        [WRONG]
observable assay == whole source mechanism         [WRONG]
```

---

## 3. Analysis tags — local to Pass 4

These are **mapping tags**, not new repo authority classes.

| Tag | Meaning |
|---|---|
| **BM-ONTOLOGY** | entity/domain distinction required by the source |
| **BM-STATE** | source-defined state or persistent/working condition |
| **BM-TRANSFORM** | functional transformation |
| **BM-FLOW** | ordered information/state flow |
| **BM-PARALLEL** | mechanisms required to coexist/run in parallel |
| **BM-TRANSITION** | state-machine transition |
| **BM-FEEDBACK** | output changes later input/state |
| **BM-INVARIANT** | source says must remain true |
| **BM-PARAMETER** | allowed variation that changes behavior without deleting the mechanism |
| **BM-ARBITRATION** | rule/class governing conflict between mechanisms |
| **BM-OBSERVABLE** | externally inspectable consequence |
| **BM-FAILURE** | source-defined failure mode |
| **BM-DIAGNOSTIC** | source-provided diagnostic question/procedure |
| **BM-OPEN** | source explicitly leaves a degree of freedom unresolved |
| **BM-EXAMPLE** | illustration, not a mechanism requirement |
| **BM-METAPHOR** | explanatory image; do not treat as literal implementation |
| **BM-NORMATIVE-NOT** | source explicitly says not to interpret it as moral/prescriptive output |

Every mapped item must preserve the source's own assertion strength.

---

## 4. Primary Pass-4 products

Execution should create four source-analysis artifacts under `docs/plans/`.

1. `source-lab-lace-alignment-pass-4-hcc-a-behavior-mechanisms.md`
2. `source-lab-lace-alignment-pass-4-coffee-cup-behavior-mechanisms.md`
3. `source-lab-lace-alignment-pass-4-water-behavior-mechanisms.md`
4. `source-lab-lace-alignment-pass-4-crosswalk.md`

Then:

5. `source-lab-lace-alignment-pass-4-findings.md`

These are analysis/Lab products.

They do **not** replace the existing `docs/clock/` source clipboards.

After the analysis, execution may qualify/update current clipboard entrances only if a source-backed mismatch is proven.

---

## 5. Common mechanism-map schema

Every source mechanism row must carry:

| Field | Required meaning |
|---|---|
| **Mechanism ID** | Pass-4 local ID; never an L-M/SM-C ID |
| **Exact source locator** | original section/line or exact heading |
| **Source language class** | definition / invariant / mechanism / parameter / example / diagnostic / open |
| **Mechanism description** | what the source actually says happens |
| **Inputs** | source-defined inputs |
| **State / memory** | source-defined state, if any |
| **Transform / transition** | what changes |
| **Outputs** | source-defined outputs |
| **Ordering / concurrency** | serial / parallel / partial order / source silent |
| **Feedback** | later-loop effect, if any |
| **Parameterization** | source-defined degrees of individual/system variation |
| **Observable consequence** | what could be seen without inspecting implementation |
| **Failure mode** | source-defined or derivable falsifier |
| **Open degrees** | exact unresolved source choices |
| **Implementation freedom** | what the source does *not* specify |
| **Pass-3 assay coverage** | FULL / PARTIAL / THIN / DISTORTED / MISSING |
| **Current repo representation** | existing clipboard / train / assay / map |
| **Lace relation** | SUBSTRATE-SUPPORT / HOLDER-LAYER / CANDIDATE / FORBID-AS-CORE / OPEN |
| **Evidence note** | source fact vs Pass-4 inference |

No row may jump from source mechanism directly to a proposed Lace implementation.

---

## 6. HCC-A — required rigorous reading

HCC-A must be analyzed as a **whole recurrent architecture**, not only three external behaviors.

### 6.1 Core ontology

Map:
- **Reality (R)** as objective constraint-bearing environment;
- **Interface (I)** as the conversion boundary from Reality to raw internal signals;
- source distinction between inaccessible Reality and internal representation.

Questions:
- what behavioral obligation comes from objective constraint?
- what is observable vs holder-local?
- where can representation diverge from external structure?

### 6.2 Dual input channels

Map separately:
- **RIC** — structured-signal preservation;
- **PFC** — prior/template-conditioned interpretation;
- explicit invariant: **parallel, not serial; both feed C**.

Pass 4 must test whether Pass-3 H-G1 captured only the *result* while losing the desired behavioral mechanism:

```
same input
   |   |  RIC  PFC
     /
    C
```

A concrete runtime does not need literal `RIC` and `PFC` objects, but the behavioral mechanism may still require:
- an evidence-preserving path;
- a prior-conditioned path;
- coexistence before reconciliation/compilation.

### 6.3 Compiler / Ledger / Meaning / Emotion / Identity / Behavior

Map:

```
{RIC, PFC}
    |
    v
Compiler C
    |
    v
Story Ledger L
    |
    v
Meaning M
    |
    v
Emotion E
    |
    v
Identity ISL
    |
    v
Behavior B
```

But do not flatten:
- L != narrative;
- M is directive, not merely labeling;
- E = meaning-in-flight, not meaning/story/intent;
- ISL is compression/synchronization producing identity + future priors;
- B is the only directly observable component.

### 6.4 Mutable behavioral state vs append-only Lace

This is a mandatory audit seam.

HCC-A explicitly permits:
- ledger addition;
- merge;
- re-index;
- deletion/suppression;
- pruning;
- re-weighting;
- story rewrite;
- identity updates.

Lace is append-only.

Pass 4 must **not** conclude:

```
HCC mechanism mutates state
    -> forbidden by Lace
    -> desired behavior discarded
```

Instead map:

```
desired mutable/working behavior
      |
      v
implementation obligation:
realize equivalent behavior without violating Lace authority
      |
      +--> derived/replay holder state?
      +--> working cache?
      +--> append-only supersession?
      +--> other candidate machinery?
      |
      X no choice in Pass 4
```

The problem belongs to implementation discovery, not source erasure.

### 6.5 State machine S0–S7

Map every stage and transition:
- intake;
- coexistence / early pruning;
- compilation;
- meaning;
- emotion runtime;
- identity update;
- behavior;
- feedback.

Determine:
- which ordering is explicit;
- what state is carried;
- where pruning occurs;
- what feeds the next cycle.

### 6.6 Parameter space

Map the seven parameter families:
- templates/schema library;
- priority stack;
- pruning strategy;
- RIC/PFC arbitration;
- Meaning style;
- Emotion handling;
- Identity mode.

Core Pass-4 question:

> Which mechanisms are invariant across agents, and which behaviors vary because parameters differ?

The source explicitly says same machine / different settings.

Do not treat parameter examples as required implementation enumerations unless the source does.

### 6.7 Six-act stack

Map Acts I–VI separately from S0–S7.

Audit whether the repo currently conflates them.

The acts are process layers / diagnostic application:
- scene/stakes;
- story update;
- meaning/emotion;
- identity;
- behavior;
- world/template update.

Pass 4 must preserve:
- stage assumptions;
- diagnostic questions;
- relationship to the architecture;
- distinction between diagnostic workflow and literal runtime schedule.

### 6.8 HCC closing invariants

The source closing target is explicit:
- objective reality;
- subjective compilation;
- no meaning transfer;
- communication restricted to structure;
- explanatory coverage of an individual at a moment.

Pass 4 must trace which lower mechanisms are required to make those final constraints cohere.

---

## 7. Coffee Cup — required rigorous reading

Coffee Cup must be analyzed as a **causal-literacy mechanism**, not just five labels.

### 7.1 Stage mechanism

Map:

```
CONDITIONS
   |
   | make possible, do not cause
   v
RELEASE
   |
   | initiates, not decisive
   v
TRAJECTORY
   |
   | live / shrinking intervention window
   v
IMPACT
   |
   | ground truth / resolved outcome
   v
AFTERMATH
   |
   | causal narrative / memory / policy change
   v
next CONDITIONS
```

Every arrow requires the exact source claim.

### 7.2 Distinction constraints

Preserve explicitly:
- conditions != cause;
- release != trajectory;
- release != impact;
- trajectory != courtroom;
- impact = ground truth, not possible outcome;
- aftermath != commentary;
- aftermath changes future conditions.

These are source-defined **behavior mechanisms**, not merely assay anti-goals.

### 7.3 Intervention-window mechanism

The source defines:
- early intervention easy/trivial;
- later intervention requires speed;
- later still partial mitigation;
- eventually none;
- certainty is not required before action;
- opportunity shrinks mechanically, not morally.

Pass 4 must map:
- time dependence;
- option-set contraction;
- visibility of signals;
- intervention cost;
- distinction between prediction and planning.

### 7.4 Attention-collapse / strategic-literacy mechanism

Pass 3 under-mapped this.

The source's strategic theory says planning is the ability to **hold all five stages at once while time still exists**.

Map the desired mechanism:

```
simultaneous causal model
    |
    +--> conditions without fate
    +--> release without total causality
    +--> trajectory without certainty
    +--> impact checked against reality
    +--> aftermath anticipated as next-condition writer
```

This is a behavioral mechanism about causal representation/attention, not only event sequencing.

### 7.5 Recurrence

Map:

```
conditions -> release -> trajectory -> impact -> aftermath
     ^                                             |
     +---------------------------------------------+
```

Pass 4 must distinguish:
- historical event immutability;
- aftermath changing future conditions;
- narrative recurrence;
- pattern repetition.

No requirement to store literal C1–C5 rows follows.

### 7.6 Non-normative stance

The source explicitly says:
- not deciding what should be done;
- trajectory is not a courtroom;
- the concern is seeing the fall while time exists.

Map this as **BM-NORMATIVE-NOT**.

A future system that moralizes instead of maintaining causal visibility may fail the desired behavior even if its stage labels are correct.

---

## 8. Water / Dual Proofing — required rigorous reading

Water must be analyzed as **two cooperating proofing systems plus an interface**, not a loose list of pointability rules.

### 8.1 Artifact purpose

Preserve the stated target:

> determine why communication is failing, why, and what must change before it can work.

The system does **not** decide who is right.

It determines whether understanding is possible yet.

### 8.2 Proof Ledger mechanism

Map the four primitive classes:
- OBS;
- DELTA;
- UNK;
- INVALID.

For each:
- admission condition;
- payload;
- role;
- transition possibilities;
- failure modes.

Required invariants:
- pointability;
- separate OBS inventories are permitted;
- DELTA requires pairing/sharedness;
- unresolved UNK blocks coherent comprehension;
- INVALID routes back toward computable structure.

### 8.3 River mechanism

Map:
- Banks;
- Rapids;
- Delta/Crossing.

Required distinctions:
- separate position is normal;
- pressure/energy != transfer;
- crossing requires delta conditions;
- conversations may begin in rapids because pressure forces engagement.

### 8.4 Structural isomorphism

This is source-defined, not a repo invention.

Map:

```
River Banks
    ≈ separate OBS inventories

Rapids
    ≈ high-rate talk + missing anchors + unresolved UNK

River Delta
    ≈ paired/shared OBS + declared UNK list
```

The source explicitly says the systems are compatible because they describe the same underlying requirement.

Pass 4 must preserve this mechanism, while marking `≈` as source-level conceptual equivalence, not identity of data structures.

### 8.5 Delta Bridge interface

The interface is explicitly “the most important part” / the interop layer.

Map:
- purpose: translate River location into Proof Ledger requirements and vice versa;
- shared states;
- transition conditions;
- allowed outputs;
- repair routing.

### 8.6 Shared FSM

Map S0–S4:
- Banks;
- Rapids;
- Delta setup;
- Crossing;
- Bank rebuild.

For each:
- entry condition;
- allowed outputs;
- required evidence;
- next lawful move;
- invalid premature move.

Do not reduce this to “shared footing exists / does not exist.”

### 8.7 F1–F5 functions

Map:
- Locate();
- Anchor();
- Pair();
- Unknowns();
- Reject().

For each:
- source input;
- source output;
- corresponding River translation;
- whether the function changes location/state;
- which prerequisites must hold.

These are desired behavioral interface mechanisms.

They are **not automatically Core functions**.

### 8.8 Unit of progress

Map source-defined progress metrics:

Proof Ledger:
```
OBS created -> DELTA created -> UNK resolved
```

River:
```
rapids -> delta -> crossing
```

Interface:
- River detects location;
- Ledger states what must exist for crossing.

This is stronger than Pass-3's isolated W-G assays.

### 8.9 Open degrees of freedom

Do not “complete” the source.

The source explicitly leaves:
- OBS pointer format;
- INVALID stop-word/pattern list;
- UNK halt vs bounded budget.

Stamp **BM-OPEN**.

No repo default becomes source truth.

### 8.10 Kernel sentence

Map the repair sentence as a compact interface action:
- River sees location + move;
- Ledger sees OBS request;
- no blame/dominance;
- routing, not resolution.

The literal sentence is an example/interop utterance; the **behavioral mechanism** is the routing operation.

---

## 9. Pass-3 assay audit — mandatory

The twelve Pass-3 assays remain useful.

Pass 4 must audit each against the original mechanisms using:

- **FULL** — assay meaningfully covers the source mechanism at its declared scope;
- **PARTIAL** — captures a real projection but not the mechanism as a whole;
- **THIN** — technically source-grounded but omits important mechanism structure;
- **DISTORTED** — changes the source relation;
- **MISSING** — no assay currently addresses the source mechanism.

Minimum expected review targets:

### HCC

- H-G1 vs RIC/PFC parallel coexistence + C integration;
- H-G2 vs separate world feedback and identity/prior feedback;
- H-G3 vs structure-only transfer + holder-local M/E/L;
- missing: parameter space, arbitration, pruning, six-act process, identity integration, observable B.

### Coffee Cup

- C-G1 vs full five-stage causal distinction;
- C-G2 vs shrinking mechanical intervention window;
- C-G3 vs aftermath recurrence;
- missing/thin: “hold all five stages at once,” planning≠prediction, conditions≠cause, impact-as-ground-truth discipline, non-moral stance.

### Water

- W-G1 vs OBS/pointability;
- W-G2 vs Rapids;
- W-G3 vs separate inventories/shared Delta;
- W-G4 vs UNK;
- missing/thin: INVALID routing, full Ledger progression, River progression, structural isomorphism, FSM S0–S4, F1–F5 interface, unit of progress, repair routing, source-open parameters.

### Cross-source

Audit X-G1/X-G2 after the three sources are mapped separately.

Do not use the existing H×C×W train as proof that a cross-source mechanism is source-defined.

---

## 10. Behavioral mechanism acceptance vs implementation freedom

Pass 4 must create a clear mapping between **what the behavioral mechanism requires** and **what implementation remains free**.

Template:

| Desired-behavior mechanism | Functional obligation | Implementation freedom |
|---|---|---|
| HCC RIC/PFC parallelism | evidence-preserving and prior-conditioned interpretations coexist before integration | number of objects/threads/buffers; literal names; code structure |
| Coffee Cup stage distinction | conditions/release/trajectory/impact/aftermath remain causally distinct | internal event representation |
| Water two inventories | parties remain distinguishable until shared footing/pairing | storage layout, object model |
| Water UNK blocking | missing required evidence cannot be silently bulldozed | exact budget rule remains source-open |
| HCC holder-local meaning | interpretation/meaning cannot silently transfer as another holder's fact | representation of holder-local state |

Pass 4 is not allowed to populate the implementation-freedom column with a preferred design unless the source itself requires it.

---

## 11. Source mechanism → Lace / holder placement

For every source mechanism, execution must classify where its **implementation obligation** currently belongs.

Allowed dispositions:

- **LACE-SUBSTRATE-SUPPORT**  
  Lace provides a property the desired mechanism needs, but does not itself perform the whole behavior.

- **DERIVED-READ-SUPPORT**  
  Current reconstructible/read-only machinery supplies an observable or support.

- **HOLDER/APPLICATION-REQUIRED**  
  The desired mechanism necessarily belongs above Contract I under current law.

- **WORKING-STATE-REQUIRED**  
  Behavior needs mutable/ephemeral/replayable working state but not authoritative Lace mutation.

- **MULTI-PARTY-REQUIRED**
- **TEMPORAL/ROUND-STATE-REQUIRED**
- **OPEN-IMPLEMENTATION-MECHANISM**
- **FORBID-AS-CORE**
- **SOURCE-OPEN**
- **CONFLICT / REQUIRES HUMAN RULING**

No classification may erase the desired mechanism.

---

## 12. Especially important seam — mutable behavioral mechanisms on immutable Lace

Pass 4 must treat this as a first-class design obligation.

Examples:
- HCC ledger suppression / re-indexing;
- weights changing;
- identity snapshot changing;
- PFC template update;
- Coffee Cup aftermath changing later conditions;
- Water state transitions / inventories / UNK resolution.

Question:

> How can a system built on an append-only authoritative Lace exhibit source-required mutable/temporal behavior?

Pass-4 answer format:

```
SOURCE REQUIRES BEHAVIORAL MUTABILITY
        |
        v
Lace authoritative history remains immutable
        |
        v
implementation mechanism = OPEN
        |
        +--> replay-derived working state?
        +--> append-only supersession?
        +--> holder-local ephemeral state?
        +--> other candidate?
```

Pass 4 must **not select among these candidates**.

Its job is to preserve the obligation.

---

## 13. Cross-source map — only after individual maps

The crosswalk artifact must have separate columns:

| Relation | HCC source | Cup source | Water source | Relation strength |
|---|---|---|---|---|
| source-defined within one doc | locator | — | — | SOURCE |
| compatible concepts | locator | locator | locator | PASS-4 INFERENCE |
| possible behavioral coupling | locator | locator | locator | HYPOTHESIS |
| conflict/tension | locator | locator | locator | CONFLICT |
| old train mapping only | repo cite | repo cite | repo cite | HISTORICAL-REPO, not source |

Candidate cross-source relationships to re-examine from originals:

- HCC structure-only transfer ↔ Water pointability/shared reference;
- HCC separate local compilation ↔ Water separate OBS inventories;
- Coffee Cup aftermath ↔ HCC feedback/prior update;
- Coffee Cup conditions/aftermath ↔ HCC templates/prior context;
- Coffee Cup trajectory ↔ Water location/crossing constraints;
- Water crossing/action output ↔ future HCC/Cup action cycle.

Do not assume any survives.

---

## 14. Research and platform role in Pass 4

### Research

Books/papers may help:
- formalize a source behavioral mechanism;
- propose candidate implementation machinery;
- expose contradictions;
- define future experimental methods.

They may not reinterpret the source original.

### Platform

Hardware/toolchain documents are mostly downstream in this pass.

Only map them if a desired behavioral mechanism itself imposes physical requirements such as:
- multiple concurrent contexts;
- temporal responsiveness;
- working-state size;
- persistence;
- multi-party I/O.

Even then:

```
behavioral mechanism
    -> physical requirement

not

platform feature
    -> behavioral mechanism
```

---

## 15. Station order for execution

```
PRE-FLIGHT
current main + all stations + source hashes
        |
        v
SOURCE ORIGINALS
read all three independently
        |
        v
HOLOGRAM / CLOCK  (read-first)
compare source originals to existing clipboards
        |
        v
MAPS
HCC mechanism map
Cup mechanism map
Water mechanism map
        |
        v
MAPS
Pass-3 assay coverage audit
        |
        v
MAPS
cross-source mechanism crosswalk
        |
        v
LAW / PROMPTS / KIT
ONLY if current active wording materially misstates
behavioral mechanism vs implementation machinery
        |
        v
HOLOGRAM / CLOCK
ONLY if source-backed corrections are required
        |
        v
GLOBAL ASCII LAST
only if current companion needs a behavioral-mechanism layer
        |
        v
FINDINGS / INDEX / RELEASE
```

No mechanical station churn.

---

## 16. Global ASCII rule

Current companion layers:

- Pass 32 — canonical mechanism catalog;
- Pass 33 — vertical authority/context;
- Pass 34 — operational machinery traceability;
- Pass 35 — behavioral-goal assay layer.

If Pass 4 execution materially changes the companion, the next delta is:

**Pass 36 — Source → Lab → Lace Alignment Restart Pass 4 — desired-behavior mechanism map**

Recommended shape:

```
SOURCE BEHAVIORAL MECHANISM
        |
        +--> required functional relation
        |
        +--> observable assay projection
        |
        +--> implementation obligation
                  |
                  X concrete machinery still experimental
```

Pass 36 must not put HCC/Cup/Water mechanisms inside Contract I merely because they are required desired-behavior mechanisms.

---

## 17. Falsifiers

### F1 — assay flattening
Pass 3 observable assays are treated as the whole source system.

### F2 — implementation collapse
Source behavioral mechanism is treated as exact runtime/data-structure prescription.

### F3 — mechanism erasure
A source-defined mechanism is discarded because current Lace cannot directly implement it.

### F4 — metaphor literalization
Cup wheel / River / shafts/gears are converted into literal runtime requirements without source support.

### F5 — literal mechanism demotion
Explicit source mechanisms/invariants are dismissed as mere metaphor.

### F6 — source strength lost
Definition, invariant, example, diagnostic and open degree are treated as equal-strength claims.

### F7 — mutable behavior forbidden by substrate
Append-only Lace law is used to erase HCC pruning/reweighting/feedback or other desired behavior rather than preserve an implementation obligation.

### F8 — holder state becomes second Lace store
Desired holder-local working state is promoted to a second authoritative Lace store.

### F9 — source-open parameter invented
Water OBS format / INVALID list / UNK budget or HCC procedural details are silently fixed.

### F10 — HCC state machines fused
S0–S7, Acts I–VI and parameter knobs are treated as one schedule.

### F11 — Cup stages reduced to timestamps only
Causal role and strategic-literacy mechanism are lost.

### F12 — Water reduced to pointability only
Proof Ledger, River, structural isomorphism, Delta Bridge, FSM and functions are not mapped.

### F13 — cross-source inference promoted to source fact
H×C×W correspondence lacks separate source support.

### F14 — old repo clipboard wins over original
A current clipboard statement contradicts original source and is kept without qualification.

### F15 — implementation candidate chosen
Pass 4 selects a concrete holder/Lace realization.

### F16 — RM-A design begins
A retention rule is invented to reconcile a behavioral source.

### F17 — behavioral fit becomes mechanism identity
Passing an assay is treated as proof of the true implementation mechanism.

### F18 — Core/acceptance gate moves
Desired-behavior mechanism recovery becomes implementation permission.

---

## 18. Completion board

| Gate | Required |
|---|---|
| G1 | current main + source hashes pinned |
| G2 | three originals read independently before repo reconciliation |
| G3 | HCC ontology/components/state machine/parameters/acts/feedback mapped |
| G4 | Coffee Cup five-stage causal loop/intervention/strategic-literacy mechanism mapped |
| G5 | Water Proof Ledger/River/isomorphism/Delta Bridge/FSM/F1–F5/open params mapped |
| G6 | source assertion strength preserved |
| G7 | metaphor vs explicit mechanism distinguished |
| G8 | behavioral mechanism vs observable assay vs implementation mechanism separated |
| G9 | Pass-3 twelve assays audited FULL/PARTIAL/THIN/DISTORTED/MISSING |
| G10 | missing desired mechanisms identified |
| G11 | mutable behavioral requirements preserved without violating append-only Lace authority |
| G12 | current Lace/holder placement recorded for every major mechanism |
| G13 | source-open degrees remain open |
| G14 | cross-source map created only after individual maps |
| G15 | cross-source inference stamped separately from source fact |
| G16 | current clock clipboards compared against originals |
| G17 | current repo wording corrected only where original proves drift |
| G18 | no concrete implementation selected |
| G19 | RM-A remains un-designed |
| G20 | Pass 32–35 preserved |
| G21 | global ASCII changed last only if necessary |
| G22 | if changed, global delta is linear Pass 36 |
| G23 | findings distinguish source mechanism recovery from implementation design |
| G24 | no Core/acceptance/implementation gate moved |
| G25 | all claims released |

---

## 19. Expected Pass-4 verdicts

Pass 4 reports four independent verdicts.

### Source mechanism recovery

- **DESIRED-BEHAVIOR MECHANISMS MAPPED**
- **MAPPED WITH SOURCE OPENS**
- **SOURCE MODEL STILL UNDER-SPECIFIED**

### Existing clipboard fidelity

- **CLIPBOARDS FAITHFUL**
- **FAITHFUL WITH COMPRESSION LOSS**
- **MATERIAL SOURCE DRIFT FOUND**

### Pass-3 assay fidelity

- **ASSAYS COVER SOURCE MECHANISMS AT DECLARED SCOPE**
- **ASSAYS ARE VALID BUT THIN**
- **ASSAY INTERPRETATION DISTORTS SOURCE**

### Implementation freedom

- **FUNCTIONAL OBLIGATIONS CLEAR / IMPLEMENTATION OPEN**
- **SOME OBLIGATIONS REQUIRE HUMAN RULING**
- **CURRENT LACE LAW CONFLICTS WITH REQUIRED BEHAVIOR**

Do not collapse these into a single PASS/FAIL.

---

## 20. Stop

Pass 4 stops after:

- three original-source behavioral-mechanism maps;
- source-strength classification;
- existing clipboard fidelity audit;
- Pass-3 assay coverage audit;
- cross-source mechanism crosswalk;
- Lace/holder implementation-obligation placement;
- optional current-entry corrections;
- optional global ASCII Pass 36;
- findings / release.

It does **not** automatically:

- design RM-A;
- select a holder architecture;
- make HCC-A literal code;
- turn Coffee Cup stages into runtime tables;
- turn Water OBS/DELTA into Core row types;
- forge unresolved Water parameters;
- create an H×C×W runtime;
- modify Graphics A–D;
- open `src/`;
- accept pointer-emission;
- open Pass 5.

The question Pass 4 must answer is:

> **What mechanisms are actually part of the desired behavior described by the originals, and what remains free for the Lab to discover underneath them?**


---

## 21. Actual execution result

Executed against current main beginning at `c81790d57a92c845b7d63033ebc8b3c4fdf40b99`.

Source originals were read first from the uploaded files and matched the pinned SHA-256 identities.

Products:
- HCC-A desired-behavior mechanism map;
- Coffee Cup desired-behavior mechanism map;
- Water desired-behavior mechanism map;
- source-separated cross-source mechanism crosswalk;
- source-backed clock/law/context entrance corrections;
- Pass-3 assay qualification;
- global ASCII **linear Pass 36**;
- Pass-4 findings.

Verdicts:
- **Source mechanism recovery:** DESIRED-BEHAVIOR MECHANISMS MAPPED WITH SOURCE OPENS.
- **Existing clipboard fidelity:** FAITHFUL WITH COMPRESSION / INTERPRETIVE OVERLAY.
- **Pass-3 assay fidelity:** ASSAYS ARE VALID BUT THIN.
- **Implementation freedom:** FUNCTIONAL OBLIGATIONS CLEAR / CONCRETE IMPLEMENTATION OPEN.

No concrete holder/runtime implementation was selected. RM-A remains un-designed. No Core mechanism, pointer acceptance, or implementation gate moved.

**STOP.** Pass 5 is not opened automatically.
