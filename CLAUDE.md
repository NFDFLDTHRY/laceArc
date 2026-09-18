# CLAUDE.md

Standing orders for this tree are in [AGENTS.md](AGENTS.md). They were written for
Grok sessions; they apply to any agent session here, Claude Code included.
Read that file before proposing structure. It is the authority — what follows is
a summary, not a second copy of the rules.

Source of record: `docs/graphics/` (four PNGs), then
[docs/systems-manifest.md](docs/systems-manifest.md). Cite the graphic or manifest
section you are using.

The three that get broken first:

- **No `src/`.** Core may not be implemented until `docs/pointer-emission.md`
  exists as prose. If asked to implement, write that file instead.
- **No second store.** No Star table, graph DB, embedding store, definition
  table, or N-dimensional storage. The append-only 1D array is the only store.
- **Mark `[GAP]`** where the source is silent. Do not close a gap with a
  convenient schema.

Ask before any commit that adds code, types, or a second store.

## Working in this repo

There is nothing to install, build, or run. Checks:

```bash
.claude/hooks/check-docs.sh
```

That verifies the four canonical graphics are present, no `src/` or PDF is
tracked, and every relative markdown link resolves. It runs automatically at the
start of web sessions via `.claude/hooks/session-start.sh`.
