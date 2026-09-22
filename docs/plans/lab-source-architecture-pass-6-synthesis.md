# LAB SOURCE ARCHITECTURE — Pass 6 cross-family synthesis matrix

**Status:** executed audit artifact for Pass 6. **NOT CANONICAL ARCHITECTURE.**  
**Authority:** current manifest/catalog + executed Passes 2–5.  
**Purpose:** type-check cross-family compositions and identify the first illegal/missing edge. If this file conflicts with current law, this file loses until a separate reconciliation occurs.

## 1. Adapter stamps

Only these are admissible:
- **IDENTITY**
- **DERIVED**
- **FROZEN-PREMISE**
- **SOURCE-DEFINED**

These stop a chain:
- **EDITOR-ADAPTER**
- **UNAVAILABLE**
- **AUTHORITY-FORBIDDEN**

A chain's evidentiary authority is no stronger than its weakest edge.

## 2. RM signatures

| Face | Input | Output |
|---|---|---|
| **RM-A RETAIN** | sampling-derived structural evidence | authority-backed retain decision / retained-relation description |
| **RM-B MATERIALIZE** | selected ephemeral sampled structure | addressable existing Lace operands and/or one lawful grounded Lace point |
| **RM-C ROLE/ORDER** | candidate relation / operand set + lawful role evidence | ordered Lace operand roles |

## 3. Strongest-chain attack

| Chain | Composition | First illegal / missing edge | Stamp | Result |
|---|---|---|---|---|
| **C1** | L-M20 sampling → Aftermath → B8 → Join | Aftermath may discover/re-circulate possible earlier participation, but **B8 consumes an already-recorded touch**. No edge says a discovered pair becomes that recorded touch. | **UNAVAILABLE RM-A edge** | FAIL |
| **C2** | A5 repetition → count → HCC-A weight/prune → retain | A5 supports repeated passage; the integer count is a LAB-PROXY. No source defines count → HCC-A weight, and HCC-A does not provide the exact keep predicate needed here. | **EDITOR-ADAPTER** | FAIL |
| **C3** | L-M20 sampling → Kauffman capstan → retain | No lawful edge maps Lace structural evidence to physical tensions / wrap angle / friction. A no-slip certificate is also not a retention decision. | **EDITOR-ADAPTER** at input, then wrong output | FAIL |
| **C4** | L-M20 sampling → Rowlands nilpotency → retain | No source/current-law edge maps sampled Lace structure to the Rowlands algebraic state. | **EDITOR-ADAPTER** | FAIL |
| **C5** | L-M20 sampling → Xiao model selector → retain | Requires trained model/vocabulary/probability state not derivable as lawful Lace state; token choice is not retained-relation output. | **UNAVAILABLE / AUTHORITY-FORBIDDEN** | FAIL |
| **C6** | L-M20 sampling → AgentScope Stage 2 → Join | No lawful edge maps structural sampling evidence to ReAG/ISR/neural-invariant/LLM evidence, nor failure candidates to Lace relations. | **EDITOR-ADAPTER / UNAVAILABLE** | FAIL |
| **C7** | AgentScope Stage 2 → Stage 3 decisive choice → retain | Stage 3 explicitly uses full trajectory / degraded outcome to judge downstream impact. | **UNAVAILABLE future information / prefix-illegal** | FAIL |
| **C8** | Water F3 Pair → L-M19 | F3 needs two OBS inventories and names no way to select/derive them from one-strand Lace sampling; DELTA→Lace relation correspondence is also not source-defined. | **UNAVAILABLE / EDITOR-ADAPTER** | FAIL |

### RM-A synthesis result

Every strongest chain fails **before** producing a lawful RM-A retain decision.

The repeated failure is not lack of selector-shaped machinery. It is lack of an authority-backed correspondence from **Lace structural evidence** to the selector/retainer's native input/output domain.

## 4. Independent RM-B proof — contiguous selected sample

Current sampling uses the ordered contiguous cell:

\[
S[n,t]=(r_{t-n+1},\ldots,r_t).
\]

Current facts already admitted:
1. **H3 / L-M04:** every successful word arrival has its own addressable WORD row.
2. **Sampling/search WORD-row discipline:** a sampled occurrence is reconstructed against the immutable Lace prefix by walking rows and counting WORD rows while ignoring interleaved POINTER rows.
3. **SM-C19 / L-M19:** any finite **ordered sample of already-existing Lace points** may be grounded into one later addressable point by repeated binary Join.

Therefore, once RM-A has selected a specific contiguous cell:

~~~text
selected S[n,t]
    |
    | DERIVED from n,t + immutable prefix
    v
ordered source positions t-n+1 ... t
    |
    | DERIVED by WORD-row replay
    v
ordered existing WORD rows
    |
    | IDENTITY with SM-C19 input type
    v
finite ordered addressable sample
    |
    | DERIVED by L-M19
    v
one later addressable Lace point
~~~

No semantic model, second store, oracle answer, or editor adapter is required.

### D1 controls

D1 WORD-position → row map:

~~~text
position 0 PIE       → row 0000
position 1 DESSERT   → row 0001
position 2 PIE       → row 0003
position 3 WHOLE     → row 0005
position 4 CUSTOMER  → row 0008
~~~

#### Existing retained cell 1

\[
S[2,1]=(\text{PIE},\text{DESSERT})
\]

derives rows:

\[
(0000,0001)
\]

