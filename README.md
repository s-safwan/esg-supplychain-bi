# esg-supplychain-bi
# Supply Chain ESG Analytics Platform

## Project Overview
This Business Intelligence solution analyzes global supply chain logistics data to calculate carbon emission intensity, identify inefficient shipping networks, and support enterprise sustainability (ESG) reporting. It demonstrates a complete end-to-end data pipeline, from raw data transformation to executive dashboarding, focusing on actionable operational insights.

## The Business Problem
A global retail enterprise manages logistics across fragmented data sources, making it difficult to measure the true environmental impact of its supply chain. Initial reporting suffered from Volume Bias, where high volume regions appeared artificially inefficient due to raw total emissions. Stakeholders required a centralized, normalized dashboard to monitor average emission intensity per shipment to make accurate, data driven sustainability decisions.

## Project Objectives
* **Centralize logistics data** for comprehensive sustainability analysis.
* **Normalize emission metrics** by calculating the Average Estimated Emission Score per shipment to eliminate volume bias.
* **Identify operational bottlenecks** by isolating the most inefficient transport modes and top 10 highest-emitting cities.
* **Deliver an interactive executive dashboard** that allows stakeholders to filter data dynamically and monitor multi-year temporal trends.

## Tech Stack
* **Google BigQuery / SQL:** Data cleaning, aggregations, handling missing values, and metric standardization.
* **Tableau Public:** Advanced data visualization, continuous time-series forecasting, and parameter-based filtering.
* **Git / GitHub:** Version control and documentation.
* **Google Cloud Platform:** Sandbox environment for data warehousing.

## Project Workflow
1. **Raw Logistics Dataset** extraction.
2. **BigQuery** staging environment.
3. **SQL Data Cleaning & Transformation** (handling data anomalies and standardizing dates).
4. **ESG Analytics Table** generation.
5. **Tableau Dashboard** visualization.
6. **Business Insights & Recommendations** synthesis.

## Key Performance Indicators (KPIs)
* Global Total Estimated Emissions
* Total Shipments Processed
* Average Estimated Emission Score (Primary Efficiency Metric)
* Total Global Sales
* Average Emission Intensity by Shipping Mode
* Regional Average Emission Tracking
* Top 10 Highest Emission Cities (Filtered)

## Business Value Delivered
This solution enables decision-makers to:
* **Audit high-emission transport modes** (identifying that "Same Day" shipping is ~4x more carbon-intensive than "Standard Class").
* **Target regional interventions** directly at the highest emitting last mile delivery cities.
* **Support annual ESG reporting** with an auditable, visually accessible, and mathematically sound data structure.

## Repository Structure
```text
architecture/
dashboard/
data/
docs/
etl/
presentation/
sql/
README.md
LICENSE

## Dashboard Preview

![Dashboard](dashboard/images/dashboard.png)

## Author

Syed Safwan Hashmi