# Language structure / interaction loop — Pass 4 plan: structural retrieval / match / continuation ranking

**Status:** PLAN — NOT EXECUTED.  
**Campaign position:** Pass 4 of 6. Passes 1–3 are EXECUTED. Pass 5 is not opened by this file.  
**Station:** maps.  
**Pinned main before planning claim:** `04a1e31baa0eed135e5d14aea4ae17062499d4fc`.  
**Planning claim:** `c1117c3fd5494f319495281bf85a617a4ecf52c5`.  
**Human acceptance:** ABSENT.  
**Core / RM-A / G1 / G3 / pointer acceptance / implementation:** unchanged.  
**One act:** map the structural mechanisms observed in Passes 1–3 into explicit query, candidate, continuation, evidence and resolver machinery, then design a falsifiable retrieval/ranking experiment that can distinguish candidate mechanisms without semantic similarity or hidden model state.

This pass is about the human statement:

> select best match by Star pattern as search pattern and produce the most likely Star pattern

but it must turn every noun and verb in that sentence into an explicit mechanism before execution.

It does **not** decode or emit a user response. That remains Pass 5.

---

# 0. Why Pass 4 exists

The project already has the pieces of a structural retrieval machine, but they have not yet been composed into one tested selection mechanism.

Current established/reproduced pieces:

1. **Star is a layered read**, not a stored object.
2. **SearchHandle** is a minimal replayable selected-result handle:
   [
   SearchHandle=(through,anchor,item).
   ]
3. Pattern handles:
   [
   PATTERN(n,exemplar_start)
   ]
   reconstruct the tuple, occurrences, support, extension DAG and branch fanout.
4. Flat Reach/closure loses path and origin-specific structure.
5. Support-first and scale-first are both mechanically valid structural projections, but neither was justified as the universal search order.
6. Pass 3 showed **sequence matters**:
   intact dictionary definitions preserve much more n>=3 recurrence than the same token multiset shuffled.
7. Pass 3 showed **scale matters**:
   ordinary prose can dominate low-scale recurrence while dictionary definitions dominate longer recurrence.
8. Pass 3 showed **definition text adds structure beyond headword vocabulary**.
9. Pass 3 showed **entry order matters much less than local definition order**.
10. Pass 3 showed the strongest qualitative corpus effects survive bounded G1-A/B/C.
11. Pass 3 also exposed **boilerplate recurrence**, so recurrence/support cannot be equated with useful prediction.
12. S12 already provides the lawful device-local place for:
   candidate generation (Gamma),
   checking (mathcal V),
   transition (Psi),
   stopping (	au),
   resolution (ho).
13. Current fences remain:
   Candidate != Evidence,
   VerifierScore != Truth,
   LearnedState does not imply LaceFact,
   read/search never acquires write authority.

Pass 4 therefore asks:

> **Can a structural query derived from the current prefix select useful historical continuation structure using only replayable Lace/corpus structure, and which resolver mechanisms survive held-out prediction tests?**

---

# 1. Observed-mechanism map

Pass 4 must begin by mapping these observations into machinery. None may be skipped.

## OM-1 — ordered sequence carries information

Pass-3 evidence:

[
DICT_{intact}
gg
DICT_{same tokens shuffled}
]

for n>=3 recurrence.

Mechanism implication:

**query matching must preserve order.**

A bag/set overlap mechanism is insufficient as the primary pattern matcher.

---

## OM-2 — recursive definition vocabulary creates route reuse

Pass-3 evidence under G1-B bounded slice:

- 49.41% of definition-token occurrences also have headword identities;
- repeated exact pattern classes recur across separate definitions.

Mechanism implication:

a dictionary Star may expose:
- lexical root reuse;
- repeated definition-route patterns;
- neighboring anchors through shared patterns.

No semantic graph edge is needed.

---

## OM-3 — useful structure exists at multiple scales

Pass-3 evidence:

- prose stronger at n=1/2 in the tested matched corpus;
- dictionary stronger at n>=3.

Prior search evidence:

- support plateaus;
- branch splits;
- recurrence extinction;
- maximal-only loses trunks;
- support-only and scale-only emphasize different structures.

