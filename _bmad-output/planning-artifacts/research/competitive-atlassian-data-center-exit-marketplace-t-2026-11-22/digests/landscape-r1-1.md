# Landscape digest r1-1: Atlassian DC exit tooling (competitive and offers)

Run date: 2026-11-22. Method: 20 WebSearch calls (standard mode). No pages were fetched. All evidence comes from search-result snippets, so confidence is capped at **medium** unless an Atlassian first-party page repeats the claim. "n.d." means the snippet showed no publication date. Treat undated items as possibly older than the freshness windows (pricing/features 3 months or less, trajectory 6 months or less).

## Findings

| # | Claim | Source URL | Publisher | Pub date | Accessed | Confidence | Class |
|---|---|---|---|---|---|---|---|
| F1 | Jira Software, JSM and Confluence DC reach end of life on 28 Mar 2029 at 23:59 PST. DC subscriptions and their Marketplace apps expire then and become read-only. | https://www.atlassian.com/licensing/data-center-end-of-life | Atlassian | n.d. (live page) | 2026-11-22 | high | policy |
| F2 | Milestones: Atlassian stopped accepting new DC Marketplace app submissions on 16 Dec 2025. New-customer sales ended 30 Mar 2026. Existing customers can buy licences, apps and expansions until 30 Mar 2028. | https://www.atlassian.com/hu/licensing/data-center-end-of-life ; https://community.atlassian.com/forums/Data-Center-articles/Reminder-Upcoming-changes-to-Data-Center-products/ba-p/3210679 | Atlassian; Atlassian Community | n.d. | 2026-11-22 | high | policy |
| F3 | Bitbucket DC and Jira Align DC are excluded. Bitbucket gets a "Hybrid License" (DC plus Cloud), and Bitbucket DC apps stay on sale. Bamboo's status differs between localized pages. | https://www.atlassian.com/ascend ; https://www.atlassian.com/hu/licensing/data-center-end-of-life | Atlassian | n.d. | 2026-11-22 | medium (pages conflict on Bamboo) | policy |
| F4 | Atlassian says it is "committed to offering extended maintenance for certain Data Center customers by exception after March 28, 2029". | https://www.atlassian.com/licensing/data-center-end-of-life | Atlassian | n.d. | 2026-11-22 | medium | policy |
| F5 | FastShift is a free, high-touch migration programme for commercial-cloud customers with more than 1,000 seats. It targets 2–6 month migrations. It is not available for Isolated Cloud or Government Cloud. Smaller customers are sent to self-serve tools. | https://www.atlassian.com/migration/fastshift ; https://support.atlassian.com/migration/docs/what-is-fastshift/ | Atlassian | n.d. | 2026-11-22 | high | feature |
| F6 | JCMA is Atlassian's official DC→Cloud tool. App data moves only through a migration path the app's vendor builds. With no Cloud app or path, "you cannot migrate your app data to cloud for that app". | https://support.atlassian.com/migration/docs/assess-apps-with-the-jira-cloud-migration-assistant/ | Atlassian | n.d. | 2026-11-22 | high | feature |
| F7 | JCMA migrates issue-property data but not data held in Active Objects (AO) tables or the file system. Apps that store data there need their own route. | https://community.atlassian.com/t5/App-Central/Migrate-your-own-data-with-Jira-Cloud-Migration-Assistant/ba-p/1472678 | Atlassian Community (App Central) | n.d. (likely 2020, old) | 2026-11-22 | medium (old) | feature |
| F8 | In Atlassian's app-assessment data, on-prem apps that have a Cloud version were about 6x more likely to be marked "needed". Install rate in Cloud was 31% for apps without a migration path and 50% for apps with one. | https://community.developer.atlassian.com/t/why-are-migrating-customers-choosing-to-keep-some-apps-and-not-others-what-app-assessment-is-telling-us-so-far/47547 | Atlassian Developer Community | n.d. (likely 2021, old) | 2026-11-22 | medium (old, subset) | traction |
| F9 | Atlassian keeps a KB page of "Cloud alternatives" for DC/Server apps, which concedes that some partners will not build Cloud versions. | https://support.atlassian.com/atlassian-knowledge-base/kb/cloud-alternatives-to-your-atlassian-marketplace-data-center-server-apps/ ; https://www.atlassian.com/blog/it-teams/whats-next-after-server-apps | Atlassian | n.d. | 2026-11-22 | medium | trajectory |
| F10 | Marketplace revenue share, effective 1 Apr 2026: partners keep 84% on Forge, 80% on Connect, 75% on DC. From 1 Oct 2026: Forge 83%, Connect 75%, DC stays 75%. The increases were pushed back from 1 Jan 2026. | https://www.atlassian.com/blog/developer/extended-timelines-for-marketplace-revenue-share-changes ; https://developer.atlassian.com/market/faqs/pricing-payment-billing | Atlassian | 2025 (extension post); FAQ n.d. | 2026-11-22 | medium (snippet summary; check the FAQ) | policy |
| F11 | The original 2026 plan offered 0% revenue share on Forge earnings up to $1M lifetime. Developers questioned how long it would last and how it would be counted. | https://community.developer.atlassian.com/t/marketplace-revenue-share-updates-2026/91727 | Atlassian Developer Community | 2025 (older than 6 months) | 2026-11-22 | low-medium | policy |
| F12 | Atlassian Cloud list prices rise on 13 Oct 2026 PT for Jira, Confluence, JSM and the Collections. Third parties report about +8% on Jira and Confluence Enterprise and +10% on Service Collection Enterprise, within a 3–10% range overall. | https://www.atlassian.com/licensing/future-pricing/cloud ; https://www.adaptavist.com/blog/atlassian-price-updates-effective-october-2026 ; https://us.seibert.group/blog/atlassian-cloud-price-increase-2026 | Atlassian; Adaptavist; Seibert | 2026 | 2026-11-22 | medium (exact percentages are third-party) | pricing |
| F13 | Atlassian publishes no list price for Isolated Cloud or Government Cloud; both are custom-quoted. A third party estimates Isolated Cloud at +40–80% over Cloud Enterprise and AGC at +15–25%. | https://community.atlassian.com/forums/App-Central-articles/Atlassian-Commercial-Cloud-vs-AGC-vs-Isolated-Cloud-Comparison/ba-p/3269242 ; https://redresscompliance.com/atlassian-isolated-cloud-regulated-industries.html | Atlassian Community; Redress Compliance | n.d. (2026 likely) | 2026-11-22 | low (estimates) | pricing |
| F14 | Isolated Cloud is GA. Data residency there is pinned to the region where the instance was created and covers data in transit, not just data at rest as in Commercial Cloud. | https://support.atlassian.com/organization-administration/docs/data-residency-for-isolated-cloud/ ; https://community.atlassian.com/forums/discussion/3254829/atlassian-isolated-cloud-is-now-generally-available | Atlassian | n.d. (2026 likely) | 2026-11-22 | medium | feature |
| F15 | Atlassian's government page says FedRAMP High and IL5 environments are planned to be ready for authorization before EoL. | https://www.atlassian.com/hu/licensing/data-center-end-of-life ; https://www.atlassian.com/licensing/government-cloud | Atlassian | n.d. | 2026-11-22 | medium | trajectory |
| F16 | Revyz (backup and restore for Jira Cloud) is priced per user per month in Marketplace tiers. Its main listing shows 952 installs; the Bring Your Own Storage listing shows 23. | https://marketplace.atlassian.com/apps/1228694/ ; https://support.revyz.io/licensing/licenses-pricing | Atlassian Marketplace; Revyz | n.d. | 2026-11-22 | medium | traction / pricing |
| F17 | Rewind raised Jira and Confluence backup prices on 13 Jan 2026 for new customers and 14 Mar 2026 for existing ones. AWS Marketplace shows Jira Advanced for 100 users at $5,200/yr and Confluence Advanced at $3,900/yr. | https://help.rewind.com/hc/en-us/articles/45919877226907-Jira-and-Confluence-Price-Increase-FAQ ; https://aws.amazon.com/marketplace/pp/prodview-bvn65p5xwdj4u | Rewind; AWS Marketplace | 2026 | 2026-11-22 | medium | pricing |
| F18 | GitProtect's AWS listing shows $240 for Jira backup and $400 for Confluence backup per 100-user block. The snippet was garbled. | https://aws.amazon.com/marketplace/pp/prodview-lzdus6o3dy3ro | AWS Marketplace / GitProtect | n.d. | 2026-11-22 | low | pricing |
| F19 | OpsHub sells "Secure Archiving of Jira Data for Compliance": a read-only archive UI with audit export that runs outside Jira (on-prem, customer cloud or OpsHub cloud). It is demo-led and paid via the vendor, with no public price. | https://marketplace.atlassian.com/apps/650669298/secure-archiving-of-jira-data-for-compliance-and-scalability | Atlassian Marketplace / OpsHub | n.d. | 2026-11-22 | medium | feature |
| F20 | Archiver apps have small install bases. Issue Archiver & Attachment Housekeeper (DC, v7.1.0, May 2026) shows about 20 installs in one listing. APPsolute Archiver shows 9 installs and needs Jira Premium or Enterprise. | https://marketplace.atlassian.com/apps/1217514/issue-archiver-attachment-housekeeper-for-jira ; https://marketplace.atlassian.com/apps/1237825/appsolute-archiver | Atlassian Marketplace | May 2026 (v7.1.0) | 2026-11-22 | medium (install counts may be per hosting type) | traction |
| F21 | A 2026 Atlassian Community thread from an admin team describes researching a "DC Offline Archival posture" so audit obligations do not block a move to Cloud. This is demand evidence for read-only retention. | https://community.atlassian.com/forums/Data-Center-articles/The-Archive-vs-Migrate-Dilemma-How-Are-You-Handling-Your-Legacy/ba-p/3211564 | Atlassian Community | 2026 (thread id range) | 2026-11-22 | medium | traction |
| F22 | A government-professionals Community post says Jira and Confluence do not natively provide full records-lifecycle controls. | https://community.atlassian.com/forums/Government-Professionals/A-Practical-Guide-to-Records-Management-and-Document/ba-p/3157346 | Atlassian Community | n.d. (late 2025 likely) | 2026-11-22 | low-medium | traction |
| F23 | GitLab's native Jira importer brings over only title, description and labels; assignees and comments are not yet supported. GitLab also points to jira2lab, Unito and Getint. | https://docs.gitlab.com/user/project/import/jira_migration_options/ ; https://about.gitlab.com/blog/seamlessly-migrate-from-jira-to-gitlab-with-jira2lab-at-scale/ | GitLab | 2024–25 (older) | 2026-11-22 | medium | feature |
| F24 | OpenProject's Jira Migrator (beta) imports issues, history, comments and attachments from Jira DC 10.x and 11.x only. Workflows, permissions and schemes are "coming later". OpenProject markets itself as an "Atlassian Data Center alternative". | https://www.openproject.org/blog/jira-migration/ ; https://www.openproject.org/alternative-atlassian-jira-data-center/ | OpenProject | 2026 | 2026-11-22 | medium | feature / trajectory |
| F25 | JetBrains published a Jira+Confluence→YouTrack migration guide (Aug 2026) and a webinar (Sep 2026). The import includes users, groups and Tempo work logs, with a continuous-sync option. YouTrack Server remains supported. | https://blog.jetbrains.com/youtrack/2026/08/how-to-migrate-from-atlassian-jira-and-confluence-to-youtrack-expert-guide/ ; https://blog.jetbrains.com/youtrack/2026/09/migrating-from-atlassian-to-youtrack-webinar/ | JetBrains | Aug–Sep 2026 | 2026-11-22 | medium-high | trajectory |
| F26 | DC app vendors are publishing support statements rather than exits. Actonic will maintain its DC apps until Mar 2029 and says they will stop working after that. The Plugin People (JEMH), SolDevelo and Utoolity have published DC strategy statements. | https://actonic.de/en/?p=13083 ; https://thepluginpeople.atlassian.net/wiki/spaces/JEMH/blog/2025/09/09/5351047177 ; https://soldevelo.atlassian.net/wiki/spaces/QS/pages/6036258825/Important+Announcement+Data+Center+Strategy | Actonic; The Plugin People; SolDevelo | 2025 (older than 6 months) | 2026-11-22 | medium | trajectory |
| F27 | miniOrange sells a DLP data scanner and user cleanup tool for Jira and Confluence DC, positioned as pre-migration preparation. | https://www.miniorange.com/atlassian/migration-assistant-dlp-user-cleanup/ | miniOrange | n.d. | 2026-11-22 | medium | feature |

