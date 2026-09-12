# Ad Pack From Offer

## Description
Builds a campaign-ready ad pack from a single offer: angles, hooks, primary text, headlines, creative brief, and compliance flags. Ends with a human approval gate before any ad setup or spend.

Invoke: `/ad-pack-from-offer` | "build an ad pack" | "run ads for [offer]" | "ad campaign"

## Inputs (ask if not provided)
- Offer: name, price, guarantee, one-line promise
- Channel: Meta (IG + FB) / Google / TikTok / Pinterest (or "all")
- Objective: book calls / direct purchase / lead opt-in / app install
- Landing page URL (or "not built yet")
- ICP note (or "load from hub")
- `HUB_PATH`

## Hub files loaded
- `hub/01-identity-strategy/icp-personas.md`
- `hub/01-identity-strategy/offer-ladder.md`
- `hub/01-identity-strategy/positioning.md`
- `hub/01-identity-strategy/brand-voice.md`
- `hub/02-legal-finance-trust/claims-compliance.md`
- `hub/05-marketing-growth/marketing-growth-stack.md`

---

## Step 0 — Chief of Staff: Frame the campaign

```
You are the Chief of Staff opening an ad pack session.

Load hub files: icp-personas, offer-ladder, positioning, brand-voice, claims-compliance.
If any file is missing, mark [HUB FILE MISSING] and proceed with stated assumptions.

Produce a campaign spine:
- Offer: [name, price, guarantee]
- Primary ICP: [who is this for — one specific person]
- Channel(s): [where the ads will run]
- Objective: [the one action we want them to take]
- Landing page: [URL or "TBD"]
- Compliance notes: [any restrictions from claims-compliance.md relevant to this offer]
- KPIs: [what does success look like in week 1? CTR target, CPL target, ROAS target]
- Assumptions: [list anything you invented that the owner should verify]

Confirm the spine with the user before proceeding.
```

---

## Step 1 — Offer & Pricing Analyst: Offer snapshot

```
You are an Offer & Pricing Analyst.

Load hub/01/offer-ladder.md and hub/01/icp-personas.md.

Produce:

## Offer snapshot
- What the customer gets (deliverables, timeline, guarantee — exact wording)
- What it costs to deliver (rough COGS estimate for unit economics)
- Current price and estimated margin
- Primary objection to buying at this price
- Message-market fit: does this offer language match the ICP's language? Note gaps.

## Proof inventory
| Proof type | Have it? | Strength (1–5) | Notes |
|---|---|---|---|
| Testimonials (specific outcome) | | | |
| Case studies with numbers | | | |
| Before/after (non-restricted) | | | |
| Data / statistics | | | |
| Credentials / authority | | | |

## Proof gaps
List any proof type that's weak or missing. These are places where ad copy will be harder to make credible.

This output feeds the Paid Ads Specialist in Step 2.
```

---

## Step 2 — Paid Ads Specialist: Angles, hooks, copy

```
You are a Paid Ads Specialist. Load hub/02/claims-compliance.md before writing anything.

Using the campaign spine from Step 0 and offer snapshot from Step 1, produce:

## 3 Angles
An angle is the emotional frame for the entire ad — each targets a different reason to buy.

Angle 1: [Name — e.g. "Speed" / "Fear of missing out" / "Social proof"]
Core insight: [Why this resonates with the ICP]

Angle 2: [Name]
Core insight:

Angle 3: [Name]
Core insight:

## 3 Hooks per angle (9 total)
A hook is the first 3 seconds: text overlay, headline, or opening line. It stops the scroll.

**Angle 1 — [Name]**
- Hook A: [Specific, outcome-led, matches ICP language]
- Hook B: [Problem-led or curiosity-led variant]
- Hook C: [Social proof or credibility variant]

**Angle 2 — [Name]**
- Hook A:
- Hook B:
- Hook C:

**Angle 3 — [Name]**
- Hook A:
- Hook B:
- Hook C:

## Primary text (1 per angle — 3 total)
For each angle, write a 3–5 sentence primary text body:
- Opens with the hook or an amplification of it
- Builds desire or urgency
- States the offer clearly (price, timeline, guarantee)
- Closes with the CTA ("Book your call" / "Shop now" / "Get instant access")

## Headlines (5 options — for link preview / feed headline)
Specific, outcome-focused, under 30 characters if possible:
1.
2.
3.
4.
5.

## Test plan
| Priority | Variable to test | Hypothesis |
|---|---|---|
| 1 | [Angle] | [Angle X will outperform Y because ICP is more motivated by Z] |
| 2 | [Hook format] | |
| 3 | [CTA wording] | |

## Compliance flags
Review every line against hub/02/claims-compliance.md.
Flag any line with: [COMPLIANCE REVIEW NEEDED — see claims-compliance.md]
Do not leave flagged lines in the approved deliverable.
```

---

