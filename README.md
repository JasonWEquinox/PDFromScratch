# PDFromScratch

An experiment in AI-driven development using the [BMAD Method](https://github.com/bmad-code-org/BMAD-METHOD) with Claude Code.

The aim is to find, plan and build a simple product that one developer can run as a source of income. Planning is done with BMAD before any code is written.

## Status

Analysis phase. The first brainstorming session produced four areas to investigate (see `_bmad-output/brainstorming/`). Next comes market research, then a product brief, then a PRD.

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
