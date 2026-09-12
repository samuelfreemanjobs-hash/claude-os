# MVP Requirements

The minimum you need for the system to work. Don't build beyond this until Phase A produces real value.

## Required for Phase A

| Item | Why | Where |
|---|---|---|
| hub/01-identity-strategy/ (6 files) | Every marketing skill needs ICP, offer, voice, positioning | `hub/01/` |
| hub/02-legal-finance-trust/claims-compliance.md | Ad pack can't run without it | `hub/02/` |
| hub/02-legal-finance-trust/terms-privacy-refund.md | Guarantee wording in ads | `hub/02/` |
| hub/07-operating-rules/operating-rules.md | Human gates need to be defined | `hub/07/` |
| 5 skills in ~/.claude/skills/ | The workflows | `~/.claude/skills/` |
| .claude/CLAUDE.md with HUB_PATH | Session loads right context | `~/claude-business/.claude/` |

## Optional for Phase A (add later)

| Item | Why you can skip it | Add it when |
|---|---|---|
| hub/03–08 sections | Useful but not blocking ad pack or pricing memo | Before running pwa-spec or eComm work |
| agents/REGISTRY.md | CoS can work without it | Before running complex multi-agent workflows |
| cadence/rituals.md | Good habit but not a blocker | Once Phase A feels stable |
| hooks/session-end-log.sh | Memory is nice but not required | Once you've lost a decision and wished you'd logged it |
| MCP connections | Agents work on file-based hub without live data | When a specific workflow needs live data |
| Git on hub/ | Good practice, not required | Before Phase C |
| Dashboard / mission control | Never required | If you're running 3+ parallel workflows daily |

## Common over-building mistakes

- Setting up all 8 MCP connections before running a single workflow
- Building a custom dashboard before the hub is filled
- Adding RAG/vector search before the hub has enough content to search
- Connecting ad platform write-access before ad pack skill is tested
- Configuring hooks before skills are working

**Rule:** If the next thing you're about to build isn't in the "Required" table above and you haven't finished Phase A, don't build it yet.
