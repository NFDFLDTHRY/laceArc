# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 1 PLAN

**Status:** EXECUTED 2026-09-21.  
**Campaign:** Mathematical Execution Model — Behavioral Read Devices.  
**Pass:** 1.  
**Pass name:** **DEFINE THE EYE — minimal mathematical device that can look into Lace without becoming Lace.**  
**Planning base:** \`96393bb2e51e6fc33d3c5935c450cc582ca1221a\`.  
**Planning station:** maps · ChatGPT.  
**Primary target:** \`docs/math-execution-model.md\`.  
**Implementation:** none. No \`src/\`, Cargo, target choice, carrier choice, encoding choice, RM-A rule, pointer acceptance, or Core promotion.  
**Source-specific full devices:** explicitly deferred. HCC-A, Coffee Cup, and Water are pressure tests in Pass 1, not yet three completed mathematical machines.
**Execution claim:** b1f9e680e3211ad4cf5f462e962dd59fca39b5bc.
**Source pressure artifact:** 45076f444f476f2384adfa73f22d2d90aadd0b21.
**Generic algebra artifact:** 7e70f8f2e2865cc5bab43f8e4f664350bf61210f.
**Primary model S9:** 1fa15a3bc792fe920a041fc5bc33029e60278298.
**Findings:** 3cae902310d04f72f487957f1c7514f13d6e276e.
**Final verdict:** **DEVICE ALGEBRA SOUND WITH OPENS · READ-ONLY SEPARATION PROVED · WITNESS ALGEBRA SUFFICIENT FOR PASS-1 PRESSURE SET · S9 ADMITTED WITH OPENS.**

---

## 0. Pass-1 question

> **What is the smallest mathematical object that can read lawful structure from Lace, carry source-required local state, produce pointable behavioral output, and still provably have no authority to alter Lace?**

Pass 1 succeeds only if the same generic object survives pressure from all three behavioral source families without flattening them into one behavior.

The pass is about the **eye**, not yet the three things looking through it.

---

## 1. Why Pass 1 is narrower than the campaign

The campaign direction is:

~~~text
Lace
  |
  +--> mathematical device H  (HCC-A family)
  +--> mathematical device C  (Coffee Cup family)
  +--> mathematical device W  (Water family)
~~~

Pass 1 does **not** build H, C, or W completely.

Instead it asks whether a single generic interface can support all three while preserving the critical differences already present in the sources:

- HCC-A requires the same incoming structure to feed an evidence-preserving RIC path and a prior-conditioned PFC path in parallel; Behavior is the directly observable output; Story/Meaning/Emotion/Identity are local mutable state.
- Coffee Cup requires five distinct causal positions and a shrinking intervention window; Conditions are not cause, Release is not total cause, Impact is resolved outcome, and Aftermath changes later conditions.
- Water requires pointable OBS, separate inventories, DELTA/UNK/INVALID distinction, River location, a shared S0-S4 interface, and F1-F5 routing functions; pointability does not imply Lace POINTER identity.

Pass 1 uses these as **requirements on the abstraction**, not as permission to merge them.

---

## 2. Authority order

### Lace court

1. canonical Graphics A-D;
2. \`docs/systems-manifest.md\`;
3. current \`docs/math-execution-model.md\`;
4. current Pass-38 domain/carrier/working-set envelope.

These determine what Lace is and what reads are already lawful.

### Behavioral source court

Read the originals directly:

- HCC-A;
- The Coffee Cup;
- Where the Water Is Loud.

Existing Pass-4 source mechanism maps are locators and prior analysis, not substitutes for the originals.

### Historical math

\`docs/clock/system-mathematical-model.md\` is candidate notation only.

Every reused statement from it must be classified:

- SOURCE-FAITHFUL;
- DEVICE-LIFT;
- HISTORICAL-INTERPRETATION;
- STALE-CORE;
- CROSS-SOURCE-HYPOTHESIS.

Current \`docs/math-execution-model.md\` wins every Core conflict.

---

## 3. Pass-1 deliverables

Pass 1 should create exactly three new maps-level products and, only if the abstraction survives, one bounded edit to the primary mathematical model.

### P1-A — source pressure ledger

\`docs/plans/math-execution-behavioral-read-devices-pass-1-source-pressure.md\`

For each source family record only the mechanisms needed to test the generic abstraction.

Required columns:

| Field | Meaning |
|---|---|
| source mechanism | exact source behavior under test |
| required input | what the behavior needs to observe |
| local state | what must live outside Lace |
| transition | what changes inside the device |
| output | what the device exposes |
| witness need | what must be pointable back into Lace or explicitly external/local |
| external context | time, reality, other-holder input, etc. not inferable from Lace |
| abstraction pressure | which field of the generic device this mechanism proves necessary |
| anti-collapse | what would be lost if the generic device were too small |

No full H/C/W implementation is allowed in this artifact.

### P1-B — generic device algebra

\`docs/plans/math-execution-behavioral-read-devices-pass-1-device-algebra.md\`

Define and minimize the generic device.

Starting candidate:

\[
\mathcal D=(Q,\Theta,\Omega,\Gamma,\delta,\lambda,\omega,\alpha,\mathcal F)
\]

where:

- \(Q\): local device state;
- \(\Theta\): parameters;
- \(\Omega\): Lace read map;
- \(\Gamma\): explicit external/context input not derivable from Lace;
- \(\delta\): local state transition;
- \(\lambda\): observable output;
- \(\omega\): pointability/witness map;
- \(\alpha\): optional action/request to the external world;
- \(\mathcal F\): source-family invariants and falsifiers.

The tuple is provisional.

Pass 1 must run a **field-deletion test**:

> Remove each field in turn. Which source pressure test becomes impossible or dishonest?

Any field with no surviving necessity is cut.

### P1-C — Pass-1 findings

\`docs/plans/math-execution-behavioral-read-devices-pass-1-findings.md\`

Record:
- final minimal tuple;
- no-write theorem result;
- lawful sensor basis;
- source pressure-test verdict;
- stale-Shadow classification result;
- whether a bounded S9 insertion into the primary model is justified;
- all remaining opens.

### Conditional primary-model edit

If and only if the generic device survives:

append a bounded new section to \`docs/math-execution-model.md\`:

**S9 — Mathematical devices that see into Lace**

S9 contains only:
- generic tuple;
- lawful read basis;
- witness semantics;
- no-write theorem;
- feedback-via-later-arrival fence;
- source-family pressure-test summary.

It does **not** contain full HCC/Cup/Water device equations yet.

---

## 4. Generic observation boundary

A device may see Lace only through already-lawful mathematical reads.

Candidate basis:

| ID | Read surface | Current role |
|---|---|---|
| O1 | point read | one immutable retained row |
| O2 | finite-set read | bounded named positions |
| O3 | prefix scan | replay/scan over \(L[0:n)\) |
| O4 | root/star read | root, occurrences, RootTouch participation |
| O5 | Reach / witness path | recursive retained POINTER ancestry |
| O6 | position x scale sample read | derived sampling surface/local cone |
| O7 | explicit search frontier | lexical/pattern/pointer/star-hop read with witnesses |
| O8 | projection | read-only \(\pi(L)\) when presentation itself matters |

Pass 1 must determine whether these are genuinely distinct mathematical primitives or whether some are derived compositions of others.

Do not create a new Core query API merely because the algebra names a read.

---

## 5. Candidate generic execution law

For device \(\mathcal D\) at step \(t\):

\[
o_t = \Omega_{\mathcal D}(L_{n_t},c_t)
\]

\[
g_t = \Gamma_{\mathcal D}(x_t)
\]

\[
q_{t+1}
=
\delta_{\mathcal D}
(q_t,o_t,g_t;\Theta)
\]

\[
y_t
=
\lambda_{\mathcal D}(q_{t+1},o_t,g_t)
\]

\[
w_t
=
\omega_{\mathcal D}(y_t)
\]

where the witness result must distinguish at least:

\[
w_t \in
\mathsf{LaceWitness}
\cup
\mathsf{ExternalWitness}
\cup
\{\mathsf{LOCAL},\mathsf{UNK}\}.
\]

This avoids the false assumption that every valid behavioral statement must be entirely derivable from Lace.

Coffee Cup time and HCC Reality are obvious pressure tests for \(\Gamma\).

---

## 6. Read-only separation theorem

Pass 1's central theorem attempt:

### Theorem candidate RD-1

Let \(L_n\) be an authoritative immutable Lace prefix.

If a device step uses only:

\[
\Omega(L_n),\Gamma(x),Q,\Theta
\]

and its transition/output maps have codomain outside authoritative Lace state, then:

\[
L_n' = L_n
\]

for that device step.

A later Lace change requires a **separate admitted Lace transition**:

\[
L_n
\xrightarrow{\text{Arrive / ruled RootTouch / separately lawful retention}}
L_{n+k}.
\]

Therefore:

\[
\text{device computation}
\not\Rightarrow
\text{Lace mutation}.
\]

Pass 1 must either prove this cleanly in the current model or identify the exact obstruction.

### Corollary target

Behavioral output, diagnostic output, meaning, impact, pointability, pressure, crossability, identity, or recurrence cannot by themselves supply RM-A.

---

## 7. Witness algebra

Pass 1 must prevent the word "grounded" from becoming fog.

Candidate witness classes:

### W-LACE

Finite pointable Lace evidence:

\[
W_L \subseteq \{0,\ldots,n-1\}
\]

optionally with explicit witness paths.

### W-EXTERNAL

Pointable non-Lace evidence such as external clock/context, environment state, or another holder's supplied observation.

### W-LOCAL

A result of local device state that is not claimed as shared structural fact.

### W-UNK

Required evidence is missing.

A device output may combine classes, but each claim must state which part came from where.

This is especially important for:
- HCC local meaning versus structural evidence;
- Cup timing/context versus retained sequence;
- Water OBS pointability versus Lace POINTER identity.

---

## 8. Source pressure tests

### 8.1 HCC-A pressure

Pass 1 does not formalize the full HCC chain.

It asks whether the generic device can represent this minimum source obligation:

~~~text
same structure
   |
   +--> evidence-preserving path
   |
   +--> prior-conditioned path
            |
            v
       local compilation/state
            |
            v
       observable Behavior
~~~

Required abstraction pressure:

- one observation may feed two parallel local transforms;
- source structure must remain separately witnessable after interpretation;
- local mutable state must not alter Lace;
- behavior may affect future Reality/input without direct Lace mutation.

If the generic tuple cannot express that, it is too small.

### 8.2 Coffee Cup pressure

Minimum obligation:

~~~text
Conditions -> Release -> Trajectory -> Impact -> Aftermath -> later Conditions
~~~

with a shrinking intervention set during Trajectory.

Required abstraction pressure:

- device must carry stage/local state;
- device may need explicit external time/context;
- Impact witness must stay pointable after Aftermath changes local/future state;
- index order alone may not be silently treated as elapsed time.

If \(\Gamma\) is removed and Cup time must be fabricated from Lace, the tuple is too small.

### 8.3 Water pressure

Minimum obligation:

- pointability gate;
- separate inventories;
- OBS / DELTA / UNK / INVALID distinction;
- River location;
- S0-S4 progression;
- routing functions F1-F5.

Required abstraction pressure:

- witness map must support pointability without equating OBS with Lace POINTER;
- missing evidence must be representable explicitly;
- two-holder/local inventories may coexist while referencing the same Lace;
- device outputs may request a better anchor without writing Lace.

If the abstraction requires OBS to become a Core row or Lace POINTER, it fails.

---

## 9. Stale Shadow quarantine

Pass 1 must produce a small classification table for every old equation/definition it wants to reuse from \`docs/clock/system-mathematical-model.md\`.

At minimum inspect:

- HCC state tuple;
- HCC parallel RIC/PFC;
- HCC S0-S7 cycle;
- Cup stage chain;
- Cup shrinking window;
- Water FSM;
- Water F1-F5 operations;
- co-presence/product state;
- old Hands/Core sections concerning POINTER/emission.

Expected treatment:

~~~text
behavioral notation may survive
stale Core premises may not
cross-source folds remain hypotheses
~~~

Any reused equation without classification fails Pass 1.

---

## 10. Field-deletion audit

For candidate tuple:

\[
(Q,\Theta,\Omega,\Gamma,\delta,\lambda,\omega,\alpha,\mathcal F)
\]

run:

| Delete | Question |
|---|---|
| Q | can HCC/Cup/Water preserve required local state? |
| Theta | can source parameter variation be represented without hard-coding it into transition law? |
| Omega | can the device still be said to see Lace at all? |
| Gamma | can Cup time/HCC Reality/external context stay honest? |
| delta | can staged/stateful source mechanisms exist? |
| lambda | can observable output be separated from state? |
| omega | can claims remain pointable? |
| alpha | can external behavior/request be distinguished from mere description? |
| F | can source fidelity be falsified rather than narrated? |

A field survives only if at least one source mechanism or Lace fence needs it.

---

## 11. Pass-1 falsifiers

### F1 — second Lace

Device state, witness store, graph, ledger, sample table, or frontier becomes authoritative history.

### F2 — hidden write

Any device transition directly mutates/appends Lace.

### F3 — RM-A smuggling

A behavioral output becomes a universal retention trigger.

### F4 — source flattening

The generic tuple is only capable of the thin Pass-3 assays and cannot preserve source-defined mechanisms.

### F5 — source fusion

One device architecture is inferred because all three sources fit the tuple.

A common mathematical interface is not a common state machine.

### F6 — HCC evidence loss

Prior-conditioned interpretation destroys separate pointability of the evidence path.

### F7 — Cup time fabrication

Lace index difference is treated as physical/social time without source or product authority.

### F8 — Cup impact rewrite

Aftermath alters the retained witness used as Impact.

### F9 — Water pointer false friend

OBS addressability is equated with Lace POINTER.

### F10 — Water local inventory becomes Core

Party-specific proof state is added to Graphic D.

### F11 — source-open closure

Water pointer format, INVALID matcher, UNK budget, or another explicit source open is silently chosen.

### F12 — stale Core import

Historical Shadow arity/emission language overrides the current mathematical execution model.

### F13 — witness theater

A device calls a conclusion Lace-grounded while \(\omega\) cannot point to actual retained evidence.

### F14 — external context hidden

A result depends on time/Reality/other-holder input but the model pretends it came from Lace.

### F15 — action equals append

External action/request is silently identified with Arrival or Join.

---

## 12. Execution sequence

~~~text
PRE-FLIGHT
current main + all claims
        |
        v
SOURCE PRESSURE LEDGER
HCC / Cup / Water originals
only mechanisms needed to test abstraction
        |
        v
CURRENT LACE COURT
math-execution-model + manifest + Pass 38
        |
        v
SENSOR BASIS
O1-O8: primitive vs derived classification
        |
        v
GENERIC DEVICE TUPLE
field-deletion audit
        |
        v
WITNESS ALGEBRA
Lace / external / local / unknown
        |
        v
RD-1 NO-WRITE THEOREM
prove or record obstruction
        |
        v
SOURCE PRESSURE TESTS
HCC minimum / Cup minimum / Water minimum
        |
        v
STALE SHADOW QUARANTINE
classify old equations before reuse
        |
        v
FALSIFIER RUN
F1-F15
        |
        v
BOUNDED MODEL UPDATE
only S9 generic read-device section if earned
        |
        v
FINDINGS / INDEX / RELEASE
~~~

No full HCC/Cup/Water device construction occurs in Pass 1.

---

## 13. Primary-model insertion rule

Pass 1 may edit \`docs/math-execution-model.md\` only if all of these hold:

1. minimal tuple survives field-deletion audit;
2. RD-1 no-write theorem survives;
3. witness classes are pointable and do not require a second store;
4. HCC minimum pressure test fits without evidence loss;
5. Cup minimum pressure test fits without time fabrication;
6. Water minimum pressure test fits without POINTER false friend;
7. all source opens remain open;
8. RM-A remains untouched.

The S9 insertion must be explicitly generic.

No S10 HCC, S11 Cup, or S12 Water full formalization in Pass 1.

Those are later-pass candidates.

---

## 14. Pass-1 findings questions

The findings must answer:

1. What is the minimal surviving tuple?
2. Which observation operators are primitive versus derived?
3. Can read-device computation be formally separated from Lace mutation?
4. What forms of witness are required?
5. Which source forced each tuple field to exist?
6. What information must come from outside Lace?
7. Which old Shadow equations remain useful?
8. Which old Shadow equations are stale and quarantined?
9. Did any source force a second authoritative store? Expected answer: no, but test it.
10. Did any source force RM-A? Expected answer: no, but test it.
11. Is the generic device strong enough to justify S9 in the primary model?
12. What exact work remains for Pass 2?

---

## 15. Completion board

| Gate | Required |
|---|---|
| G1 | current main pinned |
| G2 | all claims checked before execution |
| G3 | three originals reread directly |
| G4 | source pressure ledger created |
| G5 | current Lace court reread |
| G6 | O1-O8 primitive/derived audit complete |
| G7 | generic tuple proposed |
| G8 | tuple field-deletion audit complete |
| G9 | witness algebra explicit |
| G10 | RD-1 theorem proved or exact obstruction recorded |
| G11 | HCC minimum pressure test complete |
| G12 | Cup minimum pressure test complete |
| G13 | Water minimum pressure test complete |
| G14 | no source-specific full device smuggled into Pass 1 |
| G15 | stale Shadow classification complete |
| G16 | F1-F15 disposition recorded |
| G17 | RM-A unchanged |
| G18 | no Core row/type/storage promotion |
| G19 | no acceptance/implementation/target movement |
| G20 | S9 added only if gates 7-16 survive |
| G21 | findings indexed |
| G22 | all claims released |

---

## 16. Expected Pass-1 verdicts

Pass 1 should end with independent verdicts.

### Generic abstraction

- DEVICE ALGEBRA SOUND
- DEVICE ALGEBRA SOUND WITH OPENS
- DEVICE ALGEBRA TOO SMALL
- DEVICE ALGEBRA OVERBUILT

### Read/write boundary

- READ-ONLY SEPARATION PROVED
- READ-ONLY SEPARATION CONDITIONAL
- SEPARATION OBSTRUCTED

### Witness model

- WITNESS ALGEBRA SUFFICIENT
- WITNESS ALGEBRA NEEDS EXTERNAL CLASS
- WITNESS MODEL UNDER-SPECIFIED

### Primary-model update

- S9 ADMITTED
- S9 ADMITTED WITH OPENS
- S9 DEFERRED

These verdicts do not say whether HCC, Cup, or Water is "implemented."

---

## 17. Stop

Pass 1 stops after:

- source pressure ledger;
- generic device algebra;
- witness algebra;
- no-write theorem;
- HCC/Cup/Water minimum pressure tests;
- stale-Shadow classification;
- falsifier board;
- optional bounded S9 insertion;
- findings/index/release.

It does not automatically:

- formalize full HCC-A device;
- formalize full Coffee Cup device;
- formalize full Water device;
- compose the three;
- update global ASCII;
- edit law;
- solve RM-A;
- accept pointer emission;
- create implementation;
- open Pass 2.

The exact Pass-1 question is:

> **Can one minimal, pointable, read-only mathematical device look into Lace deeply enough to host all three behavioral source families without becoming a second Lace or gaining write authority?**