and one binary grounding step gives:

\[
Join(0000,0001)=0002
\]

which matches D1.

#### Existing retained cell 2

\[
S[2,3]=(\text{PIE},\text{WHOLE})
\]

derives rows:

\[
(0003,0005)
\]

and:

\[
Join(0003,0005)=0006
\]

which matches D1.

#### Unretained but materially groundable control

\[
S[2,2]=(\text{DESSERT},\text{PIE})
\]

derives existing rows:

\[
(0001,0003).
\]

If RM-A selected this cell, one legal materialization is:

\[
Join(0001,0003).
\]

D1 does **not** contain that row. This is not a contradiction: RM-B proves **materialization capability after selection**, not a rule requiring the cell to be retained.

### RM-B verdict for this class

\[
\boxed{
\text{RM-B is derivable for a selected finite contiguous sample occurrence}
}
\]

provided its constituent WORD occurrence rows are within the named prefix.

This is a **class-specific partial closure**, not a general closure for every possible sampled structure.

## 5. RM-B limits

### Pattern class as an abstract object

A handle such as PATTERN(n, exemplar_start) can reconstruct:
- ordered root-key tuple;
- every occurrence start;
- support;
- extension structure.

But “materialize the pattern class” still requires a representation choice:
- one exemplar occurrence?
- all occurrences?
- the tuple of roots?
- a relation among grounded occurrences?

Current evidence does not choose among those.

### Noncontiguous/cross-level sampled structures

A structural ridge, branch, star-hop, or relation among sampled cells may be reconstructible, but the exact finite operand set that is **the thing to materialize** must be supplied by the candidate's own lawfully defined structure.

### Topology uniqueness

L-M19 proves representability, not canonical topology.

For larger samples, a left-fold grounding of constituent WORD rows need not match the nontrivial topology of an existing D1 retained point with the same WordPos coverage.

Petersen–Zech's non-identification lesson applies here:

~~~text
same finite coverage / fit
    !=
same generating relational topology
~~~

Therefore RM-B closure means “can produce one lawful addressable representative,” not “has reconstructed the unique true relation history.”

## 6. Independent RM-C proof

### Closed class: RootTouch

Already current:

\[
(new\ occurrence,\ root)
\]

H1/H4 close both trigger and role order for L-M18.

### Newly demonstrated closed class: contiguous sample grounding

A cell:

\[
S[n,t]=(r_{t-n+1},\ldots,r_t)
\]

is an **ordered sample by definition**.

The derived WORD-row list preserves that same source order.

SM-C19 consumes a finite ordered sample:

\[
(s_1,\ldots,s_n)
\]

and its grounding ladder follows that order.

Therefore RM-C is locally closed for the operation:

> ground this selected contiguous sample occurrence as an ordered finite sample.

This does **not** establish:
- universal D1 ref_A/ref_B semantics;
- semantic subject/object ordering;
- role order for arbitrary relation-between-relations;
- ordering for an abstract unordered pattern class.

### RM-C verdict

\[
\boxed{
\text{RM-C is candidate-class-specific, and is closed for at least:
RootTouch + contiguous sample grounding}
}
\]

The generic RM-C face remains open for candidate classes whose own lawful structure does not already define an order.

## 7. Minimal missing-edge register

After deduplicating C1–C8, the failed RM-A chains collapse to one primary missing correspondence with several domain-specific manifestations:

### MISSING-A — authoritative retention mapping

~~~text
sampling-derived structural evidence
        |
        X
        |
authority-backed decision that
THIS discovered structure
deserves durable retention
~~~

Candidate families try to fill the X with:
- behavioral weights/pruning;
- recirculation;
- physical stability;
- nilpotent validity;
- learned probability;
- evidence-backed diagnostic retention.

But every such bridge requires either:
- an editor mapping from Lace evidence into another domain;
- unavailable/forbidden side state;
- wrong output type;
- future/global evidence.

### MISSING-B — only for sampled structures whose constituent Lace operands are not already derivable

For a selected contiguous sample occurrence, MISSING-B is **not present**.

It remains for abstractions such as pattern classes/cross-level structures when their identity does not itself specify a finite addressable operand set.

### MISSING-C — only for candidate classes without intrinsic order

RootTouch and contiguous sample grounding have class-specific order.

Generic relation role/order remains open only where the candidate's own lawful structure does not supply it.

## 8. Authority-composition result

No failed RM-A chain can be rescued by stacking authorities.

Examples:

~~~text
A5 SOURCE
    → LAB-PROXY count
    → HCC-A source word “weight”
~~~

does not make the middle edge source-defined.

Likewise:

~~~text
L-M20 HUMAN/DERIVED
    → editor ReAG adapter
    → AgentScope SOURCE retention
~~~

remains an editor construction.

The strongest authority on both ends cannot erase an invented middle edge.

## 9. Synthesis verdict

Pass-6 thesis:

> At least one RM face can be narrowed or partially closed by composing already-harvested machinery with only legal edges.

**RESULT: HOLDS.**

- **RM-A:** remains open; no lawful cross-family retain decision.
- **RM-B:** **partially closed** for selected finite contiguous sample occurrences whose constituent WORD rows are reconstructible from the prefix.
- **RM-C:** **partially/class-specifically closed** for RootTouch and contiguous sample grounding; generic relation role/order remains open.

No composed RM-A candidate reaches the retention harness, so the harness is unchanged.
