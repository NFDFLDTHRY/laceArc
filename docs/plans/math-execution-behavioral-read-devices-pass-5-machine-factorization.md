# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 5 machine factorization

**Status:** EXECUTED PASS-5 ARTIFACT.
**Campaign:** Behavioral Read Devices.
**Pass:** 5 — BUILD THE READER, NOT THE STRAND.
**Source atlas:** [Pass-5 source machine atlas](math-execution-behavioral-read-devices-pass-5-source-machine-atlas.md).
**Outer device law:** current S9.
**Implementation:** none.
**Core:** unchanged.

---

## 0. Result first

The fixed common chassis hypothesis does **not** survive.

The no-generic-factorization hypothesis also does **not** survive.

The court finds:

\[
\boxed{
\text{S9 remains the minimal outer device algebra}
}
\]

and:

\[
\boxed{
\text{a COMMON OPTIONAL OPERATOR LIBRARY survives inside } \Omega/\Delta.
}
\]

The library is compositional rather than mandatory.

A lawful device may use none, some, or all of its operators according to its behavioral source.

---

# 1. Outer type remains unchanged

Current S9:

\[
\mathcal D_\theta
=
(Q,G,\Omega,\Delta,\omega).
\]

At step \(t\):

\[
o_t
=
\Omega_\theta(L_{n_t},q_t,g_t),
\]

\[
(q_{t+1},y_t)
=
\Delta_\theta(q_t,o_t,g_t),
\]

\[
w_t
=
\omega_\theta(y_t,o_t,g_t).
\]

Pass 5 found no source-backed reason to enlarge this tuple.

The research machinery factors the internals of \(\Omega\) and \(\Delta\).

---

# 2. Why the fixed chassis fails

Candidate fixed chassis from planning:

~~~text
observe
  -> generate/branch
  -> hold
  -> verify
  -> expand/backtrack
  -> resolve
  -> update
  -> witness
~~~

This fails minimality.

### Counterexample 1 — Coffee Cup description

A Coffee Cup device can lawfully:
- read an event;
- return the five-role causal tableau;
- emit no candidate search at all.

So branch/search/resolution are not universally required.

### Counterexample 2 — Water pointability

A pointability check can:
- inspect a supplied support reference;
- classify it as pointable/unpointable;
- request the missing evidence shape.

No branch tree is required.

### Counterexample 3 — HCC base revolution

The HCC source already specifies a recurrent parallel processing architecture.

A basic revolution does not require a generic best-of-N search or Kauffman-style state tree.

Therefore:

\[
\boxed{
\text{FIXED COMMON CHASSIS = REFUTED}.
}
\]

---

# 3. Field-deletion court

Planning candidates:

\[
\Gamma,\ \mathcal C,\ \Psi,\ \mathcal V,\ \tau,\ \rho,\ U.
\]

Plus informal roles OBSERVE, HOLD, OUTPUT, WITNESS.

## 3.1 OBSERVE / STRUCTURE

Delete as a new generic operator.

Why:
- S9 already has \(\Omega\);
- source-specific structured representations may factor \(\Omega\);
- AgentScope ReAG/ISR is one source-domain construction, not a universal device stage.

**Disposition:** **REDUNDANT GENERIC FIELD / SOURCE-SPECIFIC FACTORIZATION OF \(\Omega\).**

## 3.2 \(\Gamma\) — candidate generation / branch

Some sources require or support it:
- Kauffman state branching;
- Xiao–Zhu candidate generation;
- Rowlands create;
- some HCC interpretation cases may use it;
- Coffee Cup counterfactual analysis may use it.

But a lawful device need not generate alternatives.

Define optional:

\[
\Gamma:
X\to\mathcal P_f(H),
\]

where \(X\) is source-specific input state and \(H\) is a source-specific hypothesis/candidate domain.

**Disposition:** **GENERIC-OPTIONAL OPERATOR.**

## 3.3 \(\mathcal C\) — candidate pool

A candidate collection is not an operator or new outer device field.

It is finite device-local working data:

\[
\mathcal C\in\mathcal P_f(\mathsf{Cand}).
\]

