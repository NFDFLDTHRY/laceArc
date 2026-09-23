# Language structure / interaction loop - Pass 1 plan

**Status:** PLAN - NOT EXECUTED.  
**Campaign position:** Pass 1 of 6. Only Pass 1 is authorized by this file. Passes 2-6 are a provisional horizon, not executable plans.  
**Station:** maps.  
**Pinned main before claim:** `c6f047a4ffe208cc8bbdcec4c41f15763c21dcf9` (2026-09-23).  
**Planning claim:** `7cd0281a24dc6da72b257ae8a3abea67bb9699a6`.  
**Human acceptance:** ABSENT.  
**Core / RM-A / pointer acceptance / implementation:** unchanged. No `src/`.  
**Purpose:** rigorously map the human's current language-as-structure and interaction-loop hypothesis onto the existing repository, identify what the tree already supports, what it contradicts, what it leaves undecided, and which old gaps are actually the same problem under different names.

This pass must not turn the human's current hypothesis into law merely because it is attractive. It is an evidence-mapping pass.

---

## 0. Human hypothesis to map, not accept

The current human description has two coupled parts.

### HYP-L - language is structure

> "What is language? Language is a collection of variables defined by other variables that appear in specific sequences over time. The intelligence is in the structure. The human already know how to interpret the structure as the individual human is speaking the structure. Lace seed is the dictionary because it is the most dense and available seed. Every word is defined by words that are themselves defined by more words. That is the definition of structure inside of lace."

### HYP-I/O - interaction history is proving ground

> "All input and output must arrive on lace because then that gives us a proving relational ground from the perspective of input / output and how they match together. Then it's select best match by star pattern as search pattern and produce the most likely star pattern, decode that star pattern and respond to the user."

These are **human hypotheses under analysis**, not new H-rulings, not pointer-contract acceptance, and not permission to repair RM-A by declaration.

Pass 1 asks whether the existing tree already contains the pieces of this machine, and where the actual missing interfaces are.

---

## 1. Why this pass exists

The mathematical execution findings handoff changed the shape of the problem.

It established that:

1. the tree proves source silence and candidate exhaustion around RM-A, but had only assumed underdetermination until two distinct mechanisms were exhibited;
2. Mechanism A and Mechanism B both reproduce D1 exactly and diverge outside D1;
3. the sampling-driven component of any retention mechanism is constrained by no current specimen;
4. "human ruling required" is a repository-governance consequence, not a mathematical theorem;
5. "retain-when belongs to Core" is itself assumed, not proved;
6. the "Lace records events" framing is not refuted, but requires a crossing-set definition and must exclude at least rendered views and purely local device outputs.

The human has now supplied a broader architectural hypothesis: the durable strand may be the relational history of actual interaction, seeded by recursively defining language, while structural intelligence lives in derived Star reads and matching rather than in stored semantic payloads.

The repository already contains old material pointing in this direction. Pass 1 must recover and classify it before proposing any new mechanism.

---

## 2. Measured repository evidence already visible before execution

These are planning measurements, not the Pass-1 findings. Execution must reopen the cited surfaces and verify them against the pinned execution tip.

### 2.1 Recursive language structure already exists in live law

`docs/law-why-these-documents.md`, around the current **MEANING in this project** block, states:

- a word is defined by words;
- those words are defined by words;
- the walk loops because the wire is infinite.

`AGENTS.md` carries the same current interpretation and adds that project meaning is a word defined by words recursively, that seeing a definition-route is a **view**, and that it does not itself choose an arbitrary Join relation.

So "language as recursive relational structure" is not new to the repository.

What is new is the human's proposed use of that structure as the basis for the complete input -> structural search -> decode -> response loop.

### 2.2 Dictionary text is already ordinary Lace input, not a second lexicon

`docs/history/relationship-evidence-pass-1-findings.md` §3 says further definition text participates as further routes through the same ordinary word-stars when fed.

`docs/history/relationship-evidence-pass-2-findings.md` says further definition text is more arrivals through ordinary stars on the same line, not a glossary field on the WORD row.

`docs/graphics/prefix-device-pass-4-plan.md` N4 says:

`Dictionary-on-lace = Arrive applied to definition-route words`

and explicitly rejects an outer lexicon / Seed functor interpretation.

