# Language structure / interaction loop — Pass 4 observed mechanism map

**Status:** EXECUTED PASS-4 ARTIFACT.  
**Plan:** [language-structure-lace-pass-4-plan.md](language-structure-lace-pass-4-plan.md).  
**Execution claim:** `b0a2eeda4e1af997f8e46802c33027c064e10ddc`.  
**Execution base:** `2c7b19abf53d87d3b7aa0a64eeebec8ca76ad0a9`.  
**Station:** maps · `ChatGPT-language-structure-pass4`.  
**Authority:** Lab mechanism crosswalk only. No Core/law/model/manifest acceptance.

## 1. Mechanism headline

Pass 4 does not start from an invented similarity function.

It starts from mechanisms already observed or proved:

```
ordered sequence
  + multi-scale recurrence
  + anchored Star/search frontiers
  + replayable SearchHandles
  + continuation branching
  + path/frontier fidelity
  + device-local candidate/resolve machinery
```

and maps each into a retrieval obligation.

## 2. OM crosswalk

| ID | Observed mechanism | Current repository support | Query consequence | Candidate consequence | Resolver consequence | Main falsifier |
|---|---|---|---|---|---|---|
| **OM-1** | ordered sequence carries information | Pass 3 intact dictionary >> identical shuffled tokens at n>=3 | query must preserve word order | candidate is an ordered pattern occurrence, not bag overlap | order-destroying match cannot be primary | shuffled seed performs the same as intact |
| **OM-2** | recursive definition vocabulary creates route reuse | Pass 3 headword↔definition overlap + cross-definition repeated patterns | lexical anchor may open repeated definition-route patterns | candidate can be a PATTERN handle anchored on shared ordinary words | no semantic graph needed | benefit disappears when definitions removed |
| **OM-3** | useful structure exists at multiple scales | Pass 2/3 recurrence ladders; prose vs dictionary scale split | query is a scale family, not one fixed n | one current position yields several exact historical pattern candidates | resolver must confront specificity vs support | one n works universally |
| **OM-4** | local definition order matters more than global entry order | Pass 3 whole-entry shuffle retains most longer recurrence | do not depend on canonical dictionary file order | local pattern witnesses remain valid across entry reorder | global source ordinal is not relevance | entry reorder destroys result |
| **OM-5** | seed utility is prefix-causal | Pass 3 dictionary-before-Q vs after-Q | query through must name a causal prefix | historical candidates must end before target | future leakage invalidates result | target/future appears in match |
| **OM-6** | major structural effects survived G1-A/B/C | Pass 3 ROBUST-TESTED result | main mechanism should be rerun under each bounded G1 | candidate identity is convention-bounded | no tokenizer chosen by retrieval success | resolver ordering reverses |
| **OM-7** | recurrence includes boilerplate | Pass 3 formulaic OEWN repeated phrases | support cannot equal relevance | high-support pattern may still be a bad held-out predictor | support-first must face boilerplate traps | high-support formula wins and fails |
| **OM-8** | anchors have heterogeneous frontiers | prior QUESTION/ANSWERS/IS search court; Pass 3 high/mid/low anchors | frontier size must be observed, not normalized away | candidate counts vary greatly by anchor | abstention/ambiguity must be reported | hidden stop-word rule |
| **OM-9** | SearchHandle is replayable disposable state | S3.6 / sampling Pass 5 | query/candidate can be reconstructed from prefix + handle | no persistent search index required | chosen result must keep witnesses | result cannot be replayed |
| **OM-10** | frontier/path preservation outranks scalar collapse | maximal/Pareto/closure failures; PATH-1 | preserve multi-scale candidate set until resolution | losing/tied candidates remain reconstructible | partial orders/agreement may be preferable to scalar score | winner-only result deletes evidence |
| **OM-11** | retained POINTER path is a separate layer | PATH-1, D1 pointer witnesses | corpus-text baseline cannot pretend generic pointer topology | POINTER candidates only where lawful retained rows exist | text benchmark and D1 path benchmark stay separate | pointer fiction on OEWN/prose |

## 3. Causal query mechanism

For a probe sequence with already observed prefix:

[
x_0,ldots,x_t
]

and frozen maximum query depth:

[
m=6,
]

the Pass-4 query cone is:

[
mathcal Q_t
=
{
(x_t),
(x_{t-1},x_t),
ldots,
(x_{t-n+1},ldots,x_t)
}
]

for every valid:

[
1le nlemin(6,t+1).
]

No target word (x_{t+1}) belongs to the query.

For each query pattern p, the historical seed is scanned for exact ordered occurrences whose complete pattern and following continuation are already inside the named seed prefix.

