# Business Requirements Document (BRD)


## Project Name

Supply Chain ESG Analytics Platform

## 1. Executive Summary
The enterprise currently manages logistics operations across highly fragmented global data sources. This lack of centralization obscures the true environmental impact of our supply chain and creates "Volume Bias" in our reporting. This project will centralize logistics data and calculate accurate, per-shipment carbon intensity metrics to support strategic ESG (Environmental, Social, and Governance) reporting.

## 2. Key Stakeholders
* **Chief Sustainability Officer (Primary):** Requires auditable ESG data for annual corporate reporting.
* **VP of Global Logistics:** Needs visibility into inefficient carrier networks for contract renegotiation.
* **Supply Chain Operations Team:** Requires city-level granularity to identify daily last-mile bottlenecks.

## 3. Core Business Objectives
* **Eliminate Volume Bias:** Shift reporting focus from "Total Emissions" to "Average Emissions per Shipment."
* **Standardize Metrics:** Centralize raw operational data into a single source of truth via Google BigQuery.
* **Identify Inefficiencies:** Isolate the specific transport modes and geographic regions driving our highest carbon costs.
* **Enable Self-Service Analytics:** Deliver a Tableau dashboard that allows executives to filter temporal and geographic data without technical assistance.

## 4. Technical Success Criteria
* Raw logistics data successfully staged and transformed in BigQuery with zero data loss.
* Tableau dashboard successfully visualizes a continuous monthly timeline without breaking temporal continuity.
* Dashboard load times remain under 3 seconds when filtering Top 10 global cities.
---

## Project Deliverables

- Business Requirements Document
- SQL Transformation Scripts
- ESG Analytics Dataset
- Tableau Dashboard
- GitHub Repository