## Competitor map

| Name | Job | Price | Marketplace signal | Notes |
|---|---|---|---|---|
| Atlassian JCMA / CCMA | DC→Cloud core data migration | Free | Official; installs not captured | App data only through vendor-built paths. AO and file-system data not covered (F6, F7) |
| Atlassian FastShift | High-touch migration for more than 1,000 seats | Free | n/a | Commercial cloud only (F5). Takes large accounts away from partners and tool vendors |
| Atlassian Isolated Cloud / Government Cloud / data residency | Sovereignty / regulated hosting | Custom quote; third-party estimate +15–80% | n/a | No FastShift. Enterprise sales motion (F13–F15) |
| Revyz | Cloud backup / restore / config | Per user per month (tiered) | 952 installs (main listing) | Cloud-side commodity (F16) |
| Rewind | Cloud backup | About $5,200/yr per 100 Jira users (Advanced, AWS) | Not captured | Raised prices in 2026 (F17) |
| GitProtect | Cloud backup | About $240–400 per 100 users (low-confidence snippet) | Not captured | Price leader (F18) |
| OpsHub OAM | Compliance archive with read-only UI, external to Jira | Demo / quote, paid via vendor | No installs shown | Enterprise sales motion (F19) |
| Issue Archiver & Attachment Housekeeper | In-Jira DC archiving | Not captured | About 20 installs | Updated May 2026 (F20) |
| APPsolute Archiver | Cloud project archiving | Not captured | 9 installs | Needs Premium or Enterprise (F20) |
| Better Content Archiving (Confluence) | Confluence content lifecycle | Not captured | "popular" (Community claim) | Server, DC and Cloud |
| miniOrange DLP and User Cleanup | Pre-migration cleanup and PII scan | Not captured | Not captured | (F27) |
| GitLab importer / jira2lab | Jira→GitLab | Free / services | n/a | Low fidelity natively (F23) |
| OpenProject Jira Migrator | Jira DC→OpenProject | Free (beta) | n/a | DC 10/11 only; actively marketed (F24) |
| YouTrack import | Jira+Confluence→YouTrack | Free with YouTrack | n/a | Includes Tempo; heavy 2026 push (F25) |
| Unito / Getint / Exalate | Sync / staged migration | Not captured this run | Not captured | Named by GitLab docs (F23); not chased |

