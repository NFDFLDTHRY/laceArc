# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 6 PLAN

**Status:** EXECUTED 2026-09-21.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 6.  
**Pass name:** **BOUND THE MACHINE — supported domain, carrier, resident working set, refusal, and recovery envelope.**  
**Planning station:** maps · `Astra-alignment-restart`.  
**Pinned current main before planning claim:** `b926d1b9eebfeca7176cadf3487c675a12cf45ff`.  
**Planning claim commit:** `59d529ae83fde399fbd5300b0c17bd276bafd0c9`.  
**Inherits:** Restart Passes 1–5, global ASCII Passes 33–37, Pass-32 mechanism catalog, current systems-manifest contract registry, Pass-5 target requirements and target audit.  
**Implementation:** none. No `src/`, Cargo project, carrier birth, allocator choice, target selection, RM-A design, pointer acceptance, or Core promotion.  
**Current compilation target:** **UNDECIDED.** Pass 6 may produce the requirements that allow a later target decision; it may not inherit wasm64 or force wasm32.
**Recovered execution claim:** 9c1e02ac0ad38dd9708a8c38dcd3a82c801ed5c4 · ChatGPT · maps, after human-authorized release of the abandoned Astra execution claim.
**Execution products:** domain 9a090bea540fa0d905047ecdedb3fda0b485f584 · access/CWS da9a53bcab31361e40993b3a14f2a224eb4b0caf · carrier eb60b50c4bf9bd059dbf7df0b7449da820bb4059 · capacity/recovery c3a27f9069e87c8e040300dde8381aa0531f4073 · global ASCII Pass 38 ac7db32bc53ec435af9b0cec507e5ec220a04e72 · findings 703fc1167ec4d1ee27c7611c69028711362fd8c1.
**Final Pass-6 verdict:** **SUPPORTED DOMAIN BOUNDED CONDITIONALLY · CARRIER OBLIGATIONS CLOSED WITH RULING DEBT · CORRECTNESS WORKING SET PARAMETRIC · NOT READY FOR TARGET COURT · TARGET UNDECIDED.**
**Optional calculator:** not created; symbolic formulas were sufficient and no accepted numeric inputs exist.

Pass 5 established:

```
permanent logical positions
        !=
native pointer width

and

target cannot be selected
until the supported-domain / carrier /
resident-working-set premises are real
```

Pass 6 attacks those premises directly.

---

## 0. Pass-6 question

> **What finite implementation envelope must a correct Lace implementation support, and which parts of that envelope must be simultaneously resident in Wasm memory?**

The answer must distinguish:

```
LOGICAL DOMAIN
    all permanent positions the implementation promises to name

PERSISTENT DOMAIN
    retained authoritative history that survives for the declared lifetime

RESIDENT DOMAIN
    bytes simultaneously addressable in the Core Wasm working set

DERIVED WORKING STATE
    disposable caches/frontiers/sampling/search state

HOLDER/APPLICATION STATE
    behavior above Contract I

LAYER-III WINDOW
    GPU/WGSL/WebNN projection/acceleration state
```

Only the **resident Core domain** is a direct wasm32/wasm64 discriminator.

---

## 1. Thesis

~~~
Supported Lace domain != resident Wasm working set
Logical Index representation != native pointer representation
Correctness working set != performance cache
Carrier contract must be derived before carrier implementation is selected
Refusal before exhaustion is part of a finite implementation's correctness envelope
~~~

---

## 2. Pass-5 opens this pass must attack

Pass 5 left the target undecided because the following target-discriminating premises are open.

### U6-1 — logical supported domain

How many permanent retained positions does the first supported implementation promise?

Current law says:
- fresh permanent positions;
- no wrap;
- no reuse;
- no renumbering.

It does not give a numeric cardinality.

### U6-2 — row/reference encoding envelope

No accepted byte encoding or final Index width exists.

Without an encoding envelope:
- resident byte capacity cannot be converted into retained-row capacity;
- pointer-width overhead cannot be quantified honestly.

### U6-3 — authoritative physical carrier role

The repo distinguishes abstract Lace history from candidate physical regions/carriers, but has not selected:
- whole-history linear memory;
- durable append-only log;
- segmented log;
- replay/window model;
- other.

