# Landscape, offers and pricing — EU e-invoice tooling (round 1, digest 1)

Angle: landscape, offers, pricing. Run date 2026-11-22. 19 WebSearch calls (standard mode), no page fetches. Every claim below comes from search-result snippets or summaries only, so confidence is capped at "medium" even for vendors' own pages. "n.d." means the publication date was not visible. Pricing older than 3 months, or of unknown age, is flagged **[stale?]**.

## Findings

| # | Claim | Source URL | Publisher | Pub date | Accessed | Confidence | Class |
|---|---|---|---|---|---|---|---|
| F1 | Mustangproject (Java) main artifact `org.mustangproject` last released 2026-08-06, the validator on 2026-08-05 and Mustang-CLI on 2026-08-13. It covers writing, reading and validating Factur-X/ZUGFeRD, XRechnung and Order-X. | https://mvnrepository.com/artifact/org.mustangproject | MvnRepository | 2026-08 (release dates) | 2026-11-22 | medium | trajectory |
| F2 | A ZUGFeRD mailing-list post says Mustang is on track to validate invoices for the French e-invoicing reform. | https://groups.google.com/g/zugferd/c/pPINkAvrLzM | ZUGFeRD Google Group | n.d. | 2026-11-22 | low | trajectory |
| F3 | horstoeko/zugferd (PHP, needs php>=7.3) has reached about v1.0.124 (third-party tracker). Its README says the codebase is old, a successor is planned, and the current library gets only best-effort bugfixes and PR reviews. | https://github.com/horstoeko/zugferd ; https://newreleases.io/project/packagist/horstoeko/zugferd/release/v1.0.123 | GitHub / NewReleases | n.d. | 2026-11-22 | medium | trajectory |
| F4 | horstoeko/invoicesuite (php>=8.2) is a new extensible library to create, read and validate XRechnung, ZUGFeRD and Factur-X. Its wiki has a "Legacy Support for horstoeko/zugferd" page, so it is the likely successor (not confirmed). | https://packagist.org/packages/horstoeko/invoicesuite | Packagist | n.d. | 2026-11-22 | low-medium | trajectory |
| F5 | factur-x (Python, Akretion, BSD) generates Factur-X/Order-X PDFs from an existing PDF plus a compliant XML, extracts XML and checks it against XSD. The latest release, v6.5, has a changelog dated 2026-07-21. | https://pypi.org/project/factur-x/6.5/ | PyPI / Akretion | 2026-07-21 | 2026-11-22 | medium | feature, trajectory |
| F6 | ZUGFeRD-csharp (.NET, Stephan Stapel) is at NuGet 17.x (17.2.0 page seen). The author says no company is behind it and asks for sponsorship, especially for UBL read/write. One summary called it maintenance-only (unverified). | https://github.com/stephanstapel/ZUGFeRD-csharp ; https://www.nuget.org/packages/ZUGFeRD-csharp/17.2.0 | GitHub / NuGet | n.d. | 2026-11-22 | medium | trajectory |
| F7 | FactoorSharp.FacturX 21.0.0 is a commercial .NET library for creating, processing and validating Factur-X/ZUGFeRD and XRechnung. It may phone home to a licence server. No price was found. | https://www.nuget.org/packages/FactoorSharp.FacturX | NuGet | n.d. | 2026-11-22 | medium | feature |
| F8 | Node/JS has many young packages. @e-invoice-eu/core does EN16931 (Factur-X/ZUGFeRD, UBL, CII, XRechnung). @stackforge-eu/factur-x (EUPL-1.2) claims XRechnung, XSD validation, PDF/A-3b embedding and extraction. factur-x-kit 0.3.2 lacks the Extended and XRechnung profiles. node-zugferd is "under development" with no native XRechnung. | https://www.npmjs.com/package/@e-invoice-eu/core ; https://jsr.io/@stackforge-eu/factur-x@1.4.6 ; https://cdn.jsdelivr.net/npm/factur-x-kit@0.3.2/README.md ; https://npmjs.com/package/node-zugferd | npm / JSR | n.d. | 2026-11-22 | medium | feature |
| F9 | Go and Rust options are thin. dotwavehq/go-einvoice (v0.3.0) generates XRechnung 3.0 CII and ZUGFeRD PDF/A-3. speedata/einvoice is a work in progress (v0.0.20). Invopop's gobl.xinvoice requires a commercial licence and copyright assignment. The Rust crates `zugferd` (XML only) and `einvoice` 0.1.1 (CII/UBL parsing and validation) are both early. | https://pkg.go.dev/github.com/dotwavehq/go-einvoice ; https://pkg.go.dev/github.com/speedata/einvoice@v0.0.20 ; https://docs.rs/crate/einvoice/latest ; https://rust-digger.code-maven.com/crates/zugferd | pkg.go.dev / docs.rs | n.d. | 2026-11-22 | medium | feature, trajectory |
| F10 | The KoSIT validator is free and open source and runs on the command line. A third-party register checked on 2026-07-21 lists runtime bundle v2026-01-31. XRechnung bundle 3.0.2 is dated 2026-08-31. | https://kostenlose-erechnung.de/standards/ | kostenlose-erechnung.de | 2026-07-21 | 2026-11-22 | low-medium | trajectory |
| F11 | KoSIT released an XRechnung 4.0 pre-release aligned with EN 16931-1:2026 (UBL 2.5 / CII D25A). The final release is expected late 2026 to spring 2027, and 3.0 stays valid until at least 2027-07-31 (sources conflict). | https://www.vatupdate.com/2026/10/04/kosit-releases-xrechnung-4-0-pre-release-with-major-billing-updates/ | VATupdate | 2026-10-04 | 2026-11-22 | medium | trajectory |
| F12 | RechnungsAPI.de (Finbc GmbH) is a hosted API that generates ZUGFeRD and XRechnung, with a free tier and €9.99/month flat for up to 100 invoices. It has an official npm client, @rechnungs-api/client. | https://www.capterra.com/p/10037950/RechnungsAPI-de/ ; https://unpkg.com/@rechnungs-api/client@0.1.4/README.md | Capterra / npm | n.d. **[stale?]** | 2026-11-22 | low-medium | pricing |
| F13 | invoice-api.xhub offers XRechnung, ZUGFeRD and Peppol across 28 countries. It has a $0 free tier and paid self-serve tiers, plus free WooCommerce and Magento plugins that need a paid key. No rates were visible. | https://wordpress.org/plugins/invoice-api-xhub-for-woocommerce/ ; https://peerpush.net/p/invoice-apixhub | WordPress.org / PeerPush | n.d. | 2026-11-22 | low-medium | pricing, traction |
| F14 | Apify actors charge per document: an XRechnung/ZUGFeRD validator at $4 per 1,000 (only ACCEPTED/REJECTED results are billed) and a ZUGFeRD/Factur-X PDF-to-JSON extractor at $5 per 1,000. | https://apify.com/kamerozkan/xrechnung-xml-batch-validator-api ; https://apify.com/kamerozkan/zugferd-facturx-pdf-to-json | Apify | n.d. | 2026-11-22 | medium | pricing |
| F15 | Aloaha's ZUGFeRD/Factur-X SDK costs EUR 1,350 one-off (1 developer plus runtime for 10 users), and a runtime licence costs EUR 350 per end customer. It supports ZUGFeRD 2.5.2 and Factur-X 1.09.2. | https://aloaha.com/e-invoicing.html | Aloaha (vendor) | n.d. | 2026-11-22 | medium | pricing |
| F16 | The soft Xpansion PDF Xpansion SDK E-Invoicing Creation edition is listed from $5,803.73 (v18.x) and the Receipt edition from $3,224.29 (v17.x). One licence is needed per company location, runtime is royalty free, and v18.0.6 adds ZUGFeRD 2.5.2. | https://www.componentsource.com/product/pdf-xpansion-sdk-einvoicing-creation ; https://www.componentsource.com/news/2026/10/26/keep-e-invoice-processing-aligned-with-updated-standards | ComponentSource (reseller) | 2026-10-26 (news) | 2026-11-22 | medium | pricing, trajectory |
| F17 | Gillmeister Automatic X-Invoice Processor (Windows desktop) costs €319.95/year for 5 concurrent users, or €2,095 for a perpetual licence. | https://gillmeister-software.com/products/automatic-x-invoice-processor/order.aspx | Gillmeister (vendor) | n.d. | 2026-11-22 | medium | pricing |
| F18 | DevExpress Office File API documents generating ZUGFeRD invoices in its PDF Document API, and PDF Generator API offers JSON-to-XRechnung/UBL/CII/Factur-X endpoints. So general PDF/doc-gen vendors are bundling e-invoicing. | https://docs.devexpress.com/OfficeFileAPI/405944/pdf-document-api-new/zugferd-invoice ; https://support.pdfgeneratorapi.com/en/article/generating-compliant-e-invoices-ubl-cii-xrechnung-factur-x-1iilcmz/ | DevExpress / PDF Generator API | n.d. | 2026-11-22 | medium | feature |
| F19 | PDF Generator API lists an eInvoice API as a separate product. Third-party figures put plans from €80/year to €6,208/year (they conflict). | https://www.xpay.sh/saas-pricing/pdf-generator-api/ | xpay (aggregator) | n.d. **[stale?]** | 2026-11-22 | low | pricing |
| F20 | Invopop prices by usage ("Pops"). The free plan covers 50 documents/month, the Dev plan example is €43/month, and Dev/Pro start at €30+/month. A 2026-07-30 pricing change made registered parties consume Pops (about 100 per registration). | https://docs.invopop.com/get-started/pricing ; https://invopop.com/blog/new-pricing-2026 | Invopop (vendor) | 2026-07-30 | 2026-11-22 | medium | pricing |
| F21 | Storecove (Peppol AP API) uses per-transaction volume pricing, with "€495/mo" quoted by aggregators. Zoho resells it at €15 per 500 transactions (about €0.03 each). | https://slashdot.org/software/p/Storecove/ ; https://www.zoho.com/books/kb/e-invoicing/belgium/payments-through-storecove-peppol.html | Slashdot / Zoho | n.d. **[stale?]** | 2026-11-22 | low-medium | pricing |
| F22 | PDF-to-e-invoice conversion is offered as free web tools (pdf24 "PDF invoice to e-invoice"), Power Automate connectors (BILL Converter by Power2Apps), n8n workflows (one with 22 nodes, built by a user) and DIY two-step extract-then-generate pipelines. The TS lib @fin.cx/einvoice converts ZUGFeRD to XRechnung, and ConvertAPI converts ZUGFeRD/Factur-X to Peppol UBL. | https://tools.pdf24.org/en/pdf-to-e-invoice ; https://learn.microsoft.com/en-in/connectors/billconverterbypower/ ; https://community.n8n.io/t/turning-pdf-invoices-into-zugferd-xrechnung-a-22-node-workflow-and-the-7-mistakes-i-made/310891.md ; https://www.convertapi.com/blog/how-to-convert-zugferd-and-factur-x-to-peppol-bis-billing-3-0-ubl-xml | pdf24 / Microsoft / n8n / ConvertAPI | n.d. | 2026-11-22 | medium | feature, traction |
| F23 | SME apps: sevDesk "Rechnung" costs about €12.90/month and includes e-invoice sending. Lexware Office (formerly lexoffice) includes e-invoice sending only in its top tier (about €28–33/month). Figures come from affiliate comparisons and conflict. | https://kostenlose-erechnung.de/ratgeber/lexoffice-vs-sevdesk/ | kostenlose-erechnung.de (affiliate) | 2026 | 2026-11-22 | low | pricing |
| F24 | easybill publishes price lists that include e-invoicing (PDF dated 2025-04), and openapi.com sells a per-request "electronic invoicing Germany" API. | https://easybill.de/wp-content/uploads/2025/04/Preis-Leistungsverzeichnis_en.pdf ; https://openapi.com/products/electronic-invoicing-germany | easybill / Openapi | 2025-04 **[stale]** | 2026-11-22 | low | pricing |
| F25 | An SAP-partner e-invoicing add-on (Cortility) costs EUR 1,200/year for 100 invoices, plus a EUR 7,500 setup fee and a 2-year minimum. | https://www.sap.com/portugal/products/financial-management/partners/cortility-gmbh-einvoicing.html | SAP Store | n.d. | 2026-11-22 | low-medium | pricing |