It may live:
- ephemerally inside one \(\Delta\);
- in \(Q\) if the source requires candidates to survive device steps.

It is never Lace.

**Disposition:** **GENERIC DATA SHAPE, NOT FIELD/STAGE.**

## 3.4 HOLD

No separate mathematical function is needed.

Holding alternatives means:

\[
|\mathcal C|>1
\]

is permitted across checks instead of forcing immediate \(\rho\).

AgentScope provides direct source precedent for retaining candidates with evidence before decisive selection.

**Disposition:** **REDUNDANT AS OPERATOR; ADMITTED AS CONTROL PROPERTY.**

## 3.5 \(\mathcal V\) — check / constrain

Define an optional source-specific checker:

\[
\mathcal V:
\mathsf{Cand}\times X
\to
\mathsf{Judgment}.
\]

A judgment may contain:
- symbolic pass/fail;
- neural/model score;
- invariant violation;
- constraint result;
- source-specific reason;
- provenance.

No universal judgment type is imposed beyond provenance.

**Disposition:** **GENERIC-OPTIONAL OPERATOR.**

## 3.6 \(\Psi\) — candidate-control advance

Search/backtracking needs a transition over working state.

Define optional:

\[
\Psi:
(\mathcal C,s,X)
\mapsto
(\mathcal C',s'),
\]

where \(\Psi\) may:
- expand;
- preserve;
- prune;
- backtrack;
- reorder;
- annotate.

This operator is required only for a device that actually performs iterative candidate search.

**Disposition:** **GENERIC-OPTIONAL OPERATOR.**

## 3.7 \(\tau\) — stop/control

For an inner iterative computation:

\[
\tau:
(\mathcal C,s,X)
\to
\{\mathsf{CONTINUE},\mathsf{STOP}\}.
\]

An explicit termination/control contract is mandatory **if** \(\Psi\) is iterated inside one bounded device computation.

The stop contract may be:
- goal reached;
- no change;
- cycle detected;
- resource/iteration budget;
- external deadline;
- source-specific condition.

It may itself be OPEN where the behavioral source leaves it open.

Outer HCC/Cup/Water recurrence across future world events does not require "halting forever."

**Disposition:** **CONDITIONALLY REQUIRED OPERATOR.**

## 3.8 \(\rho\) — resolve / aggregate

Define optional:

\[
\rho:
(\mathcal C,X)
\to
D,
\]

where \(D\) is source-specific:
- one candidate;
- a set of surviving candidates;
- an aggregate;
- \(\mathsf{UNRESOLVED}\);
- no result.

Kauffman has mathematical aggregation.
Xiao–Zhu has selection/ensemble/rerank.
AgentScope has decisive attribution.

These do not supply one universal resolver semantics.

**Disposition:** **GENERIC-OPTIONAL OPERATOR.**

## 3.9 \(U\) — local update/output

Delete as a new generic field.

S9 already has:

\[
\Delta:
Q\times O\times G
\to
Q\times Y.
\]

A source-specific device may factor \(\Delta=U\circ\rho\circ\cdots\).

No new generic outer operator is required.

**Disposition:** **REDUNDANT GENERIC FIELD; SOURCE-SPECIFIC FACTORIZATION OF \(\Delta\).**

## 3.10 OUTPUT

Already \(Y\) / \(\Delta\).

**Disposition:** **REDUNDANT.**

## 3.11 WITNESS

Already \(\omega\), refined by S10 EP-1.

**Disposition:** **REDUNDANT GENERIC FIELD.**

---

# 4. Surviving optional operator library

Define the reusable local machine library:

\[
\boxed{
\mathfrak M
=
\{
\mathsf{Par},
\Gamma,
\mathcal V,
\Psi,
\tau,
\rho
\}.
}
\]

None is a Core morphism.

None is mandatory in every device.

## 4.1 \(\mathsf{Par}\) — parallel semantic composition

For functions sharing compatible input:

\[
\mathsf{Par}(f_1,\ldots,f_m)(x)
=
(f_1(x),\ldots,f_m(x)).
\]

This is semantic parallel composition.

It does not require physical concurrency.

