# Iteration 6 — personal-context alignment and the shape of the crate

**Status:** `[PROPOSAL]` iteration. **Passes 1–6 executed.** Receipt: [lace-context-iteration-6-receipt.md](lace-context-iteration-6-receipt.md). **Station:** maps. **Emission:** `[GAP]`. No `src/`.
**Pinned at:** `e2e8155942b6ef084d2ef9f4a05fcf8fb1dd829f` (origin/main, 2026-09-20T03:14Z). **Branch:** `lace-context-iteration-6`.
**Convened by:** the human, 2026-09-19, in words: *"Your first 6 pass iteration of personal lace context informed repo alignment and repo coherence"* and *"absolute repo God mode to reshape."* Recorded as an amendment of scope, not of law. **No permanent prohibition is lifted by this iteration.** `src/`, Cargo, emit stubs and second stores stay forbidden.
**Editor:** one agent (Claude Fable 5.1, cloud session, no push credential — see §6). Propose / attack / resolve are performed by that one agent and are **not independent review**.

## 0. Why this iteration exists

[Iteration 5 pass 4](verification-iter5-pass-4-plan.md) named four claims the tree knows it holds only outside itself, wrote an extraction prompt that fails closed, and could not run it. That prompt was run in a session with memory access on 2026-09-19. Its yield is [pass 1's findings](lace-context-iter6-pass-1-findings.md). **The yield is small and that is the result the prompt was written to produce:** memory did not confabulate any of the four.

The human then asked for more than the yield: a coherent shape — a `#![no_std]` Rust crate proposal, aligned to a `wasm64` target, that an agentic team could follow to an installable Chrome Android web app, built only from evidence at its actual strength. The tree already holds most of the parts: [a crate tree](rust-nostd-crate-map.md), [seven birth cards](rust-nostd-branch-contracts.md), [a partial algebra](../math-execution-model.md), [a WASM crosswalk](math-execution-wasm-crosswalk-pass-1.md), a [sealed wasm64 target](../clipboards/wasm-spec-3-clipboard.md) and [a proven install path](../kit/githack-pwa-deploy.md). What it does not hold is the join between them, and the join is where every agent so far has either stopped or invented.

## 1. The thesis, stated so it can lose

**The parts the tree already holds compose into one shape without inventing emission, and the places they do not compose are enumerable, small, and each one is a human ruling rather than an agent default.**

**Falsifier:** if composing the existing plans forces a choice the Hands do not close and no human has spoken — allocator, persistence, arity, tokenizer, concurrency — and the shape cannot be stated without taking that choice, the thesis loses and the receipt says which choice broke it. **Pass 5 is where it would break.**

**Second falsifier:** if anything from memory or conversation enters any document at a strength above `[PROPOSAL]`, this iteration has done the thing iteration 5 pass 4 §2 warned against. The landing rule is fixed before anything lands: **extraction output is `[PROPOSAL]`; it becomes `SPOKEN` only when the human writes it in-repo** — the register's own definition, not pass 7's widened one.

## 2. The six passes

| Pass | One question | Product | Station |
|---|---|---|---|
| **1** | What does the human's own record hold that the repo does not, and at what strength? | [pass 1 findings](lace-context-iter6-pass-1-findings.md) — extraction landed as `[PROPOSAL]`; the pass-7 custody finding; four uncited Hands governing statements | maps |
| **2** | What is true of the target — `wasm64-unknown-unknown`, Chrome on Android, the Pixel 9a — at evidence strength, and which references must the human attach? | [pass 2 findings](lace-context-iter6-pass-2-findings.md) | maps |
| **3** | Does the global ASCII systems diagram match the evidence-backed rulings? | Pass 26 appended to [systems-manifest-ascii.md](../systems-manifest-ascii.md) as Iteration-4 Pass 1 delta admission; [pass 3 findings](lace-context-iter6-pass-3-findings.md) | maps |
| **4** | What is the mathematical execution environment — the thing that "solves lace against the reference material" — stated so an agent can run it and cannot fill Φ with it? | [pass 4 environment](lace-context-iter6-pass-4-environment.md) | maps |
| **5** | What is the complete crate shape, from `strand/` to an installed WebAPK, with every unsettled premise named as a human ruling? | [pass 5 crate proposal](lace-context-iter6-pass-5-crate-proposal.md) — **the rulings brief is written by the agent and not taken by it** | maps |
| **6** | What was established, what could not be, what is unrecoverable, what the human must attach or rule, and what the team does next? | [ASCII diagram-as-prompt](../prompts/lace-context-diagram-prompt.md) (prompts); [iteration 6 receipt](lace-context-iteration-6-receipt.md) (maps) | prompts · maps |

Pass 5 of the standing [iteration shape](verification-iterations.md) is the human's. Here it is folded into the crate proposal as a **rulings brief** because the rulings are the crate's open premises; the brief is prepared, the rulings are not taken.

## 3. Rules this iteration adds to the measured ones

| Rule | Why |
|---|---|
| **Memory is testimony about testimony.** Every item from the human's memory store or past conversations carries VERBATIM / PARAPHRASE, a date, a confidence, and lands as `[PROPOSAL]`. Nothing from it is cited as `SOURCE` | iteration 5 pass 4 §2 |
| **Older-repo vocabulary is quarantined.** ShoeLacey-lineage terms (*tie, window, touch-on-touch, Unit, closed loop*) are reported when found and **never** mapped onto WORD / POINTER / Φ. AGENTS.md dates that repo as other law | AGENTS.md adjacent reading; agent-control §HISTORY |
| **A verified web fact is `OBSERVED` for the sentence it supports, with URL and date, and is a `[BLOCKED]` reference until the human attaches the document** | the human's standing instruction this iteration: external technical evidence is requested as an attachment and becomes a process clipboard |
| **The device is a test subject.** A Chrome-exposed capability (memory64, WebGPU limits, OPFS) is `UNESTABLISHED` on the Pixel 9a until a probe on that device observes it | the human's V14 rule, recorded in pass 1 |
| **One station per commit; local claims.** This session cannot push (§6), so every claim is recorded in the commit but invisible to other agents until the branch lands | coord protocol; §6 |

## 4. What this iteration must not do

- Fill `[GAP]` on `docs/pointer-emission.md`, or edit that file at all. It is law-station and the human's.
- Edit sealed products: `math-execution-model.md` and its pass 3–6 products, the nine clipboards, the graphics, the law. Findings go into maps-owned records.
- Invent a tenth clipboard shelf. A reference the human attaches is staked by the human, as the nine were; until then it is a request.
- Write `src/`, `Cargo.toml`, a type, an emit stub, or a "draft rule v0."
- Treat this iteration's convening words as acceptance of anything.

## 5. Accept the iteration when

All six products exist; every claim in them carries origin and evidence-state stamps; the receipt states coverage as fractions; the crate proposal names every unsettled premise as a ruling and takes none; the diagram-prompt maps rather than defines; `check-docs.sh` passes on the branch; and the human has been handed the attachment list and the rulings brief.

## 6. The push boundary, stated once

The session's git proxy refuses this repository (`403: not in this session's authorized repository set`). Every commit in this iteration is local to branch `lace-context-iteration-6` and is delivered as a bundle. **Claims made through `coord.sh` are therefore honest in the record and invisible on `origin`.** If another agent claims maps on `origin` while this branch is unlanded, the merge is the human's to sequence. Nothing here is a claim of enforcement.

## Steward test

If you cannot do it to a shoe lace in your hands, you may not do it to laceArc.

The human asked for a shape, not a machine. A shape can be drawn around a hole. Emission remains `[GAP]`.