## Competitor map

| Name | Type | Languages / formats | Price | Maintenance signal |
|---|---|---|---|---|
| Mustangproject | OSS lib + CLI + validator | Java; ZUGFeRD/Factur-X, XRechnung, Order-X, read/write/validate | Free (Apache) | Releases Aug 2026; FR-reform validation planned (F1, F2) |
| horstoeko/zugferd → invoicesuite | OSS lib | PHP; ZUGFeRD, Factur-X, XRechnung (+ UBL bridge pkg) | Free | Old lib on best-effort; successor needs php 8.2 (F3, F4) |
| factur-x (Akretion) | OSS lib | Python; Factur-X/Order-X PDF embed and extract, XSD check (no XML builder) | Free (BSD) | v6.5 in Jul 2026 (F5) |
| ZUGFeRD-csharp | OSS lib | .NET; ZUGFeRD/Factur-X/XRechnung CII, limited UBL | Free (sponsorware) | v17.x; solo maintainer, wants UBL funding (F6) |
| FactoorSharp | Commercial lib | .NET; Factur-X, XRechnung | n/f | v21.0.0 (F7) |
| @e-invoice-eu/core, @stackforge-eu/factur-x, node-zugferd, factur-x-kit, @fin.cx/einvoice | OSS libs | JS/TS; varying coverage | Free | Many young, fragmented packages (F8, F22) |
| go-einvoice, speedata/einvoice, gobl.xinvoice | OSS libs | Go; XRechnung CII, ZUGFeRD | Free / gobl commercial | v0.x (F9) |
| Rust `zugferd`, `einvoice` crates | OSS libs | Rust; XML generation / CII+UBL validation | Free | v0.1 (F9) |
| KoSIT validator | OSS validator | Java CLI; XRechnung (UBL/CII) Schematron | Free | Bundle 3.0.2 Aug 2026; 4.0 pre-release (F10, F11) |
| RechnungsAPI.de | Hosted API | REST + JS client; ZUGFeRD, XRechnung | Free tier; €9.99/mo for 100 docs | n/f (F12) |
| invoice-api.xhub | Hosted API | REST, Woo/Magento plugins; XRechnung, ZUGFeRD, Peppol (28 countries) | $0 tier + paid tiers (rates n/f) | Active plugin listings (F13) |
| Invopop | Hosted API (GOBL) | Multi-country incl. DE/FR/ES; Peppol | Free 50 docs/mo; Dev about €30–43/mo; re-priced Jul 2026 | Active (F20) |
| Storecove | Peppol AP API | Peppol BIS, multi-country | Per-tx volume; about €0.03/tx via Zoho resale | Active (F21) |
| PDF Generator API | Doc-gen API + eInvoice API | JSON → XRechnung/UBL/CII/Factur-X | €80–6,208/yr (conflicting) | Active (F18, F19) |
| DevExpress Office File API | PDF SDK | .NET; ZUGFeRD | Part of DevExpress licence (n/f) | Active (F18) |
| Aloaha SDK | SDK | Windows/.NET; ZUGFeRD 2.5.2, Factur-X 1.09.2 | €1,350 dev + €350/customer runtime | Updated to 2.5.2 (F15) |
| PDF Xpansion SDK (soft Xpansion) | SDK | C++/.NET; ZUGFeRD 2.5.2, XRechnung | From $5,804 (creation), $3,224 (receipt) | v18.0.6, Oct 2026 (F16) |
| Gillmeister X-Invoice Processor | Desktop app | Windows; receive/convert | €320/yr or €2,095 perpetual | n/f (F17) |
| Apify actors | Pay-per-use API | Validate / extract ZUGFeRD, XRechnung | $4–5 per 1,000 docs | n/f (F14) |
| pdf24, Power2Apps BILL Converter, n8n workflows, ConvertAPI | Conversion tools | PDF → e-invoice, ZUGFeRD → UBL | Free / connector plans | n/f (F22) |
| sevDesk, Lexware Office, easybill, DATEV | SME apps | Built-in XRechnung/ZUGFeRD | €9–33/mo | Mature (F23, F24) |
| Cortility (SAP) | ERP add-on | SAP S/4 | €1,200/yr + €7,500 setup | n/f (F25) |