Mechanism implication:

**one fixed n is not sufficient.**

The query must expose a scale/frontier family rather than silently hardcode a context length.

---

## OM-4 — local definition order matters more than global entry order

Pass-3 evidence:

whole-entry permutation preserves most longer recurrence.

Mechanism implication:

retrieval must not depend on one canonical global dictionary entry ordering.

Local pattern topology/sequence is the reusable structure.

---

## OM-5 — seed utility is prefix-causal

A seed can only help with structure that existed before later input arrived.

Mechanism implication:

all retrieval evaluation must be:

[
history through t-1
ightarrow
query_t
ightarrow
candidate
ightarrow
prediction_t
]

with no future leakage.

---

## OM-6 — main structural effects survived G1-A/B/C

Mechanism implication:

Pass 4 should execute at least G1-B as the continuity baseline and rerun headline resolver results under G1-A/C for sensitivity.

No resolver may define G1 by convenience.

---

## OM-7 — recurrence includes boilerplate

High-support dictionary branches include formulaic definition language.

Mechanism implication:

support is evidence of recurrence, **not** relevance or truth.

A resolver that simply chooses maximum support must be attacked against specific-but-lower-support continuations.

---

## OM-8 — anchors have heterogeneous structural neighborhoods

Prior evidence:

common anchors produce huge frontiers;
rare anchors may have shallow or absent recurring structure.

Mechanism implication:

no fixed frontier breadth or stop-word deletion is assumed.

Resolver quality must report:
- coverage;
- abstention;
- candidate-set size;
- branch entropy/ambiguity.

---

## OM-9 — SearchHandle content is reconstructible

Mechanism implication:

all retrieval candidates can remain disposable and cite:
- through;
- anchor;
- PATTERN/POINTER/STAR_HOP handle.

No search index or candidate cache becomes authority.

---

## OM-10 — frontier/path preservation outranks scalar collapse

Prior search Pass 4:

- maximal-only loses trunks;
- Pareto-only loses branches;
- closure makes different anchors converge;
- scalar mix needs unsupplied weights.

Mechanism implication:

Pass 4 may test scalar/total orderings as **Lab contestants**, but the underlying candidate frontier must remain reconstructible and lossless.

---

## OM-11 — retained POINTER paths are a separate layer

PATH-1:

[
ReachMembership
eq PathMultiplicity.
]

Mechanism implication:

where real retained topology exists, path witnesses can enrich a match signature.

But external OEWN/Frankenstein/Alice Lab streams have no lawful generic RM-A retained POINTER map.

Therefore Pass 4 must separate:

- **text-derived query benchmark:** lexical + pattern layers;
- **retained-topology benchmark:** D1 / other current lawful POINTER witnesses only.

It must not hallucinate pointer topology for corpus text.

---

# 2. Core Pass-4 decomposition

The phrase "best match by Star pattern" becomes five separate stages.

```
CURRENT PREFIX
     |
     | derive causal query
     v
QUERY SIGNATURE
     |
     | enumerate historical witnesses
     v
CANDIDATE FRONTIER
     |
     | derive continuation branches
     v
CONTINUATION PROFILE
     |
     | resolver candidate
     v
SELECTED / TIED / UNRESOLVED STRUCTURAL CONTINUATION
```

No stage writes Lace.

No selected continuation is a response yet.

---

# 3. Query object: causal Star-pattern cone

For current word position (t), define the bounded **left structural cone** over the current prefix.

Let:

[
q_t=(r_{t-m+1},ldots,r_t)
]

be the last (m) root identities available through the current point.

For every:

[
1le nle m,
]

define the causal suffix pattern:

[
Q[n,t]=(r_{t-n+1},ldots,r_t).
]

The query cone is:

[
mathcal Q_t^{(m)}
=
{
Q[1,t],ldots,Q[m,t]
}.
]

This is simply the endpoint-local portion of the existing position×scale sampler.

It is:
- ordered;
- prefix-only;
- reconstructible;
- nonsemantic;
- derived;
- not a stored query object.

### Query handle

For a selected query scale:

[
QueryHandle=(through=t,n,start=t-n+1,anchor=r_t)
]

is Lab notation only.

Pass 4 must test whether this is reducible to current SearchHandle/PATTERN notation rather than inventing a new persistent type.

---

# 4. Historical match candidate

For query suffix (Q[n,t]), a historical exact occurrence is a start (s) such that:

[
(r_s,ldots,r_{s+n-1})
=
Q[n,t]
]

and the historical occurrence ends **strictly before the prediction target**.

For seed-only retrieval:

[
s+n-1 < SeedEnd.
]

For growing-history retrieval:

[
s+n-1 < t.
]

Each structural candidate is replayable as:

[
PATTERN(n,s)
]

under the current SearchHandle machinery.

### Match depth

For a historical endpoint (u), define:

[
Depth(u,t)
=
max{n:Q[n,t]=Q[n,u]}.
]

This is a purely structural common-suffix-cone depth.

It must not be called semantic similarity.

---

# 5. Continuation branch

For a matched historical pattern occurrence ending at (u), the one-word continuation is:

[
c=r_{u+1}
]

when (u+1) exists within the named historical prefix.

For pattern (p), define branch count:

[
Count_p(c)
=
#{
u:
p	ext{ occurs ending at }u
land
r_{u+1}=c
}.
]

Continuation support:

[
N_p
=
sum_c Count_p(c).
]

Empirical branch frequency:

[
hat P(cmid p)
=
rac{Count_p(c)}{N_p}.
]

This is **not** a probability-of-truth claim.

It means only:

> among historical exact occurrences of this pattern with an observed next word, this fraction continued with c.

The same machinery may be extended to k-word continuation patterns later in the pass, but one-word continuation is the mandatory base court.

---

# 6. The "most likely" phrase gets a strict definition

Within **one fixed historical pattern p**, "most likely continuation" may mean:

[
Modes(p)
=
argmax_c Count_p(c).
]

If several branches tie, the result is a set.

No arbitrary lexical tie-break is allowed in the scientific result.

Thus:

[
MostLikely_p
]

is a derived empirical mode over witnessed historical continuations.

It is not:
- truth;
- semantic best answer;
- Core authority;
- proof that the next word will match;
- a retained Lace fact.

The hard question is not the mode inside one p.

The hard question is:

> **which p from the multi-scale query cone should control continuation?**

That is the resolver court.

---

# 7. Resolver candidate court

No candidate is accepted by this plan.

## R4-A — lexical-only baseline

Use:

[
Q[1,t]
]

only.

Choose modal next branch of the current word identity.

Purpose:

measure what Star/root identity alone can do.

Expected weakness:
- high coverage;
- weak context specificity;
- common-word saturation.

---

## R4-B — longest exact suffix

Choose the largest n for which the historical pattern has at least one observed continuation.

Then return:

[
Modes(Q[n,t]).
]

This is pure specificity-first.

Attack:
- a one-off pattern can have apparent certainty 1/1;
- long dictionary boilerplate may overfit;
- longest match may be fragile under G1.

---

## R4-C — longest recurrent suffix

Choose the largest n with:

[
N_pge2.
]

Then return its mode(s).

This uses the project's existing recurrence definition.

Important fence:

support>=2 is a **Lab candidate threshold**, not a human/core rule.

Attack:
- throws away unique exact historical contexts;
- may back off too aggressively.

---

## R4-D — support-first suffix

Among all matching suffix patterns, choose maximal continuation support (N_p).

If tied, preserve the tied scale set.

Attack:
- likely collapses toward n=1/2;
- boilerplate/common words dominate;
- prior search already warned support-first emphasizes broad trunks.

---

## R4-E — scale-first, then support

Lexicographic resolver:

1. largest n;
2. within same n, largest (N_p);
3. unresolved set on remaining tie.

This is a deterministic version of specificity-first without free scalar weights.

Attack against held-out prediction.

---

## R4-F — support-first, then scale

Lexicographic reverse:

1. largest (N_p);
2. then largest n;
3. unresolved on tie.

Purpose:

explicit counterpoint to R4-E.

---

