# LAB SOURCE ARCHITECTURE — Pass 1 findings

**Status:** EXECUTED 2026-09-21.  
**Campaign:** Lab Source Architecture.  
**Pass:** 1.  
**Planning product:** [lab-source-architecture-pass-1-plan.md](lab-source-architecture-pass-1-plan.md).  
**Execution start:** main at `09be228b1ddf82790aa4bc6a840bd667b45ed59f`.  
**Final semantic commit:** `f82903f3662f72cdc8535fd8cb9119ce2d7bea85` — global ASCII linear Pass 31.  
**Receipt base:** `2354af7463c0818d0838ac8974a0b9a26dcb440f`.  
**Implementation:** none. No `src/`, Cargo/Rust implementation, runtime branch, or Core code.  
**Acceptance:** ABSENT. `docs/pointer-emission.md` remains unaccepted.  
**Current Core-adjacent gap:** exact sampling-derived retention/materialization.

Pass 1 aligned the repository around the source architecture the human specified:

```
behavioral goals ──source clipboards──┐
research/books ───source clipboards───┼──> laceArc LAB
platform/hardware ─source clipboards──┘        |
                                               v
                              propose / attack / reproduce / test
                                               |
                                  falsify / retain bounded evidence
                                               |
                                               v
                                             LACE
```

The pass did **not** select which machinery ultimately wins.


**Repair notice, 2026-09-21 (`Claude-Projection`, maps).** This file was committed with **damaged LaTeX escapes**, and the plan carried a literal **backspace byte (0x08)** — the only control character in the tree. `\boxed{` had become `<BS>oxed{`, `\text{` had become `<TAB>ext{`, `\to` had become `<TAB>o`. **12 escapes restored across the two files; the control character removed.** Each source string is unambiguous — no other LaTeX produces those bytes — so this is a decode, not a content edit. **No word of the pass was changed.**

**Cause, and how the next pass avoids it.** The damage is consistent with writing the file through a path that interprets backslash escapes — an unquoted heredoc body, `echo -e`, or a format string. The safe pattern is a **quoted** heredoc delimiter (`<<'EOF'`) or a direct file write, neither of which touches `\t`, `\b` or `\n`. **Unrepaired, every future pass of this campaign that writes math will reproduce this**, and it landed on the one line the pass chose to `\boxed{}` — its own critical rule.

---

## 1. Corrected baseline

The first draft of the Pass-1 plan made a bad inference from filenames: it treated “clipboard” as “a file named `*-clipboard.md` inside `docs/clipboards/`.”

The rebuilt census walked the complete current-main recursive tree (**685 tracked blobs**, not truncated) and established that the behavioral-goal source clipboards already exist under `docs/clock/`.

Pointable evidence:

| Source | Existing clipboard / product | Existing provenance |
|---|---|---|
| HCC-A | [clock/hcc-a-systems-manifest.md](../clock/hcc-a-systems-manifest.md) | [clock/passes/](../clock/passes/README.md); the product explicitly calls itself “this clipboard” |
| Coffee Cup | [clock/coffee-cup-systems-manifest.md](../clock/coffee-cup-systems-manifest.md) | [coffee-cup passes](../clock/passes/README.md) |
| Water / Dual Proofing | [clock/water-systems-manifest.md](../clock/water-systems-manifest.md) | [water passes](../clock/passes/README.md) |
| H×C×W | [clock/train-h-c-w-systems-manifest.md](../clock/train-h-c-w-systems-manifest.md) | train passes; literal Clipboard column points to the three products |

No duplicate HCC-A, Coffee Cup, or Water file was created under `docs/clipboards/`.

---

## 2. Source-role census

### Behavioral-goal sources

| Source | Clipboard route | Candidate machinery retained |
|---|---|---|
| HCC-A | [HCC-A clipboard](../clock/hcc-a-systems-manifest.md) | data pipeline; RIC/PFC dual shaft; compiler; ledger; M/E/ISL/B; feedback; knobs; failure modes |
| Coffee Cup | [Coffee Cup clipboard](../clock/coffee-cup-systems-manifest.md) | C1–C5 causality/intervention loop; packets; shrinking intervention window; aftermath recirculation |
| Water / Dual Proofing | [Water clipboard](../clock/water-systems-manifest.md) | OBS/DELTA/UNK/INVALID; River model; FSM/interface; crossing/proofing machinery |
| H×C×W composition | [train comparison](../clock/train-h-c-w-systems-manifest.md) | candidate couplings, meshes, timing relationships, and failure conditions |

**Authority:** behavioral goals + source constraints + candidate machinery.  
**Not granted:** automatic runtime decomposition, Core rows, retention rule, or acceptance.

### Research / book / paper sources

