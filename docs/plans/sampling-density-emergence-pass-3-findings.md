# SAMPLING / DENSITY / EMERGENCE - Pass 3 findings

**Status:** EXECUTED 2026-09-21.
**Name:** STAR SEARCH / ANCHORED PATTERN CONE.
**Station:** maps (Astra-star-search).
**Plan:** sampling-density-emergence-pass-3-plan.md.
**Execute base:** d2b72163e2e76856956925ecfe1f901222e28486.
**Execution claim:** 4d71e05e4ef6194cccc77e0f3a7c8dfcf2e64339.
**Law files edited:** NO.
**Implementation:** none. No src/. No Cargo. No Rust.
**Acceptance:** absent.

## 0. Result

Pass 3 answers the human's star/search question:

\[
\boxed{
\text{Yes: the star can act as a read-only search entrypoint, but it must remain layered.}
}
\]

The surviving model is:

\[
\boxed{
StarSearch(a)
=
Lexical(a)
+
AnchoredPatterns(a)
+
PointerPaths(a)
}
\]

where:

- **Lexical** gives root/occurrences/root-touch;
- **AnchoredPatterns** reads repeated multi-scale structures from the 2D sampler;
- **PointerPaths** reads actual retained 1D participation where POINTER history exists.

The layers must not be flattened.

The main falsifier that fired is saturation:

\[
\boxed{
\text{flat transitive star membership is too broad by itself.}
}
\]

For D1 PIE, every retained POINTER row eventually contains PIE in its ancestry.

Useful search therefore needs the structural path, not merely membership.

---

## 1. QUESTION source facts

Bounded Coffee Cup specimen:
- 1,219 word tokens under the Pass-2 specimen tokenizer;
- no stemming;
- case-folded exact token identity;
- no semantic normalization.

QUESTION positions:

| occurrence | token position | local structural context |
|---:|---:|---|
| 1 | 261 | STAGE ANSWERS ONE QUESTION ONLY WHY WAS A FALL POSSIBLE |
| 2 | 425 | RELEASE ANSWERS ONE QUESTION ONLY WHEN DID MOTION BEGIN |
| 3 | 666 | TRAJECTORY ANSWERS ONE QUESTION ONLY WHEN COULD THIS OUTCOME STILL BE ALTERED |
| 4 | 789 | IMPACT ANSWERS ONE QUESTION ONLY WHAT DID REALITY PRODUCE |
| 5 | 918 | AFTERMATH ANSWERS ONE QUESTION ONLY WHAT THIS EVENT BECOMES |
| 6 | 1188 | THE ONLY REAL QUESTION IS NOT WHO IS TO BLAME |
| 7 | 1196 | THE QUESTION IS WHETHER YOU CAN SEE THE FALL |

Thus:

\[
|Occ(QUESTION)|=7.
\]

Five occurrences share the exact four-word scaffold:

\[
ANSWERS\ ONE\ QUESTION\ ONLY.
\]

Two later occurrences share:

\[
QUESTION\ IS.
\]

No semantic interpretation is required to recover either branch.

---

## 2. Anchored sample cone

Pass 2's 2D cell:

\[
S[n,t]=(r_{t-n+1},\ldots,r_t).
\]

For each QUESTION position q, the anchored cone contains every cell whose span includes q.

Because all seven occurrences are far enough from specimen edges, the number of distinct QUESTION-containing cells at small n is:

| n | anchored cells |
|---:|---:|
| 1 | 7 |
| 2 | 14 |
| 3 | 21 |
| 4 | 28 |
| 5 | 35 |
| 6 | 42 |

The cone is derived from the 2D sampling surface.

No star table is stored.

---

## 3. Complete repeated QUESTION-containing classes

Exact repeated anchored classes were independently recomputed.

### n=1

| support | pattern |
|---:|---|
| 7 | QUESTION |

### n=2

| support | pattern |
|---:|---|
| 5 | ONE QUESTION |
| 5 | QUESTION ONLY |
| 2 | QUESTION IS |

### n=3

| support | pattern |
|---:|---|
| 5 | ANSWERS ONE QUESTION |
| 5 | ONE QUESTION ONLY |
| 2 | QUESTION ONLY WHAT |
| 2 | QUESTION ONLY WHEN |

