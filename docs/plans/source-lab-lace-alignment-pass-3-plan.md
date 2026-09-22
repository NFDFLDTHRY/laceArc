# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 3 PLAN

**Status:** PLAN — NOT EXECUTED.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 3.  
**Pass name:** **TEST THE DESTINATION — behavioral-goal assays.**  
**Planning station:** maps · `Astra-alignment-restart`.  
**Pinned current main before planning claim:** `6e2bc71fe919875235c62adec49124a4db046b88`.  
**Planning claim commit:** `7dca8bba7c9a87f78c485c6e8b042b8e9f520904`.  
**Inherits:** Restart Pass 1 vertical alignment, Restart Pass 2 operational traceability, global ASCII Passes 33–34, Pass-32 mechanism catalog, systems-manifest contract registry, existing HCC-A/Coffee Cup/Water source clipboards.  
**Implementation:** none. No `src/`, Cargo implementation, branch birth, Core runtime, pointer acceptance, or RM-A design.  
**Primary objective:** make the **behavioral-goal layer falsifiable** without turning source-described machinery into a hidden implementation requirement.

Pass 1 aligned the boxes.  
Pass 2 traced the arrows.  
**Pass 3 defines how the Lab can tell whether it is moving toward the destination.**

---

## 0. Alignment court

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

Pass 3 focuses on the **top arrow**:

```
BEHAVIORAL-GOAL SOURCE
        |
        v
source-grounded observable behavior
        |
        v
mechanism-agnostic Lab assay
        |
        v
candidate system / current Lace capability
        |
        v
PASS / FAIL / BLOCKED / UNTESTED
```

The assay judges behavior.

It does **not** judge whether the candidate copied the source's internal machinery.

---

## 1. Pass-3 thesis

[
oxed{
	ext{Behavioral goals must be testable without pre-selecting the machinery that realizes them.}
}
]

[
oxed{
	ext{Source-described machinery is candidate machinery; source-described behavior is the assay target.}
}
]