Pass 6 must derive required **carrier behavior**, not pick a backend.

### U6-4 — resident correctness working set

No current contract says all history must be simultaneously resident.

Pass 6 must prove, mechanism by mechanism, what data correctness actually requires in memory at one time.

### U6-5 — performance working set

A semantically streamable algorithm may still be too slow.

No numeric latency/throughput/service-level requirement is currently accepted.

Correctness and performance must remain separate.

### U6-6 — capacity/refusal/custody

Current R4 still leaves open:
- grow;
- fixed capacity + refusal;
- another policy;
- custody of an arrival that cannot be committed.

### U6-7 — restart/durability

Current R3 leaves:
- volatile session;
- durable history;
- recovery behavior

open.

### U6-8 — implementation-state ownership

HCC/Cup/Water behavior maps show mutable holder/application state may exist above Lace.

That state must not be silently counted as authoritative Core history or used to force Core target width.

---

## 3. Primary Pass-6 artifacts

Execution should create:

1. `docs/plans/source-lab-lace-alignment-pass-6-domain-envelope.md`
2. `docs/plans/source-lab-lace-alignment-pass-6-access-working-set.md`
3. `docs/plans/source-lab-lace-alignment-pass-6-carrier-contracts.md`
4. `docs/plans/source-lab-lace-alignment-pass-6-capacity-recovery.md`
5. `docs/plans/source-lab-lace-alignment-pass-6-findings.md`

Optional Lab calculator, only after formulas are specified in prose:

- `docs/plans/tools/lace-domain-envelope.py`

The calculator may evaluate symbolic scenarios.

It must not become:
- row encoding;
- carrier implementation;
- target selector by fiat;
- Core code.

---

## 4. Domain model — mandatory separation

Execution must use a named domain tuple:

[
D = (I, E, H, R, W, V)
]

where:

- **I** = logical Index domain;
- **E** = encoded retained-row envelope;
- **H** = total retained authoritative history supported;
- **R** = simultaneously resident Core bytes;
- **W** = disposable derived working-state bytes;
- **V** = Layer-III / holder/view bytes outside authoritative Core state.

No target conclusion may cite “memory size” without saying which member of `D` it means.

---

## 5. Logical Index court

Pass 6 does **not** begin by selecting u32/u64.

It derives the requirement first.

### I1 — non-wrap invariant

For supported maximum retained position `Nmax`:

~~~
0 <= N < Nmax
~~~

and the implementation must refuse before the next position would alias, wrap, or reuse an earlier index.

### I2 — candidate logical widths

Evaluate as **logical encodings**, not Wasm pointer ABIs:

- 32-bit logical Index;
- 48-bit packed logical Index;
- 64-bit logical Index;
- other only if source/requirements demand it.

For each calculate:

~~~
Nmax = 2^b - reserved_values
~~~

No candidate wins merely because it has more bits.

### I3 — declared supported-domain tiers

If the source cannot supply one required numeric domain, Pass 6 may define **candidate support tiers** for analysis, such as:

```
D-small
D-medium
D-large
D-beyond-memory32
```

but their thresholds must be explicitly analytical, not accepted product requirements.

The findings must say which tier, if any, is actually required.

### I4 — target independence test

For every proposed logical Index width ask:

> Can this Index be represented and compared correctly when the native Wasm pointer is narrower?

If yes:
- logical width does not select target.

If no:
- identify the exact operation requiring native-pointer equivalence.

---

## 6. Encoding-envelope court

Final encoding remains open.

Pass 6 may derive only the information obligations.

### E1 — WORD envelope

At minimum model symbolically:

[
B_{WORD} =
B_{tag}
+
B_{payload}
+
B_{required metadata}
+
B_{padding}
]

Do not invent the final WORD payload encoding.

### E2 — POINTER / Join envelope

Current Join has two ordered earlier Lace operands.

Model:

[
B_{PTR} =
B_{tag}
+
2B_{Index}
+
B_{required metadata}
+
B_{padding}
]

This exposes the cost of logical Index width independently from native pointer width.

### E3 — mixed-history average

For WORD fraction p:

~~~
B_avg = p * B_WORD + (1 - p) * B_PTR
~~~