| Source | Clipboard family | Candidate machinery / evidence class |
|---|---|---|
| Kauffman | [Kauffman clipboard](../clipboards/kauffman-4ed-clipboard.md) + mechanisms/ASCII | hitch/topology/diagram machinery; invariants; false friends |
| Rowlands | [Rowlands clipboard](../clipboards/rowlands-zero-to-infinity-clipboard.md) + mechanisms/ASCII | empty-start/structural mathematics and rejected imports |
| Xiao–Zhu | [Xiao–Zhu clipboard](../clipboards/xiao-zhu-foundations-clipboard.md) + mechanisms/ASCII | token/model/inference machinery and contrast evidence |
| Petersen–Zech | [Petersen–Zech clipboard](../clipboards/petersen-zech-clipboard.md) + mechanisms/ASCII | approximation/deep-learning mathematics and limits |
| AgentScope | [AgentScope clipboard](../clipboards/agentscope-clipboard.md) + mechanisms/ASCII | agent failure/diagnostic machinery |

**Authority:** source mathematics, algorithms, mechanisms, constraints, negative evidence.  
**Not granted:** behavioral-goal authority or automatic Core import.

### Platform / hardware / toolchain sources

| Source | Clipboard route | Physical/execution evidence class |
|---|---|---|
| WebAssembly 3 | [Wasm clipboard](../clipboards/wasm-spec-3-clipboard.md) | memory/address/operator/validation/target facts |
| WebGPU | [WebGPU clipboard](../clipboards/webgpu-clipboard.md) | host/GPU execution machinery and device constraints |
| WGSL | [WGSL clipboard](../clipboards/wgsl-clipboard.md) | shader-language execution machinery |
| WebNN | [WebNN clipboard](../clipboards/webnn-clipboard.md) | host-NN machinery and API constraints |
| rustc | [rust-target clipboard](../clipboards/rust-target-clipboard.md) | target/toolchain mechanisms and source facts |
| Cargo build-std | [Cargo clipboard](../clipboards/cargo-build-std-clipboard.md) | build-std behavior, crate-list/toolchain constraints |

**Authority:** executable primitives, target/toolchain facts, resource ceilings, physical feasibility.  
**Not granted:** missing Lace semantics or retention/materialization.

---

## 3. Execution by station

| Station | Semantic commit | Result |
|---|---|---|
| law | `0d9bf782aeae3c19343c70460a9d327c4c5455be` | clipboard defined as distributed source→lab interface; AGENTS/references/root doors aligned |
| hologram | `dd13342cdc7af3620fa1c9830f3aa9b17792c879` | HCC/Cup/Water existing clipboards explicitly preserve candidate machinery; H×C×W candidate composition |
| clipboards | `fc28a5e8784f42999696ced1bd1c2e6b56eb5df7` | directory door now routes distributed clipboard system; KEEP/FORBID = authority fence |
| prompts | `579ada2f0719b70122ef74b4c7034e4410d517df` | mandatory context tells source→clipboard→lab story; current selector drift removed |
| kit | `c605c82a89ad5e0a10a552ce577dae6b7a0d10f1` | one live selector-era line corrected; transport history untouched |
| maps | `bccd544fe52cfbed3a3ca28067fadd9bbc9b13d2` | reason model: adjacent/not-Core now authority fence, not ban on lab testing |
| maps | `f82903f3662f72cdc8535fd8cb9119ce2d7bea85` | **global ASCII linear Pass 31**, final semantic edit |

Station claims/releases were separate coordination commits. No gearing shaft was needed.

---

## 4. What Pass 31 changed

Pass 31 adds a laboratory context around the existing Pass-30 machine:

- behavioral-goal clipboards → lab;
- research/book clipboards → lab;
- platform/toolchain clipboards → lab;
- lab → propose/attack/reproduce/test/falsify/retain bounded evidence;
- Lace remains the experimental substrate;
- hardware/platform reality constrains what can physically run;
- all source-family arrows terminate at the **lab**, not directly at Contract I.

Pass 31 explicitly preserves Pass 30:

- one authoritative append-only 1D Lace;
- WORD / POINTER;
- root / RootTouch;
- binary Join;
- derived 2D position×scale sampling;
- retained POINTER topology;
- derived star/search;
- exact retention/materialization remains `[GAP]`;
- acceptance absent;
- no implementation authorization.

---

## 5. Drift found and repaired

