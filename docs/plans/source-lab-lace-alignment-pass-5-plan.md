# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 5 PLAN

**Status:** PLAN — NOT EXECUTED.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 5.  
**Pass name:** **CHECK THE FOUNDATION — is `wasm64-unknown-unknown` actually the right compilation target?**  
**Planning station:** maps · `Astra-alignment-restart`.  
**Pinned current main before planning claim:** `cb4b3a24c4974d7bbeaa87bdd675289acc5b0647`.  
**Planning claim commit:** `7b5afab79f21aad1d72ed81dd970e543b5b10a92`.  
**Implementation:** none. No Core birth, no `src/`, no Cargo project, no target change merely by writing this plan.  
**Human instruction:** the previous “wasm64 seal” is **re-opened for audit** by this Pass-5 request. Until Pass 5 executes and a verdict is accepted, the repository's current wasm64 target language is a **historical/current proposal under review**, not an untouchable premise.

Pass 5 is part of the **building-materials inventory**.

The question is not:

> Does WebAssembly support 64-bit addresses?

The uploaded WebAssembly 3.0 specification already establishes that.

The question is:

> **Does the Lace system we are actually trying to build require the Rust target `wasm64-unknown-unknown`, and do its benefits outweigh its toolchain/runtime/device costs relative to lawful alternatives?**

---

## 0. Newly pinned building material

Human-supplied file:

`WebAssembly.pdf`

SHA-256:

`687e73641a7eec8692273fdf048e1578bf2f379f507c36ec284a39d9e7f70fce`

This exactly matches the hash historically recorded by the repository's `wasm-spec-3` shelf.

Therefore Pass 5 may upgrade the source identity from:

```
gitignored / locally sighted PDF
```

to:

```
human-supplied source material
with matching historical hash
```

without changing any semantic conclusion automatically.

Source facts from this PDF include:

- WebAssembly is a portable, low-level virtual ISA;
- the core specification does **not** define a particular Web/browser embedding;
- integer values include both i32 and i64;
- address types are `i32 | i64`;
- memory/table types carry an address type;
- the 64-bit address-space feature permits i64-addressed memories and tables;
- current core execution semantics are single-threaded.

These facts establish **capability**.

They do not select the project target.

---

## 1. Pass-5 thesis

[
oxed{
	ext{Logical Lace address width} 
eq 	ext{Wasm linear-memory pointer width}
}
]

[
oxed{
	ext{Wasm capability} 
eq 	ext{Rust target suitability}
}
]

[
oxed{
	ext{Rust target suitability} 
eq 	ext{browser/device viability}
}
]

[
oxed{
	ext{The target must be derived from the required implementation domain, not inherited from an old seal.}
}
]

---

## 2. The five widths that must not be conflated

Pass 5 must explicitly separate:

### W1 — Lace logical Index width

How many distinct retained positions must one supported implementation be able to name?

Current branch contracts explicitly leave index width unresolved.

A logical index may be represented by a fixed-width integer even if the host pointer width is different.

### W2 — Lace supported domain

How many retained entries/bytes does the implementation claim to support before it must refuse further growth?

Every finite implementation must state this.

The source does not promise physically infinite storage.

### W3 — resident working-set address width

How much Lace state must be simultaneously addressable inside one Wasm linear memory?

This is the width most directly affected by memory32 vs memory64.

It may be far smaller than total persistent Lace history if the carrier is windowed/segmented.

### W4 — Rust ABI pointer / `usize` width

What width does the selected Rust target use for pointers and `usize`?

The current rust-target shelf says `wasm64-unknown-unknown` makes pointers/`usize` 8 bytes.

That is a toolchain/ABI consequence, not a Lace law.

### W5 — embedder/device maximum

How much i64-addressed Wasm memory can the actual browser/device instantiate/grow/use at acceptable cost?

The core spec deliberately does not define this ceiling.

This belongs to the Web embedding + actual device.

---

## 3. Existing assumption to re-open

Current shelf language says:

```
Lace Rust #![no_std]
      ->
wasm64-unknown-unknown
```

and historically calls the target “sealed.”

Pass 5 reclassifies that for the duration of this audit:

```
CURRENT TARGET ASSUMPTION:
    wasm64-unknown-unknown

STATUS:
    UNDER REVIEW

NOT:
    already wrong

NOT:
    already correct
```

Do not mass-rewrite historical receipts before the verdict.

---

## 4. Decision candidates