Then:

~~~
N_resident = floor(R / B_avg)
~~~

These are **scenario formulas**, not accepted encoding.

### E4 — pointer-width falsifier

A proposal that says:

```
wasm64 pointer = Lace Index
```

must prove why an explicit encoded logical Index is insufficient.

Otherwise reject the equivalence.

---

## 7. Access-obligation map

Execution must map every current Core/derived mechanism to an **access class**.

Allowed access classes:

- **TAIL-LOCAL** — append/tail state only;
- **POINT-READ** — one arbitrary earlier position;
- **FINITE-SET** — bounded named positions;
- **RANGE/WINDOW** — contiguous or bounded window;
- **PREFIX-SCAN** — sequential replay over prior history;
- **GLOBAL-DERIVED** — may inspect whole history but can potentially stream;
- **WHOLE-RESIDENT** — correctness genuinely requires all history simultaneously resident.

The last class must be proven, never assumed.

---

## 8. Mechanism-by-mechanism working-set proof

At minimum audit:

### M6-1 — WORD arrival / seen-vs-unseen / root

Required fact:
- determine whether the WORD has appeared before;
- recover root if seen.

Candidate correctness implementations may include:
- resident map;
- index structure;
- prefix scan/replay;
- another first-party mechanism.

Pass 6 asks:

> Does correctness require the entire prefix resident?

Expected court:
- no assumption; prove via at least one bounded-state method or leave OPEN.

Performance is separate.

### M6-2 — RootTouch

Inputs:
- new occurrence;
- root position.

Access need:
- tail append;
- one prior root address once identified.

Classify minimum correctness access.

### M6-3 — binary Join

Inputs:
- two ordered earlier positions.

Determine whether correctness requires:
- both full rows resident simultaneously;
- only their validated positions;
- random carrier access;
- scan/replay.

### M6-4 — L-M19 finite grounding

A selected finite sample has finite ordered operands.

Working-set bound should be expressed in terms of sample cardinality `k`.

Do not replace “finite” with “small.”

### M6-5 — L-M20 sampling

Audit the actual current H7–H12 / sampling contract.

Questions:
- what prefix/history surface must be observed?
- can position×scale sampling be generated incrementally?
- can a bounded window plus replay produce the same evidence?
- what state scales with history length?
- what state scales only with active scales/windows?

No whole-history resident claim without proof.

### M6-6 — L-M21 star/search

Audit:
- derived frontiers;
- search windows;
- replayability;
- disposable state.

Question:

> Is the authoritative history needed resident, or only addressable/replayable?

### M6-7 — RM-A boundary

RM-A remains open.

Pass 6 must not invent a retain predicate just to calculate memory.

Any RM-A candidate state is excluded from the accepted working-set requirement unless separately established.

---

## 9. Correctness working set vs performance working set

For each mechanism produce two rows.

### CWS — correctness working set

Minimum information that must be simultaneously available for a correct result.

### PWS — performance working set

Optional caches/indexes/windows needed to meet a stated performance budget.

If no performance budget exists:

```
PWS = OPEN
```

Do not make an optimization cache into semantic state.

This distinction is likely target-discriminating.

---

## 10. Carrier contract — derive behavior before backend

Pass 6 must create a backend-neutral carrier contract.

### K1 — one authoritative retained history

Whatever physically stores authoritative retained rows must expose one ordered history.

No duplicate authoritative copy.

A Wasm mirror/cache is not automatically a second authoritative store if its authority/recovery role is explicit.

### K2 — append

Carrier must support:
- append one accepted retained section at a new position;
- preserve all earlier positions;
- never alter an earlier row as part of append.

### K3 — addressability

Carrier must support recovery of an earlier retained row/position sufficient for:
- RootTouch;
- Join validation;
- finite grounding;
- derived sampling/search.

The mechanism may be direct seek, index, scan, replay, or another proven method.

### K4 — prefix/read consistency

A reader of prefix `L[0:n)` must not observe a fabricated mixture that cannot correspond to an authoritative prefix.

Exact concurrency guarantees remain separately open.

### K5 — capacity disclosure

Carrier must state:
- maximum supported authoritative bytes/rows for the implementation;
- maximum resident bytes;
- refusal threshold.

