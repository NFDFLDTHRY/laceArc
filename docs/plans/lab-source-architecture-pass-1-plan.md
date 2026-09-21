# LAB SOURCE ARCHITECTURE — Pass 1 PLAN

**Status:** PLAN — NOT EXECUTED.  
**Campaign:** Lab Source Architecture.  
**Pass:** 1.  
**Planning station:** maps (Astra-lab-architecture).  
**Pinned main before planning claim:** `c707e013d7c717a2c8b3032199ad938ec77ae8a8`.  
**Human architecture:** behavioral goals → source clipboards; books/research → source clipboards; laceArc lab → propose/attack/reproduce/test/falsify/retain; Lace → platform/hardware reality; platform/hardware references → clipboards → physical execution constraints.  
**Implementation:** none. No `src/`, Cargo, Rust implementation, runtime gate, or pointer-emission acceptance follows.  
**Acceptance:** unchanged. `docs/pointer-emission.md` remains unaccepted. Exact sampling-derived retention/materialization remains the active Core-adjacent `[GAP]`.

Pass 1 is a **repository source-role / clipboard architecture alignment pass**. It does not choose the machinery that makes Lace satisfy the behavioral goals. It establishes the laboratory in which such machinery can be proposed, attacked, tested, falsified, and retained as evidence.

---

## 0. Human model to preserve

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

Interpretation:

1. **HCC-A / Coffee Cup / Water are behavioral-goal sources.**
   - They describe target behavior families.
   - Their own described machinery is also valid **candidate machinery** for the lab.
   - Candidate machinery is not automatically required architecture.
   - What actually enables the behaviors remains an experimental question.

2. **Books / papers / research are candidate-machinery and constraint sources.**
   - Their algorithms, mathematics, mechanisms, failure modes, and known bounds may become lab hypotheses.
   - “Adjacent” does not mean “only metaphor.”
   - Citation does not promote a mechanism into Lace.

3. **laceArc is the laboratory.**
   - The lab owns the propose → attack → reproduce → test → falsify → retain loop.
   - “Retain” here means retain the evidence/candidate in the laboratory record, not silently admit it into Core.
   - A failed candidate is useful evidence.

4. **Lace is the experimental substrate/machine being grown.**
   - `docs/graphics/` then `docs/systems-manifest.md` remain the source of record for Lace itself.
   - Behavioral-goal sources do not overwrite Lace storage law.
   - Platform references do not overwrite Lace semantics.

5. **Hardware / platform reality is below Lace.**
   - CPU/GPU/device/browser/toolchain/spec reality constrains what can actually execute.
   - Wasm/WebGPU/WebNN/WGSL/rustc/Cargo and future CPU/GPU/device references are not merely “Shadow decoration.”
   - Their clipboards may expose useful implementation machinery and hard limits.
   - Platform capability never supplies missing Lace semantics merely because it is executable.

---

## 1. Baseline measured before this plan

### B1 — clipboard shelf

Current `docs/clipboards/` directory contains **99 files**.

The current clipboard README declares **ten reference campaigns**:
- AgentScope;
- Kauffman;
- Petersen–Zech;
- Rowlands;
- Xiao–Zhu;
- WebAssembly 3.0;
- WebGPU;
- WebNN;
- WGSL;
- rustc/toolchain shelf, with Cargo A4 attached to it.

The shelf already contains:
- research/book clipboards;
- mechanism registers;
- ASCII machinery products;
- web/platform/spec clipboards;
- rustc/Cargo toolchain source products.

### B2 — missing behavioral-goal clipboard surface

There are currently **zero files in `docs/clipboards/` whose names identify HCC-A, Coffee Cup, or Where the Water Is Loud**.

Those sources exist in law/history/clock analysis, but they do not yet participate in the same clipboard interface as the research and platform sources.

This is Pass 1's sharpest structural mismatch.

### B3 — current clipboard contract is too narrow for the lab

`docs/clipboards/README.md` currently opens with:

> KEEP/FORBID mappings of adjacent work onto the shoe. Not Core. Not an emitter. Not a sixth graphic.

That fence remains useful, but the common interface is incomplete if it only answers **may import / may not import**.

The lab also needs the clipboard to carry:
- observed source facts;
- behavioral goals;
- possible machinery;
- algorithms / mathematics;
- physical or technical constraints;
- hypotheses;
- falsifiers;
- candidate Lace correspondences;
- negative results;
- evidence state.