## R4-G — branch-confidence first

For every matching pattern p, compute:

[
Conf(p)=max_c hat P(cmid p).
]

Prefer maximal confidence.

Tie by preserving candidates, not arbitrary word order.

Attack:
- singleton occurrence yields Conf=1;
- confidence can reward sparse overfit.

A support floor may be tested only as an explicit separate variant.

---

## R4-H — Pareto structural frontier

A candidate p is nondominated on:

[
(n,N_p,Conf(p))
]

using larger-is-better components.

Do **not** force a single p.

Resolve only if every nondominated candidate has the same continuation mode.

Otherwise:

[
UNRESOLVED.
]

Purpose:

test whether a non-scalar frontier can get high precision by abstaining.

---

## R4-I — cross-scale agreement

For every scale with a historical continuation profile, compute its mode set.

If all nonempty mode sets share one continuation c, return c.

Otherwise unresolved.

Variants:
- all scales;
- recurrent scales only.

No weights.

This directly tests whether "same Star pattern across scales" can yield a stable continuation without one global ranking score.

---

## R4-J — evidence-depth pair

Use a partial order on:

[
(depth=n, continuation support=N_p)
]

without confidence.

Resolve only when one candidate dominates all others, or all maximal candidates predict the same branch.

Purpose:

minimal two-variable mechanism derived directly from observed specificity/support tension.

---

# 8. Candidate output object

Pass 4 must not output a response string.

The result is a structural continuation record:

[
StructuralChoice_t
=
(
through,
query_handles,
candidate_handles,
resolver,
continuation_roots,
witnesses,
status
).
]

where status is one of:

- `SELECTED`
- `TIED`
- `UNRESOLVED`
- `NO_MATCH`

This object is device-local derived state.

A minimal final form may be smaller. Pass 4 must run a deletion/minimality audit after the mechanism comparison.

---

# 9. Witness continuity

Every selected or tied continuation must retain enough replay data to answer:

1. what query pattern(s) matched?
2. what historical occurrences supported them?
3. what continuations followed those occurrences?
4. what resolver rule was used?
5. what tied/losing candidates existed?
6. what prefix boundary prevented future leakage?

A selected result with only:

```
word = X
score = 0.83
```

fails the project.

S10 EP-1 / S12.10 remain binding.

---

# 10. Benchmark design

Pass 3 already contaminated the first 10k Alice tokens as an analysis probe.

Pass 4 therefore needs untouched evaluation windows.

## B4-PROSE-1 — Alice held-out

Use Alice tokens:

[
10{,}000 ldots 19{,}999
]

under each G1 convention, provided the body is long enough.

Seed candidates:

- C-DICT first 20k;
- C-HEAD first 20k;
- C-SHUFFLE first 20k;
- C-ENTRY first 20k;
- C-PROSE / Frankenstein first 20k.

Purpose:

cross-corpus held-out prose prediction.

---

## B4-DICT-1 — held-out OEWN definitions

Use OEWN source entries **after** the fixed Pass-3 source slice.

Construct a held-out definition-text probe that does not overlap the selected source-entry identities used to create C-DICT.

Use the same eight source families and deterministic round-robin logic, beginning after each source's consumed prefix.

Target at least 10k tokens.

Purpose:

test retrieval on dictionary-shaped later text.

This is critical because Pass 3 showed seed usefulness is domain-dependent.

---

## B4-PROSE-2 — within-document prefix control

Seed:

first 20k Frankenstein tokens.

Probe:

next 10k Frankenstein tokens.

Purpose:

measure the advantage of a structurally/domain-near recent history.

This is not a fair "best universal seed" contest.

It is a locality/domain control.

---

## B4-SHUFFLE negative control

Use identical shuffled dictionary seed.

If a resolver performs nearly as well on sequence-sensitive multiword prediction after order destruction, the claimed structural matcher is suspect.

---

# 11. Evaluation targets

Pass 4 evaluates **prediction of observed structural continuation**, not semantic answer quality.

For each prediction point with at least one prior match, record:

## Coverage

fraction of probe points where resolver returns SELECTED or TIED prediction.

## Abstention

