# AgentScope — mechanism cards (constructive algorithms)

**Status:** Pass 3 EXECUTED (Wave A M-A1…M-A9; Waves B–D deferred one-line seeds). Pass 4 ASCII: see [agentscope-ascii-machinery.md](agentscope-ascii-machinery.md) (P-A1…P-A9). Algorithms unchanged. Emission `[GAP]`.  
**Source:** Jiayi Bi et al., *Diagnosing with Insights: Structured Analysis of Agent Failures via Behavioral Abstractions*, arXiv:2609.02371v1 · tool **AGENTSCOPE**  
**PDF:** `refs/local/bi-et-al-agentscope-diagnosing-insights.pdf` → attachment `6464d69d81d4265aff0cab1e1affe160ef7af4c77ccc142436528f75ea3fd1e9` (22 pp., text layer; **never git-add**)  
**Offset:** printed ≈ PDF at cited loci (Pass 1–2)  
**Sighting this pass:** `pdftotext -f N -l N -layout` on §2 Table 1, §3.1–3.3, Fig.1–2, App. A, App. C; Pass 1–2 pins reused  
**Companion:** [`agentscope-clipboard.md`](agentscope-clipboard.md) · map [`reason-model-map.md`](../reason-model-map.md) §5 (A1–A5) · [`clipboard-five-stakes.md`](clipboard-five-stakes.md) PAGE 5/5 · plan [`agentscope-pass-3-plan.md`](agentscope-pass-3-plan.md)

Law: taxonomy = **holder** vocabulary · ReAG ↛ 1D array · neural invariants ≠ Core proofs · diagnosis ↛ strand write · Hands win · Φ `[GAP]` sealed.  
This file is **Shadow / Layer III documentation of the paper**, not Lace `src/`, not `systems-manifest-ascii.md`, not Φ. Pass 4 ASCII panels exist; algorithms here unchanged.

---

## Stamp legend

| Stamp | Meaning |
|---|---|
| **KEEP-read** | May sit beside Lace as a reading / diagnostic image; does not write Core |
| **FORBID-as-Core-types** | Must not install taxonomy modes as WORD/POINTER kinds |
| **FORBID-as-Lace-arrival** | Must not replace input occurrence order with trace step order |
| **FORBID-ReAG-in-array** | Must not place ReAG vertices/edges/ISR as rows in Graphic D |
| **FORBID-as-Lace-store** | Must not treat ISR / trajectory memory as Lace index/memory |
| **FORBID-as-Core-proof** | Must not treat neural invariants as Core proofs or stored meaning |
| **FORBID-as-Hands-override** | Must not let LLM judge verdicts override Hands / human acceptance |
| **FORBID-as-Core-write** | Must not become an array rewrite, second store, or emission rule |
| **FORBID-as-Core-flags** | Must not install failure candidates as Core flags / auto-blame |
| **FORBID-as-POINTER-when** | Must not use decisive-error selection as POINTER when/arity/adjacency |
| **SILENT-for-Lace-append** | Paper procedure is silent for Lace append; do not smuggle as scheduler |

---

## Wave A — AGENTSCOPE diagnosis spine (blocking)

### M-A1 — Failure taxonomy catalog (Table 1)

