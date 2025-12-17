# Enterprise Analytics Platform

An end-to-end analytics engineering project demonstrating how raw business data can be transformed into a clean, analytics-ready star schema using modern data tools.

## Tech Stack
- **Cloud Storage:** AWS S3
- **Data Warehouse:** Snowflake
- **Transformation:** dbt
- **Version Control:** Git & GitHub

## Architecture Overview
1. Raw CSV files are ingested into Snowflake (RAW schema)
2. dbt staging models clean and standardize raw data
3. dbt marts models create a star schema for analytics
4. Final fact and dimension models support business reporting and analysis

## Data Model
### Fact Table
- **fact_order_items**
  - order_item_id
  - order_id
  - customer_id
  - product_id
  - order_date
  - quantity
  - unit_price
  - item_revenue

### Dimension Tables
- **dim_customer**
- **dim_product**

## dbt Model Layers
- **staging:** Source-aligned, lightly transformed models
- **marts:** Business-ready fact and dimension models

## Key Learnings
- Designing star schemas for analytics
- Using dbt refs for dependency management
- Building modular, production-style ELT pipelines
- Transforming raw data into analytics-ready models

## Future Improvements
- Incremental fact models
- dbt tests and documentation
- Streaming ingestion (Kafka/Kinesis)
- BI dashboard integration