fraction UNRESOLVED / NO_MATCH.

## Top-1 exact next-root accuracy

Count success only when one selected continuation equals the observed next identity.

Tie handling:
- strict top-1: tie is not success;
- set-hit: observed continuation belongs to tied set.

Both must be reported.

## Top-k structural branch recall

For k in a small fixed set such as 3 and 5, take the k highest branch counts **inside the selected pattern**, ties preserved.

This is a Lab metric, not a user-response rule.

## Mean selected scale

Shows whether mechanism collapses to lexical/bigram or actually uses longer structure.

## Mean continuation support

Evidence amount behind selected branch.

## Ambiguity

Number of branch alternatives / mode ties.

## Calibration table

For branch-frequency buckets, compare empirical (hat P) against actual held-out hit rates.

Do not claim statistical calibration beyond the bounded specimen.

## Witness cost

Approximate reconstructible handle count / candidate count required per decision.

No runtime performance claim unless measured separately.

---

# 12. Longer continuation / "Star pattern" target

The user said "produce the most likely Star pattern," not merely one word.

After the one-word court is fixed, Pass 4 must test a bounded multiword continuation.

For selected historical pattern p, every occurrence yields a future continuation sequence:

[
C_k(u)
=
(r_{u+1},ldots,r_{u+k}).
]

For fixed small k, e.g. 2–5, count exact continuation patterns.

The modal continuation set is:

[
Modes_k(p).
]

Evaluate exact prefix hits at each k.

This tests whether the structural matcher can produce a **continuation pattern** rather than just a token.

It still does not decode/generate free language.

---

# 13. Query-shape extensions after baseline

Only after exact-suffix resolvers are measured may Pass 4 test richer Star-pattern queries.

## Q4-X1 — multi-anchor intersection

Intersect anchored pattern frontiers for two or more current roots.

Prior search work already proved intersections are reconstructible.

Test whether intersection reduces ambiguity without destroying coverage.

No unordered bag similarity score.

---

## Q4-X2 — branch-shape signature

Use the local extension-DAG shape around a matched anchor:

- scale;
- support;
- left/right extension fanout;
- recurrence termination.

Compare exact discrete signatures.

No Euclidean embedding/vector distance.

---

## Q4-X3 — retained POINTER path signature

D1-only / lawful-pointer specimens.

Use:
- path depth;
- multiplicity;
- witness rows;
- neighboring-star hop via explicit pattern witness.

Purpose:

map how retained topology could enrich structural matching later.

Do **not** extrapolate D1 path matching into OEWN/Alice/Frankenstein, whose Lab feeds lack general lawful pointer emission.

---

# 14. Similarity court

Pass 4 must distinguish:

### Exact structural equality
Allowed and primary.

### Partial structural overlap
Allowed only when the overlap rule is explicit and nonsemantic.

Examples:
- common suffix depth;
- common witnessed pattern handles;
- exact frontier intersection.

### Numeric structural distance
May be tested only if every component and weight has independent justification or is kept as a Lab hyperparameter.

### Semantic similarity / embeddings
Not part of the base Pass-4 mechanism.

May later serve as a device comparator in another experiment, but:
- it is not Lace structure;
- it is not authoritative evidence;
- it cannot write Core;
- this pass does not need it.

---

# 15. Critical falsifiers

## F4-1 — unigram collapse

A "best match" mechanism selects n=1 almost everywhere.

Result:
it is lexical frequency machinery, not multi-scale structural retrieval.

---

## F4-2 — singleton certainty trap

Confidence-first chooses 1/1 long patterns and performs badly held-out.

Result:
empirical confidence without support is not sufficient.

---

## F4-3 — boilerplate winner

Dictionary formula patterns dominate ranking but predict unrelated held-out continuations poorly.

Result:
support/long recurrence is not relevance.

---

## F4-4 — shuffle survives

Intact dictionary and identical shuffled tokens perform similarly at multiword query/continuation.

Result:
the sequence-dependent mechanism observed in Pass 3 is not contributing to retrieval.

---

## F4-5 — G1 reversal

Resolver ordering/accuracy reverses materially under G1-A/B/C.

