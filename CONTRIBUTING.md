# Contributing

This repository is model-first. The four graphics in `docs/graphics/` are the source. The systems manifest maps their couplings. Implementation comes after the open gaps in the manifest are closed in writing.

## Do

- Treat the append-only line as the only store.
- Keep history. No cuts, resets, rewrites, or deletions.
- Keep arrivals in arrival order.
- Keep distinct passes distinct. Ambiguity remaining in 3D is success, not a bug.
- Mark projections as views.
- Record inferences and gaps instead of filling them with a convenient schema.

## Do not

- Add a graph database, embedding store, or definition table as authority.
- Allocate a Star table. A star is repeated passage through the same word-variable.
- Store meaning.
- Collapse many passes into one edge.
- Implement dictionary, document, conversation, or provenance as separate engines.
- Add N-dimensional storage.
- Write a tokenizer that discards words.
- Invent a pointer-emission rule in code before it is written as part of Core.

## First implementation cut, when it happens

Lock the write contract:

1. WORD append on arrival.
2. The pointer-emission rule (currently a gap).
3. Pointers may reference earlier WORD or POINTER indices only.
4. Views that cannot write back.

If a change needs a second store to work, it is not a Lace change.
