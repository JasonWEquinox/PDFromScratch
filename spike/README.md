# Docs MCP server spike runbook

**Goal:** decide, from hands-on evidence, whether **arabold/docs-mcp-server** (run as-is in Docker, fully offline) gives our AI agents good enough answers about our stack to be worth adopting.

**Time:** about 2–3 hours, which can be split across sessions because the index persists.
**Where:** your own machine. Everything binds to `localhost` and nothing is exposed.
**Record results in:** [`FINDINGS.md`](FINDINGS.md). Each step below says which section to fill in.

> **Already observed in a cloud mini-test (2026-11-27):** indexing your WolverineFx `llms-full.txt` as one file took **27 s** and produced **712 chunks** (a 9 MB database). Search found the right passage for "handler discovery", but **every result cited the same single file** (the 240 page URLs were lost), **"snippet source | anchor" noise remained**, and a "Polecat ancillary stores" query ranked the right page poorly. **Step 4 tests whether indexing the website instead fixes this.**

---

## Step 0: Prerequisites (5 min)

1. **Docker Desktop** (Compose v2.24+) is running (`docker version` shows a Server section).
2. **PowerShell 7** (`pwsh`), used for the `llms.txt` census script. Every other command works in any shell.
3. **Claude Code** is installed (`claude --version`).
4. Get this branch and open a terminal in the repo root:
   ```bash
   git fetch origin
   git switch feature/spike-docs-mcp
   ```
5. **Optional, for the private-repo test:** create a **fine-grained GitHub token** scoped to **one** private repo with **Contents: Read-only**. Then copy the env template:
   ```bash
   cp spike/.env.example spike/.env
   ```
   Paste the token after `GITHUB_TOKEN=` in `spike/.env`. That file is gitignored. Never commit it.

## Step 1: Start the server (5 min)

```bash
cd spike
docker compose up -d
docker compose ps
```

- ✅ `docs-mcp` shows **running**.
- Open **http://localhost:6280**. The web UI should load.
- Go to the **Settings** page and confirm **telemetry is disabled** (telemetryEnabled is false).

📝 Fill in **FINDINGS §1** (setup time, any problems).

> All later commands run from the `spike/` folder. The CLI runs *inside* the container with:
> `docker compose exec docs-mcp node dist/index.js <command>`

## Step 2: Check which libraries publish `llms.txt` (5 min)

```bash
pwsh ./llms-census.ps1
```

This reports, for each library's docs site, whether `llms.txt` and `llms-full.txt` exist.

📝 Paste the output into **FINDINGS §2**, and correct any site URLs that came back as "no site" if you know the right one.

## Step 3: Index WolverineFx two ways (15 min)

**A. The single `llms-full.txt` file** (as in the cloud test):
```bash
docker compose exec docs-mcp node dist/index.js scrape WolverineFx-full https://wolverinefx.io/llms-full.txt
```

**B. The website crawl.** The crawler finds `llms.txt` and pulls each page's Markdown separately:
```bash
docker compose exec docs-mcp node dist/index.js scrape WolverineFx https://wolverinefx.io/ --max-pages 400
```