No implicit infinity.

### K6 — recovery identity

If durable:
- restart must recover an authoritative prefix with stable positions.

If volatile:
- restart semantics must explicitly say history does not survive.

Do not accidentally promise durability through Wasm memory.

### K7 — corruption / partial write boundary

For a durable candidate, define what happens if a write is interrupted:
- committed row;
- not committed;
- detectable invalid tail;
- other ruled behavior.

Pass 6 may state this as a required property without choosing file format.

---

## 11. Carrier scenario matrix

Evaluate abstract carrier classes, not products.

### C6-A — monolithic resident linear memory

```
authoritative history
    == resident Wasm memory
```

Benefits:
- simple direct addressing.

Costs/questions:
- whole supported history consumes resident domain;
- persistence not solved;
- target width strongly coupled to total domain;
- reload/recovery separate.

### C6-B — durable append-only log + bounded resident window

```
authoritative durable log
        |
        +--> bounded Core window/cache
        |
        +--> replay/address service
```

Questions:
- stable position mapping;
- seek/replay cost;
- crash boundary;
- cache non-authority;
- whether sampling/search can operate windowed.

### C6-C — segmented append-only authoritative history

One logical strand across finite physical segments.

Questions:
- position→segment mapping;
- segment rollover;
- no renumber/reuse;
- recovery order;
- whether segmentation is invisible to Core semantics.

### C6-D — volatile session strand

Authoritative only for process/session lifetime.

Questions:
- is that allowed by current product goal?
- what exactly happens on reload?
- does behavior-layer recurrence require durability across sessions?

### C6-E — other

Allowed only with an explicit contract and no authority duplication.

Pass 6 must **compare** these.

It must not pick OPFS, IndexedDB, filesystem, network database, or another concrete backend merely to close the matrix.

---

## 12. Authority placement for resident caches

Pass 6 must explicitly classify:

```
authoritative carrier state
derived/reconstructed cache
holder working state
Layer-III projection state
```

Rules:

- cache loss may cost time but must not change authoritative Lace truth;
- holder state may change behavior without becoming Lace;
- GPU/WebNN state may be discarded/recomputed;
- no cache/index becomes a hidden second append surface.

---

## 13. Capacity / refusal contract

A finite implementation must have a pointable exhaustion boundary.

### R6-A — preflight capacity

Before committing a new retained row, determine whether the supported implementation can assign and materialize the next permanent position.

### R6-B — no wrap / alias

On exhaustion:
- do not wrap;
- do not reuse;
- do not renumber.

### R6-C — append atomicity question

Audit existing law for whether a retained append is:
- all-or-nothing;
- allowed to expose a detectable partial tail;
- source silent.

If source silent:
- mark **REQUIRES HUMAN RULING**.

### R6-D — refused-arrival custody

Current R4 leaves custody open.

Pass 6 must map the interface:

```
arrival
  |
capacity check
  |
  +--> commit accepted row
  |
  +--> REFUSE before authoritative mutation
          |
          X custody / retry / upstream responsibility OPEN
```

Do not invent retry semantics.

### R6-E — capacity forecast

Pass 6 may compute:
- rows remaining;
- bytes remaining;
- estimated time-to-exhaustion under hypothetical workloads.

These are operational estimates, not semantic rules.

---

## 14. Restart / recovery contract

Evaluate both source-permitted modes.

### V6-A — volatile

- authoritative history ends with process/session;
- reload begins according to explicitly ruled semantics;
- no persistence claim.

### V6-B — durable

Required proof obligations:

1. append acknowledged only according to a defined commit boundary;
2. restart reconstructs the same retained prefix;
3. positions remain stable;
4. no duplicate/reordered rows are manufactured;
5. incomplete tail is either absent or detectable/refused;
6. derived caches can be discarded/rebuilt;
7. holder/Layer-III state is separately classified.

Pass 6 may compare these obligations.

It does not choose the durability policy unless existing source/product requirements actually force one.

---

## 15. Behavioral-source pressure on persistence

Use Pass-4 maps carefully.

### HCC-A

Source requires recurrence and holder feedback.

Question:
- must recurrence survive browser/process restart, or only cognitive/session rounds?

