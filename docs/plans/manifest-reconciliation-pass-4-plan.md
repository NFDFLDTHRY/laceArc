# MANIFEST RECONCILIATION — Pass 4 PLAN · open-interface partition + Lab admission envelope

**Status:** **EXECUTING** 2026-09-21.  
**Campaign:** Manifest Reconciliation. **Pass:** 4.  
**Baseline:** Pass 3 verdict `FOUNDATION SOUND WITH EXPLICIT OPEN INTERFACES` at `02487dd1ada9761ed601f7f63c972325e561de72`.  
**Primary question:** which unresolved interfaces actually block a bounded retention/materialization experiment, which may be frozen for that specimen, and which are orthogonal implementation/application decisions?  
**Lab:** the inherited `lab-source-architecture-pass-4-plan.md` remains **PAUSED** for the whole pass. Pass 4 creates the admission envelope for its replacement; it does not resume the experiment.

## 0. Foundation

```
Pass 1: canonical mechanism catalog + contract registry
Pass 2: current-consumer propagation
Pass 3: typed composition / state / write authority

current verdict:
    FOUNDATION SOUND WITH EXPLICIT OPEN INTERFACES
```

Pass 4 does not hunt new mechanisms. It partitions the remaining OPEN interfaces so the Lab is handed one exact socket instead of the entire unresolved repository.

## 1. Open dependency classes

Every current open is classified as one of:

- **LAB TARGET** — the experiment exists to investigate it.
- **LAB CONDITIONAL** — does not block the base specimen, but a candidate that uses it must freeze or discharge it explicitly.
- **ORTHOGONAL** — may remain open without affecting the bounded retention experiment.
- **IMPLEMENTATION / APP** — engineering/product decision outside semantic retention.
- **ACCEPTANCE GATE** — governs implementation authority, not documentation/Lab evidence.

The test is:

> If this open is frozen to the exact bounded specimen instead of solved globally, does that change the validity of the retention experiment?

If no, it cannot block the bounded Lab.

## 2. Expected partition under test

| Open | Initial class |
|---|---|
| SM-GAP-RM retention/materialization | **LAB TARGET** |
| G1 tokenization / word identity | **LAB CONDITIONAL** — D1 token identities may be frozen exactly as supplied |
| route-family / document-conversation-provenance boundaries | **LAB CONDITIONAL / usually orthogonal** |
| traversal/query remainder | **LAB CONDITIONAL** only if candidate consumes L-M21 |
| operand role/order | **LAB CONDITIONAL / candidate-specific** |
| concurrency / multi-writer ordering | **ORTHOGONAL** to serial bounded replay |
| projection geometry | **ORTHOGONAL** |
| eventual reference | **ORTHOGONAL**; future knowledge cannot become a retention predicate |
| multi-Lace / snapshot / export | **ORTHOGONAL** |
| R3 residence/recovery | **IMPLEMENTATION / APP** |
| R4 capacity/refusal custody | **IMPLEMENTATION / APP** |
| R9 frontier publication/concurrency | **IMPLEMENTATION / APP** |
| R10 WebNN projection proposal | **APPLICATION PROPOSAL** |
| Open #15 seed corpus | **APPLICATION / DATA** |
| human acceptance of pointer-emission | **ACCEPTANCE GATE** |

This table is a hypothesis. Pass 4 must prove or revise it.

## 3. Decompose one GAP, not the catalog

SM-GAP-RM remains one named open interface. It is decomposed into subquestions only:

```
RM-A  RETAIN?
      Given sampling-derived structural evidence, what condition
      warrants retaining structure as Lace?

RM-B  MATERIALIZE?
      If selected structure is ephemeral, how is it grounded /
      resolved into an addressable 1D Lace operand?

RM-C  ROLE / ORDER?
      Where do any ordered operand roles needed by the retained
      relation come from without reading them from the oracle?
```

RM-A/B/C are **not new L-M mechanisms**, not row kinds, and not implementation modules.

## 4. Bounded D1 Lab universe

The base experiment freezes unrelated opens instead of solving them:

- exact D1 token stream: PIE · DESSERT · PIE · WHOLE · CUSTOMER;
- token identity exactly as supplied by the specimen;
- serial execution;
- prefix-only information;
- Graphic-D Lace is the only authoritative retained state;
- current L-M20 / SM-C20 sampling machinery;
- no projection coordinates;
- no route-family metadata;
- no external semantics;
- no concurrency;
- no persistence/residence/capacity decision;
- no seed-corpus question.

A freeze is an experiment premise, not a global ruling.

## 5. Candidate authority classes

Every future candidate must be stamped:

- `[SOURCE]`
- `[HUMAN]`
- `[DERIVED]`
- `[LAB-PROXY]`
- `[EXTERNAL-CANDIDATE]`
- `[ADVERSARIAL-CONTROL]`

Passing an experiment never changes the authority class by itself.

