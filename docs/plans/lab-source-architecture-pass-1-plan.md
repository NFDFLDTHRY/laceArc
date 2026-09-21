# LAB SOURCE ARCHITECTURE — Pass 1 PLAN

**Status:** PLAN — NOT EXECUTED.  
**Campaign:** Lab Source Architecture.  
**Pass:** 1.  
**Planning station:** maps (Astra-lab-architecture).  
**Current-main census pin before rebuild claim:** `7b38745f6644155d361c0eac1fdaba0a93c85cb6`.  
**Rebuild reason:** the first Pass-1 draft incorrectly inferred “no HCC-A / Coffee Cup / Water clipboards” from the absence of `*-clipboard.md` filenames inside `docs/clipboards/`. The full 685-blob current-main tree disproves that inference. The behavioral-goal source clipboards already exist under `docs/clock/`, with provenance in `docs/clock/passes/`. This rebuilt plan uses actual source roles and existing products rather than directory-name assumptions.  
**Implementation:** none. No `src/`, Cargo/Rust implementation, runtime gate, or pointer-emission acceptance.  
**Acceptance:** unchanged. `docs/pointer-emission.md` remains unaccepted. Exact sampling-derived retention/materialization remains the current Core-adjacent `[GAP]`.

Pass 1 aligns the repository around the **existing clipboard system**. It does not create duplicate HCC-A / Coffee Cup / Water clipboards and it does not choose which candidate machinery is ultimately required.

---

## 0. Human architecture to preserve

```
                 BEHAVIORAL GOALS
        HCC-A · Coffee Cup · Water
                    |
              source clipboards
                    |
                    | possible machinery,
                    | behavioral constraints,
                    | hypotheses
                    v

        BOOKS / PAPERS / RESEARCH
                    |
              source clipboards
                    |
                    | possible machinery,
                    | algorithms, mathematics,
                    | known constraints
                    v

              +-----------+
              | laceArc   |
              |    LAB    |
              +-----------+
                    |
             propose / attack
             reproduce / test
             falsify / retain
                    |
                    v
                  LACE
                    |
          substrate / machine under
              experimental growth
                    |
                    v

          HARDWARE / PLATFORM REALITY
       CPU · GPU · WASM · WebGPU · WebNN
       Rust · no_std · browser · device
                    |
             hardware/spec/reference
                 clipboards
                    |
                    v
       physical execution constraints
```

The critical rule is:

[
oxed{	ext{clipboard evidence may enter the lab; clipboard authority does not automatically enter Lace}}
]

---

## 1. Current-main baseline — what actually exists

### B1 — behavioral-goal clipboard products already exist

The behavioral-goal source analyses are not in `docs/clipboards/`; they live beside the clock/source work they serve:

- `docs/clock/hcc-a-systems-manifest.md`
- `docs/clock/coffee-cup-systems-manifest.md`
- `docs/clock/water-systems-manifest.md`
- `docs/clock/train-h-c-w-systems-manifest.md` — composition/cross-source product
- `docs/clock/hcc-a-mechanisms-plan.md` — retained HCC machinery map plan
- provenance under `docs/clock/passes/`

This is not inference from filenames alone:

- HCC-A explicitly states: **“Form (pass 3 reforge): this clipboard is a data pipeline.”**
- The train comparison has a literal **Clipboard** column pointing to the HCC-A / Cup / Water manifests and states that where a composition disagrees with a named mesh, **the source clipboard wins**.
- Coffee Cup and Water are source-grounded analyses with their own executed pass chains and source attachments.

Therefore Pass 1 MUST NOT create:
- `docs/clipboards/hcc-a-clipboard.md`
- `docs/clipboards/coffee-cup-clipboard.md`
- `docs/clipboards/where-the-water-is-loud-clipboard.md`

Doing so would create duplicate authorities for already-existing clipboard products.

### B2 — research/book clipboards already exist

`docs/clipboards/` currently contains the research source campaigns and their machinery products, including:

- Kauffman;
- Rowlands;
- Xiao–Zhu;
- Petersen–Zech;
- AgentScope.

