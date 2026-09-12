# Start Here

## Are you new?

Paste `INSTALL-PROMPT.md` into Claude Code. It runs the whole setup.

## Already installed?

Open Claude Code with cwd = `~/claude-business` and run:

| Command | When to use |
|---|---|
| `/business-hub-init` | First-time setup, or refresh a stale section |
| `/business-hub-audit` | Monthly health check (score /100 + 30-day plan) |
| `/ad-pack-from-offer` | Build a campaign from one offer |
| `/pwa-idea-to-spec` | Turn an app idea into a build-ready spec |
| `/pricing-positioning-memo` | Sharpen pricing, positioning, and copy lines |

## Daily use (60 seconds)

1. Open Claude Code, cwd = `~/claude-business`
2. Run the skill for today's work
3. Approve the human gate at the end
4. If you use git: `git add hub/ deliverables/ && git commit -m "update: [what changed]"`

## When to update hub/

| What changed | File to update |
|---|---|
| Offer, price, or guarantee | `hub/01-identity-strategy/offer-ladder.md` |
| New product or SKU | `hub/03-product-delivery/product-catalog.md` |
| New tool or platform | `hub/04-technical-platform/technical-platform.md` |
| Major business decision | `hub/07-operating-rules/operating-rules.md` (add a dated entry) |
| ICP insight from customer calls | `hub/01-identity-strategy/icp-personas.md` |

## Cheat sheet

```
Ad campaigns       →  /ad-pack-from-offer
App ideas          →  /pwa-idea-to-spec
Pricing decisions  →  /pricing-positioning-memo
Hub setup/refresh  →  /business-hub-init
Monthly check      →  /business-hub-audit
```
