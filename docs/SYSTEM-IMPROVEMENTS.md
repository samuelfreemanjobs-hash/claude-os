# System Improvements — What's Better Here

Design choices made to improve on the common Claude OS pattern:

## 1. MANIFEST.md over one mega-context
**Problem:** Loading all hub files every session wastes context and mixes signals.
**Fix:** hub/MANIFEST.md maps each skill to the exact files it needs. Agents load only relevant sections.

## 2. Proof-first discipline in marketing
**Problem:** AI invents testimonials and statistics.
**Fix:** Offer & Pricing Analyst runs a proof inventory before copy is written. Claims-compliance is loaded in every marketing skill before the first line.

## 3. Specific human gates, not vague "get approval"
**Problem:** Vague approval instructions get skipped.
**Fix:** Every skill ends with a checkbox human gate. Each checkbox is a specific action ("budget cap set", "compliance reviewed"), not just "get approval".

## 4. last-updated dates on every hub file
**Problem:** Stale memory is worse than no memory.
**Fix:** Every hub template has a `last-updated` header. The audit flags any section >60 days old as STALE.

## 5. Quick mode on every skill
**Problem:** Full multi-agent runs are slow for quick questions.
**Fix:** Every skill accepts "quick mode" — output only, no file writes, fewer agent steps.

## 6. Hub sync list on every output
**Problem:** Deliverables and hub get out of sync after decisions.
**Fix:** Pricing memo and other strategic skills end with an explicit hub sync list: "update these files after you approve this."

## 7. Anti-ICP in ICP file
**Problem:** Broad ICPs produce generic copy.
**Fix:** icp-personas.md has an Anti-ICP section: who is NOT a good fit. This makes ad targeting and copy sharper.

## 8. Deliverables in drafts/approved subfolders
**Problem:** Can't tell what's been approved vs still in draft.
**Fix:** Every deliverable goes to `drafts/` first. After human gate, move to `approved/`. Status is visible from folder structure.

## 9. Agent registry as a shared file, not just embedded in skills
**Problem:** Skills duplicate agent descriptions.
**Fix:** agents/REGISTRY.md is the single source. Skills reference it; CoS loads it at the start of every run.

## 10. Cadence with specific ritual steps, not just "review monthly"
**Problem:** Vague rituals don't get done.
**Fix:** cadence/rituals.md has step-by-step checklists for weekly/monthly/quarterly rituals with time targets.

## Known limitations

- **Hub rot is real:** If you don't do the monthly ritual, hub files go stale and quality drops. The system is only as good as its maintenance.
- **Agent prompts are starters:** The embedded prompts in each skill are starting points. Edit them as you learn what works for your business.
- **No live data by default:** The system is file-based. Real-time analytics, ad metrics, and eComm data require MCP connections (Phase B/C).
- **One owner model:** Designed for a solo operator or small team. Multi-user workflows need operating-rules.md to define who approves what.