| Field | Content |
|---|---|
| Kind | taxonomy / catalog |
| Book locus | §2 · **Table 1** · PDF **p.3**; App. A PDF **pp.18–21** |
| Sighting method | `pdftotext -f 2 -l 3` (this pass); Pass 1 PAGE A / E pins |
| Eye-quote | “Table 1 summarizes our taxonomy of agent failure patterns… organized into three dimensions… (i) Reasoning, (ii) Control-flow, and (iii) Action.” / Table 1 modes: WC, IU, IC, CM, TM, PT, SL, AM, II, EF |
| Inputs | Empirical failure trajectories; community categorizations cited by authors |
| Outputs | 3×10 mode catalog (Reasoning / Control-flow / Action) with short descriptions |
| Invariants | Modes stay labels for where failure manifests; a category label alone does not prove breach or cause |
| Algorithm | See below |
| Complexity / termination | Finite catalog (10 modes); halt when Table 1 modes recorded |
| Worked miniature | Table 1 row Action Mismatch (AM): “Selects actions… that contradict its reasoning”; expanded as App. A.8 / M-A5–M-A6 |
| Lace stamp | **KEEP-read** as **holder** vocabulary; **FORBID-as-Core-types** (A4) |
| Hands cite | Graphic B1 / D1 (strand ≠ steward diagnosis); AGENTS.md / agent-control C06; PAGE A/E |
| Map cite | **A4** |
| False friend | FM-A1 — taxonomy ⇒ Core types / WORD kinds |
| Open gaps | Expanding taxonomy is paper extensibility; Lace Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Failures observed along agent trajectories (reasoning, control-flow, action).  
2. **State.** Empty mode catalog.  
3. **Steps.**  
   1. Partition candidate failures by where they manifest: Reasoning, Control-flow, or Action.  
   2. Name ten modes (WC, IU, IC, CM, TM, PT, SL, AM, II, EF) with Table 1 descriptions.  
   3. Keep mode abbreviations and evidence distinctions (App. A) attached to each label.  
   4. Use the catalog only as diagnostic vocabulary for later invariant checks (M-A5).  
4. **Choice points.** New modes may be added by authors; Lace does not invent Core types from them.  
5. **Halt.** Catalog of 10 modes under 3 dimensions recorded.  
6. **Output certificate.** Table 1 taxonomy (holder vocabulary).

```text
partition(trajectory_failures) → {Reasoning, Control-flow, Action}
catalog := {WC,IU,IC,CM,TM,PT,SL,AM,II,EF}   # holder labels only
```

---

### M-A2 — Trajectory → instrumented step sequence

| Field | Content |
|---|---|
| Kind | observation / instrumentation |
| Book locus | Abstract · PDF **p.1**; §3.1 · PDF **pp.3–4**; §3.3 Stage 1 · PDF **p.5** |
| Sighting method | `pdftotext -f 1 -l 1` and `-f 3 -l 5` (this pass); Pass 1 PAGE B |
| Eye-quote | “abstract agent behavior, based on its trajectories, into structured representations.” / “Vertices are constructed through instrumentation of API calls, tool interactions, and system logs, and are further refined with semantic parsing…” |
| Inputs | Raw agent trajectory (API calls, tool interactions, system logs; possibly unstructured) |
| Outputs | Ordered candidate steps with coherent boundaries (pre-ReAG vertex material) |
| Invariants | Coverage/reconstruction limits stated; instrumentation ≠ complete witness of internal state |
| Algorithm | See below |
| Complexity / termination | Linear in log/event count; halt when step sequence is boundary-stable for ReAG build |
| Worked miniature | §3.3: instrumentation captures each step; LLM used selectively to parse reasoning or implicit actions |
| Lace stamp | **KEEP-read** as steward observation; **FORBID-as-Lace-arrival** (A1) |
| Hands cite | Piece 3 / Graphic C10 (occurrence order); Graphic A13; PAGE B |
| Map cite | **A1** |
| False friend | FM-A2 — trajectory step order ⇒ Lace arrival order |
| Open gaps | Exact instrumentation schema beyond quadruple/ISR — paper `[OPEN]`; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** A recorded agent run (online or offline).  
2. **State.** Raw event stream / logs.  
3. **Steps.**  
   1. Instrument API calls, tool interactions, and system logs into candidate steps.  
   2. Refine step boundaries with semantic parsing (LLM selective for reasoning / implicit actions).  
   3. Assign provisional identifiers and roles sufficient for vertex packing (M-A3).  
   4. Do **not** treat step order as Lace input-occurrence order.  
