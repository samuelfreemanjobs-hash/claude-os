# PWA Idea to Spec

## Description
Turns a product or app idea into a build-ready spec: user stories, UX flow, UI spec, architecture, integrations, and acceptance criteria. Output is a single markdown file a developer or dev agent can build from.

Invoke: `/pwa-idea-to-spec` | "spec this app" | "build spec for [idea]" | "app idea" | "new product"

## Inputs (ask if not provided)
- App idea: one paragraph
- Primary user: who is this for (or "same as hub ICP")
- Platform: web PWA / mobile PWA / desktop
- Stack preference (or "use hub defaults")
- Scope constraint: "MVP only" or timeline (optional)
- Any existing designs or prototypes? (URLs or files)
- `HUB_PATH`

## Hub files loaded
- `hub/01-identity-strategy/business-model.md`
- `hub/01-identity-strategy/icp-personas.md`
- `hub/03-product-delivery/product-catalog.md`
- `hub/04-technical-platform/technical-platform.md`
- `hub/07-operating-rules/operating-rules.md`

---

## Step 0 — Chief of Staff: Frame scope

```
You are the Chief of Staff framing a PWA spec session.

Load hub files: business-model, icp-personas, technical-platform, operating-rules.

Frame the job:
1. Problem: What specific pain does this app solve for which user?
2. Minimum useful version: The smallest build a real user would pay for or use daily.
   (Ask the owner: "What is the one user action that, if they could do in 30 seconds,
    would make this app worth having?")
3. Non-goals: What this app explicitly does NOT do in v1.
4. Existing tools replaced: What does this replace or sit alongside?
5. Stack: Confirm hub defaults apply, or note any required deviations.

Output: Framed scope document. Confirm with user before proceeding.
If scope is still vague after one clarification round, proceed with explicit assumptions.
```

---

## Step 1 — UX Strategist: User flows and screen map

```
You are a UX Strategist turning a confirmed scope into user flows.

Load hub/01/icp-personas.md.

Produce:

## User stories (prioritized)
Format: As a [user], I want to [action] so that [outcome].
Label each: Must-have | Should-have | Nice-to-have
Limit to 10 stories max — cut anything not in the minimum useful version.

## Screen map
List every screen by name with a one-line description:
[Screen name] → [what the user does here] → [where they go next]

## Key user flows (2–3 most important)
Step-by-step for the highest-stakes paths:
e.g. New user → first purchase:
  1. [Screen] — [what they see / what they do]
  2. [Screen] — ...
  ...
  N. [Outcome] — [confirmation, success state]

## Friction audit
Where will users get confused or drop off? (2–3 specific points with mitigation suggestion)
```

---

## Step 2 — UI Designer: Screen specifications

```
You are a UI Designer turning user flows into screen specs.

Load hub/01/visual-brand.md for tokens (colors, fonts, spacing).
Reference the screen map from Step 1.

For each must-have screen:

**[Screen Name]**
- Layout pattern: [single column / split / grid / modal / drawer]
- Key components: [list: header, nav, hero, card grid, form, table, modal, etc.]
- Primary CTA: [button label and destination]
- States: loading | empty | error | success — describe each
- Mobile behavior: [how it adapts to mobile width]
- Custom vs library: flag components that need custom design vs standard UI kit component
- Auth required: yes / no

Note any screen where the design needs brand color, typography, or spacing decisions
that are not yet in hub/01/visual-brand.md — surface as [DESIGN DECISION NEEDED].
```

---

## Step 3 — PWA Architect: Technical architecture

```
You are a PWA Architect producing a technical architecture spec.

Load hub/04/technical-platform.md for stack defaults.
Load hub/07/operating-rules.md for deployment rules.
Reference the screen specs from Step 2 and user flows from Step 1.

Produce:

## Tech stack
- Framework: [from hub defaults unless problem requires deviation; explain any deviation]
- Styling: 
- State management:
- Build tool:
- Deployment target:

## App structure
- Route map: [URL path → component/page]
- State: [where does data live — local state / server state / store / hybrid]
- Auth: [method, provider, protected vs public routes]

## Data model
[Entities with key fields and relationships — table or bullet format]

## API / backend
- Approach: [Next.js API routes / edge functions / Supabase / third-party only / other]
- Endpoints:
  | Method | Path | Input | Output | Auth |
  |---|---|---|---|---|

## Integrations
| Integration | Purpose in this app | SDK or REST | Config needed |
|---|---|---|---|
| [e.g. Stripe] | Checkout | SDK | Publishable key + webhook secret |

## PWA features
- Offline support: yes / no — which routes?
- Install prompt: yes / no
- Push notifications: yes / no

## Performance targets
| Metric | Target |
|---|---|
| LCP | <2.5s |
| FID / INP | <100ms |
| CLS | <0.1 |
| JS bundle (initial) | <200KB gzipped |

Mark any technical assumption as [ASSUMPTION — verify].
Mark any integration needing new credentials as [CREDENTIALS NEEDED — human sets up].
```

---

## Step 4 — Integration Engineer: Integration map

```
You are an Integration Engineer.

Load hub/04/technical-platform.md and hub/06/integrations-matrix.md.
Reference the architecture from Step 3.

For each integration:
1. Confirm it's documented in hub (or flag as new)
2. Map the trigger → action:
   [Event in app] → [API call / SDK method] → [Expected response] → [App behavior]
3. Error handling: what happens if the integration is down or returns an error?
4. Test approach: how to test without hitting production APIs?

Output: Integration map table + error handling notes.
Mark any integration needing a new API key as [CREDENTIALS NEEDED — human sets up before build].
```

---

## Step 5 — QA / Release: Acceptance criteria and checklists

```
You are a QA / Release agent writing acceptance criteria and pre-launch checklists.

For each must-have user story (from Step 1), write acceptance criteria:
GIVEN [starting context]
WHEN [user action]
THEN [expected result]
AND [additional assertions]

Also produce:

## Pre-build checklist (before first commit)
- [ ] Stack confirmed and in hub/04/technical-platform.md
- [ ] All credentials listed in Step 4 are set up by a human
- [ ] Designs or wireframes exist for must-have screens
- [ ] Acceptance criteria approved by owner

## Definition of done — staging
[What must be true before merging to staging branch]

## Definition of done — production
[What must be true before human approves production deploy]

## Smoke test (3–5 manual steps after deploy)
1. [Action] → [Expected result]
2.
3.
```

---

## Step 6 — Chief of Staff: Assemble spec and present for approval

```
You are the Chief of Staff assembling the final PWA spec.

Combine all outputs into one markdown document:

# [App Name] — PWA Spec
Date: YYYY-MM-DD | Version: 0.1 | Status: DRAFT

## Overview
[Problem, user, minimum useful version, non-goals — from Step 0]

## User stories
[From Step 1 — must-haves only in the primary spec]

## Screen map
[From Step 1]

## UI specifications
[From Step 2]

## Architecture
[From Step 3]

## Integrations
[From Step 4]

## Acceptance criteria
[From Step 5]

## Checklists
[From Step 5]

## Open items
[All [ASSUMPTION], [CREDENTIALS NEEDED], [DESIGN DECISION NEEDED] collected]

## Human approval gate
- [ ] Scope and non-goals confirmed by owner
- [ ] Stack approved (or deviation approved)
- [ ] Open items list acknowledged and assigned
- [ ] Acceptance criteria reviewed — they make sense as test cases
- [ ] Ready to assign to developer or start building

Write draft to: ~/claude-business/deliverables/pwa-specs/drafts/YYYY-MM-DD_[app-slug]_spec.md
```

---

## Output location
- Draft: `~/claude-business/deliverables/pwa-specs/drafts/YYYY-MM-DD_[app-slug]_spec.md`
- Approved: `~/claude-business/deliverables/pwa-specs/approved/` (after human gate)

## Human gate
- [ ] Scope and non-goals confirmed
- [ ] Stack approved
- [ ] All [CREDENTIALS NEEDED] items assigned to a human to set up
- [ ] Acceptance criteria make sense as real test cases
- [ ] No critical [ASSUMPTION] in the must-have path is unresolved
