# Data Quality & ETL Checklist

To ensure data integrity for executive ESG reporting, the following transformations were executed during the BigQuery ETL phase:

- [x] **Primary Key Integrity:** Verified no duplicate `order_id` values exist to prevent double-counting of emissions.
- [x] **Null Value Handling:** Imputed missing transport modes using `IFNULL()` or `COALESCE()` logic to maintain dataset volume without skewing averages.
- [x] **Date Standardization:** Cast raw string dates to standard `DATE` formats (`YYYY-MM-DD`) using `PARSE_DATE()` to ensure accurate time series rendering in Tableau.
- [x] **Metric Normalization:** Created calculated fields to evaluate `estimated_emission_score` strictly as an **Average** rather than a **Sum**, eliminating volumetric bias in regional reporting.