# Language structure / interaction loop — Pass 3 G1 sensitivity + density ledger

**Status:** EXECUTED PASS-3 NUMERIC ARTIFACT.  
**Corpus court:** [language-structure-lace-pass-3-corpus-court.md](language-structure-lace-pass-3-corpus-court.md).  
**Authority:** Lab measurements only. No density metric is stored on Lace; no metric is a retain-when rule.

## 1. Instrument reproduction

The existing APPLES specimen was recomputed under G1-B from the exact four sentences recorded by the sampling campaign.

- tokens: **27** (expected 27)
- distinct identities: **17**
- longest exact recurrence: **n=5** (expected n=5)

| n | repeated classes | recurrent occurrences | max support |
|---:|---:|---:|---:|
| 1 | 6 | 16 | 4 |
| 2 | 4 | 10 | 3 |
| 3 | 3 | 7 | 3 |
| 4 | 2 | 4 | 2 |
| 5 | 1 | 2 | 2 |
| 6 | 0 | 0 | 0 |
| 7 | 0 | 0 | 0 |

This reproduces the prior APPLES recurrence board: 6/4/3/2/1 repeated classes through n=5 and none at n>=6. The Pass-3 instrument is therefore admitted.

## 2.1 G1-A

Source lengths before budget cut: C-DICT 107,578 · C-HEAD 21,006 · C-PROSE 75,236 · Q 26,704 tokens.

### N = 5,000 admitted tokens

| corpus | U | repeated-token fraction | n2 R / K | n3 R / K | n4 R / K | n5 R / K | n6 R / K | longest |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| DICT | 1938 | 0.7362 | 438 / 0.2595 | 181 / 0.0870 | 89 / 0.0398 | 48 / 0.0210 | 28 / 0.0122 | 6 |
| HEAD | 3250 | 0.4968 | 119 / 0.0522 | 15 / 0.0062 | 2 / 0.0008 | 0 / 0.0000 | 0 / 0.0000 | 4 |
| SHUFFLE | 1938 | 0.7362 | 158 / 0.0996 | 7 / 0.0028 | 0 / 0.0000 | 0 / 0.0000 | 0 / 0.0000 | 3 |
| ENTRY | 2323 | 0.6524 | 263 / 0.1710 | 73 / 0.0426 | 27 / 0.0170 | 13 / 0.0084 | 10 / 0.0052 | 6 |
| PROSE | 1610 | 0.7808 | 394 / 0.2482 | 67 / 0.0332 | 14 / 0.0102 | 8 / 0.0072 | 5 / 0.0054 | 6 |

Forward seed utility against the first 10,000 Q tokens:

| seed | lexical coverage | bigram coverage | trigram coverage | 4-gram coverage | 5-gram coverage | first bigram hit | first trigram hit |
|---|---:|---:|---:|---:|---:|---:|---:|
| DICT | 0.5540 | 0.0726 | 0.0030 | 0.0004 | 0.0000 | 19 | 64 |
| HEAD | 0.3516 | 0.0154 | 0.0002 | 0.0000 | 0.0000 | 28 | 7141 |
| SHUFFLE | 0.5540 | 0.0446 | 0.0001 | 0.0000 | 0.0000 | 31 | 3561 |
| ENTRY | 0.5394 | 0.0617 | 0.0031 | 0.0001 | 0.0000 | 28 | 62 |
| PROSE | 0.7035 | 0.1334 | 0.0088 | 0.0006 | 0.0001 | 28 | 81 |
| NONE / dictionary-after-Q at Q start | 0 | 0 | 0 | 0 | 0 | — | — |

### N = 10,000 admitted tokens

