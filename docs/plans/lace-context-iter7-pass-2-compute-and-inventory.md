# Iteration 7, pass 2 — the heterogeneous compute model, law-clean, and the global component inventory

**Status:** `[PROPOSAL]`. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [iteration 7 plan](lace-context-iteration-7-plan.md) §2 pass 2. Builds on [the shape](lace-context-iter6-pass-5-crate-proposal.md), [the environment](lace-context-iter6-pass-4-environment.md), [the target facts](lace-context-iter6-pass-2-findings.md) and [the distribution amendment](../kit/distribution-model.md). The four host shelves are cited by their G-III cards; none is edited.
**The human asked for** *"a combined heterogeneous compute model across wasm64, WebGPU, WebNN, and WGSL, parallel / concurrent."* This pass maps source constraints, proposed roles and parallelism, and cited costs. A proposed arrangement is not a measured implementation or an accepted ruling.

**Current qualification, 2026-09-20 ([update pass 2, P2-03](repo-update-pass-2-evidence.md#2-current-finding-register)):** the one-writer, host-boundary and frontier arrangements below are proposed design premises, with R5/R9 and their proof obligations still open. An empty import section is a structural observation, not a proof of σ's permitted reads. Finite offline observations do not prove perpetual availability, and the proposed production host has no accepted exception to the current install law. No protocol, ABI, gate or ruling is selected by these corrections.

---

## 1. Source constraints and proposed compute premises

| Constraint or premise | Source / status | Consequence and limit |
|---|---|---|
| **One writer in this proposal** | E2 types σ's inputs, not the number of executing threads; manifest open #5 leaves concurrency unstated. §3/R9 propose one writer | Every design below assumes one thread calls `continue`. This is not a source prohibition derived from the function type |
| **No host imports in the proposed module** | sheet H proposes this boundary; F-S3 separately restricts σ's reads | No imported host function is callable. Host independence still requires the permitted-input/dataflow proof and R5 trust premises; the import list alone does not establish it |
| Views never write back | S3.4 `π`; S6 `[X]` 6 | GPU and NN work is `π` work: it reads a prefix of `L` and produces bytes the strand never sees |
| Star ≠ neuron; no train; no embed store; no GNN as Core | staking Petersen–Zech / Xiao–Zhu FORBID rows | **WebNN has no Core role.** Its only candidate role is a projection engine (§2.4), and that sits on a recorded conflict |
| Append-only, indices forever | Piece 6 fixes retained history; §3 proposes publication/read ordering | An unchanged committed prefix supports the proposed read boundary. Whether concurrent readers observe complete entries depends on the stated publication, memory-order and carrier premises; append-only alone is not that proof (R9) |

---

## 2. The four, one at a time

### 2.1 wasm64 — Core, the one writer

The module proposed by the shape is `#![no_std]` → `wasm64-unknown-unknown`, with exports `continue · star_view · view_1d · view_2d · view_3d · memory` and no imports. This model places it in **one dedicated Worker** (`W`) to keep append/view computation off the UI thread; no responsiveness result has been measured here. The **frontier** is the proposed publication marker, not all the shared data: readers use the represented prefix of `L` through shared memory or copies, under the different premises in §3.

### 2.2 WebGPU — Layer III projection compute and rendering

Two jobs, both `π`:

| Job | Input | Output | Parallel over |
|---|---|---|---|
| **Render** the view the module produced (`view_3d` bytes → vertex buffer → draw) | view bytes from `W` | pixels | vertices |
| **Compute a view** on the GPU instead of in the module — a star layout, a crossing count, a density field over `[0, frontier)` — when the module's `view_*` would be too slow on the CPU | a **copy** of `L[0, frontier)` uploaded as a storage buffer | view bytes | entries / stars |

The second job is where the human's V8 result (*a working bounded WASM→WebGPU→WASM composition*, pass 1 memory record) already lives. Under the law it is legal exactly when: the buffer is a copy, the shader writes only its output buffer, and discarding every GPU buffer loses no authoritative fact (branch-contracts `view_*` cards). On the Pixel 9a today it needs Advanced Protection off and three flags (T11) — acceptable for the human's own devices, **not** a property of the family.

### 2.3 WGSL — the shaders for 2.2

Shader language only. G-III-2: *WGSL ≠ WORD; module/entry ≠ strand/Φ; address space ≠ Lace store.* A WGSL compute shader that computes a layout is `π`; a WGSL shader that "decides a pointer" is F-S3 refuted before it is written.

### 2.4 WebNN — no Core role; one candidate Layer III role on a recorded conflict

| Candidate role | Legal? | Why |
|---|---|---|
| Learn or apply the schedule σ | **No** | F-S2 (not learned), F-S1 (no side state), Petersen–Zech FORBID train-w-as-history |
| Word identity (embedding two spellings to decide `PIE = pie`) | **No** | F-G; C05 *"a spelling match is not permission … choose a star handle"*; G1 is the human's |
| A **projection engine**: compute a layout of stars for the 3D picture from a copy of `L[0, frontier)`, recomputed on demand, never persisted | **Conditional proposal — R10 reframed** | Manifest Reconciliation superseded the old Piece-13 permission for *"embedding spaces … only as disposable views"*. Current SM-C15 permits read-only projection but grants no graph/embedding/definition-table store; SM-C16 forbids embedding-as-truth and the staking law still forbids an embedding store. R10 therefore no longer asks which of two governing texts wins. It asks a narrower app-design question: whether WebNN may be used as a **non-authoritative projection computation** whose output is derived from recorded Lace, discarded, and never treated as relation truth. That proposal remains unaccepted and may still be rejected. |
| Steward tooling (classify a candidate σ, summarise a shelf) | Layer III steward, outside the app | C06: a model helping the project is a steward; its weights are not Lace's design. Not part of the installed app |

**Honest line:** R10 is now an application/design proposal, not a manifest-vs-staking authority conflict. If the view-only proof is not accepted, WebNN is absent from the shipped app and the heterogeneous model is *three*, not four. That is a legitimate outcome and this pass does not soften it.

---

## 3. Where the parallelism is, on the two surfaces

```
   UI thread            Worker W (Core)             Worker(s) R (readers)          GPU
   ─────────            ───────────────             ─────────────────────          ───
   hopper: 1 arrival ─► continue(bytes)                                             
                        append · publish frontier ──► read L[0, frontier)  ─────► upload copy
                                                      view bytes (CPU)  ────────► or compute view (WGSL)
   canvas ◄──────────────────────────────────────────────────────────────────── render
   SW: precache · (R3 ii) I/O worker: append-only log ◄── W's host side, write-through
```

| Surface | `crossOriginIsolated` | SharedArrayBuffer / wasm threads | What is parallel |
|---|---|---|---|
| **githack (dev)** | `false` (T13, `HUMAN_REPORTED`) | no | UI ‖ W ‖ GPU only. `R` cannot share `W`'s memory; it works on **copies** `W` posts (transferable buffers), which the human's own note already prescribes (`docs/clock/wasm/README.md`) |
| **business domain on GitHub Pages (unaccepted production proposal; hosting conflict)** | The original proposal assumes no server-supplied isolation headers and considers service-worker synthesis of `COOP: same-origin` + `COEP: require-corp`; see the current [distribution qualification](../kit/distribution-model.md) | **conditional**: the earlier launcher remedy is a memory-recorded report, not evidence that this proposed host or an installed WebAPK on Android 17 / Chrome 151 is isolated. **`UNESTABLISHED` → P-COI**, separately from hosting acceptance | If isolation and the R9 premises hold, the proposal has `R` read `W`'s shared memory below the frontier, with one writer. No production permission follows |

**The frontier protocol (`[PROPOSAL]`, ruling R9).** The proposed arrangement has `W` alone write `L` and the frontier, publishing the new frontier with a release-store after a complete append; readers acquire-load it and read only the resulting `[0, frontier)` prefix. Piece 6 supplies prefix immutability. It does not select that publication mechanism or prove its memory-order and carrier premises. The claimed absence of locks, epochs or retries remains conditional on those premises and their proof; R9 is untaken. This paragraph records the proposal, not a concurrency law derived from append-only.

---

## 4. Costs, stated

| | Cost | Source |
|---|---|---|
| wasm64 bounds checks | 10–100%+ over wasm32 on every memory access, including `R`'s reads | T8 |
| Copies on githack | each view is a copy of `L[0, frontier)`; at the 16 GB ceiling that is not a copy, it is a plan that fails — views must be **windowed** (a range of `L`, not all of it) on the dev surface | T7, T13 |
| COOP/COEP via SW | first navigation is not isolated; the page must reload once under SW control — inside a WebAPK this happens at install; a cold start after an update may need one reload | `[INFERENCE]`; P-COI |
| GPU on the family | flags + Advanced Protection off on the 9a today | T11 |
| WebNN | possibly zero — if R10 excludes it | §2.4 |

---

## 5. The show-your-work gate, as a machine-checkable list (prepared for iteration 7 pass 5)

The human: *"I will link to my business domain only what I can prove under a show your work mathematical model."* The seven proposed checks below mix artifact inspection, bounded device observation and human review. Their distinct scopes do not combine into a proof of the entire app or acceptance of the hosting proposal.

| # | Check | How it is shown | Machine-checkable? |
|---|---|---|---|
| G1 | The build has **zero** crates outside the repo | inspect declared dependencies and record the pinned nightly / `rust-src` identity; relate those inputs to the exact built artifact | partial structural evidence only: a path-only `Cargo.lock` and toolchain IDs do not establish complete linked-code/compiler-runtime provenance. R1, A4 and the build-accounting obligations remain open ([target record](../clipboards/rust-target-clipboard.md)) |
| G2 | The module's **import section is empty** | parse the `.wasm` binary's import section; expect zero entries | **yes, without running it**, for import absence only; F-S3 still needs proof that σ reads only its permitted inputs, with R5 trust premises |
| G3 | The module's export section is exactly `{continue, star_view, view_1d, view_2d, view_3d, memory}` | parse the export section | yes |
| G4 | The **D1 witness replays byte-identically** through the built module | identify the accepted encoding and exact build artifact; feed `PIE, DESSERT, PIE, WHOLE, CUSTOMER`; dump `L` and compare all eleven final rows. Record an independent replay separately | yes for that bounded final-row comparison, not full E7 discharge. Any intermediate-frontier claim additionally needs [M3's S4.3 partition premise](reduction-pass-2-execution-model.md#x5--theorems); final equality alone does not prove it |
| G5 | **Finite offline exercise**, distinct from the requested “offline forever” goal | record duration, device/browser, install/cache conditions, exercised paths and network observations; inspect the release's resource coverage | bounded device/artifact evidence only; no finite run proves perpetual offline availability |
| G6 | The release is **pinned**: the served files' hashes equal the tagged commit's | hash the deployed tree against the release SHA | yes |
| G7 | The accepted σ **is** the built σ | locate the exact accepted text/revision and establish its correspondence to the inspected source and exact built artifact, with build provenance | not established by commit ancestry or re-reading alone: a descendant can change σ. The accepted-content/source/artifact correspondence remains a separate proof and review obligation |

**G2 limit:** the absence of imports does not prevent a module from basing a decision on bytes outside the admitted `L` and `v`; sheet H already records host access to exported memory. The required behavior proof and trust scope therefore remain separate from the binary import check.

The original campaign proposed G1–G7 as inputs to a later promotion rule; that work was transferred to the reduction ([iteration 7 receipt](lace-context-iteration-7-receipt.md)). The current [distribution model](../kit/distribution-model.md) keeps the production amendment unaccepted and the hosting conflict visible. A complete checklist does not grant an exception to the live install law.

---

## 6. The global component inventory

*"Describe the entire global systems manifest of components consistent with the global ASCII systems diagram."* This pass inventories the components on its companion baseline (Spine, Contract map, Fence, G-III cards, Pass 26) or introduced by the shape. **Current ownership qualification, 2026-09-20:** a documentation station, human decision owner and future implementation owner are different roles. The table's station column does not establish complete code ownership; C6's σ implementation responsibility remains unassigned, and C7 cannot silently absorb it.

| # | Component | Layer / Contract | Authority | Depends on | Depended on by | Evidence state | Gate | Owner station |
|---|---|---|---|---|---|---|---|---|
| C1 | `L` — the append-only line | I | Graphic D · Piece 6 | region (C14) | everything | SOURCE | R7 | law (prose) / — (code) |
| C2 | WORD entry | I | D2 · Piece 4 | C1 | C6, C8 | SOURCE | R6 encoding | — |
| C3 | POINTER entry | I | D2 · Piece 5 | C1 | C6, C8 | SOURCE · arity Q2 CONFLICT | R6, Q2 | — |
| C4 | `Arrive` | I | S2 · Q0 CLOSED | C2 | C7 | SOURCE | R7 | — |
| C5 | `Φ_morphism` | I | S4.2 | C3 | C7 | SOURCE | R7 | — |
| **C6** | **`Φ_schedule` = σ** | **I** | **S4.2 = `[GAP]`; environment E2–E6** | C1–C5 | admitted sections for C7; owner edge unresolved | **`[GAP]` — no recorded candidate established in-region; E5 includes BLOCKED cases** | **R7 acceptance; explicit ownership reconciliation** | **law · human (decision); implementation unassigned** |
| C7 | `Continue` / `route/` | I | S4.3; route card | C4/C5 section layouts; admission obligation from C6, not an owned scheduler | C10 | `[PLAN]` | R7; no hidden decision in an input constructor | maps (card) |
| C8 | `Star(v)` membership / `view_star/` formation reading | I (view) | S3.1 membership is partial; card also requires route/participation | C1 | C9, C16 | `[PLAN]` | R7; G1 for identity | maps |
| C9 | `π` / `view_proj/` | III | S3.4; card | C1, C8 | C16, C17 | `[PLAN]` | R7 | maps |
| C10 | `core/` composition | I | card; Piece 2 | C7–C9 | C13 | `[PLAN]` | R7 | maps |
| C11 | `strand/` · `word/` · `pointer/` | I | cards | C14 | C7–C9 | `[PLAN]` | R7, R6 | maps |
| C12 | sheet T — target | III / toolchain | wasm-spec-3 banner (sealed); T1–T8 | A1–A4 | every build | SOURCE (web) · device `UNESTABLISHED` | R1, R2 | maps |
| C13 | sheet H — host boundary | II · III | manifest seams; P-T8 | C10, C12 | C15, C16 | `[PLAN]` | R5 | maps |
| C14 | sheet R — region | I (carrier) | Piece 6; F-Carry | C12 | C1 | `[PLAN]` | R4 | maps |
| C15 | sheet C — carrier / log | I (carrier) · III (writer) | Piece 6 *"single append-only log"*; distribution amendment §4 | C13; A5 | offline persistence | `[PLAN]` · tension named | R3 (**now pressed by the amendment**) | maps |
| C16 | Shell: hopper · canvas · dispatcher | III | sheet S; install law; amendment | C13, C18, C19 | the user | install `OBSERVED` (T16); offline `NOT_RUN` | — (may build now) | renderer |
| C17 | Renderer (WebGPU + WGSL) | III | G-III-1, G-III-2 | C9 bytes or a copy of `L` | C16 | V8 composition `HUMAN_REPORTED`; 9a flags T11 | — | renderer |
| C18 | Service worker: precache-all · offline · (COOP/COEP synthesis) | III | amendment §4; A6 (requested) | release manifest (C21) | C16, C20 | `NOT_RUN`; COI `UNESTABLISHED` | P-COI; G5 | renderer / kit |
| C19 | Web app manifest + icons | III | kit `manifest.webmanifest` (exists for the clock) | — | install | `OBSERVED` for the clock app | — | renderer |
| C20 | Workers `W` (Core host) · `R` (readers) · I/O (log) | III | §3 | C13, C15, C18 | C16 | `[PROPOSAL]` | R9 (frontier protocol) | renderer |
| C21 | Release: pinned SHA on githack (dev) / tagged glacier release on the domain (unaccepted production proposal) | III / distribution | githack law + proposed amendment | G1–G7 | C18 | dev `OBSERVED`; production `NOT_RUN`, hosting conflict open | proposed promotion rule; no hosting exception accepted | kit |
| C22 | NN projection engine (WebNN) | III (view) | G-III-3; §2.4 | copy of `L` | C17 | `[PROPOSAL]` on a recorded conflict | **R10** | renderer |
| C23 | Probes P-64a/b/c · P-CAR · P-INST · **P-COI** | III steward | pass 2 §4 | device | C12, C15, C18 | all `NOT_RUN` | human runs | renderer / kit |
| C24 | The environment (E1–E7) | steward | iteration 6 pass 4 | Hands, S1–S6, shelves | acceptance of σ | `PROVED_WITHIN_SCOPE` (E4) | — | maps |
| C25 | The checker (mechanised E7 + G2/G3/G4) | steward · III | iteration 7 pass 4 (planned) | C24; the built `.wasm` | G-gate | planned | — | maps → renderer |
| C26 | Stations · `coord.sh` · `check-docs.sh` · templates · control prompt | steward | kit / coord | — | every commit | ADVISORY (iteration 2) | F1–F7 | kit / coord |
| C27 | Nine reference shelves (G-III-1…9) | III cite-only | clipboards | — | E3 fences | staked | — | clipboards |
| C28 | Requested references A1–A6 + **A7** GitHub Pages custom-domain docs (headers, caching) + **A8** HTML spec *cross-origin isolation* + **A9** WASM threads/atomics (confirm whether shared memory is in Spec 3.0 or a separate proposal) | III cite-only | this pass | the human attaches | C12, C18, C20 | `[BLOCKED]` | one per reply | clipboards |
| C29 | The four graphics | Hands | — | — | all | SOURCE | — | graphics |
| C30 | Manifest + ASCII companion (Pass 26 tip) | law / maps | — | C29 | all | SOURCE / reading | pass 3 audit | law / maps |
| C31 | `pointer-emission.md` | law | the human | C29 | C6 | DRAFT · not accepted · OPEN #13 | R7 | **law · human only** |
| C32 | Memory / conversation record | — | iteration 6 pass 1 | — | nothing (quarantined) | `[PROPOSAL]` | — | maps (note-only) |

**Holes identified at this pass:** C6 (acceptance and unassigned implementation ownership); C15's writer is Layer III (R3); C18's isolation is unestablished (P-COI); C22 sits on a conflict (R10); C28 recorded the attachment queue at that time. The [current rulings brief](reduction-pass-5-rulings-brief.md) carries later source/queue dispositions. The table does not establish that every implementation responsibility has an owner merely because it names a station.

---

## 7. Rulings this pass adds to the brief

| R | Question | Options |
|---|---|---|
| **R9** | Frontier protocol: may readers read `[0, frontier)` concurrently with the single writer, on the strength of append-only alone? | yes as stated / yes with a stated memory-order proof obligation / no — readers run only between appends |
| **R10** | May WebNN be used in the shipped app solely as a non-authoritative, recomputed projection computation under SM-C15 / SM-X-PLAT / SM-X-L3, with no embedding store and no inferred relation truth? | yes under an explicit view-only proof / no — WebNN absent from the app |
| **R11** | Is COOP/COEP synthesis by the service worker an acceptable production mechanism for isolation on the domain, given Pages sets no headers? | yes, after P-COI / no — copies only, no threads |

## 8. Coverage

| | Fraction |
|---|---|
| The four named technologies placed under the law | 4 of 4 (one conditionally absent) |
| Components inventoried | 32. The original “owner 32 of 32” counted station/decision coverage; it is not a code-ownership result. C6 implementation ownership is unassigned. Five hole categories were named at the original pass; later dispositions are in the current brief |
| Companion boxes without an inventory row | 0 found (Spine, Contract map, Fence, G-III-1…9, Pass 26 additions) — pass 3 re-checks this as a diagram |
| Hardware observed by this session | 0 |

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

Many hands may look at the lace at once. One hand ties. Emission remains `[GAP]`.
