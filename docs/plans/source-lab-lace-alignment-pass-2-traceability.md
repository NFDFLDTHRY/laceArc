# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 2 traceability

**Status:** EXECUTED TRACE ARTIFACT · 2026-09-21.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 2 — TRACE THE ARROWS.  
**Authority:** **NON-CANONICAL alignment/Lab evidence.** If this file conflicts with Graphics A–D, explicit human rulings, the Pass-32 catalog, or the systems-manifest contracts, this file loses.  
**Pinned execution baseline:** `444bcfad79ee5e53208b75ed2d31ce62a247aa61`.  
**Implementation:** none. No `src/`, Cargo implementation, branch birth, runtime authorization, or acceptance.  
**RM-A:** not designed here.

Pass 1 aligned the repository layers. Pass 2 traces candidate machinery across those layers.

---

## 1. Trace contract

A complete trace is:

```
SOURCE / AUTHORITY
      |
      v
CLIPBOARD / POINTABLE PROVENANCE
      |
      v
LAB REPRESENTATION
      |
      v
EXPERIMENT / DERIVATION / FALSIFIER
      |
      v
BOUNDED RESULT
      |
      v
EXACT LACE CONSUMER
SM-Cxx / RM-x / FORBID / NONE
      |
      v  if implementation-relevant
PLATFORM REQUIREMENT
      |
      v
SOURCE / OBSERVED / SYNTHETIC / NOT-RUN / GAP
```

The reverse path must also exist. A result with no provenance is incomplete.

### Trace dispositions

These are evidence-state labels only, not new architectural authority classes:

- `TRACE-COMPLETE`
- `SOURCE-ONLY`
- `NOT-YET-INSTRUMENTED`
- `BLOCKED-ADAPTER`
- `BLOCKED-INPUT`
- `BLOCKED-OUTPUT`
- `AUTHORITY-BLOCKED`
- `PREFIX-BLOCKED`
- `FALSIFIED-BOUNDED`
- `SURVIVES-BOUNDED`
- `PLATFORM-UNESTABLISHED`
- `PLATFORM-REFUTED`

---

## 2. Byte-exact Lab reproduction

Direct network cloning was unavailable in the execution container, so the exact committed bytes were materialized through the connected GitHub source at the pinned SHA.

Blob identity was checked before execution:

| File | GitHub blob | Local `git hash-object` | Match |
|---|---|---|---|
| `docs/plans/tools/lace-candidate-run.py` | `7586d39ad56381b07cacdbe687e29aba984f1deb` | `7586d39ad56381b07cacdbe687e29aba984f1deb` | **YES** |
| `docs/plans/tools/lace-retention-harness.py` | `20c73806cc8e97041d545abb0a67e3b73504fcfe` | `20c73806cc8e97041d545abb0a67e3b73504fcfe` | **YES** |
| `docs/plans/fixtures/d1-golden-v0.1.0.json` | `0a3e7e2cde0c87e574634b3da934ddebe5ec389f` | `0a3e7e2cde0c87e574634b3da934ddebe5ec389f` | **YES** |

### 2.1 Candidate runner

Command:

```bash
python docs/plans/tools/lace-candidate-run.py
```

Reproduced result:

```
candidate           provenance                         by rule  oracle  exact  divergence
words_only          editor · null hypothesis                 0       6    yes  -
pointability        behavioral · Water L318 I-A1             0       6    yes  -
ric_faithful        behavioral · HCC-A L33 RIC               0       6    yes  -
f5_reject           behavioral · Water L449 F5 Reject        0       6    yes  -
f3_pair             behavioral · Water L438 F3 Pair          0       6    yes  -
i_a2_sharedness     behavioral · Water L320 I-A2             0       6    yes  -
root_touch          ruling H1 · witnessed D1 row 0004        1       5    yes  -
adjacent_pairs      graphics · ruled out by D1 itself        6       0     no   row 0004
```

This reproduces the earlier behavioral-harvest result. The bench remains a refutation instrument, not an election mechanism.

### 2.2 Retention harness

Command:

```bash
python docs/plans/tools/lace-retention-harness.py
```

Reproduced result:

| Candidate | Authority | RM-A | RM-B | RM-C | Oracle class | Discover | Retain | TP | FN | FP | Pair | Event | Replay | Admission |
|---|---|---|---|---|---|---:|---:|---:|---:|---:|---:|---:|---|---|
| RootTouch | HUMAN | special | - | special | D1-WITNESSED | 1 | 1 | 1 | 5 | 0 | 0 | 0 | PASS | CALIBRATION |
| WeightByRepetition | LAB-PROXY | - | - | - | D1-SCHEMA-ONLY | 0 | 0 | 0 | 6 | 0 | 0 | 0 | PASS | INSTRUMENT-PROXY |
| AftermathRecirculation | EXTERNAL-CANDIDATE | silent | - | - | D1-BLIND | 34 | 0 | 0 | 6 | 0 | 0 | 0 | PASS | CANDIDATE |
| CheatingMemory | ADVERSARIAL-CONTROL | - | - | - | D1-BLIND | 0 | 0 | 0 | 6 | 0 | 0 | 0 | **FAIL determinism@0000** | REJECT |
| SidecarMemory | ADVERSARIAL-CONTROL | - | - | - | ORACLE-CHEAT | 0 | 6 | **6** | 0 | 0 | 0 | 0 | PASS | **REJECT** |

The controls prove two independent things:

```
replay legality
    !=
evidence provenance

perfect D1 score
    !=
architectural admissibility
```

The reproduced Sidecar result is the sharpest example: 6/6 exact, replay PASS, still REJECT.

---

## 3. Behavioral-goal machinery trace register

### 3.1 Water / Dual Proofing

| Mechanism | Exact provenance | Source job | Lab representation | Actual result | Lace consumer | Trace disposition | Next honest action |
|---|---|---|---|---|---|---|---|
| I-A1 Pointability | Water L318 | no claim enters unless pointable | `pointability` in candidate runner | reproduced 0/6; admits all indexed operands, selects none | SM-X-BEH; admission discipline, **not RM-A** | **TRACE-COMPLETE** for admission claim | STOP unless a different source-grounded hypothesis is stated |
| I-A2 Sharedness | Water L320 | DELTA requires sharedness across two OBS inventories | `i_a2_sharedness` | reproduced 0/6; single-strand D1 lacks the second inventory | SM-X-BEH | **BLOCKED-INPUT** for one-strand Lace | would require a separately authorized multi-party/inventory model, not editor invention |
| F3 Pair | Water L438 | two OBS → DELTA constructor | `f3_pair`; also Pass-6 C8 | reproduced 0/6; constructor names no operand-selection path; C8 also lacks OBS→Lace and DELTA→relation correspondence | SM-X-BEH; negative evidence near RM-A / constructor analogy only | **BLOCKED-ADAPTER + BLOCKED-INPUT** | STOP; do not invent OBS/Lace adapter |
| F5 Reject | Water L449 | non-computable claim → INVALID | `f5_reject` | reproduced 0/6; bounded word stream gives no matching rejection event | SM-X-BEH | **TRACE-COMPLETE** for “not a retention selector” | STOP |
| OBS / DELTA / UNK / INVALID family | Water L128–162, 304–313 | proof-ledger state vocabulary | clipboard/source analysis; only subsets instrumented | source-grounded; several mechanisms remain outside current harness domain | SM-X-BEH | **SOURCE-ONLY / NOT-YET-INSTRUMENTED** as applicable | only instrument if a specific Lace-facing hypothesis is predeclared |
| FSM S0–S4 / River / crossing machinery | Water L343–423 | conversational/proofing process state | no faithful current Lab representation | not run | behavioral-goal testing, not current Core | **SOURCE-ONLY** | requires an experiment about the behavioral goal, not RM-A by analogy |

### 3.2 HCC-A

