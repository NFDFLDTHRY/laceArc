# Contributing

This repository is model-first. The four graphics in `docs/graphics/` remain source authority, and later explicit human amendments are identified separately. `docs/pointer-emission.md` is a **reconciled but unaccepted** draft: WORD/root/RootTouch/binary Join and the human-ruled sampling architecture are recorded, while exact sampling-derived retention/materialization remains `[GAP]`. Core implementation still requires identifiable human acceptance of the exact pointer prose plus every other premise required by the proposed task. File existence or reconciliation alone does not open the gate.

Repo law: `docs/law-why-these-documents.md`.

All contributors and agent harnesses must use [the agent controls](docs/kit/agent-control.md) and [the task, review, and handoff templates](docs/kit/agent-task-template.md), subordinate to that law. See [docs/kit/READ_ME_FIRST.md](docs/kit/READ_ME_FIRST.md) for the installed documentation package and its remaining enforcement limits.

## Do

- Treat the append-only line as the only store.
- Keep history. No cuts, resets, rewrites, or deletions.
- Keep arrivals in arrival order.
- Keep distinct passes distinct. Ambiguity remaining in 3D is success, not a bug.
- Mark projections as views.
- Record inferences and gaps instead of filling them with a convenient schema.
- When code is allowed at all: Rust `#![no_std]`, zero external dependencies, first-party branches only, one proven task per branch.

## Do not

- Add a graph database, embedding store, or definition table as authority.
- Allocate a Star table. A star is repeated passage through the same word-variable.
- Store meaning.
- Collapse many passes into one edge.
- Implement dictionary, document, conversation, or provenance as separate engines.
- Add N-dimensional storage.
- Write a tokenizer that discards, masks, or interns words.
- Reintroduce an arbitrary semantic relation chooser, invent the open retention/materialization rule, change the reconciled Join mechanics, or use code to bypass the unaccepted pointer contract.
- Add crates.io dependencies, foreign submodules, or a language other than Rust `no_std`.
- Vendor Coq, seL4, CompCert, or any posture-list tool as if that imported the height.

## First implementation cut, when it happens

Lock the write contract:

1. WORD append on arrival; unseen→root and seen→RootTouch as recorded in the reconciled draft.
2. Binary Join over two ordered earlier same-line WORD/POINTER operands, with human acceptance of the exact prose revision before implementation.
3. Exact retention/materialization premise required by the task, including how a sampled structure becomes addressable if retention needs it; this remains `[GAP]` today.
4. Views that cannot write back.

Then lock the code contract from `docs/law-why-these-documents.md`:

5. `#![no_std]` Rust only.
6. Zero external dependencies.
7. Each first-party branch does one task, stated and proven, before the next branch exists.

If a change needs a second store, a crate, or a foreign toolkit to work, it is not a Lace change.

Acceptance of the pointer contract does not lift permanent prohibitions. Multiple
agents may review the same task, but do not open another implementation branch
before the current task is mathematically stated and proven. State the theorem,
premises, evidence, and unresolved objections; a passing example is not a proof.