Pass 5 must compare **implementation scenarios**, not merely target names.

### T-A — wasm64 / monolithic memory64

```
Rust: wasm64-unknown-unknown
usize/pointers: 64-bit
Wasm memory: i64-addressed
authoritative/working strand: one large linear-memory domain
```

Question:
- is a >4 GiB simultaneously resident linear-memory domain actually required?

### T-B — wasm64 / windowed or external carrier

```
Rust: wasm64-unknown-unknown
logical indices: 64-bit or declared
persistent Lace: external/windowed
linear memory: bounded working set
```

Question:
- if the working set is already comfortably below 4 GiB, what does 64-bit pointer ABI still buy?

### T-C — wasm32 / 32-bit working set + wide logical indices

```
Rust: wasm32-unknown-unknown
Wasm memory: i32-addressed
logical Lace Index: explicit u64 / pair / other admitted representation
persistent Lace: potentially larger than resident memory
working set: <= memory32 supported domain
```

Question:
- can Lace preserve its logical supported domain without requiring every retained position to be a native pointer?

The uploaded Wasm spec includes i64 **values** independently of i64 memory addressing, so “we need 64-bit logical integers” must not be treated as sufficient proof that the Rust pointer ABI must be 64-bit.

### T-D — wasm32 target + Memory64 feature

**UNESTABLISHED / PROBE-ONLY.**

Do not assume Rust/LLVM can lawfully or usefully emit an i64-addressed linear memory while retaining a wasm32 pointer ABI.

Execution must determine:
- whether the built-in target/toolchain permits it;
- what `usize`/pointer semantics result;
- whether LLVM/core code generation remains coherent.

If this is not a supported target mode, strike it.

### T-E — custom target

Last-resort comparison only.

Current rustc materials warn custom target JSON is unstable and compiler-version sensitive.

Pass 5 should not choose a custom target unless both built-in target families fail a stated requirement.

### T-F — target not yet selectable

A legitimate verdict if the carrier/working-set requirement is still too under-specified.

The pass must be willing to conclude:

```
the target question is premature
```

rather than forcing a choice.

---

## 5. Requirements must be derived from Lace first

Before comparing targets, execution must build:

`docs/plans/source-lab-lace-alignment-pass-5-target-requirements.md`

Required rows:

| Requirement | Source / authority | Required value | Why | Does target choice affect it? |
|---|---|---|---|---|

At minimum:

### RQ1 — logical Index cardinality

Source:
- branch contracts: index width currently unselected;
- indices permanent; no wrap/reuse.

Question:
- minimum supported position count for the first admitted implementation?

If no human/domain requirement exists:
- write `OPEN`.

### RQ2 — entry-size range

Need an upper/lower representation estimate for:
- WORD section;
- POINTER section;
- metadata required by the currently admitted substrate.

Do not invent a final encoding.

Use symbolic size formulas where representation remains open.

### RQ3 — total persistent Lace domain

Does the first implementation require:
- entire Lace resident in linear memory;
- persistent external carrier;
- segmented/windowed history;
- another mechanism?

If unresolved:
- target conclusion may remain conditional.

### RQ4 — resident working set

What must be addressable simultaneously to execute:
- append;
- L-M19 grounding;
- L-M20 sampling;
- L-M21 search;
- required views?

A full-history read must not be assumed merely because an older diagram drew one.

### RQ5 — restart / durability

Linear Wasm memory does not define browser persistence.

If the authoritative history must survive reload:
- the target width cannot be selected as though linear memory were automatically the carrier.

### RQ6 — concurrency

Do current required behaviors need:
- one writer only;
- readers;
- shared linear memory;
- Wasm threads?

The uploaded core spec currently models single-threaded configurations.

Threading/SharedArrayBuffer capability is a separate environment question.

### RQ7 — target-environment population

Which environments must the first supported release run on?

Current project emphasis:
- Pixel 9a / Chrome / installed WebApp path.

Do not silently optimize for desktop Wasmtime if the required deployment is Chrome Android.

---

## 6. WebAssembly 3.0 source court

Execution must create/update the Wasm shelf only after rereading the newly supplied PDF.

### Established by the core spec

#### S-W1 — i64 value capability

The language has i64 numeric values.

This means a 32-bit memory-address target can still perform 64-bit arithmetic/data operations in principle.

It does **not** establish Rust ABI behavior.

#### S-W2 — address types

`addrtype ::= i32 | i64`.

#### S-W3 — memory type

