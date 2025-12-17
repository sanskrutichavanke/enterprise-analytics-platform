select distinct
  customer_id,
  first_name,
  last_name,
  city,
  state,
  country,
  customer_segment
from {{ ref('stg_customers') }}
