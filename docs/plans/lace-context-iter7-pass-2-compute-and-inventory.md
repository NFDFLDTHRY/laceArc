# Iteration 7, pass 2 — the heterogeneous compute model, law-clean, and the global component inventory

**Status:** `[PROPOSAL]`. **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Method:** [iteration 7 plan](lace-context-iteration-7-plan.md) §2 pass 2. Builds on [the shape](lace-context-iter6-pass-5-crate-proposal.md), [the environment](lace-context-iter6-pass-4-environment.md), [the target facts](lace-context-iter6-pass-2-findings.md) and [the distribution amendment](../kit/distribution-model.md). The four host shelves are cited by their G-III cards; none is edited.
**The human asked for** *"a combined heterogeneous compute model across wasm64, WebGPU, WebNN, and WGSL, parallel / concurrent."* This pass says what the law lets each of the four do, where the parallelism actually is, and what it costs. It says **no** where the law says no.

---

## 1. What the law fixes before any hardware is mentioned

| Fixed | By | Consequence for compute |
|---|---|---|
| `L` has **one writer** | σ is a function of `(L, v)` (E2); manifest open #5 *"one strand suggests a single writer"*; on both deployment surfaces the module is single-threaded unless isolated (§3) | *parallel* can never mean parallel appends. Every design below has exactly one thread that calls `continue` |
| Core has **no host imports** | sheet H; F-S3 | no GPU, NN, or I/O call originates inside the module. Heterogeneous compute is **Layer III orchestration around** a module that knows nothing of it |
| Views never write back | S3.4 `π`; S6 `[X]` 6 | GPU and NN work is `π` work: it reads a prefix of `L` and produces bytes the strand never sees |
| Star ≠ neuron; no train; no embed store; no GNN as Core | staking Petersen–Zech / Xiao–Zhu FORBID rows | **WebNN has no Core role.** Its only candidate role is a projection engine (§2.4), and that sits on a recorded conflict |
| Append-only, indices forever | Piece 6 | readers need no locks: a reader that reads only below a published frontier index can never observe a torn or reused entry. **The Hands make concurrent reading free** |

---

## 2. The four, one at a time

### 2.1 wasm64 — Core, the one writer

The module from the shape: `#![no_std]` → `wasm64-unknown-unknown`; exports `continue · star_view · view_1d · view_2d · view_3d · memory`; imports none. It runs in **one dedicated Worker** (`W`), never on the UI thread, so a long append or view never blocks the hopper. Its only shared state with anyone is **the frontier** — the index of the next free position — which `W` publishes after each successful append.

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
| A **projection engine**: compute a layout of stars for the 3D picture from a copy of `L[0, frontier)`, recomputed on demand, never persisted | **Conditional — R10** | manifest Piece 13 permits *"embedding spaces … only as disposable views"*; the staking law forbids *"embedding store"*; the branch-contracts already record this as the **view-store conflict** (source difference 3). An NN-computed layout that is recomputed from `L` each time and never stored is a view under the manifest's reading and a store under the law's if it is ever cached. **The human rules which reading holds** |
| Steward tooling (classify a candidate σ, summarise a shelf) | Layer III steward, outside the app | C06: a model helping the project is a steward; its weights are not Lace's design. Not part of the installed app |

**Honest line:** if R10 goes the law's way, WebNN is absent from the shipped app, and the heterogeneous model is *three*, not four. That is a legitimate outcome and this pass does not soften it.

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
| **business domain on GitHub Pages (prod)** | `false` from the server — Pages sets no custom headers ([distribution-model.md](../kit/distribution-model.md) §3) — **unless the service worker synthesises `COOP: same-origin` + `COEP: require-corp` on its own responses**, after which the next load is isolated | **conditional**: the human recorded this exact fix as the remedy for `crossOriginIsolated: false` on the launcher (2026-09-04, pass 1 memory record) — `[INFERENCE]` that it holds inside an installed WebAPK on Android 17 / Chrome 151; **`UNESTABLISHED` → probe P-COI** | if isolated: `R` reads `W`'s shared memory below the frontier with no copy; wasm threads for view work. **Still one writer** |

**The frontier protocol (`[PROPOSAL]`, ruling R9).** `W` is the only thread that writes `L` or the frontier. After an append completes, `W` stores the new frontier with a release-store. Any reader loads the frontier with an acquire-load and reads only `[0, frontier)`. Because nothing below the frontier is ever rewritten (Piece 6), readers need no lock, no epoch, no retry. This is the entire concurrency model, and it is a consequence of append-only rather than a design on top of it. It touches manifest open #5 and is therefore the human's to rule, not the agent's.

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

The human: *"I will link to my business domain only what I can prove under a show your work mathematical model."* Six of the seven checks below are mechanical on the built artefact; none needs Core to be believed.

| # | Check | How it is shown | Machine-checkable? |
|---|---|---|---|
| G1 | The build has **zero** crates outside the repo | `Cargo.lock` lists only path dependencies; the build receipt names the pinned nightly and `rust-src` hash | yes |
| G2 | The module's **import section is empty** | parse the `.wasm` binary's import section; expect zero entries | **yes, without running it** — this makes F-S3 a binary fact |
| G3 | The module's export section is exactly `{continue, star_view, view_1d, view_2d, view_3d, memory}` | parse the export section | yes |
| G4 | The **D1 witness replays byte-identically** through the built module | feed `PIE, DESSERT, PIE, WHOLE, CUSTOMER`; dump `L`; compare to the accepted encoding of D1's eleven rows | yes — this is E7 STEP 4 run by the machine |
| G5 | **Offline forever**: the SW precache manifest covers every URL the app fetches | install; airplane mode; exercise every screen; zero network requests logged | yes, on device |
| G6 | The release is **pinned**: the served files' hashes equal the tagged commit's | hash the deployed tree against the release SHA | yes |
| G7 | The accepted σ **is** the built σ | the acceptance sentence's commit ⊆ the build's commit; the human re-reads | no — human |

Nothing moves to the domain until G1–G7 are on a receipt with hashes. That is the promotion rule this iteration's pass 5 will formalise for the human to take.

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
| C21 | Release: pinned SHA on githack (dev) / tagged glacier release on the domain (prod) | III / distribution | githack law + amendment | G1–G7 | C18 | dev `OBSERVED`; prod `NOT_RUN` | pass 5 promotion rule | kit |
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
| **R10** | Is an NN-computed, never-persisted, recomputed-from-`L` layout a *view* (manifest Piece 13) or an *embedding store* (staking law)? | view — WebNN admitted as C22 under the `view_*` card's proof shape / store — WebNN absent from the app |
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