### B4 — current top-level law is closer, but not fully propagated

Current `AGENTS.md`, `docs/law-why-these-documents.md`, and `docs/systems-manifest.md` now say:
- laceArc is a lab;
- HCC-A / Coffee Cup / Water are behavioral-goal sources;
- enabling machinery is not predetermined.

But the clipboard shelf, reference catalog, context prompt, clock entrances, and global systems companion still carry older source-role assumptions in places.

### B5 — current global companion

`docs/systems-manifest-ascii.md` currently records linear Pass 30 as the sampling/search reconciliation overlay.

It correctly keeps HCC-A / Coffee Cup / Water outside required holder machinery, but it does **not yet draw the complete lab source architecture**:
- behavioral goals → clipboards;
- research → clipboards;
- clipboards → lab candidate machinery;
- lab → experimental Lace;
- Lace → platform/hardware reality;
- platform reference clipboards → execution constraints.

If Pass 1 execution changes the companion, record that change as **linear global-ASCII Pass 31**, while this campaign remains **Lab Source Architecture Pass 1**. Do not conflate the numbering.

---

## 2. Pass-1 thesis

[
oxed{
	ext{Every external source enters the lab through a clipboard.}
}
]

[
oxed{
	ext{A clipboard preserves source evidence and exposes candidate machinery without granting architecture.}
}
]

[
oxed{
	ext{Behavioral-goal, research, and platform sources have different authority but share the same evidentiary interface.}
}
]

[
oxed{
	ext{The lab, not citation, determines what machinery survives.}
}
]

---

## 3. Common clipboard contract to establish

Pass 1 should create one explicit common contract, proposed path:

`docs/clipboards/source-clipboard-contract.md`

Minimum fields/sections:

### C1 — source identity
- exact title;
- source family;
- version/date/revision;
- hash or stable identity when available;
- local/source locator policy;
- source-access status.

### C2 — source role
Exactly one primary role, with optional secondary roles:

- **BEHAVIORAL-GOAL**
- **RESEARCH / BOOK / PAPER**
- **PLATFORM / HARDWARE / TOOLCHAIN**

A source may contribute multiple kinds of evidence; role describes why the lab holds it, not what every sentence means.

### C3 — observed source claims
Pointable statements with evidence state:
- `SOURCE`;
- `OBSERVED`;
- `INFERENCE`;
- `PROPOSAL`;
- `GAP`;
- `CONFLICT`.

### C4 — possible machinery
Mechanisms the source actually describes or reasonably motivates.

For each:
- source locator;
- what it does;
- what it requires;
- what it could solve;
- what would falsify its usefulness to Lace;
- current lab disposition.

**No possible-machinery row becomes required architecture by appearing here.**

### C5 — constraints / goals
Depending on source family:
- behavioral constraint;
- mathematical constraint;
- algorithmic constraint;
- physical/platform constraint;
- known failure mode.

### C6 — Lace correspondence
One of:
- `UNMAPPED`;
- `CANDIDATE`;
- `TESTING`;
- `FALSIFIED`;
- `SURVIVES-BOUNDED-TEST`;
- `INCORPORATED-BY-EXPLICIT-AUTHORITY`.

Do not use “retained” alone where it could be mistaken for a retained POINTER or admitted Core mechanism.

### C7 — lab tests / falsifiers
Every candidate mechanism must have a way to lose.

### C8 — forbidden authority jumps
Clipboard presence does not establish:
- Core row type;
- pointer emission / retention;
- runtime dependency;
- behavioral success;
- human acceptance;
- proof outside the recorded scope.

---

## 4. Behavioral-goal clipboard intake

Pass 1 execution creates three first-class clipboard files:

- `docs/clipboards/hcc-a-clipboard.md`
- `docs/clipboards/coffee-cup-clipboard.md`
- `docs/clipboards/where-the-water-is-loud-clipboard.md`

These are **not** to be empty “goal only” stubs.

Each must distinguish at least:

1. **behavioral goals / observable target behavior**;
2. **possible machinery described by the source**;
3. **behavioral constraints / failure conditions**;
4. **hypotheses for the lab**;
5. **known mismatches with current Lace**;
6. **unresolved enabling systems**;
7. **source locators and evidence state**.

