# Claude Business OS

A local skill pack for Claude Code that gives you persistent business memory, 24 specialist agent roles, 5 workflow skills, and human-gated governance — all without a custom dashboard.

## Quick start

```bash
# 1. Clone to your business workspace
git clone https://github.com/samuelfreemanjobs-hash/claude-os.git ~/claude-business

# 2. Install skills
mkdir -p ~/.claude/skills
cp -r ~/claude-business/skills/* ~/.claude/skills/

# 3. Open Claude Code in the workspace
# cwd: ~/claude-business

# 4. Fill in your business hub
/business-hub-init

# 5. Check OS health
/business-hub-audit
```

**Or paste `INSTALL-PROMPT.md` into Claude Code to automate steps 2–5.**

## What's inside

| Folder | Purpose |
|---|---|
| `hub/` | Business memory — 8 sections, ~18 template files |
| `agents/REGISTRY.md` | 24 specialist agent roles — mission, inputs, outputs |
| `skills/` | 5 workflow skills with embedded agent prompts |
| `cadence/` | Weekly / monthly / quarterly rituals |
| `hooks/` | Session-end log hook |
| `docs/` | Master plan, improvements, MVP guide |
| `INSTALL-PROMPT.md` | Paste into Claude Code to install everything |

## Workflow skills

| Skill | What it builds | Core squad |
|---|---|---|
| `/business-hub-init` | Fills hub/ sections 1–8 via interview | 8 section agents + CoS |
| `/business-hub-audit` | Scores OS health /100, top 3 gaps | Auditors + synthesis |
| `/ad-pack-from-offer` | Campaign-ready ad pack | 5 specialists + CoS |
| `/pwa-idea-to-spec` | Build-ready PWA spec | 6 specialists + CoS |
| `/pricing-positioning-memo` | Pricing + positioning decision memo | 4 specialists + CoS |

## Governance rules (always on)

- AI drafts everything. **You approve** before spend, deploy, or live pricing changes.
- Hub files are source of truth — update them after major decisions.
- Run `/business-hub-audit` monthly to catch rot.
- Never write API keys, EIN, SSN, or passwords into hub files.

## File locations after install

| Thing | Path |
|---|---|
| Hub | `~/claude-business/hub/` |
| Deliverables | `~/claude-business/deliverables/` |
| Skills | `~/.claude/skills/` |
| Project rules | `~/claude-business/.claude/CLAUDE.md` |