`memtype ::= addrtype limits page`.

Therefore address width is a memory-type property.

#### S-W4 — binary evidence

The binary limits grammar distinguishes:
- i32 limits: flags `0x00` / `0x01`;
- i64 limits: flags `0x04` / `0x05`.

An actual artifact can therefore be checked for memory64 structurally.

#### S-W5 — 64-bit address-space history

Spec 3.0 records the addition of i64 address types for memories/tables and address-type-dependent memory/table operands.

#### S-W6 — embedding boundary

Core Wasm does not define:
- Web JS API maximums;
- Chrome memory limits;
- device virtual-address reservation;
- installed-PWA behavior.

These require separate material.

#### S-W7 — current core threading model

Current core configuration semantics are single-threaded.

Do not infer browser shared-memory availability from the core spec.

---

## 7. Toolchain court — Rust target facts

Re-read current:
- `docs/clipboards/rust-target-clipboard.md`;
- locator carry;
- rustc source material;
- Cargo build-std clipboard.

Pass 5 must compare at least:

| Question | wasm64 | wasm32 |
|---|---|---|
| Rust support tier | ? | ? |
| stable/nightly | ? | ? |
| prebuilt core | ? | ? |
| build-std needed | ? | ? |
| pointer/`usize` width | ? | ? |
| default/required target features | ? | ? |
| panic behavior | ? | ? |
| C/FFI consequence | ? | ? |
| linker availability | ? | ? |
| expected memory address type | ? | ? |
| reproducibility burden | ? | ? |
| target-specific LLVM risk | ? | ? |

Fill only from pointable toolchain materials or executed receipts.

No folklore.

---

## 8. Carrier/target coupling audit

This is one of Pass 5's most important jobs.

Create a scenario table:

| Carrier model | Total history | Resident set | Does wasm64 materially help? | Why |
|---|---:|---:|---|---|

At minimum evaluate:

### C-A — all-in-linear-memory

If the authoritative strand must remain entirely resident and exceed 4 GiB:
- wasm64 may be necessary/strongly justified.

But this architecture itself must be justified.

### C-B — external authoritative log + memory window

If authoritative history is durable outside Wasm linear memory and Core works on bounded windows:
- total Lace size may exceed memory32 without requiring 64-bit pointers.

Logical indices must still remain non-wrapping.

### C-C — segmented linear-memory representation

Assess only if current Wasm/Rust target can support it lawfully.

Do not invent multi-memory use as accepted architecture merely because Spec 3.0 supports multiple memories.

### C-D — hybrid working state

Small resident append/search/sampling window + persistent history + derived indexes/views.

Again, candidate architecture only.

The target verdict must state which carrier premise it depends on.

---

## 9. Pointer-size cost model

Do not compare only maximum capacity.

For each target, model the cost of pointer-width inflation.

Required symbolic accounting:

```
extra_wasm64_bytes
  =
4 * N_pointer_sized_fields
+ alignment effects
+ wider index/pointer temporaries
+ any compiler/runtime consequences
```

Where concrete structures are not yet defined:
- use symbolic counts;
- do not invent measured totals.

Execution may build a **non-Core probe struct layout** only if it clearly labels the result as toolchain evidence, not implementation selection.

Questions:
- Does a 64-bit pointer ABI double important working-set metadata?
- Does that reduce effective cache/memory capacity enough to matter on the target device?
- Are most Lace references logical indices rather than host pointers?

---

## 10. Required build probes

Pass 5 should prepare and, where the environment permits, execute disposable **Lab target probes**, not Core code.

No GitHub Actions.

Suggested shelf:

`docs/plans/tools/target-audit/`

No `src/`.

### P-BUILD64

Minimal `#![no_std]` target probe:
- build for `wasm64-unknown-unknown`;
- pinned toolchain receipt;
- exact build-std recipe;
- record linker;
- inspect imports/exports/features;
- structurally verify i64 memory type.

### P-BUILD32

Same logic:
- build for `wasm32-unknown-unknown`;
- same source algorithm;
- same optimization/panic assumptions where possible;
- inspect artifact.

### P-ABI

For both:
- report `size_of::<usize>()`;
- pointer width cfg;
- selected target features;
- target spec receipt.

### P-I64-LOGICAL

On wasm32:
- demonstrate 64-bit logical index arithmetic independent of native pointer width;
- no claim that an arbitrary u64 is dereferenceable.

### P-MEM64-ON-W32

