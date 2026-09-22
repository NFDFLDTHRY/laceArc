# SOURCE → LAB → LACE ALIGNMENT — Restart Pass 1 findings

**Status:** EXECUTED 2026-09-21.  
**Campaign:** Source → Lab → Lace Alignment — restart.  
**Pass:** 1.  
**Plan:** source-lab-lace-alignment-pass-1-plan.md.  
**Planning baseline:** 80b0346fdca5fdd928d9285bf8bb4f6e8b228b11.  
**Execution baseline after planning:** 933f142fae1a17752c83793a8c201a896c2c4f10.  
**Final semantic commit:** d8071e96aea126f284c71b93d0f18e219bd35a27 — global ASCII linear Pass 33.  
**Implementation:** none.  
**Human acceptance:** absent for the current pointer draft.  
**Verdict:** **ALIGNED WITH OPENS.**

---

## 1. Alignment model

~~~
BEHAVIORAL GOALS
HCC-A · Coffee Cup · Water
        |
   source clipboards
        |
goals · constraints · possible machinery · hypotheses
        |
        v

BOOKS / PAPERS / RESEARCH
        |
   source clipboards
        |
algorithms · mathematics · mechanisms · known constraints
        |
        +------------------------+
                                 v
                           +-----------+
                           | laceArc   |
                           |    LAB    |
                           +-----------+
                                 |
                      propose / attack
                      reproduce / test
                      falsify / retain EVIDENCE
                                 |
                                 v
                               LACE
                      substrate / machine under
                        experimental growth
                                 |
                                 v
                      HARDWARE / PLATFORM REALITY
                 CPU · GPU · WASM · WebGPU · WebNN
                 Rust · no_std · browser · device
                                 |
                    hardware/spec/reference clipboards
                                 |
                                 v
                     physical execution constraints
                                 |
                                 +----------> LAB
~~~

Critical vocabulary distinction:

- Lab retain = preserve evidence / candidate status.
- Lace retain = durable POINTER topology.

Pass 1 found and removed places where the repository could flatten those into one idea.

---

## 2. Pre-flight census

At the planning baseline:
- default branch: main;
- all 11 document stations were FREE;
- current global companion: Pass 32 mechanism catalog over Pass 31 source/lab context and Pass 30 sampling reconciliation.

At the semantic verification tip d8071e96aea126f284c71b93d0f18e219bd35a27:
- recursive Git tree: 714 tracked blobs;
- recursive response: not truncated;
- existing behavioral-goal products present:
  - docs/clock/hcc-a-systems-manifest.md
  - docs/clock/coffee-cup-systems-manifest.md
  - docs/clock/water-systems-manifest.md
  - docs/clock/train-h-c-w-systems-manifest.md
- Lab tools present:
  - docs/plans/tools/lace-candidate-run.py
  - docs/plans/tools/lace-retention-harness.py
  - docs/plans/tools/hologram-ir-shape-check.py
- Lab fixtures include d1-golden-v0.1.0.json.
- Sampling/Density/Emergence Pass-6 plan exists.
- Sampling/Density/Emergence Pass-6 findings file does not exist.

---

## 3. Vertical alignment register

