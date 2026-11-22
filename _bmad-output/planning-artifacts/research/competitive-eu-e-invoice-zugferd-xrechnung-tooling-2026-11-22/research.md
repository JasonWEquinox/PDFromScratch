---
title: 'competitive research: EU e-invoice (ZUGFeRD/XRechnung/Factur-X) generation, validation and conversion tooling'
type: 'competitive'
topic: 'EU e-invoice (ZUGFeRD/XRechnung/Factur-X) generation, validation and conversion tooling'
decision: 'Is there room for a 1-3 person e-invoice API/library product, and where exactly'
source: 'native run'
status: complete
preset: 'standard'
validation: 'normal'
created: '2026-11-22'
updated: '2026-11-22'
claims: {verified: 3, disputed: 2, unverified: 1, overturned: 0}
---

# Competitive research: EU e-invoice tooling

**Decision this research serves:** is there room for a 1–3 person e-invoice API or library product, and where exactly?

> **Evidence limits:** the findings come from search snippets only, because page fetches were blocked in this session. The load-bearing claims were cross-checked against independent sources. Full detail is in `digests/landscape-r1-1.md` and `digests/buyer-voice-r1-1.md`.

## Executive summary

**Verdict: there is room, but not for a generic library or a cheap validator.** Those spaces are commodity. The opening is **B2B2B**: an embeddable EN 16931 / ZUGFeRD / XRechnung / Factur-X **generation and validation SDK or API for small vertical-software vendors**. Trade (Handwerk) software is the first target. Its edge would be **sector-specific mapping** that general-purpose engines lack, starting with construction invoices and partial or final invoices. It would be priced per vendor, which keeps revenue per customer high, while the vendors resell to thousands of end firms.

Three findings drive this:

1. **The pain is real and measured.** A ZDH survey of 1,926 trade businesses (Jan–Feb 2026) found that about two thirds have problems *receiving* e-invoices, which ZDH blames on software implementing EN 16931 incorrectly. Only about a third issue e-invoices [1].
2. **Official gaps make room for specialists.** The third BMF letter (15 Oct 2026) concedes that construction specifications cannot fit EN 16931's core data model, so they have to travel alongside the invoice, e.g. as a GAEB file [2]. XRechnung 4.0 is a breaking change: the pre-release came out on 15 Sep 2026, version 3.0 stays mandatory until at least 31 Jul 2027, and EN 16931-1 allows old and new versions to run in parallel until Mar 2029 [3]. That churn will run for years, and small maintainers will struggle to keep up.
3. **The free core is good but fragile.** Mustang (Java) and factur-x (Python) are healthy [4]. The leading PHP library is on best-effort fixes while its PHP ≥8.2 successor is built [5], and the leading .NET library is a solo project raising money for UBL support [4]. Paid SDKs cost €1.35k–$5.8k and are mostly Windows-centric. Hosted APIs are cheap: €9.99/month for 100 invoices, $4 per 1,000 validations, Invopop from €30/month [4].

**Biggest caveat:** going through vendors means a slower B2B sale, and accuracy carries liability. Validation against the official KoSIT rules has to be mandatory in the product.

## Competitor map (abridged)

| Segment | Players | Price | Read |
|---|---|---|---|
| Open-source libraries | Mustang (Java), factur-x (Python), horstoeko (PHP; successor invoicesuite), a .NET solo lib, Go/Rust v0.x | free | "Good enough" for skilled developers; maintenance is fragile outside Java and Python |
| Commercial SDKs | PDF and SDK vendors adding ZUGFeRD | €1.35k–$5.8k licence | Expensive and Windows-centric |
| Hosted APIs | Invopop, xhub (free plugins funnel to paid API), small per-document APIs, an Apify validator | €9.99–30+/month; $4 per 1k validations | Cheap per document, so pure validation is commodity |
| SME apps | lexoffice, sevDesk, DATEV, others | €9–33/month including e-invoicing | Commodity for end firms; not our buyer |
| PDF→e-invoice conversion | pdf24 (free web), do-it-yourself n8n and Power Automate chains | free / DIY | Fragile; quality unclear. *Correction:* the Gillmeister prices first cited here belong to its tool for reading incoming e-invoices, not to a PDF converter [6] |