That produces a replayable pattern handle plus continuation witness positions.

## 4. Match mechanism

Pass 4 base matching is:

[
ExactMatch(p,h)
]

where the ordered identities of query pattern p equal the ordered identities of a historical occurrence h.

No:
- embedding distance;
- synonym folding;
- semantic graph relation;
- edit distance;
- arbitrary weighted similarity

enters the base court.

The structural **match depth** is the largest n for which an exact historical suffix-pattern candidate exists.

## 5. Continuation mechanism

For exact historical pattern p:

[
Count_p(c)
]

counts historical occurrences of p followed by continuation identity c.

Then:

[
N_p=sum_c Count_p(c)
]

is continuation support and:

[
hat P(c|p)=Count_p(c)/N_p
]

is a descriptive historical branch frequency.

The modal continuation set is:

[
Modes(p)=argmax_c Count_p(c).
]

This is the first rigorous bounded meaning of "most likely" in the campaign.

It means:

> among witnessed historical exact occurrences of this one pattern, which continuation branch occurred most often?

It does **not** mean truth, semantics, optimality, Core authority, or a response.

## 6. Resolver problem

The remaining experimental question is:

> when several scales p are simultaneously available, which p is allowed to supply the continuation profile?

This is not settled by existing source/law.

The frozen resolver court is therefore device-local:

- R4-A lexical only;
- R4-B longest exact suffix;
- R4-C longest recurrent suffix, with experimental support floor 2;
- R4-D maximal continuation support;
- R4-E scale first, then support;
- R4-F support first, then scale;
- R4-G maximal empirical branch confidence;
- R4-H Pareto frontier over scale/support/confidence, resolve only on continuation agreement;
- R4-I cross-scale modal agreement;
- R4-J dominance frontier over scale/support, resolve only on continuation agreement among maxima.

No formula is promoted by this map.

## 7. Frozen execution constants

Frozen before final held-out scoring:

| parameter | value |
|---|---|
| maximum exact query depth | 6 |
| primary continuation length | 1 |
| multiword continuation lengths | 2, 3, 4, 5 |
| top-k branch reports | 3 and 5 |
| recurrent support floor in R4-C | 2 |
| G1 policies | A, B, C from Pass 3 |
| seed token budget | 20,000 per corpus/control |
| Alice final probe | tokens 10,000–19,999 |
| Frankenstein locality probe | tokens 20,000–29,999 |
| held-out OEWN development | first 5,000 held-out definition tokens after Pass-3 source slice |
| held-out OEWN final | next 10,000 held-out definition tokens after development |
| tie policy | preserve ties; no lexical tie-break |
| weighted scalar | none |

## 8. Evaluation semantics

The base benchmark searches the fixed 20k seed only.

The observed query context comes from the probe prefix, but earlier probe words are **not added to the historical candidate seed** during the fixed-seed comparison.

Reason:

this isolates what structural prior each seed already supplied before the probe.

A later growing-history comparison may be reported separately, but must not replace the fixed-seed court.

Thus:

```
seed is frozen historical evidence
probe prefix supplies query shape
probe target remains unseen
```

## 9. Evidence/witness contract

Every resolved result must retain enough Lab data to reconstruct:

- seed identity and G1 policy;
- seed prefix limit;
- query end and n;
- matched pattern;
- historical occurrence starts;
- continuation counts;
- resolver candidate set;
- selected/tied continuation roots;
- target identity used only for scoring after selection.

The stored artifact may summarize aggregate runs, but witness examples must print all of these fields.

## 10. Pointer-layer separation

For OEWN / Alice / Frankenstein:

```
Lexical + exact pattern structure only
```

because the Lab corpus streams have no authorized generic RM-A pointer topology.

For D1:

```
Lexical + actual retained POINTER witness paths
```

may be inspected.

This separation is mandatory.

## 11. Mechanism verdict before scoring

```
QUERY CONE                         DEFINED / DERIVED
EXACT HISTORICAL PATTERN MATCH    DEFINED / DERIVED
BRANCH FREQUENCY                  DEFINED / DERIVED
MOST-LIKELY WITHIN ONE PATTERN    DEFINED AS EMPIRICAL MODE
CROSS-SCALE CONTROLLING PATTERN   OPEN / RESOLVER COURT
SEMANTIC SIMILARITY               NOT USED
PERSISTENT SEARCH STORE           NOT NEEDED
RETRIEVAL WRITE AUTHORITY         NONE
RM-A EFFECT                        NONE
```

Pass 4 now has a machine to test rather than a metaphor to admire.
