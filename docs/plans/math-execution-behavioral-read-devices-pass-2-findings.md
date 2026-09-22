# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 2 findings

**Status:** EXECUTED 2026-09-21.
**Campaign:** Mathematical Execution Model — Behavioral Read Devices.
**Pass:** 2 — MAP WHAT THE EYE CAN SEE.
**Plan:** [math-execution-behavioral-read-devices-pass-2-plan.md](math-execution-behavioral-read-devices-pass-2-plan.md).
**Pre-plan sit:** [math-execution-behavioral-read-devices-pass-2-sit.md](math-execution-behavioral-read-devices-pass-2-sit.md).
**Execution claim:** 0f81a798f773d5b97c8860d10f17e0649e632168.
**Observability map:** ccee46bfb63174e7bcfe2c897eaa434a271d5df1.
**Composition map:** 28aef6c5230429aed1f267060c9d6709d8408cc5.
**Primary-model S10:** 986606f4456313519c3b16601b847468c593a3bc.
**Implementation:** none.
**Core change:** none.
**RM-A:** unchanged / MISSING-A.
**Pointer acceptance:** absent.
**Target:** TARGET UNDECIDED.
**Full source-specific devices:** not created.

---

## 1. Direct answer

Yes.

Before building any source-specific behavioral device, the project can now state mathematically:

- what a device may identify from Lace alone;
- what requires external context;
- what requires holder-local state;
- what requires another holder;
- what is counterfactual/model-dependent;
- what remains source-open or evidentially unknown.

The central theorem is:

\[
\boxed{
\exists X,X':
\pi_L(X)=\pi_L(X')
\land
z(X)\neq z(X')
\Rightarrow
z\text{ is not Lace-identifiable}.
}
\]

All three conceptual descriptive references supply source-faithful counterexamples.

---

## 2. Observability taxonomy result

Pass 2 admitted six analytical stamps:

\[
SEE\!-\!L,\;
SEE\!-\!G,\;
SEE\!-\!Q,\;
SEE\!-\!H,\;
SEE\!-\!CF,\;
SEE\!-\!U.
\]

They mean:

- **SEE-L** — Lace alone is sufficient;
- **SEE-G** — external/context is required;
- **SEE-Q** — holder/device-local state is required;
- **SEE-H** — multi-holder relation/acknowledgement is required;
- **SEE-CF** — counterfactual/model assumptions are required;
- **SEE-U** — unresolved/source-open/missing-evidence dependent.

They are multi-label analytical stamps.

They are not runtime types or storage schema.

**Verdict: OBSERVABILITY MAP SOUND WITH OPENS.**

---

## 3. OBS-1 proof result

OBS-1 was proved by the fiber argument:

If two admissible worlds share the same Lace prefix but disagree on \(z\), no Lace-only total function can identify \(z\) across that admissible domain.

The important work was not the elementary proof.

It was showing that each source itself permits the required same-Lace variation.

---

## 4. HCC-A non-identifiability witness

The source says:
- the same architecture exists in every holder;
- differences lie in parameters;
- RIC and PFC receive the same signals in parallel;
- PFC uses priors/templates;
- priority, pruning, arbitration, meaning style, emotion handling and identity mode vary;
- Story/Meaning/Emotion/Identity are local;
- Behavior is the directly observable output;
- only structure crosses holders; Emotion is not transmissible.

Therefore two admissible HCC holders can receive the same structural evidence and still differ in:
- Story update;
- Meaning;
- Emotion;
- Identity;
- Behavior.

So those local states are not functions of Lace alone.

### Important HCC conclusion

A future HCC device may use Lace as a pointable structural basis.

It may not call another holder's internal Meaning/Emotion/Identity a Lace-derived fact without additional evidence/model assumptions.

**HCC OBS-1: PASS.**

---

## 5. Coffee Cup non-identifiability witnesses

### 5.1 Intervention window

The source says Trajectory is time-dependent and intervention changes from trivial to costly to partial to impossible.

Two worlds can therefore share the same retained event history while differing in:
- current relevant time;
- physical proximity/capability;
- social cost;
- still-available interventions.

Thus the control window differs while Lace is the same.

It is not Lace-identifiable.

### 5.2 Aftermath

The source says after the same Impact:
- stories form;
- meaning is assigned;
- lessons are drawn;
- identities adjust;
- future thresholds change.

Therefore the same Impact evidence can coexist with different Aftermath states.

Aftermath is not a function of Impact/Lace history alone.

### Coffee Cup conclusion

A future Cup device needs explicit:
- time/context provenance;
- intervention/model assumptions;
- local/system aftermath state.

**Cup OBS-1: PASS.**

---

## 6. Water non-identifiability witnesses

The source explicitly permits:
- my OBS inventory;
- your OBS inventory;
- separate inventories that need not match;
- DELTA only after pairing;
- UNK as missing required evidence;
- shared pointability/acknowledgement for crossing;
- live pressure as a River condition.

Two worlds can share the same Lace transcript/evidence while differing in:
- which holder has acknowledged an anchor;
- which context a holder has;
- which UNKs remain;
- current pressure/location.

Therefore DELTA/crossing/comprehension state may differ with the same Lace.

### Water conclusion

Lace can be a common anchor field.

It cannot by itself certify:
- sharedness;
- inventory equality;
- no unresolved UNK;
- crossing readiness;
- pressure state.

**Water OBS-1: PASS.**

---

## 7. HCC descriptive architecture result

Pass 2 preserves five HCC layers:

1. **component architecture** — R/I/RIC/PFC/C/L/M/E/ISL/B;
2. **S0–S7 runtime flow**;
3. **parameter family**;
4. **Six-Act diagnostic overlay**;
5. **YAML/config/trace representation**.

The minimum later device shape is therefore:

\[
\text{parallel RIC/PFC fork}
+
\text{recurrent compiler}
+
\text{parameter family}
+
\text{diagnostic overlay}
+
\text{representation layer}.
\]

The Six-Act stack is not silently equated with the S0–S7 runtime loop.

The YAML is not silently equated with internal storage.

**HCC composition: MAPPED WITHOUT LAYER COLLAPSE.**

---

## 8. Coffee Cup descriptive architecture result

A pure one-hot stage variable is insufficient because the source defines planning as holding all five causal positions at once.

Pass 2 therefore admits a candidate later-device **causal tableau** shape:

\[
\mathcal C(e,t)
=
(C_e,R_e,T_e(t),I_e,A_e(t)).
\]

The coordinates are heterogeneous:

- Conditions: enabling field;
- Release: initiating boundary;
- Trajectory: time/control/counterfactual interval;
- Impact: realized outcome + witness;
- Aftermath: later-state transform.

This is a device lift, not a source-supplied equation.

Unknown/future coordinates may remain unresolved.

The tableau must not hallucinate future Impact in order to "hold all five."

**Coffee Cup composition: MAPPED WITHOUT ONE-HOT COLLAPSE.**

---

## 9. Water descriptive architecture result

The source itself describes:

\[
\mathcal W
=
(\mathcal P,\mathcal R,\mathcal B)
\]

at the architectural grain:

- \(\mathcal P\): Proof Ledger;
- \(\mathcal R\): River Proofing;
- \(\mathcal B\): Delta Bridge.

Pass 2 preserves:
- separate holder OBS inventories;
- Proof Ledger's native OBS/DELTA/UNK/INVALID objects;
- River's native Banks/Rapids/Delta topology;
- Bridge S0–S4;
- F1–F5;
- plain-language shared states;
- Specs-level source-open parameters.

The Bridge translates between the two systems.

It does not replace them.

**Water composition: MAPPED WITHOUT SYSTEM FUSION.**

---

## 10. Diagnostic/readout versus transition result

S9 does not need a new generic output field.

A pure description can be represented as:

\[
\Delta(q,o,g)=(q,y).
\]

So:
- HCC diagnostics;
- Cup strategic tableau;
- Water location diagnosis

can return output without forcing state mutation.

**Verdict: S9 CHASSIS SUFFICIENT WITH SOURCE-SPECIFIC FACTORIZATION.**

No generic tuple amendment was made.

---

## 11. Evidence-preservation result

The planned invariant:

\[
\mathsf{basis}(z)\supseteq\nu_L
\]

was rejected as too strong.

An output need not retain all Lace provenance merely because it uses some of it.

Pass 2 replaces it with EP-1.

### EP-1 — support traceability

If output \(y\) claims a Lace-grounded proposition, then there must exist finite nonempty support:

\[
S_L(y)
\subseteq
\mathsf{LacePart}(\nu)
\]

sufficient to replay/check the stated Lace claim.

Additional dependency must remain separately tagged:

\[
w(y)
=
S_L
\uplus
S_G
\uplus
S_Q
\uplus
S_H
\uplus
S_{CF}
\uplus
S_U.
\]

### HCC strengthening

A future HCC RIC-like path must preserve a replayable structural basis independent of PFC interpretation.

This is stronger than generic EP-1 because the source explicitly requires RIC/PFC coexistence.

**EP-1: ADMITTED.**

---

## 12. Multi-holder discipline

Pass 2 admits a descriptive factorization where needed:

\[
Q
=
Q_{shared}
\times
\prod_{h\in H}Q_h.
\]

All holders may read one common:

\[
L_n.
\]

This does not create multiple authoritative Laces.

A proposition becomes shared only through an explicit source/device rule establishing sharedness.

Consequences:

- one Water OBS with a Lace witness is not automatically shared;
- two holders seeing the same structure do not therefore share HCC Meaning/Emotion/Identity.

---

## 13. Counterfactual discipline

Coffee Cup requires a provenance class for claims about possible intervention.

Pass 2 records the candidate shape:

\[
\mathsf{CFClaim}
=
(X,w_X,\mathcal A,\mathcal M,\varphi).
\]

It must expose:
- historical evidence;
- external/context assumptions;
- intervention/action set;
- model assumptions;
- resulting counterfactual proposition.

A counterfactual is not transformed into an observed Lace fact merely because Lace supplied historical input.

No universal counterfactual engine was selected.

---

## 14. Source-open preservation

Water's explicit source opens remain open:

- OBS pointer format;
- INVALID matcher/pattern list;
- UNK operational rule/budget.

Pass 2 also leaves open:
- HCC hidden-state inference procedure;
- Coffee Cup universal stage detector;
- Coffee Cup intervention model;
- cross-source device coupling.

---

## 15. Cross-source recurrence correction

The old Shadow equivalence:

\[
Aftermath
\equiv
Water\ Rebuild
\equiv
HCC\ ActVI
\]

does not survive current source discipline as state identity.

The shared shape is only:

\[
\mathsf{NextStartEffect}.
\]

Thus:

\[
\boxed{
\text{common recurrence form}
\neq
\text{common state identity}.
}
\]

The same applies to:
- HCC PFC versus Cup Conditions;
- Water Delta versus Lace topology.

No H×C×W runtime was created.

---

## 16. Falsifier board

| Falsifier | Result |
|---|---|
| F1 Lace omniscience | HELD |
| F2 HCC mind reading | HELD |
| F3 HCC layer collapse | HELD |
| F4 HCC evidence/interpretation fusion | HELD |
| F5 Cup one-hot collapse | HELD |
| F6 Cup time from index | HELD |
| F7 Cup counterfactual laundering | HELD |
| F8 Cup Impact = latest row | HELD |
| F9 Water system fusion | HELD |
| F10 Water inventory fusion | HELD |
| F11 Water pointer false friend | HELD |
| F12 Water source-open closure | HELD |
| F13 shared-FSM overreach | HELD |
| F14 recurrence identity | HELD |
| F15 observability stamps become storage schema | HELD |
| F16 tuple growth by aesthetics | HELD |
| F17 diagnostic forced to mutate | HELD |
| F18 other-holder state hidden in G | HELD |
| F19 unknown disappears | HELD |
| F20 RM-A reappears | HELD |

**20/20 falsifiers held.**

---

## 17. Primary-model result

Pass 2 earned bounded **S10 — Observability, non-identifiability, and descriptive composition** in:

\`docs/math-execution-model.md\`.

S10 records:
- SEE-* stamps;
- Lace-identifiability definition;
- OBS-1 theorem;
- source-backed OBS-1 witnesses;
- provenance separation;
- EP-1;
- multi-holder discipline;
- counterfactual provenance;
- diagnostic identity-transition rule;
- abstract HCC/Cup/Water descriptive shapes;
- recurrence-form/non-identity rule.

S10 does **not** define full source-specific devices.

No global ASCII update was required.

---

## 18. Pass-2 verdicts

### Observability court

**OBSERVABILITY MAP SOUND WITH OPENS.**

### Non-identifiability

**OBS-1 PROVED WITH SOURCE WITNESSES.**

### S9 sufficiency

**S9 CHASSIS SUFFICIENT WITH SOURCE-SPECIFIC FACTORIZATION.**

### Descriptive composition

**SOURCE ARCHITECTURES MAPPED WITHOUT FUSION.**

### Primary-model update

**S10 ADMITTED WITH OPENS.**

---

## 19. Completion board

| Gate | Result |
|---|---|
| G1 current main/claims pinned | PASS |
| G2 originals reread directly | PASS |
| G3 S9 reread | PASS |
| G4 HCC descriptive-layer census | PASS |
| G5 Cup causal-role census | PASS |
| G6 Water two-system/interface census | PASS |
| G7 SEE-* classes tested/refined | PASS |
| G8 important source variables observability-signed | PASS |
| G9 OBS-1 theorem rigorous | PASS |
| G10 HCC same-Lace counterexample | PASS |
| G11 Cup same-Lace counterexample | PASS |
| G12 Water same-Lace counterexample | PASS |
| G13 HCC architecture mapped without collapse | PASS |
| G14 Cup simultaneous causal shape | PASS |
| G15 Water dual-system+bridge | PASS |
| G16 diagnostic-vs-transition test | PASS |
| G17 evidence-preservation invariant | PASS — refined to EP-1 |
| G18 multi-holder discipline | PASS |
| G19 counterfactual provenance | PASS |
| G20 source-open parameters remain open | PASS |
| G21 Pass-4 cross-source hypothesis discipline preserved | PASS |
| G22 F1–F20 | PASS — 20/20 held |
| G23 no full source-specific device | PASS |
| G24 no Core/RM-A/acceptance/target movement | PASS |
| G25 S10 only after court survived | PASS |
| G26 findings indexed | FINAL INDEX STEP |
| G27 all claims released | FINAL RELEASE STEP |

---

## 20. What Pass 2 actually bought

Pass 1 gave behavioral mathematics an eye.

Pass 2 gave that eye an epistemology.

The project can now distinguish:

\[
\text{Lace-grounded}
\]

from:

\[
\text{known from Lace}.
\]

Those are not the same claim.

That distinction prevents:
- mind-reading from structure;
- time from index;
- counterfactuals from history;
- sharedness from common access;
- diagnostic models from becoming source truth;
- behavioral importance from becoming retention authority.

The descriptive references can now become mathematical devices without being flattened into Lace or into each other.

---

## 21. Next work

Pass 2 does not automatically open Pass 3.

The source-specific device questions are now much sharper.

Possible next work must choose a bounded source/device target rather than jumping directly to H×C×W composition.

Pass 2 stops here.