## Underserved spots, ranked

| # | Spot | Not small | Not crowded | 1–3 people |
|---|---|---|---|---|
| **1** | **Embeddable EN 16931 SDK/API for small vertical-software vendors, with trade and construction mapping** (specification lines with a GAEB file alongside, partial, progress and final invoices, retentions) and XRechnung 3→4 version handling | ✅ Per-vendor licence or API | ⚠️ Moderately crowded generally; the sector-mapping layer looks open | ✅ |
| **2** | **One format layer across countries**: DE (XRechnung/ZUGFeRD) + FR (Factur-X) + BE (Peppol BIS) for vendors selling in several countries, without becoming a certified French platform or a Peppol access point | ✅ | ⚠️ Medium | ✅ (format only) |
| **3** | **"Fix and explain" checks on incoming invoices**: KoSIT result translated into "does this matter for tax?", plus detection of PDF and XML that disagree. Sold to software vendors and tax firms | ⚠️ Only works B2B2B | ⚠️ Free viewers and validators exist | ✅ |
| 4 | Converting legacy PDF output into compliant invoices | ⚠️ | ⚠️ Free tools; willingness to pay now unproven (see correction) | ✅, but carries accuracy liability |
| 5 | A paid, supported PHP or .NET library | ⚠️ Competes with free | ⚠️ | ✅ |
| ✗ | Archiving, freelancer apps, generic validators, Poland KSeF (a different, clearance-based model) | — | ❌ | — |

**How the spots fit together:** #1, #2 and #3 can be **one product**. A single engine generates, validates and explains, sold to vertical-software vendors. Construction and trades come first, and France and Belgium are reached through the same EN 16931 family.

## Recommendations

- Take **#1 (combined with #2 and #3)** into the brainstorm as the e-invoice candidate. It feeds the brief's problem, users and differentiation sections. *Basis:* the ZDH survey, the BMF letter and the XRechnung 4.0 change were all verified, but competitor depth in trade software is unverified, so confidence is medium.
- Before building, talk to 5–10 small trade-software vendors, and run a quick census of German trade-software vendors.

## Open questions

- How many small German trade-software vendors exist, and which have not yet shipped compliant output?
- Will German-language support and market access be a barrier for us? (Founder-fit question.)
- What liability and support burden comes with an accuracy guarantee?

## Sources

| # | Supports | Publisher | Pub date | Accessed | Confidence |
|---|---|---|---|---|---|
| 1 | Trade-business survey results | [ZDH](https://www.zdh.de/ueber-uns/fachbereich-steuern-und-finanzen/umsatzsteuer/umfrageergebnisse-e-rechnung/) | 2026-05-18 | 2026-11-22 | high |
| 2 | Third BMF letter on construction specifications | [BMF letter (ZDH-hosted PDF)](https://www.zdh.de/fileadmin/Oeffentlich/Steuern_und_Finanzen/Themen/E-Rechnung/20261015_BMF-Schreiben_E-Rechnung_final.pdf) | 2026-10-15 | 2026-11-22 | high |
| 3 | XRechnung 4.0 pre-release and transition | [cosinex citing KoSIT](https://blog.cosinex.de/2026/09/16/xrechnung-4-0-vorabversion-en-16931/) | 2026-09-16 | 2026-11-22 | high (timeline disputed in detail) |
| 4 | Library, SDK and API landscape and pricing | landscape digest F1–F25 (vendor and GitHub snippets) | 2026 | 2026-11-22 | medium |
| 5 | horstoeko maintenance mode | [GitHub horstoeko/zugferd](https://github.com/horstoeko/zugferd) | current | 2026-11-22 | high |
| 6 | Gillmeister pricing, corrected | [Gillmeister](https://gillmeister-software.com/products/automatic-x-invoice-processor/order.aspx) | current | 2026-11-22 | high |

**Staleness:** pricing claims need re-checking by 2027-02. The XRechnung 4.0 final release (expected spring 2027) should trigger a refresh.
