SELECT 
O.ORDERID,
O.ORDERDATE,
O.SHIPDATE,
O.SHIPMODE,
O.ORDERSELLINGPRICE - O.ORDERCOSTPRICE AS ORDERPROFIT,
O.ORDERCOSTPRICE,
O.ORDERSELLINGPRICE,
c.customerid,
C.CUSTOMERNAME,
C.SEGMENT,
C.COUNTRY,
p.productid,
P.CATEGORY,
P.PRODUCTNAME,
P.SUBCATEGORY
FROM {{ ref('raw_orders') }} as o 
left join {{ ref('raw_customer') }} as c 
on o.customerid = c.customerid
left join {{ ref('raw_product') }}  as P 
on o.productid =  p.productid