1. **Filename ontology:** initial Pass-1 draft falsely inferred missing H/C/W clipboards from directory naming. Rebuilt plan corrected before execution.
2. **Law entrance:** source machinery was not yet explicitly described as legitimate candidate lab input across the distributed clipboard system.
3. **Clock entrance:** H/C/W preambles emphasized “interpretation/not required” strongly enough to risk demoting their source-described machinery.
4. **Clipboard door:** described only its own ten campaigns and could be read as the whole clipboard ontology.
5. **Mandatory context:** two live current statements still named the arbitrary non-root relation/sample selector as the active gap.
6. **Kit control:** one live current line still named the selector-era gap.
7. **Reason model:** “adjacent” was defined as useful for reader/steward only, too narrow for candidate machinery.
8. **Global companion:** Pass 30 had the Lace machine but not the full source→clipboard→lab→Lace→platform context.

Historical receipts were not rewritten to pretend they always used the new source-role taxonomy.

---

## 6. Falsifier board

| Falsifier | Result |
|---|---|
| F1 duplicate H/C/W clipboard created | **NO** |
| F2 filename/directory used as ontology | **NO after rebuild** |
| F3 behavioral machinery erased | **NO** |
| F4 required H×C×W gearbox restored automatically | **NO** |
| F5 research demoted to metaphor only | **NO** |
| F6 platform demoted to projection only | **NO** |
| F7 platform promoted to semantics | **NO** |
| F8 clipboard/file existence treated as acceptance | **NO** |
| F9 history flattened | **NO** |
| F10 Pass 30 damaged | **NO** |
| F11 implementation gate moved | **NO** |
| F12 lab disappeared from source flow | **NO** |

---

## 7. Completion board

| Gate | Result |
|---|---|
| G1 current-main source-role census complete | **PASS** |
| G2 HCC-A existing clipboard recognized; no duplicate | **PASS** |
| G3 Coffee Cup existing clipboard recognized; no duplicate | **PASS** |
| G4 Water existing clipboard recognized; no duplicate | **PASS** |
| G5 H×C×W candidate composition, not automatic gearbox | **PASS** |
| G6 research mechanism registers explicit lab inputs | **PASS** |
| G7 platform/toolchain clipboards explicit capability/constraint inputs | **PASS** |
| G8 clipboard door routes distributed system | **PASS** |
| G9 law entrances distinguish source roles and lab | **PASS** |
| G10 mandatory context tells same story | **PASS** |
| G11 reason model permits source machinery testing without Core grant | **PASS** |
| G12 global ASCII shows lab around Lace, not new Core components | **PASS** |
| G13 linear global ASCII Pass 31 recorded | **PASS** |
| G14 Pass 30 sampling architecture remains current | **PASS** |
| G15 retention/materialization remains `[GAP]` | **PASS** |
| G16 pointer-emission acceptance remains absent | **PASS** |
| G17 no duplicate source products created | **PASS** |
| G18 all claims released | **PASS** — verified at `b9aa9f2ad02d6fe62b7c4f9d7d0518d63eb0d687`: all 11 document stations FREE and all 8 gearing shafts FREE |

---

## 8. Verification evidence before receipt

At semantic tip `f82903f`:

- recursive Git tree: **685 blobs**, `truncated=false`;
- `docs/clipboards/` HCC/Coffee/Water filename matches: **0**;
- existing behavioral-goal products: **4** expected clock products present;
- global ASCII contains both Pass 30 and Pass 31;
- global ASCII still states exact sampling-derived retention/materialization `[GAP]`;
- global ASCII still states human acceptance absent;
- context prompt old selector sentence: **absent**;
- context prompt current retention/materialization sentence: **present**;
- kit current selector sentence: **absent**;
- kit current retention/materialization sentence: **present**;
- all three behavioral-goal source products explicitly identify themselves as source clipboards.

No browser/device/hardware runtime execution was performed by this pass. Platform source roles were documentation alignment only.

**Claim verification:** after the maps release commit `b9aa9f2ad02d6fe62b7c4f9d7d0518d63eb0d687`, direct reads confirmed every document station (`clipboards`, `coord`, `gearing-meta`, `graphics`, `history`, `hologram`, `kit`, `law`, `maps`, `prompts`, `renderer`) was `FREE`, and all eight gearing shafts (`audits`, `axle`, `cells`, `escape`, `gears`, `trainA`, `trainB`, `trainC`) were `FREE`. This receipt-finalization edit temporarily reclaimed `maps` only to pin that verification and is released immediately afterward.

---

## 9. Verdict

**PASS 1 EXECUTED — LAB SOURCE ARCHITECTURE ALIGNED.**

The repository now has a coherent rule for the source system it already possessed:

[
\text{source} \to \text{clipboard} \to \text{lab evidence} \to \text{candidate systems}
]

not:

[
\text{source citation} \to \text{Core architecture}.
]

The behavioral-goal sources remain load-bearing targets and keep their possible machinery. Research mechanisms remain testable. Platform/toolchain machinery remains physically consequential. Lace remains the substrate being grown and tested against both behavioral success and physical reality.

**Next pass is not opened automatically.**