| Mechanism | Exact provenance | Source job | Lab representation | Actual result | Lace consumer | Trace disposition | Next honest action |
|---|---|---|---|---|---|---|---|
| RIC faithful preservation | HCC-A L26/L33 | preserve input structure faithfully | `ric_faithful` | reproduced 0/6; input discipline supplies no retained relation | SM-X-BEH | **TRACE-COMPLETE** for this claim | STOP as RM-A candidate |
| Story Ledger add/merge/re-index/delete | HCC-A L58 | mutable story ledger | no legal Lace candidate | deletion/rewrite conflicts with append-only Lace | SM-C01/SM-C06/SM-C16 FORBID boundary | **AUTHORITY-BLOCKED** | retain as behavioral/candidate machinery outside Core |
| Meaning Engine weights | HCC-A L71 | graded influence / weighted survival | harness can hold a weight, but HCC-A supplies no lawful Lace weight computation | no HCC-A weight candidate run; A5 integer count is explicitly only LAB-PROXY | RM-A-shaped source evidence under SM-X-BEH | **SOURCE-ONLY + BLOCKED-ADAPTER** | no A5→HCC weight laundering |
| Pruning sites / levels | HCC-A L229 | names where/how strongly information is lost | no executable keep predicate from source | not run as RM-A candidate | RM-A-shaped source evidence | **BLOCKED-OUTPUT** | needs an existing source-defined predicate before instrumentation |
| PFC / Compiler / E / ISL / B / S0–S7 / knobs | HCC-A L35–291 | interpretation, compiler, runtime/state machinery | no current faithful full-stack Lab instrument | not run as a complete machine | behavioral-goal/system candidate space | **SOURCE-ONLY / NOT-YET-INSTRUMENTED** | future behavioral experiments may target these without assuming Core correspondence |

### 3.3 Coffee Cup

| Mechanism | Exact provenance | Source job | Lab representation | Actual result | Lace consumer | Trace disposition | Next honest action |
|---|---|---|---|---|---|---|---|
| Conditions → Release → Trajectory → Impact | Cup L14/L41/L66/L102 | causal time-axis stages | no separate current harness candidates | not individually run | behavioral goal / candidate causal machinery | **SOURCE-ONLY** | instrument only as part of a declared behavioral experiment |
| Aftermath / Loop | Cup L124, L147–152 | later causal recirculation; next round affected by prior outcome | `AftermathRecirculation` | **reproduced 34 discovered, 0 retained, replay PASS** | RM-A negative evidence through SM-X-BEH | **TRACE-COMPLETE / SURVIVES-BOUNDED as discovery only** | source supplies no retain predicate; STOP before invention |

### 3.4 H×C×W composition

The composition product is not a fourth source and not an automatic machine.

Existing Pass-6 chains exercise the strongest candidate combinations:

| Composition | First missing/illegal edge | Consumer | Disposition |
|---|---|---|---|
| sampling → Aftermath → B8 → Join | discovered possibility → already-recorded touch has no RM-A edge | RM-A | **BLOCKED-ADAPTER / UNAVAILABLE** |
| A5 count → HCC-A weight/prune → retain | count → HCC weight is editor-created; keep predicate absent | RM-A | **BLOCKED-ADAPTER** |
| Water F3 Pair → L-M19 | two OBS inventories unavailable; DELTA→Lace correspondence not source-defined | RM-A/RM-B handoff | **BLOCKED-INPUT + BLOCKED-ADAPTER** |

The composition is therefore **TRACEABLE WITH DEBT**, not ungrounded and not adopted architecture.

---

## 4. Human / derived calibration machinery

Human/derived mechanisms are walls/calibrations, not contestants against external sources.

| Mechanism | Authority/provenance | Lab/derivation path | Actual result | Lace consumer | Disposition | Platform relevance |
|---|---|---|---|---|---|---|
| RootTouch | H1/H4 + D1 row 0004 | candidate runner + retention harness | runner: 1/6; harness: TP1/FN5, replay PASS | SM-C18; RM-A/RM-C special case | **TRACE-COMPLETE** | NONE-AT-SEMANTIC-STAGE |
| Binary Join | D2 shape + human H5/H6 | canonical contracts / D1 bounded witnesses | constructor reconciled | SM-C05 | **TRACE-COMPLETE** | future implementation only |
| Finite repeated grounding | H5/H6 + derived induction | L-M19 / SM-C19 | already-selected/addressable ordered finite sample can be grounded | RM-B downstream machinery | **TRACE-COMPLETE** | future implementation only |
| L-M20 position×scale sampling | H7–H12 + Sampling/Density/Emergence Lab evidence | executed sampling campaign | reconstructible structural discovery; no write authority | SM-C20 | **TRACE-COMPLETE** | future implementation path unassigned |
| L-M21 search/frontiers | DERIVED + LAB + VIEW | executed search campaign | reconstructible/read-only | SM-C21 | **TRACE-COMPLETE** | future implementation path unassigned |
| contiguous-sample RM-B | Pass-6 derivation | selected S[n,t] → WORD positions → existing WORD rows → L-M19 | two retained D1 controls match; unretained DESSERT/PIE also demonstrably groundable if selected | RM-B | **SURVIVES-BOUNDED / TRACE-COMPLETE** for this class | NONE-AT-SEMANTIC-STAGE |
| RootTouch RM-C order | H1/H4 | (new occurrence, root) | closed special order | RM-C | **TRACE-COMPLETE** | NONE-AT-SEMANTIC-STAGE |
| contiguous-grounding RM-C order | ordered S[n,t] + SM-C19 | intrinsic source order preserved into grounding | class-specific closure | RM-C | **SURVIVES-BOUNDED** | NONE-AT-SEMANTIC-STAGE |

