# Namespace register

**Status:** `[PROPOSAL]` for the citation rule. The families themselves are measured, not proposed — each range below was read out of its defining document.
**Station:** maps. **Current gate:** pointer draft reconciled but unaccepted; **RM-A retain-when OPEN / MISSING-A**. No `src/`.

**Current bounded register, 2026-09-22 (mathematical execution model audit, pass 6):** **64 registered family rows**, **465 distinct literal tokens**, and **138 tokens owned by two or more rows**: 81 have 2 owners, 37 have 3 owners, 8 have 4 owners, 7 have 5 owners, 5 have 6 owners. There are **697 row-token memberships**. `A5` still has six registered owners. The two families and two literals added by the audit are the model's human rulings `H1`–`H12` (eleven of them newly colliding with the HCC stations), the audit lemmas `L1`–`L5` / `WP`, and `STAR-1` / `VIEW-1` in the graphics-fidelity row; nothing was renamed, and no row was removed.

**Pass-5 measurement gate:** before changing this table, the 2026-09-20 49-row table was re-parsed under the counting rule below and reproduced **49 / 371 / 125 / 578 exactly**, including the 80×2 / 25×3 / 8×4 / 7×5 / 5×6 ownership distribution. The current headline is a fresh measurement after the family updates below, not an estimate.

**Reproducible counting rule:** use only the `Range` cells in the Families table. Expand an inclusive numeric range only when both endpoints have the same complete prefix; preserve zero-padding (`C01` is not `C1`). Every other backticked literal is one exact token. Do not strip prefixes, brackets, prime marks or case: `M-T3` is not `T3`, `[I]` is not `I`, and `G8′` is not `G8`. Take a set within each family row, then count owners across rows. The crate pages are explicitly enumerated, and explanatory examples live outside the Range cells. The legacy ticket/tension/task row remains one registered row for this arithmetic, not three independently measured families. This is a table tally, not a count of token occurrences or proof that every local heading scheme in the repository is registered.

**Projection exception, exactly:** enumerate `docs/clock/passes/*-plan.md`; inspect only lines beginning literally `**Status:**`; extract matches of the case-sensitive regex ``\bTitle\s+`?([A-Za-z][A-Za-z0-9]*)`?`` (the capture is the stamp). Deduplicate within a file and then across files. This finds 27 distinct stamps in 27 of 60 plan files, with no stamp shared by two files. Do not synthesize bare iteration aliases from filenames or read stamps from Evidence/body/index text. The exact resulting tokens are listed in the family row below. No counting script or enforcement hook is added to the repository.

**Historical statistics, preserved as reports:** the immediately previous current measurement, landed at `6e26b79` on 2026-09-22 (reference audit pass 5), was **62 family rows / 456 distinct tokens / 127 colliding tokens / 677 memberships**, with 70×2 / 37×3 / 8×4 / 7×5 / 5×6 owner counts; the mathematical execution model audit (pass 6) reproduced it exactly under the counting rule before adding its rows. Before that, the measurement landed at `10fe4947` on 2026-09-20 was **49 family rows / 371 distinct tokens / 125 colliding tokens / 578 memberships**, with 80×2 / 25×3 / 8×4 / 7×5 / 5×6 owner counts; Pass 5 reproduced it exactly before mutation. An older headline said 30 families, 77 colliding tokens, 14 with three owners and 5 with four. Earlier readings recorded derivations at `810d200`, `af89f85`, `dbeaa88`, and verification iterations 4–5; reported family corrections 26 → 25 → 27, collision corrections 71 → 72 → 77, and a failure to reproduce an earlier 60. Those are dated register history, not current totals. The former projection denominator of 30 described the iteration/interaction plans; the complete pass-plan shelf now contains 60 files. The current literal-token tally does not preserve mistaken aliases merely to reproduce an older headline.

**Nothing is renamed to fix this.** Gear keys are string literals in `contracts-*.js`; [the 1:1 audit](clock/gearing-code-1to1.md) records the 47-name bijection with the registry. Renaming a tooth changes running code and its audit. The [restructure plan §4.7](plans/restructure-plan.md) preserves the earlier `A1` spread measurement; it is not a fresh count here.

