# Pass 4 source mechanism map — HCC-A v1.0

**Campaign:** Source → Lab → Lace Alignment Restart · Pass 4.  
**Source:** uploaded `Human Cognitive Compiler Architecture.txt`.  
**Source SHA-256:** `209c8f259225a4899b3736837919447381e94352a67d7f915eb95c36db90f3f9`.  
**Source lines:** 490.  
**Authority:** source-analysis / Lab evidence. **Not Core. Not an implementation design.**  
**Purpose:** recover the functional/causal mechanisms HCC-A says are part of the desired behavior, separately from both Pass-3 observable assays and any future concrete implementation.

## 0. Source-level thesis

HCC-A describes a recurrent cognitive system, not a bag of independent output constraints.

Its strongest source-level commitments are:

1. objective Reality constrains but is not directly available to a mind;
2. Interface turns Reality into internal signals;
3. the same signals enter **two parallel channels**:
   - RIC preserves external structure;
   - PFC applies prior/schema-shaped interpretation;
4. both channels feed Compiler C;
5. compiled state enters mutable Story Ledger L;
6. Meaning M weights ledger state and produces transitions;
7. Emotion E is the runtime state of meaning during transition;
8. Identity ISL integrates ledger, meaning and repeated emotional pattern;
9. Behavior B is the directly observable output;
10. Behavior changes Reality, producing new input;
11. the architecture is universal in component presence while individuals vary by parameterization;
12. only structure crosses minds; meaning/story/emotion remain holder-local.

A faithful implementation need not contain literal software objects named RIC/PFC/L/M/E/ISL, but it must preserve the functional relations if it claims to realize HCC-A behavior.

---

## 1. Mechanism register

