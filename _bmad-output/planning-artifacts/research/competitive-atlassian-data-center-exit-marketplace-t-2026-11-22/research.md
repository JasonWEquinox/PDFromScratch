---
title: 'competitive research: Atlassian Data Center exit tooling and mid-size marketplace add-on gaps'
type: 'competitive'
topic: 'Tooling for organisations leaving or stuck on Atlassian Data Center, plus Zendesk/monday marketplace gaps'
decision: 'Is there room for a 1-3 person marketplace add-on or tool around the Atlassian DC exit (or Zendesk/monday), and where exactly'
source: 'native run'
status: complete
preset: 'standard'
validation: 'normal'
created: '2026-11-22'
updated: '2026-11-22'
claims: {verified: 4, disputed: 0, unverified: 3, overturned: 0}
---

# Competitive research: Atlassian Data Center exit tooling

**Decision this research serves:** is there room for a 1–3 person add-on or tool around the Atlassian Data Center exit (or a Zendesk/monday gap), and where exactly?

> **Evidence limits:** the findings come from search snippets only. community.atlassian.com and news.ycombinator.com could not be reached from this session. The main real-user thread dates from Sep 2025, slightly outside the 12-month freshness window. Full detail is in `digests/landscape-r1-1.md` and `digests/customer-voice-r1-1.md`.

## Executive summary

**Verdict: the obvious spaces are taken. A few narrow wedges remain open, but they carry enterprise-sales risk or depend on a closing time window.**

- **Taken:** core migration (Atlassian's JCMA and FastShift tools are free), backup (crowded: Revyz has about 952 installs, Rewind raised prices), and exits to other platforms (GitLab, OpenProject and JetBrains are building their own importers for free).
- **Structural gap, verified:** JCMA does not move data that apps store in Active Objects tables. Moving it is the app vendor's job [1]. ScriptRunner Groovy scripts do not port to Cloud, so they need manual rewrites [2]. Atlassian stopped accepting new Data Center apps on the Marketplace on 16 Dec 2025 [3]. From 1 Oct 2026, partners keep 83% of Forge revenue (75% on Connect and DC), and 100% of Forge revenue up to $1M lifetime [4].
- **Ranked customer blockers** (by distinct voices, from snippets): missing or non-equivalent Cloud apps and scripts, with ScriptRunner most cited (≥5 voices); air-gapped and government requirements (≥4); higher costs, about 28% more on Cloud (≥2); broken trust and moves to alternatives (≥3).

**Biggest caveat:** the best-fitting wedge, a compliance archive, cannot be sold through the Marketplace and is bought by regulated organisations with long security reviews. That is the "heavy sales cycle" the hard filters warn about.

## Underserved spots, ranked

| # | Spot | Not small | Not crowded | 1–3 people |
|---|---|---|---|---|
| **1** | **"What JCMA didn't move" migration audit and parity report**: lists the ScriptRunner scripts, app data in Active Objects tables, and mail handlers left behind, with remediation hints. Sold as a Forge app (83% revenue share) or per migration | ✅ Migrations are paid projects | ⚠️ Medium; Adaptavist's own migration suite is the incumbent for ScriptRunner | ✅ for an analysis/report tool (a full converter is too big) |
| **2** | **Read-only compliance archive for Jira and Confluence after 2029**: export, then a searchable, tamper-evident archive that can be self-hosted | ✅ Compliance budgets | ✅ No purpose-built product found apart from demo-led OpsHub | ⚠️ Technically yes, but enterprise sales and security reviews; can't be sold on the Marketplace |
| 3 | Data-rescue migrators for specific DC-only apps | ⚠️ Narrow market per app | ✅ Per app | ✅, but needs a census of abandoned DC-only apps (not done) |
| ✗ | Cost calculators (fail "not small"), backup (crowded), exits to other platforms (vendors do it free), monday.com portfolio views (low revenue and likely crowded), Zendesk admin gaps (thin evidence) | — | — | — |

**Time window:** spots #1 and #3 earn mostly in 2026–2029, then fade. #2 *starts* earning around 2029.

## Recommendations

- Take **#1 (migration audit)** into the brainstorm as the Atlassian candidate, with **#2 (archive)** as its natural sequel after 2029. *Basis:* the structural gaps were verified, but crowding around ScriptRunner and demand volume are only snippet-level, so confidence is medium–low.
- Compared with the e-invoice gap, this one is **time-limited and enterprise-leaning**. Weigh it against the filters in the brainstorm.

## Open questions

- How many DC-only apps have no Cloud migration path, and which have the most installs? (Needs a Marketplace census.)
- Does Adaptavist's migration suite already produce a "what's left behind" report?
- Would regulated buyers purchase an archive from a 1–3 person vendor, and under what assurances?

## Sources

| # | Supports | Publisher | Pub date | Accessed | Confidence |
|---|---|---|---|---|---|
| 1 | JCMA leaves Active Objects app data to vendors | [Atlassian Support](https://support.atlassian.com/migration/docs/migrate-marketplace-app-data-separately/) | current | 2026-11-22 | high |
| 2 | ScriptRunner scripts don't port to Cloud | [Adaptavist docs](https://docs.adaptavist.com/sr4js/latest/scriptrunner-migration/scriptrunner-migration-to-cloud/platform-differences-between-scriptrunner-for-jira-serverdc-and-jira-cloud/) | current | 2026-11-22 | high |
| 3 | No new DC Marketplace apps from 16 Dec 2025 | [Atlassian](https://www.atlassian.com/enterprise/data-center/data-center-business-case-toolkit) | 2025 | 2026-11-22 | high |
| 4 | Marketplace revenue share from Oct 2026 | [Atlassian Developer FAQ](https://developer.atlassian.com/market/faqs/pricing-payment-billing) | current | 2026-11-22 | high |
| 5 | Landscape (JCMA, FastShift, Revyz, Rewind, OpsHub, alternative-platform importers) | landscape digest F1–F27 | 2025–26 | 2026-11-22 | medium |
| 6 | Customer blockers and voice counts | customer-voice digest (Atlassian Community thread from Sep 2025, admin blogs, press) | 2025–26 | 2026-11-22 | medium-low |
