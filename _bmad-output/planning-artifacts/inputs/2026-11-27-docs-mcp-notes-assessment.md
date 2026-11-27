---
title: 'Assessment: Jason notes on docs MCP server research'
input: '2026-11-27-docs-mcp-notes.md (verbatim) + WolverineFx llms-full.txt sample (not committed; profiled below)'
assesses: '_bmad-output/planning-artifacts/research/technical-self-hosted-docs-mcp-server-dotnet-2026-11-26/research.md'
created: '2026-11-27'
status: complete
---

# Assessment: Jason's notes on the docs MCP server research

## Net effect on the plan

**The recommendation changes from *extend* to *adopt*.** We run **arabold/docs-mcp-server as-is in Docker**, with OAuth through Microsoft Entra ID and telemetry switched off. The .NET Context7-compatible facade is **dropped**, because Context7 compatibility is no longer a requirement and a Node host is acceptable. .NET code is now only needed if we later have to fill a gap, such as ingesting XML doc comments. The 2026-11-26 research report is left as it was, and this change is logged in its memlog.

## Point-by-point

| # | Note | Type | Affects | Assessment | Confidence |
|---|---|---|---|---|---|
| 1 | Host in Docker | Constraint | Hosting | ✅ Fits. docs-mcp-server ships a Docker image and Docker Compose setup [A1]. At this scale, one container with a mounted volume for its SQLite store is enough. | High |
| 2 | A Node solution is acceptable if pragmatic | Constraint | Recommendation | ✅ **This removes the main gap the research identified** ("Node stack"). Combined with note 4, there's no reason left to write a .NET wrapper. | High |
| 3 | Move to a solid dev framework quickly after the spike | Requirement | Process after the spike | ❓ **This needs clarifying (see Questions).** Two readings: (a) a proper engineering setup for *this* repo (Docker Compose, infrastructure as code, CI, config management, the BMAD story flow), or (b) the server should serve docs for the team's *main development framework*, the .NET stack listed below. My working reading is (a) plus making sure the stack in (b) is covered. | Medium |
| 4 | No Context7 compatibility needed. Match public implementations only if easy. The goal is cheap, offline AI support | Requirement | Recommendation, MVP scope | ✅ **The facade is dropped.** We use docs-mcp-server's own tools (search docs, list libraries, find version). Also: telemetry is **on by default** and must be turned off with `DOCS_MCP_TELEMETRY=false` [A2]. "Offline" also means **no external embedding API**: run full-text search only, or optionally a local Ollama embedding model [A1]. | High |
| 5 | Use the latest MCP specification and OAuth | Requirement | Architecture | ✅ **Already supported.** The server's MCP endpoint acts as an OAuth 2.0 resource server under the **MCP authorization spec, revision 2026-07-28**. It supports RFC 9728 protected-resource metadata and RFC 8707 audience binding, and can use Microsoft Entra ID as the identity provider. The settings are `DOCS_MCP_AUTH_ENABLED`, `DOCS_MCP_AUTH_ISSUER_URL` and `DOCS_MCP_SERVER_PUBLIC_URL` [A3]. ⚠️ **Caveat:** OAuth protects **only `/mcp`**. The web UI and the `/api` HTTP API are *not* protected and must sit on a private network or behind a reverse proxy with its own sign-in [A3]. Your stack already uses `Microsoft.Identity.Web`, so **Entra ID** is the natural identity provider (to be confirmed). | High |
| 6 | Small scale: 1–2 users at first, likely peaking at 10 | Data | Hosting, storage, cost | ✅ One container with SQLite is plenty. No Postgres or vector database is needed. Cost is close to zero beyond the host machine. With 1–2 users, a **local Docker container on a developer's machine is enough for the spike**, and moving to a shared internal host later is a configuration change, not a rebuild. | High |
| 7 | Main libraries: .NET 10, Blazor/ASP.NET, EF Core, MudBlazor (which already has an open-source MCP server), plus the full package list | Data | Source plan | See **source plan** below. Microsoft runs a **free official Microsoft Learn MCP server** (`https://learn.microsoft.com/api/mcp`, no key needed) [A4], which covers .NET 10, ASP.NET Core, Blazor, EF Core and the `Microsoft.Extensions.*` packages. ⚠️ It is an *online* public service, so it fits "cheap" but not "offline". Public docs leaving the network is harmless, but this needs your call. | High (Learn MCP exists) / Medium (coverage) |
| 8 | WolverineFx `llms-full.txt` sample | Data | Ingestion design, spike test case | See **WolverineFx profile** below. It confirms the format, the size problem and the version gap. | High |

## Source plan: first pass from your package list

