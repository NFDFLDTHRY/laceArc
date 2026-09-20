# Claude Code configuration

Session wiring for agents working in this repository. **Steward tooling, not Core.** Nothing here is Rust, and nothing here becomes a dependency of anything under a future `src/` — see [the live law](../docs/law-why-these-documents.md).

| File | Role |
|---|---|
| [settings.json](settings.json) | Hook registration and session settings |
| [hooks/check-docs.sh](hooks/check-docs.sh) | Repository checks. Four checks can return failure: graphics present, no tracked `src/`, no tracked PDFs, and relative Markdown links resolve. Five advisory classes do not: stale absence claims, unreferenced files, law-copy drift, door coverage, and actor attribution in the last 200 commits |
| [hooks/session-start.sh](hooks/session-start.sh) | Runs the checks at session start. Reports failures and returns success: advisory, not a publishing gate |

Owned by the `kit` station. The checks are documentation checks over the tree, not a compliance gate — see [downstream-audit.md](../docs/kit/downstream-audit.md) F06 and F07 for what they do not cover.

The repository has Layer III viewers and steward scripts, but no Lace Core implementation. The session hook's older “no runtime” wording must be read within that Core scope; its script is unchanged by this documentation pass. Hook execution is registered for Claude Code web sessions, not every agent harness.

POINTER emission stays `[GAP]`. There is no `src/`.