## Underserved spots

1. **Post-2029 read-only compliance archive viewer (Jira and Confluence DC export → standalone, searchable, tamper-evident archive).**
   - Evidence: DC goes read-only and unpatched (F1, F4). An admin team is asking for an "offline archival posture" (F21). Records lifecycle is missing natively (F22). The only purpose-built competitor found is demo-led OpsHub (F19), and in-Jira archivers have about 20 and 9 installs (F20) and die with DC.
   - Not small: plausibly yes. Regulated orgs (pharma, finance, government) pay for retention. The buyer may be a compliance budget rather than a per-seat budget.
   - Not crowded: yes, in this run's evidence.
   - Buildable by 1–3: yes technically, since it reads the DC DB/XML export and attachments and renders a static or self-hosted viewer. **Enterprise-sales risk is medium-high**: regulated buyers want security reviews and on-prem deployment. It also cannot be sold on the DC Marketplace after 16 Dec 2025 as a new app (F2), so distribution is outside the Marketplace.
   - Confidence: medium.
2. **Data-rescue migrators for specific DC-only apps whose data sits in AO tables (DC app → Cloud equivalent or native Cloud fields).**
   - Evidence: JCMA cannot move AO or file-system data (F7). There is no path without the vendor (F6). Apps without a path are installed in Cloud far less often (F8). Some vendors will not build Cloud versions (F9), and others say their DC apps stop working in 2029 (F26).
   - Not small: per-migration fees could be meaningful. Per-app total addressable market is narrow, though, and depends on choosing the right abandoned app. Which apps those are was not identified this run.
   - Not crowded: likely, per app.
   - Buildable: yes. Distribution is via Forge on the Cloud side, where partners keep 83% (F10), or as a service. Partner and solution-partner services compete here.
   - Confidence: low-medium (needs a census of DC-only apps).