The shelf already has combinations of:
- `*-clipboard.md`;
- `*-mechanisms.md`;
- `*-ascii-machinery.md`;
- executed pass plans.

These are not merely citation shelves. They already contain possible machinery, equations, algorithms, source limits, false friends, and negative evidence.

### B3 — platform/toolchain clipboards already exist

The same shelf already contains platform/toolchain source campaigns:

- WebAssembly 3.0;
- WebGPU;
- WGSL;
- WebNN;
- rustc target/toolchain;
- Cargo `build-std`.

Their products already record:
- executable mechanisms;
- target/toolchain facts;
- source limits;
- feature and memory constraints;
- what was and was not run;
- what is not Lace semantics.

This is the lower physical/platform face of the laboratory model.

### B4 — the repository already has candidate machinery in all three source families

Behavioral-goal examples:
- HCC-A data pipeline, dual shaft, compiler, ledger, M/E/ISL/B, feedback paths;
- Coffee Cup C1–C5 event/causality stages and recirculation;
- Water proof ledger, river state, FSM, crossing/interface machinery;
- H×C×W composition and mesh registers.

Research examples:
- hitch / topology mechanisms;
- mathematical/approximation machinery;
- language-model/token machinery;
- agent failure/steward machinery.

Platform examples:
- Wasm memory/validation/target mechanisms;
- WebGPU/WGSL execution and shader machinery;
- WebNN host-NN machinery;
- rustc/Cargo target/build machinery.

**The alignment problem is therefore not “create clipboards.” It is “give all existing clipboards one laboratory role model.”**

---

## 2. The role model Pass 1 must establish

### R1 — BEHAVIORAL-GOAL SOURCE

HCC-A / Coffee Cup / Water.

Authority:
- define behavioral target families;
- define source-internal constraints;
- provide hypotheses;
- provide possible machinery.

They do **not**:
- predetermine the mechanism that must realize those behaviors in Lace;
- automatically install H/C/W gears as runtime components;
- override Graphic D;
- close retention/materialization.

Their described machinery is not discarded. It enters the lab as candidate machinery.

### R2 — RESEARCH / BOOK / PAPER SOURCE

Kauffman / Rowlands / Xiao–Zhu / Petersen–Zech / AgentScope and future research sources.

Authority:
- source facts;
- mathematics;
- algorithms;
- mechanisms;
- known limits;
- failure modes.

They do **not**:
- acquire behavioral-goal authority;
- become Core by analogy;
- become irrelevant merely because they are “adjacent.”

Their possible machinery is available to the lab for testing.

### R3 — PLATFORM / HARDWARE / TOOLCHAIN SOURCE

Wasm / WebGPU / WGSL / WebNN / rustc / Cargo / browser / device / future CPU-GPU-platform references.

Authority:
- executable primitives;
- resource ceilings;
- ABI/target/toolchain facts;
- browser/device behavior;
- physical feasibility constraints.

They do **not**:
- define Lace meaning;
- invent pointer retention;
- override the one-store substrate.

A platform mechanism can be required for an implementation **after evidence**, without becoming a Core semantic operator.

### R4 — LACE SUBSTRATE

Authority:
- `docs/graphics/`;
- then `docs/systems-manifest.md`;
- current reconciled human rulings where explicitly recorded.

Lace is the substrate/machine being experimentally grown.

It is not just the passive destination of source mappings.

### R5 — laceArc LAB

The repository is the process that turns source evidence into tested candidate architecture:

```
SOURCE CLIPBOARD
      |
      v
candidate mechanism / constraint / hypothesis
      |
      v
PROPOSE
      |
      v
ATTACK
      |
      v
REPRODUCE
      |
      v
TEST
      |
      +--> FALSIFIED --------> retained negative evidence
      |
      +--> SURVIVES ----------> bounded surviving candidate
                                  |
                                  v
                         further passes / stronger tests
                                  |
                                  v
                         explicit architecture decision
```

A surviving candidate is not automatically accepted Core.

---

## 3. Clipboard is an interface, not a directory

Pass 1 must make this explicit.