| corpus | U | repeated-token fraction | n2 R / K | n3 R / K | n4 R / K | n5 R / K | n6 R / K | longest |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| DICT | 3441 | 0.7739 | 860 / 0.2750 | 339 / 0.0843 | 137 / 0.0322 | 66 / 0.0155 | 36 / 0.0085 | 6 |
| HEAD | 6084 | 0.5425 | 241 / 0.0540 | 32 / 0.0065 | 3 / 0.0006 | 0 / 0.0000 | 0 / 0.0000 | 4 |
| SHUFFLE | 3441 | 0.7739 | 388 / 0.1293 | 23 / 0.0053 | 0 / 0.0000 | 0 / 0.0000 | 0 / 0.0000 | 3 |
| ENTRY | 3914 | 0.7255 | 624 / 0.2203 | 219 / 0.0631 | 82 / 0.0247 | 42 / 0.0119 | 25 / 0.0056 | 6 |
| PROSE | 2650 | 0.8324 | 869 / 0.2949 | 177 / 0.0407 | 26 / 0.0075 | 9 / 0.0038 | 5 / 0.0027 | 6 |

Forward seed utility against the first 10,000 Q tokens:

| seed | lexical coverage | bigram coverage | trigram coverage | 4-gram coverage | 5-gram coverage | first bigram hit | first trigram hit |
|---|---:|---:|---:|---:|---:|---:|---:|
| DICT | 0.6079 | 0.0911 | 0.0037 | 0.0004 | 0.0000 | 19 | 62 |
| HEAD | 0.4184 | 0.0221 | 0.0003 | 0.0000 | 0.0000 | 28 | 7141 |
| SHUFFLE | 0.6079 | 0.0470 | 0.0002 | 0.0000 | 0.0000 | 28 | 8257 |
| ENTRY | 0.6133 | 0.0826 | 0.0049 | 0.0001 | 0.0000 | 28 | 62 |
| PROSE | 0.7532 | 0.1909 | 0.0148 | 0.0008 | 0.0001 | 28 | 81 |
| NONE / dictionary-after-Q at Q start | 0 | 0 | 0 | 0 | 0 | — | — |

### N = 20,000 admitted tokens

| corpus | U | repeated-token fraction | n2 R / K | n3 R / K | n4 R / K | n5 R / K | n6 R / K | longest |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| DICT | 5829 | 0.8191 | 1814 / 0.3152 | 787 / 0.1026 | 329 / 0.0391 | 165 / 0.0190 | 87 / 0.0098 | 6 |
| HEAD | 10910 | 0.6103 | 556 / 0.0638 | 67 / 0.0068 | 7 / 0.0007 | 1 / 0.0001 | 0 / 0.0000 | 5 |
| SHUFFLE | 5829 | 0.8191 | 808 / 0.1524 | 67 / 0.0078 | 1 / 0.0002 | 0 / 0.0000 | 0 / 0.0000 | 4 |
| ENTRY | 6397 | 0.7910 | 1451 / 0.2747 | 576 / 0.0868 | 250 / 0.0359 | 133 / 0.0177 | 82 / 0.0095 | 6 |
| PROSE | 3947 | 0.8883 | 2126 / 0.3822 | 575 / 0.0667 | 90 / 0.0105 | 17 / 0.0027 | 5 / 0.0014 | 6 |

Forward seed utility against the first 10,000 Q tokens:

| seed | lexical coverage | bigram coverage | trigram coverage | 4-gram coverage | 5-gram coverage | first bigram hit | first trigram hit |
|---|---:|---:|---:|---:|---:|---:|---:|
| DICT | 0.6686 | 0.1170 | 0.0058 | 0.0005 | 0.0000 | 19 | 62 |
| HEAD | 0.4903 | 0.0279 | 0.0017 | 0.0000 | 0.0000 | 28 | 145 |
| SHUFFLE | 0.6686 | 0.0776 | 0.0008 | 0.0000 | 0.0000 | 19 | 1189 |
| ENTRY | 0.6616 | 0.1115 | 0.0071 | 0.0004 | 0.0000 | 28 | 62 |
| PROSE | 0.8053 | 0.2526 | 0.0242 | 0.0020 | 0.0004 | 25 | 62 |
| NONE / dictionary-after-Q at Q start | 0 | 0 | 0 | 0 | 0 | — | — |

## 2.2 G1-B

Source lengths before budget cut: C-DICT 107,578 · C-HEAD 21,006 · C-PROSE 75,236 · Q 26,704 tokens.