[
oxed{
	ext{A machine may satisfy a goal through unexpected machinery, and may fail the goal while imitating the source's machinery.}
}
]

This is the distinction that keeps laceArc a Lab rather than a transcription project.

---

## 2. The two forbidden collapses

### Collapse A — machinery becomes success

Forbidden:

```
candidate contains HCC-A ledger / Cup C1–C5 / Water FSM
        ↓
therefore behavioral goal satisfied
```

A source component name is not behavioral evidence.

### Collapse B — different machinery becomes failure

Forbidden:

```
candidate lacks HCC-A ledger / Cup wheel / Water FSM
        ↓
therefore behavioral goal failed
```

If a different mechanism reproduces the source-grounded behavior under the assay, it survives that assay.

Pass 3 therefore separates:

```
GOAL
    what must be observably true

SOURCE MACHINERY
    one source-described way the behavior is organized

CANDIDATE MACHINERY
    any proposed mechanism under Lab test

ASSAY
    behavior-only test surface
```

---

## 3. Current source-grounded behavioral material

Pass 3 does not reopen blind source harvesting.

It uses the existing source clipboards.

### 3.1 HCC-A behavioral family

Current clipboard already exposes source-grounded behaviors and constraints including:

- external/world structure constrains perception;
- RIC attempts faithful structural preservation;
- PFC applies prior/template influence;
- structure and prior interpretation coexist rather than one erasing the other;
- compiler/ledger/meaning/emotion/identity/behavior form a recurrent process;
- behavior changes the world and therefore later input;
- identity/prior feedback affects later interpretation;
- meaning is holder-local; **meaning transfer is forbidden**;
- communication is constrained to transmissible structure;
- objective reality and subjective compilation remain distinct;
- different parameters may produce different behavior without implying missing components.

Pass 3 must distinguish these **observable/behavioral claims** from the candidate HCC-A pipeline that organizes them.

### 3.2 Coffee Cup behavioral family

Current clipboard already exposes:

- conditions make an event possible without causing it;
- release initiates motion but is not total causality;
- trajectory is a live intervention window;
- that intervention window shrinks over time;
- impact is ground truth / resolved outcome;
- aftermath is causal, not commentary;
- aftermath changes the next conditions;
- stakes/meaning should not erase event structure;
- release, trajectory, impact, and aftermath must remain distinguishable.

These can become assay targets without requiring literal C1–C5 runtime stages.

### 3.3 Water / Dual Proofing behavioral family

Current clipboard already exposes:

- pointability is required for an OBS;
- shared OBS inventories need not initially match;
- DELTA requires pointable comparison / shared footing;
- UNK names missing evidence required for understanding;
- INVALID is non-computable until routed back toward pointable structure;
- pressure/loudness does not imply transfer;
- rapids are not crossing;
- crossing requires delta conditions;
- location should be diagnosed rather than personhood;
- the kernel sentence halts grind and requests one pointable thing;
- communication can fail because parties are in different evidentiary locations rather than because one is malicious/stupid.

These can become communication/proofing assays without requiring literal OBS/DELTA/UNK/INVALID as Core types.

---

## 4. Pass-3 primary artifact — behavioral-goal assay register

Execution must create:

`docs/plans/source-lab-lace-alignment-pass-3-goal-assays.md`

**Authority:** non-canonical Lab/alignment evidence.

Each assay row must include:

| Field | Meaning |
|---|---|
| **Goal ID** | campaign-local assay ID; must not look like an L-M/SM-C mechanism ID |
| **Source** | HCC-A / Coffee Cup / Water / cross-source only where separately justified |
| **Exact locator** | existing clipboard/source locator |
| **Behavioral statement** | source-grounded observable target |
| **Anti-goal** | behavior that would falsify the target |
| **Observable surface** | what can actually be inspected |
| **Input specimen** | exact stimulus/history/trace/transcript |
| **Expected relation** | what must hold, not how it is implemented |
| **Forbidden implementation assumption** | source machinery the assay must not require |
| **Candidate under test** | current Lace / derived read / external candidate / NONE |
| **Assay status** | TESTABLE / BLOCKED / NOT-YET-SPECIFIED |
| **Execution state** | NOT-RUN / RUN / REPRODUCED |
| **Result** | PASS / FAIL / BLOCKED / INCONCLUSIVE |
| **Evidence scope** | exact specimen / bounded class / source theorem |
| **Relevant Lace surface** | SM-C / L-M / Lab only / NONE |
| **Relevant platform surface** | NONE / future realization / device-dependent assay |
| **Falsifier** | what result kills the claim |
| **Debt** | missing specimen / instrumentation / candidate behavior / authority |

The register must allow:

```
goal has no current candidate
```

That is valid.

Pass 3 is not allowed to invent a candidate merely to avoid an empty row.

---

## 5. Assay classes

### G-A — INVARIANT assay

Tests that something must remain true across a run.

Examples:
- prior interpretation may vary while source structure remains preserved;
- aftermath does not rewrite the historical impact;
- INVALID/heat does not become evidence merely through repetition.

### G-B — DISTINCTION assay

Tests that two source-distinct things remain distinguishable.

Examples:
- release != impact;
- pressure != transfer;
- source structure != holder-local interpretation;
- Lab evidence != Lace retention.

### G-C — TRANSITION assay

Tests a source-grounded temporal/causal relation without requiring the source's internal stage names.

Examples:
- an intervention opportunity exists after release and before impact;
- aftermath changes the next possibility field;
- obtaining a pointable shared element can move a communication state from non-crossable toward crossable.

### G-D — NEGATIVE / REFUSAL assay

Tests that a system refuses a forbidden inference.

Examples:
- do not infer intent from unanchored accusation;
- do not treat loudness as transfer;
- do not treat a source-machine label as Core;
- do not treat platform capability as behavioral success.

### G-E — RECURRENCE assay

Tests whether output/history affects later input/behavior while preserving prior facts.

Examples:
- Coffee Cup aftermath → next conditions;
- HCC world feedback → next sensed structure;
- HCC identity/prior feedback → later interpretation.

This class is particularly important because the current Lace substrate is append-only and therefore naturally supports historical recurrence without mutation. The assay must still test the behavioral relation, not assume append-only storage automatically satisfies it.

### G-F — MULTI-PARTY / SHARED-FOOTING assay

Tests Water-style understanding constraints.

Requires explicit party/inventory separation.

A one-strand D1 specimen cannot silently stand in for two inventories.

---

## 6. Assay admission rules

A proposed behavioral assay is admitted only if:

1. **Source-grounded goal**  
   The behavioral statement is pointable to the behavioral-goal source/clipboard.

2. **Mechanism independence**  
   The expected result does not require literal source machinery unless the source states that machinery itself is the behavioral outcome.

3. **Observable output**  
   A third party can tell PASS from FAIL without access to private chain-of-thought or hidden internal state.

4. **Predeclared falsifier**  
   The assay can lose.

5. **No semantic adapter smuggling**  
   If the assay maps Lace/output state to a source concept, that mapping must be identity/derived/source-defined or clearly stamped LAB-PROXY.

6. **No future leakage**  
   Prefix-time claims may not inspect future outcomes.

7. **No authority upgrade**  
   Passing the behavioral assay does not make candidate machinery Core.

8. **Platform independence by default**  
   If the goal can be tested without device/runtime timing, the assay must not make hardware success part of the behavioral criterion.

---

## 7. Minimum Pass-3 goal census

Pass 3 must construct at least these source-grounded assay candidates.

### HCC-A minimum

#### H-G1 — structure vs interpretation separation
Source target:
- source/external structure and holder-local interpretation are distinct;
- meaning transfer is forbidden.

Assay idea:
- hold source structure constant;
- vary a declared prior/template context;
- require the candidate to preserve the same external structural evidence while allowing downstream interpretation/behavior to differ.

Forbidden shortcut:
- mutate the source/Lace history to reflect the changed interpretation.

#### H-G2 — feedback without history rewrite
Source target:
- behavior/world feedback influences later input;
- identity/prior feedback influences later interpretation.

Assay idea:
- two rounds;
- round-1 output becomes round-2 context through a declared channel;
- round-1 source/history remains immutable.

Forbidden shortcut:
- rewrite round-1 evidence.

#### H-G3 — structure-only boundary
Source target:
- only structure crosses; holder-local meaning/weight/affect does not transfer as the other party's fact.

Assay:
- expose the same pointable structure to two candidate holders/contexts;
- require shared structure to remain pointable while local interpretation is not silently copied between them.

This is behavioral, not a requirement for literal RIC/PFC/ledger components.

### Coffee Cup minimum

#### C-G1 — stage distinction
Require a test trace where:
- precondition/possibility;
- initiation/release;
- live trajectory;
- resolved impact;
- later aftermath
remain distinguishable.

A candidate that collapses release into impact fails.

#### C-G2 — shrinking intervention window
Use a predeclared trace with multiple intervention times.

Require:
- earlier intervention preserves more possible outcomes than later intervention;
- after impact, intervention cannot change the already-resolved event.

Do not require a literal numeric “window” store.

#### C-G3 — aftermath is causal
Two otherwise identical second-round specimens differ only in prior aftermath.

Require a difference in later conditions/response that is causally attributable to the recorded aftermath.

Historical impact remains unchanged.

### Water minimum

#### W-G1 — pointability gate
Given:
- one anchored observation;
- one unanchored accusation.

Require:
- anchored item is admissible as pointable evidence;
- unanchored accusation cannot become equivalent evidence merely by repetition/confidence.

#### W-G2 — rapids != transfer
Construct a high-pressure/loud exchange with no shared pointable object.

Require:
- system does not report successful crossing/understanding solely because interaction volume/urgency increased.

#### W-G3 — shared-footing transition
Two parties begin with separate inventories.

Then introduce one acknowledged pointable shared element.

Require:
- transition toward DELTA/crossing becomes possible only after shared footing exists.

A single merged inventory is not an acceptable substitute.

#### W-G4 — UNK as explicit missing evidence
Present a task that cannot be resolved because a named observation is missing.

Require:
- system can identify the missing evidence needed for progress;
- it does not fill the gap through confidence/volume.

### Cross-source minimum

#### X-G1 — recurrence without fusion
A combined specimen exercises:
- Cup aftermath;
- HCC feedback/prior change;
- Water crossing state.

Require:
- each feedback path can affect a later round;
- their state/evidence remains distinguishable;
- no single fused “meaning state” is required.

#### X-G2 — pointable structure across holders
Water pointability + HCC structure-only boundary.

Require:
- two holders can share a pointable structural referent;
- their local interpretations may differ;
- no rule assumes meaning transfer.

This is a cross-source behavioral compatibility assay, not a required H×C×W runtime composition.

---

## 8. Current Lace under behavioral assays

Pass 3 must not jump directly from goal to “Lace passes.”

For each assay, classify current Lace support as:

### SUBSTRATE-SUPPORT

Current Lace supplies a property useful to the assay.

Examples:
- immutable history;
- separate occurrences;
- retained structural participation;
- derived search;
- append-only recurrence.

This is **not** goal satisfaction.

### DERIVED-READ-SUPPORT

Current derived machinery can reconstruct an observable required by the assay.

Still not behavioral success.

### MISSING-BEHAVIORAL-MACHINERY

The substrate lacks a system that could produce the required behavior.

This is expected during experimental growth.

### BLOCKED-BY-RM-A

The behavioral experiment genuinely requires new retained structure whose retain decision is missing.

Do not invent it.

### OUTSIDE-LACE / HOLDER-LAYER

The behavior belongs to a future holder/application system built against Lace rather than Contract I itself.

This may be the correct classification for many HCC/Cup/Water goals.

Pass 3 must permit this result.

---

## 9. Mechanism blindness test

Every admitted assay must be run conceptually against at least two implementation descriptions:

### M1 — source-like implementation
A candidate that uses source-described machinery/names.

### M2 — alien implementation
A hypothetical candidate that produces the same observable behavior through different machinery.

Question:

> Would this assay pass both if their observable behavior is equivalent?

If **no**, the assay probably tests implementation resemblance rather than behavioral success.

This is a design-time falsifier, not an instruction to implement M2.

---

## 10. Anti-cheat behavioral controls

Pass 3 should define adversarial assay controls.

### AC1 — label mimic
Candidate prints/source-labels “RIC,” “C3,” “DELTA,” etc. but does not exhibit the corresponding behavior.

Expected:
- **FAIL**.

### AC2 — behavior without labels
Candidate exhibits the source-grounded behavior but uses none of the source's internal names.

Expected:
- should be **capable of PASS**.

### AC3 — history rewrite
Candidate gets the desired later behavior by modifying prior evidence.

Expected:
- **FAIL** where source/Lace constraints require historical distinction.

### AC4 — oracle outcome
Candidate reads expected assay outcome labels.

Expected:
- **REJECT** even if behavior appears perfect.

### AC5 — semantic leakage
Candidate uses embeddings/meaning labels where the assay claims only structural evidence.

Expected:
- **FAIL / AUTHORITY-BLOCKED**.

### AC6 — pressure-as-success
Water assay candidate reports progress because messages/urgency increase.

Expected:
- **FAIL**.

### AC7 — aftermath-as-impact rewrite
Cup assay candidate changes recorded impact to make the later story coherent.

Expected:
- **FAIL**.

---

## 11. Instrument policy

Pass 3 may create a new host-side Lab assay tool **only if** the goal assay can first be specified without code.

Proposed path if admission succeeds:

`docs/plans/tools/lace-behavior-assay.py`

Possible fixture shelf:

`docs/plans/fixtures/behavioral-goals/`

But code/fixtures are **conditional outputs**, not mandatory.

Before any tool is written, the findings must show:

1. exact source-grounded behavioral statement;
2. mechanism-independent expected relation;
3. fixture semantics;
4. falsifier;
5. why the current candidate-runner / retention-harness cannot express it;
6. why the new representation is not an RM-A rule or hidden holder implementation.

If no assay reaches that bar, Pass 3 ends with **ASSAY DESIGN DEBT** and writes no tool.

---

## 12. Fixture rules

A behavioral assay fixture is not a source and not a Lace truth record.

It must declare:

- fixture ID/version;
- source goal(s) it exercises;
- synthetic vs source-derived specimen;
- parties/rounds/time ordering if relevant;
- what is input;
- what is expected observable relation;
- forbidden hidden fields;
- whether the fixture contains answer labels;
- oracle class;
- scope.

For multi-party Water assays:
- party inventories must remain separate;
- no merged hidden state.

For temporal Cup/HCC assays:
- prior rounds remain immutable;
- later context may cite/derive from prior history.

---

## 13. Research role in Pass 3

Books/papers/research may contribute:

- assay methodology;
- counterexamples;
- non-identification warnings;
- formal metrics;
- adversarial test design.

They may **not redefine the behavioral goals**.

Examples:
- Petersen–Zech can warn that finite behavioral fit does not identify the mechanism;
- AgentScope can inform failure-analysis methodology;
- Kauffman/Rowlands/Xiao may suggest machinery or mathematical tests.

But HCC-A/Cup/Water remain the behavioral-goal authority.

---

## 14. Platform role in Pass 3

Behavioral goals are semantic/behavioral by default.

Hardware/platform enters only when an assay explicitly depends on:

- real-time latency;
- memory/resource ceiling;
- GPU/NN availability;
- browser/device state;
- persistence/offline behavior;
- concurrency.

If a behavioral assay can be run on an abstract trace:
- platform relevance = `NONE-AT-BEHAVIORAL-STAGE`.

This prevents:

```
Pixel runs it fast
    ↓
therefore behavioral goal satisfied
```

and also:

```
Pixel cannot run realization X
    ↓
therefore behavioral goal impossible
```

A realization can fail while the behavioral target remains valid.

---

## 15. Pass-3 experiment-debt output

Execution must produce a goal-coverage/debt table with at least:

- GOAL-SPECIFIED;
- ASSAY-SPECIFIED;
- TESTABLE-NOW;
- NO-CURRENT-CANDIDATE;
- NEEDS-HOLDER-LAYER;
- NEEDS-MULTI-PARTY-SPECIMEN;
- NEEDS-TEMPORAL-SPECIMEN;
- BLOCKED-BY-RM-A;
- INSTRUMENT-MISSING;
- FIXTURE-MISSING;
- PLATFORM-DEPENDENT;
- SOURCE-AMBIGUOUS;
- CROSS-SOURCE-CORRESPONDENCE-UNPROVED.

Debt is not failure.

---

## 16. Station order

```
PRE-FLIGHT
current main + stations + tree
        |
        v
HOLOGRAM / CLOCK
read source-goal clipboards
        |
        v
MAPS
build behavioral-goal assay register
        |
        v
LAB ASSAY DESIGN
mechanism-blind + adversarial controls
        |
        +--> if executable with current tools: RUN
        |
        +--> if a new tool is justified: plan/build host-side Lab tool only
        |
        v
MAPS
classify current Lace support / behavioral debt
        |
        v
RESEARCH
read-only counterexample / assay-method support
        |
        v
PLATFORM
only for assays that truly depend on physical realization
        |
        v
LAW / PROMPTS / KIT
ONLY if current entrances materially contradict the goal-assay distinction
        |
        v
GLOBAL ASCII LAST
only if the companion needs a goal-assay overlay
        |
        v
FINDINGS / INDEX / RELEASE
```

Do not mechanically touch every station.

---

## 17. Global ASCII rule

Current companion layers:

- Pass 32 = canonical mechanism catalog;
- Pass 33 = vertical authority/context;
- Pass 34 = operational machinery traceability.

If Pass 3 materially changes the companion, the next linear delta is:

**Pass 35 — Source → Lab → Lace Alignment Restart Pass 3 — behavioral-goal assay layer**

Pass 35 must show:

```
BEHAVIORAL GOAL
      |
      | source-grounded observable
      v
MECHANISM-AGNOSTIC ASSAY
      |
      v
LAB CANDIDATE / CURRENT LACE SUPPORT
      |
      v
PASS / FAIL / BLOCKED / UNTESTED
```

Pass 35 must not add H/C/W stages to Core.

---

## 18. Falsifiers

### F1 — machinery-as-goal
Assay passes because source machinery names/components are present.

### F2 — mechanism prejudice
A behaviorally correct alien implementation would fail solely because it differs from source machinery.

### F3 — vague goal
Goal cannot produce a PASS/FAIL/BLOCKED distinction.

### F4 — private-state dependency
Assay requires hidden chain-of-thought or inaccessible internal state.

### F5 — source drift
Assay target is not pointable to the behavioral-goal source/clipboard.

### F6 — proxy becomes source
A LAB-PROXY observable is described as source-defined.

### F7 — substrate support called behavioral success
Append-only history/search/etc. is treated as proof of HCC/Cup/Water behavior without a behavioral run.

### F8 — RM-A smuggling
Assay invents a retain predicate merely to make the behavioral scenario work.

### F9 — multi-party collapse
Water two-inventory/shared-footing behavior is tested using one silently merged inventory.

### F10 — temporal collapse
Cup/HCC recurrence is tested without distinct rounds/history.

### F11 — oracle cheat
Fixture answer labels are visible to the candidate under test.

### F12 — finite fit = mechanism identity
A candidate passing bounded assays is declared the true machinery.

### F13 — research redefines goal
Book/paper machinery becomes the behavioral acceptance criterion.

### F14 — platform success = goal success
Fast/available execution is treated as behavioral correctness.

### F15 — platform failure = goal impossibility
One failed realization path is treated as refuting the behavioral goal.

### F16 — Core promotion
Passing a behavioral assay upgrades machinery into Lace without separate authority.

---

## 19. Completion board

| Gate | Required |
|---|---|
| G1 | current main/tree/stations pinned |
| G2 | behavioral-goal assay register created |
| G3 | HCC-A minimum goal set source-grounded |
| G4 | Coffee Cup minimum goal set source-grounded |
| G5 | Water minimum goal set source-grounded |
| G6 | at least two cross-source behavioral compatibility assays specified |
| G7 | every assay has explicit anti-goal/falsifier |
| G8 | every assay is mechanism-agnostic or honestly rejected |
| G9 | source machinery remains candidate machinery, not success criterion |
| G10 | current Lace support classified without overclaiming goal satisfaction |
| G11 | holder/application-layer goals may remain outside Contract I |
| G12 | Lab retain-evidence remains distinct from Lace retention |
| G13 | RM-A remains un-designed |
| G14 | multi-party and temporal assays preserve their required structure |
| G15 | no private chain-of-thought required |
| G16 | any new fixture declares oracle/answer-label discipline |
| G17 | any new Lab tool catches at least one predeclared adversarial control |
| G18 | research informs methodology without redefining goals |
| G19 | platform enters only where assay truly depends on physical realization |
| G20 | Pass 32/33/34 preserved |
| G21 | global ASCII changed last only if necessary |
| G22 | if changed, companion delta is linear Pass 35 |
| G23 | goal/assay debt register published |
| G24 | no implementation/acceptance/Core promotion |
| G25 | all claims released |

---

## 20. Expected verdicts

Pass 3 reports three independent verdicts.

### Goal specification

- **BEHAVIORAL GOALS OPERATIONALIZED**
- **OPERATIONALIZED WITH SOURCE AMBIGUITIES**
- **GOALS NOT YET TESTABLE**

### Assay integrity

- **MECHANISM-AGNOSTIC**
- **MECHANISM-AGNOSTIC WITH NAMED PROXIES**
- **ASSAYS STILL BIAS SOURCE MACHINERY**

### Current coverage

- **BEHAVIORAL COVERAGE SUFFICIENT FOR CURRENT CLAIMS**
- **BOUNDED BEHAVIORAL COVERAGE / NAMED DEBT**
- **CURRENT CLAIMS EXCEED BEHAVIORAL EVIDENCE**

Pass 3 must not collapse these into one “works / does not work” verdict.

---

## 21. Stop

Pass 3 stops after:

- behavioral-goal assay register;
- mechanism-blindness audit;
- admitted assay specs;
- any justified bounded Lab execution;
- goal/assay debt register;
- current Lace support classification;
- optional Pass 35;
- findings / release.

It does **not** automatically:

- design RM-A;
- select HCC/Cup/Water machinery;
- build a holder architecture;
- create an H×C×W runtime;
- create new Core mechanisms;
- implement Rust;
- benchmark the Pixel;
- accept pointer-emission;
- open Pass 4.

The purpose is to give the Lab an honest answer to:

> **How will we know that Lace, plus whatever machinery survives above it, is actually approaching the behavioral goals?**