`docs/atomic-primitives-map.md` currently distinguishes:

- Dictionary wiring
- Document feed
- Conversation and provenance routes

while saying all use the same strand / arrival / route machinery and that naming a route family creates neither a new row type nor a boundary encoding.

Thus "dictionary as seed" has a strong repository ancestor, but **"the dictionary is the densest and therefore preferred initial corpus"** is still a bootstrapping hypothesis, not current law.

### 2.3 The tree already forbids the obvious fake dictionary implementation

Current law and history explicitly reject:

- interned dictionaries;
- stored meanings / gloss fields;
- automatic dictionary lookup as Core law;
- recursive expansion routines as an inferred consequence;
- transitive closure / BFS as the meaning mechanism;
- a second lexicon or Star store.

This pass must not revive those mechanisms under friendlier names.

### 2.4 Star search is already a derived read, not storage

`docs/atomic-primitives-map.md` states:

- Star formation depends on occurrences and Join ancestry;
- Star is not a Star record;
- Star search is derived, not stored.

The current mathematical model distinguishes Root, StarWords, Reach, paths, projections, and device-local read machinery. It does **not** yet define the human's phrase "Star pattern" as one canonical mathematical object.

Pass 1 must therefore map possible meanings of "Star pattern" onto existing reads without inventing one.

### 2.5 Input / output history has partial ancestors but no current crossing algebra

Current machinery already has:

- successful input arrival -> WORD;
- external behavior / world feedback -> later new input in the HCC behavioral source mapping;
- S9 feedback in which emitted behavior may return as a later input;
- historical ShoeLacey synthesis evidence that a response **may** be appended, preserved only as historical evidence, not current laceArc law.

The findings handoff also states that the current tree has no mathematically defined crossing set separating:

- device-local output,
- rendered projection,
- externalized action / response,
- later admitted input.

So "all input and output arrive on Lace" cannot be evaluated honestly until those are separated.

### 2.6 The tree already has a hard no-write-back fence

Current law says:

- projection/view does not write Lace;
- device-only output has no automatic retention authority;
- derived candidates and working state are disposable;
- RootTouch is a rule-driven structural append that is not itself an external boundary event.

Therefore a viable event-history formulation cannot mean "everything a subsystem emits internally becomes a row."

It needs at least:

```
local device output
      !=
rendered view
      !=
external crossing
      !=
later admitted input
```

and it must explain where rule-driven structural Joins sit relative to those categories.

---

## 3. Pass-1 question

**Can the human's language-structure / dictionary-seed / interaction-history / Star-search / decode-response hypothesis be decomposed into precise candidate interfaces and mapped against current Lace evidence without accepting any new Core rule, RM-A rule, search policy, boundary rule, or decoder?**

The output is a map of what is already present and what remains missing.

Not a design verdict.

---

## 4. Pass-1 thesis and falsifiers

### Thesis

The current repository already supports a substantial skeleton:

```
ordinary language text
        |
        | Arrive
        v
one append-only Lace
        |
        +--> recursive definition routes
        |
        +--> conversation / document / provenance routes
        |
        +--> derived Star / Reach / projection reads
                              |
                              v
                     non-Core reader/device
```

and the human's new proposal can be decomposed so that the genuinely new work is concentrated in a small number of interfaces:

1. boundary crossing;
2. event envelope / identity;
3. structural query object ("Star pattern");
4. structural similarity / ranking;
5. decode / response construction;
6. response -> crossing -> later Lace participation;
7. interaction of this loop with RM-A and the surviving A/B execution mechanisms.

### Falsifiers

Pass 1 loses if any of the following is required and hidden:

1. **Second-store falsifier:** dictionary seeding requires a privileged lexicon, meaning table, embedding store, graph DB, or extra authoritative history.
2. **Projection-write falsifier:** "output" must include a rendered view, causing Contract III write-back.
3. **Semantic-chooser falsifier:** Star matching requires semantic meaning to be stored or treated as Core relation authority.
4. **RM-A smuggling falsifier:** "all input/output" is silently used as the missing retain-when rule before "input/output crossing" has a mathematical definition.
5. **Device-authority falsifier:** a local S9/S12 candidate or score is promoted to Lace solely because the device produced it.
6. **A/B preference falsifier:** Pass 1 chooses eager collapse or single chain because one "looks more intelligent."
7. **H2 falsifier:** the plan treats "one point represents the entire lace" as a mandatory execution rule without proving whether H2 is capability or obligation.
8. **Dictionary-expansion falsifier:** "dictionary seed" becomes automatic recursive definition expansion or traversal.
9. **Star-object falsifier:** "Star pattern" is treated as a single already-defined object when the model currently has several distinct read surfaces.
10. **Intelligence-location falsifier:** a slogan such as "intelligence is in the structure" is stamped as Core law without a testable mathematical interpretation.

