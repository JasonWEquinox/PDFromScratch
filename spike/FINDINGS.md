# Docs MCP server spike findings

**Run by:** Jason · **Date:**  · **Machine/OS:**  · **docs-mcp-server:** 3.5.0 (Docker)

## §1 Setup (Step 1)
- Time from `docker compose up` to a working web UI:
- Telemetry shows as disabled in Settings? (yes/no)
- Problems:

## §2 `llms.txt` census (Step 2)
```
(paste llms-census.ps1 output here)
```
Corrected URLs or notes:

## §3 WolverineFx indexing (Step 3)
| Variant | Time | Chunks | Unique URLs | Notes |
|---|---|---|---|---|
| A: `llms-full.txt` single file | | | | |
| B: website crawl (`llms.txt` per page) | | | | |
| C: GitHub docs at our version tag (optional) | | | | |

## §4 Answer quality (Step 4)
Score 1–5 (5 = the needed answer is in the top 5 results). Citations: are the URLs real pages? Noise: does "snippet source" text appear?

| # | Question | A score | B score | C score | Citations OK? | Noise? | Notes |
|---|---|---|---|---|---|---|---|
| 1 | Register an ancillary Polecat store | | | | | | |
| 2 | Handler discovery and extra assemblies | | | | | | |
| 3 | Transactional outbox with EF Core and SQL Server | | | | | | |
| 4 | FluentValidation with Wolverine HTTP | | | | | | |
| 5 | Schedule a message for later | | | | | | |
| 6 | (your own) | | | | | | |
| 7 | (your own) | | | | | | |

**Best WolverineFx variant:**

## §5 Other sources (Step 5)
| Library | Pages indexed | Time | Quality 1–5 | Notes |
|---|---|---|---|---|
| MudBlazor | | | | Index it ourselves, or run its MCP in parallel? |
| Hangfire | | | | |
| FluentValidation | | | | |
| Private repo: | | | | |

## §6 Real work in Claude Code (Step 6)
| Task | Tools called | Did the docs improve the result? | Any APIs not in 6.32.0? | Notes |
|---|---|---|---|---|
| | | | | |
| | | | | |
| | | | | |

## §7 Security and operations (Step 7)
- Read-only mode removed the scrape and job tools? (yes/no)
- Memory (`docker stats`):  · `documents.db` size:
- Refresh time for WolverineFx:

## §8 Verdict (Step 8)
- [ ] **Adopt as-is.** Good enough; move on to the architecture baseline and stories.
- [ ] **Adopt with changes.** List them (e.g. preprocess `llms-full.txt`, add sources, run MudBlazor MCP in parallel):
- [ ] **Rethink.** Why:

Top 3 observations:
1.
2.
3.

Open questions for the architecture baseline:
