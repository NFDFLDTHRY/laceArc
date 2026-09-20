# Prefix device on Hands — Pass 6

**Status:** EXECUTED. Not accepted. Not SPOKEN.  
**Station:** maps.  
**Plan:** [`prefix-device-pass-6-plan.md`](prefix-device-pass-6-plan.md)  
**Object tested:** [`docs/math-execution-model.md`](../math-execution-model.md)

## Accuracy sheet

| Locus | Stamp | Act |
|---|---|---|
| S1.2 L append-only | HOLD | none |
| S1.3 Kind {WORD, POINTER} | HOLD | none |
| WORD = (WORD, v) | HOLD | none |
| POINTER r < j | HOLD | none |
| S1.3 k always 2 as Φ/G2 [GAP] | STALE-thin | now Q2 CONFLICT |
| S2 Arrive | HOLD | none |
| S2 Participate = Φ = [GAP] | STALE | split morphism / schedule |
| S3.1 Star(v) view | HOLD | none |
| S3.2 leftover adjacency as one GAP | STALE-thin | emit CLOSED; leftover OPEN |
| S3.3 which touch | OPEN | named schedule |
| S3.4 π | HOLD | none |
| S4.1 backward refs | HOLD | none |
| S4.2 Φ = emission rule = [GAP] | STALE | rewritten |
| S4.3 Step_partial Φ_[GAP] | STALE | rewritten |
| S4 missing Q0 | STALE-thin | row added |
| S5–S6 | HOLD | Φ wording aligned |
| Option D as Step | FORK | not written |
| Cluster Kind | FORK | not written |

Q1 schedule not filled. Arrive not merged. No `src/`.
