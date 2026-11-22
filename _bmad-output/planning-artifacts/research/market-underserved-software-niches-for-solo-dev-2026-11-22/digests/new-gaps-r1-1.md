# Digest: Newly created gaps (2025–2026), round 1

Dimension: demand created suddenly by regulation, platform changes and AI workflow shifts.
Run date: 2026-11-22. Method: 19 tool calls (18 WebSearch, standard mode, plus 1 tool load). Direct page fetches of `ec.europa.eu` and `entreprendre.service-public.gouv.fr` failed because those hosts are outside this session's allowed network. Evidence below comes from search-result snippets. Official domains were targeted with `allowed_domains` where possible. "pub_date n/d" means the snippet did not show a publication date.

## Findings

### E-invoicing mandates (regulatory)

- **Poland KSeF: from 1 Feb 2026, taxpayers with 2024 sales above PLN 200m must invoice through KSeF. From 1 Apr 2026 all other taxpayers must too, except those whose monthly invoiced sales are at most PLN 10,000. Those small firms may invoice outside KSeF until end-2026 and must join on 1 Jan 2027.** | https://ksef.podatki.gov.pl/etapy-wdrozenia-ksef/ ; https://ksef.podatki.gov.pl/informacje-ogolne-ksef-20/zakres-obowiazkowego-ksef/ | Ministerstwo Finansów (official) | pub_date n/d | accessed 2026-11-22 | high | regulatory
- **Poland KSeF: no financial penalties for KSeF errors in 2026. Penalties apply from 1 Jan 2027, and the same date requires the KSeF number or a batch identifier on B2B transfers.** | https://ksef.podatki.gov.pl/ksef-news/zasady-obowiazywania-ksef-i-przepisy-prawne/ ; https://www.gov.pl/web/finanse/drugi-etap-wdrozenia-krajowego-systemu-e-faktur | Ministerstwo Finansów (official) | pub_date n/d | accessed 2026-11-22 | high (penalty date). Thomson Reuters reports penalties postponed to 31 Dec 2027 (https://europe.thomsonreuters.com/se/compliance/regulatory-updates/poland), which is unconfirmed and conflicts with the official pages (low) | regulatory
- **France: every VAT-registered business must be able to receive e-invoices from 1 Sep 2026 and must have chosen a plateforme agréée (PA) by then. SMEs and micro-enterprises must issue e-invoices and file e-reporting by 1 Sep 2027.** | https://www.impots.gouv.fr/sites/default/files/media/1_metier/2_professionnel/EV/2_gestion/290_facturation_electronique/fiche-3_tpe_a-partir-de-quand-mon-entreprise-doit-etre-prete.pdf ; https://www.economie.gouv.fr/tout-savoir-sur-la-facturation-electronique-pour-les-entreprises | DGFiP / Ministère de l'Économie (official) | pub_date n/d (file version tag 2026) | accessed 2026-11-22 | high | regulatory
- **France: the 1 Sep 2026 go-live was confirmed and not postponed, including after a DGFiP cyberattack.** | https://vatcalc.com/france/france-rules-out-e-invoicing-delay-after-dgfip-cyberattack ; https://www.comarch.com/trade-and-services/data-management/legal-regulation-changes/france-confirms-september-2026-e-invoicing-go-live-and-publishes-start-up-guidance/ | VATCalc; Comarch (vendor) | 2026 | accessed 2026-11-22 | medium | regulatory
- **France: the DGFiP registers PAs for renewable 3-year terms, says free or low-cost offers exist for the simplest uses, and lets existing software keep working as a "solution compatible" connected to a PA. One snippet says about 150 PAs were registered by 1 Aug 2026, with more than ten offering free or low-cost plans.** | https://www.impots.gouv.fr/sites/default/files/media/1_metier/2_professionnel/EV/2_gestion/290_facturation_electronique/fiches_reforme/fiche-pdp.pdf ; https://entreprendre.service-public.gouv.fr/actualites/A18759?lang=en | DGFiP; Service-Public (official) | pub_date n/d | accessed 2026-11-22 | high (rules); medium (the ~150 PA count is snippet-level) | regulatory, pricing
- **Germany: issuing structured B2B e-invoices becomes mandatory on 1 Jan 2027 for firms with prior-year turnover above €800k, and for all firms on 1 Jan 2028 (transition rules run to 31 Dec 2027). Receiving has been mandatory since 1 Jan 2025. An updated BMF letter dated 15 Oct 2026 extends the advance-payment invoice rule to 30 Jun 2030. It also lets gross-price invoices carry only per-rate totals in the structured part until end-2027, because XRechnung and ZUGFeRD have no gross-invoice format yet.** | https://bundesfinanzministerium.de/Content/DE/Downloads/BMF_Schreiben/Steuerarten/Umsatzsteuer/Umsatzsteuer-Anwendungserlass/2026-10-15-obligatorische-elektronische-rechnung.pdf ; https://www.bundesfinanzministerium.de/Content/DE/FAQ/e-rechnung.html | Bundesministerium der Finanzen (official) | 2026-10-15 | accessed 2026-11-22 | high | regulatory
- **Belgium: domestic B2B e-invoicing over Peppol has been mandatory since 1 Jan 2026. The penalty grace period ended 31 Mar 2026, fines start at €1,500 (the escalation schedule is unconfirmed), and near-real-time VAT e-reporting is planned for 1 Jan 2028.** | https://www.comarch.com/trade-and-services/data-management/legal-regulation-changes/belgium-confirms-end-of-grace-period-for-b2b-e-invoicing/ ; https://edicomgroup.com/blog/belgium-will-make-b2b-electronic-invoice-mandatory ; https://www.loyensloeff.com/fr/insights/news--events/news/e-invoicing-in-belgium-as-from-1-january-2026-key-provisions-of-the-long-awaited-royal-decree/ | Comarch, Edicom (vendors); Loyens & Loeff (law firm) | 2025–2026 | accessed 2026-11-22 | medium (no FPS Finance page retrieved) | regulatory