If a falsifier fires, the findings must narrow or reject the affected hypothesis. Do not "repair" it by convenience.

---

## 5. Vocabulary court - terms Pass 1 must separate before reasoning

Pass 1 must build a vocabulary table with exact current-repo equivalents or mark `OPEN`.

| Human term | Must be separated into | Current likely surfaces | Pass-1 duty |
|---|---|---|---|
| input | submitted text; admitted arrival; WORD event; event envelope | Arrive; reduction SUBMIT/STEP; G1/G3 opens | identify boundary and unit without choosing encoding |
| output | local device `y_t`; rendered projection; external action/response; later returned input | S9.7/S9.8; Contract III; HCC behavior output | prove these are not one thing |
| event | boundary crossing vs rule-driven structural append | no current canonical object | map, do not define as law |
| dictionary seed | ordinary definition-route corpus used early | law meaning block; prefix-device N4; atomic map | distinguish structural role from privileged store |
| variable | WORD occurrence/value vs Layer-III label on geometry | Graphic D / atomic map | prevent symbol/value/label collapse |
| definition | ordered route through ordinary stars | law; relationship-evidence passes | preserve no stored gloss |
| sequence | arrival order / route / sample order | S2-S4; atomic map | distinguish adjacency from retained relation |
| Star | Root/occurrence formation; StarWords; FullStar concept; derived projection/search | S3.1-S3.7; STAR-1 | do not collapse distinct reads |
| Star pattern | currently undefined candidate query object | likely derived read/device layer | enumerate lawful candidate interpretations |
| match | exact structural equality; partial structural similarity; ranking score | not one current Core operation | keep outside Core unless evidence says otherwise |
| best / most likely | ranking / probability over candidate reads | S12-like device-local machinery | identify evidence/support obligation |
| decode | reconstruct structure; generate candidate text; choose response | currently not one operation | split into stages; do not invent semantics |
| response | externalized user-facing act | HCC behavior output; S9 feedback | distinguish from local candidate/output |
| feedback | response changes world; later input re-enters | HCC H-BM10; S9.7 | map to immutable history |
| intelligence | ability to exploit relational structure | no canonical Core term | turn into testable claims or leave philosophical |

No later pass may use these words ambiguously after Pass 1.

---

## 6. Evidence surfaces Pass 1 must read

Execution must read the current versions, not rely on this planning summary.

### Court and substrate

1. `AGENTS.md`
2. `docs/law-why-these-documents.md`
3. `docs/graphics/README.md`
4. all four canonical PNGs, directly sighted as required by AGENTS
5. all four current graphics ASCII companions
6. `docs/systems-manifest.md`
7. `docs/systems-manifest-ascii.md`
8. `docs/atomic-primitives-map.md`
9. `docs/pointer-emission.md`

### Mathematical execution

10. `docs/math-execution-model.md`
11. `docs/math-execution-model-theorems.md`
12. `docs/plans/math-execution-model-findings-handoff-2026-09-23.md`
13. `docs/plans/reduction-pass-2-execution-model.md`
14. `docs/plans/lab-source-architecture-pass-6-design-docket.md`
15. `docs/plans/lab-source-architecture-pass-6-findings.md`

### Language / dictionary ancestry

16. `docs/history/relationship-evidence-pass-1-findings.md`
17. `docs/history/relationship-evidence-pass-2-findings.md`
18. `docs/graphics/prefix-device-pass-4-plan.md`
19. relevant recovered-history passages that mention response/history, clearly marked historical

### Reader / behavioral machinery

20. S9-S12 in the model
21. Pass-5 HCC, Coffee Cup, and Water device blueprints where input/output/feedback are explicit
22. the 71-row source obligation ledger for behavioral consequences
23. Pass-4 Star/projection fidelity artifact

