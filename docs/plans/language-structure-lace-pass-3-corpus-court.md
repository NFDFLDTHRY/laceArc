# Language structure / interaction loop — Pass 3 corpus admission court

**Status:** EXECUTED PASS-3 ARTIFACT.  
**Parent plan:** [language-structure-lace-pass-3-plan.md](language-structure-lace-pass-3-plan.md).  
**Station:** maps · `ChatGPT-language-structure-pass3`.  
**Authority:** Lab corpus admission only. No release seed is chosen. Open #15 remains OPEN. No source corpus bytes are committed into laceArc.

## 1. Court result

A real definition corpus is available and admissible for the bounded Lab experiment.

The admitted dictionary source is **Open English WordNet 2025 Edition**, release tag `2025-edition`, release commit:

`dc343f2683279ecbb13fab4e2fd778d7b162d287`

The project source states that the 2025 Edition was released 2025-12-31. The release supplies common nouns, verbs, adjectives and adverbs. The repository license says the resource is derived from Princeton WordNet, is developed under CC-BY 4.0, and requires attribution to Princeton WordNet and the Open English WordNet team. The underlying notice is retained separately in the distribution.

This is **AVAILABLE_FOR_LAB**.

That finding does **not** answer:
- whether laceArc ships any seed corpus;
- which corpus a release would ship;
- package-size policy;
- attribution/UI packaging;
- global G1;
- RM-A.

## 2. Source corpus pins

### C-DICT — bounded Open English WordNet definition feed

Repository:

`globalwordnet/english-wordnet`

Pinned release:

`2025-edition @ dc343f2683279ecbb13fab4e2fd778d7b162d287`

License pins:

- `LICENSE.md` blob `fe4d1dce8109caa7016fca97f48e49a9ced36ad4`
- `WNDB_License.txt` blob `cecbc6cf2dcb20ffbcba84319affc1ed0c6dca6f`

The experiment reads only the source's textual `members` and `definition` fields from this fixed file set:

| source file | blob |
|---|---|
| `noun.communication.yaml` | `c60eff9f9d29cabb56cdddd9ee93bc678b4bab08` |
| `noun.cognition.yaml` | `705881be5459a9a187f668ce09248f673f1ad58d` |
| `noun.artifact.yaml` | `845993abaf735f9b33560e151ccfdcca064ecee8` |
| `noun.person.yaml` | `9a985bd0f12c179d1cc25472c6241e3f3e024815` |
| `noun.food.yaml` | `29b78e8388269c8ec7409dbf6b67f613e6eb94c5` |
| `verb.communication.yaml` | `9de31a0a11b0c2ee887670f5546f4faba1a7ba59` |
| `verb.change.yaml` | `65a9be6ad90bd48a08e0fa9a9f8a4cda53fcbbbd` |
| `adj.all.yaml` | `2ab35e22eca2a14ff0163e3eb88ba68b825fc383` |

### Extraction rule

Each YAML synset with both `members` and `definition` becomes one Lab entry:

```
entry text = members in source order + definition text in source order
```

No hypernym, antonym, meronym, synset edge, ILI, sense ID, lexical ID, or graph relation enters the stream.

The eight source files are combined by deterministic **round-robin source-file order**, one entry from each file per round. This prevents the bounded prefix from being merely one lexical category.

The admitted source slice continues until the **headword/member-only control** reaches at least 21,000 G1-B tokens. This produced:

- 9,444 source entries in the fixed source slice;
- 107,578 C-DICT tokens under G1-A/B;
- 106,717 C-DICT tokens under G1-C;
- 21,006 C-HEAD tokens under G1-A/B;
- 20,468 C-HEAD tokens under G1-C.

Only the first 5k / 10k / 20k tokens of each matched experiment are scored.

### Source-machinery fence

Open English WordNet describes a semantic lexical graph. **None of that graph is admitted as Lace machinery.**

The Lab uses raw word/definition text only.

Therefore:

```
OEWN definition text
    = Lab corpus input

OEWN synset / hypernym / semantic graph
    != Lace store
    != G1
    != RM-A
    != Star search authority
```

The historical `lay_wordnet` spelling-intern behavior is not revived.

---

## 3. C-HEAD — vocabulary/headword ablation

Derived from exactly the same pinned C-DICT source entries.

Stream:

```
members only, source order
```

Definitions are removed.

Purpose:

test whether later coverage and recurrence come merely from having a broad vocabulary/headword inventory.

Authority:

`LAB-DERIVED CONTROL`.

It is not a Core intern table and is never stored as one row per spelling.

---

## 4. C-SHUFFLE — token-order destruction control

For each G1 policy and each matched budget:

1. take exactly the first N C-DICT tokens;
2. deterministically shuffle that exact multiset with xorshift seed `487`;
3. score the result with the same sampler.

Thus C-DICT and C-SHUFFLE have **identical unigram counts at each budget**.

Only sequence is destroyed.

Purpose:

if C-DICT's longer recurrence / later-text pattern coverage survives unchanged, the claimed effect was not caused by definition sequence.

Authority:

`LAB-DERIVED CONTROL`.

---

## 5. C-ENTRY — dictionary entry-order control

Use the same fixed source entry slice.

Deterministically permute whole entry order with xorshift seed `947`, preserving each entry's internal:

```
members -> definition
```

sequence.

Purpose:

separate local definition structure from global dictionary entry ordering.

Authority:

`LAB-DERIVED CONTROL`.

Entry boundaries are used only to create this Lab control. No G3 boundary row is inferred.

---

## 6. C-PROSE — ordinary prose seed control

Source:

**Mary Wollstonecraft Shelley, _Frankenstein_**, Project Gutenberg eBook #84, accessed through the GITenberg source repository.

Pinned text:

- repository: `GITenberg/Frankenstein_84`
- file: `84-0.txt`
- blob: `953895d696ad08c3afc974585ebd65d52bb99d70`

GITenberg identifies the book as public domain and carries the Project Gutenberg license. The experiment strips the Gutenberg wrapper by using only text between the START and END ebook markers.

Status:

**AVAILABLE_FOR_LAB**.

This is a control corpus, not a release-seed candidate selected by the project.

---

## 7. Q — later-text probe

Source:

**Lewis Carroll, _Alice's Adventures in Wonderland_**, Project Gutenberg eBook #11, through GITenberg.

Pinned text:

- repository: `GITenberg/Alice-s-Adventures-in-Wonderland_11`
- file: `11-0.txt`
- blob: `0f25e9af379233267a09623e0c650472f9e463ea`

GITenberg identifies the book as public domain and carries the Project Gutenberg license.

The experiment again strips the Gutenberg wrapper and uses the first 10,000 Q tokens under each G1 policy for forward seed-utility measurements.

Full body token counts:

| G1 policy | Alice Q tokens | Frankenstein tokens |
|---|---:|---:|
| G1-A | 26,704 | 75,236 |
| G1-B | 26,704 | 75,236 |
| G1-C | 26,563 | 75,113 |

Status:

**AVAILABLE_FOR_LAB**.

---

## 8. G1 experimental policies

Global G1 remains OPEN.

### G1-A — case-sensitive alphabetic/apostrophe

Regex-equivalent bounded rule:

```
Unicode letter+
with optional internal apostrophe groups
punctuation acts as a separator
case preserved
```

No stemming, lemmatization, synonyms, phrase merge, or semantic normalization.

### G1-B — prior Coffee Cup convention reproduced

Recovered prior receipt:

- alphabetic/apostrophe word tokens;
- case folded to uppercase;
- punctuation not part of the token key.

The Pass-3 implementation uses the same bounded shape:

```
G1-A extraction
then uppercase
```

This is the main comparability policy because the previous SAMPLING / DENSITY / EMERGENCE Coffee Cup experiment used it.

### G1-C — punctuation-sensitive surface control

Bounded rule:

- Unicode letter runs;
- internal apostrophe/hyphen may stay inside a token;
- one trailing `. , ! ? ; :` remains attached to the identity;
- uppercase.

Purpose:

deliberately make punctuation affect reuse.

This is a sensitivity control, not a recommended tokenizer.

### Challenge examples

| input | G1-A | G1-B | G1-C |
|---|---|---|---|
| `PIE` vs `pie` | different | same | same absent punctuation difference |
| `word` vs `word,` | same lexical identity | same | different |
| `Golden Skillet` | two word occurrences | two | two |

No phrase interning or homograph sense split is introduced.

---

## 9. Admission table

| ID | source | role | Lab status | release implication |
|---|---|---|---|---|
| C-DICT | OEWN 2025 pinned release | definition seed candidate | **AVAILABLE_FOR_LAB** | Open #15 remains OPEN; attribution/packaging still separate |
| C-HEAD | derived from C-DICT | vocabulary ablation | **LAB CONTROL** | none |
| C-SHUFFLE | exact C-DICT token multiset shuffled | sequence ablation | **LAB CONTROL** | none |
| C-ENTRY | C-DICT entries permuted | entry-order ablation | **LAB CONTROL** | none |
| C-PROSE | Frankenstein / Project Gutenberg | ordinary prose seed control | **AVAILABLE_FOR_LAB** | none |
| Q | Alice / Project Gutenberg | later-text probe | **AVAILABLE_FOR_LAB** | none |

## 10. Corpus-court verdict

```
REAL DEFINITION CORPUS AVAILABLE          YES, FOR LAB
SOURCE PROVENANCE PINNED                  YES
LICENSE / USE STATE RECORDED              YES
SEMANTIC GRAPH IMPORTED                   NO
MATCHED-BUDGET CONTROLS POSSIBLE          YES
RELEASE SEED SELECTED                     NO
OPEN #15 CLOSED                           NO
GLOBAL G1 CLOSED                          NO
```
