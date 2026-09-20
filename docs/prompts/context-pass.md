# The context pass — the same story, for every agent

Layer III steward prompt. Not Hands. Not law. Not Core. Emission remains `[GAP]`. No `src/` from a prompt.

**Read this immediately after [`AGENTS.md`](../../AGENTS.md), before any task.** It is the story one editor holds after reading the whole tree, the four PNGs, and the human's own record; it is written so that DeepSeek, Grok, Codex, Astra, ChatGPT, Claude and the next model nobody has met yet hold the *same* story. Every sentence here is either a citation into the tree or stamped. Where it and its governing source differ, follow that source; where sources conflict, preserve and route the conflict rather than choosing the later file.

**Current reconciliation:** 2026-09-20, [repository update pass 1](../plans/repo-update-pass-1-evidence.md). Current summaries below preserve the original record and qualify its scope; no model or emission acceptance is asserted.

**Written** 2026-09-19 by Claude Fable 5.1 at branch `lace-context-iteration-6` (base `e2e8155`), on the human's instruction: *"all agents need to see the same story in the repo that you do."*

---

**Human correction, 2026-09-20:** HCC-A, The Coffee Cup, and Where the Water Is Loud are conceptual reference documents. The earlier H/C/W gearbox interpretation does not establish required holder machinery, runtime dependencies, or legal-append conditions. Apply the [live-law correction](../law-why-these-documents.md#conceptual-reference-documents) when reading the clock maps or older records. Their concepts remain available for reasoning; no pointer-emission rule or acceptance follows from them.

## 1. What this is (the Hands, in six sentences)

Lace is **one continuously growing strand**. Every word occurrence is more wire; every word has a persistent star; a definition is a route through other stars; a document is a physical route in arrival order. The **only store** is Graphic D: one append-only 1D array of **WORD** and **POINTER** entries, where a POINTER names earlier entries on the same line and can itself be named later. Nothing is deleted, rewritten, parsed away, or stored as meaning. Higher dimensions are not new storage and not new meaning; they are more independent ways the same wire participates. The whole mechanism is one rule, said two ways: *Input word arrives. Route new wire through that word's star. Continue.* / *Input arrives. Append a new section. Use pointers to participate in what already exists.*

Source of record: the four PNGs in `docs/graphics/` (open them; cite panels), then [`docs/systems-manifest.md`](../systems-manifest.md). Law: [`docs/law-why-these-documents.md`](../law-why-these-documents.md). **If you cannot see the PNGs, every structural judgment you make is `[BLOCKED]`.**

## 2. Where it stands (the gate)

- **There is no Lace Core implementation, on purpose.** Layer III viewers, contract scripts and coordination tools exist. Core may not exist until [`docs/pointer-emission.md`](../pointer-emission.md) — *when a POINTER is written* — is accepted by the human, in-repo, in words. File existence is not acceptance. A commit is not acceptance. A filled Answer line is not acceptance.
- **The missing rule has a type and a region, but no accepted candidate.** The missing rule is a schedule `σ : 𝓛 × V → Step*` ([environment](../plans/lace-context-iter6-pass-4-environment.md) E2). Thirteen fences, each cited to a graphic, the algebra or a reference shelf, bound the region a σ may lie in. The region is **non-empty and non-trivial** (E4). **None of the 17 recorded candidates is established in-region** (E5). Keep REFUTED, BLOCKED and indeterminate readings distinct; a missing premise does not prove a candidate outside the region. E6 says what a candidate must look like; E7 says how to run one.
- **Five distinct Answer locations carry `SPOKEN (campaign)`: Q0, Q1, Q3, Q5 and slot II.** The earlier four-location summary omitted Q3's leftover-adjacency claim. The campaign's unfilled speak-sheet leaves a custody obligation; record each exact source and scope rather than treating the stamp as its own witness. The Q0/Q5 conflict with the graphics' occurrence-preservation statements remains separate from that custody question. See [update-pass evidence U01](../plans/repo-update-pass-1-evidence.md) and companion OPEN **#13**. Preserve existing Answer/Stamp lines; this prompt neither re-stamps nor accepts them.
- **When Core code is allowed:** Rust, `#![no_std]`, zero external dependencies, every dependency a first-party branch, one branch one task, proven before the next branch exists. Target sealed by the human: `wasm64-unknown-unknown`.

## 3. What has been established since 2026-09-19, and at what strength

| Product | One line | Strength |
|---|---|---|
| [the environment](../plans/lace-context-iter6-pass-4-environment.md) | σ typed; 13 fences; region non-empty; 17 candidates assessed; none established in-region | `PROVED_WITHIN_SCOPE` for E4; `[PROPOSAL]` as a document |
| [the execution model](../plans/reduction-pass-2-execution-model.md) | Σ = (L, h, K); six transitions. M1 concerns **strand-history observations**: h and persistence progress are operational state, not functions of L. I1/I6 require an OPEN-free interval; pending SUBMIT is not yet an appended WORD. M2 keeps its stated premises; M3's intermediate frontiers additionally require the S4.3 STEP partition | bounded model claims; `[PROPOSAL]`; read X3–X5 and update-pass U04/U05, not a blanket app-correctness proof |
| [the shape](../plans/lace-context-iter6-pass-5-crate-proposal.md) | seven doors unchanged + sheets T R H C S E from `strand/` to an installed WebAPK; rulings R1–R8 prepared, none taken | `[PLAN]` |
| [the target facts](../plans/lace-context-iter6-pass-2-findings.md) | wasm64 is Rust Tier 3 (nightly + `build-std`); Chrome ≥ 133 has Memory64 on Android; 16 GB cap; 10–100% bounds tax; **on-device wasm64 scale `UNESTABLISHED`** | web `OBSERVED`; device `HUMAN_REPORTED` |
| [the compute model + inventory](../plans/lace-context-iter7-pass-2-compute-and-inventory.md) | one writer; WebGPU/WGSL as projection; **WebNN has no Core role** (R10); frontier protocol (R9); dated 32-component proposal with named gates; implementation ownership remains unresolved (C2–C5 code owners blank; C6 names a ruling owner, not a σ implementation owner) | `[PROPOSAL]` |
| [the distribution amendment](../kit/distribution-model.md) | githack = development (recorded install); the business domain = production, glacier releases, **installed once, offline forever** as the requested production goal; promotion gate G1–G7, with later target checks proposed | HUMAN_REPORTED (the human's words); acceptance `ABSENT` until affirmed |
| [the companion](../systems-manifest-ascii.md), Passes 26–28 and current scope notes | Hands CONFIRM (A13/B12.2/C12.2/C10.2); OPEN #13–#15; deliverable boxes cite-only; M1's shared-strand-history claim must retain its observation/lifecycle scope | readings, not new canonical sources or a universal app-state proof |
| [the door](../plans/reduction-pass-1-findings.md), “S” and “The door” | **S = 21 documents** was the reduction's dated base reading set, plus four PNGs, manifest and law. Current target work also reads [rust-target Pass 1 / Page G](../clipboards/rust-target-clipboard.md) and current [update-pass evidence](../plans/repo-update-pass-1-evidence.md); follow each task's source/consumer closure | dated measurement plus current routing; not an exhaustive permanent allow-list |
| [roles](../kit/roles.md) · [generator](six-pass-proposal-generator.md) · [ladder](../plans/probe-boundary-ladder.md) · [diagram-prompt](lace-context-diagram-prompt.md) | who holds what; how to start a campaign; the order of the probes; how to map a finding | steward |

## 4. The human, as the record shows him (memory-informed; every line `[PROPOSAL]`, provenance in [iteration 6 pass 1](../plans/lace-context-iter6-pass-1-findings.md))

He has worked this object for about ten years; **the literal shoelace is the primary source object, not an analogy** — *shoe in hands is the court*. He transmits by **instance, not description**: months of failed explanation ended when he wrote *"A defined by B, B defined by C, C defines A."* Show him a run, a row, a number — not a paraphrase. He wants **pointable claims** and marks every statement as ruled / carried / derived / proposed / open, and has corrected agents for silently filling gaps. His corrections are **direct and brief and point you back at the source**; he expects you to do the rereading. He builds by **A\*** — from the complete vision backward to the present — and considers that non-negotiable. His standing rule for hardware: **a Chrome-exposed capability is a test subject, not authority** until a probe on the device observes it. An installed WebAPK must become **Termux-independent after install**. His recurring frustration, in his words: agents *inventing new encodings and observers instead of walking the simple one already there*, and *building definitions that don't exist*. His term of art **"God"** names AI and programming practice reaching for an outside authority. His team pattern: one builds, he identifies errors, one audits. He is buying credits for this; **do not spend them re-deriving what the tree already holds.**

## 5. Quarantine — the older lineage and memory

There was an earlier repo, ShoeLacey, and a body of memory and chat around it. AGENTS.md dates it as *"a dated other repo, not this law."* Its vocabulary — **tie · window · block · Unit · closed loop · touch-on-touch · star-as-lens (radius = character value) · frontier-as-layer · resolution bind** — is **never mapped onto WORD / POINTER / Φ**. If you find it, report where; do not translate it. Anything from memory or chat is `[PROPOSAL]` until the human writes it in-repo. *Exact-match ties* and *"touch grows lace"* are named non-answers on the emission file; do not revive them under new names.

## 6. How to work here

1. **Pin.** `git pull --ff-only origin main`; state the commit.
2. **Read the dated door** ([S and The door](../plans/reduction-pass-1-findings.md)), then [current update-pass evidence](../plans/repo-update-pass-1-evidence.md), the companion's “Systems-level audit (pass 27)” / “Execution-model reading (pass 28)” and any later scope note, and [rust-target “Pass 1” / “Page G”](../clipboards/rust-target-clipboard.md) for target work. Expand that base by the exact sources and consumers of your task; do not stop at an old document count or line range.
3. **Cadence.** *Plan → Proceed → Commit.* A plan file per pass, measured before it proposes, thesis with a falsifier, may-write / must-not, expected vs actual, stop. Status `PLAN` until the human says proceed. Use [the generator](six-pass-proposal-generator.md).
4. **Stations.** `coord.sh which → claim <station> "<Identity>" → edit only what it owns → gate → commit → release`. One station per commit. An identity, never a task name. Say how long you expect to hold it. **A law-station claim does not confer the human's reserved decision authority.**
5. **Sign every commit** with an actor trailer ([roles](../kit/roles.md)). Unsigned work cannot be assigned work; the count prints at every session start.
6. **Stamp every claim** on the sentence: origin · evidence state · human acceptance. `[GAP]` where the source is silent; `[CONFLICT]` where sources disagree; `[INFERENCE]` with premises; `[PROPOSAL]` until accepted.
7. **Map, do not define.** Every finding has an address on [the diagram](lace-context-diagram-prompt.md): box · Piece · companion slot · fence · ruling.
8. **A candidate rule** is run through E7 with all eleven D1 rows shown, by someone who did not write it. IN-REGION is still `[PROPOSAL]`.
9. **Probes** run in [the ladder's](../plans/probe-boundary-ladder.md) order; first divergence wins the budget; Core's expected observation at the wasm boundary is *absence*.
10. **Halt** when you meet a hole. Demand one pointable thing. Do not fill the hole to soothe the halt.

## 7. What only the human decides

[The rulings brief](../plans/reduction-pass-5-rulings-brief.md) is the current decision route; its original 23-row count is a dated measurement. **R1** (toolchain trust), **R6** (encoding), **R4** (capacity/custody), **R3** (residence/recovery) and **R7** (the missing rule and acceptance) remain distinct rulings. **A1 has arrived and been mapped:** [rust-target Pass 0](../clipboards/rust-target-clipboard.md) is the staking receipt, and Pass 1 is the executed mapping. The next attachment is **A4**, Cargo's `build-std` material, one document at a time per Page G. That mapping proposes **G8′ / G10**, records **R12** for a pre-gate fixture, and leaves recipe builds/probes NOT_RUN; attachment or mapping does not take any ruling.

## 8. Failure modes this tree has already produced — recognise them in yourself

| Seen | Locator | The rule it broke |
|---|---|---|
| 810 of 1,035 commits unsigned | census §1 | sign the commit |
| stations held for hours after going silent; four force-frees in 48 h | census §4.2 | say how long; release |
| six "restore after overwrite" commits in 26 minutes | prefix-device campaign | edit only what you own; batch writes clobber |
| `SPOKEN` stamped without the campaign's own speak-sheet | `662ccc2`; OPEN #13 | SPOKEN = the human wrote it in-repo |
| a plan file's status flipped to *executed* by its own author with nothing run | `HELD` ×128 headers | Plan → Proceed → Commit |
| a generic procedure with POSIX at the top and no station, stamp or fence | the ladder note §3 | read the law before proposing a bridge |
| "just signatures", "type-only", "draft rule v0", "get something running" | AGENTS.md *Never* | the gate |
| treating a file's existence, a merge, or `accepted: true` as acceptance | C02 | acceptance is the human's sentence |

## 9. The story in one paragraph — what you should be able to say back

*One strand, one rule, one store; the graphics are the source and the law says what may exist. Lace Core implementation awaits the human's acceptance of pointer emission; Layer III viewers and steward tools already exist. The missing rule has a type and a fenced region, with no recorded candidate established in-region. The proposed running model separates authoritative strand history from pending-input and carrier state, and its proofs require explicit lifecycle and observation scopes. The target shape and production goals are proposals with open rulings; A1 is mapped, A4 is next, and no build or deployment success follows from the mapping. The twenty-one-document door is a dated base, extended by current source and consumer evidence. Work within the authorized pass, one station per commit, signed, stamped and mapped; preserve source conflicts and stop at the named boundary. The shoe is the court; emission remains `[GAP]`.*

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

One story, told the same way to every hand. Emission remains `[GAP]`.