### n=4

| support | pattern |
|---:|---|
| 5 | ANSWERS ONE QUESTION ONLY |
| 2 | ONE QUESTION ONLY WHAT |
| 2 | ONE QUESTION ONLY WHEN |

### n=5

| support | pattern |
|---:|---|
| 2 | ANSWERS ONE QUESTION ONLY WHAT |
| 2 | ANSWERS ONE QUESTION ONLY WHEN |

### n>=6

No exact repeated QUESTION-containing pattern exists at n=6.

Any repeated longer pattern would contain a repeated n=6 subpattern.

Therefore:

\[
\boxed{
n_{max,\ recurring}(QUESTION)=5.
}
\]

Planning pre-audit counts were confirmed exactly.

---

## 4. Support-by-scale result

Maximum support by n:

\[
7,\ 5,\ 5,\ 5,\ 2,\ 0.
\]

So support does **not** strictly decrease at every scale.

Instead the star exhibits:
- a lexical root with support 7;
- a stable five-occurrence trunk through n=4;
- a branch split at n=5;
- recurrence termination at n=6.

This is more informative than a generic claim that "support falls with scale."

The star has a **support plateau followed by branching and extinction**.

---

## 5. Exact extension DAG

Repeated anchored patterns form an n→n+1 extension DAG.

Edges:

### From QUESTION

\[
QUESTION
\to
ONE\ QUESTION
\]

\[
QUESTION
\to
QUESTION\ ONLY
\]

\[
QUESTION
\to
QUESTION\ IS.
\]

### Shared five-occurrence trunk

\[
ONE\ QUESTION
\to
ANSWERS\ ONE\ QUESTION
\]

\[
ONE\ QUESTION
\to
ONE\ QUESTION\ ONLY
\]

\[
QUESTION\ ONLY
\to
ONE\ QUESTION\ ONLY
\]

\[
ANSWERS\ ONE\ QUESTION
\to
ANSWERS\ ONE\ QUESTION\ ONLY
\]

\[
ONE\ QUESTION\ ONLY
\to
ANSWERS\ ONE\ QUESTION\ ONLY.
\]

### WHEN branch

\[
QUESTION\ ONLY
\to
QUESTION\ ONLY\ WHEN
\]

\[
ONE\ QUESTION\ ONLY
\to
ONE\ QUESTION\ ONLY\ WHEN
\]

\[
QUESTION\ ONLY\ WHEN
\to
ONE\ QUESTION\ ONLY\ WHEN
\]

\[
ANSWERS\ ONE\ QUESTION\ ONLY
\to
ANSWERS\ ONE\ QUESTION\ ONLY\ WHEN.
\]

### WHAT branch

The same form holds for WHAT.

### Quiet End branch

\[
QUESTION
\to
QUESTION\ IS
\]

has support 2.

Its next tokens diverge:

- QUESTION IS NOT ...
- QUESTION IS WHETHER ...

Therefore the recurrent Quiet End branch terminates at n=2.

---

## 6. Shared trunk and exact fan-out

The exact recurring trunk:

\[
ANSWERS\ ONE\ QUESTION\ ONLY
\]

has support:

\[
5.
\]

Its right continuations are:

| next token | count |
|---|---:|
| WHY | 1 |
| WHEN | 2 |
| WHAT | 2 |

This is structural branching only.

No claim is made about what WHY / WHEN / WHAT mean.

At recurrence threshold >=2:
- WHEN and WHAT continue as repeated branches;
- WHY becomes unique context.

This cleanly separates:
- repeated trunk;
- recurrent branches;
- unique continuation.

---

## 7. Three search-path witnesses

### Witness A - Stage One

\[
QUESTION
\to
ONE\ QUESTION
\to
ANSWERS\ ONE\ QUESTION
\to
ANSWERS\ ONE\ QUESTION\ ONLY
\to
WHY\ WAS\ A\ FALL\ POSSIBLE.
\]

### Witness B - Stage Two

\[
QUESTION
\to
QUESTION\ ONLY
\to
ANSWERS\ ONE\ QUESTION\ ONLY
\to
WHEN\ DID\ MOTION\ BEGIN.
\]

### Witness C - Stage Four

