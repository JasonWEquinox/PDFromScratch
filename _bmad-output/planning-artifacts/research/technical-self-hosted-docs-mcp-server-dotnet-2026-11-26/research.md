---
title: 'technical research: Self-hosted Context7-like documentation MCP server in .NET'
type: 'technical'
topic: 'Self-hosted Context7-like documentation MCP server in .NET'
decision: 'Adopt, extend or build a self-hosted docs MCP server (.NET), and how to host it'
source: 'native run'
status: complete
preset: 'standard'
validation: 'normal'
created: '2026-11-26'
updated: '2026-11-26'
claims: {verified: 4, disputed: 0, unverified: 3, overturned: 0}
---

# Technical research: a self-hosted Context7-like docs MCP server in .NET

**Decision this research serves:** whether to adopt, extend or build a self-hosted documentation MCP server (.NET/C#), and how to host it.

**Requirements:**
- Docs from public open-source libraries, from internal/private libraries (which must stay on our network), and from vendor-published "for AI" markdown such as WolverineFx's `llms-full.txt`.
- A shared team server is preferred.
- The stack is .NET/C#.

> **Evidence limits:** search snippets plus direct reads of GitHub, NuGet and npm. Doc sites (wolverinefx.io, llmstxt.org, context7.com), the MCP spec site and Azure pricing were blocked from this session. Full detail is in `digests/`.

## Executive summary

**Recommendation: extend, then decide whether to replace.** Run the open-source **arabold/docs-mcp-server** as the indexer and search engine, and put a **thin ASP.NET Core MCP facade** in front of it. The facade exposes the **Context7-compatible tools** (`resolve-library-id`, `query-docs`) and adds the .NET-specific pieces nobody else has. Host it as **one shared server on our internal network** with token or OIDC authentication. Grow toward a fully .NET-native engine only if the facade proves limiting. The likeliest trigger is .NET XML-doc/NuGet ingestion becoming central.

Three findings drive this:

1. **Context7 itself can't be self-hosted from open source.** The open-source repo is only the client-side MCP server; the backend, parser and crawler are private. Self-hosting means buying **Context7 Enterprise On-Premise**, which has no public price, so the ~US$45k quote can't be checked against published figures. On-Premise also needs an LLM/embedding provider, and with an online licence it contacts Context7's cloud. The hosted **Pro plan (~$10/seat/month plus $5 per 1M parsed private tokens)** is cheap, but **private docs then leave our network**, which fails a hard requirement [1][2].
2. **A strong open-source base exists.** arabold/docs-mcp-server is **MIT-licensed, v3.5.0, released 2026-11-22** (checked on npm) [3]. It indexes web pages, GitHub repos (private ones with a token), local folders and npm/PyPI packages, and detects `llms.txt`. It searches with SQLite full-text search, adding local embeddings (Ollama) only if wanted, so **no external API is needed**. It serves Streamable HTTP with OIDC from Docker [3]. Its gaps: it runs on Node, it has no NuGet/.NET API-reference source, and its tools (`search_docs`) aren't shaped like Context7's.
3. **.NET is ready for the facade or a build.** The official **MCP C# SDK is stable at 2.4.0** (checked on NuGet). It implements MCP spec 2026-07-28 and supports Streamable HTTP (stateless by default) and stdio. Auth is JWT bearer plus `AddMcp()` protected-resource metadata. Releases come every few weeks and occasionally break things [4]. For search, **plain full-text ranking (BM25) is hard to beat on code and docs**; mixing in vector search wins clearly only when a reranker is added [5].

**Biggest caveat:** the facade has not been built or tested. Mapping Context7's tool interface onto docs-mcp-server's tools is an inference, so a **one-day spike** should confirm it before we commit.

## Dimension 1: existing options and Context7's interface

| Option | Fit | Why |
|---|---|---|
| **arabold/docs-mcp-server** | **Strong** | Meets all three source needs, runs offline, shared HTTP + OIDC, MIT, active [3] |
| Context7 On-Premise | Strong but costly | Native interface; price unknown; needs an LLM provider; contacts the cloud on an online licence [1] |
| Context7 open-source MCP server | Interface reference only | A proxy to Context7's cloud API; not self-hostable for content [1] |
| langchain-ai/mcpdoc | Partial | Lets an agent read `llms.txt` files, but has no index and only SSE transport. A useful stop-gap for vendor docs [6] |
| GitMCP, deepwiki-open, smaller tools | Weak or adjacent | Tied to Cloudflare or to public GitHub only, generates wikis rather than serving docs, going stale, or unverified [6] |

**Context7's tools, which our server should match** (checked against the Context7 README) [2]:
- `resolve-library-id(query, libraryName)` returns a text list of candidates: Title, library ID `/org/project`, Description, Code Snippets, Source Reputation, and so on.
- `query-docs(libraryId, query, language?, version?)` returns a text block of docs. The current version has **no `topic` or `tokens` parameters**.

Older agent prompts and rules still call `get-library-docs(context7CompatibleLibraryID, topic, tokens)`, so registering that as an alias keeps existing rules working (an inference). Also worth copying: Context7's argument aliases (`query` also accepted as `userQuery` or `question`; `libraryId` also accepted as `libraryName`) and its rule of at most 3 calls per question.

## Dimension 2: doc sources and ingestion

- **WolverineFx (checked against its GitHub source):** the docs site uses `vitepress-plugin-llms` and links "LLM Friendly Docs" to `https://www.wolverinefx.io/llms-full.txt` [7]. Marten follows the same pattern [8]. Whether the live files exist, and how big they are, was not checked (the sites were blocked).
- **How common `llms.txt` is:** roughly **8–10% of top domains** publish one (studies from Sept 2026) [8]. Git repos and website crawling therefore stay essential alongside it.
- **.NET API docs:** DocFX doesn't produce `llms.txt`. Getting .NET XML doc comments in (from NuGet `*.xml` files or `docfx metadata`) needs a **custom adapter**, and none of the open-source options has one [8].
- **Recommended design inputs** [8]:
  - Source priority: `llms.txt` (prefer the per-page `.md` files it lists over one big `llms-full.txt`), then Git docs folders using Context7-style include/exclude config, then website crawling as a fallback, then the .NET XML-doc adapter.
  - Chunking: split by heading, keeping the heading path. Keep each code block whole and index it separately as a "snippet" with its language, so the `language` parameter can rank it.
  - Index per library and version, using Git tags or branches as versions.
  - Refresh on a schedule plus webhook/CI triggers, skipping unchanged content via its hash.
  - Private repos: tokens set explicitly in config. Fail loudly on 401/403 rather than falling back to anonymous access. Nobody offers GitLab or Azure DevOps adapters, so we'd write those.
  - Treat vendor-published "for AI" docs as **untrusted input** that could carry prompt injection.

## Dimension 3: .NET SDK, retrieval and hosting

| Hosting option | How agents connect | Private-docs safety | Ops effort | Cost |
|---|---|---|---|---|
| **Shared HTTP server** (container on Azure Container Apps with internal ingress, AKS, or on-prem) | Claude Code: `claude mcp add --transport http … --header`. Cursor and VS Code: `headers` or OAuth in config. Pick **one** auth mode per endpoint, because Cursor may ignore headers once OAuth discovery is advertised [4] | Good if ingress stays internal | Low: index once for everyone | A small container likely fits near Azure Container Apps' free grant if it scales to zero (unverified [4]); a database and storage add cost |
| Local stdio per developer (dotnet tool) | The client launches the process | Private docs copied to every laptop | High overall: each developer re-indexes, and indexes drift apart | $0 infrastructure |
| Both (one core, two hosts) | Shared by default; local for offline use or the developer's own repo | Shared server holds private docs | Medium | Shared cost plus $0 |

Retrieval: start with **SQLite FTS5/BM25** (in docs-mcp-server, or via `Microsoft.Data.Sqlite` if we build). Treat vectors as optional: `CommunityToolkit.VectorData.PgVector` is stable, SqliteVec is in preview, and the Semantic Kernel connectors are deprecated. Local ONNX embeddings are possible [5].

## Cross-dimension insights

1. **"Context7-compatible, self-hosted" is a gap nobody fills in open source.** Context7's backend is closed, and the best open-source engine has a different interface. A thin facade that speaks Context7's tool interface is the smallest piece of code that makes existing agent prompts and rules just work.
2. **The .NET-specific value is in ingestion, not in serving.** XML-doc/NuGet ingestion and GitLab/Azure DevOps adapters exist nowhere. That's where owning C# code pays off; crawling and chunking are already solved.
3. **The cost case holds without Context7's numbers.** The self-hosted path costs a small container plus some engineer time. Context7 Pro is cheap but sends private docs out of the network; On-Premise is the only Context7 option that meets the requirements, and its price isn't public.

## Recommendations

1. **Spike (1 day):** run docs-mcp-server in Docker and index WolverineFx `llms-full.txt`, one public GitHub repo and one private repo. Try its own tools from Claude Code. This sets the quality bar. *Feeds:* the PRD's success criteria.
2. **MVP (PRD scope):** an ASP.NET Core facade on MCP C# SDK 2.4.x exposing `resolve-library-id`, `query-docs` and a legacy `get-library-docs` alias, plus a source registry (an `llms.txt` URL, a Git repo or a local folder). Backed by docs-mcp-server, hosted as a shared internal server with bearer/OIDC auth. *Feeds:* PRD and architecture. Confidence medium; the facade is untested.
3. **Phase 2:** the .NET XML-doc/NuGet adapter, then GitLab/Azure DevOps adapters. If those need to live in the engine itself, revisit **building a native .NET engine** (SQLite FTS5) with docs-mcp-server as the benchmark.
4. **Ask Context7 for a written On-Premise quote** at our scale, to anchor the ROI case in the brief.

## Open questions

- Will docs-mcp-server's `list_libraries`, `find_version` and `search_docs` map cleanly onto Context7's tools? The spike answers this.
- What scale do we need: how many developers, libraries and private repos? This drives cost and the choice between SQLite and Postgres.
- Which Git host do the private repos live on: GitHub, GitLab or Azure DevOps?
- Is running a Node container inside our .NET estate acceptable (ops and security policy)?

## Sources

| # | Supports | Publisher | Pub date | Accessed | Confidence |
|---|---|---|---|---|---|
| 1 | Context7 OSS scope, On-Premise, Pro pricing | [upstash/context7 (GitHub)](https://github.com/upstash/context7); Context7 pricing/docs (via the options digest) | 2026-11 | 2026-11-26 | medium-high |
| 2 | Context7 tool names `resolve-library-id` and `query-docs` (checked) | [Context7 README](https://raw.githubusercontent.com/upstash/context7/master/README.md) | 2026-11-26 | 2026-11-26 | high |
| 3 | docs-mcp-server v3.5.0, MIT (checked on npm); features | [npm @arabold/docs-mcp-server](https://www.npmjs.com/package/@arabold/docs-mcp-server); [GitHub](https://github.com/arabold/docs-mcp-server) | 2026-11-22 | 2026-11-26 | high |
| 4 | MCP C# SDK 2.4.0 (checked on NuGet); transports, auth, client connection | [NuGet ModelContextProtocol](https://www.nuget.org/packages/ModelContextProtocol); [modelcontextprotocol/csharp-sdk](https://github.com/modelcontextprotocol/csharp-sdk); .NET hosting digest | 2026-11-07 | 2026-11-26 | high (version) / medium (details) |
| 5 | BM25 vs hybrid search; .NET vector packages | .NET hosting digest (several sources) | 2025–26 | 2026-11-26 | medium |
| 6 | mcpdoc, GitMCP, deepwiki-open | options digest (GitHub snippets) | 2026 | 2026-11-26 | medium-low |
| 7 | WolverineFx `vitepress-plugin-llms` and the `llms-full.txt` link (checked) | [JasperFx/wolverine docs config](https://raw.githubusercontent.com/JasperFx/wolverine/main/docs/.vitepress/config.mts) | current | 2026-11-26 | high |
| 8 | `llms.txt` adoption, DocFX gap, ingestion practice, Marten | sources digest | 2026 | 2026-11-26 | medium |

**Staleness:** the MCP C# SDK releases every few weeks, so re-check the version and breaking changes by **2027-02**. Recheck docs-mcp-server's release cadence by the same date.