### AI and privacy regulation (regulatory)

- **EU AI Act: the Digital Omnibus on AI was adopted as Regulation (EU) 2026/1744 and published in the OJ L series on 24 Jul 2026. High-risk obligations now apply from 2 Dec 2027 for Annex III stand-alone systems and 2 Aug 2028 for Annex I product-embedded systems.** | https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ%3AL_202601744 ; https://digital-strategy.ec.europa.eu/en/news/ai-omnibus-enters-force ; https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai | EUR-Lex; European Commission (official) | 2026-07-24 | accessed 2026-11-22 | high for the dates. The entry-into-force date conflicts: about 27 Jul 2026 per the Commission versus 16 Aug 2026 per the Committee of the Regions (low on which is right) | regulatory
- **Colorado: the original AI Act (SB 24-205) was delayed to 30 Jun 2026, then repealed and replaced on 14 May 2026 by the narrower, disclosure-focused ADMT Act (SB 26-189). The replacement takes effect 1 Jan 2027 if Attorney General rulemaking is finished. xAI sued on 9 Apr 2026, and that litigation status is unverified.** | https://www.davispolk.com/index%2ephp/insights/client-update/colorado-repeals-and-replaces-landmark-ai-act-publishes-draft-rules-public ; https://www.ropesgray.com/en/insights/alerts/2026/05/colorado-scales-back-ai-law-with-targeted-implications-for-health-care ; https://www.arnoldporter.com/en/perspectives/advisories/2026/07/colorado-narrows-its-ai-law-but-the-ftc-says-thats-not-enough | Davis Polk, Ropes & Gray, Arnold & Porter (law firms) | 2026-05 / 2026-07 | accessed 2026-11-22 | medium (no Colorado legislature page retrieved) | regulatory
- **California CCPA regulations covering risk assessments, cybersecurity audits and ADMT took effect 1 Jan 2026. ADMT compliance is due 1 Jan 2027. Risk assessments are required from 1 Jan 2026, with summary submissions due to CalPrivacy by 1 Apr 2028. First cybersecurity audits are phased over roughly 2–3+ years.** | https://cppa.ca.gov/regulations/ccpa_updates.html ; https://cppa.ca.gov/faq.html ; https://cppa.ca.gov/pdf/2025_annual_report.pdf | California Privacy Protection Agency (official) | 2025–2026 | accessed 2026-11-22 | high | regulatory