Bounded RM-B/RM-C progress does not identify RM-A.

---

## 5. Research machinery trace register

### 5.1 Kauffman

| Candidate | Original-source job | Lab admission/result | Lace consumer | Disposition |
|---|---|---|---|---|
| hitch / grab | physical contact/tension/geometry can hold | Lace prefix does not supply contact/friction/tension geometry; output “hold/no-slip” is not a retained relation | RM-A-shaped analogy only | **BLOCKED-INPUT + BLOCKED-OUTPUT** |
| capstan / no-slip threshold | physical stability threshold `T2 ≤ κT1` | exact threshold is real in source domain; no lawful mapping from sampling evidence to `T1,T2,θ`; renaming no-slip→retain changes source purpose | RM-A control against threshold laundering | **BLOCKED-ADAPTER + BLOCKED-OUTPUT** |

### 5.2 Rowlands

| Candidate | Original-source job | Lab admission/result | Lace consumer | Disposition |
|---|---|---|---|---|
| nilpotency / return-to-zero | algebraic validity in source formalism | no source/current-law map from sampled Lace structure into required algebraic state | RM-A-shaped validity analogy | **BLOCKED-ADAPTER** |

### 5.3 Xiao–Zhu

| Candidate | Original-source job | Lab admission/result | Lace consumer | Disposition |
|---|---|---|---|---|
| argmax / next-token selector | choose highest-probability token from learned distribution | requires trained model/vocabulary/probability state unavailable/forbidden as Lace authority; output is token choice, not relation retention | RM-A-shaped selector analogy | **BLOCKED-INPUT + AUTHORITY-BLOCKED + BLOCKED-OUTPUT** |
| 15% / 80-10-10 training selection | corruption/training policy | source-domain percentage cannot be renamed a Lace retention threshold | FORBID as RM-A shortcut | **BLOCKED-ADAPTER** |

### 5.4 Petersen–Zech

| Mechanism | Source job | Lab use | Lace consumer | Disposition |
|---|---|---|---|---|
| interpolation / non-identification | demonstrates finite fit need not identify generating mechanism | used as a falsifier/constraint, not a retention candidate | RM-B topology-identity caution; D1-overfit falsifier | **TRACE-COMPLETE** as negative evidence |

This source is important precisely because it prevents a bounded fit from becoming a universal theorem.

### 5.5 AgentScope

| Candidate | Source job | Admission/result | Lace consumer | Disposition |
|---|---|---|---|---|
| Stage 2 candidate-failure retention | retains candidate failures with ReAG/ISR/neural evidence | no lawful Lace structural-evidence → ReAG/neural-evidence adapter; failure-candidate output not automatically Lace relation | RM-A-shaped retention analogy | **BLOCKED-ADAPTER + BLOCKED-INPUT** |
| Stage 3 decisive selection | chooses failure whose downstream impact best explains degraded outcome | requires full/future trajectory outcome unavailable at current Lace prefix | RM-A-shaped decisive-selection analogy | **PREFIX-BLOCKED** |

Research therefore remains rich in selector/retainer machinery but still has no lawful general RM-A socket path.

---

## 6. Lab proxies and adversarial controls