The repository currently has at least two physical clipboard locations:

1. `docs/clock/` for the HCC-A / Cup / Water behavioral-goal source clipboards and their composition;
2. `docs/clipboards/` for research, specification, and toolchain source clipboards.

Directory location is not the definition of “clipboard.”

A clipboard is a **source-grounded laboratory interface** that preserves enough of the source to expose:

- source identity;
- pointable source observations;
- possible machinery;
- constraints;
- hypotheses;
- conflicts / false friends;
- evidence state;
- what has actually been tested;
- what remains open.

Pass 1 should align the doors and routing so agents can discover **all** clipboard families without moving existing products merely for taxonomy.

---

## 4. Pass-1 source-flow invariants

### I1 — possible machinery is preserved

No pass may reduce a source to “concept only” if the source actually describes machinery.

HCC-A's pipeline, Coffee Cup's causal stages, Water's proofing/FSM, book algorithms, and platform APIs all remain available as candidate machinery.

### I2 — possible machinery is not required machinery

No source-described mechanism becomes required because:
- the source is a behavioral-goal source;
- the source is mathematically sophisticated;
- the source is executable on the target platform;
- it already has an ASCII machinery map.

### I3 — “Not Core” means no automatic authority jump

It must **not** mean:
- do not test this;
- do not use this outside Core;
- this mechanism is merely decorative;
- this source cannot inform architecture.

### I4 — a falsified candidate stays useful

Negative evidence is a laboratory product.

Do not erase a failed source correspondence simply because a later design wins.

### I5 — physical reality can reject architecture

Hardware/platform constraints may falsify an implementation candidate even when its semantic model is attractive.

### I6 — physical capability cannot manufacture semantics

A GPU kernel, Wasm feature, browser API, or compiler feature does not answer a missing Lace rule by convenience.

### I7 — behavioral success can reject architecture

A mechanism that obeys the substrate but cannot reproduce the target behaviors may still be the wrong machine.

That is exactly why the behavioral-goal sources remain load-bearing.

---

## 5. Pass-1 execution task: census before edits

Before changing current prose, build a source-role census from the **current complete main tree**, not directory names.

For every source product involved in current architecture, record:

| Field | Meaning |
|---|---|
| source | exact source / spec / book / behavioral document |
| role | behavioral-goal / research / platform |
| clipboard product | current source-analysis product |
| machinery product | mechanism/ASCII/composition product if distinct |
| provenance | pass chain / locator chain |
| current use | what the repo currently takes from it |
| forbidden jump | what source authority does not establish |
| lab status | source-only / candidate / tested / falsified / bounded survivor / incorporated |
| stale role wording | exact current line if reconciliation is needed |

Minimum sources for Pass 1 census:
- HCC-A;
- Coffee Cup;
- Water;
- H×C×W composition;
- Kauffman;
- Rowlands;
- Xiao–Zhu;
- Petersen–Zech;
- AgentScope;
- Wasm 3;
- WebGPU;
- WGSL;
- WebNN;
- rustc;
- Cargo build-std.

Do not infer absence from a filename convention.

---

## 6. Station-scoped reconciliation

Pass 1 is one campaign pass with sequential station handoffs.

### 6.1 law

Inspect current entrance wording in:
- `AGENTS.md`;
- `docs/law-why-these-documents.md`;
- `docs/references.md`;
- root `README.md`;
- `docs/README.md`.

Required current model:

```
behavioral-goal authority
        !=
research evidence authority
        !=
platform/physical authority
        !=
Lace substrate authority
```

All four can constrain the lab.

Required correction pattern:
- “not Core” → no automatic Core authority;
- “conceptual reference” → goal source + candidate machinery where the source contains machinery;
- “adjacent” → evidence/candidate source, not automatic operator;
- platform specs → physical/execution sources, not semantics.

No Core mechanics change in this station.

### 6.2 hologram / clock

These are the **existing behavioral-goal clipboards**.