## Underserved spots

1. **Commercially supported, current-spec library for PHP and .NET backends (the "Mustang-grade but with an SLA" gap).**
   - Evidence: the leading PHP lib is on best-effort maintenance with a rewrite needing PHP 8.2 (F3, F4). The leading .NET lib is a sponsorware solo project asking for money to add UBL (F6). The paid alternatives are pricey Windows-centric SDKs (€1.35k–$5.8k, F15, F16).
   - Filters:
     - Not small: medium. B2B licences of €500–2,000/year per customer are plausible against the SDK price points.
     - Not crowded: weak-to-medium. The free libs are "good enough" for many users, and you would be competing with free.
     - Buildable: yes for one language plus a validator wrapper.
   - The XRechnung 4.0 / EN 16931-1:2026 migration (F11) is a forcing event that solo maintainers may lag on.

2. **Hosted validation and conversion as a service, especially the KoSIT 4.0 transition and dual-version validation.**
   - Evidence: KoSIT is a free CLI only (F10). The only hosted per-doc validator found is a $4/1k Apify actor (F14). The 3.0 and 4.0 rule sets will coexist until at least mid-2027 (F11).
   - Filters:
     - Not small: weak. At $4/1k, per-document validation is commodity-priced.
     - Not crowded: medium. Few dedicated players were found.
     - Buildable: yes.
   - Likely only viable bundled with something stickier, such as an error-explanation / fix layer or inbound-invoice checking for AP teams.