The source does not automatically select Lace persistence.

### Coffee Cup

Aftermath changes later conditions.

Question:
- later within what lifetime?

Do not convert causal recurrence into a storage-backend requirement without a stated product lifetime.

### Water

Shared proofing state progresses through S0–S4.

Again:
- working-state lifetime does not automatically equal authoritative Lace lifetime.

Pass 6 must distinguish behavioral persistence requirements from substrate durability.

---

## 16. Performance envelope

Pass 6 must inventory performance requirements already present in source/project law.

For each find:

- latency bound;
- throughput bound;
- memory bound;
- startup/recovery bound;
- offline bound;
- energy/thermal bound.

If no numeric requirement exists:

```
OPEN — no numeric performance target
```

Do not reverse-engineer one from current hardware speed.

This determines whether a semantically windowable wasm32 solution can be rejected for performance. Without a stated budget, it cannot be rejected merely for being slower in theory.

---

## 17. Layer-III window budgets

Pass 5 established separate domains.

Pass 6 now maps their relationship to the Core envelope.

### WebGPU

State:
- maximum required derived projection window;
- whether chunking is semantically harmless;
- whether whole-history GPU mirror is unnecessary.

### WGSL

State:
- whether global logical positions are required in shader;
- whether base+local-index suffices.

### WebNN

State:
- whether any current required workload exists at all;
- tensor window size if one does.

These must not enlarge the Core resident requirement merely because Layer III can consume more data.

---

## 18. Optional host-side envelope calculator

Only after sections 5–17 are written, execution may create:

`docs/plans/tools/lace-domain-envelope.py`

Allowed jobs:

- evaluate symbolic row-size/index-width scenarios;
- convert resident byte ceilings to row counts;
- compare logical Index candidate cardinalities;
- calculate window/cache budgets;
- generate target-discriminator tables.

Forbidden:

- choose encoding;
- choose carrier;
- choose target;
- implement append/search/sampling;
- become Core code.

Inputs must be explicit command-line/scenario values.

No hidden “recommended” defaults.

---

## 19. Target re-entry gate

Pass 6 does not automatically choose wasm32 or wasm64.

It decides whether the target court has enough project requirements to reopen.

### READY-FOR-TARGET-COURT

Only if Pass 6 establishes:

- logical supported domain;
- encoding envelope sufficient for capacity analysis;
- carrier class / authoritative-resident relation;
- resident correctness working-set bound;
- any required performance working-set bound;
- persistence/restart mode or an explicit target-independent proof;
- Layer-III window obligations.

Then a target may be tested against those numbers.

### READY-CONDITIONALLY

If a small set of named human rulings remains, and each branch has an explicit target consequence.

### NOT-READY

If target-discriminating requirements are still qualitative/undefined.

Current Pass-5 target remains:

```
TARGET UNDECIDED
```

until this gate says otherwise.

---

## 20. Target-discriminator table

Execution must produce:

| Requirement | Value | wasm32 consequence | wasm64 consequence | Target-discriminating? |
|---|---|---|---|---|

At minimum:

- logical Index width;
- max authoritative rows;
- max authoritative bytes;
- max resident Core bytes;
- max derived Core working-state bytes;
- required contiguous allocation;
- required random-access range;
- durability/recovery;
- performance/latency;
- GPU-visible window;
- WGSL index representation;
- WebNN tensor window.

A row with `OPEN` cannot be used to award either target.

---

## 21. Human-ruling board

Pass 6 must separate:

### derivable from current law

Examples:
- no wrap/reuse;
- one authoritative strand;
- caches may not become authority;
- derived Layer III state is not Core.

### experimentally measurable

Examples:
- row-size candidate costs;
- scan/window memory;
- device capacity/performance later.

### requires human/product ruling

Potentially:
- required supported domain;
- durability lifetime;
- capacity/refusal custody;
- service-level latency;
- first release lifetime/data-retention promise.

If a target decision ultimately depends on a human/product choice, expose that choice directly rather than burying it in architecture.

---

## 22. Falsifiers

### F1 — target drives envelope

A carrier/domain is chosen because it makes wasm32 or wasm64 win.

### F2 — carrier implementation smuggled

