# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 5 machine assays

**Status:** EXECUTED PASS-5 ARTIFACT.
**Purpose:** hand-computable positive and adversarial traces for the operator library and three source-specific blueprints.
**Code:** none.
**Core:** read-only.

---

# 1. Assay conventions

Let authoritative Lace prefix be:

\[
L_n.
\]

A device step must satisfy RD-1:

\[
L_n'=L_n.
\]

Witness atoms use S9:

- \(\mathsf{Lace}(i)\);
- \(\mathsf{External}(e)\);
- \(\mathsf{Local}(\ell)\);
- \(\mathsf{Unknown}(u)\).

For brevity, all examples use small symbolic values.

---

# 2. HCC positive trace — parallel structure and prior-conditioned interpretation

## 2.1 Shared input

Suppose current Lace contains a pointable event at index \(42\):

\[
e_{42}=(WORD,\text{"door closed"}).
\]

The current Interface signal also confirms the door is closed.

Define structural support:

\[
w_R=\{\mathsf{Lace}(42),\mathsf{External}(\text{sensor-door-closed})\}.
\]

## 2.2 Holder state

Prior/template state contains:

\[
\Pi:
\text{"closed door often means routine end-of-day"}.
\]

## 2.3 Parallel intake

RIC:

\[
RIC(x)=
(\text{"door closed"},w_R).
\]

PFC:

\[
PFC(x,\Pi)=
(\text{"routine ending interpretation"},
\{\mathsf{Local}(\Pi),\mathsf{Lace}(42)\}).
\]

Both are computed from the same intake:

\[
(RIC,PFC)
=
\mathsf{Par}(RIC,PFC)(x).
\]

## 2.4 Compiler

Compiler preserves both distinctions and adds a local ledger item:

\[
\ell=
(
\text{"door closed; likely routine"},
\mathsf{inferred},
w_\ell
).
\]

It does not relabel the raw event as "routine" in Lace.

## 2.5 Meaning / Emotion / Identity

Suppose source-specific policies produce:

\[
M=\text{low-priority/no transition},
\]

\[
E=\text{calm},
\]

\[
I'=\text{identity unchanged}.
\]

Behavior:

\[
B=\mathsf{NOOP}.
\]

## 2.6 Receipt

Lace remains:

\[
L_n'=L_n.
\]

Structural fact:

\[
\text{"door closed"}
\]

is SEE-L/G.

"Routine ending" remains SEE-Q.

**PASS.**

---

# 3. HCC adversarial trace — OBS-1 with identical Lace

Use the exact same:

\[
L_n,\quad e_{42},\quad x.
\]

Create two admissible holder worlds.

## World A

\[
\Pi_A=\text{"closed door = routine"}.
\]

Result:

\[
B_A=\mathsf{NOOP}.
\]

## World B

\[
\Pi_B=\text{"closed door = exclusion/rejection threat"}.
\]

Suppose source-specific policies yield:

\[
M_B=\text{high-priority threat},
\]

\[
E_B=\text{turbulence},
\]

\[
I'_B=\text{self-protective state},
\]

\[
B_B=\text{withdraw / confront}.
\]

Then:

\[
\pi_L(X_A)=\pi_L(X_B)=L_n
\]

while:

\[
B_A\neq B_B.
\]

Thus:

\[
\boxed{
Behavior\notin\mathsf{Func}(L)
}
\]

over these admissible worlds.

This is a concrete OBS-1 witness.

Adversarial failure would be:

> Because Lace says "door closed," the machine knows it means rejection.

The blueprint forbids this.

**PASS.**

---

# 4. Coffee Cup positive trace — same history, different live windows

## 4.1 Shared history

Suppose:
- Release occurred at \(t_R=10\);
- a conflict message was sent;
- no Impact yet in the retained history.

Historical witness:

\[
w_X=\{\mathsf{Lace}(100),\mathsf{Lace}(101)\}.
\]

## 4.2 World Early

External current context:

\[
t=11,
\]

and live affordances include:

\[
\mathcal A_{11}
=
\{\text{clarify},\text{pause},\text{apologize},\text{partial mitigation}\}.
\]

The device returns all five roles:

\[
(C,R,T,I,A)
\]