3. **Mid-market (fewer than 1,000 seats) migration readiness and cost-comparison tooling.**
   - Evidence: FastShift covers only accounts with more than 1,000 seats; smaller ones go "self-serve" (F5). Cloud prices rose 3–10% in Oct 2026 (F12). Sovereignty tiers have opaque pricing (F13).
   - Not small: weak. Calculators are low willingness-to-pay and partly given away by Atlassian (the business case toolkit).
   - Not crowded: moderately crowded with partner calculators.
   - Buildable: yes.
   - **Fails the "not small" filter on current evidence.**
4. **Exit-to-non-Atlassian fidelity layer (comments, history, workflows, Confluence pages → GitLab, OpenProject, YouTrack).**
   - Evidence: GitLab's importer is low-fidelity (F23). OpenProject is beta with no workflows (F24). JetBrains is investing directly (F25).
   - Not crowded: no, platform vendors are filling it for free.
   - **Fails the "not crowded" filter over time.** A niche may survive for specific targets such as Confluence→X.
5. **Sovereignty-blocked DC holdouts: audit and evidence exports plus hardening/patch-gap monitoring for DC still running toward or past 2029.**
   - Evidence: FastShift excludes Isolated Cloud and AGC (F5). Isolated Cloud is custom-quoted at an estimated premium (F13). There is extended maintenance "by exception" (F4) and a Community warning about unpatched read-only DC.
   - Not small: per-customer value is plausibly high.
   - Buildable: yes.
   - **Enterprise-sales risk is high.** The segment's size is unmeasured this run.

