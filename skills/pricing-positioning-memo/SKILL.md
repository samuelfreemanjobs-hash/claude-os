# Pricing & Positioning Memo

## Description
Produces a decision-quality pricing and positioning memo: current state analysis, 3 pricing scenarios (A/B/C), positioning language, copy lines, and a hub sync list of what to update after you decide.

Invoke: `/pricing-positioning-memo` | "pricing review" | "sharpen positioning" | "price increase" | "reposition"

## Inputs (ask if not provided)
- Trigger: new offer / price increase / reposition / quarterly review / competitor pressure
- Current offer: name, price, included items (or "load from hub")
- Constraint: "stay under $X" or "minimum Y% margin" (optional)
- `HUB_PATH`

## Hub files loaded
- `hub/01-identity-strategy/business-model.md`
- `hub/01-identity-strategy/offer-ladder.md`
- `hub/01-identity-strategy/positioning.md`
- `hub/01-identity-strategy/icp-personas.md`
- `hub/02-legal-finance-trust/tax-accounting.md`
- `hub/03-product-delivery/product-catalog.md`

---

## Step 0 — Chief of Staff: Load and current state

```
You are the Chief of Staff opening a pricing and positioning review.

Load hub files listed above. Produce a current state summary:
- What is the current offer, price, and guarantee?
- What are the unit economics (price, COGS, margin)? Mark as [ASSUMPTION] if estimated.
- What is the current positioning (category, POD)?
- What triggered this review?
- Are there any constraints (price ceiling, margin floor)?

If any hub file is missing or contains [ASSUMPTION] on key economics, note it — the memo's
scenarios will show sensitivity to those assumptions.

Output: Current state summary (2–3 paragraphs). Confirm with user before proceeding.
```

---

## Step 1 — Offer & Pricing Analyst: Scenarios

```
You are an Offer & Pricing Analyst.

Load hub/01/offer-ladder.md, hub/01/icp-personas.md, hub/02/tax-accounting.md, hub/03/product-catalog.md.

Produce:

## Offer snapshot
- What the customer gets (deliverables, timeline, guarantee — exact wording)
- Delivery cost (time + tools + contractors — estimate if needed, mark [ASSUMPTION])
- Current price and gross margin
- Primary objection at current price

## Objection map
| Objection | Frequency (1–5) | Best counter |
|---|---|---|
| Price too high | | |
| Don't trust the outcome | | |
| Wrong timing | | |
| Can do it myself / competitor | | |

## Pricing scenarios

### Scenario A — Current / baseline
- Price: $[current]
- Margin: [calculated or estimated with [ASSUMPTION]]
- Positioning angle: [current]
- Risk at this price: [what breaks or plateaus?]

### Scenario B — Value-anchored increase
- Price: $[15–30% higher than current]
- What justifies it: [add to guarantee / add component / reframe the deliverable]
- Margin: [calculated]
- Positioning angle: [how framing must shift]
- Conversion impact: [estimated % drop in CR, if known]
- Risk: [volume vs margin tradeoff]

### Scenario C — Premium / niche
- Price: $[2–3× current, or anchored to a specific high-value segment]
- Who this targets: [narrow ICP segment with higher willingness to pay]
- What changes in delivery or scope:
- Margin: [calculated]
- Risk: [volume impact; does this segment exist at scale?]

**Recommended scenario:** [A / B / C]
**Rationale:** [1–2 sentences — margin, conversion, ICP fit]
```

---

## Step 2 — Positioning Strategist: Positioning analysis

```
You are a Positioning Strategist.

Load hub/01/positioning.md and hub/01/icp-personas.md.
Reference pricing scenarios from Step 1.

Produce:

## Current positioning assessment
| Dimension | Score (1–5) | Notes |
|---|---|---|
| Category clarity | | Is the category specific enough? |
| POD believability | | Can we prove it? |
| ICP relevance | | Does it speak to the top ICP pain? |
| Competitive durability | | Can a competitor easily match it? |

## Competitive vulnerability
[Where could a competitor undercut or out-position you? Be honest.]

## Positioning options (one per scenario)

**For Scenario A:**
- Category: [refined]
- POD: [one sentence, provable, relevant]
- Positioning statement: [for landing page hero]

**For Scenario B:**
- Category:
- POD:
- Positioning statement:

**For Scenario C:**
- Category:
- POD:
- Positioning statement:

## Recommended positioning
Aligned with Scenario [X].
Key message: [one sentence for the landing page hero]
```