If execution discovers a current successor or qualification, follow it. Historical material may explain ancestry but cannot outrank current law.

---

## 7. Required Pass-1 products

Execution is allowed to create analysis artifacts only. It must not edit the model, manifest, ASCII companion, pointer draft, law, graphics, or current behavioral blueprints.

### Product A - evidence matrix

Create:

`docs/plans/language-structure-lace-pass-1-evidence-map.md`

One row per hypothesis / subclaim:

| ID | Claim | Current evidence | Authority | SUPPORTS | TENSION | CONTRADICTS | UNDECIDED | Missing interface |
|---|---|---|---|---|---|---|---|---|

Minimum claim families:

- LS-1 recursive definitions create reusable relational structure;
- LS-2 dictionary is lawful ordinary seed material;
- LS-3 dictionary is the preferred / dense initial corpus;
- EV-1 every admitted external input appears on Lace;
- EV-2 every externally emitted response appears on Lace;
- EV-3 projections do not count as external emissions;
- EV-4 rule-driven structural appends coexist with event recording;
- SR-1 a derived Star read can serve as a structural query pattern;
- SR-2 candidate Star patterns can be compared without stored meaning;
- SR-3 ranking / likelihood is reader/device machinery, not authoritative storage;
- DC-1 a matched structure can be decoded into a candidate response;
- DC-2 candidate response is not yet a boundary event;
- FB-1 external response may later return to the same Lace interaction history;
- PR-1 input/output relational history can provide replayable evidence for evaluating future predictions;
- RM-1 this architecture removes, narrows, relocates, or leaves unchanged RM-A;
- AB-1 the architecture distinguishes Mechanism A from B, or does not.

No row may use "obvious" as evidence.

### Product B - typed interaction-loop map

In the same artifact, draw an ASCII topology using explicit edge verbs and authority stamps:

```
[external input]
      |
      | CROSSES?          [OPEN if crossing set undefined]
      v
[admitted arrival] --APPENDS--> [Lace]
                                   |
                                   | DERIVES / READS ONLY
                                   v
                            [structural read]
                                   |
                                   | MATCHES / RANKS ?  [candidate]
                                   v
                            [reader/device state]
                                   |
                                   | GENERATES ?        [candidate]
                                   v
                           [candidate response]
                                   |
                                   | CROSSES ?          [OPEN]
                                   v
                           [external response]
                                   |
                                   | later environment/user act
                                   v
                           [future external input]
```

Alongside it, show the separate structural-append path:

```
[Lace prefix] --RULE-DRIVEN--> [RootTouch / legal Join append]
```

The diagram must not imply that a read, score, projection, or local output writes Lace.

### Product C - gap-impact map

Map the hypothesis against current named gaps / interfaces:

- RM-A
- RM-B
- generic RM-C
- G1 word equality
- G3 boundary / provenance representation
- G4 query/read interface
- C6 route-family discriminator
- R3 carrier
- GAP-HOST
- TARGET
- S9/S10/S11/S12
- H×C×W coupling

For each: **unchanged / narrowed / relocated / split / contradicted / newly exposed**.

The classification is evidence, not a desire.

### Product D - findings receipt

Create:

`docs/plans/language-structure-lace-pass-1-findings.md`

It must state:

- every input source opened;
- every current/historical authority distinction;
- exact hypothesis dispositions;
- contradictions;
- the minimum missing interfaces;
- whether the six-pass horizon still makes sense after evidence;
- no architectural acceptance.

---

## 8. Analysis tasks in execution order

### T0 - Ground and pin

- pull / refresh to current main;
- claim maps;
- record execution pin;
- verify no relevant newer Fable / math / global-ASCII commit has landed since planning;
- direct-sight the four PNGs before proposing structural mappings.

### T1 - Recover the language lineage

Trace the existing chain:

```
word defined by words
    -> definition route
    -> ordinary star reuse
    -> further definition text arrives
    -> same Lace, no privileged lexicon
```

Identify every point where historical attempts added forbidden machinery such as intern dictionaries, recursive lookup, closure walkers, or a second store.

The purpose is to distinguish the **idea** from old failed implementations of the idea.

