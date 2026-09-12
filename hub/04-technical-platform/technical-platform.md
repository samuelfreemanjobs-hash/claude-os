# Technical Platform
last-updated: YYYY-MM-DD

## Domains & hosting
| Domain | Host / CDN | Purpose |
|---|---|---|
| [domain.com] | [Vercel / Cloudflare / Netlify] | Main site |
| [app.domain.com] | | App / dashboard |

## Repositories
| Repo | URL | Purpose | Primary language |
|---|---|---|---|
| [name] | github.com/[org]/[repo] | [main site / app / scripts] | |

**GitHub org:** [org name]
**Branch strategy:** [e.g. main = production, dev = staging, feature/* branches]

## Environments
| Environment | URL | Deployment trigger |
|---|---|---|
| Production | | Push to main / manual |
| Staging | | Push to dev |
| Local dev | localhost:3000 | npm run dev |

**Secrets management:** [e.g. Vercel env vars / .env.local not committed / Doppler]

## Stack defaults (for new projects)
- Frontend: [e.g. Next.js 14 / React / Vue]
- Styling: [e.g. Tailwind CSS]
- Backend / API: [e.g. Next.js API routes / Supabase / Hono]
- Database: [e.g. Postgres via Supabase / SQLite / PlanetScale]
- Auth: [e.g. Clerk / NextAuth / Supabase Auth]
- Payments: [e.g. Stripe]
- Deployment: [e.g. Vercel]
- Error monitoring: [e.g. Sentry]

## CI/CD
| Step | Tool | Trigger |
|---|---|---|
| Lint + typecheck | [e.g. GitHub Actions] | Every PR |
| Tests | | Every PR |
| Deploy to staging | | Merge to dev |
| Deploy to production | | Manual approval or push to main |

## Design system
- Figma file: [URL]
- Design token file in repo: [path]
- Component library: [e.g. shadcn/ui / Radix / custom]

## CMS (if applicable)
[e.g. Sanity / Contentful / none]

## AI rules for this file
Dev agents load this file first. Default to this stack unless the problem requires a documented exception.
All production deploys require human approval — no agent may trigger a production deploy autonomously.
