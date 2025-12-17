select distinct
  product_id,
  product_name,
  category,
  subcategory,
  unit_cost
from {{ ref('stg_products') }}
