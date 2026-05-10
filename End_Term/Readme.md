# End-Term  —  E-Commerce & Supply Chain Analytics (SQL + Power BI)

This README describes the **end-term / Phase 2** work: large relational e-commerce analytics using **MySQL** and **Microsoft Power BI**.

## Overview

| Item | Detail |
|------|--------|
| **Focus** | Marketplace **orders, revenue, customers, sellers, payments, reviews, logistics** |
| **Data** | **https://drive.google.com/drive/folders/1E_0vWRMRPzNJ44aSAROER-uB4vGu71Kg?usp=sharing** (Olist), 9 tables, **100k+ orders** scale |
| **Output** | **https://drive.google.com/drive/folders/16KuHTU4O1kb_XShs9i425ZVEy3JEXUrk?usp=sharing** |

| **Tools** | **MySQL**, **Power BI**, **Git**   |
 
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

**KPIs & Metrics Analyzed**
1. Sales Metrics

Total Orders, Revenue, Average Order Value

<img width="536" height="114" alt="image" src="https://github.com/user-attachments/assets/e738554a-2dd4-46af-8a7e-69b2ffa6b9ac" />


Top Cities by Orders


<img width="1200" height="600" alt="image" src="https://github.com/user-attachments/assets/28cca81f-021f-4e22-b0be-15dc4c4c25a3" />


2. Customer Metrics

Repeat vs New Customers


<img width="568" height="269" alt="image" src="https://github.com/user-attachments/assets/9510ea46-3f18-4a3f-a4c2-79352cf89310" />


Average Orders per Customer


<img width="280" height="106" alt="image" src="https://github.com/user-attachments/assets/458def9e-c866-4e5e-9d7c-a12f78c9b911" />

3. Product Metrics

Top-Selling Categories
<img width="1200" height="600" alt="image" src="https://github.com/user-attachments/assets/2eaab584-dae5-4c2e-9dec-5f5ed611b692" />


Revenue per Category


<img width="1200" height="600" alt="image" src="https://github.com/user-attachments/assets/5f19abc3-1842-43a3-aedc-40ead857c70a" />

Low-Selling Products


<img width="480" height="298" alt="image" src="https://github.com/user-attachments/assets/844f19d3-389b-409e-b5d4-87969a766d65" />

4. Seller & Vendor Metrics

Top Sellers by Revenue

<img width="1000" height="600" alt="image" src="https://github.com/user-attachments/assets/f226d0dd-6074-4eaf-9784-a21e5220637a" />

Average Delivery Time per Seller

<img width="601" height="375" alt="image" src="https://github.com/user-attachments/assets/04c63d66-3cef-41cc-9c89-54ac12e41c0c" />


Seller Ratings(Need improvement)


<img width="610" height="575" alt="image" src="https://github.com/user-attachments/assets/f0097786-4268-49ca-ad7a-147ab9aabe60" />


5. Payment Metrics

Most Used Payment Types


<img width="601" height="369" alt="image" src="https://github.com/user-attachments/assets/eb4052a0-412b-4492-a5e9-40e8732c09a0" />



Average Payment Value per Type


<img width="236" height="109" alt="image" src="https://github.com/user-attachments/assets/79edf594-da43-4356-a913-5f4084837f59" />




6. Customer Satisfaction


Review Score Distribution


<img width="336" height="125" alt="image" src="https://github.com/user-attachments/assets/32b761e2-94f0-43d1-9805-94a26f3ba4e6" />


Low-Rated Products & Categories


<img width="644" height="241" alt="image" src="https://github.com/user-attachments/assets/6ab027e7-02cb-4a20-96d0-c00f03cdb3e1" />


7. Operational Metrics

Average Delivery Time


<img width="262" height="92" alt="image" src="https://github.com/user-attachments/assets/9730ae0c-5aa2-4fe5-b6eb-3980a0a0452a" />


Delayed Orders %


<img width="323" height="117" alt="image" src="https://github.com/user-attachments/assets/1d20766b-53d2-4bbf-8b44-294f5d882012" />


Delivery Performance by Region


<img width="1200" height="720" alt="image" src="https://github.com/user-attachments/assets/d7ef1f99-ad06-4b97-bde3-32a158d0e5e8" />





---

**Related:** Phase 1 (Excel funnel) — [`README_MIDTERM.md`](README_MIDTERM.md).  
**Combined overview with visuals:** [`README.md`](README.md).
