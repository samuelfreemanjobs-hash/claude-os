# Hub Manifest

Maps each skill to the hub files it loads. Update this when you add sections or skills.

## Loading convention

Each skill reads: `Read ~/claude-business/hub/<path>`
If a file doesn't exist → mark `[HUB FILE MISSING — run /business-hub-init]` and proceed with stated assumptions.

## Skill → hub file map

| Skill | Hub files loaded |
|---|---|
| `/business-hub-init` | All sections (writes to all) |
| `/business-hub-audit` | All sections (reads all) |
| `/ad-pack-from-offer` | 01/icp-personas, 01/offer-ladder, 01/positioning, 01/brand-voice, 02/claims-compliance, 05/marketing-growth-stack |
| `/pwa-idea-to-spec` | 01/business-model, 01/icp-personas, 03/product-catalog, 04/technical-platform, 07/operating-rules |
| `/pricing-positioning-memo` | 01/business-model, 01/offer-ladder, 01/positioning, 02/tax-accounting, 03/product-catalog |

## Hub section summary

| Section | Files | Fed by | Used by |
|---|---|---|---|
| 01 Identity & Strategy | 6 | hub-init | All marketing + product skills |
| 02 Legal, Finance & Trust | 5 | hub-init | Ad pack (compliance), pricing memo |
| 03 Product & Delivery | 4 | hub-init | PWA spec, pricing memo, eComm |
| 04 Technical Platform | 1 | hub-init | PWA spec, dev agents |
| 05 Marketing & Growth | 1 | hub-init | Ad pack, lifecycle |
| 06 Connections | 1 | hub-init | All (MCP reference) |
| 07 Operating Rules | 1 | hub-init | All (governance) |
| 08 Human Roles | 1 | hub-init | All (escalation) |
