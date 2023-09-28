-- order date should always be in the past (maximum today), it cannot be in the future
select order_date
from {{ ref('stg_orders') }}
where order_date > current_date()