| Surface | Primary layer | Authority class | Inputs | Outputs | May affect | Must not affect | Current status | Drift | Action |
|---|---|---|---|---|---|---|---|---|---|
| HCC-A source text / clipboard | GOAL | SOURCE / CANDIDATE | HCC-A source | behavioral goals, constraints, possible machinery | Lab hypotheses/tests | Core rows by citation | current source clipboard | none | KEEP |
| Coffee Cup source text / clipboard | GOAL | SOURCE / CANDIDATE | Coffee Cup source | causal stages, constraints, possible machinery | Lab hypotheses/tests | runtime stages by citation | current source clipboard | none | KEEP |
| Water / Dual Proofing clipboard | GOAL | SOURCE / CANDIDATE | Water source | proofing/communication machinery, constraints | Lab hypotheses/tests | OBS/DELTA/etc as Core types | current source clipboard | none | KEEP |
| H×C×W train composition | GOAL/LAB boundary | CANDIDATE | three goal clipboards | candidate couplings/failure conditions | Lab comparison | required gearbox/runtime | current candidate composition | historical “gearbox law” remains inside dated body | HISTORY-ONLY / KEEP current preamble |
| Kauffman clipboard | RESEARCH | SOURCE / EXTERNAL-CANDIDATE | source text | topology/hitch/threshold machinery | Lab candidate tests | Core operator by analogy | current | none | KEEP |
| Rowlands clipboard | RESEARCH | SOURCE / EXTERNAL-CANDIDATE | source text | algebraic machinery/constraints | Lab candidate tests | Lace validity rule by relabeling | current | none | KEEP |
| Xiao–Zhu clipboard | RESEARCH | SOURCE / EXTERNAL-CANDIDATE | source text | token/model/selector machinery | Lab candidate tests | learned state as Lace truth | current | none | KEEP |
| Petersen–Zech clipboard | RESEARCH | SOURCE / EXTERNAL-CANDIDATE | source text | approximation/non-identification mathematics | Lab falsifiers/constraints | finite fit as mechanism identity | current | none | KEEP |
| AgentScope clipboard | RESEARCH | SOURCE / EXTERNAL-CANDIDATE | source text | agent-failure/retention-shaped machinery | Lab/steward tests | ReAG/neural state as Lace state | current | none | KEEP |
| Wasm clipboard | PLATFORM | PLATFORM/SOURCE | specification | target/memory/validation primitives | feasibility/proof obligations | Lace semantics | current | none | KEEP |
| WebGPU clipboard | PLATFORM | PLATFORM/SOURCE | specification/runtime observations | GPU primitives/limits | implementation feasibility | RM-A semantics | current | none | KEEP |
| WGSL clipboard | PLATFORM | PLATFORM/SOURCE | language spec | shader execution constraints | implementation feasibility | Core operator | current | none | KEEP |
| WebNN clipboard | PLATFORM | PLATFORM/CANDIDATE | API/spec | host-NN primitives/constraints | application/projection experiments | retained relation truth | current | none | KEEP |
| rustc target clipboard | PLATFORM | PLATFORM/SOURCE | rustc book/target docs | target/toolchain facts | implementation feasibility/proof | semantic retention policy | current | none | KEEP |
| Cargo build-std clipboard | PLATFORM | PLATFORM/SOURCE | Cargo source | build-std syntax/requirements | build/toolchain proof | claim of successful build | current | README said both arrived and absent | RECONCILE |
| lace-candidate-run.py | LAB | LAB INSTRUMENT | D1 fixture + candidate declaration | bounded candidate/refutation evidence | Lab findings | Core state / automatic winner | current host-side tool | none | KEEP / fence |
| lace-retention-harness.py | LAB | LAB INSTRUMENT | prefix + candidate + admission metadata | replay/oracle/TP-FN-FP evidence | Lab findings | Core dependency / acceptance | current host-side tool | entrance under-described | QUALIFY |
| d1-golden-v0.1.0.json | LAB | LAB FIXTURE / ORACLE | bounded D1 transcription | test oracle | Lab scoring | Graphic D authority beyond source | current sealed fixture | none | KEEP |
| Manifest Reconciliation Pass-4 admission envelope | LAB | LAB PROTOCOL | canonical contracts + opens | candidate admission rules | Lab experiments | Core law | executed noncanonical evidence | none | KEEP |
| Lab Source Architecture Passes 2–6 | LAB | LAB EVIDENCE | source/graphics/research candidates | measured findings / falsifiers | current evidence qualification | automatic universal law | executed | canonical wording lagged latest evidence | RECONCILE |
| Graphics A–D | LACE | SOURCE | human source corpus | substrate behavior/storage constraints | canonical contracts | Lab score / platform convenience | canonical | none | KEEP |
| systems-manifest.md | LACE | SOURCE/HUMAN/DERIVED contract registry | graphics + human rulings + admitted derivation | SM-C / SM-X contracts and opens | canonical behavior | bounded Lab result as universal theorem | current | broad RM wording hid bounded progress | RECONCILE |
| systems-manifest-ascii.md Pass 32 | LACE/CATALOG | CATALOG / derived companion | canonical contracts + authority records | L-M catalog / typed edges | navigation/integration | replace manifest/source | current catalog | lacked current vertical overlay | PRESERVE + WRAP |
| pointer-emission.md | LACE/GATE | DRAFT law surface | source/human/current evidence | constructor + open boundary | implementation gate after acceptance | automatic acceptance | current unaccepted draft | broad RM wording | RECONCILE |
| math-execution-model.md | LACE/MAP | DERIVED | current canonical premises | mathematical construction/proofs | reasoning/proof | new authority by model | current | broad RM wording | QUALIFY |
| atomic-primitives-map.md | LACE/MAP | PROPOSAL/DERIVED map | source + current contracts | primitive/dependency map | reasoning | accepted Core by notation | current | broad RM wording | QUALIFY |
| reason-model-map.md | RESEARCH↔LACE map | DERIVED/BOUNDARY | five research sources + shoe court | KEEP/FORBID/candidate boundaries | Lab candidate routing | source analogy as Core | current | broad RM wording | QUALIFY |
| rust-nostd-crate-map.md | FUTURE IMPLEMENTATION | PROPOSAL | current contracts | future decomposition/proof obligations | later implementation planning | existing branch/runtime | plan only | could be read too close to current architecture | QUALIFY |
| rust-nostd-branch-contracts.md | FUTURE IMPLEMENTATION | PROPOSAL | current contracts | future branch cards | later implementation planning | branch ownership from bounded Lab result | plan only | broad gap/ownership wording | QUALIFY |
| Carrier / Hopper / Seed / Frontier / refusal / Runtime L3 | APP/PROPOSAL | CANDIDATE / VIEW | app-level proposals | delivery/runtime apparatus | application design | L-M substrate authority | proposal/cite-only | none | KEEP |
| R3 / R4 / R9 / R10 / Open #15 | APP/OPEN | PROPOSAL/GAP | application concerns | unresolved app decisions | app implementation | RM-A / Lace semantics | open | none | KEEP |
| AGENTS.md | ENTRANCE | CONTROL | law + canonical/current evidence | standing orders | agent behavior | acceptance itself | current | broad RM wording | RECONCILE |
| context-pass.md | ENTRANCE | CONTROL/VIEW | current governing surfaces | one-story prompt | agent context | law/Core | current | lacked latest RM and Lab/Lace retain split | RECONCILE |
| agent-control.md / READ_ME_FIRST.md | ENTRANCE | CONTROL | law + current evidence | operational controls | agent workflow | Core law by transport copy | current | broad RM wording, Lab tools not explicit | RECONCILE |
| docs/clipboards/README.md | ENTRANCE | INDEX | distributed source shelves | source routing | discovery | source authority upgrade | current | stale A4 temporal contradiction | RECONCILE |