## Leads not chased
- The full Atlassian KB list of "Cloud alternatives" for DC apps, and the "apps with migration paths" KB page, which could give a DC-only app census. Also any newer app-migration statistics from 2025–26.
- Marketplace install counts for Better Content Archiving, Rewind and GitProtect listings, and Unito, Getint and Exalate migration pricing.
- Whether any DC-only app vendors have been acquired or have announced abandonment (only "support until 2029" statements were found).
- The 0% Forge revenue share up to $1M lifetime: whether it is still live after the extension.
- The Seibert, Eficode and Adaptavist posts on cost; the Redress Government Cloud article.
- OpenText and other enterprise ALM targets: no search was spent on them.
- The Atlassian Developer Community thread "Solving the Data Fidelity in DC Archival" (t/99842), which appeared in a result list. An exact-title search failed. It is likely a vendor building DC archival, so a potential direct competitor.

## Looked for but not found
- A published Atlassian figure for how many or what percentage of Marketplace apps are DC-only with no Cloud equivalent. Only 2021-era assessment ratios were found (F8).
- Public list pricing for Isolated Cloud, Government Cloud or OpsHub archiving.
- Evidence of DC-only app vendors selling their apps or explicitly abandoning them in 2025–26.
- A Forge-only submission mandate for new Cloud apps. Revenue share favours Forge (F10), but no mandate was retrieved this run.
- Any third-party "post-2029 read-only Jira/Confluence viewer" product other than OpsHub OAM.