Only as an exploratory probe:
- determine whether the toolchain permits memory64 under wasm32;
- if unsupported or incoherent, close T-D as unavailable.

No custom target may be introduced merely to force this probe to pass.

---

## 11. Actual device/browser probes

The target cannot be decided by compiler inspection alone.

Pass 5 inherits but **re-opens**:

### P-64a — instantiate

Can the actual Pixel/Chrome installed-app path instantiate an i64-addressed memory module?

### P-64b — usable capacity

How far can memory64 actually grow?

Record:
- start size;
- every grow step;
- last successful size;
- exact failure;
- browser/app mode;
- device memory pressure context.

This is the central capacity observation.

### P-32b — matching memory32 capacity

Run an equivalent memory32 growth probe.

### P-64c — address-cost benchmark

Same deterministic memory kernel compiled for 32- and 64-bit targets.

Required:
- multiple sizes;
- warmup;
- repeated runs;
- median / spread;
- same browser/device;
- no GPU involvement.

Measure:
- sequential writes;
- sequential reads;
- random/windowed access if relevant to Lace;
- append-like pattern.

### P-INST

Installed WebApp path with each target.

### P-RELOAD

If persistence/carrier is part of target reasoning:
- prove separately;
- Wasm linear memory reload survival must not be assumed.

---

## 12. Missing primary material — explicit blockers

The uploaded **core** spec cannot settle Web embedding limits.

Before a definitive target verdict that depends on browser memory ceilings, Pass 5 should require:

### M-A — WebAssembly JavaScript Interface specification

Need primary source for:
- `WebAssembly.Memory`;
- Memory64 JS representation;
- maximum memory constraints;
- BigInt/i64 boundary where relevant.

Historical A3 remains unresolved unless that document has since been staked.

### M-B — Chrome / V8 Memory64 support source

A current primary browser/engine source if the project claims family support beyond the one tested device.

Device execution can establish the user's Pixel; it does not establish every supported Chrome/Android environment.

### M-C — current rustc target source

The existing rust-target clipboard is already present, but execution must verify its date/version is compatible with the toolchain actually probed.

If the source is stale:
- record the mismatch;
- do not silently update target facts from model knowledge.

---

## 13. Decision matrix

Execution must produce:

`docs/plans/source-lab-lace-alignment-pass-5-target-audit.md`

Required matrix:

| Criterion | Weight/status | wasm64 | wasm32 | conditional/hybrid | Evidence |
|---|---|---|---|---|---|

No numeric score is required unless every criterion has a meaningful quantitative scale.

Required criteria:

### D1 — semantic fit
Does target width constrain Lace semantics?

Expected default:
- target must not define semantics.

### D2 — logical index support
Can required logical Index range be represented safely?

### D3 — resident working-set capacity
Can required working set fit?

### D4 — total supported Lace domain
Depends on carrier + logical indexing, not just linear memory.

### D5 — browser/device availability
Actual target machine.

### D6 — performance
Measured target device, not blog-only.

### D7 — memory overhead
Pointer-size/layout cost.

### D8 — toolchain maturity
Tier, nightly, LLVM risk, CI/testing.

### D9 — reproducibility
Build recipe + pinned components.

### D10 — installation/runtime path
Installed WebApp evidence.

### D11 — feature surface
Does target require more Wasm features than needed?

### D12 — future headroom
What problem does the extra width solve, and when?

### D13 — complexity debt
How much special toolchain/probe/maintenance work does the target create?

### D14 — migration cost
If starting wasm32 and later moving wasm64, what changes?
If starting wasm64 and later moving wasm32, what changes?

Do not assume migration is trivial.

---

## 14. Decision rules

### wasm64 is CORRECT only if

all relevant conditions survive:

1. a real project requirement benefits materially from i64-addressed linear memory or 64-bit pointer ABI;
2. that requirement cannot be satisfied more cleanly by wide logical indices + bounded working memory/carrier;
3. the selected Rust toolchain builds reproducibly enough for project policy;
4. actual Chrome/Pixel execution supports the needed module;
5. practical memory capacity exceeds the wasm32-supported requirement by enough to matter;
6. measured performance/memory overhead is acceptable;
7. the target does not force unnecessary platform/toolchain debt;
8. the target's required feature set is supported by the actual deployment environment.

### wasm64 is OVER-SPECIFIED if

- the required resident working set fits memory32;
- total history can lawfully live in a separate/windowed carrier;
- logical indices can remain wide independently;
- and wasm64 adds material toolchain/performance/memory cost without needed capability.

