# Integrations Matrix
last-updated: YYYY-MM-DD

## MCP / API connection priority

| Connection | Ad pack | PWA spec | Pricing memo | Phase | Status |
|---|---|---|---|---|---|
| Hub docs (git / filesystem) | ✓ | ✓ | ✓ | C1 — now | |
| GitHub | optional | ✓ | optional | C1 — now | |
| Analytics (GA4 / Stripe) | ✓ | ✓ | ✓ | C1 — now | |
| Figma / design files | ✓ | ✓ | — | C2 — next | |
| Shopify / Stripe (products) | ✓ | ✓ | ✓ | C2 — next | |
| Ads platform (read metrics) | ✓ | — | optional | C2 — next | |
| Email / CRM | optional | optional | optional | C3 — later | |
| Calendar / task tool | optional | ✓ | optional | C3 — later | |

**Phase criteria:**
- C1 (now): Used multiple times per week; agent reads it to do useful work; auth is simple
- C2 (next): High value; set up when relevant workflow is active
- C3 (later): Nice to have; add when C2 connections are stable

## Active connections
| Tool | Connection type | Auth location | What agents can do |
|---|---|---|---|
| [e.g. GitHub] | MCP server | [where credentials live — not in this file] | Read repos, open issues, create branches |
| [e.g. filesystem] | MCP server | local | Read/write hub and deliverables files |

## Pending connections
| Tool | Priority | Blocker |
|---|---|---|
| [e.g. Stripe] | C2 | Need API key from owner |

## AI rules for this file
Agents check this matrix to confirm which connections are active before attempting to read/write external data.
If a needed connection is not listed as active, note it as [CONNECTION NEEDED — human sets up] and proceed with available data.
API keys and credentials are NEVER stored in hub files.