Petersen–Zech gives a direct construction of parallel neural-network realizations; LaceArc adopts only the generic mathematical product/composition idea.

HCC RIC/PFC uses this operator structurally.

## 4.2 \(\Gamma\) — finite candidate generation

\[
\Gamma(x)
\in
\mathcal P_f(H).
\]

Generated objects are hypotheses/actions/paths, not observations.

## 4.3 \(\mathcal V\) — source-specific judgment

\[
\mathcal V(c,x)=j.
\]

The meaning of \(j\) is source-specific.

## 4.4 \(\Psi\) — working-frontier transition

\[
\Psi(\mathcal C,s,x)
=
(\mathcal C',s').
\]

Optional search/controller.

## 4.5 \(\tau\) — bounded control

Required for a bounded inner iteration.

## 4.6 \(\rho\) — resolution/aggregation

May select, aggregate, preserve unresolved set, or refuse.

---

# 5. Candidate type and evidence separation

A generic candidate is:

\[
c=(h,\lambda,\nu_c),
\]

where:
- \(h\) is the candidate payload/hypothesis/action/path;
- \(\lambda\) is device-local status/judgment metadata;
- \(\nu_c\) is provenance describing **how the candidate was generated/checked**, not automatically evidence for \(h\).

A generated candidate may begin with:

\[
S_L(c)=\varnothing.
\]

That is legal.

It simply means the candidate is not a Lace-grounded fact.

Thus:

\[
\boxed{
\text{Candidate}\neq\text{Evidence}.
}
\]

This is **MC-2 ADMITTED**.

---

# 6. Judgment type

A checker output is modeled as:

\[
j=
(v_j,\nu_j,\epsilon_j),
\]

where:
- \(v_j\) is the judgment/score/label;
- \(\nu_j\) is the checker provenance;
- \(\epsilon_j\) records known/declared error status, confidence semantics, or OPEN if none exists.

For symbolic exact checks \(\epsilon_j\) may indicate exactness at the declared domain.

For neural/LLM/model checks it must not silently become exact.

Xiao–Zhu explicitly warns that bad verifiers can prune good reasoning and preserve bad reasoning.
AgentScope uses LLM-guided neural invariants and empirically imperfect diagnosis.

Therefore:

\[
\boxed{
\text{VerifierScore}\neq\text{Truth}.
}
\]

This is **MC-3 ADMITTED**.

---

# 7. Learned-state authority fence

A model may compute:
- vectors;
- hidden states;
- scores;
- labels;
- representations.

None becomes structural fact by execution location or model confidence.

\[
\boxed{
\text{LearnedState}\not\Rightarrow\text{LaceFact}.
}
\]

S10 evidence stamps remain attached according to provenance.

**MC-4 ADMITTED.**

---

# 8. Explicit stopping law

Any finite inner loop:

\[
(\mathcal C_0,s_0)
\xrightarrow{\Psi}
(\mathcal C_1,s_1)
\xrightarrow{\Psi}
\cdots
\]

must define a \(\tau\) or an equivalent source-specific termination contract.

\[
\boxed{
\text{InnerIteration}
\Rightarrow
\text{ExplicitControl}.
}
\]

This is **MC-5 ADMITTED CONDITIONALLY.**

Rowlands gives direct stopping examples.
Xiao–Zhu gives resource/search-cost pressure.

No universal budget number follows.

---

# 9. Detect versus resolve

If a behavioral source or chosen algorithm requires competing hypotheses to remain visible:

\[
\boxed{
\mathsf{Detect}\neq\mathsf{Resolve}.
}
\]

AgentScope directly demonstrates this architecture by retaining multiple candidate failures before decisive attribution.

HCC may also require parallel competing interpretations.

Coffee Cup requires simultaneous causal roles, but those roles are not candidate hypotheses by default.

Water may have unresolved/awaiting evidence without requiring candidate resolution.

**MC-6 ADMITTED AS A CONDITIONAL CONTROL LAW.**

---

# 10. Representation-loss declaration

Any derived structured representation \(R_d\) used by a device must declare:

\[
\mathsf{Preserve}(R_d)
\]

and:

\[
\mathsf{Drop}(R_d).
\]