### Accessibility and payment security (regulatory, demand, pricing)

- **European Accessibility Act: as of mid-2026, no monetary fine under any national EAA law had been confirmed, and authorities favor compliance orders and warnings. AudioEye cites one Norwegian daily-fine case (NOK 50,000/day), which is unverified.** | https://www.levelaccess.com/blog/eaa-compliance-in-2026-how-enforcement-has-evolved-and-what-to-expect-next/ ; https://www.taylorwessing.com/en/insights-and-events/insights/2026/06/the-eaa-and-bfsg-recap-and-update ; https://abilitynet.org.uk/news-blogs/eaa-monitoring-story-so-far | Level Access (vendor), Taylor Wessing (law firm), AbilityNet (charity) | 2026-06 | accessed 2026-11-22 | medium | regulatory, demand
- **PCI DSS 4.0 requirements 6.4.3 (payment-page script inventory and authorization) and 11.6.1 (change and tamper detection) have been mandatory since 31 Mar 2025. Vendors include cside (from $99/mo), SecurityMetrics Shopping Cart Monitor, Feroot, Reflectiz, DomDog and Cloudflare. SAQ A merchants using iframes reportedly had 6.4.3 and 11.6.1 removed from their SAQ in Jan 2025, which shrinks the small-merchant market.** | https://cside.com/solutions/pci-shield ; https://www.securitymetrics.com/blog/solutions-for-small-businesses ; https://www.pcisecuritystandards.org/nacm_wednesday_track-2_12_6-4-3-and-11-6-1_now-what_jeff-zitomer_-jeff-man_final_approved_9-9/ | cside, SecurityMetrics (vendors); PCI SSC (official presentation, content not read) | 2025 | accessed 2026-11-22 | medium | regulatory, pricing

### Platform sunsets (event)

- **API sunsets in 2026: Google Content API for Shopping shut down 18 Aug 2026 (replaced by Merchant API). The OpenAI Assistants API shut down 26 Aug 2026 (replaced by Responses/Conversations). The Google Tenor API shut down 30 Jun 2026 with no replacement program. Todoist Sync v9 and REST v2 were retired, announced Dec 2025. Apple Ads Campaign Management API v5 shuts down 26 Jan 2027.** | https://agentdeals.dev/shutdowns ; https://ppc.land/sunset-api/ ; https://games.gg/news/google-tenor-gif-api-shutdown/ ; https://groups.google.com/a/doist.com/g/todoist-api/c/brwENjfT_tk | trackers and blogs; Doist (official group post) | 2025-12 to 2026 | accessed 2026-11-22 | medium (no provider deprecation pages retrieved, except Doist) | event

### AI workflow tooling (demand, pricing)

- **AI-search-visibility (AEO/GEO) tools are already a crowded category. G2 lists 95–134 products, with a buyer mix of 62% small business. HubSpot AEO is free or $45/mo, Peec AI $80/mo, and Semrush AI Visibility Toolkit $99/mo. Independent evidence that these tools lift revenue is described as limited.** | https://www.g2.com/categories/ai-search-visibility-optimization-tools?page=2 ; https://fitsmallbusiness.com/sales-marketing/before-buying-ai-visibility-tools/ | G2; Fit Small Business | 2026 | accessed 2026-11-22 | medium | demand, pricing
- **LLM cost monitoring is commoditized. Langfuse self-hosting is MIT-licensed and free, and cloud plans run from $29 to $199/mo plus add-ons. Helicone is about $25/mo for 100k requests (unconfirmed). Arize Phoenix is also free to self-host.** | https://langfuse.com/pricing ; https://dev.to/beton/langfuse-pricing-teardown-2026-2pi9 | Langfuse (vendor); DEV Community | 2026 | accessed 2026-11-22 | medium | pricing

