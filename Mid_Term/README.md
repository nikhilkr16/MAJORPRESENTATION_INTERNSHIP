
# Mid-Term Internship — EV Retail Sales Funnel Analytics (Excel)

This README describes the **mid-term / Phase 1** work: analysis of a constrained, company-approved sales funnel dataset using **Microsoft Excel**.

## Overview

| Item | Detail |
|------|--------|
| **Focus** | Lead-to-delivery funnel for an **EV retail company** (Multi-Brand Centres in major Indian cities) |
| **Data** | Structured spreadsheet (`mid_term.xlsx` style), **~1,000 leads** |
| **Tools** | Microsoft Excel (pivot tables, formulas, charts) |
| **Period** | Typical coverage: **October–November 2025** (as used in the coursework report) |

## Business questions

- How do leads move through **Lead Generation → Pre-Booking → Booking → Delivery**?
- Where is **conversion leakage** largest (especially Pre-Booking)?
- What are **stage-wise turnaround times (TAT)** and total lead-to-delivery TAT?
- What drives **cancellations** (Pareto / reason mix)?
- What does **NPS** and rating behaviour say about post-purchase experience?
- How does performance vary **by store / city**?

## Method (high level)

1. **Inspect** fields, nulls (e.g. cancelled rows with empty stage dates), and Lead ID uniqueness  
2. **Compute KPIs** — funnel counts, conversion %, stage TAT, overall TAT, cancellation rate, NPS  
3. **Segment** — by store, lead type (Hot / Warm / Cold), cancellation reason  
4. **Visualise** — funnel bars, store comparison, cancellation Pareto, TAT breakdown  
5. **Diagnose** — link metrics to process causes (follow-up, financing communication, delivery SOP, inventory)

## Key findings (from report materials)

| Metric | Approx. value |
|--------|----------------|
| Overall conversion (delivered / leads) | **72.9%** |
| Cancellation rate | **27.1%** |
| Total average TAT (lead → delivery) | **10.6 days** |
| NPS | **−53.5** |
| Lead mix (Warm / Hot / Cold) | **51% / 30% / 19%** |

**Interpretation:** strong completion rate on paper with **very poor satisfaction (NPS)** and significant **operational and process** issues (pre-booking leakage, financing/model availability, delivery TAT).

## Deliverables

- Excel workbook with KPIs, pivots, and charts  
- Supporting narrative: `REPORT.pdf`, `Presentation.pdf` (as provided for the major report)  
- LaTeX/Markdown technical report sections under *Phase 1 / Results*

## Files you may attach in a repo

Keep **PII and confidential fields out of public repos**. Use only anonymised or employer-approved exports.

| Suggested name | Description |
|----------------|-------------|
| `data/mid_term_sample.xlsx` | Redacted / approved sample only |
| `docs/midterm/` | Screenshots or PDF exports of charts |
| `README_MIDTERM.md` | This file |

## Ethics & confidentiality

- Do **not** publish raw lead IDs, phone numbers, or store identifiers unless explicitly permitted.  
- Use generic labels: “EV retail company”, city-level aggregates only if allowed.

---

**Related:** Phase 2 (end-term) SQL + Power BI work is documented in [`README_ENDTERM.md`](README_ENDTERM.md).  
**Full story (both phases + figures):** [`README.md`](README.md).
