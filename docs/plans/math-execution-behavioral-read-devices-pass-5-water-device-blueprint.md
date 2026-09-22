# MATHEMATICAL EXECUTION MODEL — Behavioral Read Devices Pass 5 Water / Dual Proofing device blueprint

**Status:** EXECUTED PASS-5 ARTIFACT — **MATHEMATICALLY DEFINED WITH CURRENT-LAW CORRECTIONS AND OPEN MATCHING POLICIES**.
**Behavioral authority:** direct *Where the Water Is Loud* source **as superseded by the human Proof-Ledger rulings in current repo law**.
**Research machinery:** optional Pass-5 operator library.
**Core:** read-only.
**Implementation:** none.

---

# 1. Authority correction before mathematics

The direct source defines:

\[
\mathsf{ProofLedger}
=
OBS\mid DELTA\mid UNK\mid INVALID
\]

and:

\[
\mathsf{River}
=
Banks\to Rapids\to Delta\to Crossing
\]

with an S0–S4 interface and F1–F5 functions.

The original text also says:
- unresolved UNK blocks coherent comprehension;
- INVALID is a non-computable/phrase-style category;
- an unpinned UNK halt-vs-budget policy remains;
- an INVALID stop-word/pattern list remains unpinned.

Current human law explicitly supersedes those particular readings.

## Current project target

### UNK

\[
\boxed{
UNK
=
\text{predicted shape of evidence required to resolve an unknown}
}
\]

It waits for future evidence.

It does **not** globally block the machine.

### INVALID

\[
\boxed{
INVALID
=
\text{claim historically proved wrong by later evidence}
}
\]

It is not assigned from wording/style alone.

There is no invalid-phrase table.

This blueprint follows current human authority.

---

# 2. Water device type

Define:

\[
\mathcal D_W
=
(Q_W,G_W,\Omega_W,\Delta_W,\omega_W;\Theta_W).
\]

---

# 3. Multi-holder local state

Let holder set be finite:

\[
H=\{h_1,\ldots,h_m\}.
\]

Define:

\[
Q_W
=
Q_{shared}
\times
\prod_{h\in H}Q_h.
\]

For each holder:

\[
Q_h
=
(O_h,U_h,C_h),
\]

where:
- \(O_h\) is that holder's OBS inventory;
- \(U_h\) is that holder's unresolved/waiting UNK set;
- \(C_h\) is holder-local conversational/proofing control state.

Shared state:

\[
Q_{shared}
=
(S_O,D,R_W,I_W),
\]

where:
- \(S_O\): explicitly acknowledged/shared OBS relations;
- \(D\): current DELTAs;
- \(R_W\): River location/state;
- \(I_W\): historically refuted INVALID records when shared/established.

No holder receives a private authoritative Lace.

All holders may read the same:

\[
L_n.
\]

---

# 4. Provenance-bearing OBS

Define an observation record:

\[
obs
=
(\phi,h,t,c,w),
\]

where:
- \(\phi\): pointable proposition/content;
- \(h\): holder claiming/recording it;
- \(t,c\): time/context anchors when available;
- \(w\): S9/S10 witness.

Pointability predicate:

\[
\mathsf{Pointable}(obs,w)\in\{\mathsf{true},\mathsf{false}\}.
\]

A lawful OBS requires:

\[
\boxed{
OBS_h(\phi)
\Rightarrow
\exists w\neq\varnothing:
\mathsf{Pointable}(\phi,w).
}
\]

The support may be:
- \(\mathsf{Lace}(i)\);
- \(\mathsf{LacePath}(p)\);
- \(\mathsf{External}(e)\).

Pure interpretation with no pointable anchor is not OBS.

### Concrete pointer format

The original source leaves serialization/format open.

Pass 5 supplies a mathematical witness type through S9.

It does not choose:
- message ID format;
- timestamp schema;
- quote serialization;
- UI locator.

Those remain implementation OPEN.

---

# 5. Separate inventories

For two holders \(a,b\):

\[
O_a
\neq
O_b
\]

is normal.

An OBS does not become shared merely because:
- both holders can access Lace;
- one holder says it confidently;
- a model predicts agreement.

Define explicit acknowledgement/sharedness relation:

\[
\mathsf{Share}(obs_a,obs_b,g)
\to
s\in S_O.
\]

Exact acknowledgement policy remains source/application dependent.

This preserves S10 multi-holder discipline.

---

# 6. DELTA

Define:

\[
\delta
=
(obs_a,obs_b,\chi_\delta,w_\delta),
\]

where:
- \(obs_a,obs_b\) are pointable observations;
- \(\chi_\delta\) records the mismatch/difference relation;
- \(w_\delta\) preserves both observation supports plus pairing/sharedness provenance.

A lawful DELTA requires:

\[
obs_a\in O_a,
\quad
obs_b\in O_b,
\]

plus the explicit pairing/sharedness condition required by current Water authority.

