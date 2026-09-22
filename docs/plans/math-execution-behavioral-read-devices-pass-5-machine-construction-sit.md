# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 5 machine-construction sit

**Status:** PRE-PLAN ANALYSIS.
**Campaign:** Mathematical Execution Model — Behavioral Read Devices.
**Pass:** 5.
**Working name:** **BUILD THE READER, NOT THE STRAND — research machinery as a construction grammar for behavioral devices.**
**Base:** \`2817090782cfd0df46d3dc26b476bfb33eb12e4b\`.
**Planning claim:** \`cdc592ce573ef3bf3dc85d2fe2420ea416087da9\`.
**Direct research sources re-sighted for this sit:** Kauffman, Rowlands, Xiao–Zhu, Petersen–Zech, Bi et al./AGENTSCOPE.
**Primary mathematical target:** \`docs/math-execution-model.md\`, especially S9–S11.
**Behavioral-goal court:** HCC-A, Coffee Cup, Water / Dual Proofing source clipboards.
**Core:** read-only.
**Implementation:** none.
**RM-A / G1 / target / R3 / pointer acceptance:** unchanged.

---

## 0. Why the five research references must be reread differently

The older five-stake court asked:

> May this source machinery enter Graphic D / Core?

For most of the interesting machinery the answer was correctly **no**.

That question is now too small.

Behavioral Read Devices Passes 1–4 have established a lawful mathematical place **above** Lace:

\[
\mathcal D_\theta=(Q,G,\Omega,\Delta,\omega)
\]

where:
- \(L\) remains authoritative Lace;
- \(Q\) may be mutable holder/device-local state;
- \(G\) may contain external/context state;
- \(\Omega\) may read Lace;
- \(\Delta\) may perform local computation and update \(Q\);
- \(\omega\) must preserve witness/provenance;
- RD-1 proves a device-only step leaves Lace unchanged.

Therefore the new question is:

> **What machinery from the five research sources can lawfully factor \(\Omega\), \(\Delta\), search, checking, local state, and witness production so that HCC-A, Coffee Cup, and Water can become actual mathematical devices that see into Lace?**

This is not an attempt to mine the research shelf for RM-A.

It is a machine-construction problem.

---

# PART A — CURRENT MATHEMATICAL SOCKETS

## 1. S9 already gives the outer chassis

The current model has enough type separation to host a machine without changing Core:

\[
o_t=\Omega_\theta(L_{n_t},q_t,g_t)
\]

\[
(q_{t+1},y_t)=\Delta_\theta(q_t,o_t,g_t)
\]

\[
w_t=\omega_\theta(y_t,o_t,g_t).
\]

Pass 5 should not prematurely replace this tuple.

The likely problem is **factorization**:

> What internal machinery belongs inside \(\Omega\) and \(\Delta\)?

A useful source-supported machine may be more detailed than S9 while remaining a factorization of S9 rather than a new authority layer.

---

## 2. S10 gives the epistemic brakes

Every candidate machine must preserve:

\[
SEE\!-\!L,\ SEE\!-\!G,\ SEE\!-\!Q,\ SEE\!-\!H,\ SEE\!-\!CF,\ SEE\!-\!U.
\]

OBS-1 forbids a machine from claiming that holder-local, external, multi-holder, or counterfactual state is derivable from Lace merely because Lace is one input.

EP-1 requires pointable Lace support for Lace-grounded claims.

Therefore any machine architecture that produces:
- a score;
- a candidate;
- a diagnosis;
- an action;
- a learned representation;
- a “meaning”;
- a causal explanation

must keep the provenance class visible.

---

## 3. S11 gives realization planes, not machine semantics

The current technical court permits:
- build/toolchain machinery;
- Wasm execution;
- host/embedder mediation;
- optional GPU/shader compute;
- optional neural inference.

But S11 does not say **what the behavioral machine should compute**.

Pass 5 is therefore upstream of target choice.

A source-supported machine stage may later map to:
- ordinary deterministic compute;
- parallel compute;
- an LLM/neural judge;
- a bounded search controller;
- a host interaction;

without the research source or Pass 5 selecting a concrete runtime.

---

# PART B — FIVE RESEARCH SOURCES AS MACHINE MATERIAL

## 4. AGENTSCOPE — structure, invariant checks, candidate preservation, delayed attribution

Bi et al. supply the cleanest complete **diagnostic machine pattern** in the five-source set.

Source machinery:

1. convert a raw trajectory into a structured ReAG;
2. enrich each step with an ISR:
   - Intent / Context;
   - Reasoning / Action;
   - Signal / Validation;
3. apply failure-mode-specific neural invariants;
4. **retain multiple candidate failures with evidence** rather than immediately selecting one;
5. perform a later decisive-error judgment over the full trajectory;
6. distinguish first anomaly, later manifestation, and decisive outcome-causing failure.

The paper's own architecture therefore separates:

\[
\text{structure}
\to
\text{local checks}
\to
\text{candidate set}
\to
\text{global resolution}.
\]

This is much more useful to the current project than the older five-stake summary “failure taxonomy belongs to the holder.”

### Candidate mapping to S9

- ReAG/ISR-like abstraction -> candidate factor inside \(\Omega\) or \(Q\);
- invariant functions -> candidate verification family inside \(\Delta\);
- failure candidate set -> device-local \(Q\), not Lace;
- decisive judgment -> candidate resolver inside \(\Delta\);
- cited trajectory evidence -> \(\omega\).

### Hard fence

\[
ReAG\neq Lace.
\]

The source's graph and semantic fields may be:
- device-local;
- external-derived;
- reconstructible;
- persistent for the device if the behavioral source requires it;

but never become Graphic-D authority merely because they are structured.

Neural invariants are also not formal Core proofs.

---

## 5. Xiao–Zhu — search, candidate expansion, verification, pruning, budget

The useful machine material is primarily in inference and reasoning search, not token prediction as Core.

The source treats inference as search over possible outputs and later describes inference-time scaling through:
- context scaling;
- search scaling;
- ensembling;
- generation and verification of thinking paths.

For difficult reasoning paths the book explicitly describes:
- intermediate steps;
- trial and error;
- backtracking;
- self-correction;
- candidate expansion;
- pruning by likelihood or step verifier;
- solution-level and step-level verifiers;
- process reward models;
- finite search limits / practical budget;
- the risk that a bad verifier prunes a good path or preserves a bad one.

### Candidate mapping to S9

This gives a candidate control factor:

\[
\Gamma:
(q,o,g)\mapsto\mathcal C
\]

for candidate generation, followed by some verification operator:

\[
\mathcal V:
\mathcal C\mapsto\widehat{\mathcal C},
\]

and a search/control policy that may:
- expand;
- prune;
- backtrack;
- stop;
- select.

This source also gives a direct warning:

\[
\text{verifier output}\neq\text{truth}.
\]

That fits S10's provenance/observability discipline.

### Hard fence

Next-token probability, embeddings, KV cache, Transformer hidden state, and learned scoring do not become Lace structure.

They are candidate implementation machinery for a device.

---

## 6. Petersen–Zech — compositional mathematics, parallel modules, residual/local updates, error discipline

Petersen and Zech provide a different kind of machine material.

They formalize neural networks as parameterized functions and explicitly note that the same realized function need not uniquely identify its architecture/parameters.

The source also develops exact mathematical constructions for:
- composition;
- parallelization;
- linear combinations;
- identity transport;
- residual blocks \(x\mapsto x+\Phi(x)\).

Later chapters force caution through:
- approximation error;
- optimization limitations;
- non-convex loss landscapes;
- lack of unique/best parameterization in general;
- adversarial robustness.

### Candidate mapping to S9

The strongest import is not “use a neural network.”

It is:

\[
\boxed{
\text{device functions can be composed and parallelized while construction remains distinct from realized behavior}.
}
\]

That is useful for:
- HCC RIC/PFC parallel paths;
- independent assay families;
- parallel candidate evaluation;
- local state-update modules.

Residual form is a candidate local-update pattern:

\[
q_{t+1}=q_t+\Phi(\cdots)
\]

only where the behavioral source permits such a state space.

It is **not** a mutation form for Lace.

### Hard fence

Approximation is not possession.

A learned function that approximates a desired behavior does not thereby make its internal representation authoritative evidence.

---

## 7. Kauffman — projection warning, local decomposition, branch trees, invariant-preserving aggregation

Kauffman supplies two distinct machine lessons.

### 7.1 Projection is missing information unless local structure is carried

The early diagram discussion treats a planar knot diagram/shadow as an abstraction from the physical knot. Crossing structure needs extra local over/under information.

This independently reinforces Pass 4:

\[
FlatGraphView\neq FullLaceStructure.
\]

For behavioral devices this means:

> a derived graph is lawful only if it carries enough witness/path/local structure for the claim it is being asked to support.

### 7.2 Local split -> branch family -> terminal states -> aggregate

The bracket/skein material repeatedly:
- chooses a local crossing;
- splits it into alternatives;
- repeats the local decomposition;
- obtains a tree/family of states;
- evaluates terminal states;
- recombines contributions to a global invariant.

The later Skein-Template Algorithm makes this process explicit as an automatic branching procedure.

### Candidate mapping to S9

This is a strong source precedent for a generic pattern:

\[
\text{local unresolved structure}
\to
\text{branch alternatives}
\to
\text{recursive/iterative expansion}
\to
\text{terminal evaluation}
\to
\text{aggregate}.
\]

It supports candidate branching and recombination.

It does **not** say that a behavioral machine should use knot invariants, bracket polynomials, Reidemeister equivalence, or closed-knot state as Lace state.

### Hard fence

Kauffman's state tree is machine-local derived machinery if used at all.

The state tree is not a second Lace.

---

## 8. Rowlands — create/check alternation, iteration versus recursion, stopping and anomaly pressure

Rowlands is the most dangerous source here because its claims range from abstract rewrite-system mechanics to a large speculative foundational physics thesis.

Pass 5 must separate these.

### 8.1 Source machinery that is directly relevant as a computation pattern

The source distinguishes:
- formal rewrite mechanism from one software realization;
- recursion from iteration;
- initial state;
- rules/productions;
- stopping conditions;
- no-change/cycle/iteration-limit halting;
- dynamic or stochastic rule invocation as possible extensions.

The proposed NUCRS uses two operations:
- **create**: introduce a candidate/new symbol;
- **conserve / proofreading**: check its consequences against the existing system and expose anomaly/inconsistency.

The book explicitly describes the two processes as mutually forcing repeated work:
- conserve exposes remaining novelty/anomaly;
- create supplies the next candidate needed to address it.

### 8.2 Candidate mapping to S9

At device level, not Core:

\[
\text{GENERATE}
\leftrightarrow
\text{CHECK}
\]

under a stop/budget policy is a serious candidate control loop.

This overlaps independently with:
- Xiao–Zhu generate/verify/search;
- AGENTSCOPE candidate/check/resolution;
- Kauffman branch/evaluate.

The overlap is more important than Rowlands' specific zero-totality or Dirac claims.

### 8.3 Authority warning

Claims that the NUCRS is a universal machine order code, a semantic foundation for physics, biology, brains, or language remain **Rowlands' proposed theory**.

Pass 5 may use them only as:
- source hypotheses;
- machinery examples;
- falsifier pressure.

They may not become Lace law or established computer-science theorem by citation.

---

# PART C — THE CROSS-SOURCE INTERSECTION

## 9. The five sources do not point to one model class

They do not jointly say:

> build a neural network.

They do not jointly say:

> build a graph.

They do not jointly say:

> build a rewrite system.

They do not jointly say:

> build a knot state sum.

Their overlap is at a more abstract machine level.

A first candidate synthesis is:

~~~text
authoritative Lace + external/local context
                 |
                 v
        OBSERVE / STRUCTURE
                 |
                 v
        GENERATE / BRANCH
                 |
                 v
      PRESERVE CANDIDATE SET
                 |
                 v
        VERIFY / CONSTRAIN
                 |
          +------+------+
          | unresolved  |
          v             |
     EXPAND / RETRY <---+
          |
          | stop / budget / resolved
          v
       RESOLVE / AGGREGATE
                 |
                 v
      UPDATE DEVICE-LOCAL Q
                 |
                 v
        OUTPUT + WITNESS
                 |
                 v
          external world

Lace is unchanged by the device-only path.
~~~

This is **not yet admitted mathematics**.

It is the primary Pass-5 candidate to attack.

---

## 10. Candidate factorization of S9

Do not replace S9's outer tuple unless execution proves a need.

Instead test whether source machinery supports a factorization such as:

\[
o=\Omega(L_n,q,g)
\]

\[
\mathcal C_0=\Gamma(q,o,g)
\]

\[
(\mathcal C_{k+1},s_{k+1})
=
\mathsf{CheckExpand}_{\mathcal V,\tau}
(\mathcal C_k,s_k,o,g)
\]

until stop condition:

\[
\tau(\mathcal C_k,s_k,o,g)=\mathsf{STOP},
\]

then:

\[
d=\rho(\mathcal C_k,o,g),
\]

\[
(q',y)=U(q,d,o,g),
\]

\[
w=\omega(y,o,d,g).
\]

Candidate roles:

- \(\Gamma\): generate/branch;
- \(\mathcal C\): candidate pool/frontier;
- \(\mathcal V\): verifier/invariant family;
- \(\tau\): stop/budget/control policy;
- \(\rho\): resolver/aggregator;
- \(U\): source-specific local update/output.

This may merely be a factorization of \(\Delta\), not a new generic device type.

Pass 5 must perform a **field-deletion/minimality test** before admitting any of these names.

---

# PART D — BEHAVIORAL-GOAL CROSSWALK

## 11. HCC-A pressure

A lawful HCC device must preserve:
- RIC/PFC parallel intake;
- recurrent Compiler;
- mutable holder-local Ledger/Meaning/Emotion/Identity;
- Behavior output and world feedback;
- parameter family;
- Six-Act diagnostic overlay;
- representation layer;
- no transfer of holder Meaning into Lace.

Research-machine fit:

| HCC obligation | Candidate research machinery |
|---|---|
| RIC/PFC parallelism | Petersen–Zech parallel composition |
| structured evidence path | AGENTSCOPE structured abstraction + Kauffman projection warning |
| competing interpretations / arbitration | Xiao search candidates; AgentScope preserve candidates before decisive selection |
| compiler consistency checking | AgentScope invariants; Rowlands create/check analogy |
| recurrent/local update | Petersen–Zech compositional/residual update candidate |
| diagnostic overlay | AgentScope failure-localization pattern |
| witness | S9/S10 remains project authority |

### Important caution

The HCC source already has a specific desired-behavior architecture.

The generic research machine may **realize** that architecture.

It must not flatten HCC into “beam search plus verifier.”

---

## 12. Coffee Cup pressure

Coffee Cup requires:
- five causal roles simultaneously available;
- time/context beyond Lace index;
- a shrinking intervention window;
- Impact as ground truth;
- Aftermath changing future Conditions;
- counterfactual claims to expose intervention/model assumptions.

Research-machine fit:

| Cup obligation | Candidate research machinery |
|---|---|
| simultaneous causal tableau | Petersen–Zech parallel/composed views |
| candidate interventions during C3 | Xiao search/branching |
| counterfactual alternatives | Kauffman branch-family discipline as structural analogy |
| check against constraints | verifier/invariant family |
| do not collapse early | AgentScope candidate preservation |
| stop when window closes / budget exhausted | Xiao search limits + Rowlands stopping semantics |
| aftermath update | source-specific \(U\), possibly residual-like mathematically |

### Important caution

Coffee Cup is causal literacy, not an optimization theorem.

A search machine may enumerate/test interventions only when an explicit objective/model exists.

Pass 5 must not invent “optimal intervention” as a source property.

---

## 13. Water pressure

Water / Dual Proofing requires:
- two separate OBS inventories;
- pointability;
- sharedness only when established;
- DELTA pairing;
- explicit UNK;
- INVALID routing;
- Banks/Rapids/Delta/Crossing location;
- F1–F5 interface;
- source-open UNK halt-vs-budget policy.

Research-machine fit:

| Water obligation | Candidate research machinery |
|---|---|
| structured step/evidence representation | AgentScope ISR/ReAG pattern, without importing the graph as Core |
| pointability/invariant checks | AgentScope invariant family |
| preserve unresolved alternatives | AgentScope candidate set + Water UNK |
| search for missing evidence | Xiao candidate/search machinery |
| stop-vs-budget | Xiao/Rowlands directly pressure Water's source-open parameter |
| paired/local-to-global structure | Kauffman decomposition/aggregation analogy |
| holder-local update/routing | source-specific \(U\) |

### Important caution

Water's own source has an unresolved parameter:

\[
UNK:\ halt\ at\ any\ unknown?
\quad\text{vs}\quad
bounded\ budget?
\]

The research sources can provide machine patterns for either policy.

They cannot decide the behavioral source's missing ruling.

---

# PART E — WHAT APPEARS TO BE NEW

## 14. The research shelf may answer the **machine-construction** gap without answering RM-A

This is the central result of the sit.

Earlier work correctly concluded:

\[
\text{five research sources}
\not\Rightarrow
\text{Core retain-when rule}.
\]

But the new machine question is:

\[
\text{How do we build a stateful read/decision device over }L?
\]

At that layer the five references are no longer merely negative boundary material.

They provide mutually reinforcing machinery for:

1. structured observation;
2. decomposition;
3. candidate generation;
4. candidate preservation;
5. local invariant/verification checks;
6. path expansion/backtracking;
7. bounded stopping;
8. selection/aggregation;
9. compositional local-state update;
10. witness/diagnostic output.

That is enough to justify a full Pass-5 construction court.

It is **not** yet enough to declare one implementation.

---

## 15. A useful three-layer distinction

Pass 5 should keep these separate:

### Behavioral kernel

Defined by HCC / Coffee Cup / Water:
- what variables/relations matter;
- what counts as a valid transition;
- what output behavior is desired;
- what remains source-open.

### Machine chassis

Potentially supplied by the research synthesis:
- observe;
- branch;
- hold alternatives;
- verify;
- search/backtrack;
- resolve;
- stop;
- update local state;
- witness.

### Compute realization

Later S11 engineering:
- deterministic code;
- neural model;
- LLM;
- GPU;
- WebNN;
- CPU/Wasm;
- host services.

A research source may contribute to more than one layer, but Pass 5 must never collapse them.

---

# PART F — THE MAIN PASS-5 RISKS

## 16. Falsifiers already visible

### M5-F1 — research source becomes Core

Any candidate machine step writes Lace or supplies RM-A.

### M5-F2 — one source dominates the synthesis

“Use AgentScope” or “use a Transformer” replaces the cross-source court.

### M5-F3 — architecture flattens behavioral source

HCC/Cup/Water is rewritten to fit the generic chassis rather than the chassis being tested against it.

### M5-F4 — graph shadow becomes truth

ReAG/derived graph becomes authoritative Lace or a complete star/threading representation.

### M5-F5 — verifier becomes oracle

An LLM/neural score is stamped truth without S10 provenance/error class.

### M5-F6 — candidate pool becomes evidence

A generated hypothesis is treated as observed support.

### M5-F7 — state tree becomes second Lace

Kauffman-style branches/candidate search are treated as authoritative history.

### M5-F8 — Rowlands thesis imported as law

NUCRS/zero-totality/Dirac/universal-grammar claims are treated as established project mechanics.

### M5-F9 — residual update mutates Lace

Petersen–Zech residual form is applied to the strand rather than local \(Q\).

### M5-F10 — search invents objective

Coffee Cup or HCC is given an “optimal” scalar objective absent from the behavioral source.

### M5-F11 — early collapse

A first plausible candidate is selected before alternatives/invariants have been examined where the source requires ambiguity to remain visible.

### M5-F12 — endless machine

No stop/budget/no-progress/cycle policy is represented.

### M5-F13 — stop policy silently resolves Water

Research-machine convenience chooses halt-vs-budget for UNK without a behavioral ruling.

### M5-F14 — learned representation loses evidence chain

A hidden vector replaces pointable provenance.

### M5-F15 — source machinery mistaken for implementation

A mathematical construction pattern is treated as proof that the browser/device/toolchain can sustain it.

---

# PART G — PASS-5 DIRECTION

## 17. What Pass 5 should actually try to prove

Pass 5 should not ask:

> Which paper has the answer?

It should ask:

> **Is there a minimal source-supported factorization of a behavioral read device that can realize the behavioral mechanisms of HCC-A, Coffee Cup, and Water while preserving RD-1, OBS-1, EP-1, Pass-4 path/projection fidelity, and S11 realization neutrality?**

If yes, then the project will have crossed an important line:

~~~text
behavioral goals
       +
research machinery
       +
current Lace read mathematics
       =
a machine construction grammar
~~~

without pretending that the machine is already implemented.

That is the correct Pass-5 court.