4. **Choice points.** Which events count as step boundaries — paper uses semantic refinement; exact schema `[OPEN]`.  
5. **Halt.** Instrumented step sequence ready for ReAG construction.  
6. **Output certificate.** Ordered steps (holder observation only).

```text
logs → instrument(API, tools, system) → refine_boundaries(semantic_parse)
       → step_seq   # steward observation; ≠ Lace arrival
```

---

### M-A3 — ReAG construction \(G=\{V,E\}\)

| Field | Content |
|---|---|
| Kind | graph-construction / diagnostic abstraction |
| Book locus | §3.1 · PDF **pp.3–4**; ReAG construction in §3.3 · PDF **p.5** |
| Sighting method | `pdftotext -f 3 -l 5` (this pass); Pass 1 PAGE C |
| Eye-quote | “Formally, a ReAG is a directed acyclic graph: G = {V, E}” / “where V is the set of vertices representing individual steps, and E is the set of edges encoding control or data dependencies between steps.” |
| Inputs | Instrumented step sequence (M-A2); ISR packs (M-A4) |
| Outputs | DAG \(G=\{V,E\}\); each \(v_i=\langle id_i,r_i,c_i,I_i\rangle\) |
| Invariants | Acyclicity of ReAG as paper’s formal claim; edges = control/data dependencies (diagnostic, not Lace POINTER) |
| Algorithm | See below |
| Complexity / termination | \(O(|V|+|E|)\) once steps known; halt when DAG + ISR enrichment recorded |
| Worked miniature | D7 Stage 0 on clipboard; §3.3 “ReAG construction converts runtime traces into a unified, annotated representation” |
| Lace stamp | **KEEP-read** as diagnostic graph; **FORBID-ReAG-in-array** (A2) — **explicitly FORBID ReAG rows in the 1D array / Graphic D** |
| Hands cite | Pieces 5, 6, 13; Graphic D2–D3, D6; Graphics C11, D4; PAGE C |
| Map cite | **A2** |
| False friend | FM-A3 — ReAG vertex ⇒ WORD; ReAG edge ⇒ POINTER |
| Open gaps | Exact edge-discovery heuristics beyond “control or data dependencies” — paper continues; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Instrumented steps from M-A2.  
2. **State.** Empty \(V, E\).  
3. **Steps.**  
   1. For each step, form vertex \(v_i=\langle id_i, r_i, c_i, I_i\rangle\) (ISR via M-A4).  
   2. Add edges for control or data dependencies between steps → DAG \(G=\{V,E\}\).  
   3. Enrich with structured semantic fields (role, instructions, actions, missing-info signals, purpose).  
   4. Refuse any write of \(V\), \(E\), or ISR into Graphic D / the 1D array.  
4. **Choice points.** Dependency edge inference — diagnostic reconstruction; not POINTER emission.  
5. **Halt.** Annotated ReAG ready for neural checks (M-A5–M-A8).  
6. **Output certificate.** Reasoning-Action Graph (holder diagnostic picture).

```text
V ← { ⟨id, role, content, ISR⟩ } ; E ← control_or_data_deps
G = {V, E}     # DAG — KEEP-read diagnostic; FORBID as Graphic D rows
```

**Steward refusal:** shoe in hands — refuse “write the ReAG into Graphic D” using this card + P3-M (A2 tooth).

---

### M-A4 — ISR packing \(I_i=(C_i,R_i,S_i)\)