### N = 5,000 admitted tokens

| corpus | U | repeated-token fraction | n2 R / K | n3 R / K | n4 R / K | n5 R / K | n6 R / K | longest |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| DICT | 1932 | 0.7374 | 438 / 0.2597 | 181 / 0.0870 | 89 / 0.0398 | 48 / 0.0210 | 28 / 0.0122 | 6 |
| HEAD | 3233 | 0.5010 | 119 / 0.0522 | 15 / 0.0062 | 2 / 0.0008 | 0 / 0.0000 | 0 / 0.0000 | 4 |
| SHUFFLE | 1932 | 0.7374 | 158 / 0.0996 | 7 / 0.0028 | 0 / 0.0000 | 0 / 0.0000 | 0 / 0.0000 | 3 |
| ENTRY | 2315 | 0.6548 | 263 / 0.1710 | 73 / 0.0426 | 27 / 0.0170 | 13 / 0.0084 | 10 / 0.0052 | 6 |
| PROSE | 1537 | 0.7908 | 404 / 0.2593 | 72 / 0.0356 | 15 / 0.0106 | 8 / 0.0072 | 5 / 0.0054 | 6 |

Forward seed utility against the first 10,000 Q tokens:

| seed | lexical coverage | bigram coverage | trigram coverage | 4-gram coverage | 5-gram coverage | first bigram hit | first trigram hit |
|---|---:|---:|---:|---:|---:|---:|---:|
| DICT | 0.5870 | 0.0768 | 0.0031 | 0.0004 | 0.0000 | 19 | 64 |
| HEAD | 0.3932 | 0.0156 | 0.0002 | 0.0000 | 0.0000 | 28 | 7141 |
| SHUFFLE | 0.5870 | 0.0471 | 0.0001 | 0.0000 | 0.0000 | 31 | 3561 |
| ENTRY | 0.5708 | 0.0654 | 0.0032 | 0.0001 | 0.0000 | 28 | 62 |
| PROSE | 0.7257 | 0.1468 | 0.0104 | 0.0006 | 0.0001 | 28 | 81 |
| NONE / dictionary-after-Q at Q start | 0 | 0 | 0 | 0 | 0 | — | — |

### N = 10,000 admitted tokens

| corpus | U | repeated-token fraction | n2 R / K | n3 R / K | n4 R / K | n5 R / K | n6 R / K | longest |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| DICT | 3420 | 0.7765 | 863 / 0.2757 | 339 / 0.0843 | 137 / 0.0322 | 66 / 0.0155 | 36 / 0.0085 | 6 |
| HEAD | 6036 | 0.5485 | 241 / 0.0540 | 32 / 0.0065 | 3 / 0.0006 | 0 / 0.0000 | 0 / 0.0000 | 4 |
| SHUFFLE | 3420 | 0.7765 | 389 / 0.1296 | 23 / 0.0053 | 0 / 0.0000 | 0 / 0.0000 | 0 / 0.0000 | 3 |
| ENTRY | 3894 | 0.7278 | 627 / 0.2210 | 219 / 0.0631 | 82 / 0.0247 | 42 / 0.0119 | 25 / 0.0056 | 6 |
| PROSE | 2547 | 0.8388 | 886 / 0.3067 | 191 / 0.0441 | 27 / 0.0077 | 9 / 0.0038 | 5 / 0.0027 | 6 |

Forward seed utility against the first 10,000 Q tokens:

| seed | lexical coverage | bigram coverage | trigram coverage | 4-gram coverage | 5-gram coverage | first bigram hit | first trigram hit |
|---|---:|---:|---:|---:|---:|---:|---:|
| DICT | 0.6458 | 0.0970 | 0.0039 | 0.0004 | 0.0000 | 12 | 62 |
| HEAD | 0.4788 | 0.0226 | 0.0003 | 0.0000 | 0.0000 | 28 | 7141 |
| SHUFFLE | 0.6458 | 0.0502 | 0.0002 | 0.0000 | 0.0000 | 28 | 8257 |
| ENTRY | 0.6490 | 0.0883 | 0.0050 | 0.0001 | 0.0000 | 28 | 62 |
| PROSE | 0.7758 | 0.2088 | 0.0173 | 0.0010 | 0.0001 | 10 | 81 |
| NONE / dictionary-after-Q at Q start | 0 | 0 | 0 | 0 | 0 | — | — |

