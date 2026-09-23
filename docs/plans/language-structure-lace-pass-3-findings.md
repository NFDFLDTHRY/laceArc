# Language structure / interaction loop — Pass 3 findings

**Status:** EXECUTED — corpus / G1 sensitivity / structural-density experiment complete.  
**Plan:** [language-structure-lace-pass-3-plan.md](language-structure-lace-pass-3-plan.md).  
**Artifacts:** [corpus court](language-structure-lace-pass-3-corpus-court.md) · [density ledger](language-structure-lace-pass-3-density-ledger.md).  
**Station:** maps · `ChatGPT-language-structure-pass3`.  
**Core / law / mathematical model / manifest / graphics / pointer draft:** unchanged.  
**Human acceptance:** none taken.  
**Open #15:** OPEN.  
**Global G1:** OPEN.  
**RM-A:** OPEN.  
**Pass 4:** not opened by this file.

## 1. Executive result

Pass 3 tested the human's dictionary-seed rationale instead of assuming it.

The result is neither "dictionary wins" nor "dictionary fails."

The evidence supports a narrower claim:

> **A real dictionary/definition corpus supplies a distinctive, reproducible structural seed: broad lexical reuse plus unusually strong longer exact recurrence generated largely by local definition sequence.**

But:

> **ordinary prose can be denser at low scales and can be a stronger prior for a particular later prose stream.**

In this experiment, a matched Frankenstein seed gives higher lexical, bigram and trigram prior coverage on Alice than the Open English WordNet seed at every tested 5k/10k/20k budget and under every tested G1 convention.

Therefore "dictionary is the densest seed" is **REFUTED as a universal undifferentiated statement**.

"Dictionary is a dense and available structural seed with recursive definition-route properties" is **SUPPORTED at bounded Lab scope**.

No overall best seed is selected.

---

## 2. Instrument reproduction

The current sampling instrument was re-anchored against the repo's APPLES specimen before external corpus work.

Exact G1-B result:

- 27 tokens;
- 17 identities;
- repeated classes by scale:
  - n1 = 6
  - n2 = 4
  - n3 = 3
  - n4 = 2
  - n5 = 1
  - n6+ = 0
- longest exact recurrent pattern n=5.

This matches the prior SAMPLING / DENSITY / EMERGENCE receipt.

**Stamp: REPRODUCED.**

No new sampler was invented.

---

## 3. Real dictionary corpus admitted

Open English WordNet 2025 Edition was admitted to the Lab.

Pin:

`2025-edition @ dc343f2683279ecbb13fab4e2fd778d7b162d287`

The source slice is deterministic and stratified across:

- noun.communication
- noun.cognition
- noun.artifact
- noun.person
- noun.food
- verb.communication
- verb.change
- adj.all

Only:
- member strings;
- definition strings

were admitted.

No semantic graph relation, synset edge, hypernym, embedding, lexical database API, or intern table was used.

The fixed slice contains 9,444 source entries and is large enough for every 5k/10k/20k matched-budget control, including the headword-only stream.

**Corpus status: AVAILABLE_FOR_LAB.**

This does not make it the shipped seed.

---

## 4. G1 policies executed

Three bounded nonsemantic identity policies were tested.

### G1-A

Case-sensitive alphabetic/apostrophe word identity.

### G1-B

The previous Coffee Cup experiment's bounded convention:
- alphabetic/apostrophe words;
- uppercase case-fold;
- punctuation excluded from identity.

### G1-C

Uppercase punctuation-sensitive surface control with trailing punctuation retained.

No policy uses:
- stemming;
- lemmatization;
- synonym merging;
- embeddings;
- sense IDs;
- phrase interning;
- semantic normalization.

The experiment therefore tests **sensitivity to G1** without answering G1.

---

## 5. Internal density result

The phrase "density" splits by scale.

### G1-B, 20,000-token example

#### Repeated-token fraction

- dictionary: **0.8212**
- prose: **0.8939**

#### recurrent-window fraction

| scale | dictionary | prose |
|---:|---:|---:|
| n2 | 0.3157 | 0.3966 |
| n3 | **0.1026** | 0.0721 |
| n4 | **0.0391** | 0.0111 |
| n5 | **0.0190** | 0.0028 |
| n6 | **0.0098** | 0.0015 |