| Field | Content |
|---|---|
| Kind | semantic annotation / trajectory index |
| Book locus | §3.1 · PDF **pp.3–4** |
| Sighting method | `pdftotext -f 3 -l 4` (this pass); Pass 1 PAGE C |
| Eye-quote | “The ISR for each step can be formally represented as a tuple of three sub-components: \(I_i = (C_i, R_i, S_i)\)” / “To address redundancy and long-context challenges, we construct a quickly analyzable trajectory index and memory, which motivates the design of the ISR.” |
| Inputs | Step content \(c_i\); role; surrounding trajectory context |
| Outputs | \(I_i=(C_i,R_i,S_i)\) — Intent/Context, Reasoning/Action, Signal/Validation |
| Invariants | ISR abstracts semantic aspects for long-trajectory analysis; paper’s “index and memory” are holder machinery |
| Algorithm | See below |
| Complexity / termination | Per-step packing; halt when three sub-components filled for each vertex |
| Worked miniature | \(C_i\): goals/instructions/purpose; \(R_i\): reasoning summaries, actions, tool calls, outputs; \(S_i\): knowledge usage, confidence, termination signals (§3.1) |
| Lace stamp | **KEEP-read** as semantic annotation; **FORBID-as-Lace-store** (A2) |
| Hands cite | Graphic D (one store); Piece 14 (no stored meaning); PAGE C |
| Map cite | **A2** |
| False friend | FM-A4 — ISR / trajectory memory ⇒ Lace store |
| Open gaps | Full ISR field schema beyond the three-tuple — paper tooling; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** A step vertex under construction (M-A3).  
2. **State.** Raw step content + context.  
3. **Steps.**  
   1. Pack \(C_i\) — Intent and Context (task goals, instructions, step purpose).  
   2. Pack \(R_i\) — Reasoning and Action (decision summaries, actions, tool invocations, outputs).  
   3. Pack \(S_i\) — Signal and Validation (knowledge usage, confidence, termination signals).  
   4. Attach \(I_i=(C_i,R_i,S_i)\) to the vertex; use as trajectory index/memory for diagnosis only.  
4. **Choice points.** Which summaries to retain — paper’s long-context motivation; not Lace authority.  
5. **Halt.** ISR attached for each step.  
6. **Output certificate.** Per-step ISR tuple (holder annotation).

```text
I_i := (C_i Intent/Context, R_i Reasoning/Action, S_i Signal/Validation)
# FORBID as Lace store / meaning fields
```

---

### M-A5 — Neural-invariant catalog from taxonomy

| Field | Content |
|---|---|
| Kind | neural-check / predicate catalog |
| Book locus | §3.2 · PDF **p.4**; App. A · PDF **pp.18–21** |
| Sighting method | `pdftotext -f 4 -l 4` and `-f 18 -l 21` (this pass); Pass 1 PAGE D |
| Eye-quote | “we define a comprehensive set of agent behavior neural invariants based on the taxonomy of agent failures (Table 1). Each failure mode is formalized as an invariant violation; Appendix A lists all invariant violations…” / “Unlike traditional program invariants… AGENT S COPE supports semantic conditions via neural functions.” |
| Inputs | Taxonomy modes (M-A1); ReAG \(G\) (M-A3) |
| Outputs | One invariant-violation family \(\mathrm{iv}_f\) per failure mode \(f\) (App. A.1–A.10) |
| Invariants | Predicates diagnose holder behavior; not Hoare/Core proofs; LLM judge replaces numeric thresholds with binary labels |
| Algorithm | See below |
| Complexity / termination | 10 mode families; halt when App. A catalog is available for Stage 2 checks |
| Worked miniature | Action Mismatch: \(\mathrm{iv}_{mismatch} ::= \exists n_t\in N_{action}, n_{t-1}\in N_{reason}: \neg\mathrm{aligned}(\ldots)\) (§3.2); App. A.1 Wrong Context with `failedToClarify` / `hallucinated` |
| Lace stamp | **KEEP-read** as steward predicates; **FORBID-as-Core-proof** (A3) |
| Hands cite | Piece 14 / Graphic B10; agent-control C06; PAGE D |
| Map cite | **A3** |
| False friend | FM-A5 — neural invariant text ⇒ Core proof / stored meaning |
| Open gaps | Prompt variants beyond Fig.1; new taxonomy → new \(\mathrm{iv}_f\) — paper extensibility; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Table 1 modes known; ReAG available.  
2. **State.** Empty invariant catalog.  
3. **Steps.**  
   1. For each failure mode \(f\), formalize \(\mathrm{iv}_f\) as an invariant-violation predicate over ReAG nodes (App. A).  
   2. Bind each predicate to neural functions (LLM calls with structured prompts) rather than purely symbolic checks.  
   3. Treat \(\mathrm{iv}_f=\mathrm{true}\) as “violation detected” for diagnosis — not as a Core theorem.  
   4. Keep catalog expandable when taxonomy grows.  