### N = 20,000 admitted tokens

| corpus | U | repeated-token fraction | n2 R / K | n3 R / K | n4 R / K | n5 R / K | n6 R / K | longest |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| DICT | 5788 | 0.8212 | 1816 / 0.3157 | 787 / 0.1026 | 329 / 0.0391 | 165 / 0.0190 | 87 / 0.0098 | 6 |
| HEAD | 10781 | 0.6184 | 556 / 0.0640 | 67 / 0.0068 | 7 / 0.0007 | 1 / 0.0001 | 0 / 0.0000 | 5 |
| SHUFFLE | 5788 | 0.8212 | 811 / 0.1529 | 69 / 0.0080 | 1 / 0.0002 | 0 / 0.0000 | 0 / 0.0000 | 4 |
| ENTRY | 6344 | 0.7938 | 1455 / 0.2753 | 576 / 0.0869 | 250 / 0.0359 | 133 / 0.0177 | 82 / 0.0095 | 6 |
| PROSE | 3786 | 0.8939 | 2173 / 0.3966 | 617 / 0.0721 | 96 / 0.0111 | 18 / 0.0028 | 6 / 0.0015 | 6 |

Forward seed utility against the first 10,000 Q tokens:

| seed | lexical coverage | bigram coverage | trigram coverage | 4-gram coverage | 5-gram coverage | first bigram hit | first trigram hit |
|---|---:|---:|---:|---:|---:|---:|---:|
| DICT | 0.7109 | 0.1245 | 0.0061 | 0.0006 | 0.0000 | 12 | 62 |
| HEAD | 0.5329 | 0.0288 | 0.0017 | 0.0000 | 0.0000 | 28 | 145 |
| SHUFFLE | 0.7109 | 0.0829 | 0.0009 | 0.0000 | 0.0000 | 12 | 1189 |
| ENTRY | 0.7226 | 0.1204 | 0.0073 | 0.0004 | 0.0000 | 12 | 62 |
| PROSE | 0.8279 | 0.2763 | 0.0286 | 0.0022 | 0.0004 | 10 | 60 |
| NONE / dictionary-after-Q at Q start | 0 | 0 | 0 | 0 | 0 | — | — |

## 2.3 G1-C

Source lengths before budget cut: C-DICT 106,717 · C-HEAD 20,468 · C-PROSE 75,113 · Q 26,563 tokens.

### N = 5,000 admitted tokens

| corpus | U | repeated-token fraction | n2 R / K | n3 R / K | n4 R / K | n5 R / K | n6 R / K | longest |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| DICT | 2019 | 0.7122 | 426 / 0.2541 | 172 / 0.0834 | 84 / 0.0378 | 46 / 0.0202 | 27 / 0.0118 | 6 |
| HEAD | 3331 | 0.4754 | 96 / 0.0410 | 11 / 0.0046 | 2 / 0.0008 | 0 / 0.0000 | 0 / 0.0000 | 4 |
| SHUFFLE | 2019 | 0.7122 | 168 / 0.1050 | 11 / 0.0050 | 0 / 0.0000 | 0 / 0.0000 | 0 / 0.0000 | 3 |
| ENTRY | 2365 | 0.6388 | 255 / 0.1684 | 72 / 0.0422 | 26 / 0.0166 | 13 / 0.0084 | 10 / 0.0052 | 6 |
| PROSE | 1780 | 0.7344 | 359 / 0.2330 | 62 / 0.0312 | 13 / 0.0098 | 6 / 0.0064 | 3 / 0.0046 | 6 |

Forward seed utility against the first 10,000 Q tokens:

| seed | lexical coverage | bigram coverage | trigram coverage | 4-gram coverage | 5-gram coverage | first bigram hit | first trigram hit |
|---|---:|---:|---:|---:|---:|---:|---:|
| DICT | 0.5278 | 0.0690 | 0.0026 | 0.0004 | 0.0000 | 18 | 181 |
| HEAD | 0.3168 | 0.0150 | 0.0002 | 0.0000 | 0.0000 | 27 | 7100 |
| SHUFFLE | 0.5278 | 0.0378 | 0.0000 | 0.0000 | 0.0000 | 30 | — |
| ENTRY | 0.5039 | 0.0599 | 0.0027 | 0.0001 | 0.0000 | 27 | 61 |
| PROSE | 0.6553 | 0.1280 | 0.0085 | 0.0004 | 0.0001 | 27 | 80 |
| NONE / dictionary-after-Q at Q start | 0 | 0 | 0 | 0 | 0 | — | — |

### N = 10,000 admitted tokens

| corpus | U | repeated-token fraction | n2 R / K | n3 R / K | n4 R / K | n5 R / K | n6 R / K | longest |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| DICT | 3600 | 0.7546 | 823 / 0.2664 | 324 / 0.0813 | 131 / 0.0310 | 64 / 0.0151 | 35 / 0.0083 | 6 |
| HEAD | 6261 | 0.5198 | 209 / 0.0455 | 24 / 0.0049 | 3 / 0.0006 | 0 / 0.0000 | 0 / 0.0000 | 4 |
| SHUFFLE | 3600 | 0.7546 | 369 / 0.1262 | 21 / 0.0044 | 0 / 0.0000 | 0 / 0.0000 | 0 / 0.0000 | 3 |
| ENTRY | 4027 | 0.7088 | 610 / 0.2187 | 220 / 0.0637 | 81 / 0.0247 | 42 / 0.0120 | 25 / 0.0056 | 6 |
| PROSE | 3057 | 0.7840 | 785 / 0.2761 | 161 / 0.0378 | 22 / 0.0067 | 7 / 0.0034 | 3 / 0.0023 | 6 |

Forward seed utility against the first 10,000 Q tokens:

| seed | lexical coverage | bigram coverage | trigram coverage | 4-gram coverage | 5-gram coverage | first bigram hit | first trigram hit |
|---|---:|---:|---:|---:|---:|---:|---:|
| DICT | 0.5719 | 0.0852 | 0.0031 | 0.0004 | 0.0000 | 12 | 61 |
| HEAD | 0.3682 | 0.0198 | 0.0002 | 0.0000 | 0.0000 | 27 | 7100 |
| SHUFFLE | 0.5719 | 0.0585 | 0.0004 | 0.0000 | 0.0000 | 30 | 4421 |
| ENTRY | 0.5679 | 0.0786 | 0.0042 | 0.0001 | 0.0000 | 27 | 61 |
| PROSE | 0.7017 | 0.1785 | 0.0145 | 0.0007 | 0.0001 | 27 | 80 |
| NONE / dictionary-after-Q at Q start | 0 | 0 | 0 | 0 | 0 | — | — |

### N = 20,000 admitted tokens

| corpus | U | repeated-token fraction | n2 R / K | n3 R / K | n4 R / K | n5 R / K | n6 R / K | longest |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| DICT | 6138 | 0.8013 | 1734 / 0.3055 | 760 / 0.1000 | 315 / 0.0378 | 157 / 0.0182 | 83 / 0.0093 | 6 |
| HEAD | 11244 | 0.5921 | 494 / 0.0565 | 53 / 0.0054 | 7 / 0.0007 | 1 / 0.0001 | 0 / 0.0000 | 5 |
| SHUFFLE | 6138 | 0.8013 | 790 / 0.1486 | 70 / 0.0079 | 0 / 0.0000 | 0 / 0.0000 | 0 / 0.0000 | 3 |
| ENTRY | 6674 | 0.7720 | 1394 / 0.2688 | 569 / 0.0861 | 248 / 0.0356 | 131 / 0.0174 | 81 / 0.0094 | 6 |
| PROSE | 4902 | 0.8394 | 1904 / 0.3500 | 503 / 0.0590 | 74 / 0.0088 | 15 / 0.0025 | 4 / 0.0013 | 6 |

