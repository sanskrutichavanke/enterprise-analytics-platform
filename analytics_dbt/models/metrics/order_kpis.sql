{{ config(materialized='table') }}

select
  cast(date_trunc('day', order_date) as date) as order_day,
  count(distinct order_id) as orders,
  count(distinct customer_id) as customers,
  sum(item_revenue) as gross_revenue,
  sum(quantity) as units_sold,
  round(sum(item_revenue) / nullif(count(distinct order_id), 0), 2) as avg_order_value,
  round(sum(item_revenue) / nullif(count(distinct customer_id), 0), 2) as revenue_per_customer
from {{ ref('fact_order_items') }}
group by 1
order by 1 desc
