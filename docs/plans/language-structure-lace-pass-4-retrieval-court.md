# Language structure / interaction loop — Pass 4 retrieval candidate court

**Status:** EXECUTED PASS-4 ARTIFACT.  
**Plan:** [language-structure-lace-pass-4-plan.md](language-structure-lace-pass-4-plan.md).  
**Ledger:** [language-structure-lace-pass-4-retrieval-ledger.md](language-structure-lace-pass-4-retrieval-ledger.md).  
**Mechanism map:** [language-structure-lace-pass-4-mechanism-map.md](language-structure-lace-pass-4-mechanism-map.md).  
**Execution claim (takeover):** `d86f0b84b2601f4480a166b7840edcd0122b2c42`.  
**Prior stalled claim:** `b0a2eeda4e1af997f8e46802c33027c064e10ddc` (`ChatGPT-language-structure-pass4`) after Product A only.  
**Station:** maps · `Grok-language-structure-pass4`.  
**Authority:** Lab court only. No Core / law / model / manifest acceptance.

## 1. What stalled, what this file finishes

ChatGPT executed Product A (OM crosswalk + freeze) and left maps HELD. Products B–E and the held-out score were not on the tree.

Human instruction 2026-09-22: take over the stalled Pass 4. This file is Product B: the machine that was frozen is now the machine that was run.

## 2. Query cone (executed)

For probe token position `t` with frozen depth `m=6`:

```
Q_t = { (x_t), (x_{t-1},x_t), … } for n=1..min(6,t+1)
```

The next probe token `x_{t+1}` is never part of the query.

Fixed-seed court: historical candidates come only from the named 20k seed. Probe prefix supplies query shape and is not added to the seed during scoring.

## 3. Match / continuation (executed)

Base match is exact ordered identity equality.

For pattern `p` found in the seed with a following token, `Count_p(c)` is the historical next-token count. `Modes(p)` is the empirical mode set. Ties are kept.

This is the only meaning of "most likely" inside one pattern.

## 4. Resolvers executed

R4-A through R4-J were all executed. None was rejected before scoring.

| ID | rule run |
|---|---|
| R4-A | n=1 only |
| R4-B | largest n with any continuation |
| R4-C | largest n with N_p ≥ 2 |
| R4-D | maximal N_p |
| R4-E | largest n, then largest N_p |
| R4-F | largest N_p, then largest n |
| R4-G | maximal Conf = max Count/N |
| R4-H | Pareto on (n, N, Conf); resolve only on mode agreement |
| R4-I | all matching scales; resolve only on mode agreement |
| R4-J | Pareto on (n, N); resolve only on mode agreement |

No weighted scalar was introduced after seeing numbers.

## 5. Rich-query extensions

| ID | status |
|---|---|
| Q4-X1 multi-anchor intersection | NOT EXECUTED as a separate scorer; R4-I is the executed agreement test |
| Q4-X2 branch-shape signature | NOT EXECUTED |
| Q4-X3 retained POINTER path signature on OEWN/Alice/Frankenstein | FORBIDDEN and not run (no lawful generic RM-A topology on those streams) |
| Q4-X3 D1 path inspection | recorded as a separated witness in findings, not mixed into the text benchmark |

## 6. Parameter freeze

Identical to the mechanism map §7. Recorded again on the ledger header. Not edited after held-out scoring.

## 7. Benchmarks run

| ID | seed | probe window | ran |
|---|---|---|---|
| B4-PROSE-1 | C-DICT, C-HEAD, C-SHUFFLE, C-ENTRY, C-PROSE | Alice 10,000–19,999 | YES |
| B4-DICT-1 | same five seeds | held-out OEWN definitions after reconstructed source slice; final 5,000–14,999 | YES |
| B4-PROSE-2 | same five seeds | Frankenstein 20,000–29,999 | YES |
| B4-SHUFFLE | C-SHUFFLE vs C-DICT | all three finals | YES |
| development | Alice 1–9,999 and OEWN held-out 1–4,999 | inspected, not used to change frozen rules | YES |

Development numbers exist in the ledger so a later reader can see they were not hidden. They did not retune R4-A..J.

## 8. Similarity court

Embeddings, synonym folding, edit distance, and semantic graphs were not used.

## 9. Court verdict before interpretation

```
QUERY CONE                         EXECUTED
EXACT HISTORICAL PATTERN MATCH    EXECUTED
ONE-WORD BRANCH FREQUENCY         EXECUTED
R4-A .. R4-J                      EXECUTED
CROSS-SCALE AGREEMENT             EXECUTED AS R4-H/I/J
MULTIWORD FULL MATRIX             NOT_PERFORMED
SEMANTIC SIMILARITY               NOT USED
PERSISTENT SEARCH STORE           NOT USED
CORPUS POINTER FICTION            NOT USED
RETRIEVAL WRITE AUTHORITY         NONE
RM-A EFFECT                        NONE
PASS 5 DECODE                     NOT OPENED
```