### wasm64 is CONDITIONALLY CORRECT if

its value depends on an unresolved carrier/domain requirement.

### wasm64 is WRONG if

it fails a required target environment or imposes unacceptable cost while a supported alternative satisfies all requirements.

### target remains UNDECIDED if

the project has not specified the carrier/working-set/domain requirement sufficiently to choose honestly.

---

## 15. Particular assumptions Pass 5 must attack

### A-1
“Lace indices are forever, therefore pointers must be 64-bit.”

**Attack:** logical index != native pointer.

### A-2
“Wasm 3.0 has Memory64, therefore Rust wasm64 is the natural target.”

**Attack:** ISA capability != target suitability.

### A-3
“More address space is automatically better.”

**Attack:** wider pointers, bounds costs, Tier-3/nightly/toolchain debt.

### A-4
“4 GiB memory32 means Lace can only ever hold 4 GiB total.”

**Attack:** only if all authoritative history must live in one linear memory.

### A-5
“wasm64's theoretical 64-bit address space is the project domain.”

**Attack:** embedder/device cap binds first.

### A-6
“Chrome ships Memory64, therefore the Pixel deployment is proven.”

**Attack:** product support != tested installed-app behavior/capacity.

### A-7
“wasm32 is mature, therefore it is sufficient.”

**Attack:** must still satisfy actual supported-domain and resident-working-set requirements.

### A-8
“Target selection can be made before carrier selection.”

**Attack:** may be false; Pass 5 must determine the dependency direction.

---

## 16. Relation to current building-materials inventory

Pass 5 classifies target materials into four buckets.

### CORE WASM MATERIAL

- uploaded WebAssembly Spec 3.0;
- binary format / address types / memory types / execution semantics.

Answers:
- what the language permits.

### COMPILER MATERIAL

- rustc target clipboard;
- rustc target spec;
- LLVM feature assumptions;
- Cargo build-std material.

Answers:
- what Rust emits and what it costs to build.

### EMBEDDER MATERIAL

- WebAssembly JavaScript Interface;
- browser/engine Memory64 support;
- install/environment constraints.

Answers:
- what the Web environment exposes.

### DEVICE EVIDENCE

- Pixel 9a probes;
- installed app;
- actual capacity/performance.

Answers:
- what the target machine actually does.

No bucket may impersonate another.

---

## 17. Station order

```
PRE-FLIGHT
main + stations + source PDF hash
        |
        v
CLIPBOARDS
Wasm 3.0 source re-admission
rustc target
Cargo build-std
        |
        v
MAPS
derive Lace target requirements
        |
        v
MAPS / LAB
scenario matrix
logical-index vs pointer-width proof obligations
        |
        v
TARGET PROBES
wasm64 build
wasm32 build
artifact inspection
        |
        v
DEVICE PROBES
memory64 / memory32 capacity + cost
        |
        v
EMBEDDER SOURCE
JS API / browser source gaps
        |
        v
MAPS
decision matrix + verdict
        |
        v
CLIPBOARDS / LAW / PROMPTS / KIT
ONLY if verdict changes current target wording
        |
        v
GLOBAL ASCII LAST
if target state changes or target audit needs a companion overlay
        |
        v
FINDINGS / INDEX / RELEASE
```

No mechanical station churn.

---

## 18. Global ASCII rule

Current companion:
- Pass 32 mechanism catalog;
- Pass 33 vertical alignment;
- Pass 34 traceability;
- Pass 35 behavioral assays;
- Pass 36 desired-behavior mechanisms.

If Pass 5 materially changes the companion:

**Pass 37 — Source → Lab → Lace Alignment Restart Pass 5 — compilation-target audit**

It must show:

```
LACE IMPLEMENTATION REQUIREMENTS
        |
        v
logical domain / resident working set / carrier
        |
        v
TARGET CANDIDATES
wasm64 | wasm32 | conditional
        |
        v
toolchain + embedder + device evidence
        |
        v
TARGET VERDICT
```

Do not put target width into Contract I semantics.

---

## 19. Falsifiers

### F1 — old seal decides outcome
The previous wasm64 declaration is treated as proof.

### F2 — wasm capability = Rust suitability
Spec support alone decides target.

### F3 — logical index = native pointer
64-bit logical address requirement is converted directly to wasm64.

### F4 — linear memory = authoritative total storage
Carrier question silently assumed.

