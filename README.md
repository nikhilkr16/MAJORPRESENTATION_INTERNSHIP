# Data Science & Analytics — Mid-Term + End-Term (Excel → SQL → Power BI)

Unified documentation for **Phase 1 (mid-term)** and **Phase 2 (end-term)** of an AICTE-linked **Data Science & Analytics** internship (**INNOVATE BY HEXAIND**).

---

## At a glance

| Phase | When (typical) | Stack | Dataset scale | Core question |
|-------|----------------|-------|---------------|----------------|
| **Mid-term** | Early internship | **Excel** | ~**1,000** leads | Why does the **EV sales funnel** leak, and why is **NPS** so negative? |
| **End-term** | Later internship | **MySQL + Power BI** | **100k+** orders, 9 tables | How does a **Brazilian e-commerce** marketplace perform on **revenue, retention, sellers, payments, reviews, supply chain**? |

---

## Detailed docs

- **[README_MIDTERM.md](README_MIDTERM.md)** — EV funnel, Excel methodology, KPIs, confidentiality  
- **[README_ENDTERM.md](README_ENDTERM.md)** — SQL framework, Power BI, seven dimensions, supply chain queries  

---

## Phase 1 — Mid-term (EV retail, Excel)

**Funnel:** Lead Generation → Pre-Booking → Booking → Delivery  

**Sample KPIs (from analysis):**

| Metric | Value |
|--------|--------|
| Conversion (delivered / leads) | **72.9%** |
| Cancellation rate | **27.1%** |
| Avg TAT (lead → delivery) | **10.6 days** |
| NPS | **−53.5** |

### Figures

> **GitHub:** commit the PNGs under `images/` in this repo (same filenames as below) so the images render on the main README.

#### Lead-to-delivery funnel

![EV lead-to-delivery funnel](images/ev_funnel.png)

#### Store conversion vs NPS

![Store-wise conversion and NPS](images/ev_store_perf.png)

#### Cancellation reasons (Pareto)

![Cancellation Pareto](images/ev_cancellation_pareto.png)

#### NPS breakdown

![NPS breakdown](images/ev_nps.png)

#### Stage-wise TAT vs SLA target

![Stage-wise TAT](images/ev_tat.png)

---

## Phase 2 — End-term (Brazilian e-commerce, SQL + Power BI)

 
**Seven analytical dimensions:** Orders & Revenue · Customers · Products & Categories · Sellers · Payments · Satisfaction · **Supply Chain**

**Sample themes:** near **single-purchase** behaviour, **~12–13 day** delivery averages, **late delivery** share, payment mix, seller/review dispersion.

### Figures

#### Monthly orders & revenue trend

![Monthly trend](images/ecom_monthly_trend.png)

#### Customer purchase frequency

![Customer frequency](images/ecom_customer_freq.png)

#### Top categories by volume

![Top categories](images/ecom_top_categories.png)

#### Payment method mix

![Payment methods](images/ecom_payment_methods.png)

#### Review score distribution

![Review distribution](images/ecom_review_dist.png)

#### On-time vs late delivery

![Late delivery rate](images/ecom_late_delivery.png)

#### Delivery TAT by region (sample visual)

![Delivery TAT by region](images/ecom_delivery_tat.png)

#### Seller performance (revenue vs rating)

![Seller quadrant](images/ecom_seller_quadrant.png)

---

## Tech stack

`Microsoft Excel` · `MySQL` · `Microsoft Power BI` · `Git` / GitHub  

**Example repository:** [Ritik2084/ecommerce-supplychain-analytics](https://github.com/Ritik2084/ecommerce-supplychain-analytics)

---

## Local setup (end-term)

1. Install **MySQL 8.x** and create a database (e.g. `olist_project`).  
2. Load the nine Kaggle CSVs (see dataset page for schema).  
3. Run analytical SQL (see project `sql/` folder if present).  
4. Open Power BI → connect to MySQL or imported query exports → refresh.  

Do **not** commit full raw CSVs to Git if they are large; use **`.gitignore`** and document download steps.

---

## Regenerating charts (optional)

If this folder includes `generate_graphs.py` and `matplotlib`:

```bash
python generate_graphs.py
```

Outputs are written to `images/` for use in LaTeX or this README.

---

## Citation / references

- Olist Brazilian E-Commerce Dataset — Kaggle.  
- Course / internship report: see `Major_Project_Report_Nikhil_Kumar.md` or `.tex` in this workspace.

---

## License

- **README & code** you author: choose a license (e.g. MIT) on the GitHub repo.  
- **Kaggle dataset:** follow the dataset’s terms on Kaggle.  
- **Mid-term EV data:** not for public redistribution unless your employer approves.
