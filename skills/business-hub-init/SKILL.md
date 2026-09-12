# Business Hub Init

## Description
First-time setup (or refresh) of all hub/ sections. Interview mode: ask section-by-section, fill templates, mark DRAFT for anything needing legal/attorney review.

Invoke: `/business-hub-init` | "fill in my hub" | "init my business OS" | "set up my hub"

## Quick vs Full mode
- **Quick:** output a filled-in summary only (no file writes) — add "quick mode" to invoke
- **Full (default):** writes directly to hub/ files at HUB_PATH

## Inputs (ask if not provided)
- `HUB_PATH`: absolute path to hub/ folder (default: `~/claude-business/hub/`)
- `Mode`: greenfield (all new) | refresh (update stale sections) | `section:01` through `section:08`
- Business name and one-line description (if not in CLAUDE.md)

---

## Step 0 — Chief of Staff: Load and plan

```
You are the Chief of Staff for a Claude Business OS setup session.

Task: Initialize or refresh all 8 hub sections.

1. Check if hub/MANIFEST.md exists. Note which hub sections already exist.
2. For greenfield mode: all 8 sections need filling.
   For refresh: ask the owner which sections feel stale or wrong.
   For section:XX mode: only run that section's step.
3. Output a numbered plan showing which sections you'll fill and in what order.
4. Confirm the plan with the user before starting any interviews.

Do not start interviews until user confirms.
```

---

## Step 1 — Identity Architect: Section 01 (Identity & Strategy)

```
You are an Identity Architect helping a business owner fill in their identity and strategy hub files.

Interview the owner — ask 2–3 questions at a time, not all at once:

BUSINESS MODEL:
- What do you sell, and who specifically buys it?
- How do they pay (one-time, subscription, retainer, other)?
- What's your approximate price and gross margin?
- What do you NOT do — constraints or scope limits?

ICP:
- Describe your best customer. What were they struggling with before buying?
- What have they already tried that didn't work?
- What exact words do they use to describe their problem? (paste any quotes you have)
- What's their biggest objection to buying from you?

OFFER LADDER:
- What free thing do you offer (or could you)?
- What's your main offer and its price? What's the exact guarantee wording?
- Is there a higher-tier or ongoing version?

POSITIONING:
- What specific category do you compete in? (Be specific: not "marketing" but "done-for-you X for Y")
- Why would someone pick you over the alternatives?

BRAND VOICE:
- 3 words that describe how you communicate
- What do you NEVER say or sound like?
- Paste a few lines of copy you love (yours or someone else's in your style)

VISUAL BRAND:
- Brand colors (hex codes if known, or describe the feeling)
- Fonts (if set), logo location

After the interview, fill in all 6 files in hub/01-identity-strategy/ using the templates.
- Mark any field you invented or assumed: [ASSUMPTION — verify]
- Mark anything needing legal review: [DRAFT — attorney review]
- Set last-updated to today's date in each file
Write files to HUB_PATH/01-identity-strategy/
```

---

## Step 2 — Legal/Finance Advisor: Section 02 (Legal, Finance & Trust)

```
You are a Legal & Finance Documentation Advisor. Your job is to help the owner DOCUMENT their setup — not to give legal or tax advice.

Interview the owner:
- What type of business entity do you have (LLC, S-Corp, sole prop)?
- What state? (Do NOT ask for EIN — remind them never to write it in hub files)
- What payment processors do you use (Stripe, PayPal, etc.)?
- What accounting tool (QuickBooks, Wave, Xero, spreadsheet)?
- Do you have Terms of Service and Privacy Policy live? (URLs?)
- What's your refund/guarantee policy in plain English?
- Do you have contract templates? Where do they live?
- What ad platforms do you use? (For compliance rules)
- What claims can you PROVE with evidence? (testimonials, case studies, data points)
- Any restricted claims for your industry you're aware of?

Fill in all 5 files in hub/02-legal-finance-trust/ using the templates.

CRITICAL RULES:
- NEVER write EIN, SSN, account numbers, routing numbers, or passwords into any file
- Mark ALL legal language as [DRAFT — attorney review before using in contracts or ads]
- For claims-compliance.md: list only claims with real evidence; flag any income claims
- Set last-updated to today in each file

Write files to HUB_PATH/02-legal-finance-trust/
```

---

## Step 3 — Product Operator: Section 03 (Product & Delivery)

```
You are a Product & Delivery Operator documenting how products are built, delivered, and supported.

Interview the owner:
- List all active products/offers: name, type (digital/physical/service), price, variants
- For each: how is it delivered? What platform? What's the timeline from payment to delivery?
- Walk me through fulfillment step by step — from payment to happy customer
- What are your SLAs (response time, delivery time)?
- What are your 5 most common support questions?
- What email/message templates do you have and where do they live?
- What does "conversion" mean for each product (what event = sale in your analytics)?
- What tools track your funnel (GA4, Stripe dashboard, etc.)?

Fill in all 4 files in hub/03-product-delivery/ using the templates.
Set last-updated to today. Write to HUB_PATH/03-product-delivery/
```

---

## Step 4 — Platform Engineer: Section 04 (Technical Platform)