Forward seed utility against the first 10,000 Q tokens:

| seed | lexical coverage | bigram coverage | trigram coverage | 4-gram coverage | 5-gram coverage | first bigram hit | first trigram hit |
|---|---:|---:|---:|---:|---:|---:|---:|
| DICT | 0.6244 | 0.1066 | 0.0051 | 0.0006 | 0.0000 | 12 | 61 |
| HEAD | 0.4291 | 0.0237 | 0.0009 | 0.0000 | 0.0000 | 27 | 143 |
| SHUFFLE | 0.6244 | 0.0692 | 0.0005 | 0.0000 | 0.0000 | 27 | 1076 |
| ENTRY | 0.6141 | 0.1059 | 0.0060 | 0.0004 | 0.0000 | 12 | 61 |
| PROSE | 0.7580 | 0.2301 | 0.0232 | 0.0017 | 0.0003 | 24 | 59 |
| NONE / dictionary-after-Q at Q start | 0 | 0 | 0 | 0 | 0 | — | — |

## 3. Definition-route measurements

For each G1 policy, a source-prefix of the same fixed OEWN entry slice was taken until C-DICT reached at least 20,000 tokens. Entry boundaries are used here only for Lab analysis.

| G1 | entries | definition tokens | definition-token occurrences that are also headword identities | distinct definition identities also headword identities | cross-definition repeated bigrams | trigrams | 4-grams | 5-grams |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| A | 1747 | 16137 | 0.4912 | 0.2168 | 1556 | 705 | 283 | 136 |
| B | 1747 | 16137 | 0.4941 | 0.2189 | 1558 | 705 | 283 | 136 |
| C | 1763 | 16221 | 0.4714 | 0.1913 | 1522 | 697 | 279 | 132 |

### Entry-boundary sensitivity at 10,000 tokens

| G1 | raw repeated classes n2/n3/n4/n5 | entry-scoped repeated classes n2/n3/n4/n5 |
|---|---|---|
| A | 860 / 339 / 137 / 66 | 822 / 331 / 134 / 65 |
| B | 863 / 339 / 137 / 66 | 825 / 331 / 134 / 65 |
| C | 823 / 324 / 131 / 64 | 799 / 322 / 131 / 64 |

## 4. G1-B top longer recurring patterns — boilerplate / formula control

The following are raw exact recurrence classes, not semantic labels.

### C-DICT

| n | pattern | support |
|---:|---|---:|
| 3 | `ONE OF THE` | 15 |
| 3 | `MYTHOLOGY ONE OF` | 14 |
| 3 | `A WORD THAT` | 13 |
| 3 | `DIET A DIET` | 13 |
| 3 | `GREEK MYTHOLOGY A` | 13 |
| 3 | `A DEITY WORSHIPPED` | 11 |
| 3 | `DEITY A DEITY` | 11 |
| 3 | `DEITY WORSHIPPED BY` | 11 |
| 4 | `A DEITY WORSHIPPED BY` | 11 |
| 4 | `DEITY WORSHIPPED BY THE` | 11 |
| 4 | `MYTHOLOGY ONE OF THE` | 11 |
| 4 | `DEITY A DEITY WORSHIPPED` | 9 |
| 4 | `GREEK MYTHOLOGY ONE OF` | 8 |
| 4 | `A WORD THAT IS` | 7 |
| 4 | `WORSHIPPED BY THE ANCIENT` | 7 |
| 4 | `CALL A TELEPHONE CALL` | 5 |
| 5 | `A DEITY WORSHIPPED BY THE` | 11 |
| 5 | `DEITY A DEITY WORSHIPPED BY` | 9 |
| 5 | `DEITY WORSHIPPED BY THE ANCIENT` | 7 |
| 5 | `GREEK MYTHOLOGY ONE OF THE` | 6 |
| 5 | `A LAND IMAGINED BY JONATHAN` | 4 |
| 5 | `DIET A DIET DESIGNED TO` | 4 |
| 5 | `LAND IMAGINED BY JONATHAN SWIFT` | 4 |
| 5 | `NORSE MYTHOLOGY ONE OF THE` | 4 |
| 6 | `DEITY A DEITY WORSHIPPED BY THE` | 9 |
| 6 | `A DEITY WORSHIPPED BY THE ANCIENT` | 7 |
| 6 | `A LAND IMAGINED BY JONATHAN SWIFT` | 4 |
| 6 | `GREEK MYTHOLOGY ONE OF THE THREE` | 3 |
| 6 | `LAND IMAGINED BY JONATHAN SWIFT WHERE` | 3 |
| 6 | `MYTHOLOGY ONE OF THE THREE GRACES` | 3 |
| 6 | `NORSE MYTHOLOGY ONE OF THE AESIR` | 3 |
| 6 | `OF THE THREE GRACES THE ONE` | 3 |