## Candidate gaps

1. **KSeF compliance layer for Polish micro-firms and foreign VAT registrants. Penalties go live on 1 Jan 2027.**
   - Trigger: penalties from 1 Jan 2027; firms with monthly sales at most PLN 10k must join KSeF on 1 Jan 2027; the KSeF number becomes mandatory on B2B payment transfers on 1 Jan 2027.
   - Who pays: Polish micro and small firms, accountants (biura rachunkowe) and foreign companies registered for Polish VAT.
   - Possible products: (a) a payment-reconciliation tool that matches bank transfers to KSeF numbers; (b) an English-language KSeF client for foreign VAT registrants; (c) a connector to KSeF for vertical software.
   - Existing tooling: the government offers a free KSeF app and taxpayer tools (official site). Commercial ERPs and invoicing apps have added KSeF; their pricing was not retrieved.
   - Evidence: the KSeF findings above.
   - Hard filters:
     - Revenue per customer: likely low to medium for micro-firms, higher for accounting offices and foreign firms.
     - Crowding: the free government tool and local ERPs exist, but the bank-reconciliation and foreign-registrant angles look thinner (unverified).
     - Buildable by 1–3 people: yes, since KSeF is an open API and needs no certification. Language and market access are barriers.
   - Verdict: worth a deeper look, timing-sensitive.

2. **Germany B2B e-invoice issuance for vertical software and ZUGFeRD/XRechnung edge cases. Deadlines: 1 Jan 2027 (turnover above €800k) and 1 Jan 2028 (all firms).**
   - Trigger: the issuance mandate, plus a BMF letter of 15 Oct 2026 conceding format gaps (no gross-price invoice format; special rules for advance-payment invoices).
   - Who pays: German SMEs on legacy or vertical software (trades, medical practices, associations, agencies), and the vendors of that software.
   - Product: a validation, conversion and embedding API or library for EN 16931 output, and a fix-my-PDF-to-ZUGFeRD service.
   - Existing tooling: German accounting SaaS (lexoffice, sevDesk, DATEV) and open-source validators exist; pricing was not retrieved this run.
   - Evidence: the BMF findings above.
   - Hard filters:
     - Revenue per customer: medium (B2B API).
     - Crowding: medium; mainstream invoicing apps already issue e-invoices, so the gap sits in the long tail of vertical software.
     - Buildable by 1–3 people: yes, since Germany needs no certified platform.
   - Verdict: worth a deeper look.

3. **France "solution compatible" connectors and e-reporting for SMEs. Issuance and e-reporting deadline: 1 Sep 2027.**
   - Trigger: SMEs must issue e-invoices and e-report by 1 Sep 2027, and existing software stays usable only if it connects to a PA.
   - Who pays: vertical-software vendors serving French SMEs, and SMEs with B2C or cross-border flows that need e-reporting.
   - Existing tooling: about 150 PAs, of which more than ten are free or low-cost (snippet-level count), so basic issuance is commoditized.
   - Hard filters:
     - Crowding: crowded for plain issuance.
     - Buildable by 1–3 people: becoming a PA yourself is too heavy (registration process, renewal every 3 years). The connector and middleware angle avoids certification.
   - Verdict: lower priority unless a vertical is identified.

4. **CCPA ADMT notices and risk-assessment workflow for mid-size companies. ADMT is due 1 Jan 2027; risk-assessment summaries are due 1 Apr 2028.**
   - Trigger: final CPPA regulations, effective 1 Jan 2026. The Colorado ADMT Act, due 1 Jan 2027 if rulemaking completes, adds a second disclosure regime.
   - Who pays: California-covered businesses that use automated decision-making in hiring, lending, housing and similar decisions. This includes mid-size SaaS and HR-tech firms, and their privacy counsel.
   - Product: a guided risk-assessment builder, ADMT pre-use notice generator and evidence log.
   - Existing tooling: enterprise privacy platforms such as OneTrust. SMB pricing was not found this run.
   - Hard filters:
     - Revenue per customer: medium to high.
     - Crowding: possibly a mid-market gap below OneTrust-class tools (unverified).
     - Buildable by 1–3 people: yes, though legal liability needs care and counsel partnerships help.
   - Verdict: worth a deeper look.