**C. Optional: the docs pinned to *our* version, 6.32.0.** Find the exact tag name on the [Wolverine releases page](https://github.com/JasperFx/wolverine/releases). It may be written `V6.32.0` or `6.32.0`. Then run:
```bash
docker compose exec docs-mcp node dist/index.js scrape WolverineFx-6.32 https://github.com/JasperFx/wolverine/tree/<TAG>/docs --version 6.32.0
```

Then run `docker compose exec docs-mcp node dist/index.js list`, or open **Libraries** in the web UI. Note the **chunk count** and **unique URL count** for each.

📝 Fill in **FINDINGS §3**. Did B keep per-page URLs? How long did each take?

## Step 4: Compare answer quality (30 min)

Open **Search Playground** in the web UI. For each question below, run it against **WolverineFx-full**, then **WolverineFx** (and **WolverineFx-6.32** if you did C). Score the top 5 results from 1 to 5, where 5 means "the answer an agent needs is right there". Also note whether the citations point to real pages and whether "snippet source" noise appears.

1. How do I register an ancillary Polecat store?
2. How does Wolverine discover message handlers, and how do I add another assembly?
3. How do I configure the transactional outbox with EF Core and SQL Server?
4. How do I use FluentValidation with Wolverine HTTP endpoints?
5. How do I schedule a message for later delivery?
6. *Two questions of your own from real work.*

📝 Fill in the **FINDINGS §4** table.

## Step 5: Index the rest of the trial set (20–40 min, mostly waiting)

```bash
docker compose exec docs-mcp node dist/index.js scrape MudBlazor https://mudblazor.com/ --max-pages 300
docker compose exec docs-mcp node dist/index.js scrape Hangfire https://docs.hangfire.io/ --max-pages 300
docker compose exec docs-mcp node dist/index.js scrape FluentValidation https://docs.fluentvalidation.net/ --max-pages 200
```

**Private repo** (needs the token from Step 0, and a restart so the container picks it up: `docker compose up -d`):
```bash
docker compose exec docs-mcp node dist/index.js scrape <RepoName> https://github.com/<owner>/<repo>
```

- **MudBlazor** is a Blazor (JavaScript-rendered) site. If it indexes few pages or junk, note it. That's the evidence for the MudBlazor question: do we index it, or run its existing MCP server in parallel?
- Check **Jobs & Queue** in the web UI for failures.

Run 2–3 Playground questions per library, especially MudBlazor and the private repo.

📝 Fill in **FINDINGS §5**.

## Step 6: Use it from Claude Code on real work (30–45 min)

Register the server for your user, so it works in any repo:
```bash
claude mcp add --transport http --scope user docs-mcp-local http://localhost:6280/mcp
```

In your **real application repo**, start Claude Code and run `/mcp`. `docs-mcp-local` should show as connected.

Do **2–3 real tasks** that touch Wolverine, MudBlazor or a private library. Prompt explicitly at first, e.g. *"Use the docs-mcp-local tools to check the WolverineFx docs, then …"*. For each task, note:
- Did the agent call the tools, and which ones?
- Did the docs change the answer, i.e. was it correct or idiomatic where it would otherwise have guessed?
- Did it suggest any API that doesn't exist in **our pinned 6.32.0**? That's the version-gap risk.

Optional baseline: do the same task once with the server disabled (`claude mcp remove docs-mcp-local --scope user`, then add it back).

📝 Fill in **FINDINGS §6**.

## Step 7: Security and operations checks (10 min)

1. **Read-only mode.** This stops agents from indexing arbitrary URLs, which would be a prompt-injection risk:
   ```bash
   DOCS_MCP_READ_ONLY=true docker compose up -d
   ```
   In PowerShell, use `$env:DOCS_MCP_READ_ONLY="true"; docker compose up -d` instead.

   In Claude Code, run `/mcp` and look at the tools. `scrape_docs`, `refresh_version` and the job tools should be **gone**, leaving the search and read tools.
2. **Resource use:**
   ```bash
   docker stats --no-stream
   docker compose exec docs-mcp ls -la /data
   ```
   Note the memory use and the size of `documents.db`.
3. **Refresh:** `docker compose exec docs-mcp node dist/index.js refresh WolverineFx`. Note how long it takes (unchanged pages are skipped).

📝 Fill in **FINDINGS §7**.

## Step 8: Decide and hand back (10 min)

1. Complete the **FINDINGS §8 verdict**: adopt as-is, adopt with changes, or rethink.
2. Hand the results back **one** of two ways:
   - **Commit `spike/FINDINGS.md`** to this branch (`feature/spike-docs-mcp`, [PR #5](https://github.com/JasonWEquinox/PDFromScratch/pull/5)) and push.
   - Or **paste FINDINGS into the chat**, and I'll commit it.
3. **Stop** the server. Keep the index for later with:
   ```bash
   docker compose down
   ```
   To remove everything, including the index:
   ```bash
   docker compose down -v
   ```
   To remove the Claude Code registration:
   ```bash
   claude mcp remove docs-mcp-local --scope user
   ```

**What happens next:** I'll assess FINDINGS. Then we run the lean brief and PRD, the **architecture baseline** (security, testing, CI, Docker, Entra ID OAuth) and **high-level stories for external review**.
