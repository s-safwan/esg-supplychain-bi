# Data Requirements Matrix

| Business Requirement | Dashboard KPI | Required Data Fields |
| :--- | :--- | :--- |
| Measure total enterprise logistics volume | **Total Shipments** | `order_id` (Count) |
| Provide financial context to logistics scale | **Total Sales** | `sales` (Sum) |
| Establish a global ESG baseline | **Average Emission Score** | `estimated_emission_score` (Average) |
| Evaluate transport network efficiency | **Avg. Emission by Shipping Mode** | `shipping_mode`, `estimated_emission_score` |
| Isolate macro-geographic inefficiencies | **Avg. Emission by Region** | `order_region`, `estimated_emission_score` |
| Identify last-mile operational bottlenecks | **Top 10 Highest Emitting Cities** | `order_city`, `estimated_emission_score` (Filtered Top 10) |
| Monitor long-term sustainability progress | **Continuous Monthly Trend** | `order_date` (Month/Continuous), `estimated_emission_score` |