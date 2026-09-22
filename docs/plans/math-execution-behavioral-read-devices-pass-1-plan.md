# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 1 PLAN

**Status:** PLAN — NOT EXECUTED.
**Object:** prepare a source-first update of \`docs/math-execution-model.md\`.
**Human direction:** examine HCC-A, The Coffee Cup, and Where the Water Is Loud as **mathematical devices that see into Lace**: their behavioral-goal mechanisms become mathematical observers/transducers over Lace-derived structure rather than literal holder machinery or automatic Core components.
**Planning base:** \`f8441ec53d1eb88c8d874028ff5bc6d893b23d15\`.
**Planning station:** maps · ChatGPT.
**Implementation:** none.
**Core change:** none.
**RM-A:** unchanged / MISSING-A.
**Pointer acceptance:** absent.
**Compilation target:** TARGET UNDECIDED.
**This plan does not execute the model update.**

---

## 0. Why this pass exists

The current repository has three important layers that are not yet expressed as one mathematical object:

1. **Lace execution mathematics** already formalizes the authoritative append-only strand, WORD/POINTER, RootTouch, binary Join, finite grounding, derived position×scale sampling, and disposable star/search reads.
2. **Behavioral-goal sources** define explicit desired-behavior mechanisms:
   - HCC-A: dual input processing, compiler/ledger/meaning/emotion/identity/behavior feedback;
   - Coffee Cup: conditions → release → trajectory → impact → aftermath, including a shrinking intervention window and recurrence;
   - Water / Dual Proofing: Proof Ledger + River topology + Delta Bridge FSM/functions.
3. Existing Shadow mathematics already contains useful candidate formalizations of those sources, but its Hands/Core section is historically stale relative to the current execution model. It must not be copied back into Core as authority.

The missing mathematical object is therefore not another holder machine.

It is a family of **read devices** whose source-defined behavior is stated mathematically while their relationship to Lace is explicit and fenced.

The intended direction is:

~~~
                     authoritative Lace prefix L_n
                                |
                                | read only
                                v
                   +---------------------------+
                   | mathematical read device  |
                   | source-defined behavior   |
                   +-------------+-------------+
                                 |
                    local state / transitions
                                 |
                                 v
                       observable device output
                                 |
                    action / request / diagnosis
                                 |
                                 X
                       no direct Lace write
~~~

A device may eventually influence Reality or future arrivals through behavior, but:

~~~
device output != POINTER emission
device state  != Lace state
device read   != second store
device goal   != Core law
~~~

---

## 1. Authority and source order

Execution must read in this order.

### Lace court

1. canonical Graphics A–D;
2. \`docs/systems-manifest.md\`;
3. current \`docs/math-execution-model.md\`;
4. current sampling/search reconciliation and Pass-38 domain/carrier/working-set envelope.

These define what Lace is and what mathematical reads already exist.

### Behavioral source court

Originals, not their historical gear interpretation:

- \`Human Cognitive Compiler Architecture.txt\` — SHA-256 \`209c8f259225a4899b3736837919447381e94352a67d7f915eb95c36db90f3f9\`;
- \`The Coffee Cup (1).txt\` — SHA-256 \`7bc4fd8d5df1ff58c75609e50bda6376216e5520fc2594d20b26a7a1c52c2cd4\`;
- \`Where the Water Is Loud.txt\` — SHA-256 \`9b7eddd593765fb370ffd90020e9995fd30a96ce261cb9c5140ec3e14f97ff65\`.

Repo source maps may be used as locators/analysis:

- Pass-4 HCC-A mechanism map;
- Pass-4 Coffee Cup mechanism map;
- Pass-4 Water mechanism map;
- Pass-4 cross-source crosswalk.

### Historical/candidate mathematics

\`docs/clock/system-mathematical-model.md\` may be mined for notation and candidate equations, **not for current Core premises**.

It contains historical Core claims now superseded by the current execution model, including older arity/emission language.

Rule:

~~~
current math-execution-model Lace algebra wins
original behavioral source wins on its behavioral mechanism
old Shadow algebra is candidate notation only
~~~

---

## 2. Mathematical object to be created

The first task is to define a generic Lace-seeing mathematical device.

Candidate formal signature:

\[
\mathcal{D}
=
(Q,\Theta,\Omega,\delta,\lambda,\omega,\alpha,\mathcal{F})
\]

where:

- \(Q\) = device-local state space;
- \(\Theta\) = fixed or slowly changing holder/device parameters;
- \(\Omega\) = read map from a named Lace prefix/read surface into device observations;
- \(\delta\) = local transition map;
- \(\lambda\) = observable output map;
- \(\omega\) = witness/pointability map back to Lace positions or explicit LOCAL/UNK status;
- \(\alpha\) = optional action/request output;
- \(\mathcal{F}\) = invariants + falsifiers defining faithful source behavior.

The intended execution shape is:

\[
o_t = \Omega_{\mathcal D}(L_{n_t}, c_t)
\]

\[
q_{t+1}
=
\delta_{\mathcal D}
(q_t,o_t,u_t;\Theta)
\]

\[
y_t
=
\lambda_{\mathcal D}
(q_{t+1},o_t)
\]

with witness:

\[
\omega_{\mathcal D}(y_t)
\subseteq
\{0,\ldots,n_t-1\}
\cup
\{\mathrm{LOCAL},\mathrm{UNK}\}.
\]

Here \(c_t\) may name a bounded read context such as an anchor, sample scale, search frontier, or externally supplied time/context.

The exact signature is provisional until execution proves the fields are all necessary.

---

## 3. What “see into Lace” must mean mathematically

A device may use only already-lawful mathematical readings of Lace.

Candidate sensor basis:

### O1 — point read

One retained position and its immutable row.

### O2 — finite-set read

A finite named set of earlier positions.

### O3 — prefix scan

Sequential observation of \(L[0:n)\).

### O4 — root/star reading

Current root, occurrences, RootTouch participation and derived star formation.

### O5 — reach / witness path

Backward recursive participation through retained POINTER topology.

### O6 — position×scale sample read

Current derived \(\mathcal S[n,t]\) surface or a bounded local cone.

### O7 — explicit search frontier

Current layered lexical / pattern / POINTER / neighboring-star read with witness paths.

### O8 — projection

Read-only \(\pi(L)\) when a source behavior genuinely needs a view rather than the retained representation.

These are mathematical observation surfaces.

They do **not** create a new Core read API by documentation alone.

---

## 4. Device laws

Every admitted behavioral mathematical device must satisfy the following before source-specific equations are added.

### D-L1 — read-only Lace boundary

\[
\Omega_{\mathcal D}: L_n \rightarrow O_{\mathcal D}
\]

has no write-back morphism into \(L\).

### D-L2 — local state is not authority

\(Q\) may be mutable, lossy, probabilistic, parameterized or reconstructible as the source requires.

It is not Graphic-D history.

### D-L3 — pointability

Whenever a device claims that an output is grounded in Lace structure, \(\omega(y)\) must expose finite pointable witnesses or explicitly say why the output is local/derived/unknown.

No invisible “because the model saw it.”

### D-L4 — prefix honesty

A device result from prefix \(L_n\) may not cite a future Lace position \(i\ge n\).

### D-L5 — behavioral output is not emission

\[
\alpha_{\mathcal D}(y)
\nRightarrow
\mathsf{Join}
\]

unless a separately accepted Lace retention/materialization contract supplies the lawful write.

This prevents behavioral importance, meaning, pressure, impact, OBS, or identity from silently solving RM-A.

### D-L6 — feedback goes around Lace, not backward through it

A source may require:

~~~
device output -> external behavior/world -> later new input
~~~

It may not require:

~~~
device output -> rewrite prior Lace
~~~

### D-L7 — source mechanisms survive abstraction

Turning a source into a mathematical device must preserve the source's actual state distinctions, transitions, invariants and causal structure.

The pass may not reduce the originals back down to the thin Pass-3 assays.

---

## 5. HCC-A device lift

Execution should attempt a device family \(\mathcal D_H\).

### Source obligations to preserve

At minimum:

- Reality / Interface boundary;
- same structural input enters RIC and PFC in parallel;
- RIC preserves external structure;
- PFC applies priors/templates;
- both affect compilation;
- mutable Story/Meaning/Emotion/Identity state is holder-local;
- Behavior is the direct observable output;
- Behavior changes later Reality/input;
- parameter variation changes outcomes without deleting the architecture;
- only structure crosses holders; meaning/emotion remain local.

### Candidate Lace lift

Do **not** claim HCC says “RIC reads Lace.”

Instead test this implementation hypothesis:

\[
r_t = \Omega_H(L_{n_t},c_t)
\]

\[
p_t = P_H(r_t,q_t;\Theta_H)
\]

where the same Lace-grounded structural observation \(r_t\) is available both as preserved evidence and as input to prior-conditioned interpretation.

Then a local transition:

\[
q_{t+1}
=
\delta_H(q_t,r_t,p_t)
\]

and behavior:

\[
b_t = \lambda_H(q_{t+1}).
\]

This candidate is faithful only if the evidence-preserving path remains separately pointable after interpretation.

### Critical fence

HCC Story Ledger, Meaning, Emotion, Identity and priors remain \(Q_H\), not rows/types/tables in Lace.

---

## 6. Coffee Cup device lift

Execution should attempt a causal-position device \(\mathcal D_C\).

### Source obligations to preserve

- Conditions make the outcome possible but do not cause it;
- Release initiates motion;
- Trajectory is a live intervention interval;
- intervention options shrink with time;
- Impact is resolved ground truth;
- Aftermath changes later conditions;
- all five causal positions may need to be held simultaneously;
- acting under uncertainty is distinct from pretending certainty;
- the model is structural, not a blame machine.

### Candidate state

\[
q_C
=
(\chi, W_{\mathrm{traj}}, A_{\mathrm{after}})
\]

with stage:

\[
\chi \in
\{\mathrm{Cond},\mathrm{Release},\mathrm{Trajectory},\mathrm{Impact},\mathrm{Aftermath}\}.
\]

The trajectory window may remain:

\[
W_{\mathrm{traj}}(t)
\supseteq
W_{\mathrm{traj}}(t')
\quad (t\le t').
\]

### Lace-specific question

What can the device infer from index/order/topology alone, and what requires an external time/context signal?

Do **not** silently equate Lace index distance with elapsed time.

If the source mechanism needs physical or social time not represented in Lace, the mathematical device must name that input explicitly.

### Impact witness

If \(\mathcal D_C\) claims a Lace-grounded impact, \(\omega_C\) must point to the retained evidence used.

Later aftermath state may change \(Q_C\) or later device inputs without rewriting that witness.

---

## 7. Water / Dual Proofing device lift

Execution should attempt \(\mathcal D_W\).

### Source obligations to preserve

- OBS / DELTA / UNK / INVALID have distinct functions;
- pointability is required for OBS;
- separate party inventories may exist;
- DELTA resolution requires pairing/shared footing;
- unresolved required UNK blocks coherent comprehension;
- pressure is not transfer;
- crossing requires Delta conditions;
- Delta Bridge translates River state to Proof-Ledger requirements and back;
- S0–S4 has source-defined conditions/allowed outputs;
- F1–F5 are actual desired-behavior interface functions;
- OBS pointer format, INVALID pattern list and UNK operational budget remain source-open.

### Candidate Lace witness lift

A candidate OBS may cite Lace without becoming a Lace POINTER:

\[
\mathrm{OBS}
=
(\text{holder claim},\, \omega_W)
\]

where:

\[
\omega_W
\subseteq
\mathrm{Index}(L_n)
\]

or explicit external pointability metadata.

Hard fence:

\[
\mathrm{OBS\ pointerability}
\neq
\mathrm{Lace\ POINTER}.
\]

### Device state

Potential state components:

\[
q_W =
(Q_{\mathrm{FSM}},
O_A,
O_B,
\Delta,
U)
\]

with:

\[
Q_{\mathrm{FSM}}
=
\{S0,S1,S2,S3,S4\}.
\]

These are holder/device state, not a second Lace.

### Functions

\[
\mathsf{Locate},\;
\mathsf{Anchor},\;
\mathsf{Pair},\;
\mathsf{Unknowns},\;
\mathsf{Reject}
\]

should be specified as mathematical device operations with pointability/refusal obligations.

None receives automatic Core append authority.

---

## 8. Cross-device composition

The three device families may observe the same Lace prefix:

\[
L_n
\longrightarrow
\begin{cases}
\mathcal D_H\\
\mathcal D_C\\
\mathcal D_W
\end{cases}
\]

but their local state spaces remain distinct unless a cross-source relation is independently justified.

The Pass-4 crosswalk remains the constraint:

- compatibility may be used as a Lab hypothesis;
- source-defined within-document relations may be formalized directly;
- cross-document couplings remain hypotheses;
- false friends stay forbidden.

Candidate product state:

\[
Q_{\times}
=
Q_H \times Q_C \times Q_W
\]

is allowed only as a mathematical co-presence construction.

It must not be described as a source-defined combined runtime.

---

## 9. Behavioral goals as device tests

Each source mechanism should become one or more mathematical obligations over device traces.

Form:

\[
\forall \tau \in \mathsf{AdmittedTraces},
\quad
P_i(\tau)
\]

or a falsifier:

\[
\exists \tau :
P_i(\tau)\text{ fails}
\Rightarrow
\mathcal D\text{ does not realize mechanism }i.
\]

Examples to develop during execution:

- HCC parallel-evidence preservation;
- HCC local-meaning non-transfer;
- Cup stage non-collapse;
- Cup monotone shrinking intervention set;
- Cup impact immutability under aftermath;
- Water no-OBS-without-pointability;
- Water pressure \(\neq\) transfer;
- Water UNK blocking rule at its stated source strength;
- Water S0–S4 allowed-output constraints.

Pass-3 assays may become bounded test vectors for these device laws, but they cannot replace the source-defined mechanism.

---

## 10. Intended update to \`docs/math-execution-model.md\`

The primary model should be extended, not replaced.

Proposed insertion after current S8:

### S9 — Mathematical devices that see into Lace

- generic device tuple;
- read boundary;
- witness map;
- no-write theorem/fence;
- feedback-via-future-arrival distinction.

### S10 — HCC-A read device

- source obligation equations;
- Lace-read candidate lift;
- holder-local state;
- behavior/feedback boundary.

### S11 — Coffee Cup causal device

- staged causal state;
- shrinking intervention set;
- time/context input;
- impact witness and aftermath recurrence.

### S12 — Water proof/crossing device

- pointable witness relation;
- separate inventories;
- FSM;
- F1–F5 operations;
- source-open parameters retained.

### S13 — Device composition and behavioral falsifiers

- product/co-presence only;
- cross-source hypothesis stamps;
- device-test ledger;
- RM-A / Core / acceptance fences.

Section numbering may change if execution finds a clearer structure.

---

## 11. What \`docs/clock/system-mathematical-model.md\` contributes

It may contribute candidate notation for:

- HCC dynamical state;
- Cup staged process and shrinking window;
- Water FSM/functions;
- local holder-state fencing.

It must **not** contribute stale Core premises.

Before reusing any equation from it, execution must classify it:

| Class | Meaning |
|---|---|
| SOURCE-FAITHFUL | directly recoverable from one original source |
| DEVICE-LIFT | new project mapping from source mechanism to Lace-reading device |
| HISTORICAL-INTERPRETATION | useful older Shadow formalization, not authority |
| STALE-CORE | contradicts current math-execution-model and must not migrate |
| CROSS-SOURCE-HYPOTHESIS | composition candidate only |

This prevents a useful old equation from dragging an obsolete architecture with it.

---

## 12. Read-device / Core boundary theorem to attempt

Execution should try to prove a generic separation statement.

Candidate:

> If a device's only Lace access is through read maps over an immutable prefix, its internal transition/output state cannot change authoritative Lace truth without a separately admitted append morphism.

Sketch target:

\[
\Omega(L_n) = o
\]

\[
(q,o)\mapsto(q',y)
\]

while:

\[
L_n' = L_n
\]

for the device step alone.

Any later Lace change must enter through the already-governed append path:

\[
L_n
\xrightarrow{\text{separate admitted arrival/retention act}}
L_{n+k}.
\]

If this theorem cannot be stated without smuggling a Core query API or RM-A, stop and record the exact obstruction.

---

## 13. Falsifiers

### F1 — device writes Lace

Any \(\delta\), \(\lambda\), Anchor, Pair, Meaning, Impact, Aftermath or Behavior operation directly appends/rewrites Lace without existing authority.

### F2 — behavioral component becomes row type

RIC/PFC/L/M/E/ISL, causal stages, OBS/DELTA/UNK/INVALID, FSM state, pressure or window becomes Graphic-D row schema.

### F3 — Water pointer false friend

OBS pointability is equated with Lace POINTER.

### F4 — HCC structure/evidence path disappears

Interpretation is produced but the preserved structural witness can no longer be recovered.

### F5 — HCC mutable ledger mutates Lace

Story re-index/delete/suppress is implemented as rewrite of retained Lace.

### F6 — Cup time invented from indices

Elapsed time or shrinking opportunity is inferred from Lace index distance without an admitted timing/context input.

### F7 — impact is overwritten by aftermath

Later state rewrites the grounded event used as impact witness.

### F8 — device output solves RM-A

Importance, meaning, recurrence, pressure, crossability or identity is silently made the universal retention trigger.

### F9 — derived sensor becomes authoritative store

Star table, sample lattice, frontier cache, witness graph or device ledger becomes another Lace.

### F10 — cross-source fusion

HCC/Cup/Water states are fused because the Pass-4 crosswalk says they are compatible.

### F11 — thin assay replaces source mechanism

Pass-3 test behavior is treated as the complete original mechanism.

### F12 — stale Shadow Core imported

Old arity/emission/Core statements from \`system-mathematical-model.md\` override current Lace mathematics.

### F13 — pointability fabricated

A device claims Lace-grounded output but cannot provide \(\omega(y)\) or explicitly classify the claim as local/unknown.

### F14 — behavior output = arrival

Behavior is automatically treated as a WORD/POINTER append rather than an external effect that may generate later input through a separately governed path.

### F15 — source-open parameters silently closed

Water pointer format / INVALID patterns / UNK budget or another explicit source open is chosen by the mathematical model.

---

## 14. Execution phases

### Phase A — source-first mechanism ledger

Re-read all three originals.

For each mechanism record:

- source line/range;
- mathematical state;
- input;
- transformation;
- output;
- transition/order;
- invariant;
- source-open parameter;
- whether Lace can supply a read witness;
- what remains external/local.

No cross-source coupling yet.

### Phase B — generic read-device algebra

Define the minimum \(\mathcal D\) tuple and prove/refute the read-only separation theorem.

### Phase C — HCC device

Formalize source mechanisms against the generic interface.

### Phase D — Coffee Cup device

Formalize stage causality/window/aftermath against the generic interface.

### Phase E — Water device

Formalize pointability, inventories, FSM and F1–F5.

### Phase F — composition

Add only source-supported or explicitly stamped hypothesis couplings.

### Phase G — behavioral-goal theorem/falsifier ledger

Convert source obligations into mathematical trace conditions and bounded test hooks.

### Phase H — update \`docs/math-execution-model.md\`

Integrate the surviving formalism after all source/device falsifiers run.

### Phase I — reconciliation check

Audit:

- \`systems-manifest.md\`;
- Pass-4 source maps/crosswalk;
- Pass-38 envelope;
- current context prompt;
- old system mathematical model;
- global ASCII.

Only update other stations/files if the new primary model makes current active wording false.

---

## 15. Must not happen during execution

- no \`src/\`;
- no Cargo;
- no target selection;
- no carrier/backend selection;
- no encoding selection;
- no RM-A rule;
- no pointer acceptance;
- no new Graphic-D row type;
- no direct holder-state-to-Lace morphism;
- no rewriting the source documents;
- no treating gear/shaft/train interpretation as required runtime machinery;
- no automatic global-ASCII edit before the primary model settles;
- no automatic next pass.

---

## 16. Completion board

| Gate | Required |
|---|---|
| G1 | current main and all claim state pinned |
| G2 | original three behavioral sources reread directly |
| G3 | current math-execution-model reread as Lace court |
| G4 | stale-vs-current split of system-mathematical-model recorded |
| G5 | generic read-device tuple minimized |
| G6 | lawful Lace sensor/read basis enumerated |
| G7 | no-write separation theorem proved or exact obstruction recorded |
| G8 | HCC device maps source mechanisms, not just assays |
| G9 | Coffee Cup device maps five causal stages + window + aftermath |
| G10 | Water device maps Proof Ledger + River + Delta Bridge + S0–S4 + F1–F5 |
| G11 | every Lace-grounded output has witness/pointability semantics |
| G12 | holder-local state stays outside authoritative Lace |
| G13 | cross-source links stamped source/compatible/hypothesis/tension |
| G14 | explicit source opens remain open |
| G15 | RM-A not supplied by behavioral device output |
| G16 | behavior/feedback path does not rewrite Lace |
| G17 | device laws converted into mathematical trace tests/falsifiers |
| G18 | current math-execution-model updated only after source/device audit |
| G19 | old Shadow equations reused only after classification |
| G20 | no Core/acceptance/implementation/target gate movement |
| G21 | all claims released |

---

## 17. Expected useful result

The desired result is not:

> HCC, Coffee Cup and Water are three modules beside Lace.

The desired result is closer to:

~~~
Lace is the immutable structural field.

A behavioral mathematical device can look into that field
through lawful derived reads,
carry its own source-required state,
perform source-required transitions,
and produce observable outputs with pointable witnesses.

Several different devices can look into the same Lace
without becoming Lace
and without forcing each other into one machine.

Their behavior becomes mathematics over Lace,
not extra authority inside Lace.
~~~

That gives the behavioral goals a mathematically executable place in the project while preserving the one-strand court.

---

## 18. Stop

This preparation pass stops after committing this plan and releasing \`maps\`.

Execution begins only when the human says to proceed.