---

## 4. Canonical open interface vs latest Lab evidence

The restart does not collapse evidence into law.

Canonical:

~~~
L-GAP-RM / SM-GAP-RM
    = one open integration interface
~~~

Latest bounded Lab evidence:

~~~
RM-A RETAIN?
    OPEN
    MISSING-A / evidence insufficiency certified
    primary unresolved design obligation

RM-B MATERIALIZE?
    partial / candidate-class closure
    selected finite contiguous sample occurrence
      -> ordered existing WORD rows
      -> L-M19 repeated Join
      -> one lawful addressable representative

RM-C ROLE / ORDER?
    closed for RootTouch
    closed for contiguous sample grounding
    candidate-specific/open elsewhere
~~~

Pass 1 reconciled current canonical/control/map language to carry both facts:
- the canonical interface is still open;
- bounded experimental progress is real and must not be erased.

No new L-M ID was created.

---

## 5. Platform / hardware alignment

Current platform/toolchain rule after Pass 1:

- CPU/GPU/browser/device/toolchain facts may make a candidate feasible or impossible.
- Wasm/WebGPU/WGSL/WebNN/rustc/Cargo may supply implementation primitives.
- Runtime observations remain observation-strength evidence.
- Platform machinery cannot supply RM-A, override Graphics A–D, or turn an API into Core semantics.
- Platform machinery is not “only projection” merely because several current consumers are viewers.