## The rule

A **bare token is legal where its context fixes it**. Inside `contracts-trainA.js`, `A5` is a tooth. Inside the close reading, `D1` is a panel. No one is confused and nothing needs decorating.

**Qualify when a token could be read as another family's**, especially across shelves:

| Instead of | Write |
|---|---|
| `A5` | `Graphic A5` · `trainA:A5` · `audit station A5` · `AgentScope §A5` · `attachment A5` · `adversarial section A5` |
| `C3` | `Graphic C3` · `trainC:C3` · `Cup C3` · `component C3` · `adversarial claim C3` |
| `P4` | `P4` (atomic) · `Piece 4` (manifest) — never `P4` for a Piece |
| `R1` | `restructure R1` · `escape:R1` · `reduction ruling R1` |
| `X2` | `execution X2` · `Xiao & Zhu §X2` · `audits:X2`; the crate page is `X`, not `X2` |

Each station applies this when it next touches a file it owns. **No file is rewritten for this**, and there is no hook check — one flagging bare tokens would fire thousands of times on correct prose and be switched off within a day.

## Families

`BAKED` means the token is a string literal in code or a fixture: it cannot be renamed without breaking something that runs.

| Family | Range | Defined in | Station | |
|---|---|---|---|---|
| Graphic panel | `A1`–`A13` `B1`–`B12` `C1`–`C12` `D1`–`D6` | the four PNGs; the numerals `1.`–`13.` / `1.`–`12.` / `1.`–`12.` / `1.`–`6.` are printed on the artwork before each title; the letter prefix is assigned by [the manifest](systems-manifest.md) and [the close reading](graphics-close-reading.md) (qualified by [reference audit pass 5](plans/reference-audit-pass-5-plan.md), 2026-09-22; printed titles are in the [companions](graphics/README.md)) | law | source of record |
| Manifest Piece | `1`–`15` | [systems-manifest.md](systems-manifest.md) | law | Write **`Piece 5`**, not a bare number outside its source |
| Manifest open question | `Q1`–`Q12` | [systems-manifest.md](systems-manifest.md) | law | The source uses twelve bare list markers `1.`–`12.`; counted at `docs/systems-manifest.md:462`. The `Q` prefix is a downstream convention and is the form that collides; the bare numerals are list markers, not tokens. **Registered twice until iteration 4 pass 3**, once by each form, which double-counted the family in the headline below |
| Boundary stamp | `[I]` `[II]` `[III]` `[H]` `[X]` `[GAP]` `[CONFLICT]` `[INFERENCE]` `[PROPOSAL]` `[PLAN]` | [staking](staking-the-workspace.md), [live law](law-why-these-documents.md) | law | |
| Atomic primitive | `P0`–`P4` | [atomic-primitives-map.md](atomic-primitives-map.md) | maps | |
| Atomic constraint | `K1`–`K6` | [atomic-primitives-map.md](atomic-primitives-map.md) | maps | |
| Atomic gap | `G1`–`G7` | [atomic-primitives-map.md](atomic-primitives-map.md) | maps | |
| Reason model | `RM1`–`RM10` | [reason-model-map.md](reason-model-map.md) | maps | |
| IR piece | `P1`–`P15` | [hologram-ast-ir.md](plans/hologram-ast-ir.md) | maps | **BAKED** in the golden fixtures |
| Crate-map page | `A` `B` `C` `D` `E` `F` `G` `H` `X` | [rust-nostd-crate-map.md](plans/rust-nostd-crate-map.md) | maps | |
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
| Ticket · tension · task | `T0`–`T9` | pass-local tickets and [Kauffman tension](clipboards/kauffman-4ed-clipboard.md); see below | — | Legacy combined row retained. Prefixed task series such as `M-T3` and `P-T3` are related routing examples, not literal owners of `T3` |
| Water bucket / spec | `OBS` `DELTA` `UNK` `INVALID`; `F1`–`F5` | [water-systems-manifest.md](clock/water-systems-manifest.md) | hologram | |
| **Projection title stamp** | `i1`; `i1p3`–`i1p6`; `i2p1`–`i2p2`; `i3p1`–`i3p6`; `i4p1`–`i4p6`; `i5p1`–`i5p6`; `ixp1`–`ixp2` | [the projection pass plans](clock/passes/README.md) | hologram | **27 distinct Status-line Title stamps in 27 of 60 plan files; no duplicates across files.** Bare iteration aliases are not synthesized; use the recipe above |
| **Graphics ASCII iteration** | `i1`–`i3` | [ascii-iterations.md](graphics/ascii-iterations.md) | graphics | Shorthand for a whole six-pass iteration, not a single pass. `docs/kit/scanner.md` and [cold-doors.md](kit/cold-doors.md) cite it as *graphics i1/i2* and *Graphics ASCII i3* — read in place, both are this family, not a third |
| **Historical emission notation** | `Φ`, `Φ-morphism`, `Φ-schedule` | [pointer-emission.md](pointer-emission.md) §Φ / Join current constructor | law | Retained namespace for dated receipts. `Join(a,b)` is the current physical realization of the old Φ-morphism; the old single Φ-schedule blocker / arbitrary-relation framing is historical under H7–H12. The active general boundary is RM-A retain-when, not a reopened Φ scheduler. |
| **Emission open question** | `Q0`–`Q5` | [pointer-emission.md](pointer-emission.md) | law | The AGENTS-required questions plus the two the graphics force. **Starts at `Q0`**, which the manifest family has no member for |
| **Prefix-device numeral** | `I`, `II` | [prefix-device-pass-2.md](graphics/prefix-device-pass-2.md) | graphics | Collisions, sheets and ruling slots. **Always noun-prefixed** — `Collision I`, `Sheet II`, `slot I` — and never bracketed |
| Reduction ruling | `R1`–`R12` | [crate proposal §7](plans/lace-context-iter6-pass-5-crate-proposal.md), [compute inventory §7](plans/lace-context-iter7-pass-2-compute-and-inventory.md), [rulings brief](plans/reduction-pass-5-rulings-brief.md), [rust-target Page G](clipboards/rust-target-clipboard.md) | maps / clipboards | R1–R8 originate in iteration 6, R9–R11 in iteration 7, and R12 is the target shelf's pre-gate-fixture question. Identifiers do not establish that a ruling was taken |
| Attachment request | `A1`–`A11` | [target findings §3](plans/lace-context-iter6-pass-2-findings.md), [component C28](plans/lace-context-iter7-pass-2-compute-and-inventory.md), [rust-target Page G](clipboards/rust-target-clipboard.md) | maps / clipboards | A1–A6 plus A7–A9 and later A10–A11. Requested is not attached or accepted; A5 depends on the carrier choice, and A11 is needed only if the custom section is used as a witness |
| Promotion / artifact check | `G1`–`G10`, `G8′` | [compute inventory §5](plans/lace-context-iter7-pass-2-compute-and-inventory.md), [target pass-1 plan](clipboards/rust-target-pass-1-plan.md), [target mapping Pages B/D](clipboards/rust-target-clipboard.md) | maps / clipboards | Proposed checks, not observed passes or deployment permission. G8′ reformulates G8; the prime is part of the identifier. G10 is the proposed reproducibility check |
| Component inventory | `C1`–`C32` | [compute inventory §6](plans/lace-context-iter7-pass-2-compute-and-inventory.md) | maps | Named inventory rows, not evidence that all components are built, accepted or required |
| Execution environment section | `E0`–`E10` | [iteration 6 environment](plans/lace-context-iter6-pass-4-environment.md) | maps | Exact heading range includes E0 non-claims and E10 receipt, as well as E1–E9 |
| Reduction execution section | `X0`–`X9` | [execution model](plans/reduction-pass-2-execution-model.md) | maps | Section headings; X9 is the preserved original receipt |
| Reduction execution invariant | `I1`–`I6` | [execution model X4](plans/reduction-pass-2-execution-model.md) | maps | Unbracketed, numbered invariants; retain the current hypotheses and lifecycle scope |
| Reduction execution theorem | `M1`–`M3` | [execution model X5](plans/reduction-pass-2-execution-model.md) | maps | Bounded claims under their stated premises, not general implementation acceptance |
| Target fact ledger | `T1`–`T19` | [iteration 6 target findings §1](plans/lace-context-iter6-pass-2-findings.md) | maps | Mixed SOURCE / HUMAN_REPORTED / UNESTABLISHED entries; T19 is explicitly retired, not an established fact. Registration preserves the historical identifier |
| Model problem-map section | `M1`–`M8` | [problem map](plans/math-execution-problem-map-pass-1.md) | maps | Top-level section headings; distinguish from reduction theorems M1–M3 |
| Model problem-map fact | `K01`–`K19` | [problem map M2](plans/math-execution-problem-map-pass-1.md) | maps | Zero-padded claim inventory; registration preserves identifiers, not the truth or current authority of every historical claim |
| Math execution model section | `S0`–`S12` | [math-execution-model.md](math-execution-model.md) | maps | Top-level current mathematical court. S9–S12 are non-Core overlays; registration does not promote authority. Decimal subsection labels are not separate family tokens. `S4.7` is a dated subsection added by the mathematical execution model audit (pass 5, 2026-09-22); the unnumbered *Current steward receipt — 2026-09-22 (audit pass 3)* after S12 is not an S-token |
| Model witness section | `W0`–`W8` | [D1 witness](math-execution-model-pass-3-witness.md) | maps | Top-level headings; name the witness, not a WASM failure-mode alias |
| Model adversarial section | `A0`–`A7` | [adversarial catalog](math-execution-model-pass-4-adversarial.md) | maps | Top-level headings, distinct from the attachment queue and graphic panels |
| Model adversarial claim | `C1`–`C8` | [adversarial catalog A1](math-execution-model-pass-4-adversarial.md) | maps | Claims under attack; distinct from the later component inventory |
| Model adversarial non-example | `N01`–`N15` | [adversarial catalog A2](math-execution-model-pass-4-adversarial.md) | maps | Preserve zero-padding; these are non-example rows, not accepted behavior |
| Model positive specimen | `P0`–`P1` | [adversarial catalog A3](math-execution-model-pass-4-adversarial.md) | maps | Optional bounded positive specimens, not atomic primitives or projection section headings |
| Model projection section | `P0`–`P8` | [projection reading](math-execution-model-pass-5-projections.md) | maps | Top-level headings; retain `projection section` when citing across shelves |
| Model arrival section | `R0`–`R7` | [arrival reading](math-execution-model-pass-6-arrival.md) | maps | Top-level headings; distinct from restructure findings and reduction rulings |
| Manifest catalog mechanism | `L-M01`–`L-M21` `L-GAP-RM` | [systems-manifest.md](systems-manifest.md) Current Mechanism Contract Registry | law | Navigation handles only; not Graphic-D row types, opcodes, crates or modules |
| Manifest mechanism contract | `SM-C01`–`SM-C21` `SM-GAP-RM` | [systems-manifest.md](systems-manifest.md) Current Mechanism Contract Registry | law | Contract identifiers; SM-GAP-RM remains the open general retention/materialization interface |
| Manifest integration contract | `SM-X-BEH` `SM-X-RES` `SM-X-PLAT` `SM-X-L3` | [systems-manifest.md](systems-manifest.md) Integration contracts | law | Non-Core integration classifications; registration does not adopt source/tooling machinery into Core |
| Retention interface face | `RM-A` `RM-B` `RM-C` | [systems-manifest.md](systems-manifest.md) SM-GAP-RM; [math-execution-model.md](math-execution-model.md) | law / maps | RM-A OPEN / MISSING-A; RM-B/RM-C carry only their bounded/class-specific closures — stated in the model as Lemma RM-B(contig), Lemma RM-C(RootTouch), Lemma RM-C(contig) (S4.7, audit pass 5); those parenthesized names are readings of the two registered literals, not new tokens |
| Read / observability theorem | `RD-1` `OBS-1` `EP-1` | [math-execution-model.md](math-execution-model.md) S9–S10 | maps | Named no-write / non-identifiability / support-traceability handles |
| Observability stamp | `SEE-L` `SEE-G` `SEE-Q` `SEE-H` `SEE-CF` `SEE-U` | [math-execution-model.md](math-execution-model.md) S10 | maps | Evidence/observability classes; not row types or Core state |
| Realization evidence level | `T0`–`T6` | [math-execution-model.md](math-execution-model.md) S11.2 | maps | Technical evidence ladder; distinguish from legacy ticket/tension and target-fact T families |
| Realization theorem | `HOST-1` `ACCEL-1` `ML-1` `COPY-1` | [math-execution-model.md](math-execution-model.md) S11; [interop boundaries](plans/math-execution-behavioral-read-devices-pass-3-interop-boundaries.md) | maps | Technical boundary theorems; not Core mechanisms |
| Technical source gap | `GAP-HOST` `GAP-CARRIER` `GAP-APP` | [Pass-3 source gaps](plans/math-execution-behavioral-read-devices-pass-3-source-gaps.md) | maps | Named missing-source surfaces; GAP-HOST remains open |
| Graphics-fidelity theorem | `AUTH-1` `PATH-1` `STAR-1` `VIEW-1` | [Pass-4 authority matrix](plans/math-execution-behavioral-read-devices-pass-4-graphics-authority-matrix.md); [D1 path audit](plans/math-execution-behavioral-read-devices-pass-4-d1-path-audit.md); [star / projection fidelity](plans/math-execution-behavioral-read-devices-pass-4-star-projection-fidelity.md) §1–§2, §6; labeled on the model's S3.1, S3.4, S3.7 boxes since audit pass 3 | maps | Bounded source-fidelity theorem handles; registration does not upgrade authority |
| Model human ruling | `H1`–`H12` | [rulings register](plans/math-execution-rulings-register.md) (maps companion, pass 1 of the mathematical execution model audit); cited by [math-execution-model.md](math-execution-model.md), the manifest and the pointer draft by number | maps | The human's twelve rulings on arrival, root, RootTouch, grounding and sampling; H1–H6 quoted in the ROOT / TOUCH / FOLD pass 1–3 plans, H7–H12 in the sampling pass-1 plan. **Collides with the HCC clipboard's stations `H1`–`H11`** — write `ruling H7` or `HCC H7` off-shelf |
| Audit lemma | `L1`–`L5` `WP` | [math-execution-model.md](math-execution-model.md) pass-2 blocks in S1.3, S2, S3.4, S4.1, S4.3; [theorem register](math-execution-model-theorems.md) | maps | Always written *Lemma L1* … *Lemma WP*; a bare `L1` is not the model's state notation \(L_1\), which is algebra, not an identifier. `L4` is PATH-1 |
| Target requirement | `RQ1`–`RQ10` | [Pass-5 target requirements](plans/source-lab-lace-alignment-pass-5-target-requirements.md) | maps | Requirement-ledger identifiers; registration does not select wasm32/wasm64 |
| Carrier contract | `K1`–`K7` | [Pass-6 carrier contracts](plans/source-lab-lace-alignment-pass-6-carrier-contracts.md) | maps | Backend-neutral carrier obligations; literal K collisions require qualification |
| Working-set measure | `CWS` `PWS` | [Pass-6 access / working-set map](plans/source-lab-lace-alignment-pass-6-access-working-set.md) | maps | Correctness vs performance working-set handles; not storage objects |

