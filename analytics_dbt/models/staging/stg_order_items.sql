select
  order_item_id,
  order_id,
  product_id,
  quantity,
  unit_price,
  quantity * unit_price as item_revenue
from ENTERPRISE_ANALYTICS.RAW.ORDER_ITEMS