# Language structure / interaction loop — Pass 3 plan: seed corpus / G1 sensitivity / structural density

**Status:** EXECUTED 2026-09-23 — real-corpus Lab experiment complete. APPLES instrument reproduced; OEWN 2025 definition corpus admitted Lab-only; matched 5k/10k/20k dictionary/headword/shuffle/entry/prose controls run under bounded G1-A/B/C; prefix-causal Alice seed utility measured; Open #15, global G1 and RM-A remain OPEN; no Core/law/model/manifest edit; Pass 4 not opened.  
**Campaign position:** Pass 3 of the six-pass language-structure / interaction-loop campaign. Passes 1–2 are executed. Pass 4 is not opened by this file.  
**Station:** maps.  
**Pinned main before planning claim:** `763a83c9c75348d2eb4a95cc59320f96306553f0`.  
**Planning claim:** `40c43ea66ff7a3c21a8370a7318e758663051862`.  
**Human acceptance:** ABSENT.  
**Core / RM-A / pointer acceptance / implementation:** unchanged. No `src/`. No seed corpus chosen or shipped. No global G1 rule chosen.  
**One act:** test the old human seed intent and the new "dense and available" rationale as a bounded corpus experiment using current derived sampling/search machinery, while measuring sensitivity to unresolved G1 identity choices.

Pass 3 is **not** a new sampling campaign. The position×scale sampler, exact recurrence field, layered Star search and disposable SearchHandle already exist. This pass uses them as instruments.

---

# 0. Why Pass 3 exists

Pass 1 recovered two separate facts:

1. **Old human seed charge:** the dictionary is the Lace seed, wired first, and later text is wired up to it.
2. **New human rationale:** a dictionary is attractive because it is dense and available; words are recursively defined by other words.

The old six-pass seed-dictionary campaign established only:

```
dictionary stream may Arrive as ordinary Lace
definition route is ordinary word-star structure
seed = legal prefix if a stream is fed
no outer lexicon
no gloss store
no actual corpus selected
G1 remains open
"wired first" != retain/emission schedule
```

It explicitly found:
- corpus bytes on main = 0;
- Open #15 remains open;
- global word equality/tokenization remains open.

Separately, SAMPLING / DENSITY / EMERGENCE already established:

- a derived contiguous position×scale lattice;
- online prior recurrence (H[n,t]);
- exact multi-scale recurrence ridges in real prose;
- layered Star search:
  [
  StarSearch(a)=Lexical(a)+AnchoredPatterns(a)+PointerPaths(a);
  ]
- path/frontier preservation;
- disposable, exactly reconstructible SearchHandles;
- no scalar relevance/density collapse;
- exact recurrence is not the general retention rule.

Therefore Pass 3 must not ask "can text have density?" That is already answered.

It asks:

> **Does a dictionary corpus provide a structurally useful seed under the current nonsemantic machinery, and which parts of that conclusion survive the unresolved G1 identity choices?**

---

# 1. Pass-3 questions

Pass 3 must answer five separate questions.

## P3-Q1 — corpus availability

Can at least one real dictionary/definition corpus be obtained with pointable provenance and a use/license compatible with a bounded Lab experiment, without importing its semantic graph/API/runtime as Lace machinery?

"Available" is an application/data property, not a Core theorem.

## P3-Q2 — internal structural density

Under a fixed bounded identity convention, does dictionary definition text exhibit measurable structural recurrence / reuse using the already-admitted sampler and Star-search measurements?

## P3-Q3 — forward seed utility

When a later control text arrives **after** the seed, how much of that later text finds prior structure already present in the seed?

This is more important than the seed's internal density alone.

## P3-Q4 — G1 sensitivity

Do the observed seed properties survive multiple bounded word-identity/tokenization conventions, or do they depend strongly on one arbitrary G1 choice?

## P3-Q5 — dictionary-specific effect

Are any observed advantages due to **definition-route structure**, rather than merely:
- corpus size;
- common-word frequency;
- vocabulary size;
- repeated boilerplate;
- case-folding;
- punctuation stripping;
- the fact that any large corpus has repetition?