with:
- Conditions supported;
- Release supported;
- Trajectory live;
- Impact = not-yet-observed;
- Aftermath = not-yet-complete.

Counterfactual:

\[
\varphi_1=
\text{"clarification could still alter the outcome"}
\]

gets:

\[
SEE\!-\!CF
\]

plus \(w_X\), \(\mathcal A_{11}\), and declared model assumptions.

## 4.3 World Late

Same:

\[
L_n.
\]

But external context is:

\[
t=19
\]

with:

\[
\mathcal A_{19}
=
\{\text{partial mitigation}\}.
\]

Thus:

\[
\mathcal A_{19}
\preceq
\mathcal A_{11}.
\]

The machine may produce a narrower intervention description.

It may not infer this narrowing from index distance alone.

### Result

Same history, different current context, different live control window.

This independently exercises OBS-1 / SEE-G.

**PASS.**

---

# 5. Coffee Cup adversarial trace — intervention after Impact

Add pointable Impact:

\[
e_{110}
=
\text{"interface severed / decision completed"}.
\]

Let:

\[
t_I=20,
\quad t_{now}=21.
\]

An inner candidate generator proposes:

\[
a=\text{"clarify before severance"}.
\]

For a **live** intervention request:

\[
\mathsf{LiveActAllowed}(21)=\mathsf{false}.
\]

The device must reject the candidate as a current action.

It may instead emit:

\[
\mathsf{CFAnalysis}
\]

about whether clarification **would have** mattered before Impact, with SEE-CF assumptions.

Forbidden result:

> "We can still intervene in the prior trajectory."

No prior row is rewritten.

**PASS.**

---

# 6. Water positive trace — separate inventories to shared DELTA

Two holders:

\[
H=\{A,B\}.
\]

## 6.1 Holder A OBS

A points to Lace row \(200\):

\[
obs_A=
(\text{"message says 'Tuesday'"},
A,t,c,\{\mathsf{Lace}(200)\}).
\]

Pointable:

\[
\mathsf{Pointable}(obs_A)=true.
\]

## 6.2 Holder B OBS

B points to an external screenshot \(e_B\):

\[
obs_B=
(\text{"calendar says Wednesday"},
B,t,c,\{\mathsf{External}(e_B)\}).
\]

Pointable:

\[
\mathsf{Pointable}(obs_B)=true.
\]

Initially:

\[
obs_A\in O_A,\quad obs_B\in O_B.
\]

No merge occurs.

## 6.3 Shared acknowledgement

Both holders explicitly acknowledge the two records as the objects being compared.

So:

\[
s=\mathsf{Share}(obs_A,obs_B).
\]

## 6.4 Pair

\[
F_3(obs_A,obs_B,s)
\to
\delta.
\]

DELTA:

\[
\delta:
\text{Tuesday}\neq\text{Wednesday}.
\]

Witness preserves both anchors.

## 6.5 UNK

They still lack the timezone that would determine whether both records refer to the same instant.

Define:

\[
u=
(
\eta=\text{"pointable timezone evidence"},
\mathcal R_u=\{\delta\},
w_u,
\mathsf{WAITING}
).
\]

Current law:

\[
u\text{ does not globally block}.
\]

They may work other grounded DELTAs while this evidence is awaited.

When future timezone evidence arrives and matches \(\eta\), it may become a new OBS and help resolve \(\delta\).

**PASS.**

---

# 7. Water adversarial trace — generated plausible claim is not OBS

A language model generates:

\[
h=
\text{"They probably meant Wednesday because that is the normal schedule."}
\]

There is no:
- Lace row;
- external record;
- pointable quote/time anchor

supporting the claim.

So:

\[
w_h=
\{\mathsf{Local}(\text{model inference})\}.
\]

Then:

\[
\mathsf{Pointable}(h,w_h)=false
\]

for OBS purposes.

Therefore:

\[
F_2(h,w_h,A)
\not\to
OBS_A.
\]

Lawful outcomes include:
- local candidate hypothesis;
- request for evidence;
- create UNK evidence shape such as "calendar/schedule record needed."

Forbidden:

\[
\text{model plausibility}
\to
OBS.
\]

**PASS.**

---

# 8. Water adversarial trace — phrase alone is not INVALID