## 6. Oracle-independence classes

Every candidate must declare its relation to D1:

- **D1-BLIND** — derived without D1 expected pointer pairs.
- **D1-SCHEMA-ONLY** — may use D2–D6 row/storage constraints, but not D1 answers.
- **D1-WITNESSED** — already supported by a specific D1 row (RootTouch/0004); D1 is confirmation, not independent generalization evidence.
- **D1-DERIVED** — uses D1 answer patterns; score is consistency only.
- **ORACLE-CHEAT** — directly embeds/looks up expected answers; adversarial control only.

Replay legality and oracle independence are separate axes.

## 7. Scoring surface

A bare “6/6” is insufficient.

Future Lab output must account for at least:
- expected matches (TP);
- expected events missed (FN);
- extra retained events invented (FP);
- ordered-pair mismatch;
- event-time/index mismatch;
- oracle-independence class.

A candidate emitting all six D1 rows plus invented relations is not perfect.

## 8. Candidate admission declaration

Before a candidate touches a harness it must declare:

- candidate ID;
- authority class;
- exact source/ruling/derivation;
- RM-A / RM-B / RM-C coverage;
- inputs used;
- derived state used;
- reconstructibility of that state;
- D1 oracle relationship;
- expected output shape;
- claims it explicitly does **not** make.

If the declaration itself requires inventing the missing predicate, the candidate is not admitted.

## 9. Human rulings and external families

H1–H12 are architecture constraints, not contestants.

External search order after the foundation pass is:

```
behavioral family      already harvested
source of record A-D   next Lab harvest
research family        eligible later through SM-X-RES
platform family        feasibility only; never semantic retention
```

If A-D are silent, the result is **source silence**, not “therefore the human must invent the rule immediately.” Research remains eligible candidate machinery.

## 10. Source-silence vocabulary

Distinguish:

- **SILENT-A** — no RM-A retention predicate.
- **SILENT-B** — retention decision supplied but no RM-B materialization path.
- **SILENT-C** — structural language exists but no mechanical predicate is stated.

Persistence/re-entry language is not automatically RM-A.

## 11. SidecarMemory

SidecarMemory becomes a permanent `[ADVERSARIAL-CONTROL]`:

- replay expected PASS;
- prefix purity expected PASS;
- oracle expected perfect;
- candidate admission = REJECT;
- purpose = demonstrate that “reconstructible from prefix + candidate code” is not evidence that the rule was derived from Lace.

No code-inspection theorem is invented to rescue the harness.

## 12. Canonical edits permitted

### systems-manifest.md
Only:
- add a **Current Open Interface Dependency Classification**;
- decompose SM-GAP-RM into RM-A/B/C as subquestions of one GAP;
- state bounded specimen freezes explicitly.

No mechanism behavior change. No acceptance.

### systems-manifest-ascii.md
Only:
- annotate the existing L-GAP-RM socket with RM-A/B/C;
- show that unrelated opens may be frozen for bounded Lab work without closing them globally;
- no new L-M ID.

## 13. Non-canonical product

Create:

`docs/plans/manifest-reconciliation-pass-4-lab-admission.md`

Stamped **NOT CANONICAL ARCHITECTURE**.

It carries the dependency matrix, bounded D1 premises, candidate admission form, authority/oracle classes, scoring requirements and search-order rule.

## 14. Falsifiers

| F | Fires when |
|---|---|
| F1 | an unrelated open is required for bounded D1 retention testing without a real dependency |
| F2 | SM-GAP-RM cannot be separated into RM-A/B/C subquestions |
| F3 | D1-derived candidate score is presented as independent evidence |
| F4 | false-positive retention can hide behind a perfect expected-row score |
| F5 | a HUMAN ruling is treated as a candidate contestant |
| F6 | G1 is silently solved during the fixture rather than frozen |
| F7 | search/projection/sampling gains write authority because it helps retention |
| F8 | SidecarMemory is admitted as legitimate because replay/oracle pass |
| F9 | external machinery bypasses its SM-X boundary |
| F10 | graphics silence is reported as “human must write it” before eligible research candidates are considered |
| F11 | RM-A/B/C become new Core mechanisms |
| F12 | Pass 4 answers SM-GAP-RM instead of defining the Lab envelope |

## 15. Station order

1. `maps`: plan + draft Lab-admission envelope.
2. `law`: systems-manifest open-interface classification only.
3. `maps`: annotate existing L-GAP-RM socket; no new mechanism.
4. read-only audit of pointer-emission, math model, controls, sampling campaign and source-family ingress.
5. `maps`: final admission artifact + findings + verdict.

## 16. Verdicts

- **LAB ADMISSION ENVELOPE SOUND**
- **LAB ADMISSION ENVELOPE SOUND WITH CONDITIONALS**
- **FOUNDATION REQUIRES REPAIR**

No verdict auto-resumes the inherited Lab Pass 4 plan.
