# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 1 generic device algebra

**Status:** EXECUTED PASS-1 ARTIFACT.
**Execution base:** b1f9e680e3211ad4cf5f462e962dd59fca39b5bc.
**Input:** [Pass-1 source pressure ledger](math-execution-behavioral-read-devices-pass-1-source-pressure.md).
**Role:** define and attack the smallest generic mathematical device that can see Lace without becoming Lace.
**Not:** a Core API, runtime module, holder implementation, RM-A rule, or full HCC/Cup/Water device.

---

## 1. Minimal surviving device family

The preparation candidate was:

\[
(Q,\Theta,\Omega,\Gamma,\delta,\lambda,\omega,\alpha,\mathcal F).
\]

After field-deletion, the surviving runtime abstraction is:

\[
\boxed{
\mathcal D_\theta
=
(Q,\;G,\;\Omega,\;\Delta,\;\omega)
}
\qquad
\theta\in\Theta.
\]

Interpretation:

- \(Q\) — mutable device-local state space;
- \(G\) — explicit external/context input space;
- \(\Omega\) — pure Lace-read map;
- \(\Delta\) — local transition **and typed-output** map;
- \(\omega\) — witness/provenance map for device output;
- \(\theta\) — fixed/slow parameterization selecting a member of the device family, not a mutable runtime field.

The conformance/falsifier set is part of the mathematical specification of the family, not part of runtime device state.

---

## 2. Execution law

At step \(t\), the device sees:

- authoritative Lace prefix \(L_{n_t}\);
- its current local state \(q_t\in Q\);
- explicit non-Lace context \(g_t\in G\).

Read:

\[
o_t
=
\Omega_\theta(L_{n_t},q_t,g_t).
\]

Local transition and output:

\[
(q_{t+1},y_t)
=
\Delta_\theta(q_t,o_t,g_t).
\]

Witness:

\[
w_t
=
\omega_\theta(y_t,o_t,g_t).
\]

The output alphabet \(Y\) is typed rather than split into separate \(\lambda\) and \(\alpha\) functions. A source-specific device may use tags such as:

\[
Y
=
\mathsf{Assertion}
\;\uplus\;
\mathsf{Diagnosis}
\;\uplus\;
\mathsf{Request}
\;\uplus\;
\mathsf{Behavior}
\;\uplus\;
\mathsf{NoOutput}.
\]

These tags are device outputs, not Graphic-D row kinds.

---

## 3. Why the external context space \(G\) is irreducible

A Lace-only device is too small for the source set.

### HCC-A

Reality is objective and constraint-bearing but not directly accessible; Interface converts Reality to internal signals.

Not all Reality is already guaranteed to be in \(L\).

### Coffee Cup

Trajectory explicitly depends on time and live intervention affordances.

Current Lace index order is historical order. It is not automatically elapsed physical/social time or a control-affordance measurement.

### Water

Live pressure/location, another participant's current acknowledgement, and conversational signals can be external to the retained Lace prefix.

Therefore:

\[
G=\{\ast\}
\]

is legal for a source-specific device that needs no external context, but the **generic** family must admit nontrivial \(G\).

Hiding \(G\) inside \(\Omega(L)\) would fabricate Lace-derived facts.

---

## 4. Base Lace read forms

Pass 1 distinguishes **mathematical base reads** from higher derived readings.

This does not add a Core query API.

### R1 — indexed selection

For \(0\le i<n\):

\[
\mathsf{Select}_{L_n}(i)=e_i.
\]

This is a mathematical read of the sequence already defined by the current execution model.

### R2 — ordered prefix fold / scan

For pure accumulator \(f\) and initial state \(s_0\):

\[
\mathsf{Fold}_{L_n}(f,s_0)
=
f(\cdots f(f(s_0,e_0),e_1)\cdots,e_{n-1}).
\]

This captures replay/prefix-scan mathematics without requiring the whole prefix to be simultaneously resident.

### O1–O8 classification

| Planned read | Pass-1 classification | Reason |
|---|---|---|
| O1 point read | **BASE: R1** | direct sequence selection |
| O2 finite-set read | **DERIVED** | finite repeated R1 |
| O3 prefix scan | **BASE: R2** | ordered replay/fold form; operationally distinct access class |
| O4 root/star read | **DERIVED** | R2 + current word-equality/root definitions + retained participation |
| O5 Reach / witness path | **DERIVED** | recursive R1 over POINTER ancestry |
| O6 position×scale sample | **DERIVED** | current sampling function over prefix/root observations |
| O7 search frontier | **DERIVED** | root/star + sampling + Reach/path reads |
| O8 projection | **DERIVED / Contract III** | pure view of retained/derived structure |

