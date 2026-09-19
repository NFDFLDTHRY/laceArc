# Namespace register

**Status:** `[PROPOSAL]` for the citation rule. The families themselves are measured, not proposed — each range below was read out of its defining document.
**Station:** maps. **Emission:** `[GAP]`. No `src/`.

Twenty-six identifier families share one small alphabet. **60 tokens are claimed by two or more families**, 19 of them by three and **5 by four**. `A5` is a Graphic A panel, a `trainA` gear tooth, a coherence-audit station, and a section of the AgentScope paper.

**How these numbers are got:** expand every `Range` cell in the table below into its tokens, *keeping zero-padding*, and count the tokens with more than one owner. Re-derived that way at `810d200`, at `af89f85` after passes 2b and 2c, and at `dbeaa88` after pass 3 replaced the inclusion rule. **The two-owner count moved 41 → 60 there**, because five newly registered families sit on letters other families already held.

**Nothing is renamed to fix this, and nothing should be.** The gear keys are string literals in `contracts-*.js`, and [the 1:1 audit](clock/gearing-code-1to1.md) states the 47 names form a bijection with the registry — renaming a tooth breaks running code and a documented audit together. `A1` alone appears in 50 files. See [the restructure plan §4.7](plans/restructure-plan.md) for the measurement that settled this.

## The rule

A **bare token is legal where its context fixes it**. Inside `contracts-trainA.js`, `A5` is a tooth. Inside the close reading, `D1` is a panel. No one is confused and nothing needs decorating.

**Qualify when a token could be read as another family's**, especially across shelves:

| Instead of | Write |
|---|---|
| `A5` | `Graphic A5` · `trainA:A5` · `audit station A5` |
| `C3` | `Graphic C3` · `trainC:C3` · `Cup C3` |
| `P4` | `P4` (atomic) · `Piece 4` (manifest) — never `P4` for a Piece |
| `R1` | `R1` (restructure finding) · `escape:R1` (gear key) |
| `X2` | `X2` (crate-map page) · `audits:X2` (gear key) |

Each station applies this when it next touches a file it owns. **No file is rewritten for this**, and there is no hook check — one flagging bare tokens would fire thousands of times on correct prose and be switched off within a day.

## Families

`BAKED` means the token is a string literal in code or a fixture: it cannot be renamed without breaking something that runs.

