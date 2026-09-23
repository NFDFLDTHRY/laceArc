# Language structure / interaction loop — Pass 4 held-out retrieval ledger

**Status:** EXECUTED PASS-4 NUMERIC ARTIFACT.  
**Plan:** [language-structure-lace-pass-4-plan.md](language-structure-lace-pass-4-plan.md).  
**Court:** [language-structure-lace-pass-4-retrieval-court.md](language-structure-lace-pass-4-retrieval-court.md).  
**Findings:** [language-structure-lace-pass-4-findings.md](language-structure-lace-pass-4-findings.md).  
**Station:** maps · `Grok-language-structure-pass4`.  
**Authority:** Lab measurements only.

## Freeze (unchanged after seeing held-out numbers)

| parameter | value |
|---|---|
| max exact query depth | 6 |
| primary continuation | 1 word |
| multiword k=2..5 full matrix | NOT_PERFORMED |
| R4-C floor | 2 |
| G1 | A, B, C |
| seed budget | 20,000 |
| Alice final | 10,000–19,999 |
| Frankenstein local | 20,000–29,999 |
| OEWN final | held-out definition tokens 5,000–14,999 after reconstructed slice |
| ties | preserved |
| weighted scalar | none |

## Reconstruction

Pass-3 blobs re-fetched; `git hash-object` matched. Source slice reached 21,002 C-HEAD G1-B tokens at 7,100 entries (Pass 3 published 9,444). Alice G1-B 27,354 tokens; Frankenstein 75,332. C-SHUFFLE is the pure order control. C-ENTRY is a different 20k window after entry permutation.

Phase A shuffle contrast G1-B 20k: n3 0.0953 vs 0.0075; n4 0.0358 vs 0.0004.

## Headline G1-B one-word strict top-1 / coverage

| seed | Alice-final strict | Alice-final cov | OEWN-final strict | OEWN-final cov | Frank-local strict | Frank-local cov |
|---|---:|---:|---:|---:|---:|---:|
| C-DICT | 0.030 | 0.732 | 0.053 | 0.687 | 0.029 | 0.689 |
| C-SHUFFLE | 0.010 | 0.732 | 0.021 | 0.687 | 0.007 | 0.689 |
| C-HEAD | 0.010 | 0.574 | 0.014 | 0.598 | 0.012 | 0.520 |
| C-ENTRY | 0.033 | 0.731 | 0.076 | 0.716 | 0.035 | 0.675 |
| C-PROSE | 0.057 | 0.824 | 0.029 | 0.577 | 0.091 | 0.883 |

R4-A shown. R4-D/F track R4-A (max support at n=1). R4-B mean n ≈ 1.18–1.49. R4-H/I/J lower coverage, unresolved band 0.10–0.30, no large strict lift.

## G1 robustness C-DICT × Alice-final

| G1 | R4-A strict | R4-A cov | R4-B strict | R4-H strict | R4-H cov |
|---|---:|---:|---:|---:|---:|
| A | 0.028 | 0.663 | 0.027 | 0.026 | 0.562 |
| B | 0.030 | 0.732 | 0.030 | 0.028 | 0.622 |
| C | 0.030 | 0.615 | 0.030 | 0.029 | 0.522 |

## Refuses

No universal resolver. No universal seed. No RM-A. No decoder claim. No embedding comparison.