### C-PROSE

| n | pattern | support |
|---:|---|---:|
| 3 | `CHAPTER CHAPTER CHAPTER` | 22 |
| 3 | `OF NATURAL PHILOSOPHY` | 8 |
| 3 | `I COULD NOT` | 7 |
| 3 | `I DID NOT` | 7 |
| 3 | `WHICH I HAD` | 7 |
| 3 | `I DO NOT` | 6 |
| 3 | `MY FATHER HAD` | 6 |
| 3 | `THAT I AM` | 6 |
| 4 | `CHAPTER CHAPTER CHAPTER CHAPTER` | 21 |
| 4 | `LETTER TO MRS SAVILLE` | 4 |
| 4 | `TO MRS SAVILLE ENGLAND` | 4 |
| 4 | `BRANCH OF NATURAL PHILOSOPHY` | 3 |
| 4 | `BUT I DID NOT` | 3 |
| 4 | `FOR SO LONG A` | 3 |
| 4 | `MY FATHER HAD TAKEN` | 3 |
| 4 | `OF MY NATIVE COUNTRY` | 3 |
| 5 | `CHAPTER CHAPTER CHAPTER CHAPTER CHAPTER` | 20 |
| 5 | `LETTER TO MRS SAVILLE ENGLAND` | 4 |
| 5 | `AN ORPHAN AND A BEGGAR` | 2 |
| 5 | `BREAKING UP OF THE ICE` | 2 |
| 5 | `ENGAGED HEART AND SOUL IN` | 2 |
| 5 | `FIND NO FRIEND ON THE` | 2 |
| 5 | `FOR A LONG TIME I` | 2 |
| 5 | `FRIEND ON THE WIDE OCEAN` | 2 |

## 5. Anchored prior richness at N=10,000 under G1-B

Anchor selection is deterministic from Q frequency with no stop-word filtering: highest repeated identity, median repeated identity, and lowest repeated identity.

Anchors: `THE` (482) · `PARDON` (4) · `YOUNG` (2).

| seed | anchor | recurrent anchored classes n<=5 | longest recurrent n | max support |
|---|---|---:|---:|---:|
| DICT | `THE` | 220 | 5 | 345 |
| DICT | `PARDON` | 0 | 0 | 0 |
| DICT | `YOUNG` | 2 | 2 | 2 |
| HEAD | `THE` | 8 | 2 | 22 |
| HEAD | `PARDON` | 0 | 0 | 0 |
| HEAD | `YOUNG` | 0 | 0 | 0 |
| PROSE | `THE` | 161 | 5 | 508 |
| PROSE | `PARDON` | 0 | 0 | 0 |
| PROSE | `YOUNG` | 1 | 1 | 2 |

## 6. Robustness / falsifier reading

### F3-1 size confound
**DID NOT FIRE for the main tables.** C-DICT, C-HEAD, C-SHUFFLE, C-ENTRY and C-PROSE are all scored at identical 5k, 10k and 20k token budgets.

### F3-2 unigram-frequency confound
**FIRED against any claim that unigram density alone explains the dictionary structure.** C-DICT and C-SHUFFLE have identical token multisets at every budget, hence identical unigram statistics, but C-DICT retains far more n>=3 recurrence.