| Family | Range | Defined in | Station | |
|---|---|---|---|---|
| Graphic panel | `A1`–`A13` `B1`–`B12` `C1`–`C12` `D1`–`D6` | the four PNGs; labels assigned by [the manifest](systems-manifest.md) and [the close reading](graphics-close-reading.md) | law | source of record |
| Manifest Piece | `1`–`15`, written **`Piece 5`** | [systems-manifest.md](systems-manifest.md) | law | |
| Manifest open question | `1`–`12`, **bare numbers in the source** | [systems-manifest.md](systems-manifest.md) | law | cited downstream as `Q9`; that prefix is a convention, not in the source |
| Boundary stamp | `[I]` `[II]` `[III]` `[H]` `[X]` `[GAP]` `[CONFLICT]` `[INFERENCE]` `[PROPOSAL]` `[PLAN]` | [staking](staking-the-workspace.md), [live law](law-why-these-documents.md) | law | |
| Atomic primitive | `P0`–`P4` | [atomic-primitives-map.md](atomic-primitives-map.md) | maps | |
| Atomic constraint | `K1`–`K6` | [atomic-primitives-map.md](atomic-primitives-map.md) | maps | |
| Atomic gap | `G1`–`G7` | [atomic-primitives-map.md](atomic-primitives-map.md) | maps | |
| Reason model | `RM1`–`RM10` | [reason-model-map.md](reason-model-map.md) | maps | |
| IR piece | `P1`–`P15` | [hologram-ast-ir.md](plans/hologram-ast-ir.md) | maps | **BAKED** in the golden fixtures |
| Crate-map page | `A`–`H`, `X` | [rust-nostd-crate-map.md](plans/rust-nostd-crate-map.md) | maps | |
| Restructure finding | `R1`–`R12`; phases `0`–`8` | [restructure-plan.md](plans/restructure-plan.md) | maps | |
| Agent control | `C01`–`C12` | [agent-control.md](kit/agent-control.md) | kit | zero-padded — but the padding stops telling at ten, see below |
| Downstream finding | `F01`–`F12` | [downstream-audit.md](kit/downstream-audit.md) | kit | zero-padded |
| Coherence audit station | `A1`–`A14` | [coherence-audit-prompt.md](prompts/coherence-audit-prompt.md) | prompts | |
| Gear key | `A1`–`A9` `B1`–`B5` `C1`–`C10` `t0`–`t6` `E1` `E2` `R1` `X1`–`X6`; `A` `B` `C` `AB` `BC` `CA`; `axle` | [`contracts-*.js`](gearing/README.md) | `gear:<shaft>` | **BAKED** — a bijection with the registry |
| HCC station / phase | `H1`–`H11`; `S0`–`S7` | [hcc-a-systems-manifest.md](clock/hcc-a-systems-manifest.md) | hologram | |
| Cup stage | `C1`–`C5` | [coffee-cup-systems-manifest.md](clock/coffee-cup-systems-manifest.md) | hologram | |
| Rowlands clipboard section | `D1`–`D7` | [rowlands-pass-2-plan.md](clipboards/rowlands-pass-2-plan.md) | clipboards | `D7` is optional in the plan and present in the clipboard |
| Graphic C5 dimension plane | `D1`–`D4`, `Dn` | panel C5 of `n-dimensional-relationships.png`; read in [pass 2b](plans/verification-iter1-pass-2-findings.md) | law | printed on the panel, not assigned |
| AgentScope paper section | `A1`–`A5` | [reason-model-map.md](reason-model-map.md) §§ on the AgentScope reading | maps | the paper's own sections, not Graphic A panels |
| Kauffman clipboard section | `K1`–`K9` | [kauffman-4ed-clipboard.md](clipboards/kauffman-4ed-clipboard.md) | clipboards | `K8` is slide equivalence, Part II §4° |
| Xiao & Zhu clipboard section | `X1`–`X9` | [xiao-zhu-clipboard.md](clipboards/xiao-zhu-foundations-clipboard.md) | clipboards | `X3`, `X7` are next-token-as-Core forbids |
| Rust second-reading finding | `F1`–`F11` | [rust-nostd-second-reading.md](plans/rust-nostd-second-reading.md) | maps | `F7` is the validator finding |
| Manifest open question | `Q1`–`Q12` | [systems-manifest.md](systems-manifest.md) | law | bare numbers in the source; the `Q` prefix is a downstream convention |
| Ticket · tension · task | `T0`–`T9` | three sources — see the collision table | — | **three meanings**, see below |
| Water bucket / spec | `OBS` `DELTA` `UNK` `INVALID`; `F1`–`F5` | [water-systems-manifest.md](clock/water-systems-manifest.md) | hologram | |

## Collisions, and how to tell

