#!/bin/bash
# SessionStart hook for Claude Code on the web.
#
# laceArc has no dependency manifest, no build, and no runtime — that is the
# point of the repo, not an omission (README.md "Status", AGENTS.md "Job").
# So this hook installs nothing. It confirms the model tree is intact and
# hands that result to the session.
#
# Standing orders live in AGENTS.md and are loaded via CLAUDE.md; they are not
# repeated here. One source of record.
set -uo pipefail

# Web sessions only. Local checkouts are left alone.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:-$(git rev-parse --show-toplevel)}" || exit 0

echo "laceArc session environment"
echo "No dependencies to install: this is a model repository with no runtime."
echo "There is no src/, no build, and no test suite. Do not create them to"
echo "'get something running' — see AGENTS.md."
echo
echo "Repository checks (.claude/hooks/check-docs.sh):"

if ! "${CLAUDE_PROJECT_DIR:-.}/.claude/hooks/check-docs.sh"; then
  echo
  echo "A check failed. Fix it before proposing anything else."
fi

# A failing check is information for the session, not a reason to refuse to
# start one.
exit 0