4. **Choice points.** Which neural function / model backs each check — modular per §3.2.  
5. **Halt.** Catalog of mode↔invariant pairs ready.  
6. **Output certificate.** Neural-invariant catalog (steward-only checks).

```text
for f in taxonomy:  iv_f := neural_predicate(ReAG, App.A[f])
# steward predicates — FORBID as Core proofs / stored meaning
```

---

### M-A6 — Neural function / LLM judge

| Field | Content |
|---|---|
| Kind | neural-check / local detection |
| Book locus | §3.2 · PDF **pp.4–5**; **Fig.1** · PDF **p.5** |
| Sighting method | `pdftotext -f 4 -l 5` (this pass); Pass 1 PAGE D |
| Eye-quote | “Each neural function is implemented as a call to a general-purpose LLM… with structured, task-specific prompts that incorporate ReAG information…” / “When implemented with an LLM judge, aligned() is treated as a binary classifier.” |
| Inputs | ReAG fields / placeholders (e.g. `step_purpose`, `tool_name`, `tool_arguments`); mode-specific prompt template |
| Outputs | Structured JSON judgment (e.g. `action_mismatch: true|false`, `reason`, `mismatch_type`) |
| Invariants | Local detection ≠ final attribution (M-A9); binary classifier ≠ acceptance / Hands override |
| Algorithm | See below |
| Complexity / termination | One LLM call per check instance; halt on valid JSON response (paper template) |
| Worked miniature | Fig.1 `aligned()` Action Mismatch prompt: impartial evaluator → JSON with `action_mismatch`, `reason`, `mismatch_type` |
| Lace stamp | **KEEP-read** as local detection tool; **FORBID-as-Hands-override** (A3) |
| Hands cite | Hands win; agent-control C06; PAGE D |
| Map cite | **A3** |
| False friend | FM-A6 — LLM judge verdict ⇒ acceptance / Hands override |
| Open gaps | Judge prompt variants beyond Fig.1; fine-tuned models — paper notes modularity; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** A candidate step pair / context window for mode \(f\); prompt template.  
2. **State.** Instantiated prompt from ReAG fields.  
3. **Steps.**  
   1. Fill placeholders from the annotated graph (purpose, expected action, tool name/args, …).  
   2. Call the LLM neural function with the structured prompt.  
   3. Parse binary (or structured) classifier output as a **diagnostic candidate**, not acceptance.  
   4. Attach reason / subtype fields as evidence for Stage 2 (M-A8).  
4. **Choice points.** Model choice / temperature — paper uses fixed eval hyperparameters in §4; not Lace law.  
5. **Halt.** Candidate violation boolean + evidence string.  
6. **Output certificate.** Local detection record (reviewable; Hands may refuse).

```text
prompt ← instantiate(Fig.1_or_App.A_template, ReAG_fields)
verdict ← LLM_judge(prompt)   # binary classifier candidate
# FORBID as Hands override / Core acceptance
```

---

### M-A7 — Stage 1 — ReAG construction workflow (§3.3 Fig.2)