### F5 — theoretical address space = actual device capacity
64-bit address grammar is treated as usable 2^64 memory.

### F6 — product shipping = device proof
Chrome release fact substitutes for Pixel probe.

### F7 — secondary benchmark = local performance
SpiderMonkey/other measurements substitute for Pixel benchmark.

### F8 — wasm32 dismissed without requirements test
Alternative loses by name rather than evidence.

### F9 — wasm64 dismissed because Tier 3
Toolchain maturity cost is real but not semantic disqualification if needed capability survives.

### F10 — custom target smuggling
A custom JSON is introduced to manufacture a preferred answer.

### F11 — carrier selected to save target
Pass 5 chooses OPFS/segmentation solely to make wasm32 win.

### F12 — target selected to save carrier
Pass 5 chooses wasm64 solely to avoid a separate carrier question.

### F13 — unrun artifact claims
Target recipe or module feature is reported as verified without build/inspection.

### F14 — device limits guessed
Memory ceiling inferred instead of measured/primary-sourced.

### F15 — toolchain source stale without qualification
Old rustc page treated as current toolchain truth.

### F16 — target verdict becomes Core law
Compilation target is inserted into Lace semantics.

### F17 — target audit opens implementation gate
No.

---

## 20. Completion board

| Gate | Required |
|---|---|
| G1 | current main + stations pinned |
| G2 | uploaded WebAssembly 3.0 hash verified |
| G3 | Wasm core capability vs embedding boundary mapped |
| G4 | Lace logical Index requirement separated from pointer width |
| G5 | supported domain requirement stated or explicitly OPEN |
| G6 | resident working-set requirement stated or explicitly OPEN |
| G7 | carrier dependency made explicit |
| G8 | rustc wasm64 facts re-verified |
| G9 | rustc wasm32 comparison facts re-verified |
| G10 | Cargo build-std consequences included |
| G11 | T-A through T-F scenarios evaluated |
| G12 | wasm64 build probe run or honestly NOT-RUN |
| G13 | wasm32 build probe run or honestly NOT-RUN |
| G14 | actual artifact memory type inspected |
| G15 | pointer/`usize` width separated from logical index width |
| G16 | device Memory64 instantiation checked or honestly NOT-RUN |
| G17 | device capacity comparison checked or honestly NOT-RUN |
| G18 | local performance comparison checked or honestly NOT-RUN |
| G19 | JS embedding primary-source gap closed or explicitly blocks dependent claim |
| G20 | target decision matrix produced |
| G21 | no custom target chosen without necessity |
| G22 | no carrier architecture selected merely to force target answer |
| G23 | no Core semantics changed |
| G24 | current target wording changed only after verdict |
| G25 | Pass 32–36 preserved |
| G26 | global ASCII changed last only if needed |
| G27 | if changed, linear Pass 37 |
| G28 | all claims released |

---

## 21. Expected Pass-5 verdict

Exactly one primary verdict:

### TARGET CONFIRMED — WASM64

`wasm64-unknown-unknown` is justified by actual Lace requirements and target evidence.

### TARGET CONDITIONALLY WASM64

wasm64 is correct only under named carrier/domain conditions still awaiting acceptance/evidence.

### TARGET SHOULD BE WASM32

wasm32 satisfies all current requirements and wasm64 is unnecessary cost.

### TARGET CONDITIONALLY WASM32

wasm32 is sufficient only under named bounded-working-set/carrier conditions.

### TARGET UNDECIDED

The build-material inventory is not yet sufficient to choose without pretending.

A verdict must include:

```
WHY THIS TARGET
WHAT REQUIREMENT IT SATISFIES
WHAT COST IT ACCEPTS
WHAT DEVICE EVIDENCE SUPPORTS IT
WHAT WOULD FALSIFY IT
WHAT WOULD TRIGGER RE-TARGETING
```

---

## 22. Stop

Pass 5 stops after:
- source/material inventory;
- target requirements;
- target scenario comparison;
- build/device/embedder evidence register;
- target verdict;
- current-target wording reconciliation only if warranted;
- optional Pass 37;
- findings/release.

It does **not** automatically:
- implement Core;
- select the authoritative carrier;
- create a custom target;
- choose a memory allocator;
- accept pointer emission;
- make WebGPU/WebNN part of Core;
- open Pass 6.

The exact question is:

> **Given what Lace actually needs, what Rust/Wasm compilation target is the smallest, most supportable target that satisfies those needs on the real deployment environment?**