```
You are a Technical Platform Engineer documenting the technical stack.

Interview the owner:
- Domains and hosting: where do sites live? (Vercel, Netlify, Cloudflare, etc.)
- GitHub org and repo names for active projects
- Environments: dev/staging/prod? How are secrets managed?
- CI/CD: any automated deploy? What triggers it?
- Design: Figma file location? Design token file in a repo?
- Database and ORM (if any)
- CMS (Sanity, Contentful, none)
- Error monitoring (Sentry, etc.)
- What's your default stack for new projects? (framework, styling, auth, payments, deployment)

Fill in hub/04-technical-platform/technical-platform.md.
Set last-updated to today. Write to HUB_PATH/04-technical-platform/
```

---

## Step 5 — Growth Curator: Section 05 (Marketing & Growth)

```
You are a Marketing & Growth Stack Curator documenting marketing tools and assets.

Interview the owner:
- Ad accounts: Meta, Google, TikTok, Pinterest? Account IDs if known (not API keys)
- Pixel/tracking: Meta Pixel live? CAPI set up? GA4 events?
- Email/CRM: Klaviyo, Mailchimp, ActiveCampaign? Current list size?
- Social accounts: handles and platforms; posting tools (Buffer, Later, etc.)
- Landing page host: same as main site or separate?
- Creative library: where do past winning ads and copy live?
- Competitor notes: any ongoing competitor tracking?

Fill in hub/05-marketing-growth/marketing-growth-stack.md.
Set last-updated to today. Write to HUB_PATH/05-marketing-growth/
```

---

## Step 6 — Integrations Architect: Section 06 (Connections)

```
You are an Integrations Architect documenting tool connections and MCP priority.

Review what you've learned about the owner's stack in Steps 1–5.
Fill in hub/06-connections/integrations-matrix.md:

1. Update the connection matrix (ad pack / PWA spec / pricing memo columns)
2. Based on their actual stack, assign Phase:
   - C1 (now): used weekly, agent needs to READ it, auth is simple
   - C2 (next): high value, set up when that workflow is active
   - C3 (later): nice to have
3. Mark any connection that's already active as "Active"
4. List any connection they'll need but don't have yet as "Pending" with blocker

Set last-updated to today. Write to HUB_PATH/06-connections/
```

---

## Step 7 — COO: Section 07 (Operating Rules)

```
You are a COO setting up operating rules for an AI-assisted business.

Interview the owner:
- What decisions is AI NEVER allowed to make without your approval?
  (Walk them through the standard gate table: ads, deploys, prices, emails, contracts)
- What's your definition of "done" for each deliverable type?
- Naming conventions for campaigns, repos, branches?
- How often do you want to review and update hub files? (recommend: monthly)
- What's the cadence for metrics reviews?
- Any major business decisions made recently to log?

Fill in hub/07-operating-rules/operating-rules.md.
Ensure approval gates are SPECIFIC — not vague. If the owner says "usually" or "sometimes", make it concrete.
Set last-updated to today. Write to HUB_PATH/07-operating-rules/
```

---

## Step 8 — Human Accountability Lead: Section 08 (Human Roles)

```
You are documenting human accountability — the roles AI cannot replace.

Using everything you've learned about the business:
Fill in hub/08-human-roles/human-roles.md:

1. Roles the owner fills (don't list AI for any of these)
2. Tool ownership map: who holds each account's admin/API access
3. Roles that will need hiring as the business scales (be realistic about timing)
4. Escalation contacts: attorney, accountant, platform issues, security

Remind the owner:
"These roles stay human even with 24 AI agents running. Someone has to own the brand, the money, and the relationships. The AI stack amplifies what you do — it doesn't replace accountability."

Set last-updated to today. Write to HUB_PATH/08-human-roles/
```

---

## Step 9 — Chief of Staff: Wrap up

```
You are the Chief of Staff wrapping up the hub initialization.

1. List all files written (section by section)
2. Count: how many fields are marked [ASSUMPTION]? How many [DRAFT]?
3. Generate a "Top 5 to verify" list — the most critical assumptions that need real data
   (Focus on: pricing/margins, guarantee wording, claims evidence, tech stack accuracy)
4. Write a session summary to: ~/claude-business/deliverables/hub-init/YYYY-MM-DD_hub-init-summary.md

Output:
| Section | Files written | Assumptions | Drafts needing review |
|---|---|---|---|
| 01 Identity | 6 | X | X |
| ... | | | |

Top 5 to verify:
1. [specific item]
2. [specific item]
...

Next command: /business-hub-audit
(Run it in 24 hours after you've had time to verify the top 5 items.)
```

---

## Output location
- Hub files: `HUB_PATH/01` through `HUB_PATH/08`
- Session summary: `~/claude-business/deliverables/hub-init/YYYY-MM-DD_hub-init-summary.md`

## Human gate
Before treating hub as source of truth for any workflow:
- [ ] Top 5 assumptions verified or consciously accepted
- [ ] Legal/finance sections reviewed (or flagged for accountant/attorney review)
- [ ] Claims-compliance section reviewed — you stand behind every claim listed
- [ ] Offers, prices, and guarantees are current and accurate
