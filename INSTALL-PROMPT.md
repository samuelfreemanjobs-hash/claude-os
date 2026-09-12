# Claude Business OS — Install Prompt

Paste everything **below the line** into Claude Code (new session, cwd = `~/`).
Prerequisite: the repo is already cloned at `~/claude-business`.

---

Install my **Claude Business OS** from the cloned repo at `~/claude-business`. Execute every step — don't just describe them. Show a status line after each step.

## Inputs (ask me if missing)

- `BUSINESS_ROOT` — where the workspace lives (default: `~/claude-business`)
- `Use git?` — initialize a git repo in BUSINESS_ROOT? (yes / no)
- My name (for the CLAUDE.md owner line)

## Step 1 — Verify source

Check that `~/claude-business/skills/` exists and contains all 5 folders:
- `business-hub-init`
- `business-hub-audit`
- `ad-pack-from-offer`
- `pwa-idea-to-spec`
- `pricing-positioning-memo`

If any are missing, stop and tell me. Otherwise print: `✓ Source verified — 5 skills found`

## Step 2 — Install skills

```bash
mkdir -p ~/.claude/skills
cp -r ~/claude-business/skills/business-hub-init ~/.claude/skills/
cp -r ~/claude-business/skills/business-hub-audit ~/.claude/skills/
cp -r ~/claude-business/skills/ad-pack-from-offer ~/.claude/skills/
cp -r ~/claude-business/skills/pwa-idea-to-spec ~/.claude/skills/
cp -r ~/claude-business/skills/pricing-positioning-memo ~/.claude/skills/
```

Print: `✓ Skills installed — 5 skills in ~/.claude/skills/`

## Step 3 — Create workspace folders

```bash
mkdir -p ~/claude-business/deliverables/ad-packs/{drafts,approved}
mkdir -p ~/claude-business/deliverables/pwa-specs/{drafts,approved}
mkdir -p ~/claude-business/deliverables/pricing-memos/{drafts,approved}
mkdir -p ~/claude-business/deliverables/hub-init
mkdir -p ~/claude-business/deliverables/hub-audits
mkdir -p ~/claude-business/memory/session-logs
mkdir -p ~/claude-business/projects
```

Print: `✓ Workspace folders created`

## Step 4 — Write project CLAUDE.md

Create `~/claude-business/.claude/CLAUDE.md`:

```
# Claude Business OS — Project Rules

## Identity
Owner: [MY NAME]
Hub: ~/claude-business/hub/
Deliverables: ~/claude-business/deliverables/
Agent registry: ~/claude-business/agents/REGISTRY.md

## Hub loading rules
- Load hub/MANIFEST.md at session start to know which hub files are relevant for the current workflow
- Load only the sections relevant to the active skill (per MANIFEST)
- If a hub file is missing, mark [HUB FILE MISSING] and continue with stated assumptions

## Governance rules (non-negotiable)
- AI drafts everything — human approves before: publishing ads, deploying to production, changing live prices, sending emails to customers, signing contracts
- Never write API keys, passwords, EIN, SSN, bank account numbers into any hub file
- Mark invented facts with [ASSUMPTION] and legal items with [DRAFT — attorney review]
- Human gate at the end of every skill — do not skip it

## Skill triggers
- "ad pack" / "run an ad" / "ad campaign" → /ad-pack-from-offer
- "build an app" / "spec a PWA" / "app idea" → /pwa-idea-to-spec
- "pricing" / "positioning" / "price review" → /pricing-positioning-memo
- "update hub" / "init hub" / "fill in hub" → /business-hub-init
- "audit" / "health check" / "OS score" → /business-hub-audit

## Naming conventions
- Deliverable files: YYYY-MM-DD_[slug]_[type].md
- Branches: feature/[slug], fix/[slug]
- Campaigns: [PLATFORM]-[OFFER-SLUG]-[ANGLE]-[DATE]
```

Print: `✓ CLAUDE.md written`

## Step 5 — Optional git init

Ask me: "Initialize git in ~/claude-business? (yes/no)"

If yes:
```bash
cd ~/claude-business
git init
git add hub/ agents/ skills/ cadence/ docs/ README.md START-HERE.md INSTALL-PROMPT.md
git commit -m "chore: init Claude Business OS"
```

If no: skip.

## Step 6 — Verify installation

Print a verification table:

| Check | Status |
|---|---|
| Skills in ~/.claude/skills/ | [list names or ✓] |
| Hub sections hub/01 through hub/08 | [count present / 8] |
| Deliverables folders | ✓ or list missing |
| .claude/CLAUDE.md | ✓ or missing |
| agents/REGISTRY.md | ✓ or missing |

## Step 7 — Next steps

Tell me:

> Installation complete.
>
> **Next steps:**
> 1. Run `/business-hub-init` to fill in your business details (takes ~20 min, interview style)
> 2. Run `/business-hub-audit` to see your OS health score
> 3. Run your first workflow: `/ad-pack-from-offer`, `/pwa-idea-to-spec`, or `/pricing-positioning-memo`
>
> **Daily habit:** open Claude Code with cwd = ~/claude-business before starting work.
