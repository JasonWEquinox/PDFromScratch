# User-voice digest, round 1, set 1: pains users voice themselves

Researcher dimension: pains users describe in their own words. Accessed 2026-11-22.

**Method limits (read first):**
- **No direct Reddit access.** WebSearch rejected `reddit.com` ("domains not accessible to our user agent"), so there is no evidence here from r/msp, r/accounting, r/smallbusiness or similar subreddits.
- **No page reads.** WebFetch could not reach any host it tried: hn.nuxt.dev, accountingweb.co.uk, forum.superops.com and hn.algolia.com. Each failed with ENOTFOUND, meaning the session's network allowlist does not include it.
- **What the evidence is.** All findings come from search-result snippets and summaries, not full threads. Each snippet stands for one voice only.
- **Dates.** Where a snippet carried no publication date, the date is marked "n/d". Before relying on an n/d claim, check it against the 18-month freshness window.
- **Vendor content.** Vendor blog content is marked as such. It counts as framing, not user voice.

## Findings

| # | Claim | Source | Publisher/community | Pub date | Accessed | Conf. | Class |
|---|---|---|---|---|---|---|---|
| F1 | **Shopify's sunset of its free Stocky app (purchase orders and reorder suggestions) left merchants without a replacement and pushed some back to spreadsheets.** Merchant quotes: "The PO feature in Shopify is brutally inadequate"; placing an order takes "more than triple the time". | https://community.shopify.com/t/stocky-sunset-complaint/614632 ; https://community.shopify.com/t/removing-stocky-is-a-material-retail-operations-risk/589102 ; https://community.shopify.com/t/637085 | Shopify Community (merchant forum), several separate threads | 2026 (shutdown described as 31 Aug 2026) | 2026-11-22 | high | sentiment, workaround |
| F2 | **A developer says Shopify's native tools do not match Stocky's features.** Missing items include bulk supplier management, some purchase-order fields, and cost prices to four decimal places, which causes rounding errors. A merchant relays, second-hand, that Shopify "confirmed those aren't coming in 2026". | https://community.shopify.dev/t/stocky-sunset-shopify-feature-parity/29199 | Shopify Developer Community (a separate developer forum) | 2026 | 2026-11-22 | medium | prevalence, workaround |
| F3 | **Merchants call the ERP-level replacements, at hundreds of dollars a month, "overkill" for small catalogs.** Their workaround is to export Shopify analytics to Google Sheets and add demand formulas. Several indie replacement apps launched on Product Hunt in response. | https://community.shopify.com/t/stocky-replacement/621332 ; https://www.producthunt.com/p/ezstock-inventory-purchase-orders/shopify-is-shutting-down-stocky-here-s-what-that-means-for-merchants | Shopify Community; Product Hunt (vendor-authored) | 2026 | 2026-11-22 | medium | spend, workaround |
| F4 | **Self-managing landlords with 20–50 units say their software leaves lender-grade accounting to them.** That means rent rolls with lease dates, and trailing-12 reports that keep deposits and escrow out of operating income. One poster: "most landlord software leaves the owner to build that by hand". The same poster says TurboTenant and RentRedi "don't produce owner statements or trust accounting at any price". | https://www.biggerpockets.com/posts/7336726 | BiggerPockets forum | 2026 | 2026-11-22 | medium (a single poster who is researching a tool, so possibly a builder's framing) | workaround, spend |
| F5 | **Landlords already pay for software and still keep spreadsheets alongside it.** One pays "$40 per month (irrespective of the unit count)" for management software but does the accounting in spreadsheets. Quoted prices: TurboTenant $199–$399 a year; Buildium Essential $702 a year (up to 20 units), $907 from unit 21. | https://www.biggerpockets.com/posts/7336726 ; https://www.biggerpockets.com/forums/899/topics/1262887-comparing-rental-property-tracking-systems-what-actually-works | BiggerPockets forum | 2025–2026 | 2026-11-22 | medium | spend |
| F6 | **Small landlords hesitate over long subscriptions when they need only "a small portion of what a larger platform provides".** A thread also asks whether small landlords are "building better tools than they're buying". | https://www.biggerpockets.com/posts/7279989 | BiggerPockets forum | n/d (post IDs near 2025–26) | 2026-11-22 | low | sentiment |
| F7 | **Chasing clients for documents is a long-running pain for accounting firms.** A Financial Cents survey of 132 firm owners ranked it the 2nd hardest part of leading a team. A separate survey found 47.9% of small firms still run workflow mainly on spreadsheets. | https://financial-cents.com/?p=3099 ; https://www.accountingtoday.com/news/spreadsheets-remain-dominant-despite-reservations-from-accounting-professionals-at-small-firms | Financial Cents (vendor survey); Accounting Today | survey 2023 (stale); AT n/d | 2026-11-22 | medium (vendor survey) | prevalence |
| F8 | **Accounting practitioners keep discussing client chasing and admin.** Thread titles include "How do you handle client chasing and admin" and "Is MTD just exposing our document chaos?" (MTD is the UK's Making Tax Digital, a regulatory trigger). Also in this cluster: an Intuit ProSeries community thread (Aug 2025) about client-document disputes, and a Skool post about a firm working "80-hour weeks because clients sent documents 2 weeks late". | https://www.accountingweb.co.uk/node/229479 ; https://www.accountingweb.co.uk/node/232108 ; https://accountants.intuit.com/community/proseries-product-discussions-9/tax-preparer-not-returning-documents-70263 ; https://www.skool.com/ai-automation-society/accounting-firm-worked-80-hour-weeks-because-clients-sent-documents-2-weeks-late?p=0221661c | AccountingWEB (UK practitioner forum); Intuit ProSeries community; Skool | 2025 (Intuit Aug 2025); others n/d | 2026-11-22 | medium | prevalence, sentiment |
| F9 | **Tracking contractors' certificates of insurance (COIs) in spreadsheets fails as the sheet goes stale.** A landlord says a vendor spreadsheet "works great for about a month, then nobody updates it". Insurance professionals say Excel "isn't particularly well suited" because there are no reminders. | https://www.biggerpockets.com/posts/7328789 ; https://www.insurancejournal.com/forums/viewtopic.php?p=7375 | BiggerPockets; Insurance Journal forum | BP 2025–26 (est.); IJ thread largely old | 2026-11-22 | medium | workaround |
| F10 | **For general contractors, a lapsed COI is a liability risk.** The argument: with a spreadsheet "you cannot prove you had a system in place". Vendor-leaning post. | https://dev.to/crawde/why-spreadsheets-are-the-1-compliance-risk-for-general-contractors-9 | DEV Community | n/d | 2026-11-22 | low | sentiment |
| F11 | **MSP quarterly business review (QBR) prep is manual: decks are assembled from RMM and PSA exports.** RMM and PSA are the MSP's remote-monitoring and ticketing/billing tools. One MSP lead spent "a full day preparing decks after four client meetings in a week". Clients push back on a spreadsheet sent hours before the meeting. | https://www.scalepad.com/partner-stories/how-alt-tech-boosted-client-engagement-and-saved-6-hours-with-revamped-qbr-reporting ; https://www.ninjaone.com/blog/deliver-qbrs-with-power-bi-and-rmm-exports/ | ScalePad, NinjaOne (vendors) | n/d | 2026-11-22 | low (vendor-sourced; no MSP forum voice retrieved) | workaround |
| F12 | **Lien waivers from subcontractors outside the payment platform ("manual subs") are still scanned, emailed and keyed in by hand,** even inside the Textura and Procore platforms. On Textura, a waiver's status does not update when it is uploaded. | https://docs.oracle.com/cd/E97085_01/English/workflow_guides/gc_lien_waiver_guide_na/index.html ; https://v2.support.procore.com/en-ca/product-manuals/procore-pay/tutorials/upload-signed-lien-waivers-for-subcontractor-invoices | Oracle and Procore docs (vendor documentation, not user voice) | n/d | 2026-11-22 | low | workaround |
| F13 | **Stated willingness to pay often does not convert, and price sensitivity is high for small tools.** In an r/MicroSaaS digest, a builder heard "I'd pay for this instantly" yet got 0 paying users. An HN commenter called $5/month "the worst spot". | https://communityinsights.pages.dev/reports/MicroSaaS ; https://hn.nuxt.dev/item/44019193 | Community Insights (r/MicroSaaS digest); HN mirror | Sep 2025 / 2025 | 2026-11-22 | medium | sentiment (method caution) |
| F14 | **Small businesses say they pay for tools that drive revenue, carry financial or legal liability, or that they use heavily every week.** A Product Hunt commenter would "rather pay for invoicing and payments tools and let someone else carry that liability". | https://www.producthunt.com/p/motionfy/solo-founders-what-s-the-one-tool-you-d-pay-way-more-for-than-what-it-costs | Product Hunt | n/d | 2026-11-22 | low | spend |
| F15 | **Generic "still manual" chores (copying data from several dashboards into a weekly spreadsheet, morning dashboard checks) recur in 2026 HN and Product Hunt threads.** They are horizontal and contested, not vertical. | https://hn.nuxt.dev/item/48045237 ; https://www.producthunt.com/p/general/what-s-one-task-you-still-do-manually-every-week-that-you-know-you-should-probably-automate | HN mirror; Product Hunt | 2026 | 2026-11-22 | low | workaround |

## Candidate gaps

### 1. Stocky-replacement purchase-order and reorder tool for small and mid-size Shopify merchants (strongest)
- **Job:** Generate supplier purchase orders from sales velocity and stock levels, then receive against them, with cost accuracy to four decimal places.
- **Who pays:** Shopify retail and POS merchants with roughly 500–20k SKUs. They are already used to paying for Shopify apps, and the alternative they cite is ERP-level tools at hundreds of dollars a month.
- **Communities:** 4+ separate Shopify Community merchant threads, the Shopify Developer forum, and Product Hunt (F1–F3).
- **Hard filters:**
  - Not small: medium. Revenue is roughly $30–150/month per store (estimated, unverified).
  - Not crowded: **risk**. Several indie apps are already launching, and Shopify could rebuild the feature. This is a land-grab window, not a moat.
  - Buildable: yes.

### 2. Lender- and owner-grade reporting add-on for self-managing landlords with 20–100 units
- **Job:** Produce a lender-ready rent roll, a trailing-12 report with deposits and escrow segregated, and owner statements, on top of the cheap property-management software (PMS) they already run (TurboTenant, RentRedi), or reconciled with QuickBooks.
- **Who pays:** Small multifamily owners who refinance or buy and therefore need lender packages. Evidence they already spend: $40–$907 a year on a PMS, plus spreadsheets (F4–F6).
- **Communities:** BiggerPockets only, across several threads. A **second community is still needed.**
- **Hard filters:**
  - Not small: medium.
  - Not crowded: the PMS category is crowded with free tiers, but the specific lender-report job appears unserved by low-end tools.
  - Buildable: yes.

### 3. Client-document collection for small accounting and tax firms, tied to a regulatory deadline
- **Job:** Ask for, chase and receive client documents automatically, against a checklist.
- **Who pays:** Firms with 1–20 staff.
- **Communities:** AccountingWEB (UK), Intuit ProSeries, Skool, and survey data (F7–F8).
- **Hard filters:**
  - Not small: yes.
  - Not crowded: **fails as a generic product.** TaxDome, Financial Cents, Content Snare, Soraban and Karbon already serve it.
  - Defensible only as a wedge that is jurisdiction- or regulation-specific, for example UK MTD for Income Tax quarterly-update collection for sole-trader and landlord clients. That wedge is unverified and needs Round 2.

### 4. Vendor and subcontractor COI tracking for small property managers and small general contractors
- **Job:** Collect COIs, track expiry dates, chase renewals, and keep a proof-of-diligence audit trail.
- **Who pays:** Small GCs and landlords who carry liability exposure (F9–F10).
- **Communities:** BiggerPockets, Insurance Journal forum, DEV Community.
- **Hard filters:**
  - Not small: medium.
  - Not crowded: **partly fails.** myCOI and TrustLayer exist, and enterprise tools exist. The opening is the low end that cannot justify those tools (unverified).
  - Buildable: yes.

### 5. Automated QBR deck builder for small MSPs (weak evidence)
- **Job:** Turn exports from RMM, PSA and security tools into a client-ready QBR deck.
- **Who pays:** MSPs with 2–20 staff.
- **Evidence:** Vendor-sourced only (F11). **No MSP-forum voice retrieved.**
- **Hard filters:**
  - Not small: yes.
  - Not crowded: **fails.** ScalePad, CloudRadial and IT Glue's myITprocess already cover it.
  - Treat as a lead only.

### 6. Lien-waiver and pay-application collection from "manual" lower-tier subcontractors
- **Job:** Get signed, and possibly notarized, waivers from subcontractors who will not log into Textura or Procore.
- **Who pays:** Small subcontractors and GCs not on Procore Pay (F12).
- **Evidence:** Vendor documentation only, which shows the manual seam exists. **No user voice retrieved.**
- **Hard filters:**
  - Not small: yes.
  - Not crowded: unclear; Levelset (Procore) occupies part of the space.
  - Buildable: yes. Notarization adds regulatory complexity.

## Leads not chased
- The UK MTD for Income Tax rollout (from April 2026), as a trigger for both landlord and accountant tooling. This is a regulatory forcing function and the best candidate for Round 2.
- The SuperOps forum post "Industry Watch: MSP Vendor Fatigue | Signals from Reddit" (could not be fetched).
- The Dawn Capital MSP market study (Mar 2025), on end-customer dissatisfaction with PE-backed MSPs.
- The "What do you wish existed? (October 2025)" Ask HN thread (could not be fetched).
- Other platform-sunset gaps of the Stocky kind (incumbent removes a free feature): worth a systematic search.
- 1–3★ reviews of category leaders (Buildium, TaxDome, Jobber) on G2 and Capterra: not retrieved this run.

## Looked for but not found
- Reddit threads from any subreddit: the domain was blocked for the search tool.
- r/msp or r/sysadmin voices on manual workflows: only vendor content surfaced.
- Independent, dated r/accounting evidence: only vendor blogs and AccountingWEB titles surfaced.
- Field-service and trades pain beyond "ServiceTitan is too expensive": the evidence was all vendor comparison pages. Jobber and Housecall Pro occupy the low end, so the category looks crowded.
- Any independent survey measuring how much time preparers lose to document chasing in 2025.
