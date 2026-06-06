# Enterprise Analytics Platform

End-to-end analytics engineering project transforming raw transactional 
data into business insights using production-grade tools.

## Architecture
Raw Data → Snowflake (RAW schema) → dbt (staging + star schema) → Power BI

## Data Model
- **Fact table:** `fact_order_items`
- **Dimensions:** `dim_customer`, `dim_product`
- **Data quality:** not-null, uniqueness, and referential integrity tests via dbt

## Dashboards
Revenue trends · Customer segments · Top products · KPIs (Total Revenue, 
Orders, AOV, Customers)

## Tech Stack
`Snowflake` `dbt` `SQL` `Power BI` `GitHub Actions`