Inspect current qualification blocks in:
- `docs/clock/README.md`;
- `docs/clock/hcc-a-systems-manifest.md`;
- `docs/clock/coffee-cup-systems-manifest.md`;
- `docs/clock/water-systems-manifest.md`;
- `docs/clock/train-h-c-w-systems-manifest.md`;
- `docs/clock/hcc-a-mechanisms-plan.md`.

Do not rewrite their historical pass bodies.

Required current qualification:

```
source-described H/C/W machinery
        |
        v
candidate machinery in laceArc LAB
        |
        +--> may be tested
        +--> may fail
        +--> may partially survive
        X--> not required merely because source described it
```

Specific protection:
- HCC pipeline remains available as candidate machinery;
- Cup C1–C5 remains available as candidate causal machinery;
- Water ledger/river/FSM remains available as candidate proofing/communication machinery;
- H×C×W composition remains a candidate systems composition;
- none is silently reinstated as a required gearbox.

### 6.3 clipboards

Do **not** create duplicate H/C/W files.

Update `docs/clipboards/README.md` so the shelf door acknowledges the distributed clipboard system.

It should route readers to:
- behavioral-goal clipboards in `docs/clock/`;
- research/book clipboards in `docs/clipboards/`;
- platform/toolchain clipboards in `docs/clipboards/`.

Existing research and platform campaign products remain where they are.

Current framing should say:
- clipboard = evidence + possible machinery + constraints;
- mechanism register = candidate machinery, not automatic Core;
- KEEP/FORBID remains an authority fence, not a ban on laboratory use.

### 6.4 prompts

Inspect `docs/prompts/context-pass.md` and other mandatory current entry prompts reached by AGENTS.

The “one story” must say:

```
goal sources tell us what behavior must eventually exist
research may suggest machinery
platform sources tell us what can physically execute
clipboards preserve all three
the lab tests candidate systems
Lace is the experimental substrate
```

Do not rewrite dated receipts.

Also classify and repair any current selector-era line that contradicts Pass 30's active retention/materialization gap, but do not reopen the Sampling campaign itself.

### 6.5 kit

Read current control entrances only.

Pass 1 edits kit only where an active control:
- tells an agent that source machinery is categorically irrelevant;
- treats platform machinery as mere visualization;
- promotes a clipboard directly to Core;
- hides the behavioral-goal test.

Transport copies are not mass-regenerated merely to make prose uniform.

### 6.6 maps — final content station

After all subordinate source-role surfaces are current:

Inspect/update:
- `docs/reason-model-map.md`;
- any current source-role map reached from the context door;
- `docs/systems-manifest-ascii.md` **last**.

The reason model must stop equating “adjacent” with “only steward/reader use” where a source actually provides candidate machinery.

The global ASCII must add the **lab context around Lace**, not insert books/HCC/platform APIs into Contract I.

If changed, record:
- **global ASCII linear Pass 31**;
- **Lab Source Architecture Pass 1** as the campaign identity.

Pass 30's sampling/search overlay remains intact and current.

---

## 7. Target global-system relationship

Pass 1 should converge current repository entrances on this structure:

```
                     BEHAVIORAL-GOAL SOURCES
                  HCC-A · Coffee Cup · Water
                             |
                      existing clipboards
                             |
             goals + constraints + possible machinery
                             |
                             v
+------------------+     +--------------------------+
| RESEARCH SOURCES |---->|                          |
| books · papers   |     |       laceArc LAB        |
| math · algorithms|     |                          |
+--------+---------+     | propose · attack         |
         |               | reproduce · test         |
   existing clipboards   | falsify · retain evidence|
         |               +------------+-------------+
         +----------------------------+
                                      |
                                      v
                              +---------------+
                              |     LACE      |
                              | experimental  |
                              | substrate /   |
                              | growing machine|
                              +-------+-------+
                                      |
                              must physically run on
                                      |
                                      v
                         +-------------------------+
                         | PLATFORM / HARDWARE     |
                         | CPU · GPU · browser     |
                         | Wasm · WebGPU · WebNN   |
                         | rustc · Cargo · no_std  |
                         +------------+------------+
                                      |
                              existing clipboards
                                      |
                           capabilities + constraints
                                      |
                                      +-------> LAB
```

