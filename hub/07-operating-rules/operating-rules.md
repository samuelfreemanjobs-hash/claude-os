# Operating Rules
last-updated: YYYY-MM-DD

## Human approval gates (non-negotiable)

AI may draft but humans must approve before:

| Action | Approval required | Who approves |
|---|---|---|
| Publishing any paid ad | Yes | Owner |
| Deploying to production | Yes | Owner or designated dev |
| Changing a live price | Yes | Owner |
| Sending email to customers | Yes | Owner |
| Signing or sending a contract | Yes | Owner |
| Changing the guarantee wording | Yes | Owner + attorney |
| Budget increase >$X | Yes | Owner |

## Definition of done — per deliverable type

| Deliverable | Definition of done |
|---|---|
| Ad pack | 3 angles, 3 hooks each, headlines, compliance check passed, human approved |
| PWA spec | UX flows, UI specs, architecture, ACs, human approved scope |
| Pricing memo | 3 scenarios analyzed, recommended scenario, hub sync list, human selected scenario |
| Hub section | All fields filled or marked [ASSUMPTION], last-updated date current |
| Email sequence | Flow map, subject lines, copy, compliance check, human approved |

## Naming conventions
| Thing | Convention | Example |
|---|---|---|
| Deliverable file | YYYY-MM-DD_[slug]_[type].md | 2024-01-15_shopify-sprint_ad-pack.md |
| Git branch | feature/[slug] or fix/[slug] | feature/checkout-flow |
| Ad campaign | [PLATFORM]-[OFFER-SLUG]-[ANGLE]-[YYYYMMDD] | META-SHOPIFY-SPRINT-SPEED-20240115 |
| Hub file | [section]-[name].md (lowercase, hyphens) | icp-personas.md |

## Decision log

Add a dated entry here after any major business decision:

| Date | Decision | Rationale | Outcome (fill in later) |
|---|---|---|---|
| YYYY-MM-DD | [what was decided] | [why] | |

## Cadence
| Review | Frequency | Trigger |
|---|---|---|
| Hub audit | Monthly | First Monday of month |
| Offer / pricing review | Quarterly | Quarter start |
| Competitor research refresh | Monthly | Hub audit |
| Creative library update | After each campaign | Campaign end |

## AI rules for this file
All agents load hub/07/operating-rules.md before producing any deliverable.
If a proposed action requires human approval per the gate table, stop and present the draft for approval — do not proceed automatically.