Thus:

- prose is more repetitive at token and bigram grain;
- dictionary definitions are markedly more recurrent from trigram upward in this bounded comparison.

The same qualitative crossover survives G1-A and G1-C and survives 5k/10k/20k budget changes.

**Stamp: ROBUST-TESTED at the tested grain.**

This is not a claim that every dictionary exceeds every prose corpus.

---

## 6. Sequence matters

C-SHUFFLE preserves the exact dictionary token multiset at each budget and destroys only token order.

Under G1-B / 20k:

| | dictionary | same tokens shuffled |
|---|---:|---:|
| n3 recurrent-window fraction | **0.1026** | 0.0080 |
| n4 | **0.0391** | 0.0002 |
| n5 | **0.0190** | 0 |
| n6 | **0.0098** | 0 |

Unigram statistics are identical by construction.

So the longer recurrence is not reducible to "dictionary uses common words a lot."

**F3-2 fired against the unigram-only explanation.**

The intelligence claim still does not follow. The bounded conclusion is only:

[
	ext{ordered definition text carries structure that its token bag does not.}
]

---

## 7. Definition text matters beyond headwords

C-HEAD contains only the member/headword strings from the same fixed source slice.

At G1-B / 20k:

- C-HEAD distinct identities: **10,781**
- C-DICT distinct identities: **5,788**

Despite C-HEAD having far more distinct lexical identities in the same token budget, it has much less longer recurrence.

And against Alice Q:

### lexical prior coverage

- C-DICT: **0.7109**
- C-HEAD: **0.5329**

### bigram prior coverage

- C-DICT: **0.1245**
- C-HEAD: **0.0288**

### trigram prior coverage

- C-DICT: **0.0061**
- C-HEAD: **0.0017**

Therefore the measured seed behavior is not simply "ship lots of dictionary headwords."

Definition text materially changes the structural prior.

**F3-3 fired against vocabulary-only sufficiency.**

---

## 8. Recursive definition vocabulary is visible structurally

On the bounded 20k-source entry slice under G1-B:

- definition tokens scored: **16,137**
- **49.41%** of definition-token occurrences have identities that also occur in the headword/member inventory;
- **21.89%** of distinct definition-token identities also occur in that headword inventory.

Across separate definition entries, repeated exact classes exist at:

- bigram: **1,558**
- trigram: **705**
- 4-gram: **283**
- 5-gram: **136**

The values remain close under G1-A and G1-C.

This directly supports the user's recursive-language picture at a bounded structural grain:

```
words used in definitions
recur as dictionary words
and definition sequences recur across entries
```

No semantic relation lookup is needed to observe that.

---

## 9. Entry order is not the main cause

C-ENTRY deterministically permutes whole dictionary entries while preserving the internal member→definition sequence.

At G1-B / 20k:

- dictionary n3 recurrent fraction: 0.1026
- entry-permuted: 0.0869

- dictionary n4: 0.0391
- entry-permuted: 0.0359

- dictionary n5: 0.0190
- entry-permuted: 0.0177

- dictionary n6: 0.0098
- entry-permuted: 0.0095

So most of the longer recurrence survives global entry reordering.

That places the structural effect mainly inside or across repeated local definition phrasing, not in one privileged global dictionary ordering.

This is useful for the seed concept: the source file's arbitrary entry order does not appear to be doing most of the work.

---

## 10. Entry boundaries are not required for the main recurrence finding

Under G1-B / approximately 10k dictionary tokens:

Raw concatenated repeated-class counts:

```
n2 863
n3 339
n4 137
n5 66
```

When windows are forbidden to cross entry boundaries:

```
n2 825
n3 331
n4 134
n5 65
```

So cross-entry artifacts exist, but they are small relative to the total recurrence field.

The headline result does not require hidden dictionary-boundary metadata in Lace.

**F3-6 did not fire.**

---

## 11. Boilerplate warning fired

The top longer recurrence classes include formulaic dictionary constructions such as:

- `A DEITY WORSHIPPED BY THE`
- `DEITY WORSHIPPED BY THE ANCIENT`
- `A WORD THAT IS`
- mythology templates;
- repeated diet/stew definition forms.

Therefore:

[
	ext{long recurrence}

eq
	ext{semantic usefulness}
]

and:

[
	ext{dictionary recurrence}

eq
	ext{automatic intelligence}
]

Some of the measured structure is definition-template structure.

That is still genuine ordered structural recurrence, but it cannot be laundered into meaning or retrieval quality.

**F3-4 fired partially and is preserved.**

---

## 12. Forward seed utility against later text

Later-text probe Q is the first 10,000 Alice tokens.

### G1-B lexical coverage

| seed budget | dictionary | headwords | Frankenstein prose |
|---:|---:|---:|---:|
| 5k | 0.5870 | 0.3932 | **0.7257** |
| 10k | 0.6458 | 0.4788 | **0.7758** |
| 20k | 0.7109 | 0.5329 | **0.8279** |

### G1-B bigram coverage

| seed budget | dictionary | shuffled dictionary | Frankenstein prose |
|---:|---:|---:|---:|
| 5k | 0.0768 | 0.0471 | **0.1468** |
| 10k | 0.0970 | 0.0502 | **0.2088** |
| 20k | 0.1245 | 0.0829 | **0.2763** |

### G1-B trigram coverage

| seed budget | dictionary | shuffled dictionary | Frankenstein prose |
|---:|---:|---:|---:|
| 5k | 0.0031 | 0.0001 | **0.0104** |
| 10k | 0.0039 | 0.0002 | **0.0173** |
| 20k | 0.0061 | 0.0009 | **0.0286** |

The same ordering holds under G1-A and G1-C.

Therefore the dictionary is **not** the strongest prior for this particular later prose probe.

This is an important falsifier against "dictionary is best because it is a dictionary."

It may still be a useful general lexical seed; that is a different claim.

---

## 13. Dictionary-first still has real causal seed effect

The no-seed / dictionary-after-Q control has zero **seed-supplied** prior structure at the instant Q begins.

Dictionary-first provides, under G1-B / 20k:

- 71.09% lexical prior coverage of Q;
- 12.45% bigram prior coverage;
- 0.61% trigram prior coverage;
- nonzero 4-gram prior coverage.

Thus:

[
	ext{dictionary before Q}

eq
	ext{dictionary after Q}
]

for the structure available when Q arrives.

The old "wired first" seed charge therefore has an observable prefix-causal consequence without requiring a special Core mode.

**H3-E supported at bounded scope.**

---

## 14. Anchored prior result

At 10k Q under G1-B the deterministic frequency anchors are:

- high: `THE`, support 482;
- median repeated: `PARDON`, support 4;
- low repeated: `YOUNG`, support 2.

At a 10k dictionary seed:

- `THE` participates in 220 recurrent anchored classes through n=5;
- `YOUNG` has a small recurrent seed structure through n=2;
- `PARDON` has no recurrent anchored dictionary structure in the tested slice.

This is the correct shape for the model: some later anchors land in dense prior structure, some in shallow structure, some with no useful prior recurrence.

No stop-word deletion was used.

---

## 15. G1 sensitivity verdict

The exact numbers change across G1-A/B/C.

The important comparative results do not reverse:

1. definitions strongly outperform their exact token shuffle at n>=3;
2. definitions strongly outperform headword-only streams on longer recurrence;
3. definitions provide much more later pattern coverage than headword-only streams;
4. global entry permutation preserves most longer dictionary recurrence;
5. Frankenstein gives more Alice prior coverage than the tested dictionary seed;
6. dictionary longer-scale recurrence exceeds Frankenstein at n>=3 in the matched internal-density comparison.

These are therefore:

**ROBUST-TESTED across the three declared G1 policies.**

But the policies themselves remain experimental.

Global G1 remains OPEN.

No tokenizer has been selected.

---

## 16. Hypothesis dispositions

### H3-A — dictionary vocabulary coverage

**SUPPORTED at bounded scope.**

Dictionary-first gives substantial lexical prior coverage on Alice.

### H3-B — definition-route structural advantage

**SUPPORTED against the specified ablations.**