---

## Step 3 — Copy Chief: Draft positioning lines

```
You are a Copy Chief.
Load hub/01/brand-voice.md.
Load hub/02/claims-compliance.md.

For the recommended scenario from Step 2, draft:

1. **Headline (2 options):** Outcome-led, specific, credible. Under 10 words.
   A: 
   B:

2. **Sub-headline (2 options):** How it works or who it's for. 1–2 sentences.
   A:
   B:

3. **Guarantee line:** Exact wording for ads and landing page.
   Must match hub/02/terms-privacy-refund.md exactly.

4. **Price framing sentence:** One line for the sales page or proposal.
   (e.g. "$1,997 — one payment, 6-week delivery, full refund if we miss the deadline")

5. **Objection handler (for #1 objection):** One punchy line.

Compliance check:
Flag any line with: [COMPLIANCE REVIEW NEEDED — see hub/02/claims-compliance.md]
Do not include flagged lines in the approved memo.
```

---

## Step 4 — Analytics & Merchandising: Downstream impact

```
You are combining the Analytics Reporter and Store Merchandiser perspectives.

Load hub/03/product-catalog.md and hub/03/analytics-plan.md.

If a price change is recommended:
- SKU impact: which listings need updating? Any bundles affected?
- A/B test plan (if changing a live offer price):
  [Never change a live price without a test plan or explicit owner approval]
  - Hypothesis:
  - Variable:
  - Control vs variant:
  - Sample size / duration estimate:
  - Decision metric:
- Week-1 metrics to monitor post-change:
  | Metric | Baseline | Expected change | Alert threshold |
  |---|---|---|---|

If a positioning change is recommended:
- What assets need updating: landing page, ads, email sequences, social bio, proposals?
- Sequence: what to update first to avoid message mismatch?
```

---

## Step 5 — Chief of Staff: Assemble memo and hub sync list

```
You are the Chief of Staff assembling the final pricing and positioning memo.

Combine all outputs:

# Pricing & Positioning Memo
Date: YYYY-MM-DD
Triggered by: [reason]
Recommended scenario: [A / B / C]
Status: DRAFT | APPROVED

## Current state
[Step 0 summary]

## Offer snapshot + objection map
[Step 1 — snapshot and objection map only]

## Pricing scenarios
[Step 1 — A, B, C]

## Recommended scenario rationale
[Combined from Steps 1–2]

## Positioning (recommended scenario)
[Step 2 — recommended option only]

## Copy lines (draft)
[Step 3 — for recommended scenario]

## Downstream impact
[Step 4]

## Hub sync list (update AFTER owner approves)
- [ ] hub/01/offer-ladder.md — new price, new guarantee wording
- [ ] hub/01/positioning.md — new category, POD, positioning statement
- [ ] hub/03/product-catalog.md — new price per SKU
- [ ] [any others from Step 4]
- [ ] hub/07/operating-rules.md — add decision log entry

## Human approval gate — REQUIRED
- [ ] You selected the scenario (not AI)
- [ ] Price change explicitly approved by you
- [ ] New guarantee wording approved and matches terms file
- [ ] New positioning lines approved
- [ ] Copy lines compliance-reviewed
- [ ] Downstream impact plan reviewed
- [ ] Hub sync list will be updated before running any new ad campaigns

Write draft to: ~/claude-business/deliverables/pricing-memos/drafts/YYYY-MM-DD_pricing-memo.md
```

---

## Output location
- Draft: `~/claude-business/deliverables/pricing-memos/drafts/YYYY-MM-DD_pricing-memo.md`
- Approved: `~/claude-business/deliverables/pricing-memos/approved/` (after human gate)

## Human gate (critical — these change live business)
- [ ] YOU selected the pricing scenario
- [ ] Price change explicitly approved by you (not just AI recommendation)
- [ ] Claims compliance reviewed for all copy lines
- [ ] Hub sync list will be executed before any new campaigns launch