Pass 6 picks OPFS/IndexedDB/filesystem/etc. instead of deriving backend-neutral requirements.

### F3 — logical Index = native pointer

Old error revived.

### F4 — whole history assumed resident

No mechanism proof.

### F5 — streamable = performant

A bounded-state correctness proof is presented as a latency proof.

### F6 — cache becomes authority

Index/map/frontier/cache is treated as a second Lace store.

### F7 — holder state counted as Core resident requirement

Behavior-layer mutable state inflates Core target sizing without authority.

### F8 — GPU/NN window counted as authoritative history

Layer III drives Core capacity incorrectly.

### F9 — finite = small

L-M19 finite sample assumed tiny.

### F10 — unbounded “future proofing”

No declared supported domain because “Lace should grow forever.”

Physical implementation must be finite and refuse honestly.

### F11 — exhaustion mutates history

Wrap/reuse/renumber/truncate used to avoid refusal.

### F12 — retry semantics invented

Refused-arrival custody silently filled.

### F13 — durability inferred from recurrence

Behavioral feedback is turned into storage persistence without a lifetime ruling.

### F14 — persistence inferred from Wasm memory

Linear memory mistaken for durable carrier.

### F15 — encoding selected during envelope math

Scenario formula becomes architecture.

### F16 — RM-A state included as accepted working state

Retention rule remains open.

### F17 — performance requirement invented

A hardware benchmark becomes a product SLA.

### F18 — target resealed before re-entry gate

No.

### F19 — implementation gate moves

No.

---

## 23. Station order

```
PRE-FLIGHT
main + stations + Pass-5 requirements/audit
        |
        v
LAW / MANIFEST / BRANCH CONTRACTS
derive semantic domain obligations
        |
        v
MAPS
logical-domain + encoding-envelope formulas
        |
        v
MAPS
mechanism-by-mechanism access / CWS / PWS map
        |
        v
MAPS
backend-neutral carrier contracts
        |
        v
MAPS
capacity / refusal / restart / recovery matrix
        |
        v
BEHAVIORAL SOURCE CHECK
persistence lifetime pressures without backend inference
        |
        v
LAYER III CHECK
GPU / WGSL / WebNN windows separated
        |
        v
OPTIONAL LAB CALCULATOR
only after formulas are fixed
        |
        v
TARGET RE-ENTRY GATE
READY / CONDITIONAL / NOT READY
        |
        v
LAW / PROMPTS / KIT / CLIPBOARDS
ONLY if current active wording contradicts the derived envelope
        |
        v
GLOBAL ASCII LAST
only if envelope materially changes current companion
        |
        v
FINDINGS / INDEX / RELEASE
```

No rustc/Cargo or Pixel target probe is required merely to execute Pass 6.

Those belong **after** the target-discriminating project requirements exist.

---

## 24. Global ASCII rule

Current companion:

- Pass 32 — canonical mechanism catalog;
- Pass 33 — vertical source/Lab/Lace/platform alignment;
- Pass 34 — operational traceability;
- Pass 35 — behavioral assays;
- Pass 36 — desired-behavior mechanism recovery;
- Pass 37 — compilation-target audit / TARGET UNDECIDED.

If Pass 6 materially changes the companion, the next linear overlay is:

**Pass 38 — Source → Lab → Lace Alignment Restart Pass 6 — supported-domain / carrier / working-set envelope**

Recommended shape:

```
ONE AUTHORITATIVE LOGICAL LACE
        |
        v
SUPPORTED LOGICAL DOMAIN
        |
        +--> encoding envelope
        |
        +--> carrier contract
        |       |
        |       +--> persistent authoritative bytes
        |       +--> resident Core window
        |
        +--> derived CWS / PWS
        |
        +--> refusal + recovery
        |
        v
TARGET-DISCRIMINATING NUMBERS
        |
        v
READY / CONDITIONAL / NOT-READY
for wasm32 <-> wasm64 court
```

Pass 38 must not select a concrete backend or compile target unless a separate target court actually earns that conclusion.

---

## 25. Completion board

