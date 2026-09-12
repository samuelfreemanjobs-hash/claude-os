# Agent Registry
last-updated: YYYY-MM-DD

All 24 specialist agents + 2 orchestration roles. The Chief of Staff loads this registry at the start of every workflow to select the right 3–7 agent squad.

**Row template (copy to add a new agent):**
`| ID | Name | Mission (1 sentence) | Trigger | Inputs | Outputs | Skills |`

---

## Layer 0 — Orchestration (not counted in the 24)

| ID | Name | Mission | Trigger | Inputs | Outputs | Skills linked |
|---|---|---|---|---|---|---|
| A00 | Chief of Staff | Pick squad, sequence steps, manage handoffs, surface blockers | Every workflow | User goal + hub/MANIFEST.md | Workflow plan, squad selection, checkpoint summary | All |
| A00b | Context Librarian | Load hub files per MANIFEST; write back session decisions and deliverable locations | Session start/end | Workflow type, MANIFEST.md | Pre-loaded context block, session log entry | All |

---

## Layer 1 — Developers (D01–D06)

| ID | Name | Mission | Trigger | Inputs | Outputs |
|---|---|---|---|---|---|
| D01 | PWA Architect | App shell, routing, offline strategy, tech choices, tradeoffs | "build app", "spec PWA", /pwa-idea-to-spec | Idea brief, hub/04/technical-platform, hub/01/business-model | Architecture doc: stack, routes, data model, auth, deployment target |
| D02 | Frontend Engineer | UI implementation, components, accessibility, responsiveness | After UI spec approved by human | UI spec, design tokens, component list | Working code: components, pages, styles |
| D03 | Backend / API Engineer | APIs, auth, data models, business logic | After PWA architecture approved | Architecture doc, integration list | API spec, schema, auth flow, endpoints |
| D04 | Integration Engineer | External connections: Stripe, CRM, analytics, webhooks | After backend spec | Integration list, credentials reference (hub/06) | Integration map, webhook schema, error handling plan |
| D05 | Automation Engineer | Scripts, scheduled tasks, Zapier/Make flows, internal tools | "automate", "script", "workflow" | SOP doc, tool list, trigger/action map | Working automation, script, or configuration file |
| D06 | QA / Release | Test plans, acceptance criteria, release notes, smoke test checklist | Before any deploy | Feature spec, past bugs, environment list | Test plan, QA checklist, release notes |

---

## Layer 2 — Marketers (M07–M12)

| ID | Name | Mission | Trigger | Inputs | Outputs |
|---|---|---|---|---|---|
| M07 | Positioning Strategist | Category, narrative, messaging pillars, competitive placement | Strategy session, new offer, reposition | hub/01/positioning, hub/01/icp, competitor notes | Positioning doc: category, POD, message hierarchy, proof gaps |
| M08 | Offer & Pricing Analyst | Price tiers, anchors, objection map, unit economics, proof inventory | Pricing review, new offer, margin question | hub/01/offer-ladder, hub/02/tax-accounting, hub/03/catalog | Offer snapshot, 3 price scenarios, objection map, proof gap list |
| M09 | Copy Chief | Landing copy, emails, long-form, headline variants, voice polish | After positioning and offer are confirmed | Positioning doc, offer snapshot, hub/01/brand-voice | Polished copy: headlines, sub-headlines, body, CTAs |
| M10 | Paid Ads Specialist | Ad angles, hooks, primary text, headlines, test plan, compliance flags | "ad pack", "run ads", /ad-pack-from-offer | Offer snapshot, ICP, hub/02/claims-compliance, platform rules | Ad pack: 3 angles × 3 hooks, headlines, compliance flags, test plan |
| M11 | SEO / Content Strategist | Keyword clusters, content briefs, on-page outline, internal linking | Content push, SEO sprint | ICP language, product pages, competitor SERPs | Content brief, keyword cluster, outline |
| M12 | Lifecycle / Email Architect | Email flows: welcome, nurture, cart, winback, post-purchase | "email sequence", "lifecycle", campaign launch | hub/01/offer-ladder, eComm events, ICP | Flow map, sequence outline, subject line options per email |

---

## Layer 3 — Designers (Ds13–Ds18)

| ID | Name | Mission | Trigger | Inputs | Outputs |
|---|---|---|---|---|---|
| Ds13 | UX Strategist | User flows, wireframe narrative, JTBD-framed UI, friction audit | "app idea", "new product page", /pwa-idea-to-spec | Idea brief, ICP, user stories | User flow diagram, screen map, wireframe narrative, friction points |
| Ds14 | UI Designer | Screen specs, component inventory, states (empty/loading/error/success) | After UX flow confirmed | Wireframe narrative, brand tokens (hub/01/visual-brand) | Screen specs: layout, components, states, interaction notes |
| Ds15 | Visual / Brand Designer | Layout rules, imagery direction, ad creative brief, moodboard | Ad pack creative, landing redesign, brand refresh | hub/01/brand-voice, hub/01/visual-brand, ad copy | Creative brief: concept, visual direction, asset list |
| Ds16 | Design Systems Curator | Token file, spacing scale, type scale, component docs, naming | After UI design pass | UI screens, existing design system, repo structure | Token file, component inventory, system documentation |
| Ds17 | Conversion Designer | CTA hierarchy, social proof placement, checkout UX, trust signals | CRO audit, new checkout flow, landing page | Analytics data, offer, current layout | CRO annotated wireframe: changes with rationale |
| Ds18 | Print / Collateral Designer | Postcards, one-pagers, PDFs, print specs | "postcard", "print", "flyer", "PDF" | Copy, hub/01/visual-brand, dimensions, print vendor specs | Print-ready spec: layout, bleed, font sizes, file format, color mode |

---

## Layer 4 — eComm & Social Media (E19–E24)

| ID | Name | Mission | Trigger | Inputs | Outputs |
|---|---|---|---|---|---|
| E19 | Store Merchandiser | Collection structure, PDP copy, bundle naming, seasonal offers | Store setup, relaunch, catalog update | hub/03/product-catalog, pricing, ICP, brand voice | Collection map, PDP copy blocks, bundle names and descriptions |
| E20 | CRO / Funnel Operator | Funnel map, A/B hypotheses, metric targets, test calendar | Monthly review, conversion dip, post-launch | hub/03/analytics-plan, current funnel, offer | Funnel audit, A/B roadmap, test priority list |
| E21 | Social Content Producer | Platform-native posts (IG/TT/FB/LI), carousels, video scripts | Content calendar, campaign launch | Campaign brief, hub/01/brand-voice, visual direction | Post copy, carousel slide deck, video script outline |
| E22 | Community / Engagement | Reply frameworks, FAQ snippets, UGC prompts, community rules | Community launch, engagement drop | hub/01/brand-voice, hub/03/support-faq, ICP | Reply library, UGC prompt set, escalation guide |
| E23 | Influencer / Partnership Scout | Outreach angles, brief templates, vetting criteria | Partnership push, collab request | ICP, product, hub/01/brand-voice | Outreach template, creator brief structure, vetting checklist |
| E24 | Analytics Reporter | Weekly metrics narrative: what worked, what didn't, next tests | Weekly cadence, campaign end, /business-hub-audit | Ads, email, social, store, site metrics | Weekly report: metric summary, top insight, recommended next action |
