# CV / Resume Project

Artem Puzik's CV: a PDF resume and a public one-page site. The content is in English; the user talks in Russian.

## Files and source of truth

| File | Role |
|---|---|
| `generate-resume.md` | **Source of truth** for the resume content: contact, summary, experience, skills, projects, education |
| `resume.html` | Generated from `generate-resume.md` by Pandoc, styled with `resume-template.css` |
| `Artem-Puzik-Full-Stack-Developer-CV.pdf` | Built from `resume.html` by Prince. Served by the site's "Download CV" button. Keep the filename human-readable: recruiters see it first |
| `index.html` + `src/input.css` → `styles.css` | Public site: hero, about, experience timeline, skills grid, projects, references, contact. Tailwind CSS v3 utilities; light/dark theme via `data-theme` on `<html>` (`dark:` variant). `styles.css` is compiled and committed — run `npm run build:css` after changing classes in `index.html` or `src/input.css`; never edit `styles.css` by hand |
| `generate-pdf.sh` | `generate-resume.md` → `resume.html` (Pandoc) → PDF (Prince) |
| `private/` | Personal notes, roadmaps, numbers to confirm. Git-ignored |

## Build

```bash
./generate-pdf.sh   # needs pandoc and prince: brew install pandoc && brew install --cask prince
```

- After editing `generate-resume.md`, run the script. It refreshes both `resume.html` and the PDF.
- If pandoc or prince is missing, sync `resume.html` by hand: replace the changed `<p>` / `<ul>` blocks, with `**x**` → `<strong>x</strong>`. Then tell the user that the PDF is stale. Never claim the PDF is updated without checking its text.
- Check the PDF text after every rebuild. A naive regex over the raw PDF is NOT valid: it misses hex-encoded strings.
  ```bash
  swift -e 'import PDFKit; print(PDFDocument(url: URL(fileURLWithPath: "Artem-Puzik-Full-Stack-Developer-CV.pdf"))!.string!)'
  ```

## Keep the three files in sync

`generate-resume.md`, `resume.html` and `index.html` must state the same facts. The presentation differs by medium; the content does not.

1. **Experience:** company, period, role, bullets and technologies are identical in all three. `index.html` uses the `.timeline-item` block, with a `<strong>Stack:</strong>` line.
2. **Skills:** the same set of technologies everywhere.
   - In `generate-resume.md` / `resume.html`, skills are grouped under bold labels: Architecture, Backend, Frontend, Payments and e-commerce, Databases, DevOps and infrastructure, AI in product, Applied ML in the browser, AI-assisted engineering, Analytics and experimentation, Testing and quality, Also worked with.
   - In `index.html`, the same groups are `.skill-category` cards. Each card has a `.skill-chips` row and one `.skill-proof` line: a fact from production, not a restatement of the chips.
3. **Summary, projects, contact:** a change in one place goes into the other two wherever that content exists. On the site, the summary is the About paragraph plus `.key-highlights`.
4. Bump `Last updated: <Month Year>` at the end of `generate-resume.md` when the content changes.

## Content rules

- **No self-assessed levels** (Expert / Advanced) and **no percentage bars**. They were removed deliberately: they can't be verified and invite hostile probing.
- **No model or version numbers that date the CV** ("GPT-4", "DALL·E 3"). Describe capabilities and engineering patterns instead.
- **No claims the candidate can't defend for ten minutes at an interview.** For example, DDD was replaced by "modular monolith with explicit domain boundaries".
- **Every claim needs evidence:** own commits, a shipped feature, a published package. Prefer depth in a few areas to a long list.
- **Don't present team-owned code as solely the user's work.** Check authorship with `git log --format=%an -- <path>`.
- **Write for ATS and LLM screeners:**
  - plain section headings, no emoji in headings;
  - technology names as job descriptions spell them (`Vue.js`, `Nuxt.js`, `REST API`, `CI/CD`);
  - keep the `Experience by technology` line;
  - never use hidden or white-on-white keyword text.

## Confidentiality (NDA): current employer

The current role is under NDA. Every line about it must pass this filter, in all three files and in the PDF.

- **Allowed in current-role bullets:**
  - open-source technologies (Laravel, Nuxt, Redis, Horizon, Docker, Traefik, MediaPipe, PHPUnit, Playwright…);
  - engineering patterns;
  - the user's own role and ownership.
- **Not in current-role bullets:**
  - vendor or SaaS names: payment providers, LLM vendors, analytics tools, task trackers;
  - counts and traffic numbers.

  Vendor names may appear only in the Skills section, as general experience not attributed to the employer.
- **Never allowed:**
  - product, brand, funnel or domain names;
  - internal package or repo names;
  - the product niche, including combinations of details that reveal it;
  - regional or alternative payment providers by name;
  - revenue, conversion, MAU or transaction figures;
  - security, anti-fraud, monitoring and secrets tooling details;
  - infrastructure incidents or weaknesses;
  - colleagues' names.
- **After any change,** grep all three files for the employer's product and service names before calling the work done.

**Evidence source** for the current role: the user's work repos in `../almus/astro/` (`cassandra` — Laravel backend, `mona-lisa` — Nuxt app, `astro-fb-funnel`), plus `../almus/a-players/funnel-core` (shared package, mostly written by others). Read them only to confirm facts. Nothing from them goes into the CV verbatim.

## Private files

- `private/` stays in `.gitignore` and is never committed.
- Don't copy anything from `private/` into `resume.html`, `index.html` or `generate-resume.md` unless the user asks.
- `private/cv-numbers-to-confirm.md` tracks numbers and claims waiting for the user's confirmation.

## Skill strategy (context only: never put this into the CV files)

- Depth in 2–3 core areas (Vue/Laravel + AI/agents + payments) over many shallow skills.
- Add a skill to the CV only with real evidence: a shipped feature, a course, a pet project.
- Quarterly: remove obsolete or weak items and tighten the wording.

## Git

- Don't commit unless asked.
- `.DS_Store` and `.claude/settings.local.json` are local files: don't commit them.