5. **EU AI Act high-risk readiness for SME deployers. Deadline: 2 Dec 2027.**
   - Trigger: Regulation (EU) 2026/1744 fixed the dates but pushed them out 16+ months, which weakens urgency in 2027.
   - Who pays: SME providers and deployers in employment, education and credit, for example HR-tech startups selling CV screening.
   - Existing tooling: many AI-governance platforms (not priced this run).
   - Hard filters:
     - Crowding: likely crowded by vendors that pivoted from GDPR tooling.
     - Urgency: low until mid-2027.
   - Verdict: park; re-check in 2027 Q2.

6. **PCI DSS 6.4.3/11.6.1 payment-page script monitoring for mid-size e-commerce.**
   - Trigger: mandatory since 31 Mar 2025.
   - Who pays: merchants that host their own payment pages (SAQ A-EP and D) and their payment service providers.
   - Existing tooling: cside from $99/mo, SecurityMetrics, Feroot, Reflectiz, Cloudflare.
   - Hard filters:
     - Revenue per customer: medium.
     - Crowding: crowded, including a big-platform feature (Cloudflare). The SAQ A carve-out also shrank the small-merchant market.
     - Buildable by 1–3 people: yes.
   - Verdict: likely fails the crowding filter.

7. **API-sunset migration products (one-off).**
   - Trigger: shutdowns of Google Content API for Shopping, OpenAI Assistants, Tenor and Apple Ads API v5 (26 Jan 2027).
   - Hard filters:
     - Revenue per customer: low (one-time migration).
     - Defensibility: weak.
   - Verdict: fails "not small". The Apple Ads v5 sunset might support a small migration service but not a product.

8. **AEO/AI-search visibility and LLM cost monitoring.**
   - Verdict: both fail the crowding filter. AEO has 95–134 G2 products and HubSpot offers a free tier; LLM cost monitoring has free open-source options (Langfuse, Phoenix).

## Leads not chased

- EU ViDA (cross-border e-invoicing and digital reporting from 2030) and its national precursors: Croatia Fiskalizacija 2.0 (2026), Greece B2B e-invoicing (2026), Spain Verifactu and the B2B Crea y Crece rules. Spain is a strong next lead.
- Australia and New Zealand Peppol (government payment mandates) and Malaysia's phased MyInvois mandate (2025–2026).
- NIS2 national transposition (Germany's NIS2UmsuCG) creating supplier-security questionnaire demand among SMEs.
- CSRD/ESRS "Omnibus I" scope cuts and the VSME voluntary standard, which may create demand for lightweight ESG reporting from supply-chain requests.
- EU Data Act (applicable since Sep 2025; connected-product data access and cloud switching).
- US state privacy laws taking effect in 2026 (Indiana, Kentucky, Rhode Island, and others) and universal opt-out (GPC) enforcement.
- PCI SSC's January 2025 SAQ A change, which needs primary-source confirmation.
- AI-agent governance and audit-log demand (not searched this round).
- Belgian e-invoicing via FPS Finance's Hermes portal, and the access-point market's pricing.

## Looked for but not found

- Official Belgian FPS Finance penalty schedule (only vendor and law-firm sources were found).
- Pricing for Polish KSeF commercial tools, German long-tail e-invoice tools and French PA tiers (beyond the "free or low-cost exists" statement).
- Primary confirmation of Thomson Reuters' claim that KSeF penalties were pushed to end-2027. The official MF pages say 1 Jan 2027.
- A verified EAA monetary fine in an EU member state.
- Independent (non-vendor) demand data for AEO tools, such as adoption surveys.
- Current court status of xAI v. Colorado.
- Full-text reads of official pages: ec.europa.eu and service-public.gouv.fr fetches are blocked in this session, so all claims rest on search snippets.
