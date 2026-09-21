# CLAUDE.md

Standing orders for this tree are in [AGENTS.md](AGENTS.md). They apply to every
local and cloud agent, Claude Code included. Read that file together with
[the repository law](docs/law-why-these-documents.md),
[the agent control prompt](docs/kit/agent-control.md), and
[the task and handoff templates](docs/kit/agent-task-template.md).
The human-authored law governs these operating controls. Return the template's
source-specific receipt before proposing Core structure.

Source of record: `docs/graphics/` (four PNGs), then
[docs/systems-manifest.md](docs/systems-manifest.md). Cite the graphic or manifest
section you are using.

The three that get broken first:

- **No `src/`.** `docs/pointer-emission.md` now exists as a reconciled but
  **unaccepted** draft. Binary Join/current growth mechanics being written does
  not open the gate: the human must accept the exact content, arbitrary relation/
  sample selection remains `[GAP]`, and every task-specific premise must be resolved.
- **No second store.** No Star table, graph DB, embedding store, definition
  table, or N-dimensional storage. The append-only 1D array is the only store.
- **Mark `[GAP]`** where the source is silent. Do not close a gap with a
  convenient schema.

Ask before any commit that adds code or types. Acceptance does not lift permanent
prohibitions, and a second store remains forbidden. Work on the one assigned task;
do not create another implementation branch before the current task is proven.

## Working in this repo

There is no Lace Core implementation to install, build, or run. Layer III HTML viewers and steward scripts do exist; their behavior is not evidence that Core exists or that the reconciled pointer contract has been human-accepted. Documentation checks:

```bash
.claude/hooks/check-docs.sh
```

That verifies the four canonical graphics are present, no `src/` or PDF is
tracked, and every relative markdown link resolves. It runs automatically at the
start of web sessions via `.claude/hooks/session-start.sh`.

These are limited documentation checks. The session-start wrapper reports check
failures but returns success; it is advisory, not a publishing gate. Inspect the
underlying result. See [the dated downstream audit](docs/kit/downstream-audit.md).