Intact definition order produces far more longer exact recurrence than:
- headwords alone;
- identical shuffled tokens.

Entry reordering preserves most of the effect.

The "advantage" here means the measured structural fields only, not semantic quality.

### H3-C — dictionary exceeds prose at every scale

**REFUTED.**

Prose is denser at low scales in this experiment.

### H3-D — important findings survive G1 variation

**SUPPORTED / ROBUST-TESTED** across G1-A/B/C.

### H3-E — seed timing matters

**SUPPORTED at bounded prefix-causal scope.**

Dictionary-after-Q cannot provide dictionary seed priors when Q begins.

---

## 17. What survives of "dense and available"

### Available

**Yes, for Lab.**

A current, pointable, redistributable-with-attribution Open English WordNet release exists and can be deterministically reduced to definition text without needing its semantic graph.

This does not close release Open #15.

### Dense

Only with a scale-qualified statement.

Not:

> dictionary is the densest corpus.

Instead:

> the tested dictionary definitions have strong sequence-dependent recurrence at longer exact scales, while ordinary prose is denser at lower scales.

### Recursive

**Structurally visible.**

A large fraction of definition vocabulary is itself present in the headword inventory, and repeated multiword structures recur across definitions.

### Best seed

**UNESTABLISHED and contradicted for the tested Alice probe if "best" means maximum prior exact lexical/n-gram coverage.**

Frankenstein produces higher prior coverage there.

No overall seed winner is declared.

---

## 18. Gap impact

### G1

Still OPEN.

Pass 3 supplies a sensitivity method and three bounded conventions, not a global identity rule.

### Open #15

Still OPEN.

Lab corpus admission is not release selection.

### G3

Unchanged from Pass 2.

Dictionary entry boundaries were useful Lab metadata but were not required for the main recurrence result and were not added to Lace.

### G4 / structural retrieval

Pass 3 now supplies real benchmark corpora and later-text probes for Pass 4.

The retrieval problem becomes experimentally richer:
- dense high-frequency anchors;
- shallow anchors;
- absent anchors;
- intact definition sequence versus shuffled-token controls;
- dictionary versus prose priors.

### RM-A

Unchanged.

No recurrence, coverage, or density metric is a retain-when condition.

### R3 / packaging

Only a future Open-#15 release choice would pull actual seed packaging/durability into scope.

---

## 19. Pass-4 readiness

Pass 4 remains a valid next independent research pass.

It should **not** assume:
- dictionary is the unique or best seed;
- G1-B is the correct tokenizer;
- high recurrence means high relevance;
- lexical coverage means semantic match.

It now has strong benchmark surfaces:

1. intact OEWN definition seed;
2. identical shuffled dictionary tokens;
3. headword-only dictionary control;
4. prose seed;
5. Alice later-text queries;
6. three bounded G1 conventions.

That is enough to test structural match/ranking without inventing a toy-only benchmark.

Pass 4 is not opened here.

---

## 20. Completion board

| Gate | Result |
|---|---|
| old seed-dictionary campaign treated as ancestry | PASS |
| prior sampler reproduced | PASS — APPLES exact |
| real dictionary corpus admitted | PASS — OEWN 2025 Lab only |
| provenance/license recorded | PASS |
| matched 5k/10k/20k budgets | PASS |
| G1-A/B/C explicit | PASS |
| global G1 choice avoided | PASS |
| dictionary/head/shuffle/entry/prose controls compared | PASS |
| prefix-only later seed utility measured | PASS |
| future leakage | did not fire |
| scalar best-seed score avoided | PASS |
| definition-route effect separated from vocabulary | PASS |
| boilerplate confound exposed | PASS |
| RM-A separated | PASS |
| Open #15 preserved | PASS |
| law/model/manifest edits | NONE |
| Pass 4 opened | NO |

## 21. Final sentence

The dictionary does something real.

Not because it contains stored meaning.

Not because it beats every other corpus.

Because its definitions repeatedly route ordinary words through other ordinary words in sequence, and that ordered structure survives measurement after the semantic machinery is stripped away.

That is enough to keep the dictionary-seed hypothesis alive.

It is not enough to stop testing it.
