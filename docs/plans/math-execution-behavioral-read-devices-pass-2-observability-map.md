# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 2 observability map

**Status:** EXECUTED PASS-2 ARTIFACT.
**Campaign:** Mathematical Execution Model — Behavioral Read Devices.
**Pass:** 2 — MAP WHAT THE EYE CAN SEE.
**Execution base:** 0f81a798f773d5b97c8860d10f17e0649e632168.
**Sources:** the three supplied conceptual descriptive originals, reread directly; current \`docs/math-execution-model.md\` S1–S9 is the Lace court.
**Purpose:** classify what source-defined quantities may honestly be identified from Lace, what needs external/context, local holder state, multi-holder state, counterfactual assumptions, or remains unresolved.
**Not:** a source-specific device implementation; not a Core schema; not RM-A.

---

## 0. Two questions kept separate

Pass 2 separates:

1. **Where does a source variable live / who owns it?**
2. **What information is sufficient to identify its value?**

A holder-local variable can carry a Lace-grounded witness without becoming Lace.

Likewise, a variable can be externally observable without being derivable from Lace.

The SEE-* stamps below classify **information provenance / identifiability**, not storage ownership.

---

## 1. Observability stamps

Let \(\Sigma_{\mathrm{see}}\) be the set:

\[
\Sigma_{\mathrm{see}}
=
\{
L,G,Q,H,CF,U
\}.
\]

### SEE-L — Lace-identifiable

A quantity is SEE-L only when its value can be determined from the named Lace prefix by current lawful mathematical reads, with no extra hidden premise.

Examples:
- row value/kind at a named index;
- retained order;
- root/occurrence structure;
- retained POINTER ancestry;
- current derived sampling/search result when its required inputs are themselves Lace-grounded.

### SEE-G — external/context required

The quantity depends on information not guaranteed to be in Lace.

Examples:
- current physical/social time;
- physical environment;
- Interface signal not retained;
- current conversational pressure;
- available intervention capability.

### SEE-Q — holder/device-local state required

The quantity depends on internal state or interpretation belonging to a holder/device.

Examples:
- HCC Story/Meaning/Emotion/Identity;
- local aftermath narrative;
- local Proof Ledger inventory.

### SEE-H — multi-holder relation required

The quantity depends on distinct holders or explicit pairing/acknowledgement.

Examples:
- DELTA across OBS inventories;
- shared-footing acknowledgement;
- claim that two parties point to the same object.

### SEE-CF — counterfactual/model-dependent

The quantity is about possible alternatives/actions/outcomes rather than only observed history.

Examples:
- Coffee Cup intervention window;
- “what could still be altered”;
- socially costly but available intervention.

### SEE-U — unresolved / source-open / missing

Either:
- required evidence is missing; or
- the source itself leaves the operating rule open.

Examples:
- Water OBS pointer format;
- Water INVALID matcher;
- Water UNK operational budget.

### Multi-label rule

A quantity may require several classes:

\[
\sigma(z)
\subseteq
\Sigma_{\mathrm{see}}.
\]

A SEE-L label is strong:

\[
SEE\!-\!L
\Rightarrow
\text{Lace alone is sufficient for the stated value}.
\]

If any of \(G,Q,H,CF,U\) is required, the quantity is **not Lace-identifiable without that additional information**.

---

## 2. Lace-identifiability definition

Let an admissible descriptive world be:

\[
X=(L_n,q,g,h,m),
\]

where:
- \(L_n\) is the authoritative Lace prefix;
- \(q\) is device/holder-local state;
- \(g\) is external/context state;
- \(h\) denotes multi-holder state/relations;
- \(m\) denotes model/counterfactual assumptions.

A source-defined quantity \(z\) is **Lace-identifiable** on admissible world set \(\mathcal X\) iff there exists a total function \(f\) such that:

\[
\forall X\in\mathcal X:
\quad
z(X)=f(\pi_L(X)).
\]

Equivalently, \(z\) must be constant on every fiber of \(\pi_L\):

\[
\pi_L(X)=\pi_L(X')
\Rightarrow
z(X)=z(X').
\]

---

## 3. OBS-1 — non-identifiability theorem

### Theorem

If:

\[
\exists X,X'\in\mathcal X:
\quad
\pi_L(X)=\pi_L(X')
\]

but:

\[
z(X)\neq z(X'),
\]

then no total function:

\[
f:L_n\mapsto z
\]

can correctly identify \(z\) over \(\mathcal X\).

### Proof

Assume such \(f\) exists.

Because:

\[
\pi_L(X)=\pi_L(X')=L_n,
\]

we must have:

\[
f(L_n)=z(X)
\]

and:

\[
f(L_n)=z(X').
\]

Therefore:

\[
z(X)=z(X'),
\]

contradicting the premise.

So no such Lace-only \(f\) exists. ∎

OBS-1 does not say Lace is useless for \(z\).

It says Lace may be evidence/input without being sufficient to determine \(z\).

---

# PART A — HCC-A

## 4. HCC descriptive-layer census

HCC-A contains multiple descriptive layers. They are not one state machine.

| Layer | Source role | Mathematical kind |
|---|---|---|
| Core ontology | Reality + Interface | environment/input boundary |
| Architecture components | RIC/PFC/C/L/M/E/ISL/B | local causal architecture |
| S0–S7 | recurrent runtime flow | transition ordering |
| Parameter space | templates/priorities/pruning/arbitration/styles | device-family / holder parameters |
| Six-Act stack | reusable questions/process layers | diagnostic/readout overlay |
| YAML schema | per-person/per-event config and trace template | representation/serialization example |

The YAML schema is not evidence that the architecture must literally be stored as YAML or as those fields internally.

---

## 5. HCC variable observability census

Legend:
- **Owner** describes source-locality.
- **Signature** describes information sufficient/required to identify the actual source variable.
- “Lace witness possible” means a later project device may cite Lace for structural evidence; it does not make the source variable SEE-L.

| HCC variable | Source role | Owner | Signature | Lace alone? | Witness / caution |
|---|---|---|---|---|---|
| Reality \(R\) | objective constraint-bearing environment; not directly accessible by mind | external | SEE-G | **NO** | Lace may contain records of Reality, never Reality exhaustively by source claim |
| Interface \(I\) | converts Reality to raw internal signals | holder boundary | SEE-G + SEE-Q | **NO** | biological/perceptual/body state is not guaranteed retained |
| RIC | local evidence-preserving channel over Interface signals | holder-local | SEE-Q + SEE-G; Lace witness possible | **NO as source variable** | later device may feed it Lace-grounded structure, but RIC itself is local processing |
| PFC | prior/template-shaped interpretation of same signals | holder-local | SEE-Q | **NO** | priors/templates are explicitly local parameters |
| Compiler \(C\) | integrates RIC+PFC into ledger update | holder-local process | SEE-Q | **NO** | output depends on both local paths |
| Story Ledger \(L_{story}\) | mutable concrete/abstract/imagined/inferred event state | holder-local | SEE-Q | **NO** | source permits merge/re-index/delete/suppress locally; cannot be inferred from immutable Lace alone |
| Meaning \(M\) | weights + directive transitions | holder-local | SEE-Q | **NO** | internal values/priorities required |
| Emotion \(E\) | meaning-in-flight runtime state | holder-local | SEE-Q | **NO** | source explicitly says emotions are not transmissible |
| ISL | identity synchronization / updated priors | holder-local | SEE-Q | **NO** | depends on local ledger/meaning/emotional patterns |
| Behavior \(B\) | external observable action | externally observable output | SEE-G; may have SEE-L witness if recorded | **NO in general** | source says only directly observable loop component; observation record is not behavior itself |
| Feedback \(B\to R'\) | behavior changes environment/input | external causal loop | SEE-G | **NO** | later Lace may record effects |
| S0 Intake | runtime phase | holder/context | SEE-Q + SEE-G | **NO** | phase inference needs local/process context |
| S1 Coexistence/pruning | RIC+PFC active; early filtering | holder-local | SEE-Q | **NO** | hidden pruning cannot be read from shared structure alone |
| S2 Compilation | C updates ledger | holder-local | SEE-Q | **NO** | local transition |
| S3 Meaning | weighting/transition phase | holder-local | SEE-Q | **NO** | local |
| S4 Emotion runtime | transition-state | holder-local | SEE-Q | **NO** | local/non-transmissible |
| S5 Identity update | local synchronization | holder-local | SEE-Q | **NO** | local |
| S6 Behavior | action phase | local+external output | SEE-Q + SEE-G | **NO from Lace alone** | behavior can be observed externally |
| S7 Feedback | outer-world change | external | SEE-G | **NO** | later structural evidence may be retained |
| PFC template/schema library | parameter | holder-local parameter | SEE-Q | **NO** | source says individuals differ by parameterization |
| Priority stack | conflict ordering | holder-local parameter | SEE-Q | **NO** | may be inferred only under extra model/evidence |
| Pruning strategy | location/degree of data loss | holder-local parameter/process | SEE-Q | **NO** | output absence does not uniquely identify pruning site |
| RIC/PFC arbitration mode | conflict-resolution style | holder-local parameter | SEE-Q | **NO** | same evidence can produce different outcomes by source |
| Meaning style | descriptive/evaluative/directive | holder-local parameter | SEE-Q | **NO** | classification may be diagnostic/model-based |
| Emotion handling style | decision/rewrite/reweight/ignore mixture | holder-local parameter | SEE-Q | **NO** | not directly transmissible |
| Identity mode | coherent/fragmented/scripted/aesthetic/sovereign | holder-local parameter | SEE-Q | **NO** | local model classification |
| Act I output | perceived scene/stakes/roles | diagnostic readout of local processing | SEE-Q + SEE-G | **NO** | distinguish from raw structure |
| Act II output | story update description | diagnostic readout | SEE-Q | **NO** | not S2 itself |
| Act III output | meaning/emotion description | diagnostic readout | SEE-Q | **NO** | not direct shared fact |
| Act IV output | identity effect | diagnostic readout | SEE-Q | **NO** | local |
| Act V output | behavioral choice/perceived constraints | diagnostic readout + behavior | SEE-Q + SEE-G | **NO** | external behavior may be witnessed |
| Act VI output | world/template update | diagnostic readout | SEE-Q + SEE-G | **NO** | does not equal S7 by identity |
| YAML person_model | source-proposed representation | representation | SEE-U relative to implementation | n/a | example/config surface, not causal state |
| YAML event_trace | source-proposed representation | representation | SEE-U relative to implementation | n/a | trace schema, not proof of internal storage |

---

## 6. HCC OBS-1 source witness

Construct two admissible HCC worlds with the same structural/Lace evidence.

Let:

\[
\pi_L(X)=\pi_L(X')=L_n.
\]

The source explicitly allows the same architecture with different parameter settings.

Choose:
- \(X\): RIC-dominant arbitration; priority stack favors truth/coherence.
- \(X'\): PFC- or identity-dominant arbitration; priority stack favors identity/coherence of prior narrative.

Feed the same underlying structured signal to both RIC and PFC as the source requires.

Then the source permits different:
- Story updates;
- Meaning weights/transitions;
- Emotion trajectories;
- Identity updates;
- Behavior.

Therefore for any such differing local variable \(z\):

\[
z(X)\neq z(X')
\]

while Lace is the same.

By OBS-1:

\[
z\not=f(L_n)
\]

for all admissible HCC holders.

### HCC consequence

The source's statement that only structure crosses minds and emotion is not transmissible is mathematically consistent with OBS-1.

A future HCC device may **model/infer** another holder's local state only under explicit assumptions and witness strength.

It may not label that inference SEE-L.

---

# PART B — THE COFFEE CUP

## 7. Coffee Cup descriptive-layer census

The source has three distinct descriptive layers:

| Layer | Role |
|---|---|
| five causal roles | Conditions / Release / Trajectory / Impact / Aftermath |
| attention-collapse diagnostic | where the observer habitually fixates |
| strategic literacy | ability to hold all five causal roles simultaneously while time remains |

The strategic-literacy layer is an explicit falsifier against reducing the model to one active label.

---

## 8. Coffee Cup variable observability census

| Cup quantity | Source role | Signature | Lace alone? | Witness / caution |
|---|---|---|---|---|
| Conditions | enabling field, not cause | SEE-L + SEE-G + sometimes SEE-Q/H | **NO in general** | some conditions may be retained; gravity, power, fatigue, unspoken expectations may not be |
| Release | initiating event/boundary | SEE-L and/or SEE-G | **CONDITIONAL** | Lace can identify a retained release witness only if event is recorded/ruled; source role still requires causal classification |
| Trajectory existence | interval after initiation before impact | SEE-L + SEE-G | **NO in general** | needs event boundary/context |
| elapsed/relevant time | shrinking-window coordinate | SEE-G | **NO** | index distance is not elapsed time |
| visible signals | evidence available during trajectory | SEE-L and/or SEE-G | **CONDITIONAL** | source asks what was visible at the time, not merely what was later recorded |
| uncertainty | observer knowledge state | SEE-Q + SEE-G | **NO** | source says action can be needed before certainty |
| intervention set \(\mathcal A_t\) | what could still alter/mitigate outcome | SEE-G + SEE-CF | **NO** | requires action capabilities/model, not historical sequence alone |
| social cost of intervention | constraint on practical action | SEE-G + SEE-CF + possibly SEE-H | **NO** | not implicit in Lace |
| Trajectory control window | time-varying still-possible intervention surface | SEE-G + SEE-CF; Lace may supply history | **NO** | counterfactual/control quantity |
| Impact | resolved outcome / ground truth | SEE-L and/or SEE-G | **CONDITIONAL** | must be witnessed by actual outcome evidence, not "latest row" |
| Aftermath story/meaning | later narrative/lesson/identity effects | SEE-Q + SEE-G | **NO** | local/system behavior state |
| future release thresholds | aftermath effect on later conditions | SEE-Q + SEE-G + SEE-CF | **NO** | may be measured later; cannot be assumed from history alone |
| recurrence | later conditions shaped by aftermath | SEE-L + SEE-G + SEE-Q | **NO in general** | requires cross-round comparison/context |
| attention-collapse position | diagnostic about observer's habitual fixation | SEE-Q | **NO** | self/observer model, not event fact |
| strategic literacy | capacity to hold all five roles at once | SEE-Q | **NO** | device/holder capability |
| five-role tableau for event | descriptive product | mixed SEE-L/G/Q/CF/U | **NO as a whole** | each coordinate has different evidentiary basis |

---

## 9. Coffee Cup OBS-1 source witnesses

### 9.1 Same Lace, different intervention window

Take the same retained event history \(L_n\) up to an observed trajectory point.

World \(X\):
- current time is early;
- agent is physically close;
- intervention is cheap and available.

World \(X'\):
- more relevant time has elapsed outside recorded Lace, or agent is constrained/distant;
- only partial/no intervention remains.

The source explicitly says the intervention window narrows with time and can move from trivial to costly to partial to none.

So:

\[
W_{\mathrm{traj}}(X)\neq W_{\mathrm{traj}}(X')
\]

with the same \(L_n\).

By OBS-1:

\[
W_{\mathrm{traj}}
\]

is not Lace-identifiable.

### 9.2 Same Impact, different Aftermath

Hold the same actual Impact evidence fixed.

The source explicitly permits different stories, meaning, lessons and identity adjustments after the event.

Therefore:

\[
Aftermath(X)\neq Aftermath(X')
\]

may hold with the same Impact/Lace witness.

Aftermath is not determined by Impact history alone.

### 9.3 Consequence

A future Cup device must distinguish:

\[
\text{historical evidence}
\]

from:

\[
\text{counterfactual/control model}
\]

and:

\[
\text{local/system aftermath}.
\]

---

# PART C — WATER / DUAL PROOFING

## 10. Water source-layer census

The source contains several layers that must remain distinct.

| Layer | Source role |
|---|---|
| Story | narrative demonstration of breakdown/repair |
| Plain-language Proof Ledger | pointability/computation model |
| Plain-language River | pressure/topology model |
| Plain-language interface | four sayable shared states + repair sentence |
| Specs System A | OBS/DELTA/UNK/INVALID formal-ish proofing ontology |
| Specs System B | Banks/Rapids/Delta regions + invariants/failures |
| Structural isomorphism | compatibility mapping, not object identity |
| Delta Bridge | interop translation |
| Shared S0–S4 | bridge-recognized interface state machine |
| F1–F5 | interface functions |
| source-open parameters | explicit remaining design degrees |

Important source nuance:

- the middle layer says four simple sayable states;
- Specs define S0–S4 including Bank Rebuild.

These are related surfaces, not permission to erase one in favor of the other.

---

## 11. Water variable observability census

| Water quantity | Native system | Signature | Lace alone? | Pointability / caution |
|---|---|---|---|---|
| OBS content | Proof Ledger / holder-indexed | SEE-L and/or SEE-G + SEE-Q ownership | **CONDITIONAL** | must be pointable; interpretive intent without anchor is anti-property |
| OBS pointer/address format | Proof Ledger parameter | SEE-U | **NO RULE YET** | source explicitly leaves format open |
| holder inventory \(O_h\) | Proof Ledger | SEE-Q + SEE-H when comparing holders | **NO** | each party may have own OBS |
| DELTA | Proof Ledger relation between OBS inventories | SEE-H + pointable witnesses; may use SEE-L/G | **NO from Lace alone** | minimum two OBS nodes / pairing |
| UNK | Proof Ledger missing dependency | SEE-Q + SEE-H/G + SEE-U when evidence absent | **NO** | must name what would become OBS / what DELTAs it would resolve |
| INVALID classification | Proof Ledger | SEE-Q/G + SEE-U | **NO general rule yet** | source leaves rigorous pattern list open |
| UNK operating rule/budget | Proof Ledger parameter | SEE-U | **NO RULE YET** | explicit source open |
| Bank A / B | River | SEE-H + SEE-G/Q | **NO** | separate positions normal |
| Rapids / pressure | River | SEE-G + SEE-Q/H | **NO** | live pressure/urgency/emotion not equivalent to retained structure |
| River Delta / crossing possibility | River | SEE-H + SEE-G + pointable shared basis | **NO** | requires shared footing |
| shared pointable anchor | Bridge condition | SEE-H + (SEE-L and/or SEE-G) | **NO from Lace alone** | another party must acknowledge addressability at S2 |
| middle-layer "opposite banks" | interface readout | SEE-H + SEE-Q/G | **NO** | diagnostic location |
| middle-layer "rapids" | interface readout | SEE-G + SEE-H/Q | **NO** | diagnostic location |
| middle-layer "at delta" | interface readout | SEE-H + pointable evidence | **NO** | shared reference condition |
| middle-layer "crossing" | interface readout | SEE-H + Q/G | **NO** | resolving DELTA/UNK |
| S0 Banks | Delta Bridge | SEE-H | **NO** | no shared references |
| S1 Rapids | Delta Bridge | SEE-G + SEE-H + Q | **NO** | urgency/heat + anchors missing |
| S2 Delta setup | Delta Bridge | SEE-H + pointable evidence | **NO** | one party presents pointable element, other acknowledges |
| S3 Crossing | Delta Bridge | SEE-H + Q + pointable DELTA/UNK state | **NO** | DELTA exists + UNKs listed |
| S4 Bank Rebuild | Delta Bridge | SEE-H + Q/G | **NO** | crossing completed / actions can occur |
| Locate() | Bridge operation | depends on SEE-G/Q/H | **NO** | produces routing, not Lace fact |
| Anchor() | Bridge operation | SEE-L and/or SEE-G + SEE-H at sharing boundary | **NO as operation** | pointable thing -> OBS; does not emit Lace POINTER |
| Pair() | Bridge operation | SEE-H | **NO** | two OBS nodes -> DELTA |
| Unknowns() | Bridge operation | SEE-Q/H/G + SEE-U | **NO** | creates explicit missing-evidence requirements |
| Reject() | Bridge operation | SEE-G/Q + SEE-U | **NO general classifier yet** | INVALID matcher remains source-open |
| Proof Ledger progress | System A process | SEE-Q/H + witnesses | **NO** | OBS→DELTA→UNK-resolution |
| River progress | System B process | SEE-G/H/Q | **NO** | rapids→delta→crossing |
| interface translation | Delta Bridge | SEE-Q/H/G | **NO** | maps requirements/readouts, not state identity |

---

## 12. Water OBS-1 source witnesses

### 12.1 Same Lace, different inventories

Let two worlds share the same recorded conversation prefix \(L_n\).

In \(X\):
- holder A treats row \(i\) as the pointable OBS relevant to the current claim;
- holder B has not acknowledged that object / lacks required context.

In \(X'\):
- holder B has acknowledged the pointable object and supplies its paired OBS.

The source explicitly allows separate OBS inventories and requires pairing/sharedness for DELTA resolution.

Therefore DELTA/crossing state differs despite same Lace.

### 12.2 Same Lace, different UNK

Hold recorded structure fixed.

One holder may possess missing context externally; another may not.

Thus:

\[
UNK(X)\neq UNK(X')
\]

with the same Lace prefix.

### 12.3 Same Lace, different pressure/location

Live urgency/emotional velocity can differ even when the retained transcript/history is identical.

River location may therefore differ under source-permitted contextual variation.

### Water consequence

Lace can be a powerful shared **anchor field**.

It cannot, by itself, certify:
- shared acknowledgement;
- private inventory equality;
- absence of UNK;
- crossing readiness;
- current pressure state.

---

## 13. Cross-source observability matrix

| Quantity family | HCC | Cup | Water | Lace-alone consequence |
|---|---|---|---|---|
| retained structural evidence | can support RIC-like preserved basis | can support event/order/Impact evidence | can support pointable anchors | often SEE-L |
| local interpretation/state | L/M/E/ISL/PFC | aftermath/attention | inventories / proof state | not SEE-L |
| external environment/time | Reality/Interface | time/physical conditions | pressure/context | not SEE-L unless explicitly retained and sufficient |
| multi-holder relation | structure-only communication | social conditions/intervention may involve others | DELTA/shared footing | not SEE-L without pairing/ack |
| counterfactual possibility | not central in source | core to Trajectory | not central to base source | not observed history |
| explicit unknown/open | local uncertainty possible | uncertainty before action | UNK + three source-open parameters | must remain visible |

---

## 14. Observability verdict

### SEE-* result

**OBSERVABILITY MAP SOUND WITH OPENS.**

The six stamps are sufficient for the current source-variable census.

They are not claimed to be the only possible epistemic taxonomy.

### OBS-1 result

**OBS-1 PROVED WITH SOURCE WITNESSES.**

Each original supplies admissible same-Lace variation in at least one central behavioral variable:

- HCC: local parameters/state;
- Cup: control window/aftermath;
- Water: holder inventories/sharedness/UNK/pressure.

### Architectural consequence

\[
\boxed{
\text{Lace can ground behavioral description without being sufficient to determine all behavioral state.}
}
\]

This is the observability boundary required before full source-specific devices are built.
