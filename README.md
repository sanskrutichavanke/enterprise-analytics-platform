# 📊 Enterprise Analytics Platform

## Overview
This project demonstrates an end-to-end analytics workflow, transforming raw transactional data into actionable business insights using modern analytics engineering tools.

## Architecture
- **Data Warehouse:** Snowflake  
- **Transformations & Modeling:** dbt  
- **Visualization & Reporting:** Power BI  

## Data Modeling
- Raw data ingested into a **RAW** schema
- dbt staging models standardize and clean source data
- Analytics layer built using a **star schema**:
  - Fact table: `fact_order_items`
  - Dimension tables: `dim_customer`, `dim_product`
- Data quality tests implemented:
  - Not null checks
  - Uniqueness constraints
  - Referential integrity tests

## Analytics & Reporting
The Power BI dashboard delivers:
- Revenue trend analysis
- Revenue by customer segment
- Top products by revenue
- Top customers by revenue
- Key KPIs (Total Revenue, Total Orders, AOV, Total Customers)

## Dashboard Preview
(See screenshots below)

## Tech Stack
- Snowflake
- dbt
- SQL
- Power BI

## Outcome
This project showcases real-world analytics engineering practices, including dimensional modeling, data validation, and business-focused reporting suitable for stakeholder decision-making.