Cargo A4 routing was repaired:
- earlier snapshot: A4 absent;
- later state: A4 arrived, was staked/mapped, gained locators and forge coverage;
- still not established: successful build, exact wasm64 crate closure, target lockfile representation, component-content identity, or human toolchain rulings.

---

## 6. Lab boundary

Explicit current rule:

~~~
source / candidate
      |
      v
Lab instrument
      |
      +--> falsified
      +--> bounded survivor
      +--> negative evidence
      |
      X  not Core by score
      X  not acceptance by commit
~~~

The candidate runner, retention harness, fixtures, admission forms and falsifier boards are host-side/steward Lab machinery.

A deterministic/replayable/perfectly scoring candidate can still be rejected for authority/oracle failure.

That is evidence discipline, not Lace runtime behavior.

---

## 7. Global ASCII Pass 33

Final semantic edit:
- d8071e96aea126f284c71b93d0f18e219bd35a27.

Pass 33:
- preserves Pass 32 as canonical mechanism catalog;
- preserves systems-manifest as contract registry;
- places source families, Lab evidence, Lace, future implementation proposals and platform reality in the vertical model;
- records the RM-A/B/C scoped relationship;
- adds no mechanism and no retention predicate.

---

## 8. Pass-30 provenance / Sampling-Pass-6 receipt classification

Path-scoped history of docs/systems-manifest-ascii.md provides pointable execution evidence for global companion Pass 30:

- bfaa4e1072cd7cd89b8da6d135e033a972fce32e — Add Pass 30 sampling reconciliation to global systems ASCII.
- d888e60a452b9e0a45ec605c3a42f0a87b0efc3c — re-pin after subordinate verification.
- 0ab5cdc026a8dd5cc734c157837811955a0ec1d9 — final re-pin after subordinate corrections.
- 078c677c5483ed89a74aad17c48df1607f6fdf23 — final Pass-30 ASCII pin after final manifest correction.

Separately:
- docs/plans/sampling-density-emergence-pass-6-plan.md says PLAN - NOT EXECUTED.
- docs/plans/sampling-density-emergence-pass-6-findings.md does not exist.

Disposition:

**Global ASCII Pass 30 is an executed companion reconciliation. That does not prove the separate Sampling/Density/Emergence Pass-6 plan file was executed.** The old plan remains a dated unexecuted planning artifact unless pointable campaign evidence is recovered later.

No missing findings file was fabricated.
No historical plan status was flipped.

---

## 9. Execution commits

| Station | Commit | Result |
|---|---|---|
| law | 85a534bdc52f595c0cac2e6fe686d9fd2287b874 | systems manifest carries canonical-vs-bounded RM evidence |
| law | eedb0152d0ebaa4aba76875fdd3ae1511de45a74 | pointer draft carries RM-A/B/C scope |
| law | 20dc4d6c0d2153461cd169803822b02bfaa4762d | AGENTS standing orders aligned |
| clipboards | 82e43ec4a8af3c3f75374dc875f9a9063604a68c | Cargo A4 temporal contradiction reconciled |
| prompts | 34990203018bbf823d975550cae299b2f88d5ec2 | mandatory vertical story + Lab/Lace retain split |
| kit | 589d4517a964a5b037dff6514adb22f991ad3360 | agent controls fence Lab tools and carry RM scope |
| kit | 14efa9f9b82c35e37852bb3016eef1028ec62ba6 | package entrance aligned |
| maps | 4779e8faa1c6f32e0d9accf9d085fed78e7ff8ac | atomic map current qualification |
| maps | 8fa9eb1b7a447162bb6e0e902fdb2a43361afb68 | reason map current qualification |
| maps | 7f50bac7c7a09e578babe64e04a3171a2e075edc | mathematical model current qualification |
| maps | 2ed718a24fcc2c377faf05edfa7a8c9286c2ba39 | Rust crate map explicitly future proposal |
| maps | e5d7234b138921e567b939118295c5064fb55e0e | Rust branch cards explicitly future proposal |
| maps | d8071e96aea126f284c71b93d0f18e219bd35a27 | global ASCII Pass 33, final semantic edit |

