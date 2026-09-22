# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 3 findings

**Status:** EXECUTED 2026-09-21.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 3 — TEST THE DESTINATION.  
**Plan:** [source-lab-lace-alignment-pass-3-plan.md](source-lab-lace-alignment-pass-3-plan.md).  
**Assay register:** [source-lab-lace-alignment-pass-3-goal-assays.md](source-lab-lace-alignment-pass-3-goal-assays.md).  
**Execution baseline:** `26e7edf6808ab12657275764c4e0b0ad1327e197`.  
**Final semantic commit:** `748e9e29c8c72a6e2e4b47fc6039bdc57e5f433a` — global ASCII Pass 35.  
**Implementation:** none.  
**Acceptance:** absent.  
**RM-A:** remains open / MISSING-A.

## 1. Result

Pass 1 aligned the layers.  
Pass 2 traced machinery/evidence flow.  
Pass 3 operationalized the destination.

The core distinction now has executable teeth:

```
source machinery present
    !=
behavioral goal satisfied

source machinery absent
    !=
behavioral goal failed
```

### Required verdicts

**Goal specification:**  
**BEHAVIORAL GOALS OPERATIONALIZED**, bounded twelve-assay set.

**Assay integrity:**  
**MECHANISM-AGNOSTIC.**

**Current coverage:**  
**BOUNDED BEHAVIORAL COVERAGE / NAMED DEBT.**

The coverage is assay coverage, not holder-success coverage.

---

## 2. Behavioral assay set

Pass 3 specifies twelve bounded goals.

### HCC-A

- **H-G1** structure vs interpretation separation.
- **H-G2** feedback influences later context without rewriting prior evidence.
- **H-G3** shared pointable structure does not force meaning transfer between holders.

### Coffee Cup

- **C-G1** preconditions, release, trajectory, impact and aftermath remain distinct.
- **C-G2** intervention opportunity shrinks before impact; impact cannot be changed afterward.
- **C-G3** aftermath can change later conditions without rewriting the original impact.

### Water / Dual Proofing

- **W-G1** pointability gates observation status.
- **W-G2** pressure/loudness does not equal transfer/crossing.
- **W-G3** separate inventories gain crossing possibility only after shared footing exists.
- **W-G4** missing evidence is named rather than fabricated.

### Cross-source compatibility

- **X-G1** recurrence/feedback channels remain distinguishable rather than fused.
- **X-G2** two holders may share one pointable referent while preserving different local interpretations.

These are behavioral targets. None requires literal HCC-A pipeline stages, Coffee Cup gears, or Water FSM states to pass.

---

## 3. Mechanism-blindness audit

Each assay was checked against:
- **M1 source-like implementation**;
- **M2 alien implementation with equivalent observable behavior**.

All twelve specifications admit both if their observable behavior is equivalent.

A candidate cannot gain credit merely by printing or naming:
- RIC;
- PFC;
- Story Ledger;
- C1–C5;
- OBS / DELTA / UNK / INVALID;
- H×C×W gear names.

Labels are not part of PASS.

---

## 4. Lab self-test tool

Committed tool:
- `docs/plans/tools/lace-behavior-assay.py`;
- GitHub blob `47edcff0da2cc5d24e3d1e24d9f5aefd5a0fed21`.

Committed fixture:
- `docs/plans/fixtures/behavioral-goals-assay-controls-v0.1.0.json`;
- GitHub blob `e3e8745415eb7689b569485cb14143e3d6ff4b3b`.

Both local `git hash-object` values matched GitHub exactly before execution.

Command:

```bash
python3 docs/plans/tools/lace-behavior-assay.py
```

Result:

```
cases=24
goals=12
mismatches=0
exit=0
```

Every goal has:
- one unlabeled positive control;
- one negative anti-goal control.

Most negative controls deliberately include convincing source labels.

They still fail.

This establishes:

```
source-label mimicry
    !=
behavioral success
```

and:

```
different/no source labels
    !=
behavioral failure
```

---

## 5. Adversarial controls caught

The self-test rejects:

- HCC-style labels with rewritten structure;
- feedback implemented by editing Round 1;
- forced meaning transfer between holders;
- Coffee Cup release collapsed into impact;
- intervention window reopening with time;
- aftermath implemented by rewriting impact;
- Water unanchored accusation promoted as evidence;
- pressure reported as crossing;
- hidden merge of two party inventories;
- fabricated evidence used to resolve UNK;
- fused H/C/W feedback state;
- shared referent forcing shared meaning.

The harness ignores `labels[]`.

That is the explicit mechanism-blindness control.

---

## 6. What the self-test does not prove

A green assay self-test proves only:

> these behavioral predicates reject their declared anti-goals on the synthetic control fixture.

It does **not** prove:

- current Lace satisfies HCC-A;
- current Lace satisfies Coffee Cup;
- current Lace satisfies Water;
- a holder/application candidate exists;
- the HCC/Cup/Water internal machinery is correct;
- RM-A is solved;
- one bounded behavioral fit identifies a true mechanism.

No real holder candidate was run in Pass 3.

---

## 7. Current Lace support

Pass 3 explicitly refuses to stamp current Lace as behavioral-goal PASS.

### HCC-A goals

Current Lace contributes:
- immutable pointable history;
- separate occurrences;
- later participation over retained structure;
- derived reads/search.

That is **SUBSTRATE / DERIVED-READ SUPPORT**.

Missing:
- holder-local interpretation/context machinery;
- feedback behavior;
- multi-holder structure/meaning boundary.

### Coffee Cup goals

Current Lace contributes:
- ordered immutable history;
- ability to preserve separate event records;
- later additions without rewriting prior impact.

That is **SUBSTRATE SUPPORT**.

Missing:
- causal stage interpretation;
- intervention/counterfactual model;
- aftermath→later-condition behavior.

### Water goals

Current Lace contributes:
- pointable retained positions/structure that could support anchors.

Missing:
- claim/evidence admission;
- pressure/transfer diagnosis;
- separate party inventories;
- crossing state;
- explicit missing-evidence reasoning.

These belong to future holder/application behavior unless separately ruled into Lace.

### Cross-source goals

Append-only provenance can support distinguishable history, but there is no current H×C×W holder runtime and none is inferred.

---

## 8. Goal/assay debt

### Specified / self-tested

- all twelve minimum goals are source-grounded;
- all twelve have anti-goals/falsifiers;
- all twelve have positive + negative control polarity;
- all twelve survive the mechanism-blindness audit.

### No current candidate

There is no current accepted holder/application system whose outputs can be supplied to the assays.

### Needs holder/application layer

All twelve behavioral goals ultimately require behavior above or around the Lace substrate, even where Lace provides useful support.

### Multi-party specimen debt

- H-G3;
- W-G3;
- X-G2.

Future real candidate runs must preserve separate holders/inventories.

### Temporal specimen debt

- H-G2;
- C-G1;
- C-G2;
- C-G3;
- X-G1.

Future runs must preserve round/time order and immutable earlier history.

### Source-open tolerances

Water:
- exact OBS pointer format;
- INVALID list;
- UNK halt vs budget.

HCC-A:
- arbitration/procedural details remain source-open in places.

These ambiguities do not block the bounded assay relations used here.

### RM-A

Pass 3 does not assert that any behavioral assay is blocked by RM-A until a specific real candidate proves that dependency.

No retain rule is invented to make a behavioral scenario work.

---

## 9. Research role

Research remains methodological support, not behavioral-goal authority.

- Petersen–Zech supports the warning that bounded behavioral fit does not identify the generating mechanism.
- AgentScope can inform failure-analysis discipline.
- Kauffman/Rowlands/Xiao may contribute future machinery or mathematical tests.

They do not redefine HCC-A/Cup/Water goals.

---

## 10. Platform role

All twelve current behavioral relations are platform-independent at specification/self-test stage.

Therefore their platform status is:

`NONE-AT-BEHAVIORAL-STAGE`.

A future real-time/device-dependent assay may introduce:
- latency;
- resource;
- concurrency;
- persistence;
- browser/device evidence.

Pass 3 does not.

Platform speed/availability is not behavioral correctness.

---

## 11. Global ASCII Pass 35