Thus:

\[
\boxed{
DELTA
\not\Rightarrow
\text{generic graph edge}.
}
\]

It is a device-local proofing object.

---

# 7. UNK as expected evidence shape

Define:

\[
u
=
(\eta,\mathcal R_u,w_u,\sigma_u),
\]

where:
- \(\eta\): predicted shape/specification of evidence required;
- \(\mathcal R_u\): which DELTA/question(s) that evidence could resolve;
- \(w_u\): provenance for why the evidence is required;
- \(\sigma_u\in\{\mathsf{WAITING},\mathsf{FILLED},\mathsf{RETIRED}\}\): local device status.

Current human law gives:

\[
\boxed{
UNK\text{ is not a blocking state}.
}
\]

A WAITING UNK may coexist with:
- other valid OBS;
- another DELTA;
- active crossing on a different resolved/grounded issue.

### Filling

When future evidence \(e\) arrives:

\[
\mathsf{Match}(e,\eta)
\]

may justify constructing a new OBS.

Then:

\[
u:\mathsf{WAITING}\to\mathsf{FILLED}.
\]

The old unknown is not erased from Lace because it was never a Lace row.

A later ordinary historical record may preserve that it had been unknown if needed.

### Search is optional

A device may actively search/request for evidence matching \(\eta\).

If so, Pass-5 \(\Gamma,\Psi,\tau\) may be used.

But a WAITING UNK itself does not imply an active loop.

Therefore the old:

\[
halt\text{-at-UNK}\ \text{vs bounded UNK budget}
\]

is **not** current target semantics.

Any active search budget is a separate machine policy.

---

# 8. INVALID as historical refutation

Define:

\[
inv
=
(\phi,w_\phi,w_{\neg\phi},t_{inv}),
\]

where:
- \(\phi\) is the prior claim;
- \(w_\phi\) identifies the claim/history;
- \(w_{\neg\phi}\) is later evidence establishing the contradiction/refutation under an explicit rule;
- \(t_{inv}\) is the point at which invalidity became established.

Define:

\[
\mathsf{Refuted}(\phi,w_{\neg\phi})
\]

as source/application-specific.

Then:

\[
\boxed{
INVALID(\phi)
\Rightarrow
\exists w_{\neg\phi}\neq\varnothing:
\mathsf{Refuted}(\phi,w_{\neg\phi}).
}
\]

No lexical form such as:
- "you're bad";
- "obviously";
- "that's stupid"

is sufficient by itself.

Those statements may be:
- ungrounded;
- interpretive;
- requests for clarification;
- candidates;
- later proved wrong;

but are not automatically INVALID.

---

# 9. River location

Define source-specific location:

\[
R_W
\in
\{
\mathsf{BANKS},
\mathsf{RAPIDS},
\mathsf{DELTA},
\mathsf{CROSSING},
\mathsf{BANK\_REBUILD}
\}.
\]

## Banks

No sufficient shared pointable footing yet.

Separate inventories are visible.

## Rapids

Pressure/urgency/noise is high relative to transferable/pointable shared footing.

Key invariant remains:

\[
\boxed{
Pressure\neq Transfer.
}
\]

## Delta

At least one pointable shared/acknowledged basis exists such that comparison can begin.

## Crossing

At least one lawful DELTA or grounded proofing task is actively being worked.

Current UNKs may remain WAITING without globally forbidding Crossing.

## Bank rebuild

A completed crossing may produce:
- action list;
- changed expectations;
- new holder-local state;
- later external behavior.

This is device output/local update, not a Lace append.

---

# 10. Interface functions — source signatures and current lawful signatures

The original source names F1–F5.

Pass 5 preserves the interface names while applying current human corrections.

## F1 — Locate

\[
F_1:
(signal,Q_W,G_W)
\to
(R_W,route,w).
\]

Output:
- River location;
- next lawful proofing request/action;
- witness/provenance.

A phrase may influence location only as evidence/context.

It does not lexical-trigger INVALID.

## F2 — Anchor

\[
F_2:
(\phi,w,h)
\to
OBS_h(\phi)
\quad\text{iff }\mathsf{Pointable}(\phi,w).
\]

If not pointable:

\[
F_2
\to
\mathsf{RequestEvidenceShape}
\]

rather than fabricated OBS.

## F3 — Pair

\[
F_3:
(obs_a,obs_b,s)
\to
\delta
\]

iff:
- both are lawful OBS;
- \(s\) establishes required pairing/sharedness.

Otherwise:

\[
F_3\to\mathsf{UNRESOLVED}.
\]

## F4 — Unknowns

\[
F_4:
(question/dependency,w)
\to
u=(\eta,\mathcal R_u,w_u,\mathsf{WAITING}).
\]

This explicitly predicts:
- what evidence shape is missing;
- what it would resolve.

It does **not** globally block.

## F5 — source Reject versus current Refute

