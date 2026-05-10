# End-Term Internship — Brazilian E-Commerce & Supply Chain Analytics (SQL + Power BI)

This README describes the **end-term / Phase 2** work: large relational e-commerce analytics using **MySQL** and **Microsoft Power BI**.

## Overview

| Item | Detail |
|------|--------|
| **Focus** | Marketplace **orders, revenue, customers, sellers, payments, reviews, logistics** |
| **Data** | ** ** (Olist), 9 tables, **100k+ orders** scale |
| **Tools** | **MySQL**, **Power BI**, **Git** for collaboration |
| **Repo (example)** | `Ritik2084/ecommerce-supplychain-analytics` |

## Analytical dimensions

Work is organised into **seven** query/analysis tracks:

1. **Orders & Revenue** — totals, trends, average order value  
2. **Customer metrics** — cities, repeat vs one-time buyers, order frequency  
3. **Products & categories** — volume/revenue concentration, slow movers  
4. **Sellers / vendors** — revenue, ratings, delivery speed tiers  
5. **Payments & transactions** — method mix (credit card, boleto, etc.), installments  
6. **Customer satisfaction** — review score distribution, low-rated products  
7. **Supply chain / operations** — order-to-delivery TAT, **late delivery rate**, geography

## Supply chain KPIs (core)

- **Order-to-delivery TAT** — `DATEDIFF` between purchase and delivered-to-customer timestamps  
- **Late delivery %** — delivered **after** estimated delivery date  
- **City / region** aggregates for last-mile and delay patterns  
- **Seller-level** logistics and rating joins  
- **Category velocity** (fast vs slow movers) for catalogue planning narrative

Example logic (conceptual): join `orders` → `customers`, `order_items`, `payments`, `reviews`, `products`, `product_category` as needed; filter `order_status = 'delivered'` for completed journeys.

## Key findings (from report materials)

| Theme | Insight |
|--------|---------|
| Retention | **~96%** of customers appear as **single-purchase** in the analytic slice — retention is structural risk |
| Delivery | Average delivery **~12–13 days**; geographic spread (e.g. north vs southeast) matters |
| Reviews | Concentration at **5★** but material **1★** tail — reputational risk |
| Payments | Heavy **credit card** share + **boleto** minority — product/payment UX implications |
| Sellers | **Pareto** revenue concentration; underperformers on revenue **and** rating |

## Deliverables

- MySQL scripts / `.sql` files (DDL + analytical queries)  
- Power BI **`.pbix`** (optional on GitHub; often shared via Drive / release asset due to size)  
- Exported **CSV/query outputs** small enough for samples only  
- This documentation + diagram screenshots in `/images` or `/docs/endterm`

## Repository layout (suggested)

```text
ecommerce-supplychain-analytics/
├── sql/
│   ├── ddl/
│   └── analytics/
├── powerbi/
│   └── README.md          # how to refresh data sources
├── data/                  # DO NOT commit full CSVs — use .gitignore
├── docs/
├── images/
├── README_ENDTERM.md
└── README.md
```

## Data & licensing

- Source: **Kaggle — Brazilian E-Commerce** (Olist).  
- Follow Kaggle/dataset **license** and citation in your report; do not claim ownership of raw data.

## Ethics

- Dataset is already public and anonymised; still avoid asserting real company policies as facts—frame as **insights on public sample data**.

---

**Related:** Phase 1 (Excel funnel) — [`README_MIDTERM.md`](README_MIDTERM.md).  
**Combined overview with visuals:** [`README.md`](README.md).