### T2 - Decompose "dictionary seed"

Test separately:

1. lawful: a dictionary corpus can be fed first using ordinary arrivals;
2. structural: recursive definitions create dense repeated participation opportunities;
3. empirical: dictionary is actually denser / more useful than alternative corpora;
4. architectural: dictionary must be the seed.

Only (1) currently appears close to established. Do not promote (2)-(4) without evidence.

Define what measurement would establish "dense" without using stored semantics:
- repeated variable occurrence;
- definition-route reuse;
- Star/Reach connectivity;
- coverage;
- route diversity;
- structural recurrence.

Measurements are proposals only in Pass 1.

### T3 - Decompose input and output

Build a four-way boundary matrix:

| Surface | Local? | External crossing? | Appends Lace today? | Current authority |
|---|---:|---:|---:|---|
| admitted user/environment input | | | | |
| device-local `y_t` | | | | |
| rendered projection/view | | | | |
| user-facing response/action | | | | |
| later feedback/input | | | | |
| RootTouch / rule-driven Join | | | | |

This is the central test of "all input/output."

If "output" remains overloaded, Pass 1 must end with distinct temporary names rather than one false rule.

### T4 - Decompose "Star pattern"

Inventory current read objects:

- Root
- StarWords
- WordTrace / ValueTrace
- Reach
- Paths
- SearchHandle
- projections `pi_k`
- FullStar as a fidelity concept
- any current device observation `Omega`

For each ask:

- is it reconstructible from Lace?
- does it preserve multiplicity / order / path structure?
- is it canonical or policy-dependent?
- can two different Lace structures map to the same read?
- can it be compared without external semantic state?

The output is **not** a new Star definition. It is a candidate query-object court for Pass 4.

### T5 - Decompose "best match / most likely"

Separate at least:

1. exact structural match;
2. partial structural match;
3. policy-weighted structural similarity;
4. probability over candidate responses;
5. evidence support / replayability.

Map each to current S9-S12 machinery and fences.

Pass 1 must explicitly test whether "best match" can remain device-local while Lace remains an evidence substrate.

No score becomes retention authority in this pass.

### T6 - Decompose "decode"

At minimum distinguish:

```
selected historical structure
        |
        +--> reconstruct referenced words / routes
        +--> expose structure as context
        +--> generate candidate response
        +--> choose among candidate responses
        +--> externalize one response
```

Determine which stages already have repo machinery, which belong to holder/device behavior, and which are completely absent.

"Decode" must not be allowed to hide five missing algorithms behind one verb.

### T7 - Map the feedback / proving loop

Test the proposed evidence cycle:

```
input
  -> recorded structure
  -> structural read
  -> candidate match
  -> response
  -> later feedback/input
  -> replayable evidence about the prior match
```

Ask exactly what can be proven from immutable history:

- that a response followed an input;
- that later input followed the response;
- that a structural pattern recurred;
- that a candidate was supported by named prior Lace;
- versus stronger claims like correctness, causality, truth, or optimality.

Do not call temporal succession "proof of correctness."

### T8 - Revisit RM-A without solving it

For each version of the interaction loop, state whether RM-A:

- still decides structural Joins;
- is reduced to a smaller class;
- moves to a boundary crossing definition;
- moves to device policy;
- splits into separate event-admission and structural-participation questions;
- disappears only by smuggling a selector elsewhere.

Use the Fable handoff's six conflation loci as mandatory attacks.

### T9 - Attack Mechanism A vs B

Do not choose.

Ask whether the language / event / dictionary / Star-search architecture supplies a new constraint that distinguishes:

- eager frontier collapse;
- single-chain closure.

Specifically inspect H2 again as **capability vs process obligation** without taking a ruling.

If the new architecture implies a whole-active-context covering point, write down the exact premise that would force it. If that premise is not already authoritative, stamp it `OPEN`.

### T10 - Write findings and stop

No Pass 2 plan is written during Pass 1 execution.

The findings may recommend the Pass-2 question, but the human convenes Pass 2.

---

## 9. Pass-1 expected disposition board

These are hypotheses, not promised results.