| Gate | Required |
|---|---|
| G1 | current main/stations pinned |
| G2 | Pass-5 target requirements/audit reread |
| G3 | logical domain separated from native pointer domain |
| G4 | candidate logical Index widths mapped without selecting one prematurely |
| G5 | WORD/POINTER encoding envelope expressed symbolically |
| G6 | every current mechanism assigned an access class |
| G7 | Root/RootTouch correctness working set mapped |
| G8 | Join correctness working set mapped |
| G9 | L-M19 finite grounding working set mapped with cardinality parameter |
| G10 | L-M20 sampling access/working-set obligations mapped |
| G11 | L-M21 search access/working-set obligations mapped |
| G12 | RM-A excluded from accepted working-state budget |
| G13 | correctness vs performance working set separated |
| G14 | backend-neutral carrier contract written |
| G15 | monolithic/windowed/segmented/volatile carrier classes compared |
| G16 | no concrete carrier selected merely to help a target |
| G17 | authoritative carrier vs cache/view/holder state distinguished |
| G18 | finite supported-domain/refusal obligation explicit |
| G19 | no-wrap/no-reuse exhaustion behavior preserved |
| G20 | refused-arrival custody left open unless source/human rules it |
| G21 | volatile vs durable restart obligations mapped |
| G22 | partial-write/recovery obligations named without choosing format |
| G23 | behavioral recurrence kept separate from storage durability |
| G24 | existing numeric performance requirements inventoried |
| G25 | absent performance requirements remain OPEN |
| G26 | WebGPU window kept separate from Core resident domain |
| G27 | WGSL index representation kept separate from native pointer width |
| G28 | WebNN tensor domain kept separate from Core resident domain |
| G29 | optional calculator, if created, contains no hidden default recommendation |
| G30 | target-discriminator table produced |
| G31 | human-ruling board produced |
| G32 | target re-entry verdict produced |
| G33 | target remains UNDECIDED unless a separate earned target conclusion exists |
| G34 | Passes 32–37 preserved |
| G35 | global ASCII changed last only if needed |
| G36 | if changed, global overlay is linear Pass 38 |
| G37 | no RM-A design |
| G38 | no Core/acceptance/implementation gate movement |
| G39 | all claims released |

---

## 26. Expected Pass-6 verdicts

Pass 6 reports **four independent verdicts**.

### Domain specification

- **SUPPORTED DOMAIN BOUNDED**
- **SUPPORTED DOMAIN BOUNDED CONDITIONALLY**
- **SUPPORTED DOMAIN STILL OPEN**

### Carrier contract

- **CARRIER OBLIGATIONS CLOSED / BACKEND OPEN**
- **CARRIER OBLIGATIONS CLOSED WITH RULING DEBT**
- **CARRIER CONTRACT UNDER-SPECIFIED**

### Working-set result

- **CORRECTNESS WORKING SET BOUNDED**
- **CORRECTNESS WORKING SET PARAMETRIC**
- **WHOLE-HISTORY RESIDENCE REQUIRED**
- **WORKING SET STILL UNDER-SPECIFIED**

### Target re-entry

- **READY FOR TARGET COURT**
- **READY CONDITIONALLY**
- **NOT READY FOR TARGET COURT**

Do not collapse these to a wasm32/wasm64 answer.

---

## 27. Stop

Pass 6 stops after:

- logical-domain map;
- symbolic encoding envelope;
- mechanism access/CWS/PWS map;
- backend-neutral carrier contract;
- carrier scenario comparison;
- capacity/refusal/custody map;
- restart/recovery map;
- behavioral-lifetime check;
- Layer-III window separation;
- optional envelope calculator;
- target-discriminator table;
- human-ruling board;
- target re-entry verdict;
- optional Pass 38;
- findings / release.

It does **not** automatically:

- choose wasm32;
- choose wasm64;
- pick OPFS/IndexedDB/filesystem/network storage;
- choose u32/u48/u64 Index;
- choose final row encoding;
- choose allocator;
- create Cargo or `src/`;
- implement sampling/search;
- solve RM-A;
- decide refused-arrival custody without authority;
- accept pointer emission;
- open Pass 7.

The exact Pass-6 question is:

> **What finite, pointable domain and memory/carrier envelope must any correct Lace implementation satisfy before a compilation target can be chosen honestly?**