\[
QUESTION
\to
ONE\ QUESTION\ ONLY
\to
ANSWERS\ ONE\ QUESTION\ ONLY
\to
WHAT\ DID\ REALITY\ PRODUCE.
\]

These paths are reconstructed from exact source positions and 2D sample extensions.

They require no semantic labels or persistent search index.

---

## 8. Star intersection - QUESTION x ANSWERS

Repeated exact patterns containing both QUESTION and ANSWERS:

| n | support | shared pattern |
|---:|---:|---|
| 3 | 5 | ANSWERS ONE QUESTION |
| 4 | 5 | ANSWERS ONE QUESTION ONLY |
| 5 | 2 | ANSWERS ONE QUESTION ONLY WHEN |
| 5 | 2 | ANSWERS ONE QUESTION ONLY WHAT |

Therefore:

\[
StarSearch(QUESTION)
\cap
StarSearch(ANSWERS)
\]

is nonempty and reconstructible from the same 2D lattice.

No stored star-intersection table is required.

---

## 9. One word -> pattern -> word hop

The repeated QUESTION patterns contain other root identities:

\[
\{
ANSWERS,\ ONE,\ ONLY,\ IS,\ WHAT,\ WHEN
\}.
\]

Thus one bounded search hop is:

\[
QUESTION
\to
ANSWERS\ ONE\ QUESTION\ ONLY
\to
ANSWERS.
\]

Likewise:

\[
QUESTION
\to
QUESTION\ IS
\to
IS.
\]

This proves the mechanism:

\[
\boxed{
word\ root
\to
repeated\ pattern
\to
other\ word\ root
}
\]

without inventing a direct word-to-word edge.

The pattern remains the witness connecting the roots.

---

## 10. D1 PIE lexical layer

D1 PIE WORD rows:

\[
0000,\quad0003.
\]

Root:

\[
0000.
\]

Later occurrence:

\[
0003.
\]

Ruled RootTouch:

\[
0004=Join(0003,0000).
\]

So the lexical star layer is not merely:

\[
\{0000,0003\}.
\]

It includes the retained root-touch witness:

\[
0004.
\]

---

## 11. D1 PIE direct retained participation

POINTER rows that directly reference a PIE WORD occurrence/root:

| pointer | direct PIE reference |
|---:|---|
| 0002 | 0000 |
| 0004 | 0003 and 0000 |
| 0006 | 0003 |

Thus direct retained participation:

\[
Direct_{PIE}
=
\{0002,0004,0006\}.
\]

Roles differ:
- 0004 is RootTouch;
- 0002 and 0006 are other retained relations.

Search must preserve that structural distinction.

---

## 12. D1 PIE transitive participation

Rows whose recursive Reach contains PIE:

\[
\{0000,0002,0003,0004,0006,0007,0009,0010\}.
\]

Pointer-only subset:

\[
\{0002,0004,0006,0007,0009,0010\}.
\]

There are exactly six POINTER rows in D1.

Therefore:

\[
\boxed{
100\%\text{ of D1 POINTER rows transitively participate in PIE.}
}
\]

Across all eleven D1 rows:

\[
\frac{8}{11}
\approx72.7\%.
\]

This is the saturation result.

A flat definition:

\[
Star(PIE)=\{p:PIE\in Reach(p)\}
\]

is too broad to be a sufficient search result model even in this tiny specimen.

---

## 13. Minimum retained-pointer distance

Reverse participation distance from either PIE WORD row:

| row | minimum distance | structural role |
|---:|---:|---|
| 0000 | 0 | PIE root |
| 0003 | 0 | later PIE occurrence |
| 0002 | 1 | direct PIE/DESSERT relation |
| 0004 | 1 | direct RootTouch |
| 0006 | 1 | direct PIE/WHOLE relation |
| 0007 | 2 | relation combining 0006 and 0004 |
| 0010 | 2 | shortest route through 0002 |
| 0009 | 3 | relation above 0007 |

Minimum distance is derivable without meaning.

But distance alone is not sufficient.

---

## 14. Alternative retained paths matter

For 0010, PIE reaches it through multiple paths.

Short path:

\[
0000
\to
0002
\to
0010.
\]

Long branch:

\[
0003
\to
0006
\to
0007
\to
0009
\to
0010.
\]

Other branch:

\[
0000
\to
0004
\to
0007
\to
0009
\to
0010.
\]

Thus:

\[
dist_{PIE}(0010)=2
\]

does not describe the complete relational history.

Search should be able to expose:
- minimum distance;
- actual witness path;
- alternative retained paths.

Pass 3 does not define ranking among them.

---

## 15. Two PIE pointer-path witnesses

### Path A - older PIE branch

\[
0000\ PIE
\to
0002\ PIE/DESSERT
\to
0010.
\]

### Path B - later PIE / root-touch branch

\[
0003\ PIE
\to
0004\ RootTouch
\to
0007
\to
0009
\to
0010.
\]

These are actual retained 1D paths.

They prove that pointer search reaches beyond contiguous text recurrence.

---

## 16. Three-layer star model - verdict

### S1 - lexical

Derived/read:
- root;
- occurrences;
- RootTouch.

### S2 - anchored sampling pattern cone

Derived from 2D:
- repeated exact patterns;
- sample scale;
- support;
- extension DAG;
- branch continuations;
- source spans.

### S3 - retained pointer overlay

Derived from 1D:
- direct retained relations;
- transitive participation;
- minimum distance;
- actual path witnesses;
- alternative paths.

Verdict:

\[
\boxed{
\textbf{ADMIT as the current star-search model.}
}
\]

Authority:
- star-as-view/search direction: R;
- exact Coffee pattern cone: bounded specimen result;
- D1 retained overlay: P + current Reach model;
- combined three-layer search model: I, supported by both witnesses.

It remains a read model.

It writes nothing.

---

## 17. What Pass 3 disproves

### Flat lexical concordance is insufficient

QUESTION search recovers repeated structures up to n=5.

So star search is more than occurrences.

### Flat transitive pointer membership is insufficient

PIE reaches every D1 POINTER row.

So binary in-star/not-in-star membership saturates.

### Minimum distance alone is insufficient

0010 has a short PIE path and several longer relational branches.

### Meaning is unnecessary for structural retrieval

All QUESTION trunks/branches and D1 pointer paths were recovered using:
- exact word/root identity;
- position/scale samples;
- pointer ancestry.

No embeddings or semantic labels.

---

## 18. Pass-3 falsifier board

| ID | Result |
|---|---|
| **F3-1 QUESTION returns only occurrences** | **did not fire** - repeated patterns recovered through n=5 |
| **F3-2 recurrence needs semantic labels** | **did not fire** |
| **F3-3 anchored graph cannot be built** | **did not fire** |
| **F3-4 repeated patterns cannot form extension DAG** | **did not fire** |
| **F3-5 five-occurrence scaffold not recovered** | **did not fire** - exact support 5 |
| **F3-6 QUESTION IS branch lost** | **did not fire** - support 2, distinct branch |
| **F3-7 branch continuation needs semantics** | **did not fire** |
| **F3-8 support does not thin at scale** | **did not fire** - plateau 5 through n=4, split to 2 at n=5, zero at n=6 |
| **F3-9 star search needs sentence/page boundaries** | **did not fire** - positions sampled on raw stream |
| **F3-10 PIE participation cannot be derived** | **did not fire** |
| **F3-11 flat transitive PIE star saturates and no structure distinguishes it** | **PARTLY FIRED** - saturation is real, but distance/path metadata distinguishes structure |
| **F3-12 minimum distance cannot be derived** | **did not fire** |
| **F3-13 pointer overlay needs meaning** | **did not fire** |
| **F3-14 word-pattern-word hop needs stored index** | **did not fire** |
| **F3-15 QUESTION x ANSWERS intersection cannot be derived** | **did not fire** |
| **F3-16 search writes Lace** | **did not fire** |
| **F3-17 persistent star/trie/embedding store required** | **did not fire** |
| **F3-18 search cannot be reconstructed** | **did not fire** |
| **F3-19 pass defines retention/ranking** | **did not fire** |
| **F3-20 law/code required** | **did not fire** |

The one useful falsifier event is saturation.

It refutes the **flat-star result model**, not the layered star-search thesis.

---

## 19. Proof board

