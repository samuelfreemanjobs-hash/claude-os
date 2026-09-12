# Claude Business OS — Master Plan

The complete design intent, architecture, and phasing for the heavy version.

---

## What this is

A local skill pack that makes Claude Code behave like a business operator who knows your business — not a general assistant who needs re-briefing every session.

The "OS" metaphor:
| OS concept | Claude Business OS |
|---|---|
| Filesystem | hub/ — 8 sections of business memory |
| Drivers | MCP connections (GitHub, analytics, eComm, ads) |
| Applications | 5 workflow skills |
| Scheduled tasks | cadence/rituals.md + hooks |
| Security policy | hub/07/operating-rules.md + human gates |
| User accounts | hub/08/human-roles.md |

---

## Architecture

```
You (owner / approver)
        ↓
Chief of Staff skills
(→ hub-init, audit, ad-pack, pwa-spec, pricing-memo)
        ↓
Squad of 3–7 agents from REGISTRY (out of 24)
        ↓
Shared hub/ memory + deliverables/ output
        ↓
MCP connections (GitHub, analytics, eComm, tasks)
        ↓
Live systems (read) → Human approves → Live systems (write)
```

---

## The 8 hub sections and their roles

| Section | What it gives agents | Without it |
|---|---|---|
| 01 Identity & Strategy | Who to write for, how to position, voice rules | Generic copy, wrong ICP, off-brand tone |
| 02 Legal, Finance & Trust | What claims are safe, what the guarantee says, tax rates for pricing | Compliance risk, wrong guarantee wording, margin errors |
| 03 Product & Delivery | What's for sale, how it's delivered, what counts as a conversion | Wrong offer details, no funnel context |
| 04 Technical Platform | Default stack, environments, repo names | Wrong tech choices, broken deploy rules |
| 05 Marketing & Growth | Ad accounts, email tool, creative library | Can't reference past winners, wrong platform context |
| 06 Connections | Which MCPs are active, what agents can read/write | Agents try to use tools that aren't connected |
| 07 Operating Rules | What humans must approve, naming conventions, decision log | Agents might write ads with wrong names, no accountability |
| 08 Human Roles | Who escalates what, tool ownership | No clear escalation path, tool access confusion |

---

## The 24 agents and their layers

See agents/REGISTRY.md for the full table.

| Layer | Agents | When active |
|---|---|---|
| Orchestration | CoS, Context Librarian | Every workflow |
| Developers | D01–D06 | App/automation work |
| Marketers | M07–M12 | Campaign, content, email work |
| Designers | Ds13–Ds18 | UI, brand, print work |
| eComm & Social | E19–E24 | Store, social, analytics work |

Key rule: **3–7 agents per workflow, not all 24**. The CoS selects the squad.

---

## The 5 workflows and their squads

| Workflow | Squad | Output |
|---|---|---|
| /business-hub-init | CoS + 8 section agents | Filled hub/ (18 files) |
| /business-hub-audit | CoS + 4 auditors | Audit report + 30-day plan |
| /ad-pack-from-offer | CoS + M08 + M10 + M09 + Ds15 + E24 | Campaign-ready ad pack |
| /pwa-idea-to-spec | CoS + Ds13 + Ds14 + D01 + D04 + D06 | Build-ready spec |
| /pricing-positioning-memo | CoS + M08 + M07 + M09 + E19/E24 | Decision memo + hub sync list |

---

## Implementation phases

### Phase A — Foundation (do this first)
**Goal:** Hub is filled and one workflow runs end-to-end.

1. Clone repo to `~/claude-business`
2. Install 5 skills to `~/.claude/skills/`
3. Run `/business-hub-init` (greenfield, ~20 min)
4. Run `/business-hub-audit` — note tier-1 gaps
5. Run one real workflow (ad pack or pricing memo)

**Exit signal:** Audit score >40, one workflow produced an approved deliverable.

---

### Phase B — Workflow coverage
**Goal:** All 3 production workflows are battle-tested.

1. Run `/pwa-idea-to-spec` on a real app idea
2. Connect MCP: filesystem/git (hub docs), GitHub (if building apps)
3. Connect MCP: analytics (GA4 or Stripe read)
4. Add session-end hook
5. Update hub files with what you learned from running the workflows

**Exit signal:** All 3 workflows have at least one approved deliverable.

---

### Phase C — Memory and connections
**Goal:** Hub stays current; agents can read live data.

1. Connect C2 MCPs: Figma, eComm/Stripe (read), ads platform (read metrics)
2. Run cadence/rituals.md weekly and monthly rituals for 2 months
3. Update creative library after each campaign
4. Optional: sync hub/ to Obsidian for richer search

**Exit signal:** Hub audit score >70, monthly ritual is running.

---

### Phase D — Mission control (optional)
**Goal:** Dashboard for multi-agent visibility.

Only build if you're running 3+ parallel workflows regularly.

1. Spec the dashboard using /pwa-idea-to-spec
2. Scope: read-only view of hub health, deliverables status, agent queue
3. No write access for dashboard — all writes go through skills and human gates

---

### Phase E — Scale (add new workflows)
**Goal:** Cover more of the business with the same pattern.

New workflows to add with the same CoS + specialist pattern:
- Email launch sequence
- Social content batch
- Weekly metrics narrative (automated from E24)
- Outreach / partnership brief (E23)
- Print/collateral brief (Ds18)

---

## What makes this system better than alternatives

| Problem | This system's answer |
|---|---|
| Claude forgets your business | hub/ is loaded per-workflow, not per-chat |
| Agents invent claims or facts | claims-compliance.md is loaded before every marketing output |
| AI publishes without approval | Every skill ends with an explicit human gate checklist |
| Memory rots | last-updated dates + audit score catch staleness |
| One big context = wrong assumptions | MANIFEST.md loads only relevant sections per workflow |
| Over-building dashboards | Phases A–B deliver most value with no dashboard |

---

## Single most important habit

Update hub files after decisions. A hub that's 3 months stale is worse than no hub.
Run `/business-hub-audit` monthly. 30 minutes. Calendar it.