| Token | Families | How to tell |
|---|---|---|
| `A1`–`A9` | Graphic A panel · gear `trainA` tooth · audit station | Panel if the sentence cites a picture or a Piece. Tooth if it is inside `docs/gearing/` or the gearing HTML. Station if it is a tick in [the audit log](coherence-audit-log.md) |
| `A1`–`A5` | Graphic A panel · gear `trainA` tooth · audit station · **AgentScope paper section** | Four owners. The paper's sections appear only in [the reason model map](reason-model-map.md)'s AgentScope reading, where `A2` is ReAG and `A4` is the failure taxonomy — never a picture. [Pass 2c](plans/verification-iter1-pass-2-findings.md) found 18 of that file's 19 `A`-tokens are this family |
| `A10`–`A13` | Graphic A panel · audit station | `trainA` stops at `A9`; audit stations run to `A14` |
| `B1`–`B5` | Graphic B panel · gear `trainB` tooth | As above. Graphic B runs to `B12`; `trainB` stops at `B5` |
| `C1`–`C5` | Graphic C panel · gear `trainC` tooth · **Cup stage** | Cup stages are event-time and appear only in Shadow prose under `docs/clock/`. Graphic C runs to `C12` |
| `C6`–`C10` | Graphic C panel · gear `trainC` tooth | `trainC` stops at `C10`; Cup stops at `C5` |
| `C10`–`C12` | Graphic C panel · agent control | **Zero-padding stops telling them apart at ten**: `C01`–`C09` are safe, `C10`–`C12` are byte-identical to the panels. Agent-control items are numbered rows inside [agent-control.md](kit/agent-control.md) and are cited nowhere else; a panel cite names a picture |
| `D1`–`D6` | Graphic D panel · Rowlands clipboard section · **Graphic C5 dimension plane** | Sections are `### D4 — …` headings and back-references inside `docs/clipboards/rowlands-*`. A panel cite names a row of the array table. A **plane** is a stacked axis inside C5 and reads `D1, D2, D3, D4, …` or `D1`–`Dn` in one breath — see [the manifest's Piece 12](systems-manifest.md), whose Source location says `C5–C8`. **`D7` is a section only**; Graphic D stops at `D6`, so a bare `D7` is never an out-of-range panel |
| `P1`–`P4` | atomic primitive · manifest Piece (as IR `P1`) | **Write `Piece 4` for the manifest.** Bare `P4` is the atomic primitive. The IR's `P1`–`P15` are Pieces and are baked |
| `X1`–`X6` | gear audit key · crate-map page `X` | The crate map has one page `X`, not six |
| `R1` | gear escapement key · restructure finding 1 | Only `escape:R1` is a key; the finding is always in prose about this plan |
| `F1`–`F5` vs `F01`–`F12` | Water spec · downstream finding | Zero-padding is the tell, and it is load-bearing |
| `K1`–`K6` | atomic constraint · **Kauffman clipboard section** | Both are bare, both read as constraints, and they run over each other. Kauffman's are Part II section numbers and appear beside `K7`–`K9`, which the atomic map has no room for |
| `X1`–`X6` | gear audit key · crate-map page · **Xiao & Zhu section** | `audits:X2` is a key; the crate map has one page `X`; Xiao's run to `X9` |
| `F1`–`F5` | Water spec · **rust second-reading finding** | Padding separates `F01`–`F12`; it does **not** separate these two, and both are bare |
| `T0`–`T9` | ticket number · **rope tension** · **`M-T`/`P-T` task series** | A ticket is local to one pass plan. Tension is `T2 ≤ κ T1` in the Kauffman clipboard. The task series is always prefixed — `M-T3`, `P-T3` — and the prefix is the tell |

## What puts a family in this register

**A family needs an entry when a reader on one shelf could take its token for another shelf's.**

**Spread is not the test.** It is what makes a collision expensive, not what makes it one. A token in 124 files with one meaning needs no entry; a token in 6 files with two meanings needs one.

The register said otherwise until [iteration 2 pass 3](plans/verification-iter2-pass-3-plan.md) measured it. The old rule — *"identifiers that are never cited across files need no entry"* — is a spread rule, and **the register's own contents refuted it**: its narrowest family, Reason model, reaches 6 files, while `T1` and `T2` reach **124** and were the ones ruled out.

**Two errors in the paragraph that ruled them out, corrected here rather than quietly dropped:**

1. It said `T1`–`T5` appear in **50 files**. Measured at pass 3: **124, 124, 116, 117, 111**.
2. It named **two meanings** for them — a ticket number and a rope tension — and concluded "locally unambiguous" in the same sentence. Under the rule above they are among the strongest candidates in the tree, and they are now registered. A third meaning turned up on reading: the prefixed `M-T`/`P-T` task series.

### The tells, in the order they are tried

| Tell | Example |
|---|---|
| **Zero-padding** | `C01`–`C09` against `C1`–`C9`; `D01`–`D10` against Graphic `D1`–`D6`; `P02` against `P0`–`P4`. Stops working at ten — see the `C10`–`C12` row |
| **Prefix** | `FM-W4`, `M-G9`, `P-T3`. The bare token is the campaign's; the prefix is what makes it readable off-shelf |
| **Range disjointness** | `trainA` stops at `A9`; Cup stops at `C5`; Graphic D stops at `D6` |

### Excluded, with the reason

| Family | Spread | Why no entry |
|---|---|---|
| WASM clipboard section `W1`–`W9` | up to 10 files | **No competing `W` family exists.** Widespread and unambiguous — which is exactly what the register wrongly claimed of `T` |
| GPU wave series `G8`–`G9` | 8 | Written `M-G9` / `P-G9` — 136 prefixed against 6 bare. The prefix is the tell, and `G1`–`G7` (atomic gap) is the only bare reading |
| History document ID `D01`–`D10`, `P02` | up to 7 | Zero-padded, and Graphic D stops at `D6`. Both tells agree |

**Not an identifier at all:** `L0`. It is the variable in the Kauffman bracket relation `t⁻¹V(L₊) − tV(L₋) = (√t − 1/√t)V(L₀)`, and pass 1's token probe counted it as a namespace entry. Recorded so the next probe does not find it again.

## What this register is not

It does not rename anything, does not make a bare token wrong, and grants no authority to any family. A citation is still checked against its source, not against this page.