| Lab mechanism | Provenance | Reproduction | What it proves | Lace consumer | Disposition |
|---|---|---|---|---|---|
| words_only | editor null hypothesis | reproduced 0/6, oracle6 | baseline absence of derivation | instrument baseline | **TRACE-COMPLETE** |
| WeightByRepetition | editor LAB-PROXY motivated by Graphic A5 | reproduced replay PASS, 0 retain | harness can carry replayable accumulated state; **not HCC weight** | instrument capability only | **TRACE-COMPLETE** |
| AdjacentPairs | deliberate false candidate ruled out by D1 | reproduced by-rule6, exact NO at row0004 | adjacency is not universal retention/emission | FORBID adjacency trigger | **FALSIFIED-BOUNDED** |
| CheatingMemory | deliberate second-store control | reproduced replay **FAIL determinism@0000** | replay check has teeth against unreconstructible side state | one-store evidence discipline | **TRACE-COMPLETE / REJECT** |
| SidecarMemory | embedded D1-answer oracle cheat | reproduced **TP6/FN0/FP0**, replay PASS, ORACLE-CHEAT, REJECT | perfect fit + replay legality do not establish provenance | oracle-independence falsifier | **TRACE-COMPLETE / REJECT** |

No score changes an authority class.

---

## 7. Result → Lace consumer register

Every current executed result in this pass resolves to one of these consumers:

| Result family | Exact consumer |
|---|---|
| RootTouch bounded success | **SM-C18**; RM-A/RM-C special case only |
| binary Join / repeated grounding | **SM-C05 / SM-C19** |
| derived sampling | **SM-C20** |
| derived search | **SM-C21** |
| Aftermath discovers 34, retains 0 | **RM-A negative evidence** through SM-X-BEH |
| F3 Pair / research selector failures | **RM-A missing-edge evidence**, not Core mechanism |
| contiguous-sample materialization derivation | **RM-B bounded closure** |
| RootTouch / contiguous order | **RM-C class-specific closure** |
| AdjacentPairs failure | explicit **FORBID** of adjacency-as-universal trigger |
| Petersen non-identification | experiment-design constraint; prevents D1 fit → universal mechanism inference |
| CheatingMemory | one-store/replay falsifier |
| SidecarMemory | oracle/provenance falsifier |
| platform source facts | **SM-X-PLAT**, never RM-A semantics |

No executed result is left floating as an untyped architecture claim.

---

## 8. Platform feasibility register

Platform facts constrain realization only after a semantic/candidate obligation exists.

### 8.1 wasm64 / Memory64 / Rust target

| Requirement | Current evidence | Evidence state | Consumer | Disposition |
|---|---|---|---|---|
| `wasm64-unknown-unknown` exists as Rust target / Tier-3 style target | rust-target clipboard + current target record | SOURCE / in-repo mapping | future Rust implementation proposal | TRACEABLE |
| no prebuilt target `core`; build-std/nightly path needed | rust-target + Cargo A4 source products | SOURCE | future build | TRACEABLE |
| Chrome Android Memory64 availability by browser version | current target record cites Chrome ≥133 / human device at 151 | SOURCE-secondary + HUMAN_REPORTED | future target feasibility | PLATFORM-UNESTABLISHED on actual build |
| practical memory64 scale on Pixel 9a | P-64a/b/c defined but not run; target record T15 says unestablished | **NOT-RUN / UNESTABLISHED** | future supported-domain claim | **PLATFORM-UNESTABLISHED** |
| 16-GB JS-API ceiling / bounds-check cost | current target record | source/secondary evidence; primary/device validation incomplete | capacity/performance planning | PLATFORM evidence only, not semantics |
| single-writer consequence from current githack non-isolation | target record T13 | HUMAN_REPORTED + in-repo observation | app implementation circumstance | does **not** close Core concurrency |

### 8.2 Cargo build-std / toolchain closure

| Requirement | Current evidence | State |
|---|---|---|
| core-only crate list is licensed by Cargo `build-std` source | Cargo A4 clipboard | **SOURCE** |
| bare `-Z build-std` pulls `std` + `alloc` | Cargo A4 clipboard | **SOURCE** |
| `build-std-features` mechanism | Cargo A4 clipboard | **SOURCE** |
| exact `compiler_builtins` closure for sealed wasm64 plan | absent from A4 source corpus | **GAP / PLATFORM-UNESTABLISHED** |
| exact `Cargo.lock` representation for target closure | absent from A4 source corpus | **GAP / PLATFORM-UNESTABLISHED** |
| actual wasm64 build | no current run | **NOT-RUN** |

Semantic consequence: none. These are build/trust-boundary obligations only.

### 8.3 WebGPU

Current role:
- Layer-III projection/compute candidate;
- buffer copies may be discarded without losing authoritative Lace facts.

