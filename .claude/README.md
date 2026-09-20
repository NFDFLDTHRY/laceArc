# Claude Code configuration

Session wiring for agents working in this repository. **Steward tooling, not Core.** Nothing here is Rust, and nothing here becomes a dependency of anything under a future `src/` — see [the live law](../docs/law-why-these-documents.md).

| File | Role |
|---|---|
| [settings.json](settings.json) | Hook registration and session settings |
| [hooks/check-docs.sh](hooks/check-docs.sh) | Repository checks. Four invariants that fail the gate — graphics present, no `src/`, no tracked PDFs, links resolve — and four advisories that never do: stale absence claims, orphans, law-copy drift, door coverage |
| [hooks/session-start.sh](hooks/session-start.sh) | Runs the checks at session start. Reports failures and returns success: advisory, not a publishing gate |

Owned by the `kit` station. The checks are documentation checks over the tree, not a compliance gate — see [downstream-audit.md](../docs/kit/downstream-audit.md) F06 and F07 for what they do not cover.

POINTER emission stays `[GAP]`. There is no `src/`.