Thus the device needs no new authoritative sensor store.

Its Lace-facing observation map may compose existing mathematical reads:

\[
\Omega_\theta
=
F_\theta(\mathsf{Select},\mathsf{Fold},\text{current derived reads}).
\]

---

## 5. Provenance-bearing observations

An observation is not merely a value.

Pass 1 requires a provenance-bearing form:

\[
o=(v,\nu)
\]

where \(v\) is the observed value and \(\nu\) records enough basis to support later witness extraction.

No global provenance table is required.

\(\nu\) may be a finite replayable handle using the current SearchHandle/prefix machinery.

The observation itself remains disposable device state.

---

## 6. Witness algebra

Define witness atoms for prefix \(L_n\):

\[
\mathsf{WAtom}_n
=
\mathsf{Lace}(i)
\uplus
\mathsf{LacePath}(p)
\uplus
\mathsf{External}(e)
\uplus
\mathsf{Local}(\ell)
\uplus
\mathsf{Unknown}(u),
\]

subject to:

\[
\mathsf{Lace}(i)\Rightarrow 0\le i<n,
\]

and every index in a \(\mathsf{LacePath}(p)\) must also be below \(n\).

A witness is a finite set:

\[
w
\in
\mathcal P_f(\mathsf{WAtom}_n).
\]

This permits mixed claims.

Example shape:

\[
\{
\mathsf{LacePath}(p),
\mathsf{External}(\text{clock}),
\mathsf{Local}(\text{interpretation})
\}.
\]

### Semantics

- **Lace(i)** — pointable retained row.
- **LacePath(p)** — pointable retained witness path / replayable structural route.
- **External(e)** — pointable evidence not claimed to be Lace-derived.
- **Local(l)** — device-local result/state; not a shared structural fact.
- **Unknown(u)** — required evidence is absent/unresolved.

A source-specific claim may be invalid unless its witness satisfies additional rules.

Water OBS, for example, cannot be admitted from \(\{\mathsf{Local}(\ell)\}\) alone because its own source requires pointability.

---

## 7. Field-deletion audit

Starting candidate:

\[
(Q,\Theta,\Omega,\Gamma,\delta,\lambda,\omega,\alpha,\mathcal F).
\]

| Candidate field | Delete result | Disposition |
|---|---|---|
| \(Q\) local state | HCC S0–S7/local ledger, Cup stages/aftermath, Water inventories/FSM become impossible | **KEEP** |
| \(\Theta\) runtime field | source parameter variation can instead index a device family \(\mathcal D_\theta\) | **CUT from tuple; KEEP parameter space externally** |
| \(\Omega\) Lace read | device no longer "sees into Lace" | **KEEP** |
| \(\Gamma\) external-context map | the *channel* is required, but a separate map is not; use explicit \(G\) and supplied \(g_t\) | **REPLACE with \(G\)** |
| \(\delta\) state transition | stateful source mechanisms disappear | **KEEP as part of \(\Delta\)** |
| \(\lambda\) output map | output can be returned by the transition codomain | **CUT; fold into \(\Delta\)** |
| \(\omega\) witness map | pointability/provenance becomes narration rather than a checkable obligation | **KEEP** |
| \(\alpha\) action map | action/request can be a typed member of output \(Y\) | **CUT; fold into \(Y\)** |
| \(\mathcal F\) runtime field | falsifiers are conformance law, not runtime state | **CUT from tuple; retain as external specification** |

### Minimality verdict

The surviving tuple:

\[
(Q,G,\Omega,\Delta,\omega)
\]

has no field that can be deleted without failing at least one original-source pressure row or the project's pointability/no-write discipline.

**Verdict: MINIMAL WITH RESPECT TO PASS-1 PRESSURE SET.**

It is not a theorem that no other equivalent formalization exists.

---

## 8. RD-1 — read-device no-write theorem

### Device step

Let authoritative combined analysis state be:

\[
X=(L_n,q).
\]

For fixed \(\theta\) and supplied \(g\), define the **device-only step**:

\[
T_{\theta,g}(L_n,q)
=
(L_n,q',y,w),
\]

where:

\[
o=\Omega_\theta(L_n,q,g),
\]

\[
(q',y)=\Delta_\theta(q,o,g),
\]

\[
w=\omega_\theta(y,o,g).
\]

No codomain above contains a replacement \(L'\).

### Theorem RD-1

For every valid device-only step:

\[
\pi_L(T_{\theta,g}(L_n,q))
=
L_n.
\]

Therefore:

\[
L_n'=L_n.
\]

### Proof

By definition, \(\Omega\) is a pure read over \(L_n\), and \(Q,G,O,Y,W\) are disjoint from authoritative Lace state.

\(\Delta\) maps only to \(Q\times Y\).

\(\omega\) maps only to witness state.

The first component of \(T\) is explicitly the unchanged \(L_n\).

Therefore projection onto the Lace component is identity.

\[
\pi_L\circ T_{\theta,g}
=
\pi_L.
\]

By induction over any finite composition of device-only steps:

\[
\pi_L(T_k\circ\cdots\circ T_1(L_n,q))
=
L_n.
\]

∎

### What RD-1 does not prove

It does not say a device can never influence future Lace.

A lawful mediated path may be:

\[
(L_n,q,R)
\xrightarrow{\text{device}}
(L_n,q',R')
\xrightarrow{\text{later external event}}
\text{new arrival}
\xrightarrow{\text{separate Lace transition}}
L_{n+k}.
\]

RD-1 says only:

\[
\boxed{
\text{device computation alone does not mutate Lace}.
}
\]

---

## 9. RD-1 corollary — behavioral output cannot be RM-A by type accident

Because \(Y\) is outside \(L\), the following do not automatically append or retain:

- Meaning;
- Emotion;
- Identity;
- Behavior;
- Conditions/Release/Trajectory/Impact/Aftermath classification;
- intervention importance;
- OBS/DELTA/UNK/INVALID;
- Rapids/Delta state;
- Anchor/Pair/Reject output;
- recurrence;
- crossability.

A separately admitted retention/materialization transition is still required wherever current Lace law requires one.

Thus behavioral devices do not close RM-A.

---

## 10. Source minimum pressure tests against the minimal tuple

### 10.1 HCC-A minimum

Take one provenance-bearing observation:

\[
o=(r,\nu)
=
\Omega_\theta(L_n,q,g).
\]

A later HCC device may define two parallel local transforms:

\[
r_{\mathrm{RIC}}=F_{\mathrm{RIC}}(o),
\]

\[
p_{\mathrm{PFC}}=F_{\mathrm{PFC}}(o,q;\theta).
\]

Both may feed a future HCC-specific \(\Delta_H\).

The structural witness in \(\nu\) remains available independently of \(p_{\mathrm{PFC}}\).

Therefore the generic device can support:

- same structural input to parallel evidence/prior paths;
- local mutable state;
- observable behavior;
- future external feedback;

without giving HCC state authority over Lace.

**HCC pressure: PASS.**

### 10.2 Coffee Cup minimum

Let \(g_t\) carry any required time/physical/social context not derivable from Lace.

A later Cup device may keep:

\[
q_t
=
(\chi_t,W_t,A_t),
\]

while \(\Omega\) supplies pointable retained event evidence.

The generic algebra does not identify:

\[
n_2-n_1
\]

with elapsed time.

Impact can retain a witness:

\[
w_I=\omega(y_I,o_I,g_I),
\]

while Aftermath later changes \(q\) and/or future \(g\) without changing \(L_n\) or \(w_I\)'s cited old indices.

**Coffee Cup pressure: PASS.**

### 10.3 Water minimum

A later Water device may store separate local inventories and FSM state inside \(Q_W\).

An OBS-like output may carry:

\[
w
=
\{
\mathsf{Lace}(i)
\}
\]

or:

\[
w
=
\{
\mathsf{External}(e)
\},
\]

or a valid mixed witness.

No rule equates:

\[
\mathsf{Lace}(i)
\]

with a Graphic-D POINTER row.

The output type can express requests such as "provide anchor" without invoking Arrive or Join.

Unknown evidence can be explicitly represented by \(\mathsf{Unknown}(u)\).

**Water pressure: PASS.**

---

## 11. Stale Shadow classification

The current \`docs/clock/system-mathematical-model.md\` contains useful formal language mixed with obsolete Core premises.

Pass 1 classifies the pieces relevant to this campaign:

| Old object | Classification | Pass-1 disposition |
|---|---|---|
| HCC component set \(R,I,RIC,PFC,C,L_{story},M,E,ISL,B\) | **SOURCE-FAITHFUL ingredients / HISTORICAL packaging** | components may inform later HCC device; do not copy tuple wholesale into S9 |
| HCC \(I\to RIC\parallel PFC\) | **SOURCE-FAITHFUL** | reusable later |
| HCC S0–S7 chain | **SOURCE-FAITHFUL** | reusable later with current device boundary |
| Cup Cond→Rel→Traj→Imp→After chain | **SOURCE-FAITHFUL** | reusable later |
| monotone \(W_{traj}(t)\) set equation | **DEVICE-LIFT** | mathematically faithful candidate; source says window shrinks but does not supply this exact set notation |
| Water S0–S4 FSM | **SOURCE-FAITHFUL** | reusable later |
| Water F1–F5 alphabet | **SOURCE-FAITHFUL** | reusable later |
| H×C×W co-presence cells \(t0…t6\) | **CROSS-SOURCE-HYPOTHESIS / HISTORICAL-INTERPRETATION** | not imported into generic S9 |
| old dual-universe wall \(S\not\hookrightarrow H\) | **HISTORICAL-INTERPRETATION compatible with current fence** | S9 uses direct device/Lace type separation instead |
| old Hands §2.2 "binary illustrative; arity not closed" | **STALE-CORE** | quarantined; current model has binary Join |
| old Hands §2.4 \(\mathsf{Participate}=[GAP]\) as broad emission hole | **STALE-CORE** | quarantined; current active open is RM-A retention/materialization, not broad constructor/arity |
| file header "POINTER emission remains GAP" without current qualification | **STALE-CORE** | may not govern this pass |

No stale Core equation migrates into the primary model.

---

## 12. Falsifier board

| Falsifier | Result | Why |
|---|---|---|
| F1 second Lace | **HELD** | \(Q,G,O,Y,W\) are non-authoritative and RD-1 fixes Lace component |
| F2 hidden write | **HELD** | \(\Delta\) codomain excludes \(L\) |
| F3 RM-A smuggling | **HELD** | typed outputs have no append morphism |
| F4 source flattening | **HELD** | pressure tests keep parallel HCC, temporal Cup, proof+River Water distinctions |
| F5 source fusion | **HELD** | common tuple is interface only; no shared state machine claimed |
| F6 HCC evidence loss | **HELD** | provenance-bearing observation remains separate from PFC transform |
| F7 Cup time fabrication | **HELD** | non-Lace context \(G\) is explicit |
| F8 Cup Impact rewrite | **HELD** | RD-1 + stable witness indices |
| F9 Water pointer false friend | **HELD** | witness Lace(i) is evidence reference, not POINTER kind |
| F10 Water inventory becomes Core | **HELD** | inventories are \(Q_W\) candidate state |
| F11 source-open closure | **HELD** | Water's three open parameters remain unbound |
| F12 stale Core import | **HELD** | stale equations classified and quarantined |
| F13 witness theater | **HELD** | \(\omega\) is retained as irreducible field |
| F14 external context hidden | **HELD** | \(G\) explicit |
| F15 action equals append | **HELD** | action/request is output tag only |

**15/15 falsifiers held.**

---

## 13. Pass-1 verdicts

### Generic abstraction

**DEVICE ALGEBRA SOUND WITH OPENS.**

Open:
- exact \(Q,G,Y,\theta\) for each source-specific device;
- source-specific witness admissibility rules;
- implementation/performance realization.

### Read/write boundary

**READ-ONLY SEPARATION PROVED** for the mathematical device step by RD-1.

This is a theorem of the typed model, not evidence that future code obeys it.

### Witness model

**WITNESS ALGEBRA SUFFICIENT FOR PASS-1 PRESSURE SET.**

The external and local/unknown classes are necessary.

### Primary-model update

**S9 ADMITTED WITH OPENS.**

Only the generic algebra belongs in S9.

Full HCC/Cup/Water devices remain later-pass work.

---

## 14. Stop condition

This artifact authorizes no implementation.

It establishes only a mathematical interface:

\[
\boxed{
\text{Lace can be observed by stateful behavioral devices without making those devices part of Lace.}
}
\]

The next step is the bounded S9 insertion into \`docs/math-execution-model.md\`, followed by Pass-1 findings and release.