Current device evidence:
- Pixel 9a `requestAdapter()` reportedly required Advanced Protection off plus flags;
- chrome://gpu reportedly exposed ~4-GB maxBufferSize, shader-f16, subgroups.

Evidence strength:
- **HUMAN_REPORTED / OBSERVED by human**, not reproduced in this pass.

Consumer:
- future view/projection realization only.

Disposition:
- **PLATFORM-UNESTABLISHED** for any general shipped-family claim;
- not an RM-A candidate.

### 8.4 WGSL

Source job:
- shader language for WebGPU compute/rendering.

Consumer:
- Layer-III view/projection implementation.

Current status:
- source-grounded language role;
- no device shader execution reproduced in this pass.

Disposition:
- TRACEABLE as platform language;
- **NONE-AT-SEMANTIC-STAGE** for Lace retention;
- future realization remains platform-evidence dependent.

### 8.5 WebNN

Current permitted candidate role:
- optional non-authoritative recomputed projection under R10 / SM-C15 / SM-X-PLAT / SM-X-L3.

Current status:
- proposal only;
- may be absent entirely from shipped app.

Disposition:
- **PLATFORM-UNESTABLISHED / PROPOSAL**;
- no Core role;
- never a source of RM-A.

### 8.6 Browser / installed app / storage / isolation

| Fact/proposal | Current state |
|---|---|
| githack install path observed | OBSERVED in prior device evidence |
| githack `crossOriginIsolated=false` | HUMAN_REPORTED / in-repo observation |
| worker/shared-memory production arrangement | PROPOSAL / conditional on isolation + R9 |
| COOP/COEP production path | UNESTABLISHED / NOT-RUN |
| offline production guarantee | NOT-RUN / unproven |
| OPFS SyncAccessHandle performance | HUMAN_REPORTED bounded probe evidence |
| carrier choice for authoritative Lace | open app/implementation question; platform fact does not choose it |

---

## 9. Implementation-relevant survivor → platform edge

Pass 2 finds no current RM-A survivor requiring platform validation because **RM-A has no admitted rule**.

Existing admitted/canonical machinery does have future realization obligations:

| Semantic/canonical machinery | Physical realization debt |
|---|---|
| append-only WORD/POINTER Lace | finite memory/storage representation, index width, refusal/exhaustion behavior |
| binary Join | concrete representation + proof of backward same-line operands |
| L-M19 finite grounding | implementation that preserves ordered constituent identities without second store |
| L-M20 derived sampling | implementation ownership / working-memory/resource proof still unassigned |
| L-M21 search | implementation ownership / efficiency/windowing/replay proof still unassigned |
| read-only projection | WebGPU/WGSL or CPU realization may be chosen later; authority must remain read-only |
| future wasm64 Core plan | rustc/Cargo/toolchain closure, actual build, memory64 device probes, supported-domain statement |

These debts do not alter the semantic evidence.

---

## 10. Experiment-debt register

### SOURCE-ONLY

- Water FSM/River/crossing mechanisms not tied to a specific current Lab hypothesis.
- HCC-A PFC/Compiler/E/ISL/B/S0–S7/parameter-space machinery as whole behavioral system candidates.
- Coffee Cup individual C1–C4 stages outside the tested Aftermath/Loop recirculation hypothesis.

### NOT-YET-INSTRUMENTED

- full behavioral-goal machine tests for HCC-A/Cup/Water beyond retention-shaped probes;
- candidate experiments whose lawful hypothesis is about behavior rather than D1 pointer retention.

### LAWFUL ADAPTER MISSING

- sampling → Kauffman physical threshold;
- sampling → Rowlands algebraic state;
- sampling → HCC-A weight/pruning;
- sampling → AgentScope evidence representation;
- Water DELTA → one-strand Lace relation.

### INPUT UNAVAILABLE

- Water I-A2 second OBS inventory in one-strand D1;
- Xiao trained probability/model state;
- AgentScope semantic graph/neural evidence;
- AgentScope Stage 3 future outcome.

### WRONG OUTPUT DOMAIN

- Kauffman no-slip certificate;
- Xiao token choice;
- research/source decisions that do not return a retained Lace relation.

### AUTHORITY-FORBIDDEN STATE

- HCC-A mutable/deleting Story Ledger as Core;
- learned embedding/model state as Lace authority;
- platform/WebNN output as retained relation truth.

