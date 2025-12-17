-- Top products by revenue
select
  p.product_name,
  sum(f.item_revenue) as revenue
from ENTERPRISE_ANALYTICS.ANALYTICS.fact_order_items f
join ENTERPRISE_ANALYTICS.ANALYTICS.dim_product p
  on f.product_id = p.product_id
group by 1
order by revenue desc;

-- Revenue by customer segment
select
  c.customer_segment,
  sum(f.item_revenue) as revenue
from ENTERPRISE_ANALYTICS.ANALYTICS.fact_order_items f
join ENTERPRISE_ANALYTICS.ANALYTICS.dim_customer c
  on f.customer_id = c.customer_id
group by 1
order by revenue desc;

-- Repeat customers
select
  customer_id,
  count(distinct order_id) as orders
from ENTERPRISE_ANALYTICS.ANALYTICS.fact_order_items
group by 1
having count(distinct order_id) > 1
order by orders desc;

-- Daily KPIs
select *
from ENTERPRISE_ANALYTICS.ANALYTICS.order_kpis
order by order_day desc;