| Field | Content |
|---|---|
| Kind | staged-pipeline / Shadow workflow |
| Book locus | §3.3 · **Fig.2** · PDF **pp.5–6** |
| Sighting method | `pdftotext -f 5 -l 6` (this pass); Pass 2 D7 |
| Eye-quote | “AGENT S COPE is deliberately structured into three stages, as illustrated in Figure 2.” / “ReAG construction converts runtime traces into a unified, annotated representation.” |
| Inputs | Runtime traces (single- or multi-agent; online/offline) |
| Outputs | Unified annotated ReAG for Stages 2–3 |
| Invariants | Stage 1 reduces LLM long-context burden; does not append to Lace |
| Algorithm | See below |
| Complexity / termination | As M-A2–M-A4; halt when annotated graph is stage-ready |
| Worked miniature | §3.3 bullet “ReAG construction…” + D7 Stage 0 on clipboard |
| Lace stamp | Shadow pipeline; **FORBID-as-Core-write**; **SILENT-for-Lace-append** |
| Hands cite | Graphic D append-only; PAGE C / D7 |
| Map cite | **A2** (construction); pipeline supports A1–A5 diagnosis |
| False friend | FM-A3 / FM-A4 — treating Stage 1 output as Core write or Lace memory |
| Open gaps | Multi-agent role packing detail — Wave B seed; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Raw trajectory available to AGENTSCOPE.  
2. **State.** Unstructured or partially structured traces.  
3. **Steps.**  
   1. Run M-A2 instrumentation.  
   2. Pack ISR (M-A4) and build ReAG (M-A3).  
   3. Emit annotated graph to Stage 2 — **do not** append to Graphic D.  
4. **Choice points.** Selective LLM parsing of implicit actions — paper’s reliability tradeoff.  
5. **Halt.** Stage-1 artifact = annotated ReAG.  
6. **Output certificate.** Fig.2 Stage 1 complete (Shadow only).

```text
traces → (M-A2 → M-A4 → M-A3) → annotated ReAG
# SILENT for Lace append; FORBID-as-Core-write
```

---

### M-A8 — Stage 2 — Failure-mode detection (candidates + evidence)

