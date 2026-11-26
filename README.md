# PDFromScratch

An experiment in AI-driven development using the [BMAD Method](https://github.com/bmad-code-org/BMAD-METHOD) with Claude Code.

The aim is to find, plan and build a simple product that one developer can run as a source of income. Planning is done with BMAD before any code is written.

## Status

Analysis phase. No direction has been chosen yet.

| Round | What | Outcome | Where |
|---|---|---|---|
| 1 | Brainstorm (seeded: sports teams, planning tools) | 101 ideas; none appealed | `_bmad-output/brainstorming/brainstorm-solo-dev-income-product-2026-11-20/` |
| 2a | Market research: open niches for a solo dev or small team | Ranked gaps; top two: EU e-invoicing, Atlassian Data Center exit | `_bmad-output/planning-artifacts/research/market-*` |
| 2b | Competitive research on the top two gaps | E-invoicing: room for an SDK/API sold to small vertical-software vendors. Atlassian: narrow, time-limited wedges | `_bmad-output/planning-artifacts/research/competitive-*` |
| 2c | Creative Partner brainstorm on the two gaps | Parked before it started | `_bmad-output/brainstorming/brainstorm-einvoice-vs-atlassian-exit-2026-11-22/` |

Next: reassess with `bmad-help`.

## Workflow

- `main` is always in a good state. Nobody commits to it directly.
- All work happens on a short-lived branch and comes in through a pull request:
  - `feature/<short-name>`: new product work or a BMAD planning artifact (brief, PRD, architecture, stories)
  - `fix/<short-name>`: bug fixes
  - `chore/<short-name>`: tooling, dependencies, repo housekeeping
- Keep one BMAD artifact or one story per pull request where practical.
- Squash-merge, then delete the branch.

## Layout

| Path | Contents |
|---|---|
| `_bmad/` | BMAD installation: core and BMM modules, config |
| `.claude/skills/` | BMAD agents and workflows as Claude Code skills |
| `_bmad-output/` | BMAD artifacts: brainstorming, planning, implementation |

To reinstall or update BMAD:

```bash
npx bmad-method@latest install
```