Under G1-B at N=20k:
- C-DICT trigram recurrent-window fraction = **0.1026**; C-SHUFFLE = **0.0080**.
- C-DICT 4-gram = **0.0391**; C-SHUFFLE = **0.0002**.
- C-DICT 5-gram = **0.0190**; C-SHUFFLE = **0**.
- C-DICT 6-gram = **0.0098**; C-SHUFFLE = **0**.

Sequence therefore matters.

### F3-3 vocabulary-only confound
**FIRED against headwords being sufficient.** At G1-B / 20k, C-HEAD has 10,781 distinct identities but far less longer recurrence and lower Q coverage than C-DICT.

Q lexical coverage:
- C-DICT **0.7109**
- C-HEAD **0.5329**

Q bigram coverage:
- C-DICT **0.1245**
- C-HEAD **0.0288**

### F3-4 boilerplate confound
**FIRED PARTIALLY.** Many high-support dictionary n-grams are visibly formulaic source phrases such as `A DEITY WORSHIPPED BY THE`, `A WORD THAT IS`, and mythology templates. Long recurrence therefore cannot be equated with useful semantic structure.

However, entry-boundary removal changes recurrent-class counts only modestly (for G1-B at 10k, raw n2/n3/n4/n5 = 863/339/137/66 versus entry-scoped 825/331/134/65). Recurrence is not chiefly an artifact of concatenating unrelated entries across boundaries.

### F3-5 G1 instability
**DID NOT FIRE for the main qualitative effects.** Absolute counts shift under punctuation-sensitive G1-C and case-sensitive G1-A, but all three policies preserve:
- intact definitions >> shuffled tokens at n>=3;
- intact definitions >> headwords for longer recurrence and later pattern coverage;
- prose > dictionary for Q lexical/bigram/trigram coverage in this Alice probe;
- global entry permutation preserves most of the dictionary's longer recurrence.

Therefore those qualitative findings are **ROBUST-TESTED across G1-A/B/C**.

This does **not** close G1.

### F3-6 source-boundary dependence
**DID NOT FIRE for the recurrence headline.** Entry-scoped recurrence remains close to raw recurrence. Entry boundaries are not required to observe the main longer-pattern effect.

### F3-7 future leakage
**DID NOT FIRE.** Seed utility uses seed-prefix sets only; Q never contributes to its own prior.

### F3-8 scalar collapse
**DID NOT FIRE.** No weighted aggregate or overall corpus winner is computed.

### F3-9 semantic contamination
**DID NOT FIRE.** Synset relations, embeddings, synonym folding, hypernyms and semantic IDs are absent from the scored streams.

### F3-10 retention laundering
**DID NOT FIRE.** Recurrence is measured only as derived structure. No retain-when is inferred.

## 7. Main empirical result

The original phrase "dictionary is dense" is too coarse.

At matched budgets:

- **ordinary prose is denser at low scale** in this experiment. Under G1-B / 20k, Frankenstein has repeated-token fraction 0.8939 versus dictionary 0.8212, and bigram recurrent-window fraction 0.3966 versus 0.3157.
- **dictionary definitions are denser at longer exact scales.** Under the same setting, dictionary trigram/4-gram/5-gram/6-gram recurrent-window fractions are 0.1026 / 0.0391 / 0.0190 / 0.0098, versus prose 0.0721 / 0.0111 / 0.0028 / 0.0015.
- **definition order matters strongly.** Shuffling the identical 20k dictionary token multiset collapses n>=3 recurrence.
- **global dictionary entry order matters much less.** Permuting whole entries retains most of the longer recurrence.
- **definition text adds substantial later-text access beyond headwords alone.**
- **dictionary is not universally the strongest later-text seed.** On Alice, the matched Frankenstein seed has higher lexical and n-gram prior coverage at every tested budget and G1 policy.

This pass therefore does not establish "dictionary is best." It establishes a more precise structural signature: broad lexical reuse plus strong local definitional phrase recurrence that is sequence-dependent and G1-robust at the tested grain.
