SELECT 
customerid,
SEGMENT,
COUNTRY,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by 
customerid,
SEGMENT,
COUNTRY