Final semantic edit:
- `748e9e29c8c72a6e2e4b47fc6039bdc57e5f433a`.

Pass 35 preserves:
- Pass 32 = canonical mechanism catalog;
- Pass 33 = vertical authority/context;
- Pass 34 = operational traceability.

Pass 35 adds:
- behavioral-goal vs source-machinery distinction;
- twelve-assay bounded goal set;
- mechanism-blindness rule;
- 24/24 assay self-test;
- current Lace support classification;
- goal/assay debt;
- Pass-3 verdicts.

No Core mechanism is added.

---

## 12. Station disposition

### Read-only / KEEP

No semantic edit was required in:
- HCC-A/Coffee Cup/Water source clipboards;
- H×C×W candidate-composition body;
- research clipboards;
- platform clipboards;
- law;
- prompt/context entrance;
- kit controls.

Their current authority story already supports the assay distinction.

### Maps

Pass 3 authored:
- behavioral-goal assay register;
- behavioral assay self-test tool;
- synthetic control fixture;
- tool/fixture index entries;
- global ASCII Pass 35;
- findings/index/receipt.

No gearing shaft was required.

---

## 13. Falsifier board

| Falsifier | Result |
|---|---|
| machinery-as-goal | PASS — did not fire |
| alien implementation rejected for being alien | PASS |
| vague/non-falsifiable minimum goal admitted | PASS |
| private chain-of-thought required | PASS |
| source drift / no locator | PASS |
| proxy laundered as source | PASS |
| substrate support called behavioral success | PASS |
| RM-A smuggled into assay | PASS |
| Water inventories collapsed | PASS |
| temporal recurrence collapsed | PASS |
| oracle labels exposed to candidate | PASS — no candidate run; self-test metadata only |
| bounded fit called mechanism identity | PASS |
| research redefined goal | PASS |
| platform success called goal success | PASS |
| platform failure called goal impossibility | PASS |
| assay PASS promoted machinery into Core | PASS |

---

## 14. Completion board

| Gate | Result |
|---|---|
| G1 current main/tree/stations pinned | PASS |
| G2 behavioral-goal assay register created | PASS |
| G3 HCC-A minimum set source-grounded | PASS |
| G4 Coffee Cup minimum set source-grounded | PASS |
| G5 Water minimum set source-grounded | PASS |
| G6 two cross-source compatibility assays specified | PASS |
| G7 every assay has anti-goal/falsifier | PASS |
| G8 every assay mechanism-agnostic or rejected | PASS |
| G9 source machinery remains candidate machinery | PASS |
| G10 current Lace support classified without behavioral overclaim | PASS |
| G11 holder/application goals may remain outside Contract I | PASS |
| G12 Lab retain-evidence != Lace retention | PASS |
| G13 RM-A remains un-designed | PASS |
| G14 multi-party/temporal structure preserved in assay contract | PASS |
| G15 no private chain-of-thought required | PASS |
| G16 fixture declares self-test/oracle-answer discipline | PASS |
| G17 new tool catches predeclared adversarial controls | **PASS — 12 negative controls caught** |
| G18 research informs methodology without redefining goals | PASS |
| G19 platform enters only where behavior depends on it | PASS |
| G20 Pass 32/33/34 preserved | PASS |
| G21 global ASCII changed last | PASS |
| G22 companion delta is linear Pass 35 | PASS |
| G23 goal/assay debt register published | PASS |
| G24 no implementation/acceptance/Core promotion | PASS |
| G25 all claims released | **PENDING final maps release** |

---

## 15. Verdict

```
GOAL SPECIFICATION:
    BEHAVIORAL GOALS OPERATIONALIZED
    bounded twelve-assay set

ASSAY INTEGRITY:
    MECHANISM-AGNOSTIC
    24/24 adversarial self-test

CURRENT COVERAGE:
    BOUNDED BEHAVIORAL COVERAGE / NAMED DEBT
    assay coverage, not holder-success coverage
```

The Lab now has a falsifiable destination surface.

What it does **not** have yet is a real holder/application candidate whose behavior has been run against that surface.

Pass 3 does not create one.

**STOP. Pass 4 is not opened automatically.**