Result:
mechanism is G1-sensitive.

---

## F4-6 — future leakage

Query includes target/future word when matching.

Result:
experiment invalid.

---

## F4-7 — evaluation oracle

Resolver is tuned on the same evaluation window it is scored on.

Result:
invalid.

Candidate families must be frozen before final held-out scoring.

---

## F4-8 — semantic contamination

Dictionary graph relations, embeddings, labels or synonym IDs enter candidate search.

Result:
base structural mechanism invalid.

---

## F4-9 — scalar convenience

A weighted score is introduced because no resolver wins.

Result:
weights remain Lab parameters; no architectural conclusion.

---

## F4-10 — frontier deletion

Only the winning result is kept and losing/tied candidates become unreconstructible.

Result:
violates witness continuity.

---

## F4-11 — pointer fiction

Lab corpus is treated as though generic RM-A POINTER topology exists.

Result:
invalid.

---

## F4-12 — prediction becomes truth

Held-out predictive accuracy is treated as proof of meaning/correctness.

Result:
invalid.

---

# 16. Candidate-selection protocol

To avoid test-set tuning:

## Phase A — instrument reproduction

Reproduce:
- QUESTION branch counts / continuation:
  `ANSWERS ONE QUESTION ONLY -> WHY 1 / WHEN 2 / WHAT 2`;
- at least one current SearchHandle round trip;
- Pass-3 sequence-vs-shuffle recurrence contrast.

## Phase B — development window

Use only:
- Pass-3 first 10k Alice probe;
- a bounded development slice of held-out dictionary definitions distinct from final evaluation.

Inspect R4-A through R4-J.

No architecture accepted.

## Phase C — freeze

Before looking at final evaluation results:
- freeze candidate resolver definitions;
- freeze any support floor variants;
- freeze k;
- freeze query max depth;
- record exact parameters in the retrieval ledger.

## Phase D — held-out evaluation

Score on:
- Alice 10k–20k;
- held-out OEWN definition text;
- Frankenstein next-10k locality control.

Do not change candidates after seeing these results.

Any post-result modification becomes a new named candidate and does not replace the frozen result.

---

# 17. G1 execution

Main development may use G1-B for continuity with Passes 2–3.

Held-out headline results must be repeated under:

- G1-A;
- G1-B;
- G1-C.

For each resolver report:

```
ROBUST-TESTED
G1-SENSITIVE
ONE-POLICY-ONLY
```

No one convention becomes global G1.

---

# 18. Corpus / domain interpretation

Pass 3 showed:

[
	ext{seed quality depends on what arrives later}.
]

Therefore Pass 4 must not publish one overall resolver/corpus score.

It must present a matrix:

```
resolver
x seed corpus
x probe domain
x G1 policy
```

The purpose is to identify mechanism behavior, not crown a universal seed.

---

# 19. "Best match" possible outcomes

A legitimate Pass-4 conclusion may be:

### Outcome A — unique structural resolver survives

One resolver dominates relevant structural metrics across held-out domains/G1 policies without hidden knobs.

Then Pass 4 may mark it as a strong **Lab candidate**.

It still does not become Core law.

### Outcome B — domain-conditioned mechanisms survive

Different resolvers work better for dictionary-shaped vs prose-shaped queries.

Then "best match" is not one universal rule under current evidence.

Pass 4 must expose the conditioning variable rather than ask the human to choose by taste.

### Outcome C — precision/coverage frontier

No resolver dominates.

For example:
- strict cross-scale agreement has high precision but low coverage;
- support-first has high coverage but weak specificity.

Then preserve the frontier.

### Outcome D — exact structural retrieval is insufficient

All structural candidates perform near controls or fail useful continuation prediction.

Then the human's current "best match by Star pattern" hypothesis is weakened at this exact mechanism class.

Pass 5 must not pretend it succeeded.

---

# 20. Required Pass-4 products

## Product A — observed mechanism crosswalk

Create:

`docs/plans/language-structure-lace-pass-4-mechanism-map.md`

Map OM-1..OM-11 to:
- current repo mechanism;
- query consequence;
- candidate consequence;
- resolver consequence;
- falsifier.