## Collisions, and how to tell

This table routes the literal overlaps of the registered ranges. A source's local prose may also use related aliases; those do not become identical bytes in the count.

| Token | Registered owners | How to tell |
|---|---|---|
| `A1`–`A5` | Graphic A panel · trainA tooth · audit station · AgentScope section · attachment request · model adversarial section | Six owners. Name the graphic, shaft, audit, paper, attachment queue or adversarial section |
| `A6`–`A7` | Graphic A panel · trainA tooth · audit station · attachment request · model adversarial section | Five owners; AgentScope stops at A5 |
| `A8`–`A9` | Graphic A panel · trainA tooth · audit station · attachment request | Four owners; adversarial sections stop at A7 |
| `A10`–`A11` | Graphic A panel · audit station · attachment request | trainA stops at A9; the target shelf introduces attachment A10/A11 |
| `A12`–`A13` | Graphic A panel · audit station | The attachment range stops at A11; the audit extends to A14 |
| `B1`–`B5` | Graphic B panel · trainB tooth | Name the picture or shaft; Graphic B extends to B12 |
| `C1`–`C5` | Graphic C panel · trainC tooth · Cup stage · component inventory · model adversarial claim | Five owners. Qualify the conceptual stage, inventory component or adversarial claim as well as the graphic or shaft |
| `C6`–`C8` | Graphic C panel · trainC tooth · component inventory · model adversarial claim | Cup stops at C5; agent controls are still zero-padded here |
| `C9` | Graphic C panel · trainC tooth · component inventory | The adversarial claim inventory stops at C8 |
| `C10` | Graphic C panel · trainC tooth · agent control · component inventory | Four owners. Zero-padding no longer separates the agent-control identifier at ten |
| `C11`–`C12` | Graphic C panel · agent control · component inventory | trainC stops at C10; inventory continues to C32 |
| `D1`–`D4` | Graphic D panel · Rowlands section · Graphic C5 dimension plane | Name the picture/panel, clipboard section or dimension plane |
| `D5`–`D6` | Graphic D panel · Rowlands section | Registered dimension-plane literals stop at D4; `Dn` is a separate literal. D7 is the Rowlands section |
| `1`–`8` | Manifest Piece · restructure phase | Write `Piece 5` or `restructure phase 5`; these are literal overlaps of the table's numeric ranges |
| `A`, `B`, `C` | Crate-map page · gear key | Write `crate-map page A` or qualify the code key's shaft |
| `P0` | Atomic primitive · model positive specimen · model projection section | Write `atomic P0`, `positive specimen P0` or `projection section P0` |
| `P1` | Atomic primitive · IR piece · model positive specimen · model projection section | Four owners; a model specimen is not an IR piece or a projection section |
| `P2`–`P4` | Atomic primitive · IR piece · model projection section | Write `atomic P4`, `IR P4` or `projection section P4`; for the manifest itself write `Piece 4` |
| `P5`–`P8` | IR piece · model projection section | Qualify the IR or projection reading |
| `R1` | Gear escapement key · restructure finding · reduction ruling · model arrival section | `escape:R1`, `restructure R1`, `reduction ruling R1`, or `arrival section R1` |
| `R2`–`R7` | Restructure finding · reduction ruling · model arrival section | Qualify the plan, ruling series or arrival reading |
| `R8`–`R12` | Restructure finding · reduction ruling | Arrival headings stop at R7. Target-shelf R12 extends the reduction series, not the older restructure series |
| `F1`–`F5` | Water spec · Rust second-reading finding | Padding distinguishes downstream F01–F09, but does not distinguish these unpadded families |
| `F10`–`F11` | Downstream finding · Rust second-reading finding | Padding stops helping at ten here too; name the audit or reading |
| `K1`–`K6` | Atomic constraint · Kauffman section · carrier contract | Name the atomic map, clipboard, or `carrier K1` etc.; registration does not merge their meanings |
| `K7` | Kauffman section · carrier contract | Qualify the clipboard or write `carrier K7`; this is a newly colliding literal in the 2026-09-22 census |
| `X1`–`X6` | Gear audit key · Xiao & Zhu section · reduction execution section | `audits:X2`, `Xiao & Zhu §X2`, or `execution X2`. The crate page is only `X` and is not an owner of these tokens |
| `X7`–`X9` | Xiao & Zhu section · reduction execution section | Name the clipboard or model; gear audit keys stop at X6 |
| `G1`–`G7` | Atomic gap · promotion/artifact check | `atomic gap G1` is word identity; `promotion G1` is the dependency check. A gate identifier is not a passed check |
| `E1`–`E2` | Gear key · execution environment section | Qualify the gear shaft or write `environment E2`; environment headings continue to E10 |
| `T0` | Legacy ticket/tension row · realization evidence level | Qualify the pass-local ticket/task or write `evidence T0`; this is a newly colliding literal in the 2026-09-22 census |
| `T1`–`T6` | Legacy ticket/tension row · target fact ledger · realization evidence level | Name the pass-local ticket/Kauffman tension, `target T1`, or `evidence T1`. Full `M-T3` / `P-T3` identifiers retain their prefixes and are not literal `T3` |
| `T7`–`T9` | Legacy ticket/tension row · target fact ledger | Evidence ladder stops at T6; qualify the pass-local ticket/tension or target ledger |
| `M1`–`M3` | Reduction execution theorem · model problem-map section | Write `execution theorem M1` or `problem-map M1`; neither is a source-independent proof label |
| `H1`–`H11` | HCC station · model human ruling | Write `HCC H7` (Meaning Engine) or `ruling H7` (no arbitrary relation choice); `H12` is a ruling only; `H10b` is HCC only. Newly colliding in the 2026-09-22 audit census |
| `S0`–`S7` | HCC phase · math execution model section | Name the conceptual HCC phase or the mathematical section; the latter now continues through S12 |
| `i1` | Projection title stamp · graphics ASCII iteration | Qualify the projection or graphics iteration. Under the Status-line recipe, bare i2/i3 are not projection stamps |
| `Q1`–`Q5` | Manifest open question · emission open question | Write `manifest Q2` or `emission Q2`; both discuss pointers. Q0 is emission only in this register |

