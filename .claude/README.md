# Claude Code configuration

Session wiring for agents working in this repository. **Steward tooling, not Core.** Nothing here is Rust, and nothing here becomes a dependency of anything under a future `src/` — see [the live law](../docs/law-why-these-documents.md).

| File | Role |
|---|---|
| [settings.json](settings.json) | Hook registration and session settings |
| [hooks/check-docs.sh](hooks/check-docs.sh) | Repository checks. Four checks can return failure: graphics present, no tracked `src/`, no tracked PDFs, and relative Markdown links resolve. Five advisory classes do not: stale absence claims, unreferenced files, law-copy drift, door coverage, and actor attribution in the last 200 commits |
| [hooks/session-start.sh](hooks/session-start.sh) | Runs the checks at session start. Reports failures and returns success: advisory, not a publishing gate |
| [tests/actor-attribution.sh](tests/actor-attribution.sh) | Runs the copied actual checker against temporary Git histories: multiple/mixed trailers, empty values, no trailers, unborn HEAD and the 200-commit boundary. No remotes or live history changes |

Owned by the `kit` station. The checks are documentation checks over the tree, not a compliance gate — see [downstream-audit.md](../docs/kit/downstream-audit.md) F06 and F07 for what they do not cover.

The repository has Layer III viewers and steward scripts, but no Lace Core implementation. The hooks state that distinction and the human's in-repo acceptance requirement for pointer emission. The tracked-path check does not determine acceptance. The session hook installs nothing; execution is registered for Claude Code web sessions, not every agent harness. Session-hook predicates, registration and exit behavior are unchanged.

Actor attribution counts each of the last 200 commits once when it has at least one nonempty `Agent` or `Co-Authored-By` trailer value. Multiple trailers cannot hide an unsigned commit; empty values do not count. This remains advisory and does not establish identity, authority or human acceptance. Run `bash .claude/tests/actor-attribution.sh`; optionally set `LACE_SOURCE_REV` to test the checker from a recorded commit. The other checks and their exit behavior are unchanged by this repair.

POINTER emission stays `[GAP]`. There is no `src/`.