---

## Product B — retrieval candidate court

Create:

`docs/plans/language-structure-lace-pass-4-retrieval-court.md`

Must define and execute:
- query cone;
- candidate occurrence;
- continuation profile;
- R4-A..R4-J;
- exact parameter freeze;
- rich-query extensions.

---

## Product C — held-out retrieval ledger

Create:

`docs/plans/language-structure-lace-pass-4-retrieval-ledger.md`

At minimum:

| resolver | seed | probe | G1 | coverage | strict top1 | set-hit | top3 | mean n | mean support | abstain | candidate count |
|---|---|---|---|---:|---:|---:|---:|---:|---:|---:|---:|

Also record multiword continuation accuracy.

---

## Product D — witness examples

Create or include a section with at least:

1. one correct long-context selection;
2. one support-first failure;
3. one singleton-confidence failure if observed;
4. one unresolved cross-scale disagreement;
5. one dictionary boilerplate trap;
6. one shuffled-control comparison;
7. one G1-sensitive case if any;
8. D1 pointer-path structural-match example.

Each witness must be replayable.

---

## Product E — findings

Create:

`docs/plans/language-structure-lace-pass-4-findings.md`

It must answer:

- what exactly "Star pattern" can mean at the causal query boundary;
- whether exact structural matching predicts held-out continuation above controls;
- whether one resolver survives;
- whether "most likely" can be stated as empirical branch frequency without hidden weights;
- whether cross-scale agreement helps;
- how corpus/domain affects retrieval;
- whether G1 materially affects conclusions;
- what information Pass 5 may consume for decode;
- what remains forbidden/unestablished.

---

# 21. Execution sources

Execution must re-open current versions of:

1. `docs/math-execution-model.md` S3.1–S3.7, S9–S12;
2. theorem register;
3. sampling-density-emergence Passes 3–5;
4. Behavioral Read Devices Pass-4 Star/projection fidelity;
5. Pass-1 language evidence/findings;
6. Pass-2 boundary/findings;
7. Pass-3 corpus court/density/findings;
8. current systems manifest SM-C20/21 and G4;
9. pointer-emission current fence;
10. source pins from Pass 3.

No historical similarity-based Star proposal outranks current exact structural machinery.

---

# 22. Mechanical discipline

Ephemeral scripts are allowed.

They must:

- operate only on pinned corpus bytes;
- record source pins;
- record tokenization/G1;
- freeze candidate definitions before final evaluation;
- prohibit future leakage;
- use no model/embedding API;
- preserve exact resolver formulas;
- record sufficient aggregate and witness outputs in repo artifacts;
- remain outside `src/`.

If computational cost grows, bound:
- query maximum n;
- number of held-out points;
- top-k branch set;

and state the bound.

Do not silently sample favorable cases.

---

# 23. Authority / evidence stamps

Use:

- **REPRODUCED**
- **PROVED_WITHIN_SCOPE**
- **DERIVED**
- **OBSERVED_LAB**
- **ROBUST-TESTED**
- **G1-SENSITIVE**
- **COMPATIBLE_CANDIDATE**
- **REFUTED**
- **FORBIDDEN**
- **UNRESOLVED**
- **OPEN**

Prediction accuracy alone never yields:
- SOURCE;
- HUMAN;
- LaceFact;
- Core law.

---

# 24. Gap impact court

Pass 4 must explicitly classify:

## G4 retrieval/query

Expected to narrow substantially if query/continuation machinery works.

But:
- this is still a derived read interface;
- no general Core write/query API follows.

## G1

Still open globally.

## G3

Interaction boundary remains as Pass 2 left it. Corpus benchmark events can stay Lab-known.

## RM-A

Unaffected.

Retrieval success does not authorize retention.

## S9/S12

Expected natural home for resolver machinery.

## Pass 5 interface

Pass 4 should end with a precise **structural choice contract** that Pass 5 can attempt to decode.

No natural-language response generation in this pass.

---

# 25. Expected hypotheses

These are allowed to fail.

## H4-A

