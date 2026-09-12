#!/bin/bash
# Session-end log hook for Claude Business OS
# Add to ~/.claude/settings.json PostToolUse hooks (or session end trigger)
# Logs a brief session entry to memory/session-logs/
#
# Usage in settings.json:
# {
#   "hooks": {
#     "Stop": [{ "command": "bash ~/claude-business/hooks/session-end-log.sh" }]
#   }
# }
#
# Note: This is a template. Claude Code hooks run the command as-is;
# Claude itself writes the actual session summary content before the hook fires.
# See: https://code.claude.com/docs for current hook configuration.

LOG_DIR="$HOME/claude-business/memory/session-logs"
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H-%M)
LOG_FILE="$LOG_DIR/${DATE}_${TIME}_session.md"

mkdir -p "$LOG_DIR"

# Create a stub log entry if one doesn't exist for today
# Claude's actual session summary should be written to this file during the session
if [ ! -f "$LOG_FILE" ]; then
  cat > "$LOG_FILE" << EOF
# Session Log: $DATE $TIME

## What was worked on
[Claude fills this in during session]

## Decisions made
[Any decisions worth logging to hub/07/operating-rules.md]

## Hub files updated
[List any hub files changed]

## Deliverables produced
[List any files written to deliverables/]

## Blockers / open items
[Anything unresolved that needs follow-up]
EOF
  echo "Session log created: $LOG_FILE"
fi