Input:

\[
\phi=\text{"Obviously you ignored me."}
\]

The raw source historically offered "obviously" as INVALID-style input.

Current human law supersedes that lexical gate.

With no later contradiction evidence:

\[
F_5^*(\phi,\ldots)
\to
\mathsf{NO\_INVALID\_VERDICT}.
\]

The system may:
- ask for pointable OBS;
- identify ungrounded interpretation;
- construct a UNK evidence shape.

Only later, if evidence establishes a refutation:

\[
w_{\neg\phi}\neq\varnothing
\]

and:

\[
\mathsf{Refuted}(\phi,w_{\neg\phi})=true,
\]

may:

\[
INVALID(\phi)
\]

be established.

**PASS.**

---

# 9. Generic machine comparison — premature collapse versus preserve/check/resolve

Input problem has two candidate explanations:

\[
c_1,\ c_2.
\]

Neither is observed fact.

## 9.1 Machine A — immediate collapse

Generator:

\[
\Gamma(x)=\{c_1,c_2\}.
\]

A fallible model gives:

\[
score(c_1)=0.7,\quad score(c_2)=0.6.
\]

Machine A immediately sets:

\[
d=c_1.
\]

Problems:
- score provenance may vanish;
- \(c_2\) disappears;
- output can look observed;
- no opportunity to expose checker disagreement.

## 9.2 Machine B — preserve/check/resolve

Generate:

\[
\mathcal C_0=\{c_1,c_2\}.
\]

Checker \(V_1\):

\[
V_1(c_1)=\mathsf{PASS}_{0.7},
\quad
V_1(c_2)=\mathsf{PASS}_{0.6}.
\]

Independent exact constraint \(V_2\) finds:

\[
V_2(c_1)=\mathsf{FAIL}
\]

because \(c_1\) contradicts a pointable timestamp.

For \(c_2\):

\[
V_2(c_2)=\mathsf{UNKNOWN}
\]

because required evidence is absent.

Set explicit two-check stop:

\[
\tau(k)=\mathsf{STOP}\quad\text{at }k=2.
\]

Resolver:

\[
\rho(\mathcal C)
=
\mathsf{UNRESOLVED}\{c_2\}
\]

rather than calling \(c_2\) true.

Witness says:
- \(c_1\) was generated and refuted by pointable constraint;
- \(c_2\) remains generated/unresolved;
- no candidate became observation.

### Assay criterion

The test is not which machine sounds smarter.

Machine B is superior **for the current mathematical requirements** because it preserves:
- provenance;
- competing hypothesis status;
- verifier disagreement;
- explicit stop;
- auditability;
- truth/evidence separation.

This directly exercises MC-2/3/5/6/10.

**PASS.**

---

# 10. Bad-verifier containment

Suppose a neural verifier incorrectly rejects a good candidate \(c_g\).

The system cannot prove \(c_g\) false merely from:

\[
V_{NN}(c_g)=\mathsf{FAIL}.
\]

The rejection may control search under declared policy, but the witness must retain:

\[
\mathsf{Local/ModelJudgment}(V_{NN})
\]

and its error status.

If the application requires no false-pruning guarantee, a fallible neural verifier alone is insufficient.

This is exactly the source failure mode Xiao–Zhu warns about.

**PASS.**

---

# 11. RD-1 receipts

Every assay preserves:

\[
L_n'=L_n
\]

for device-only work.

Any later external behavior that becomes future input must re-enter through existing Lace growth law.

No assay:
- writes Join;
- selects RM-A;
- creates a row type;
- mutates prior history.

**PASS.**

---

# 12. Assay verdict

\[
\boxed{
\text{HCC POSITIVE + OBS-1 ADVERSARIAL PASS}
}
\]

\[
\boxed{
\text{CUP LIVE-WINDOW + POST-IMPACT REFUSAL PASS}
}
\]

\[
\boxed{
\text{WATER SHARED-DELTA + UNPOINTABLE-CANDIDATE + INVALID-CORRECTION PASS}
}
\]

\[
\boxed{
\text{OPERATOR LIBRARY PRESERVES PROVENANCE UNDER HAND TESTS}
}
\]

The assays earn a compact S12 provided final falsifier review finds no contradiction.