No hologram/clock edit was required: the current preambles already preserve goals + candidate machinery and fence automatic runtime/Core promotion.

---

## 10. Falsifier board

| Falsifier | Result |
|---|---|
| F1 source becomes architecture by citation | PASS — did not fire |
| F2 behavioral machinery erased | PASS — did not fire |
| F3 research becomes decoration | PASS — did not fire |
| F4 Lab becomes Core | PASS — did not fire |
| F5 bounded RM-B/RM-C progress hidden | PASS — repaired |
| F6 bounded result universalized | PASS — did not fire |
| F7 platform becomes semantics | PASS — did not fire |
| F8 platform becomes irrelevant | PASS — platform role remains feasibility/primitives/constraints |
| F9 viewer becomes store | PASS — did not fire |
| F10 old campaign numbering reused | PASS — restart remains Pass 1 |
| F11 history rewritten | PASS — did not fire |
| F12 receipt fabricated | PASS — did not fire |
| F13 Pass 32 discarded | PASS — preserved as canonical catalog |
| F14 RM-A design begins | PASS — did not fire |
| F15 implementation gate moves | PASS — did not fire |

---

## 11. Completion board

| Gate | Result |
|---|---|
| G1 current main pin and full tree census | PASS |
| G2 mandatory surfaces assigned primary layers | PASS |
| G3 H/C/W goals + candidate machinery preserved | PASS |
| G4 research machinery Lab-eligible and non-Core | PASS |
| G5 platform/toolchain physical role explicit | PASS |
| G6 Lab instruments explicitly non-canonical | PASS |
| G7 Lab retain evidence != Lace retain POINTER | PASS |
| G8 Lace substrate boundaries preserved | PASS |
| G9 Pass 32 mechanism/contract pair preserved | PASS |
| G10 canonical GAP vs latest RM evidence stated | PASS |
| G11 no partial result promoted universally | PASS |
| G12 current entrances tell same vertical story | PASS |
| G13 historical receipts remain historical | PASS |
| G14 Sampling Pass-6 / Pass-30 mismatch classified | PASS |
| G15 global ASCII updated last | PASS |
| G16 global ASCII uses linear Pass 33 | PASS |
| G17 no RM-A rule proposed/selected | PASS |
| G18 no implementation/acceptance gate moved | PASS |
| G19 all claims released | PENDING final maps release |

---

## 12. Verification at final semantic tip

At d8071e96aea126f284c71b93d0f18e219bd35a27:

- Pass 33 present.
- Pass 32 preserved.
- Pass-30 execution commits recorded.
- systems-manifest states RM-A primary open and bounded RM-B/RM-C closures.
- pointer-emission carries the same scope.
- mandatory context has the vertical alignment rule.
- mandatory context distinguishes Lab retain-evidence from Lace retention.
- kit controls carry the same distinction.
- atomic/reason/math maps carry current RM scope.
- Rust crate/branch documents explicitly remain future proposals.
- Cargo A4 README contradiction is repaired.
- Sampling Pass-6 plan file still exists as PLAN - NOT EXECUTED.
- no Sampling Pass-6 findings file exists.

No source PNG was changed.
No code/runtime implementation was added.
No RM-A predicate was proposed.

---

## 13. Verdict

**ALIGNED WITH OPENS.**

The active repository now fits the vertical architecture:

source → clipboard → Lab evidence → candidate architecture → Lace,

with platform reality constraining physical realization from below.

The current primary unresolved design obligation is RM-A: the lawful retain-when decision.

RM-B and RM-C have real bounded/class-specific progress that must be preserved without being universalized.

Pass 32 remains the canonical mechanism catalog.
Pass 33 is the current alignment overlay.

**STOP. Pass 2 is not opened automatically.**