If the exact staked source text is unavailable to an executing agent, that agent must **not reconstruct it from memory**. It may establish identity/role and carry already pointable repository locators, then mark deeper extraction `NOT_READ` / `[GAP]`.

Pass 1 does **not** require full mechanism registers or six-pass campaigns for these three sources. Those may be opened later after the common clipboard contract exists.

---

## 5. Research / book clipboard alignment

Existing research shelves are not to be demoted or rewritten wholesale.

Pass 1 changes their **current framing**, not historical receipts:

```
source
  |
  v
clipboard
  |  | +--> observations / mathematics / constraints
  |
  +----> possible machinery / algorithms / hypotheses
              |
              v
           laceArc LAB
              |
              +--> test / falsify / retain evidence
              X--> automatic Core import
```

Required current-reading correction:

- KEEP/FORBID remains a fence.
- “Not Core” remains true.
- “Adjacent” must not be read as “mechanically irrelevant.”
- Mechanism registers are explicitly **candidate-machinery inputs to the lab**.
- Existing negative-source findings remain valid negative evidence.
- Historical passes remain historical.

No research source gains behavioral-goal authority merely because its machinery is useful.

---

## 6. Platform / hardware clipboard alignment

Group current and future platform sources under:

**PLATFORM / HARDWARE REALITY**

Current examples:
- rustc;
- Cargo / build-std;
- WebAssembly;
- WebGPU;
- WGSL;
- WebNN;
- browser/Chrome behavior;
- device/runtime observations;
- future CPU/GPU/device manuals or specifications.

Their clipboard relationship:

```
     PLATFORM / HARDWARE SOURCE
                |
            clipboard
                |
       +--------+---------+
       |                  |
 executable machinery   hard limits
       |                  |
       +--------+---------+
                |
                v
      PHYSICAL EXECUTION CONSTRAINTS
                |
                v
             laceArc LAB
                |
        candidate implementation
                |
                v
               LACE
```

Rules:
- capability may enable an experiment;
- absence/limit may kill a candidate;
- a platform API does not define Lace semantics;
- “not Core” does not mean “not useful machinery”;
- WebNN/WebGPU/Wasm/rustc may be implementation machinery outside Core if evidence and later authorization support that use;
- no platform source fills retention/materialization by convenience.

---

## 7. Repository surfaces to reconcile during execution

### Station: law

Inspect and, only where required for current-role alignment, update:
- `AGENTS.md`
- `docs/law-why-these-documents.md`
- `docs/references.md`
- root `README.md`
- `docs/README.md`

Required result:
- substrate authority;
- behavioral-goal authority;
- research evidence;
- platform reality;
- lab authority/process;
are distinct and explicitly named.

Do **not** change Lace Core mechanics or accept pointer emission.

### Station: clipboards

Create:
- common source clipboard contract;
- HCC-A clipboard;
- Coffee Cup clipboard;
- Water clipboard.

Update:
- `docs/clipboards/README.md`

The README should stop treating the shelf as a fixed “ten references” ontology. Prefer role groups so new source families can be added without renumbering reality.

No existing source campaign body is rewritten simply to make wording uniform.

### Station: prompts

Inspect:
- `docs/prompts/context-pass.md`

Current agent story must expose the same lab/source architecture. Historical receipts stay historical.

### Station: hologram / clock

Inspect current entry surfaces only:
- `docs/clock/README.md`
- `docs/clock/philosophy-map.md`
- HCC-A / Coffee Cup / Water / H×C×W current manifests

Required current qualification:
- these are candidate-system interpretations / experiments against behavioral goals;
- not predetermined required holder machinery;
- not useless illustrations;
- possible machinery remains testable.

Do not rewrite historical pass receipts.

### Station: kit

Search current control entrances for source-role drift.

Edit only if a current control would cause an agent to:
- ignore possible machinery from behavioral/research sources;
- treat a platform clipboard as mere decoration;
- promote clipboard content directly into Core.

Do not regenerate large transport blocks unless their governing bytes actually require it.

### Station: maps — last content station

Update current maps only after subordinate roles converge:
- `docs/reason-model-map.md` if needed;
- `docs/systems-manifest-ascii.md` final.