| ID | Tags | Source | Desired-behavior mechanism | Inputs / state | Transform / output | Ordering / feedback | Observable consequence | Pass-3 coverage | Placement / implementation freedom |
|---|---|---|---|---|---|---|---|---|---|
| **H-BM01** | BM-ONTOLOGY · BM-INVARIANT | L11–20 | **Reality / Interface boundary.** Reality is objective, constraining, observer-independent, and not directly accessible; Interface converts Reality into raw internal signals. | Reality R; body/perceptual Interface I | R → internal signals | upstream of every later stage | candidate behavior remains constrained by external events rather than free narrative | **MISSING** as a direct assay | LACE-SUBSTRATE may preserve structure after arrival; holder sensing/interface is **HOLDER/APPLICATION-REQUIRED** |
| **H-BM02** | BM-INVARIANT · BM-PARAMETER | L22–24; L198–199; L459 | **Same architecture, different parameters.** Components are universal; variation is settings/content, not component presence. | architecture + parameter set | same mechanism family yields individual variation | persistent across loops | different agents/context can respond differently without deleting the architecture | **MISSING** | holder implementation open; do not literalize parameter enums |
| **H-BM03** | BM-PARALLEL · BM-TRANSFORM · BM-INVARIANT | L26–47 | **Dual input processing.** RIC preserves structured external traces; PFC applies priors/templates; they run in parallel, not serially, and both feed C. | same internal signal stream; priors/templates | evidence-preserving representation + prior-conditioned interpretation coexist | explicit parallelism before compilation | interpretation can differ while structural evidence survives | **H-G1 = PARTIAL** | functional dual-path obligation; number of buffers/threads/types is open |
| **H-BM04** | BM-TRANSFORM · BM-FLOW | L49–56 | **Compiler integration.** C converts structure + PFC-shaped interpretation into Story Ledger updates. | RIC structure + PFC interpretation | structure/interpretation → ledger update | after dual-channel coexistence | holder's story state changes as a function of both | **MISSING** | HOLDER/APPLICATION-REQUIRED; concrete reconciliation algorithm open |
| **H-BM05** | BM-STATE · BM-TRANSFORM | L58–69 | **Story Ledger mutable event state.** L contains concrete, abstract, imagined and inferred events; supports add/merge/re-index/delete-suppress. L is underlying data, not narrative form. | event/state updates | mutable grouping/indexing/suppression of internal events | persistent holder-local state | later behavior can reflect reclassification/suppression without external history changing | **MISSING** | WORKING-STATE-REQUIRED; **FORBID-AS-CORE mutation** of authoritative Lace; realization open |
| **H-BM06** | BM-STATE · BM-TRANSFORM · BM-FEEDBACK | L71–87 | **Meaning as weighting + transition logic.** M weights events/clusters and produces changes to beliefs, priorities, roles, future expectations and allowed behavior. Meaning is directive. | L + internal values/priorities | weights + intended transitions | drives later E/ISL/B | decisions/allowed behaviors vary with weighted meaning | **MISSING** | holder-local working state; representation and weighting algorithm open |
| **H-BM07** | BM-STATE · BM-TRANSITION | L91–105 | **Emotion as meaning-in-flight.** E is transient runtime state while meaning transitions are being applied; it is not meaning/story/intent; it settles or vanishes. Emotion is non-transmissible. | active M transitions | transient turbulence/resonance | during transition, before/through later behavior | observable behavior may differ while E itself stays local | **H-G3 = THIN** | HOLDER/APPLICATION-REQUIRED working state; not a shared/core fact |
| **H-BM08** | BM-STATE · BM-TRANSFORM · BM-FEEDBACK | L107–120 | **Identity synchronization.** ISL compresses/synchronizes Story + Meaning + repeated E patterns into identity; outputs identity snapshot + updated priors/rules for future compilation. | L + M + repeated E | holder identity state + future priors | feeds future PFC / behavior | repeated experience changes later interpretation/behavior | **H-G2 = PARTIAL** | WORKING-STATE-REQUIRED; append-only substrate may support provenance, not literal identity state |
| **H-BM09** | BM-OBSERVABLE · BM-TRANSFORM | L122–136 | **Behavior output.** B combines identity, meaning transitions, emotion and active templates/constraints. B is the only directly observable loop component. | ISL + M + E + templates | external action/inaction | S6; before feedback | speech, silence, action, escalation, retreat etc. | **MISSING** | HOLDER/APPLICATION-REQUIRED; assays may inspect B without accessing private internal state |
| **H-BM10** | BM-FEEDBACK · BM-FLOW | L138–141; L192–196 | **World feedback.** B changes Reality/environment; new events become new structure and restart the loop. | B + environment | outer change → new structural input | recurrent loop | later input differs due to prior behavior | **H-G2 = PARTIAL** | temporal/round-state required; authoritative history can remain immutable |
| **H-BM11** | BM-STATE · BM-TRANSITION · BM-FLOW | L143–196 | **S0–S7 recurrent state machine.** Intake → coexistence/pruning → compilation → meaning → emotion → identity → behavior → feedback. | evolving holder state | staged transformations | explicit broad order; RIC/PFC coexist at S1 | a processing round has structured causal dependencies | **MISSING** as a whole | process obligation above Lace; literal runtime scheduler not mandated |
| **H-BM12** | BM-TRANSFORM · BM-PARAMETER · BM-FAILURE | L150–154; L229–243 | **Pruning can occur at multiple sites.** Perceptual, pre-filter and post-compile loss are distinct. | incoming/compiled data | omit/discard/revise/reframe/down-weight | S0/S1/S3–S5 | what survives into later behavior differs by pruning strategy | **MISSING** | mutable/ephemeral holder state required; authoritative Lace need not delete history |
| **H-BM13** | BM-PARAMETER | L198–206 | **Template/schema library.** PFC content and strength vary; templates may override raw input or merely suggest probabilities. | template set + signal | prior-conditioned interpretation strength | affects PFC | same event can compile differently across holders | **H-G1 = PARTIAL** | implementation representation open |
| **H-BM14** | BM-PARAMETER · BM-ARBITRATION | L208–227 | **Priority stack.** Internal ordering determines what is preserved first under conflict. | priorities | conflict preference/order | affects M / choices | conflicts resolve differently by holder | **MISSING** | holder working state; exact data structure open |
| **H-BM15** | BM-ARBITRATION · BM-PARAMETER | L245–255 | **RIC/PFC arbitration modes.** Raw-dominant, template-dominant, compiler/coherence integration, identity-dominant responses are distinguished. | conflicting structure + interpretation | conflict-resolution mode | after/within dual-channel conflict | evidence may win, narrative may win, integrate, or bend to identity | **MISSING** | source gives mode classes, not full decision procedure |
| **H-BM16** | BM-PARAMETER | L257–267 | **Meaning styles.** Descriptive, evaluative, directive modes alter functional role of M. | ledger + style | labels / value judgments / decision logic | affects behavior | directive style constrains actions directly | **MISSING** | holder behavior; implementation open |
| **H-BM17** | BM-PARAMETER · BM-TRANSITION | L269–281 | **Emotion handling styles.** Decision-driving, story-rewriting, re-weighting, ignorable; mixtures allowed. | E + style | act / reinterpret / reweight / ignore | during transition | same emotional activation can lead to different downstream updates | **MISSING** | working-state behavior; do not rewrite authoritative Lace to implement story rewrite |
| **H-BM18** | BM-PARAMETER · BM-STATE | L283–289 | **Identity modes.** coherent / fragmented / scripted / aesthetic / sovereign. | accumulated identity state | style of identity formation/use | affects cross-context behavior | continuity/context-dependence differs | **MISSING** | holder-level state; exact representation open |
| **H-BM19** | BM-DIAGNOSTIC · BM-FLOW | L291–391 | **Six-Act processing/diagnostic stack.** Scene/stakes → story update → meaning/emotion → identity → behavior → world/template update. Source calls acts process layers, not content. | one event/interaction + holder state | diagnostic/process traversal | related to but not identical with S0–S7 | can inspect how an event propagates through framing/story/meaning/identity/action/learning | **MISSING** | diagnostic workflow; do not fuse with S0–S7 runtime schedule |
| **H-BM20** | BM-EXAMPLE · BM-DIAGNOSTIC | L393–459 | **YAML schema / event trace.** Source proposes a per-person/event config and trace format. | person/event descriptions | structured record of parameters + acts | external analysis representation | makes hidden parameter assumptions explicit | **MISSING** | example/tooling shape, not required runtime storage |
| **H-BM21** | BM-INVARIANT | L291–300; L461–469 | **Closing system constraints.** objective Reality; subjective compilation; only structure crosses minds; meaning/story local; no meaning transfer; full loop present. | entire architecture | constrains valid behavior | global | two holders may share structure without sharing meaning; behavior remains reality-constrained | **H-G3 = PARTIAL; H-G1 = PARTIAL** | cross-holder structural interface required; local meaning must remain local |

