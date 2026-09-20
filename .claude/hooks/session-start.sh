#!/bin/bash
# SessionStart hook for Claude Code on the web.
#
# laceArc has Layer III viewers and steward scripts, but no Lace Core
# implementation. Core requires the human's in-repo acceptance of
# docs/pointer-emission.md (AGENTS.md "Job"). This hook installs nothing;
# it reports the existing repository checks to the session.
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
echo "This hook installs nothing. Layer III viewers and steward scripts exist."
echo "Lace Core is not implemented. Do not create src/ to 'get something running'."
echo "Core requires human acceptance of docs/pointer-emission.md in-repo; see AGENTS.md."
echo
echo "Repository checks (.claude/hooks/check-docs.sh):"

if ! "${CLAUDE_PROJECT_DIR:-.}/.claude/hooks/check-docs.sh"; then
  echo
  echo "A check failed. Fix it before proposing anything else."
fi

# A failing check is information for the session, not a reason to refuse to
# start one.
exit 0