A claim requiring a dropped distinction is invalid.

This is required by:
- Pass-4 PATH-1;
- Pass-4 VIEW-1;
- Kauffman's diagram/shadow information distinction;
- AgentScope's explicit structured abstraction motivation.

\[
\boxed{
\text{Representation use}
\Rightarrow
\text{loss contract}.
}
\]

**MC-7 ADMITTED.**

---

# 11. Behavioral kernel dominance

Generic operators may not decide source semantics.

Formally, if behavioral source \(B\) supplies admissibility/transition relation:

\[
\mathcal R_B,
\]

then machine operators may compute candidates/checks but cannot replace it with an unrelated convenience relation:

\[
\boxed{
\mathfrak M
\not\Rightarrow
\mathcal R_B.
}
\]

Examples:
- no invented HCC priority semantics;
- no invented Cup utility function;
- no invented Water sharedness rule.

**MC-8 ADMITTED.**

---

# 12. Local update fence

Any machine-local update remains:

\[
(q',y)=\Delta(q,o,g).
\]

It may not alter the Lace component.

This is already RD-1.

Pass 5 does not mint a duplicate theorem.

**MC-9: ABSORBED BY S9/RD-1.**

---

# 13. Witness continuity through pruning/resolution

If output \(y\) depends on:
- source observation \(o\);
- candidate \(c\);
- checker judgment \(j\);
- model/counterfactual assumption \(m\);

then \(\omega(y)\) must retain enough provenance to identify the support classes actually used.

For a Lace-grounded claim, EP-1 remains mandatory.

For an inferred/selected result, the witness must not erase:
- that it was generated;
- what checked it;
- which assumptions influenced resolution.

Candidate pruning may discard working candidates, but it may not retroactively turn the survivor into observation.

\[
\boxed{
\mathsf{Resolve}
\text{ preserves support provenance of the resolved claim}.
}
\]

**MC-10 ADMITTED as an EP-1 refinement.**

---

# 14. MC-1 closure

A finite composition of device-local functions whose Lace component is identity remains identity on Lace.

That is a direct corollary of RD-1/type separation.

**MC-1: PROVED BUT REDUNDANT; cite RD-1 rather than duplicate it.**

---

# 15. Operator capability classes

This is not target selection.

| Operator | Minimal capability kind |
|---|---|
| \(\mathsf{Par}\) | structured/parallelizable pure compute; physical concurrency optional |
| \(\Gamma\) | deterministic or model-based generation |
| \(\mathcal V\) | exact symbolic check or fallible model/neural judgment |
| \(\Psi\) | bounded working-state/search control |
| \(\tau\) | deterministic control over stop/budget/external condition |
| \(\rho\) | deterministic/model-based aggregation/selection |
| S9 \(\Omega\) | lawful Lace reads + host/external input |
| S9 \(\Delta\) | local state transition/output |
| S9 \(\omega\) | provenance/witness construction |

Possible realization later:
- CPU/Wasm;
- host code;
- LLM/model;
- WebNN;
- WebGPU/WGSL for suitable bounded subcomputations.

Pass 5 chooses none.

---

# 16. Hypothesis verdicts

## Hypothesis A — fixed common chassis

**REFUTED.**

It overfits the research shelf and forces search onto devices that do not require it.

## Hypothesis B — compositional operator library

**SURVIVES.**

\[
\mathfrak M
=
\{\mathsf{Par},\Gamma,\mathcal V,\Psi,\tau,\rho\}
\]

is a lawful optional library under S9/S10.

## Hypothesis C — no useful generic factorization

**REFUTED in strong form.**

S9 remains minimal, but useful reusable local operators do survive.

---

# 17. Factorization verdict

\[
\boxed{
\text{COMMON OPERATOR LIBRARY SOUND}
}
\]

\[
\boxed{
\text{S9 OUTER DEVICE ALGEBRA REMAINS MINIMAL}
}
\]

\[
\boxed{
\text{FIXED COMMON CHASSIS UNSOUND}
}
\]

A compact S12 is therefore eligible **only after** the three behavioral blueprints and assays demonstrate that the library is useful without distorting their source kernels.
