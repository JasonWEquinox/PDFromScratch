# Digest options-r1-1: Existing self-hosted docs MCP servers and the Context7 interface

Angle: existing options and the Context7 interface. Run date: 2026-11-26. 20 tool calls.

**Run constraints (they affect confidence).** The GitHub REST API (`gh api`, `api.github.com`) was refused for this session. `context7.com`, `grounded.tools`, `glama.ai` and `getunblocked.com` did not resolve here. Evidence therefore comes from:
- GitHub web pages fetched through WebFetch.
- `raw.githubusercontent.com` files.
- Shallow `git clone --depth 1`, for the HEAD commit date (maintenance truth) and to read source code.
- Two web searches, whose snippets were used only for leads.

Star counts were seen only for two repos, on their GitHub pages. For Context7, "pub date" is the date of the HEAD commit of the repo that holds the doc file. That repo is upstash/context7, with HEAD at 2026-11-26. So each doc was current at that commit. The doc's own authoring date is unknown.

## Findings

| # | Claim | Source URL | Publisher | Pub date | Accessed | Confidence | Class |
|---|---|---|---|---|---|---|---|
| 1 | Context7's repo holds only the MCP server source. Its README says "The supporting components — API backend, parsing engine, and crawling engine — are private and not part of this repository." | https://github.com/upstash/context7 (README.md) | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | licence |
| 2 | The Context7 MCP server is MIT-licensed and published as npm `@upstash/context7-mcp`. The package.json on master is version 4.9.0. | https://raw.githubusercontent.com/upstash/context7/master/packages/mcp/package.json | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | licence |
| 3 | The upstash/context7 GitHub page showed about 65.5k stars and 3.3k forks. The last commit was 2026-11-26 (git clone), so it is very actively maintained. | https://github.com/upstash/context7 | GitHub / Upstash | 2026-11-26 | 2026-11-26 | High | maintenance |
| 4 | Context7 exposes two core MCP tools. `resolve-library-id` takes `query` and `libraryName`, both required. `query-docs` takes required `libraryId` and `query`, plus optional `language` and `version`. | https://github.com/upstash/context7/blob/master/packages/mcp/src/index.ts | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | interface |
| 5 | Context7 silently remaps argument names that agents hallucinate. `userQuery` and `question` become `query`. On `query-docs`, `context7CompatibleLibraryID`, `libraryID` and `libraryName` become `libraryId`. | https://raw.githubusercontent.com/upstash/context7/master/packages/mcp/src/lib/tool-args.ts | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | interface |
| 6 | The current tool surface has no `topic` or `tokens` parameter, and the README does not mention `get-library-docs`. The older `get-library-docs(topic, tokens)` shape is now `query-docs(query, version, language)`. | https://github.com/upstash/context7 (README "MCP Tools"), src/index.ts | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | interface |
| 7 | The MCP server supports `--transport stdio` (the default) and `--transport http` (Streamable HTTP at `/mcp`). The hosted endpoint is `https://mcp.context7.com/mcp` with `Authorization: Bearer` auth. | src/index.ts; README | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | interface |
| 8 | The published plans are Free ($0, 1,000 API calls a month) and Pro ($10 per seat per month, 2,000 calls per seat a month). Extra calls cost $5 per 1,000. Enterprise is "Custom". | https://raw.githubusercontent.com/upstash/context7/master/docs/plans-pricing.mdx | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | pricing |
| 9 | On Pro and Enterprise, private repositories cost $5 per 1M parsed tokens. Pro teamspaces allow up to 30 members. SSO and "Self-hosted deployment" are Enterprise-only. | same | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | pricing |
| 10 | Self-hosted deployment, larger teamspaces and annual contracts go through context7@upstash.com. The Enterprise page publishes no price ("For pricing details and custom plans, contact us"). | https://raw.githubusercontent.com/upstash/context7/master/docs/enterprise.mdx | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | pricing |
| 11 | Context7 On-Premise keeps the repositories, generated docs, database, vector store and MCP server in your infrastructure. It ships with Docker Compose or Kubernetes, a web UI, a REST API compatible with the public API, and private GitHub/GitLab ingestion. A 30-day trial licence is available. | https://raw.githubusercontent.com/upstash/context7/master/docs/enterprise/on-premise.mdx | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | feature |
| 12 | On-Premise still needs an AI provider for parsing, embedding and reranking: OpenAI, Anthropic, Google, Bedrock, or a "custom OpenAI-compatible endpoint". With an online licence, Context7 Cloud receives licence checks, a daily usage report and public-library searches. | same | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | feature |
| 13 | On-prem clients connect only over Streamable HTTP. The docs say "Local stdio transport … not available for on-premise targets". | same | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | interface |
| 14 | Enterprise private sources include GitHub, GitLab, other Git hosts (Gerrit, Gitea, Bitbucket Server), Confluence, Google Drive, Notion, OpenAPI, websites and llms.txt. SSO supports SAML, OAuth and OIDC. | enterprise.mdx (as #10) | Upstash | HEAD 2026-11-26 | 2026-11-26 | High | feature |
| 15 | arabold/docs-mcp-server ("Grounded Docs") indexes websites, GitHub repos, npm, PyPI, local folders and ZIP/TAR archives. It detects llms.txt during web scrapes. | https://github.com/arabold/docs-mcp-server | arabold | HEAD 2026-11-22 | 2026-11-26 | High | feature |
| 16 | docs-mcp-server uses SQLite full-text search with optional vector search. Supported embedding providers are OpenAI, Ollama, Gemini, Vertex, Bedrock, Azure OpenAI and any OpenAI-compatible server. It works with no embedding model at all (full-text only). | same | arabold | HEAD 2026-11-22 | 2026-11-26 | High | feature |
| 17 | docs-mcp-server reads private GitHub repos with `GITHUB_TOKEN`, `GH_TOKEN` or a per-scrape `Authorization` header. | https://github.com/arabold/docs-mcp-server/blob/main/docs/setup/configuration.md | arabold | HEAD 2026-11-22 | 2026-11-26 | High | feature |
| 18 | docs-mcp-server supports stdio and Streamable HTTP. It ships as a Docker image (`ghcr.io/arabold/docs-mcp-server`) with a web UI on port 6280, optional split worker/MCP/web deployment, and OAuth2/OIDC protection of the endpoint. It is MIT-licensed, needs Node 22.14+, and showed about 1.9k stars. | GitHub page; docs/infrastructure/authentication.md; package.json | arabold | HEAD 2026-11-22 | 2026-11-26 | High | feature / licence |
| 19 | docs-mcp-server released v3.5.0 on 22 Nov (2026, matching the HEAD commit date), v3.4.1 on 25 Oct and v3.4.0 on 24 Oct, so it is actively maintained. | https://github.com/arabold/docs-mcp-server/releases | arabold | 2026-11-22 | 2026-11-26 | High | maintenance |
| 20 | The docs-mcp-server MCP tools are `search_docs` {library, version, query, limit}, `scrape_docs`, `list_libraries`, `find_version`, `fetch_url`, `list_pages`, `read_page`, `refresh_version`, `remove_docs` and the job tools. | src/mcp/mcpServer.ts, src/tools/ (git clone) | arabold | HEAD 2026-11-22 | 2026-11-26 | High | interface |
| 21 | langchain-ai/mcpdoc (v0.0.10, MIT, Python) serves a user-defined list of llms.txt files. It has two tools, `list_doc_sources` and `fetch_docs(url)`, and only fetches from allowed domains. It supports stdio or SSE transport and does not index or search. | https://github.com/langchain-ai/mcpdoc | LangChain | HEAD 2026-08-19 | 2026-11-26 | High | feature |
| 22 | idosal/git-mcp (GitMCP, Apache-2.0) is a remote MCP server that runs on Cloudflare Workers (wrangler, Vectorize interface). It serves public GitHub repos, prioritising llms.txt and falling back to README. Its tools are `fetch_<repo>_documentation`, `search_<repo>_documentation`, `search_<repo>_code` and `fetch_url_content`. The README says "You can even self-host it". | https://github.com/idosal/git-mcp | idosal | HEAD 2026-05-08 | 2026-11-26 | Medium | feature |
| 23 | The last GitMCP commit was 2026-05-08, more than 6 months before this run, which is a weak maintenance signal. | git clone | idosal | 2026-05-08 | 2026-11-26 | High | maintenance |
| 24 | AsyncFuncAI/deepwiki-open (MIT) generates wikis for GitHub, GitLab and Bitbucket repos. It ships a Helm chart, and its last commit was 2026-11-26. Its README excerpt read in this run did not show an MCP interface. | https://github.com/AsyncFuncAI/deepwiki-open | AsyncFuncAI | HEAD 2026-11-26 | 2026-11-26 | Medium | feature |
| 25 | Smaller self-hosted candidates appear in directories: dodopayments/context-mcp (TypeScript, Apache-2.0, about 48 stars, last push January 2026), rm-rf-prod/GroundTruth-MCP, and cosmocoder/mcp-web-docs (crawls docs sites, including ones behind authentication). These were not verified first-hand. | https://awesome.ecosyste.ms/projects/github.com%2Fdodopayments%2Fcontext-mcp ; https://lobehub.com/en/mcp/cosmocoder-mcp-web-docs | directories (via search snippet) | n/a | 2026-11-26 | Low | feature |
| 26 | The official MCP C# SDK ships `ModelContextProtocol.AspNetCore` for HTTP MCP servers hosted in ASP.NET Core. That is the natural base for a .NET build. This search found no mature .NET-native docs MCP server, only small NuGet packages such as Hlibz.McpDocs.AspNetCore 0.1.3. | https://packages.nuget.org/packages/ModelContextProtocol.AspNetCore ; https://www.nuget.org/packages/Hlibz.McpDocs.AspNetCore | NuGet (via search snippet) | n/a | 2026-11-26 | Low–Medium | feature |

## Option map

| Name | Sources supported | Private repos | llms.txt | Retrieval (needs external API?) | Transport | Stack | Licence | Stars | Last release / commit | Fit vs requirements |
|---|---|---|---|---|---|---|---|---|---|---|
| **arabold/docs-mcp-server** (Grounded Docs) | Web crawl, GitHub, npm, PyPI, local folder, ZIP/TAR | Yes (`GITHUB_TOKEN`, auth header) | Detected during scrape | SQLite full-text search plus optional embeddings (Ollama and other OpenAI-compatible servers work locally). **No external API needed.** | stdio and Streamable HTTP; web UI; OIDC | TypeScript / Node 22, Docker | MIT | about 1.9k | v3.5.0, 2026-11-22 | **Strong.** Meets all three source needs and supports a shared server on-network. Gaps: no NuGet source, a Node stack, and a tool surface that is not Context7-shaped. |
| **Context7 On-Premise** (commercial) | GitHub, GitLab, other Git, Confluence, Drive, Notion, OpenAPI, websites, llms.txt | Yes | Yes | Full pipeline plus local vector store. **Needs an LLM/embedding provider**, which can be a custom OpenAI-compatible endpoint. The online licence calls Context7 Cloud. | Streamable HTTP only (on-prem) | Closed backend, Docker/K8s | Commercial (MCP client is MIT) | 65.5k (OSS client) | Client 4.9.0, commit 2026-11-26 | **Strong functionally** and uses the native Context7 interface. Price is "custom"; the ~US$45k quote could not be checked against any public number. |
| **Context7 OSS MCP server** | None by itself (it is a proxy to the Context7 API) | n/a | n/a | Calls the Context7 cloud API | stdio / HTTP | TypeScript | MIT | 65.5k | 2026-11-26 | **Not self-hostable** for content, because the backend is private. Useful as an interface reference only. |
| **langchain-ai/mcpdoc** | llms.txt URLs or local files | No (only an allowed-domains list) | Core purpose | No search: the agent reads llms.txt and fetches pages. No API needed. | stdio, SSE | Python | MIT | not obtained | v0.0.10; commit 2026-08-19 | **Partial.** Covers the vendor-llms.txt need (WolverineFx) only, with no indexing. |
| **idosal/git-mcp** (GitMCP) | Public GitHub repos and GitHub Pages | Not documented | Prioritised | Cloudflare Vectorize / Workers | Remote HTTP | TypeScript on Cloudflare Workers | Apache-2.0 | not obtained | commit 2026-05-08 | **Weak.** Tied to Cloudflare and public GitHub, and is going stale. |
| **AsyncFuncAI/deepwiki-open** | GitHub, GitLab, Bitbucket | Yes (per README description) | Not seen | LLM-generated wiki (needs LLM provider) | Web app (MCP not confirmed) | Python/Next.js, Helm | MIT | not obtained | commit 2026-11-26 | **Adjacent.** Generates wikis rather than serving library docs, and MCP was not confirmed. |
| dodopayments/context-mcp, GroundTruth-MCP, cosmocoder/mcp-web-docs | Various (unverified) | mcp-web-docs: authenticated sites | ? | ? | ? | TS (context-mcp) | Apache-2.0 (context-mcp) | about 48 (context-mcp) | context-mcp: Jan 2026 (stale) | **Unverified, small.** Not chased. |

## Context7 interface

Source: `packages/mcp/src/index.ts`, `lib/utils.ts` and `lib/tool-args.ts` on upstash/context7 master (HEAD 2026-11-26), accessed 2026-11-26.

- **`resolve-library-id`** (title "Resolve Context7 Library ID")
  - Inputs: `query` (string, required; the user's task, used to rank) and `libraryName` (string, required; the official name, e.g. "Next.js").
  - Annotations: readOnly, idempotent, openWorld.
  - The description tells the agent to call this first unless the user gave `/org/project` or `/org/project/version`, and "Do not call this tool more than 3 times per question."
  - **Output:** one `text` content block. It starts `Available Libraries:\n\n`, then lists one block per library separated by `\n----------\n`. Each block is lines of the form:
    - `- Title: …`
    - `- Context7-compatible library ID: /org/project`
    - `- Description: …`
    - `- Code Snippets: N` (optional)
    - `- Source Reputation: High|Medium|Low|Unknown`
    - `- Benchmark Score: N` (optional)
    - `- Source: …` (optional)
  - If nothing matches, the text is "No documentation libraries found matching your query." This is not an error. An upstream failure returns `isError: true`.
- **`query-docs`** (title "Query Documentation")
  - Inputs: `libraryId` (required, e.g. `/vercel/next.js`), `query` (required; one concept per call), `language` (optional; ranks code examples, e.g. "C#") and `version` (optional, e.g. "15.4.3", "^15.4.3", "14"; passed here, not as an ID suffix).
  - Same 3-call cap.
  - **Output:** a single `text` block holding the API's response string, with `isError: true` only on real failures. "No documentation found" counts as a valid answer.
  - The body format comes from the private backend and was not observed in this run.
- **Arg aliases to copy:**
  - `query` accepts `userQuery` or `question`.
  - On `query-docs`, `libraryId` accepts `context7CompatibleLibraryID`, `libraryID` or `libraryName`.
- **Legacy shape:** older agent prompts and rules may still call `get-library-docs(context7CompatibleLibraryID, topic, tokens)`. The current server does not expose that tool (README and source). A home-built server could register it as an alias for compatibility. This is an inference.
- **Transport and auth:**
  - stdio by default.
  - `--transport http` serves Streamable HTTP at `/mcp` and authenticates with an `Authorization: Bearer` header or OAuth.
  - Library ID format is `/org/project[/version]`. Hosted IDs also use `/websites/...` and `/llmstxt/...` prefixes for website and llms.txt sources.

## Adopt / extend / build read

1. **Context7 cannot be self-hosted from open source.** The OSS repo is the client-side MCP server only; the backend, parser and crawler are private (#1). Self-hosting Context7 means buying Enterprise On-Premise (#9–#13).
   - On-Premise covers all three requirements: public libraries, private Git, and llms.txt.
   - It still needs an LLM and embedding provider, which can be an on-network OpenAI-compatible endpoint.
   - With an online licence it phones home for licence checks, usage reports and public-library search.
   - No public price exists, so the ~US$45k quote cannot be checked against published numbers.
   - For comparison, the hosted Pro plan is $10 per seat per month plus $5 per 1M parsed private tokens. That is cheap, but private docs then leave the network, which breaks the stay-on-network requirement.
2. **Best adopt candidate: arabold/docs-mcp-server.**
   - It is MIT-licensed, released 4 days ago (v3.5.0), and has a steady release cadence (#19).
   - It covers web crawl, Git with token auth, local folders and llms.txt detection.
   - It runs fully offline with full-text search, or with Ollama embeddings.
   - It runs as a shared Docker server with Streamable HTTP and OIDC.
   - The main mismatches:
     - It is Node, not .NET, though it runs as an opaque container.
     - It has no NuGet or .NET-API-reference source.
     - Its tools (`search_docs{library,version,query,limit}`) differ from Context7's `resolve-library-id`/`query-docs` pair that agents and rules expect.
3. **Extend path.** Run docs-mcp-server as the indexer and store. Then put a thin ASP.NET Core MCP facade in front of it, using the official C# SDK (#26).
   - The facade exposes Context7-shaped tools and the argument aliases (§Context7 interface).
   - It maps `resolve-library-id` to `list_libraries`/`find_version` and `query-docs` to `search_docs`.
   - This keeps the team in C# where it matters and avoids building crawling, chunking and search. This is an inference: the facade was not built or tested.
4. **Build from scratch** in .NET is justified only if the facade proves insufficient, for example if .NET XML-doc or NuGet ingestion becomes central. No mature .NET-native docs MCP server turned up (#26, low confidence).
5. **mcpdoc** is a cheap complement for vendor llms.txt such as WolverineFx. It is not a primary server, because it has no index and no HTTP transport beyond SSE.

## Leads not chased

- docs-mcp-server `docs/guides/mcp-clients.md` (full tool parameter list), and whether its scraper treats `llms-full.txt` specially.
- Context7 On-Premise Docker/K8s guides (`docs/enterprise/deployment/*`): hardware needs, offline licence terms, and whether an air-gapped mode removes the Context7 Cloud calls.
- Context7 `docs/enterprise/openapi-enterprise.json` (the on-prem REST API shape, a possible contract for a self-built server).
- The exact body format returned by `query-docs` (a live call or the SDK `packages/sdk` types).
- Star counts for mcpdoc, git-mcp and deepwiki-open (blocked by the GitHub API refusal).
- mjmlocaldocs ("local knowledge base with MCP", dev.to), Hlibz.McpDocs.AspNetCore, cosmocoder/mcp-web-docs, GroundTruth-MCP, dodopayments/context-mcp.
- A Medium/dev.to "Context7 local-first alternative" and a "Top 7 MCP alternatives for Context7 in 2026" roundup.

## Looked for but not found

- **A public Context7 Enterprise or On-Premise price.** The docs say only "Custom" and "contact us" (#8, #10). Third-party pricing pages could not be fetched (DNS blocked).
- **An open-source Context7 backend (parser, crawler, API).** It is explicitly private (#1).
- **`topic` or `tokens` parameters or a `get-library-docs` tool** in current Context7 source. They are not present (#6).
- **A mature, maintained .NET/C# self-hosted docs MCP server** (one search, #26).
- **Repo metadata through the GitHub API.** Access was refused; dates were taken from git clone HEAD and release pages instead.