## Step 3 — Copy Chief: Voice polish and message-match

```
You are a Copy Chief.
Load hub/01/brand-voice.md.

Review all copy from Step 2 against the brand voice rules:

1. Voice polish: rewrite any lines that violate the voice rules (anti-voice list)
   Show: [Original] → [Revised] — one line per change

2. Message-match table: for each angle, confirm it matches the landing page message
   (If landing page URL was provided in Step 0, note the page's headline and confirm alignment)
   | Angle | Ad hook | Landing page headline | Match? |
   |---|---|---|---|

3. Hero pick: which single angle + hook combination do you recommend launching first?
   Rationale: [1–2 sentences]

4. CTA alignment: confirm the CTA in all 3 primary texts matches the page objective
```

---

## Step 4 — Visual / Brand Designer: Creative brief

```
You are a Visual / Brand Designer producing a creative brief for the ad visuals.
Load hub/01/visual-brand.md.

For each of the 3 angles, write a creative brief:

**Angle [X] — Creative Brief**
- Format: [Static image / Carousel / Video / Reel]
- Visual concept: [Describe the scene, layout, mood in 2–3 sentences]
- Key visual element: [The one thing the eye goes to first]
- Color application: [From visual-brand palette — which colors, how applied]
- Text overlay: [Exact hook text on the creative]
- Background / setting: [e.g. clean white studio / lifestyle / product close-up]
- Do NOT use: [From visual-brand don'ts]

Asset checklist (what needs to be produced):
| Asset | Format | Size | For |
|---|---|---|---|
| [e.g. Static hero] | JPG/PNG | 1080x1080 | IG feed |
| [e.g. Story version] | JPG/PNG | 1080x1920 | IG/FB story |
| [e.g. Video hook] | MP4 | 1080x1080 | FB/IG feed |
```

---

## Step 5 — Analytics Reporter: Tracking setup

```
You are an Analytics Reporter setting up tracking for this campaign.

Load hub/05/marketing-growth-stack.md and hub/03/analytics-plan.md.

Produce:

## UTM structure
Campaign naming convention: [from hub/07/operating-rules.md]
Example UTMs for this campaign:
- utm_source=[platform]
- utm_medium=paid
- utm_campaign=[OFFER-SLUG]-[ANGLE]-[YYYYMMDD]
- utm_content=[hook-slug]

## Pre-launch QA checklist
- [ ] Pixel fires on landing page (test with Pixel Helper)
- [ ] Conversion event fires on thank-you page
- [ ] UTMs are live on all ad links
- [ ] Landing page headline matches ad hook (message-match check)
- [ ] Guarantee language in ad matches hub/02/terms-privacy-refund.md
- [ ] No compliance-flagged lines remain in final copy
- [ ] Budget cap set in ad account
- [ ] Human approval received (Step 6 gate)

## Week-1 readout template
At 7 days, report:
- Spend: $
- Impressions, reach
- CTR per angle
- CPL or CPA per angle
- Winner: [which angle + hook]
- Next test: [what to iterate]
```

---

## Step 6 — Human approval gate

```
You are the Chief of Staff presenting the final ad pack for human approval.

Assemble the full deliverable:

# Ad Pack: [Offer Name]
Date: YYYY-MM-DD
Channel: [platform(s)]
Objective: [action]

## Campaign spine
[From Step 0]

## Offer snapshot + proof inventory
[From Step 1]

## Angles, hooks, and copy
[From Step 2 — voice-polished from Step 3]

## Hero recommendation
[From Step 3]

## Creative briefs
[From Step 4]

## Tracking setup
[From Step 5]

## Compliance sign-off
- [ ] All copy reviewed against hub/02/claims-compliance.md
- [ ] No flagged lines remain
- [ ] Guarantee wording matches hub/02/terms-privacy-refund.md

## Human approval required before launch
- [ ] Offer details correct (price, guarantee)
- [ ] ICP assumptions verified
- [ ] Hero angle and copy approved
- [ ] Creative brief approved (or modified)
- [ ] Tracking confirmed live
- [ ] Budget cap confirmed in ad account
- [ ] You have approved this pack — no AI publishes ads

Write draft to: ~/claude-business/deliverables/ad-packs/drafts/YYYY-MM-DD_[offer-slug]_ad-pack.md
After human approval: move to: ~/claude-business/deliverables/ad-packs/approved/
```

---

## Output location
- Draft: `~/claude-business/deliverables/ad-packs/drafts/YYYY-MM-DD_[offer-slug]_ad-pack.md`
- Approved: `~/claude-business/deliverables/ad-packs/approved/` (after human gate)

## Human gate (critical — no ad spend without this)
- [ ] You approved the offer details and ICP
- [ ] You approved the copy (hero angle at minimum)
- [ ] Compliance review passed
- [ ] Tracking confirmed live
- [ ] Budget cap set in ad account by you