The global ASCII final delta should draw the human architecture as the **laboratory context around Lace**, not as new Core boxes.

If changed:
- record linear global ASCII **Pass 31**;
- explicitly state this is **Lab Source Architecture Pass 1**;
- preserve Pass 30 sampling overlay;
- preserve the active retention/materialization gap.

Create:
- `docs/plans/lab-source-architecture-pass-1-findings.md`
- update `docs/plans/README.md`.

---

## 8. Execution order

```
      preflight census / live station check
                    |
                    v
                  LAW
       source roles + authority
                    |
                    v
               CLIPBOARDS
     common contract + H/C/W intake
                    |
                    v
                 PROMPTS
         one story for every agent
                    |
                    v
            HOLOGRAM / CLOCK
      candidate-system qualification
                    |
                    v
                   KIT
       controls only if drift exists
                    |
                    v
                  MAPS
       reason map + global ASCII LAST
                    |
                    v
          findings / stale sweep
                    |
                    v
              release all holds
```

One station per commit. Refresh/re-read after every intervening commit. No cross-station batch commit.

---

## 9. Falsifiers

Pass 1 fails if any of these occur.

### F1 — source citation becomes architecture
A mechanism is called required merely because a source describes it.

### F2 — behavioral goals lose their machinery
HCC-A / Coffee Cup / Water are reduced to vague desired behavior and their source-described possible machinery is excluded from the lab.

### F3 — research becomes decorative
Book/research clipboards remain framed so narrowly that their mechanism registers cannot enter candidate testing.

### F4 — platform becomes semantics
A hardware/spec/toolchain capability is used to answer a missing Lace semantic rule.

### F5 — clipboard becomes authority
A clipboard row, mechanism register, or ASCII panel is treated as acceptance/proof/Core law by existence.

### F6 — Lace source authority is inverted
Behavioral or platform sources overwrite the Graphic D / manifest substrate contract.

### F7 — hardware reality is detached
The final repository story fails to show that device/toolchain/spec facts constrain what experiments and implementations are physically possible.

### F8 — H/C/W still lack clipboards
Any of the three behavioral-goal sources remains outside the common clipboard interface after execution.

### F9 — history is flattened
Old campaign text is rewritten to look as though it always used the new taxonomy.

### F10 — implementation gate moves
Pass 1 opens `src/`, accepts pointer emission, chooses retention/materialization, or authorizes an implementation branch.

---

## 10. Pass-1 acceptance board

Execution is complete only if all are true:

| Gate | Required |
|---|---|
| G1 | common source clipboard contract exists |
| G2 | HCC-A clipboard exists with goals + possible machinery kept distinct |
| G3 | Coffee Cup clipboard exists with goals + possible machinery kept distinct |
| G4 | Water clipboard exists with goals + possible machinery kept distinct |
| G5 | clipboard README groups source roles rather than a fixed ten-source ontology |
| G6 | research mechanism registers are explicitly lab candidate inputs, not Core imports |
| G7 | platform/hardware clipboards are explicitly execution-machinery / constraint inputs |
| G8 | law/reference entrances distinguish substrate, goals, research, platform, and lab |
| G9 | context prompt tells the same story |
| G10 | clock/H/C/W current surfaces are candidate machinery, neither required machinery nor meaningless illustration |
| G11 | global ASCII shows lab context without modifying Core |
| G12 | Pass 30 sampling law remains intact |
| G13 | exact retention/materialization remains `[GAP]` |
| G14 | pointer-emission acceptance remains ABSENT |
| G15 | no `src/` / Cargo / implementation branch opened |
| G16 | all station holds released |

---

## 11. What Pass 1 deliberately does not do

Pass 1 does **not**:
- decide which HCC-A/Coffee Cup/Water mechanisms Lace needs;
- decide whether any research algorithm is correct for Lace;
- choose CPU/GPU/WebGPU/WebNN execution architecture;
- run a new hardware benchmark campaign;
- fully reread every source;
- create a full six-pass HCC-A/Coffee Cup/Water mechanisms campaign;
- solve retention/materialization;
- accept `pointer-emission.md`;
- implement Lace.

Its product is a repository where the experimental question is finally shaped correctly:

[
oxed{
	ext{Given the behavioral goals and physical reality, what systems must survive the lab for Lace to function that way?}
}
]

That is the question later passes may attack.