---

## 2. Source assertion-strength map

The source is not equally prescriptive everywhere.

| Source form | Examples | Pass-4 reading |
|---|---|---|
| **Definition** | R, I, C, L, M, E, ISL, B | strong behavioral-mechanism statement |
| **Invariant / explicit “must”** | RIC+PFC parallel; emotion non-transmissible; only structure crosses | strongest constraint |
| **State-machine declaration** | S0–S7 “Universal loop any mind runs” | strong source model, though implementation scheduling remains open |
| **Parameter family** | templates, priorities, pruning, arbitration, M/E/identity styles | variation mechanism, not optional component deletion |
| **Diagnostic process** | Acts I–VI questions/prompts | source-provided operational analysis layer, not necessarily runtime schedule |
| **Schema/example** | YAML template | analysis/config representation, not proof of implementation shape |
| **Example values** | love/conflict templates; priority examples; behavior examples | examples, not required enumerations |

---

## 3. Pass-3 assay fidelity audit — HCC-A

| Pass-3 assay | Source mechanism(s) actually covered | Verdict | Missing mechanism content |
|---|---|---|---|
| **H-G1 structure vs interpretation separation** | H-BM01, H-BM03, H-BM13, H-BM15, H-BM21 | **PARTIAL** | does not require two simultaneous channels before integration, compiler update, pruning/arbitration dynamics, or parameterized conflict outcomes |
| **H-G2 feedback without history rewrite** | H-BM08, H-BM10, portions of H-BM11/H-BM19 | **PARTIAL** | conflates multiple feedback kinds; does not test identity-prior update separately from world feedback or full loop |
| **H-G3 structure-only boundary** | H-BM07, H-BM21 | **PARTIAL** | captures non-transfer but not local generation of E from local M+L, holder-local story/meaning pipeline, or behavior as the observable boundary |

**HCC Pass-3 result:** assays are **valid but thin**. None is distorted, but they cover only projections of the recurrent architecture.

Major HCC mechanisms currently **MISSING** from the Pass-3 assay layer:
- Compiler/Ledger/Meaning/Emotion/Identity chain;
- mutable ledger operations;
- parameter-space behavior;
- RIC/PFC arbitration;
- distributed pruning;
- S0–S7 loop as a whole;
- Acts I–VI diagnostic/process stack;
- Behavior B as the direct observable generated from holder-local internal state.

---

## 4. Immutable Lace / mutable HCC seam

HCC requires mutable behavioral state. Current Lace authority is append-only.

This is **not** a source conflict.

It is an implementation obligation:

```
immutable authoritative Lace history
        |
        +--> replayable / derived evidence
        |
        v
holder-local mutable working behavior
    L / M / E / ISL / PFC etc.
        |
        v
observable B
        |
        v
new structural events may later arrive
```

Pass 4 does not decide whether holder mutability is implemented by:
- replay-derived state;
- ephemeral cache;
- append-only supersession;
- local process state;
- another candidate mechanism.

It only records that deleting the desired HCC behavior because Lace is immutable would be a category error.

---

## 5. HCC placement summary

| Mechanism family | Current placement |
|---|---|
| objective external structure / pointability | LACE-SUBSTRATE-SUPPORT after arrival; Interface remains outside |
| RIC-style evidence-preserving path | OPEN-IMPLEMENTATION-MECHANISM above substrate |
| PFC / templates / priors | HOLDER/APPLICATION-REQUIRED · WORKING-STATE-REQUIRED |
| Compiler + Ledger + M/E/ISL | HOLDER/APPLICATION-REQUIRED · mutable/replayable working state |
| Behavior B | HOLDER/APPLICATION-REQUIRED · observable output |
| feedback to future inputs | TEMPORAL/ROUND-STATE-REQUIRED |
| two-holder structure-only boundary | MULTI-PARTY-REQUIRED |
| direct mutation of authoritative Lace to emulate ledger rewrite | **FORBID-AS-CORE** |
| exact internal implementation | OPEN |

## 6. Source-map verdict

**HCC-A desired-behavior mechanisms are mapped with source opens.**

The source is much richer than the three Pass-3 assays. The assays remain useful falsifiers, but they are not a sufficient target model for HCC-A behavior.