### PREFIX/FUTURE VIOLATION

- AgentScope Stage 3 downstream-outcome selection.

### PLATFORM EVIDENCE MISSING

- actual wasm64 build at sealed target;
- P-64a/b/c on-device Memory64 probes;
- exact Cargo compiler_builtins/lockfile closure;
- production COI/shared-memory proof;
- general device execution for WebGPU/WebNN proposals;
- carrier/recovery/capacity proof.

### SPECIMEN COVERAGE TOO NARROW

- D1 remains a bounded oracle, not a mechanism-identification dataset.
- no new out-of-D1 fixture is created in this pass.
- bounded RM-B/RM-C results remain class-specific.

### NO LACE CONSUMER

- generic source machinery whose current value is behavioral understanding but which has no declared current Lace-facing hypothesis. These remain legitimate source/goal machinery, not failed Core candidates.

---

## 11. RM-A trace status

Existing evidence path:

```
L-M20 sampling-derived structural evidence
        |
        X  MISSING-A
        |
authority-backed retain decision
```

Every previously tested strongest source/research composition reaches a named stop before a lawful RM-A decision.

Pass 2 adds **no new adapter** and proposes **no new predicate**.

Current RM-A trace disposition:

**BROKEN AT ONE NAMED OPEN EDGE BY DESIGN — MISSING-A.**

That is not an untraceable repository failure. It is the current pointable open interface.

---

## 12. Pass-2 architecture-flow verdict

### TRACEABLE WITH DEBT

Why not TRACEABLE:
- many source mechanisms intentionally remain SOURCE-ONLY or not yet instrumented;
- platform/device execution is unestablished for several future implementation paths;
- RM-A remains one explicit missing edge.

Why not BROKEN TRACE:
- every candidate-bearing mechanism inspected has either a complete provenance/result/consumer path or a named first missing edge;
- no executed Lab result is left without a consumer;
- authority class remains independent from score;
- platform semantics leakage is fenced.

---

## 13. Pass-2 experiment-coverage verdict

### BOUNDED COVERAGE / NAMED DEBT

Current claims do not exceed the reproduced instrument coverage because:
- behavioral candidate-run claims reproduced;
- retention-harness claims reproduced byte-exactly;
- source mechanisms not covered by those instruments are explicitly not presented as tested;
- research candidates rejected before harness admission retain their exact admission failure;
- platform/device claims preserve SOURCE / HUMAN_REPORTED / NOT-RUN distinctions.

Coverage is insufficient for:
- universal RM-A;
- universal RM-B/RM-C;
- whole behavioral-goal realization;
- general hardware feasibility;
- implementation readiness.

---

## 14. Falsifier result

| F | Result |
|---|---|
| F1 orphan source mechanism silently treated as architecture | **did not fire** — source-only debt is explicit |
| F2 LAB-PROXY laundered as source | **did not fire** — WeightByRepetition remains LAB-PROXY |
| F3 unrun candidate reported as tested | **did not fire** |
| F4 instrument incapacity reported as source failure | **did not fire** |
| F5 orphan Lab result treated as architecture | **did not fire** |
| F6 authority upgrade by score | **did not fire** — Sidecar proves the opposite |
| F7 D1 fit treated as mechanism identity | **did not fire** |
| F8 false positives hidden | **did not fire** — harness reports TP/FN/FP/pair/event |
| F9 editor adapter hidden | **did not fire** — blocked edges remain stamped |
| F10 platform supplies semantics | **did not fire** |
| F11 platform evidence strengths collapsed | **did not fire** |
| F12 hardware ignored for implementation-relevant paths | **did not fire** — feasibility debts registered |
| F13 failed realization path treated as semantic refutation | **did not fire** |
| F14 bounded RM-B/RM-C universalized | **did not fire** |
| F15 RM-A design begins | **did not fire** |
| F16 implementation gate moves | **did not fire** |

---

## 15. Traceability verdict

```
ARCHITECTURE FLOW:
    TRACEABLE WITH DEBT

EXPERIMENT COVERAGE:
    BOUNDED COVERAGE / NAMED DEBT
```

The next useful operation is not to invent machinery. It is to decide which **existing source-only or blocked hypothesis** deserves a new faithful experiment, or to separately enter the human-facing RM-A design boundary already recorded by the Pass-6 docket.

This artifact opens neither path automatically.