3. **PDF to compliant e-invoice conversion for existing invoice output (legacy and vertical software that can only print PDFs).**
   - Evidence: today this is covered by a free pdf24 web tool, DIY n8n chains (one user needed 22 nodes and lists 7 mistakes), a Power Automate preview connector and two-call DIY pipelines (F22). The Gillmeister desktop tool sells for €320/yr to €2,095 (F17), which shows willingness to pay in the desktop/legacy segment.
   - Filters:
     - Not small: medium. Per-site licences are possible.
     - Not crowded: medium. Free tools exist but quality and validation are unclear.
     - Buildable: yes, if extraction is template- or LLM-assisted with mandatory validation. Accuracy liability is the risk.
   - Strongest lead for "legacy desktop / vertical software" that cannot be rewritten.

4. **Go / Rust / modern-runtime gap.**
   - Evidence: only v0.x or WIP libraries exist, and Invopop's gobl.xinvoice requires a commercial licence (F9).
   - Filters:
     - Not small: weak. Few buyers.
     - Not crowded: strong.
     - Buildable: yes.
   - Probably a niche: worth it only as an open-core funnel into an API, not as a standalone business.

5. **Plugin-led distribution into commerce/ERP platforms (WooCommerce, Magento, Shopware, vertical ERPs).**
   - Evidence: xhub uses free plugins as a funnel to paid API keys (F13). An SAP add-on charges €7.5k setup (F25), so mid-market ERP buyers pay heavily.
   - Filters:
     - Not small: medium-strong at the ERP end.
     - Not crowded: medium. The WooCommerce end is likely crowded (not verified this round).
     - Buildable: yes per platform.

