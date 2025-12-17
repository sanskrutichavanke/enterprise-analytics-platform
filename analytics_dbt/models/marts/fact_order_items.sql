{{ 
  config(
    materialized='incremental',
    unique_key='order_item_id'
  ) 
}}

select
  oi.order_item_id,
  oi.order_id,
  o.customer_id,
  oi.product_id,
  o.order_date,
  oi.quantity,
  oi.unit_price,
  oi.item_revenue
from {{ ref('stg_order_items') }} oi
join {{ ref('stg_orders') }} o
  on oi.order_id = o.order_id

{% if is_incremental() %}
where oi.order_item_id > (select max(order_item_id) from {{ this }})
{% endif %}