| Question | Planning expectation |
|---|---|
| recursive definition structure is part of project meaning | likely SUPPORT |
| dictionary text can be ordinary first corpus | likely SUPPORT |
| dictionary is uniquely best seed | UNDECIDED / empirical |
| every admitted external input lands on Lace | likely SUPPORT, subject to refusal/capacity |
| every local device output lands | likely CONTRADICT |
| every user-facing external response lands | genuinely OPEN |
| projection/rendered output lands | CONTRADICT |
| Star search is derived not stored | SUPPORT |
| one canonical Star-pattern object already exists | CONTRADICT / OPEN |
| structural match can be device-local | likely COMPATIBLE |
| "most likely" is Core machinery | likely CONTRADICT |
| decode is already mathematically specified | CONTRADICT |
| immutable I/O history can support replayable evidence | likely SUPPORT at bounded level |
| immutable I/O history proves response correctness | CONTRADICT |
| this framing automatically solves RM-A | CONTRADICT |
| this framing may split/relocate RM-A | OPEN, important |
| this framing chooses Mechanism A or B | expected UNDECIDED |

If execution produces different answers, the findings win.

---

## 10. Provisional six-pass horizon

Only Pass 1 is planned here. The horizon exists so Pass 1 knows which questions to hand off instead of trying to solve everything.

```
PASS 1  EVIDENCE MAP
        language structure + dictionary lineage + I/O + Star + decode
                    |
                    v
PASS 2  BOUNDARY / EVENT ALGEBRA
        define candidate crossing sets; input vs local output vs view vs external response
                    |
                    v
PASS 3  DICTIONARY SEED / RECURSIVE LANGUAGE
        ordinary feed, G1/event units, structural-density tests, no outer lexicon
                    |
                    v
PASS 4  STRUCTURAL RETRIEVAL
        lawful Star-pattern candidates, matching/ranking, evidence provenance
                    |
                    v
PASS 5  DECODE / RESPONSE / FEEDBACK
        end-to-end interaction specimens; candidate -> crossing -> later evidence
                    |
                    v
PASS 6  ADVERSARIAL SYNTHESIS / RECONCILIATION
        attack A/B, RM-A location, boundary policy, global manifest impact;
        propagate only what the evidence actually closes
```

Pass 1 may invalidate or reorder this horizon. If it does, record that instead of defending the plan.

---

## 11. Pass-1 execution write surface

### May write

- `docs/plans/language-structure-lace-pass-1-evidence-map.md`
- `docs/plans/language-structure-lace-pass-1-findings.md`
- `docs/plans/README.md` index rows
- the Pass-1 plan status line on execution
- maps claim / release

### Must not write

- `AGENTS.md`
- live law
- `docs/systems-manifest.md`
- `docs/systems-manifest-ascii.md`
- `docs/pointer-emission.md`
- `docs/math-execution-model.md`
- theorem/rulings registers
- graphics or companions
- behavioral blueprints
- any `src/`
- any acceptance / ruling / RM-A mechanism

If Pass 1 discovers required changes outside maps, write handoff rows only.

---

## 12. Completion gates

Pass 1 is complete only if all are true:

1. Every human hypothesis in §0 has at least one disposition row.
2. Every disposition names evidence and authority, not merely intuition.
3. Dictionary lineage is traced through current law and at least the two relationship-evidence passes.
4. Input/output is split into at least the four boundary categories in T3.
5. Every current Star/read object in T4 is classified.
6. "best match" and "decode" are each decomposed into separate operations.
7. RM-A impact is stated without closing RM-A.
8. Mechanism A/B impact is stated without choosing.
9. Historical evidence is visibly weaker than current law.
10. No second store, meaning field, semantic Core chooser, or projection write-back is introduced.
11. No existing model/law/manifest line is edited.
12. Findings identify one smallest next experimental question or state that more than one remains tied.
13. `check-docs` reports no new orphan.
14. maps is released.

---

## 13. Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

For this pass, the physical picture is:

- words arrive as new sections of one cord;
- repeated variables reuse formations without merging occurrences;
- definition text is more cord passing through the same formations;
- a Star/search view is something you can inspect about the cord, not a second cord;
- a reader may compare shapes without changing the cord;
- an external response is not allowed to appear on the cord merely because a reader imagined it;
- if the project claims it crosses onto Lace, Pass 2 must be able to point to the crossing and say exactly what happened.

Pass 1 maps the machine. It does not decide the machine.