Longest exact/recurrent context will beat lexical-only prediction on at least some held-out domains.

## H4-B

Singleton-confidence will overfit relative to evidence-aware alternatives.

## H4-C

Support-first and scale-first will exhibit distinct precision/coverage error profiles; neither is assumed universal.

## H4-D

Cross-scale agreement will increase strict precision while increasing abstention.

## H4-E

Intact dictionary will outperform shuffled dictionary on dictionary-shaped multiword continuation.

## H4-F

A prose seed will remain stronger on same-domain prose continuation than a dictionary seed at some scales.

## H4-G

The major resolver conclusions will survive G1-A/B/C.

## H4-H

A structural continuation result can be represented by replayable SearchHandles + branch witnesses without a new stored query index.

---

# 26. Completion gates

Pass 4 is complete only if:

1. OM-1..OM-11 are mapped.
2. Query is explicitly prefix-causal.
3. "Star pattern" has a precise bounded query interpretation.
4. Historical candidate occurrences use replayable handles.
5. "Most likely" inside one pattern is exact empirical branch frequency.
6. R4-A..R4-J are executed or explicitly rejected before execution for a stated reason.
7. Development and held-out evaluation are separated.
8. Alice final evaluation does not reuse Pass-3 first-10k positions.
9. A held-out dictionary-shaped probe exists.
10. Frankenstein within-document control exists.
11. intact/shuffled/headword controls remain.
12. no semantic graph/embedding enters base retrieval.
13. no generic corpus POINTER topology is invented.
14. exact-suffix and richer Star-query results are separated.
15. coverage/abstention is reported alongside accuracy.
16. ties are preserved.
17. no weighted scalar is promoted by convenience.
18. G1-A/B/C sensitivity is reported.
19. witness continuity survives result selection.
20. no result writes Lace.
21. no RM-A inference is made.
22. no response decoder/generator is executed.
23. no law/model/manifest edit occurs.
24. artifacts are indexed.
25. maps is released.
26. Pass 5 remains unopened.

---

# 27. Pass-4 write surface

## May write

- `docs/plans/language-structure-lace-pass-4-mechanism-map.md`
- `docs/plans/language-structure-lace-pass-4-retrieval-court.md`
- `docs/plans/language-structure-lace-pass-4-retrieval-ledger.md`
- `docs/plans/language-structure-lace-pass-4-findings.md`
- optional witness artifact if needed
- this plan status line
- plans README
- maps claim/release

## Must not write

- AGENTS
- live law
- systems manifest / global ASCII
- pointer-emission
- mathematical model / theorem register
- graphics
- source corpora
- src/
- G1 rule
- G3 rule
- RM-A rule
- seed choice
- embedding/vector store
- persistent Star/search index
- decoder/response mechanism
- Pass 5 plan/execution

---

# 28. Relationship to Passes 5–6

```
PASS 1  architecture map                  DONE
PASS 2  boundary/event algebra           DONE
PASS 3  corpus/G1/seed experiment        DONE
PASS 4  structural query/match/rank      THIS PLAN
PASS 5  decode/response/feedback         future
PASS 6  adversarial whole-machine synth  future
```

Pass 4's required handoff to Pass 5 is not "the answer."

It is:

```
current query structure
+
selected/tied historical structural continuation
+
complete replay witnesses
+
declared resolver
+
uncertainty/abstention state
```

Pass 5 can then ask how, or whether, that structure can be turned into language output.

---

# 29. Steward test

With the lace in hand:

- the current loose end has a recent shape;
- older parts of the lace may contain the same shape;
- a longer exact matching shape is more specific, but may have happened only once;
- a short shape may have happened hundreds of times, but says less about where you are;
- if every scale points toward the same next shape, that agreement is real structure;
- if scales disagree, hiding the disagreement inside one weighted number does not make the lace more certain;
- the knot you select must still be traceable back to the exact old passages that made you select it;
- finding a likely next path is not the same as speaking it.

Pass 4 asks the lace:

**"Where have I structurally been here before, what followed, and how much of that conclusion survives when I refuse to smuggle meaning into the comparison?"**

It does not get to answer a different question because embeddings are easier.