| Field | Content |
|---|---|
| Kind | staged-pipeline / holder diagnosis |
| Book locus | §3.3 · Fig.2 · PDF **p.5** |
| Sighting method | `pdftotext -f 5 -l 5` (this pass); Pass 2 D7 |
| Eye-quote | “Failure mode detection applies a set of neural invariant checks over the annotated graph.” / “Candidate failures are then retained with supporting evidence rather than immediately reduced to a single diagnosis, allowing multiple hypotheses to be maintained…” |
| Inputs | Annotated ReAG (M-A7); neural-invariant catalog (M-A5); neural functions (M-A6) |
| Outputs | Candidate failure set with supporting evidence (multi-hypothesis) |
| Invariants | Multiple candidates allowed; premature single-verdict collapse forbidden at this stage |
| Algorithm | See below |
| Complexity / termination | Roughly \(O(\#\mathrm{modes}\times\#\mathrm{relevant\,steps})\); halt when candidate set + evidence retained |
| Worked miniature | Each check identifies relevant steps/context ranges and runs a task-specific judge (§3.3) |
| Lace stamp | Holder diagnosis; **FORBID-as-Core-flags** |
| Hands cite | PAGE A/E/D; AGENTS.md review — evidence required |
| Map cite | **A3** + **A4** |
| False friend | FM-A1 / FM-A5 — candidates as Core flags / auto-blame |
| Open gaps | Per-mode context-window policy details — paper; Φ = `[GAP]` |

**Algorithm**

1. **Preconditions.** Annotated ReAG; invariant catalog.  
2. **State.** Empty candidate set.  
3. **Steps.**  
   1. For each failure mode, select relevant trajectory steps and context ranges.  
   2. Evaluate with the mode’s neural function / LLM judge (M-A6).  
   3. If violated, retain the candidate with supporting evidence.  
   4. Do **not** collapse to a single diagnosis yet; do **not** write flags into Core.  
4. **Choice points.** Which context window per mode — paper notes modes need different ranges.  
5. **Halt.** Candidate set \(C\) with evidence ready for Stage 3.  
6. **Output certificate.** Multi-hypothesis failure candidates (holder only).

```text
for mode in catalog:
  if iv_mode(ReAG):  C ← C ∪ {(mode, evidence)}
# retain set — FORBID as Core flags / auto-blame
```

---

### M-A9 — Stage 3 — Decisive-error judgment

| Field | Content |
|---|---|
| Kind | staged-pipeline / attribution |
| Book locus | §3.3 · Fig.2 · PDF **pp.5–6**; §5.1 · PDF **p.9**; App. C · PDF **p.22** |
| Sighting method | `pdftotext -f 5 -l 6` and `-f 22 -l 22` (this pass); Pass 1 PAGE F/X |
| Eye-quote | “The decisive error is defined not as the first anomaly, but as the failure whose downstream impact most strongly explains the degraded outcome.” / App. C: “the annotated ‘mistake step’ typically marks the earliest detectable issue… but it does not necessarily correspond to the most causally critical failure.” |
| Inputs | Candidate set \(C\) + evidence (M-A8); full trajectory; optional task context |
| Outputs | Single representative root-cause verdict, traceable to prior-stage evidence |
| Invariants | Decisive ≠ first anomaly; attribution remains diagnostic (↛ POINTER when-rule) |
| Algorithm | See below |
| Complexity / termination | Finite selection over \(|C|\); halt when one verdict selected with evidence link |
| Worked miniature | App. C Who&When case: annotated Step 4 insufficiency vs later stagnation loop (Steps 11/15) and orchestration BadRequest — later failures more decisive for outcome |
| Lace stamp | **KEEP-read** attribution discipline; **FORBID-as-POINTER-when** / Φ fill (A5) |
| Hands cite | Pieces 2, 5, 6; Graphic D2–D3, D6; PAGE F/X |
| Map cite | **A5** |
| False friend | FM-A8 — decisive error / first-mistake ⇒ POINTER when-rule; FM-A9 — appendix ⇒ Φ fill |
| Open gaps | Recovery-cutoff / first-failure-step alternative strategies mentioned in §3.3 — out of scope; Φ stays `[GAP]` |

**Algorithm**

1. **Preconditions.** Non-empty candidate set with evidence (or empty → no decisive failure).  
2. **State.** Candidates \(C\); full trajectory context.  
3. **Steps.**  
   1. Compare candidates by **downstream impact** on the degraded outcome (not chronological first hit).  
   2. Select the representative decisive error.  
   3. Keep the verdict traceable to Stage 2 evidence.  
   4. Refuse any mapping of this selection to POINTER when / arity / adjacency.  
4. **Choice points.** Paper notes strategies could extend to first failure or recovery cutoff — not Lace Φ.  
5. **Halt.** One attributable verdict (or explicit none).  
6. **Output certificate.** Decisive-error judgment (holder attribution; emission still `[GAP]`).

```text
decisive ← argmax_{c ∈ C} downstream_impact(c, outcome)
# KEEP-read attribution; FORBID as POINTER when-rule / Φ fill
```

---

## Waves B–D — deferred (one-line seeds only)

| Wave | Seed | Status |
|---|---|---|
| **B** | Multi-agent roles / role field \(r_i\) in ReAG vertices; orchestration traces (§3.3 “single-agent and multi-agent”) | Deferred |
| **C** | AgentErrata taxonomy-guided fault injection harness; Who&When baselines; Table 3 metrics as diagnosis-tool scores only (FM-A7) | Deferred |
| **D** | Tooling integration with modern agent frameworks; runtime online/offline deployment — not Core | Deferred |

Pass 3 success = Wave A cards complete + P3-M mesh + receipt. ASCII deferred.

---

## Steward test

Shoe in hands, or no.  
AGENTSCOPE’s machinery diagnoses the **holder**, not the lace.  
Taxonomy labels · ReAG · ISR · neural checks · staged verdicts are **Shadow procedures**.  
None of them emit POINTER.  
Φ stays `[GAP]`.