6. **No-code users: low priority.** SME apps include e-invoicing at €9–33/month (F23) and free web tools exist (F22). The space looks crowded and small-ticket, so it fails the "not small" filter.

## Leads not chased

- Live pricing pages for invoice-api.xhub (console), RechnungsAPI.de, PDF Generator API eInvoice, FactoorSharp, DevExpress and Storecove (snippets only, no fetch).
- GitHub last-commit dates and issue backlogs for Mustang, ZUGFeRD-csharp, horstoeko/invoicesuite and @e-invoice-eu/core.
- Mustangserver / any commercial hosted Mustang offering (searched once, no hit).
- Shopware and Shopify e-invoice plugins and their pricing; DATEV's e-invoice add-on pricing.
- Big PDF SDKs (Apryse, iText, Syncfusion, Aspose) and whether they ship ZUGFeRD/XRechnung natively.
- Peppol access points focused on Germany (e.g., ecosio, Seeburger) and their developer API pricing.
- France 2026 reform tooling (PDP-adjacent APIs), which widens the Factur-X market.
- Inbound side: AP-automation vendors parsing XRechnung into human-readable form (visualizers).

## Looked for but not found

- Any published per-document price for a general ZUGFeRD *generation* API (only flat tiers and validation/extraction per-doc prices surfaced).
- Mustangserver pricing (no results).
- Official prices for invoice-api.xhub, FactoorSharp, DevExpress e-invoice and Storecove direct.
- An official KoSIT validator release note for 2026 (only third-party mention of bundle v2026-01-31).
- A maintained, feature-complete Rust library; a stable (v1+) Go library.
