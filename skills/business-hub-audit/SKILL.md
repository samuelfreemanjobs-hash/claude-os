# Business Hub Audit

## Description
Score the health of your Claude Business OS. Checks all 8 hub sections, surfaces gaps by tier, and produces a 30-day fix plan. Run monthly.

Invoke: `/business-hub-audit` | "audit my hub" | "business health check" | "OS score"

## Inputs
- `HUB_PATH` (from CLAUDE.md or ask)
- Focus area (optional): `section:01` through `section:08`, or keyword like "marketing", "legal", "product", "tech"

---

## Step 0 — Chief of Staff: Load and baseline

```
You are the Chief of Staff running a monthly Business OS audit.

1. Load hub/MANIFEST.md — check which hub files exist
2. For each section, note:
   - Present (file exists) or Missing
   - last-updated date
   - Any section not updated in >60 days — flag as STALE
3. Check skills installed at ~/.claude/skills/ — list which of the 5 expected skills are present
4. Check agents/REGISTRY.md exists

Report a baseline table before running audit steps:
| Section | Files present | last-updated | Status |
|---|---|---|---|
| 01 Identity | X/6 | YYYY-MM-DD | OK/STALE/MISSING |
...

Then proceed through audit steps 1–4.
```

---

## Step 1 — Context Auditor (Sections 01–03)

```
You are a Context Auditor reviewing hub sections 01, 02, and 03.

For each file, score on 3 dimensions (0–10 each):
- Complete: are all non-optional fields filled with real content (not placeholders)?
- Current: is last-updated recent and content still accurate?
- Actionable: can agents use this without hitting [ASSUMPTION] blockers on critical fields?

Section scores:
- 01 Identity & Strategy: 6 files, 180 pts max (3 dimensions × 10 × 6 files)
- 02 Legal, Finance & Trust: 5 files, 150 pts max
- 03 Product & Delivery: 4 files, 120 pts max

Output for each section:
1. Score
2. Top 3 specific gaps (e.g. "brand-voice.md anti-voice section is empty — agents will invent tone")
3. Tier: Tier-1 (blocks workflows), Tier-2 (degrades quality), Tier-3 (nice to have)
```

---

## Step 2 — Connections Auditor (Sections 04–06)

```
You are a Connections Auditor reviewing hub sections 04, 05, and 06.

04 — Technical platform: Is the stack documented? Are all active repos listed? Any tools missing?
05 — Marketing growth: Are ad accounts documented? Is there a creative library location? Is the competitor doc current?
06 — Connections: Does the integrations matrix reflect actual MCP/API connections? Any C1 connections not yet active?

Score same as Step 1 (30 pts per section — 3 dimensions × 10, just 1 file each).
List top 3 gaps per section with tier.
```

---

## Step 3 — Capabilities Auditor (Sections 07–08 + skills + registry)

```
You are a Capabilities Auditor reviewing governance, roles, and the agent system.

07 — Operating rules: Are approval gates specific (not vague)? Are naming conventions defined? Is there a decision log?
08 — Human roles: Are all roles assigned? Is the tool ownership map complete?
Skills: Check ~/.claude/skills/ for the 5 expected skills. Note any missing.
Registry: Check agents/REGISTRY.md — does it exist and have all 24 rows?

Score:
- Section 07: 30 pts max
- Section 08: 30 pts max
- Skills + registry: 20 pts max

List top 3 gaps.
```

---

## Step 4 — Cadence Auditor

```
You are a Cadence Auditor checking whether the OS is being maintained.

Check:
- cadence/rituals.md: Does it exist and define a weekly, monthly, and quarterly ritual?
- memory/session-logs/: How many session log files? When was the last one?
- Deliverables: Count files in deliverables/ subfolders. Any recent activity?
- Hub freshness: Based on last-updated dates, is the hub being maintained?

Score: 0–20 pts

Flag: If no session logs and no deliverables, cadence is not established.
```

---

## Step 5 — Chief of Staff: Synthesize and produce report

```
You are the Chief of Staff synthesizing the audit.

Aggregate scores from Steps 1–4:
- Context score (01–03): max 450 pts → convert to /40
- Connections score (04–06): max 90 pts → convert to /20
- Capabilities score (07–08 + skills): max 80 pts → convert to /30
- Cadence score: max 20 pts → /10
- TOTAL: /100

Tier:
- 80–100: Operating — run workflows; maintain monthly
- 60–79: Functional — fix tier-1 gaps this week
- 40–59: Partial — run /business-hub-init refresh before major campaigns
- <40: Skeleton — run /business-hub-init greenfield

Produce the audit report:

# Business OS Audit Report
Date: YYYY-MM-DD

## Score
| Category | Score | Max |
|---|---|---|
| Context (01–03) | | 40 |
| Connections (04–06) | | 20 |
| Capabilities (07–08 + skills) | | 30 |
| Cadence | | 10 |
| **TOTAL** | | **100** |

## Tier: [tier name and one-line assessment]

## Top 3 Tier-1 gaps (fix this week)
1. [Specific, actionable: "Update hub/01/offer-ladder.md — guarantee wording is missing, ad pack can't run"]
2.
3.

## 30-day fix plan
Week 1: [Tier-1 gaps]
Week 2: [Connections gaps]
Week 3–4: [Cadence establishment]

## Next command
[/business-hub-init section:XX for first gap]

Write report to: ~/claude-business/deliverables/hub-audits/YYYY-MM-DD_hub-audit.md
```

---

## Output location
`~/claude-business/deliverables/hub-audits/YYYY-MM-DD_hub-audit.md`

## Human gate
- [ ] Review tier-1 gaps — prioritize or consciously defer
- [ ] Schedule next audit (add to cadence/rituals.md or calendar)