**Distinct literals that still need readable citations:** boundary `[I]` / `[II]` / `[III]`, prefix-device `I` / `II`, and execution invariants `I1`–`I6` are not byte-identical collisions. Keep brackets for boundary stamps and nouns for `Collision I`, `Sheet II` and `slot I`. Likewise `G8` and `G8′` identify different forms of a proposed check.

**Coverage limit:** this 2026-09-22 census adds stable current cross-shelf handles from the manifest, S9–S12 behavioral/realization court, target requirements and Pass-6 carrier/working-set envelope, and — from the mathematical execution model audit — the model's human-ruling numbers, its audit lemma labels and the two remaining Pass-4 fidelity fences. *Theorem G* and the parenthesized RM lemma names are names, not tokens, and are not counted. It deliberately rejects ordinary algebra variables, plain-word S12 operators, pass-local falsifier/gate labels, blueprint-local state symbols, and access-class prose enums that do not yet need cross-shelf collision routing. It does not expand every campaign key or decimal subsection label. The tally is exact for this table, not a full-repository identifier census or a claim that no unregistered local family exists.

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

### Earlier exclusions, with current limits

| Family | Spread | Why no entry |
|---|---|---|
| WASM failure mode `FM-W1`–`FM-W9` | historical: up to 10 files | The [clipboard D3 rows](clipboards/wasm-spec-3-clipboard.md) use the full FM-W prefix; bare W aliases occur in compressed references. They are not literal owners of the model witness W0–W8 headings. The earlier description as unqualified W sections was inaccurate |
| GPU wave series `M-G8`–`M-G9` / `P-G8`–`P-G9` | historical: 8 files | Preserve the complete prefixes. The earlier 136-prefixed/6-bare measurement is dated; the added promotion family now has bare G8/G9. A wave is not a promotion check |
| History document ID `D01`–`D10`, `P02` | up to 7 | Zero-padded, and Graphic D stops at `D6`. Both tells agree |

**Not an identifier at all:** `L0`. It is the variable in the Kauffman bracket relation `t⁻¹V(L₊) − tV(L₋) = (√t − 1/√t)V(L₀)`, and pass 1's token probe counted it as a namespace entry. Recorded so the next probe does not find it again.

## What this register is not

It does not rename anything, does not make a bare token wrong, and grants no authority to any family. A citation is still checked against its source, not against this page.