| Group | Packages | Proposed source | Notes |
|---|---|---|---|
| Microsoft platform | .NET 10, ASP.NET Core, Blazor, EF Core (+SqlServer/Design/Tools), `Microsoft.Extensions.*`, `System.*`, Microsoft.Identity.Web | **Microsoft Learn MCP**, used alongside ours, *or* index the GitHub doc repos (dotnet/docs, dotnet/AspNetCore.Docs, dotnet/EntityFramework.Docs) | The Learn docs are huge. Indexing them ourselves is possible but heavy, and Learn MCP is free. Your decision (Q2). |
| Already has an MCP server | MudBlazor | The existing MudBlazor MCP server, used alongside ours, *or* index the MudBlazor docs | Same decision as above |
| Vendor "for AI" docs | WolverineFx (+ RuntimeCompilation); likely the JasperFx siblings (Marten, Polecat) | `llms-full.txt` / `llms.txt` | This is the spike test case |
| Open source with docs sites or repos | Hangfire, FluentValidation, Serilog (+sinks), Scrutor, xunit.v3, Shouldly, NSubstitute, Respawn, WireMock.Net, RestSharp, Newtonsoft.Json, WiX Toolset | Website crawl, which picks up `llms.txt` automatically where one exists [A1], or the GitHub repo docs folder | Which of these publish `llms.txt` is unknown. A quick census during the spike would settle it (no separate research run needed). |
| Test/infrastructure helpers with little to document | coverlet, Microsoft.NET.Test.Sdk, JetBrains.Annotations, xunit.runner.visualstudio, legacy `System.*` 4.x packages | Skip | Low value |
| Internal/private | (not listed yet) | Git repo (token) or local folder | Which Git host do these live on? (Q4) |

## WolverineFx `llms-full.txt` profile

The sample you supplied (sha256 prefix `f87d74d5…`) is **not committed**. It's third-party content, and it's reproducible from its URL.

- **Size:** 3.4 MB, about 77k lines, roughly **850k tokens** (estimated at about 4 bytes per token). That is far beyond any agent's context window, which confirms the case for an index over pasting docs in.
- **Structure:** **240 pages**, each starting with `url:` frontmatter (e.g. `/guide/durability/polecat/ancillary-stores.md`). That gives clean page boundaries and citation URLs. Headings: 291 H1, 1,252 H2, 842 H3. The largest page sections are guide/messaging (75 pages), guide/durability (56) and guide/http (34).
- **Code:** about **2,466 fenced code blocks** (about 2,261 C#, plus bash, json, F# and proto). There are 1,075 `snippet source | anchor` markers left over from the docs tooling, which should be **stripped** during ingestion as noise.
- **Implications:**
  - Split by page, then by heading.
  - Keep each code block whole.
  - Use the `url:` value as the citation.
  - docs-mcp-server reads an `llms-*.txt` file as Markdown when it's given as the start URL [A1]. Whether it splits on these `url:` frontmatter blocks is **a spike check**.
- ⚠️ **Version gap:** `llms-full.txt` reflects the *latest* docs, but your solution pins **WolverineFx 6.32.0**. If the docs drift ahead of the pinned version, agents may suggest APIs you don't have yet. Options: accept "latest" for now (simplest), or index the repo's docs at the `6.32.0` tag. This is a spike observation, and the decision can come later.
- 🔐 **Untrusted input:** vendor-published "for AI" files go straight into agents' context. Review sources before registering them.

## Questions for Jason, only where the notes leave a gap

1. **"Solid dev framework"**: did you mean (a) a proper engineering setup for *this* repo after the spike (Compose, CI, infrastructure as code, BMAD story flow), or (b) something else, such as a specific framework or template?
2. **Learn MCP / MudBlazor MCP**: is it acceptable to run these existing MCP servers *alongside* ours (cheap and quick, but Learn MCP is online), or must everything live in our one self-hosted server ("keep in one place", fully offline)?
3. **Identity provider**: should OAuth use Microsoft Entra ID (it matches `Microsoft.Identity.Web` in your stack)?
4. **Private repos**: which host (GitHub, GitLab or Azure DevOps), and roughly how many repos at first?
   - **Answered 2026-11-27: GitHub is preferred.** The company also has Azure DevOps instances, both on-prem and cloud. **Assessment:** GitHub is the better choice. docs-mcp-server supports private GitHub repos natively with a token [A1], while Azure DevOps has no native source. ADO would only add value for repos that exist *only* there; those can be indexed from a local clone or folder without any adapter. **Decision:** GitHub is the private-repo source. ADO is a fallback via local clone only if needed.

**Working defaults until Jason says otherwise** (questions 1–3 weren't answered directly):
- Q1: treat "solid dev framework" as a proper engineering setup for this repo after the spike.
- Q2: run Microsoft Learn MCP and the MudBlazor MCP alongside our server.
- Q3: run the spike locally without authentication, and add Entra ID OAuth when the server moves to a shared host.

## Sources

| # | Supports | Source | Accessed |
|---|---|---|---|
| A1 | Docker/Compose, SQLite index, full-text search when no embedding model is set, local Ollama option, `llms.txt` detection, companion `llms-*.txt` files read as Markdown when used as start URL | [docs-mcp-server README](https://raw.githubusercontent.com/arabold/docs-mcp-server/main/README.md) | 2026-11-27 |
| A2 | Telemetry on by default; disabled with `DOCS_MCP_TELEMETRY=false` | [docs-mcp-server telemetry doc](https://raw.githubusercontent.com/arabold/docs-mcp-server/main/docs/infrastructure/telemetry.md) | 2026-11-27 |
| A3 | OAuth 2.0 resource server under MCP authorization spec 2026-07-28; Entra ID supported; web UI and `/api` not protected | [docs-mcp-server authentication doc](https://raw.githubusercontent.com/arabold/docs-mcp-server/main/docs/infrastructure/authentication.md) | 2026-11-27 |
| A4 | Microsoft Learn MCP: free, no key, `https://learn.microsoft.com/api/mcp`, `maxTokenBudget` | [MicrosoftDocs/mcp README](https://raw.githubusercontent.com/MicrosoftDocs/mcp/main/README.md) | 2026-11-27 |