---

# 2. What this pass may and may not mean by "density"

No new scalar "Lace intelligence score" is allowed.

Prior search work already showed that flattening structural frontiers to one scalar loses real branches.

Pass 3 therefore uses a **density / reuse vector**, not a winner number.

For corpus (C), bounded token budget (N), identity policy (g), and scale cap (n_{max}), record at least:

[
D(C,g,N)=
(
U,
R_1,
{R_n},
{K_n},
{M_n},
n_{max,recur},
A,
F
)
]

where:

- (U): distinct token identities;
- (R_1): repeated-token occurrence fraction;
- (R_n): number of recurrent exact pattern classes at scale (n);
- (K_n): number/fraction of occurrences belonging to recurrent classes at scale (n);
- (M_n): maximum support at scale (n);
- (n_{max,recur}): longest exact recurrent scale;
- (A): anchored-pattern richness for selected high/mid/low-frequency anchors;
- (F): branch/frontier descriptors already used by the Star-search court.

These values are derived working measurements only.

They are **not**:
- stored Lace fields;
- retention triggers;
- a semantic similarity score;
- a proof of intelligence;
- a corpus ranking by one number.

---

# 3. Forward seed utility is the primary seed test

A seed is useful because later text arrives **after it**.

For a seed corpus (S) followed by a later control corpus (Q), calculate prefix-causally:

## SU-1 — lexical prior coverage

For each later token (q_t):

[
LexPrior(t)=
1
quad	ext{iff the same bounded identity already occurs in }S	ext{ or earlier }Q.
]

Report specifically the seed-only contribution:

[
SeedLexCoverage
=
rac{#{q_t: q_t	ext{ identity already occurs in }S}}
{|Q|}.
]

## SU-2 — prior pattern coverage by scale

For each later endpoint sample (Q[n,t]), ask whether that exact ordered pattern existed in the seed prefix before the later text arrived.

Report:

[
SeedPatternCoverage(n).
]

## SU-3 — anchored prior richness

For selected later-text anchors, reconstruct the layered search that would have been available immediately after the seed and before the later corpus contributed new evidence.

Measure:
- existing lexical root;
- recurrent anchored seed patterns;
- branch count;
- longest seed-supported exact pattern;
- witnessed prior paths where retained topology legitimately exists.

## SU-4 — first-contact distance

How many later arrivals occur before each tested later anchor/pattern first finds prior seed structure?

This is a temporal/prefix metric, not final-corpus hindsight.

### Fence

Future later-text rows may not be used to justify "the seed already knew this."

All seed utility is prefix-only.

---

# 4. Corpus court

Pass 3 does not begin by choosing a release seed.

It builds a Lab corpus court.

## C-DICT — actual dictionary/definition corpus

Execution must obtain at least one bounded real definition corpus with:

- pointable source/provenance;
- explicit license/use status sufficient for the experiment;
- raw headword + definition text available;
- no runtime network requirement for the bounded test;
- no dependency on a semantic graph for the measurements;
- enough material for matched token-budget comparisons.

If no candidate satisfying those conditions is obtainable during execution, Pass 3 must stop with **CORPUS-UNAVAILABLE** rather than manufacture a dictionary.

The corpus may be fetched/materialized for Lab analysis. It must **not** be committed or declared the release seed merely because it was tested.

### Critical source fence

If the corpus comes from WordNet or another structured lexical database:

```
raw word/definition text may be a Lab feed
!=
synset graph / semantic relation API / intern dictionary as Lace machinery
```

Historical `lay_wordnet`-style interning is explicitly not revived.

---

## C-PROSE — ordinary prose control

Use a non-dictionary prose corpus with a matched token budget.

Existing current-source material such as the Coffee Cup analytical text may serve as one control if provenance permits and the comparison is clearly Lab-only.

Purpose:
- test whether recurrence is simply a generic property of prose.

---

## C-HEAD — vocabulary/headword control

Use the dictionary candidate's headwords or unique lexical inventory without its definition sequences, under the same bounded identity policy.

Purpose:
- separate "many useful words are present" from "definitions create useful routes."

This control must not become an interned Core dictionary.

It is only an analysis stream.

---

## C-SHUFFLE — order-destruction control

Preserve the dictionary candidate's token multiset but deterministically shuffle or permute order using a recorded seed / deterministic recipe.

Purpose:
- preserve unigram frequency while destroying definition-route sequence.

If dictionary advantage survives unchanged after order destruction, the advantage is not evidence for definition-route structure.

The shuffled corpus is Lab-generated derived data, never source authority.

---

## C-ENTRY — entry-order control

Where dictionary entry boundaries are available externally, preserve each definition's internal token order but deterministically permute entry order.

Purpose:
- distinguish local definition structure from global source ordering.

Entry boundaries remain external Lab metadata. This does not solve G3.

---

# 5. Matched-budget rule

Corpus size is an obvious confounder.

Every main comparison must be repeated at matched admitted-word budgets, for example:

[
Nin{N_1,N_2,N_3}
]

chosen at execution from the smallest corpus that survives admission.

At each (N):

- compare the first (N) admitted tokens under the same G1 policy;
- also run at least one deterministic sample/window control if source-front loading is suspected to bias results;
- state whether conclusions change with budget.

No claim "dictionary is denser" may compare a million-token dictionary with a thousand-token prose control.

---

# 6. G1 sensitivity court — do not solve G1

Global G1 remains open.

Pass 3 uses bounded **experimental identity policies** and asks which findings survive them.

At minimum execute three nonsemantic policies.

## G1-A — bounded exact surface identity

- same lexical segmentation rule as the admitted corpus extraction;
- case-sensitive;
- no stemming;
- no lemmatization;
- no synonym folding;
- no phrase merging;
- no semantic normalization.

## G1-B — case-folded exact identity

Reuse/reproduce the bounded convention used by the prior Coffee Cup sampling experiment:
- case-folded exact token identity;
- no stemming;
- no semantic normalization.

Execution must recover and state the exact token extraction rule rather than relying on the phrase "case-folded."

## G1-C — punctuation sensitivity control

Hold lexical segmentation otherwise fixed and compare:
- punctuation-attached / surface-sensitive identity;
- punctuation-separated or stripped bounded analysis convention.

Exact mechanics must be printed in the findings.

### Optional G1-D — explicit phrase challenge, not phrase policy

Use a tiny challenge set containing:
- `PIE` / `pie`;
- punctuation variants;
- a multiword name such as `Golden Skillet`;
- homograph-like repeated spellings if available.

Purpose:
- show what each bounded convention would do;
- **not** choose phrase interning or semantic disambiguation.

### Forbidden G1 moves

Pass 3 must not:
- choose the global tokenizer;
- intern one row per spelling;
- stem/lemmatize to improve density;
- merge synonyms;
- use embeddings;
- use dictionary headword IDs as secret Core identity;
- treat a corpus's own lexical IDs as Lace identity law;
- declare the convention with the highest recurrence "correct."

---

# 7. Definition-route test

The human thesis is stronger than "dictionary has repeated words."

It says:

```
word
  defined by words
    defined by words
      ...
```

creates useful recursive structure.

Pass 3 therefore needs a **definition-route-specific** test.

For dictionary entry:

[
h ightarrow (d_1,ldots,d_k)
]

the source supplies an external entry relationship for analysis.

Do not store `h = definition` as a gloss.

Test:

## DR-1 — headword-to-definition lexical overlap across entries

How often do definition tokens themselves appear as headwords / later definition anchors?

This measures whether definitions recursively reuse vocabulary.

## DR-2 — definition-to-definition route reuse

How often do exact multiword patterns in one definition recur in other definitions?

## DR-3 — later-text access

When the later prose control uses a word (w), does the seed already contain:
- the lexical root for (w);
- recurrent patterns anchored on (w);
- definition-route neighboring anchors around (w)?

## DR-4 — headword-only ablation

Compare C-DICT to C-HEAD.

If C-HEAD produces essentially the same later-text prior search surface, then definition text did not supply the measured advantage.

## DR-5 — order-destruction ablation

Compare C-DICT to C-SHUFFLE.

If exact pattern/frontier advantages disappear while unigram coverage remains, that is evidence that sequence/route contributes.

This still does not prove semantic meaning.

---

# 8. "Available seed" court

Availability must be measured separately from structural density.

For each dictionary candidate record:

- source and version/date if known;
- license/use terms at experiment time;
- raw size;
- bounded extracted size;
- format;
- whether definitions are directly available as text;
- whether runtime network access is required;
- whether a deterministic offline extract can be reproduced;
- whether the candidate drags in semantic IDs/graphs that the experiment can ignore;
- whether the corpus can legally/technically be packaged later if Open #15 is eventually answered yes.

Disposition vocabulary:

- **AVAILABLE_FOR_LAB**
- **AVAILABLE_BUT_RELEASE_RIGHTS_OPEN**
- **NOT_SUITABLE**
- **UNAVAILABLE**

Do not collapse licensing, download convenience, and structural utility into one score.

---

# 9. Causal seed-order test

The old human charge says dictionary is wired **first**.

Pass 3 must test whether firstness matters to later availability.

Compare at least:

```
Run A:
DICTIONARY seed -> later prose Q

Run B:
matched prose control -> later Q

Run C:
no seed -> later Q
```

Optionally:

```
Run D:
later Q -> dictionary
```

as an order control.

Measure seed-only prior structure at the moment Q begins.

The final combined corpus may contain similar words in A and D, but the prefix-causal search available **when Q arrives** differs.

This is the correct grain for "seed" usefulness.

---

# 10. Retained topology versus derived seed analysis

RM-A is still open.

Therefore the base Pass-3 density experiment must be able to run on:

```
WORD occurrence history
+
ruled RootTouch
+
derived sampling/search
```

without inventing generic retained Join topology.

If a metric requires arbitrary non-RootTouch retained pointers, it is out of base scope.

Separate outputs into:

- **LEXICAL / DERIVED-SEED** metrics — lawful without new RM-A;
- **RETAINED-TOPOLOGY** metrics — only where current source/ruled rows legitimately exist;
- **HYPOTHETICAL** metrics — forbidden from headline conclusions.

This prevents "better corpus" from becoming a backdoor retention rule.

---

# 11. Required adversarial tests

## F3-1 — size confound

Dictionary wins only at larger token count.

Result:
no density claim until matched-budget comparison.

## F3-2 — unigram-frequency confound

C-DICT and C-SHUFFLE have nearly identical measured advantage.

Result:
the advantage is lexical-frequency/multiset, not definition-route sequence.

## F3-3 — vocabulary-only confound

C-HEAD performs almost as well as full definitions on later-text access.

Result:
definition routes are not responsible for that measured seed advantage.

## F3-4 — boilerplate confound

Recurring dictionary boilerplate dominates recurrent classes.

Result:
report boilerplate families separately; do not call them useful semantic/structural coverage.

## F3-5 — G1 instability

Corpus ordering changes substantially across G1-A/B/C.

Result:
claim is G1-sensitive and cannot be promoted.

## F3-6 — source-boundary dependence

Density result appears only when dictionary entry boundaries are used as hidden Core metadata.

Result:
candidate fails the base Lace claim; boundaries may remain Lab-only analysis.

## F3-7 — future leakage

Later Q is included when computing what seed knew.

Result:
experiment invalid.

## F3-8 — scalar collapse

One corpus is called "best" by a single weighted density score.

Result:
invalid; preserve vector/frontiers.

## F3-9 — semantic contamination

Synonyms, definitions, embeddings or lexical relations are used to decide equality/match.

Result:
invalid for the structural base test.

## F3-10 — retention laundering

Higher recurrence is used as a retain-when rule.

Result:
invalid; RM-A unchanged.

---

# 12. Pass-3 hypotheses

These can lose.

## H3-A — dictionary vocabulary coverage

A real definition corpus will provide high lexical prior coverage for later general prose compared with no seed.

This may hold without definition-route advantage.

## H3-B — definition-route structural advantage

At matched budgets, intact dictionary definitions will expose more reusable multi-scale exact structural patterns / anchored prior structure than the headword-only and order-destroyed controls.

This is **not assumed**.

## H3-C — prose comparison

Dictionary need not have higher internal recurrence than ordinary prose at every scale.

The relevant seed property may instead be broader lexical coverage plus recursive route reuse.

## H3-D — G1 robustness

The strongest useful seed findings should survive more than one bounded nonsemantic G1 convention.

If they do not, G1 remains a first-order blocker.

## H3-E — seed timing

Dictionary-first should improve prefix-causal prior availability for later Q compared with dictionary-after-Q, even when the final combined text is similar.

---

# 13. Required execution sources

Execution must re-open current versions.

## Current substrate / opens
1. `AGENTS.md`
2. `docs/law-why-these-documents.md`
3. `docs/systems-manifest.md` Pieces 3, 7–10, SM-C20/21, G1, G3, Open #15
4. `docs/atomic-primitives-map.md`
5. `docs/pointer-emission.md`

## Seed ancestry
6. all six seed-dictionary products, especially Passes 1, 5 and 6
7. Pass-27/Open-#15 apparatus references as needed

## Existing sampler / search instruments
8. sampling-density-emergence Passes 1–5 findings
9. `docs/math-execution-model.md` S3.1–S3.7
10. SearchHandle / Star fidelity artifact
11. current theorem register for read/replay constraints

## Pass-1/2 campaign
12. language-structure Pass-1 evidence/findings
13. language-structure Pass-2 boundary/findings, only to preserve the distinction that text corpus experiments do not solve interaction boundaries

## Historical warnings
14. recovered WordNet/intern-dictionary history as a forbidden implementation precedent, not a corpus ban

---

# 14. External corpus admission

The repo currently contains no chosen seed corpus.

Therefore execution may need external research to identify a dictionary candidate.

If so:

1. use a reputable source with clear provenance;
2. record current license/use terms and retrieval date;
3. obtain only the bounded text needed for analysis;
4. keep source bytes outside authoritative Lace artifacts unless separately authorized;
5. do not commit a large external corpus merely to run the experiment;
6. record a hash / bounded extraction recipe where tooling permits reproducibility;
7. distinguish **source corpus** from **derived token stream**;
8. do not import semantic graph APIs into the experiment.

If external retrieval is unavailable, the pass may use a clearly labeled small source-backed definition corpus for instrument validation but must not claim the full dictionary hypothesis has been tested.

---

# 15. Required Pass-3 products

## Product A — corpus admission court

Create:

`docs/plans/language-structure-lace-pass-3-corpus-court.md`

For each tested corpus/control:

| ID | source/provenance | role | bytes/tokens | license/use | boundaries available? | Lab admissible? | release implication |
|---|---|---|---:|---|---|---|---|

It must explicitly preserve Open #15.

## Product B — G1 sensitivity + density ledger

Create:

`docs/plans/language-structure-lace-pass-3-density-ledger.md`

For every:
- corpus;
- matched token budget;
- G1 experimental policy;

record the raw density vector and seed-utility measures.

No weighted total.

## Product C — definition-route ablation ledger

May be a section of Product B or separate:

`docs/plans/language-structure-lace-pass-3-definition-route-ledger.md`

Must compare at least:
- intact dictionary;
- headword/vocabulary control;
- shuffled-token control;
- ordinary prose control.

## Product D — findings

Create:

`docs/plans/language-structure-lace-pass-3-findings.md`

Must answer:
- was a real dictionary corpus admitted to the Lab?
- which G1 policies were tested?
- which structural findings are G1-robust?
- does intact definition order add anything beyond unigram/vocabulary coverage?
- does dictionary-first improve prefix-causal prior structure for later Q?
- what part of "dense and available" survives?
- is Open #15 still open?
- is global G1 still open?
- does Pass 4 structural retrieval remain the next independent research pass?

---

# 16. Execution sequence

## T0 — re-anchor
- refresh current main;
- claim maps;
- record execution pin;
- check for new Fable/math/global-ASCII changes affecting G1, seed or search.

## T1 — recover instrument exactly
- reproduce the prior sampler's token extraction and case-folded convention;
- reproduce at least one known Coffee Cup density/search receipt;
- if reproduction fails, repair the instrument understanding before corpus testing.

## T2 — corpus admission
- inventory repo/local available candidates;
- if needed, research external dictionary candidates;
- select a bounded Lab candidate by provenance/license/data availability, **not by expected density**;
- define matched-budget controls.

## T3 — run G1-A/B/C
For every corpus/control, derive token streams under each bounded convention.

Print:
- exact extraction rule;
- token count;
- distinct count;
- challenge examples.

No global G1 conclusion yet.

## T4 — internal density vector
Run the existing online exact recurrence / anchored-pattern machinery.

At minimum record:
- n=1..n_max recurrent classes;
- recurrent occurrence counts;
- max support;
- longest recurrence;
- selected anchor frontiers.

Choose n_max based on tractable matched-budget execution and state it.

## T5 — definition-route ablations
Run C-DICT, C-HEAD, C-SHUFFLE, C-ENTRY, C-PROSE where available.

Identify which structural effects survive each ablation.

## T6 — forward seed utility
Feed later Q after each seed/control.

Measure SU-1..SU-4 prefix-causally.

No final-corpus hindsight.

## T7 — G1 sensitivity analysis
For every headline effect ask:
- present under all policies?
- directionally stable?
- disappears/reverses under one policy?
- dependent on punctuation/case?

Stamp:
- **ROBUST-TESTED**
- **G1-SENSITIVE**
- **ONE-POLICY-ONLY**
- **UNESTABLISHED**

These are Lab stamps, not law.

## T8 — attack "dense and available"
Keep separate:
- structural vector;
- later-seed utility;
- source availability/rights;
- computational cost.

No one-number winner.

## T9 — classify gap impacts
At minimum:
- G1;
- Open #15;
- G3;
- G4;
- RM-A;
- R3 / package/distribution implications;
- seed-dictionary historical campaign.

## T10 — findings and stop
Do not plan or execute Pass 4.

---

# 17. Mechanical / computational discipline

Pass 3 may use ephemeral scripts to process bounded corpora.

Requirements:

- scripts are analysis tools, not `src/`;
- deterministic randomization seeds must be recorded;
- source and derived corpus hashes should be recorded where practical;
- all headline numeric results must be written into the ledger;
- no result may depend on an unrecorded local cache;
- future rows cannot leak into online recurrence;
- no GPU/ML/embedding machinery is required or permitted for the base experiment;
- if runtime becomes too large, reduce matched budget explicitly instead of silently changing algorithms.

The earlier full Coffee Cup triangular surface reached 743,590 cells for 1,219 tokens. Pass 3 should use the existing efficient recurrence construction rather than materializing arbitrary quadratic objects when unnecessary.

---

# 18. Pass-3 disposition vocabulary

Use:

- **SOURCE** — direct corpus/source fact.
- **HUMAN** — existing human project ruling/charge.
- **PROVED_WITHIN_SCOPE** — theorem under named premises.
- **REPRODUCED** — prior Lab numeric result independently reproduced.
- **OBSERVED_LAB** — current corpus experiment result.
- **ROBUST-TESTED** — result survives all declared G1 policies/budgets tested.
- **G1-SENSITIVE** — result materially depends on identity policy.
- **COMPATIBLE_CANDIDATE** — architectural candidate only.
- **REFUTED** — falsifier/counterexample fired.
- **FORBIDDEN** — violates standing law.
- **OPEN** — not determined.

Do not write "dictionary is best" unless the user later supplies an evaluative decision criterion. Pass 3 can report comparative structural results, not an overall winner.

---

# 19. Expected outcomes before execution

These are hypotheses only.

| Question | Expected |
|---|---|
| dictionary seed is lawful input | already SUPPORTED |
| real corpus currently shipped | OPEN |
| at least one Lab dictionary corpus can be sourced | likely AVAILABLE_FOR_LAB |
| dictionary has high lexical coverage | likely, but empirical |
| dictionary is more internally repetitive than prose at every scale | not assumed |
| definition text adds structure beyond headword list | plausible, must survive ablation |
| shuffled dictionary preserves all useful effects | expected false for sequence-sensitive effects |
| conclusions are identical across G1 policies | unlikely; sensitivity expected somewhere |
| one G1 policy can be promoted to law | NO |
| density supplies RM-A | NO |
| Open #15 closes automatically | NO |
| Pass 4 can use the measured corpus as a retrieval benchmark | likely, if one corpus survives admission |

---

# 20. Relationship to Passes 4–6

```
PASS 1  architecture evidence map          DONE
PASS 2  boundary / event algebra           DONE
PASS 3  corpus / G1 sensitivity / seed     THIS PLAN
PASS 4  structural retrieval / match       future
PASS 5  decode / response / feedback       future
PASS 6  adversarial synthesis              future
```

Pass 3 supplies benchmark material for Pass 4.

It does not require Pass 2's boundary protocol to be accepted because a seed/prose corpus experiment can remain a bounded Lab feed.

Pass 4 must not inherit one G1 convention as architecture merely because Pass 3 used it.

---

# 21. Pass-3 write surface

## May write
- `docs/plans/language-structure-lace-pass-3-corpus-court.md`
- `docs/plans/language-structure-lace-pass-3-density-ledger.md`
- optional definition-route ledger
- `docs/plans/language-structure-lace-pass-3-findings.md`
- this plan status line on execution
- `docs/plans/README.md`
- maps claim/release

## Must not write
- `AGENTS.md`
- live law
- systems manifest
- global ASCII companion
- pointer-emission
- mathematical model
- theorem/rulings registers
- graphics / companions
- seed-dictionary historical artifacts
- external corpus into the repository as the release seed
- `src/`
- a tokenizer implementation as Core
- a global G1 ruling
- an RM-A rule
- a one-number corpus ranking
- Pass 4 plan/execution

---

# 22. Completion gates

Pass 3 is complete only if:

1. the old seed-dictionary campaign is reproduced as ancestry, not rerun;
2. current sampler/search instruments are reproduced on at least one known receipt;
3. at least one real dictionary/definition corpus is either admitted or the pass explicitly ends CORPUS-UNAVAILABLE;
4. provenance/license/use state is recorded;
5. matched-budget controls exist;
6. G1-A/B/C are explicit and nonsemantic;
7. no global G1 choice is taken;
8. dictionary, headword, shuffle and prose controls are compared where corpus structure permits;
9. online/prefix-only seed utility is measured;
10. no future leakage occurs;
11. no scalar "best seed" score is used;
12. definition-route effects are separated from lexical coverage;
13. RM-A remains separate;
14. Open #15 remains separate from Lab corpus admission;
15. no law/model/manifest source is edited;
16. artifacts are indexed;
17. tooling limits are recorded honestly;
18. maps is released;
19. Pass 4 remains unopened.

---

# 23. Steward test

With the lace in hand:

- loading a dictionary first means tying a lot of ordinary word passages before later speech arrives;
- "dense" must mean something you can count in those passages, not a meaning score hidden in your head;
- changing what counts as "the same word" changes which eyelets later passages reuse, so test that sensitivity instead of pretending the answer is fixed;
- a bag containing the same words as a dictionary is not automatically the same structure as definitions in sequence;
- if shuffling the dictionary leaves the claimed advantage untouched, the claim was about vocabulary frequency, not definition routes;
- if later words find prior routes more often after the dictionary seed, that is evidence for seed utility;
- none of those observations tells the Core which sampled relation to retain.

Pass 3 asks whether the dictionary really gives the later wire useful structure to arrive into.

It does not get to call that usefulness "meaning," and it does not get to choose G1 just to make the graph look better.
