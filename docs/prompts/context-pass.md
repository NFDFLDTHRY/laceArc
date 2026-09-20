# The context pass — the same story, for every agent

Layer III steward prompt. Not Hands. Not law. Not Core. Emission remains `[GAP]`. No `src/` from a prompt.

**Read this immediately after [`AGENTS.md`](../../AGENTS.md), before any task.** It is the story one editor holds after reading the whole tree, the four PNGs, and the human's own record; it is written so that DeepSeek, Grok, Codex, Astra, ChatGPT, Claude and the next model nobody has met yet hold the *same* story. Every sentence here is either a citation into the tree or stamped. Where it and the tree differ, the tree wins and this file is wrong.

**Written** 2026-09-19 by Claude Fable 5.1 at branch `lace-context-iteration-6` (base `e2e8155`), on the human's instruction: *"all agents need to see the same story in the repo that you do."*

---

**Human correction, 2026-09-20:** HCC-A, The Coffee Cup, and Where the Water Is Loud are conceptual reference documents. The earlier H/C/W gearbox interpretation does not establish required holder machinery, runtime dependencies, or legal-append conditions. Apply the [live-law correction](../law-why-these-documents.md#conceptual-reference-documents) when reading the clock maps or older records. Their concepts remain available for reasoning; no pointer-emission rule or acceptance follows from them.

## 1. What this is (the Hands, in six sentences)

Lace is **one continuously growing strand**. Every word occurrence is more wire; every word has a persistent star; a definition is a route through other stars; a document is a physical route in arrival order. The **only store** is Graphic D: one append-only 1D array of **WORD** and **POINTER** entries, where a POINTER names earlier entries on the same line and can itself be named later. Nothing is deleted, rewritten, parsed away, or stored as meaning. Higher dimensions are not new storage and not new meaning; they are more independent ways the same wire participates. The whole mechanism is one rule, said two ways: *Input word arrives. Route new wire through that word's star. Continue.* / *Input arrives. Append a new section. Use pointers to participate in what already exists.*

Source of record: the four PNGs in `docs/graphics/` (open them; cite panels), then [`docs/systems-manifest.md`](../systems-manifest.md). Law: [`docs/law-why-these-documents.md`](../law-why-these-documents.md). **If you cannot see the PNGs, every structural judgment you make is `[BLOCKED]`.**

## 2. Where it stands (the gate)

- **There is no code, on purpose.** Core may not exist until [`docs/pointer-emission.md`](../pointer-emission.md) — *when a POINTER is written* — is accepted by the human, in-repo, in words. File existence is not acceptance. A commit is not acceptance. A filled Answer line is not acceptance.
- **The rule has a type and a region, and no point.** The missing rule is a schedule `σ : 𝓛 × V → Step*` ([environment](../plans/lace-context-iter6-pass-4-environment.md) E2). Thirteen fences, each cited to a graphic, the algebra or a reference shelf, bound the region a σ may lie in. The region is **non-empty and non-trivial** (E4). **Every candidate anyone has written down — 17 — is outside it**, each for a named reason (E5). E6 says what a candidate must look like; E7 says how to run one.
- **The four `SPOKEN (campaign)` stamps on Q0 / Q1 / Q5 / slot II are unwitnessed.** Their campaign's own speak-sheet was never filled; the human's memory record holds nothing carrying them into this tree; three of the four graphics say *every occurrence is kept* at governing-rule level against the Q0/Q5 sentence. Companion OPEN **#13**. Not yours to re-stamp.
- **When code is allowed:** Rust, `#![no_std]`, zero external dependencies, every dependency a first-party branch, one branch one task, proven before the next branch exists. Target sealed by the human: `wasm64-unknown-unknown`.

## 3. What has been established since 2026-09-19, and at what strength

| Product | One line | Strength |
|---|---|---|
| [the environment](../plans/lace-context-iter6-pass-4-environment.md) | σ typed; 13 fences; region non-empty; 17 candidates placed | `PROVED_WITHIN_SCOPE` for E4; `[PROPOSAL]` as a document |
| [the execution model](../plans/reduction-pass-2-execution-model.md) | the running app as one machine: Σ = (L, h, K); six transitions; **M1: `L` is the only authoritative state**; M2 determinism modulo σ; M3 the D1 trace; parametric in exactly σ · enc · cap · res · ord — the human's rulings | `PROVED_WITHIN_SCOPE` (M1–M3); `[PROPOSAL]` |
| [the shape](../plans/lace-context-iter6-pass-5-crate-proposal.md) | seven doors unchanged + sheets T R H C S E from `strand/` to an installed WebAPK; rulings R1–R8 prepared, none taken | `[PLAN]` |
| [the target facts](../plans/lace-context-iter6-pass-2-findings.md) | wasm64 is Rust Tier 3 (nightly + `build-std`); Chrome ≥ 133 has Memory64 on Android; 16 GB cap; 10–100% bounds tax; **on-device wasm64 scale `UNESTABLISHED`** | web `OBSERVED`; device `HUMAN_REPORTED` |
| [the compute model + inventory](../plans/lace-context-iter7-pass-2-compute-and-inventory.md) | one writer; WebGPU/WGSL as projection; **WebNN has no Core role** (R10); frontier protocol (R9); 32 components, all owned and gated | `[PROPOSAL]` |
| [the distribution amendment](../kit/distribution-model.md) | githack = development (proven install); the business domain = production, glacier releases, **installed once, offline forever**; promotion gate G1–G7 | HUMAN_REPORTED (the human's words); acceptance `ABSENT` until affirmed |
| the companion, Passes 26–28 | Hands CONFIRM (A13/B12.2/C12.2/C10.2); OPEN #13–#15; the deliverable's missing boxes drawn cite-only; M1 confirms *shared state = L* | readings; 0 Core sentences changed |
| [the door](../plans/reduction-pass-1-findings.md) §5 | **S = 21 documents** + the four PNGs + the manifest + the law: everything a builder opens. The other ~510 files are provenance | measured |
| [roles](../kit/roles.md) · [generator](six-pass-proposal-generator.md) · [ladder](../plans/probe-boundary-ladder.md) · [diagram-prompt](lace-context-diagram-prompt.md) | who holds what; how to start a campaign; the order of the probes; how to map a finding | steward |

## 4. The human, as the record shows him (memory-informed; every line `[PROPOSAL]`, provenance in [iteration 6 pass 1](../plans/lace-context-iter6-pass-1-findings.md))

He has worked this object for about ten years; **the literal shoelace is the primary source object, not an analogy** — *shoe in hands is the court*. He transmits by **instance, not description**: months of failed explanation ended when he wrote *"A defined by B, B defined by C, C defines A."* Show him a run, a row, a number — not a paraphrase. He wants **pointable claims** and marks every statement as ruled / carried / derived / proposed / open, and has corrected agents for silently filling gaps. His corrections are **direct and brief and point you back at the source**; he expects you to do the rereading. He builds by **A\*** — from the complete vision backward to the present — and considers that non-negotiable. His standing rule for hardware: **a Chrome-exposed capability is a test subject, not authority** until a probe on the device observes it. An installed WebAPK must become **Termux-independent after install**. His recurring frustration, in his words: agents *inventing new encodings and observers instead of walking the simple one already there*, and *building definitions that don't exist*. His term of art **"God"** names AI and programming practice reaching for an outside authority. His team pattern: one builds, he identifies errors, one audits. He is buying credits for this; **do not spend them re-deriving what the tree already holds.**

## 5. Quarantine — the older lineage and memory

There was an earlier repo, ShoeLacey, and a body of memory and chat around it. AGENTS.md dates it as *"a dated other repo, not this law."* Its vocabulary — **tie · window · block · Unit · closed loop · touch-on-touch · star-as-lens (radius = character value) · frontier-as-layer · resolution bind** — is **never mapped onto WORD / POINTER / Φ**. If you find it, report where; do not translate it. Anything from memory or chat is `[PROPOSAL]` until the human writes it in-repo. *Exact-match ties* and *"touch grows lace"* are named non-answers on the emission file; do not revive them under new names.

## 6. How to work here

1. **Pin.** `git pull --ff-only origin main`; state the commit.
2. **Read the door** ([S](../plans/reduction-pass-1-findings.md) §5) before anything else on the shelves. Provenance is for checking, not building.
3. **Cadence.** *Plan → Proceed → Commit.* A plan file per pass, measured before it proposes, thesis with a falsifier, may-write / must-not, expected vs actual, stop. Status `PLAN` until the human says proceed. Use [the generator](six-pass-proposal-generator.md).
4. **Stations.** `coord.sh which → claim <station> "<Identity>" → edit only what it owns → gate → commit → release`. One station per commit. An identity, never a task name. Say how long you expect to hold it. **The law station is the human's.**
5. **Sign every commit** with an actor trailer ([roles](../kit/roles.md)). Unsigned work cannot be assigned work; the count prints at every session start.
6. **Stamp every claim** on the sentence: origin · evidence state · human acceptance. `[GAP]` where the source is silent; `[CONFLICT]` where sources disagree; `[INFERENCE]` with premises; `[PROPOSAL]` until accepted.
7. **Map, do not define.** Every finding has an address on [the diagram](lace-context-diagram-prompt.md): box · Piece · companion slot · fence · ruling.
8. **A candidate rule** is run through E7 with all eleven D1 rows shown, by someone who did not write it. IN-REGION is still `[PROPOSAL]`.
9. **Probes** run in [the ladder's](../plans/probe-boundary-ladder.md) order; first divergence wins the budget; Core's expected observation at the wasm boundary is *absence*.
10. **Halt** when you meet a hole. Demand one pointable thing. Do not fill the hole to soothe the halt.

## 7. What only the human decides

[The rulings brief](../plans/reduction-pass-5-rulings-brief.md): 23 rows. The order that unblocks the most: **R1** (is the pinned nightly + `rust-src` inside "zero external dependencies"?) → **A1** (attach the rustc target page) → **R6** (encoding) → **R4** (capacity; custody of a refused arrival) → **R3** (where `L` lives across a reload) → **R7** (a σ that passes E6, accepted in words). References are requested **one at a time**; A1 is next.

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

*One strand, one rule, one store; the graphics are the source and the law says what may exist. Code is forbidden until the human accepts a rule for when a POINTER is written; that rule now has a type and a fenced, non-empty region, and every written candidate lies outside it. The running app has been modelled: its only authoritative state is the strand; six transitions; everything else a function of it or a ruling of the human's. The shape from `strand/` to an installed, offline-forever WebAPK is drawn, with every unsettled premise named as one of 23 rulings and none taken. Twenty-one documents plus the four pictures, the manifest and the law are the whole reading; the rest is provenance. Work in six-pass campaigns, one station per commit, signed, stamped, mapped, halting at holes. The human holds a hologram of the machine; the shoe is the court; emission remains `[GAP]`.*

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

One story, told the same way to every hand. Emission remains `[GAP]`.