| # | Requirement | Result |
|---:|---|---|
| 1 | all 7 QUESTION occurrences | **PASS** |
| 2 | complete repeated anchored classes | **PASS** |
| 3 | pre-audit counts independently confirmed | **PASS** |
| 4 | longest repeated QUESTION pattern | **PASS: n=5** |
| 5 | extension DAG | **PASS** |
| 6 | shared trunk | **PASS** |
| 7 | WHEN / WHAT / WHY fan-out | **PASS** |
| 8 | QUESTION IS branch | **PASS** |
| 9 | three search paths | **PASS** |
| 10 | QUESTION x ANSWERS intersection | **PASS** |
| 11 | word-pattern-word hop | **PASS** |
| 12 | D1 PIE lexical rows | **PASS** |
| 13 | D1 direct POINTER rows | **PASS** |
| 14 | D1 transitive rows | **PASS** |
| 15 | pointer distance table | **PASS** |
| 16 | saturation fraction | **PASS** |
| 17 | two PIE pointer paths | **PASS** |
| 18 | flat-star saturation test | **PASS - flat model refuted** |
| 19 | 20 falsifiers | **PASS** |
| 20 | no law/code changes | **PASS** |

**Board: 20/20 PASS.**

---

## 20. Actual leftovers for Pass 4

Pass 3 closes the question:

> Can the star serve as a structural search entrypoint?

Current answer:

\[
\boxed{
\text{YES, as a layered read model.}
}
\]

Pass 4 therefore must **not** revisit whether star search works.

The actual leftovers are:

### G3-A - result saturation / bounding

Flat transitive participation saturates.

How should search expose farther structure progressively without returning most of Lace by default?

### G3-B - nested recurrence redundancy

QUESTION's repeated n=1...5 ridge contains many nested patterns.

How can a view preserve:
- high-support trunk;
- branch changes;
- longer specific extensions;

without dumping every nested cell?

### G3-C - path representation

Minimum pointer distance is useful but incomplete.

How should a search result preserve:
- shortest path;
- alternative paths;
- directness;
- branch history?

### G3-D - star-hop expansion

One word->pattern->word hop is reconstructible.

How quickly does repeating that operation explode for:
- QUESTION;
- tighter anchors;
- common anchors?

### G3-E - structural ordering

Can search remain useful using only:
- layer;
- scale;
- support;
- branch fan-out;
- pointer distance;
- hop depth;

without an arbitrary semantic scalar score?

### G3-F - minimal search result contract

What is the smallest derived record that preserves enough structure for:
- lexical occurrence;
- recurrent pattern hit;
- retained pointer-path hit;
- one-hop neighboring-star hit?

These are the only questions Pass 4 should inherit from this campaign.

---

## 21. Recommended Pass-4 target

Pass 4 should be:

\[
\boxed{
\textbf{STRUCTURAL SEARCH FRONTIERS / PATH PRESERVATION}
}
\]

Use:
- QUESTION as the proven structured anchor;
- a tighter anchor from the same scaffold;
- a high-frequency anchor as saturation stress;
- D1 PIE as retained-pointer path control.

Compare:
- nested pattern compression;
- structural partial orderings;
- pointer distance rings;
- shortest vs alternative path preservation;
- one-hop vs two-hop star expansion.

Do not:
- reopen star-search viability;
- define semantic relevance;
- invent weighted scores;
- revisit retention.

Pass 4 is not opened automatically by this findings file.

## Steward verdict

Start at a word.

The 2D sampler tells you which larger exact structures repeatedly grow through that word.

The 1D POINTER map tells you which retained relational paths pass through it.

That is enough to search.

But a flat star becomes useless as Lace grows.

The next problem is preserving **shape and distance** while the search expands.


---

## 22. Final verification

Final pre-release tip:

**c152d0edc8365dcda0505d373411092ede138abd**

Tracked tree:

- 702 paths
- recursive tree not truncated
- src/ paths: 0
- Cargo.toml paths: 0
- .rs files: 0

Law surfaces remained byte-unchanged:

- pointer-emission.md: 51224368ae966b6c480746925caa2cade970842e
- systems-manifest.md: 6f0310099cbcf482ad884f653f423b4e806f724b

Law station remained FREE.

Pass 3 is closed as EXECUTED.
Pass 4 has been rewritten from the actual Pass-3 leftovers only.

**PASS 3 COMPLETE.**