The arrows from all source families terminate at the **lab**, not directly at Core.

---

## 8. Falsifiers

### F1 — duplicate clipboard
Pass 1 creates a second HCC-A, Coffee Cup, or Water clipboard instead of using the existing source product.

### F2 — filename ontology
A source is classified by directory or suffix rather than actual content/provenance.

### F3 — behavioral machinery erased
The source's mechanisms are removed from consideration because the source is called “behavioral-goal.”

### F4 — old gearbox restored
The H/C/W mechanism set is declared required without experiment.

### F5 — research demoted to metaphor
Book/research mechanism products become decorative only.

### F6 — platform demoted to projection
WebGPU/WebNN/Wasm/rustc/Cargo machinery is treated as useful only for Layer III pictures despite implementation relevance.

### F7 — platform promoted to semantics
An executable primitive fills a Lace semantic gap.

### F8 — clipboard becomes acceptance
A clipboard/mechanism/ASCII file is treated as architecture or human acceptance by existence.

### F9 — history flattened
Dated pass text is rewritten to look as if the new role taxonomy always existed.

### F10 — Pass 30 damaged
Sampling-derived discovery/search or the retention/materialization `[GAP]` is reverted.

### F11 — implementation gate moved
Any `src/`, Cargo implementation, or Core branch is opened.

### F12 — lab disappears
The final diagram wires sources directly into Lace without the propose/attack/reproduce/test/falsify layer.

---

## 9. Pass-1 completion board

| Gate | Required |
|---|---|
| G1 | current-main source-role census is complete for all named behavioral, research, and platform sources |
| G2 | existing HCC-A clipboard is recognized and routed; no duplicate created |
| G3 | existing Coffee Cup clipboard is recognized and routed; no duplicate created |
| G4 | existing Water clipboard is recognized and routed; no duplicate created |
| G5 | H×C×W composition is classified as candidate composition, not required gearbox |
| G6 | research mechanism registers are explicit lab candidate inputs |
| G7 | platform/toolchain clipboards are explicit capability/constraint and candidate-machinery inputs |
| G8 | `docs/clipboards/README.md` routes the distributed clipboard system |
| G9 | law entrances distinguish behavioral goals, research evidence, platform reality, Lace substrate, and lab process |
| G10 | context prompt tells the same story |
| G11 | reason model permits testing source machinery without granting Core authority |
| G12 | global ASCII shows the lab around Lace, not new Core components |
| G13 | global ASCII records linear Pass 31 only if the companion actually changes |
| G14 | Pass 30 sampling architecture remains current |
| G15 | retention/materialization remains `[GAP]` |
| G16 | pointer-emission acceptance remains absent |
| G17 | no duplicate source products created |
| G18 | all claims released |

---

## 10. What Pass 1 does not decide

Pass 1 does not decide:
- that HCC's pipeline is the final compiler;
- that Cup C1–C5 must exist as runtime stages;
- that Water's Proof Ledger/FSM must exist as runtime state;
- that H×C×W is the required composition;
- that any research mechanism is required;
- that WebGPU, WebNN, or a particular CPU/GPU path is required;
- the final browser/device architecture;
- the exact retention/materialization rule;
- tokenization/G1;
- pointer-draft acceptance;
- implementation.

It establishes the **experimental court** in which those questions can be answered.

---

## 11. Pass-1 output

Create after execution:

- `docs/plans/lab-source-architecture-pass-1-findings.md`
- updated `docs/plans/README.md`
- global ASCII Pass 31 receipt/delta **only if** `docs/systems-manifest-ascii.md` was actually changed.

The findings must report:
- sources censused;
- existing clipboard products discovered;
- role corrections made;
- candidate machinery preserved;
- stale authority jumps removed;
- falsifiers fired/not fired;
- exact unresolved gaps;
- no-implementation/no-acceptance state.

**STOP after Pass 1.** Later passes may compare candidate machinery across the behavioral, research, and platform clipboard families. Pass 1 only makes that comparison possible without lying about source authority.
