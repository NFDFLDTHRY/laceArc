# Contributing

This repository is model-first. The four graphics in `docs/graphics/` are the source. The systems manifest maps their couplings. Core implementation requires `docs/pointer-emission.md` to exist and have identifiable human acceptance of its exact content. Any unresolved gap needed by the proposed implementation still blocks that work. File existence alone does not open the gate.

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
- Invent a pointer-emission rule in code before it is written as part of Core.
- Add crates.io dependencies, foreign submodules, or a language other than Rust `no_std`.
- Vendor Coq, seL4, CompCert, or any posture-list tool as if that imported the height.

## First implementation cut, when it happens

Lock the write contract:

1. WORD append on arrival.
2. The pointer-emission rule (currently a gap), with human acceptance of the exact prose revision.
3. Pointers may reference earlier WORD or POINTER indices only.
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
