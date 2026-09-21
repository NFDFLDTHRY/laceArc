# LAB SOURCE ARCHITECTURE — Pass 4 REPLACEMENT PLAN · source-of-record RM-A/RM-B/RM-C harvest

**Status:** **EXECUTED** 2026-09-21 → [findings](lab-source-architecture-pass-4-replacement-findings.md). **Verdict: SOURCE SILENT ON GENERAL RM PREDICATE.**  
**Campaign:** Lab Source Architecture. **Pass:** 4 replacement.  
**Replaces for execution:** the inherited [Pass 4 plan](lab-source-architecture-pass-4-plan.md), which remains **PAUSED** and is not executed verbatim.  
**Admission authority:** [Manifest Reconciliation Pass 4 Lab admission envelope](manifest-reconciliation-pass-4-lab-admission.md).  
**Foundation verdict:** `LAB ADMISSION ENVELOPE SOUND WITH CONDITIONALS`.  
**Implementation:** no Core implementation. No `src/`, Cargo, build, install, or acceptance. Host-side Layer-III instruments only.

## 0. Exact question

Read the four canonical source PNGs across all 45 panel surfaces and ask only:

```
RM-A RETAIN?
    does the source state a general condition that warrants retaining
    sampling-derived structure?

RM-B MATERIALIZE?
    does the source state how a selected ephemeral sampled structure
    becomes an addressable 1D Lace operand?

RM-C ROLE / ORDER?
    does the source state how any ordered Join roles required by a
    retained relation are derived?
```

Persistence, re-entry, discovery, constructor shape, views, and constraints are recorded separately and must not be rounded up into RM-A/B/C.

## 1. Bounded specimen

Use the existing D1 fixture only:

`docs/plans/fixtures/d1-golden-v0.1.0.json`

Frozen:
- exact tokens PIE · DESSERT · PIE · WHOLE · CUSTOMER;
- serial prefix-only execution;
- no future rows;
- Graphic-D Lace only as authoritative retained state;
- current L-M20/SM-C20 sampling machinery;
- no projection coordinates, route-family metadata, external semantics, WebNN, concurrency, residence/capacity or seed-corpus decisions.

This freezes G1 only for this specimen. It does not answer G1 globally.

## 2. 45-panel source harvest

Coverage:
- A1–A13;
- B1–B12;
- C1–C12;
- D1–D6;
- D footer;
- D key properties.

For each source surface publish:
- direct source job;
- persistence;
- re-entry;
- discovery;
- RM-A;
- RM-B;
- RM-C;
- constructor/constraint/view;
- stateable candidate? yes/no;
- silence class: SILENT-A / SILENT-B / SILENT-C as applicable;
- reason.

Every executable candidate claim must be checked against the supplied canonical PNG, not transcription alone.

## 3. Candidate admission

Every executable candidate records:
- authority class;
- exact provenance;
- RM-A/B/C coverage;
- inputs;
- derived state and reconstructibility;
- D1 oracle-independence class;
- expected output;
- explicit non-claims;
- conditional opens pulled into scope.

Authority classes:
`SOURCE`, `HUMAN`, `DERIVED`, `LAB-PROXY`, `EXTERNAL-CANDIDATE`, `ADVERSARIAL-CONTROL`.

Oracle classes:
`D1-BLIND`, `D1-SCHEMA-ONLY`, `D1-WITNESSED`, `D1-DERIVED`, `ORACLE-CHEAT`.

## 4. Instrument update

Extend `lace-retention-harness.py`; do not create a second harness or fixture.

Every run reports:
- discovered count;
- retained count;
- replay result;
- TP;
- FN;
- FP;
- pair/order mismatches;
- event/index mismatches;
- authority class;
- RM-A/B/C coverage;
- D1 independence;
- admission role.

A bare “6/6” is forbidden.

## 5. Controls/calibration

Run:
- **RootTouch** — HUMAN calibration; D1-WITNESSED; closed special case, not general GAP candidate.
- **WeightByRepetition** — LAB-PROXY; tests replayable accumulated-state representation, not a source retention predicate.
- **AftermathRecirculation** — EXTERNAL-CANDIDATE behavioral candidate; discovery without a source retention predicate.
- **CheatingMemory** — ADVERSARIAL-CONTROL second-store cheat; replay must fail.
- **SidecarMemory** — ADVERSARIAL-CONTROL / ORACLE-CHEAT; expected replay PASS and perfect oracle agreement, but admission REJECT.

SidecarMemory's purpose is to demonstrate that replay legality is not evidence provenance.

## 6. Thesis

> Beyond source-established persistence/re-entry, at least one canonical A–D panel states enough of RM-A, RM-B, or RM-C to admit a source-derived executable candidate without an editor-supplied predicate.

This thesis may lose separately on RM-A, RM-B, and RM-C.

A zero-candidate result is valid.

## 7. Search order

This pass touches only the source of record.

If A–D provide no complete general candidate:
- report source silence/partial coverage;
- do **not** jump to human invention;
- the research family remains the next eligible candidate family through SM-X-RES;
- platform/toolchain remains feasibility-only under SM-X-PLAT.

## 8. Falsifiers

| ID | Fires when |
|---|---|
| F1 | a persistence/re-entry statement is promoted to RM-A |
| F2 | a constructor/addressability statement is promoted to RM-B without the ephemeral→addressable bridge |
| F3 | D1 explanatory ref_A/ref_B ordering is imported into a D1-blind RM-C candidate |
| F4 | a source transcription and supplied PNG disagree on a candidate-bearing claim |
| F5 | an editor threshold/count/weight is reported as the graphic's rule |
| F6 | D1-derived candidate score is presented as independent validation |
| F7 | false positives are hidden by expected-row score |
| F8 | SidecarMemory is admitted because replay + oracle pass |
| F9 | CheatingMemory is not caught by replay |
| F10 | an unrelated open is silently resolved rather than frozen |
| F11 | source silence jumps directly to human invention |
| F12 | this pass changes SM-GAP-RM, pointer acceptance, or Core law |

## 9. Acceptance

Pass 4 replacement is complete when:
1. 45/45 surfaces have RM-A/B/C harvest rows.
2. Candidate-bearing source claims are PNG-sighted.
3. Harness publishes authority + coverage + oracle class + TP/FN/FP/mismatch accounting.
4. Both adversarial controls run and consequences are recorded.
5. All F1–F12 are reported.
6. Existing D1 fixture is reused byte-unchanged.
7. `systems-manifest.md`, `pointer-emission.md`, graphics PNGs and executed prior-pass bodies remain unchanged.
8. Inherited Lab Pass 4 remains PAUSED.
9. No `src/`.

## 10. Possible verdicts

- **SOURCE SUPPLIES PARTIAL RM MACHINERY**
- **SOURCE SUPPLIES A GENERAL RM CANDIDATE**
- **SOURCE SILENT ON GENERAL RM PREDICATE**

Any positive candidate remains Lab evidence, not automatic architecture.