### Raw source F5

The original F5 classifies phrase-shaped "non-computable claims" as INVALID.

That behavior is superseded.

### Current lawful successor \(F_5^*\)

Define:

\[
F_5^*:
(\phi,w_\phi,e,w_e)
\to
\begin{cases}
INVALID(\phi,w_\phi,w_e), & \mathsf{Refuted}(\phi,w_e)\\
\mathsf{UNGROUNDED}/UNK\ request, & \text{if support is missing}\\
\mathsf{NO\_INVALID\_VERDICT}, & \text{otherwise.}
\end{cases}
\]

This preserves the interface slot while obeying current human law.

The old stop-word-list parameter is retired.

---

# 11. Water transition

Observation:

\[
o_W
=
\Omega_W(L_n,q_W,g_W).
\]

A device step may:
1. locate the current River state;
2. add pointable OBS to a holder inventory;
3. establish shared OBS relations;
4. form DELTA where pairing conditions hold;
5. create/update UNK evidence-shape forecasts;
6. establish INVALID only from later refuting evidence;
7. output routing/request/action guidance.

All changes are to:

\[
Q_W
\]

and \(Y_W\), not Lace.

---

# 12. Output space

Define:

\[
Y_W
=
\mathsf{Location}
\uplus
\mathsf{OBSRequest}
\uplus
\mathsf{UNKRequest}
\uplus
\mathsf{DeltaDescription}
\uplus
\mathsf{CrossingGuidance}
\uplus
\mathsf{ActionList}
\uplus
\mathsf{InvalidationNotice}
\uplus
\{\mathsf{NOOP}\}.
\]

The kernel sentence is a possible routing output.

It is not an append instruction.

---

# 13. Research-operator disposition for Water

| Operator | Water status | Reason |
|---|---|---|
| \(\mathsf{Par}\) | OPTIONAL | holder checks may run independently; source requires separate inventories, not CPU parallelism |
| \(\Gamma\) | OPTIONAL | useful for candidate evidence-search requests; generated result is never OBS |
| \(\mathcal V\) | OPTIONAL FACTORIZATION | pointability/sharedness/refutation can be modeled as checks but may simply live in \(\Delta_W\) |
| \(\Psi\) | OPTIONAL | active evidence search only |
| \(\tau\) | CONDITIONAL | only for active inner search; WAITING UNK itself does not loop |
| \(\rho\) | OPTIONAL | pairing/resolution may preserve unresolved plurality |

### Source fits

AgentScope:
- structured records;
- invariant-specific checking;
- candidate/support separation.

Xiao–Zhu:
- optional search for missing evidence;
- verifier fallibility warning.

Petersen–Zech:
- optional parallel holder/check composition.

Kauffman:
- branch/audit precedent only if competing pairing hypotheses are explored; otherwise **NOT USED**.

Rowlands:
- stop/cycle/budget pattern only for optional active search; **not** UNK semantics.

---

# 14. Witness / pointability

\[
\omega_W(y,o,g)
=
w_W.
\]

Rules:

### OBS

Must name pointable support.

### DELTA

Must name both OBS supports plus pairing/sharedness evidence.

### UNK

Must name:
- why evidence is missing/relevant;
- predicted evidence shape;
- target DELTA/question.

### INVALID

Must name the later refuting evidence.

### River location

Must name the current cues used to classify location and distinguish:
- pressure;
- shared footing;
- active DELTA.

Thus a model classification is never self-authenticating.

---

# 15. Open parameters after current-law correction

Still OPEN:

- concrete OBS pointer serialization;
- exact \(\mathsf{Pointable}\) rule by application;
- acknowledgement/sharedness rule;
- \(\mathsf{Match}(e,\eta)\) evidence-shape matching;
- \(\mathsf{Refuted}\) rule by claim domain;
- River location thresholds/diagnostic rule;
- action-list derivation after Crossing;
- optional active-search strategy and budget.

No longer current OPEN:

- INVALID phrase/stop-word list;
- UNK halt-at-any-unknown versus bounded-UNK-budget as semantics.

Those were superseded by human ruling.

---

# 16. Blueprint verdict

\[
\boxed{
\text{WATER DEVICE MATHEMATICALLY DEFINED WITH CURRENT-LAW CORRECTIONS}
}
\]

\[
\boxed{
UNK=\text{NONBLOCKING EXPECTED-EVIDENCE SHAPE}
}
\]

\[
\boxed{
INVALID=\text{EVIDENCE-BACKED HISTORICAL REFUTATION}
}
\]

\[
\boxed{
\text{TWO HOLDER INVENTORIES REMAIN DISTINCT UNTIL EXPLICIT SHAREDNESS}
}
\]

\[
\boxed{
\text{GENERATED CANDIDATE}\neq OBS
}
\]

The stale clock clipboard must eventually be reconciled in its own station, but no clipboard edit is made by Pass 5.
