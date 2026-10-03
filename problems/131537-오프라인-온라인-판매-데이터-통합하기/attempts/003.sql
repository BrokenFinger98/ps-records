SELECT o.sales_date, o.product_id, o.user_id, o.sales_amount
FROM online_sale o 
WHERE o.sales_date >= '2022-03-01' and o.sales_date < '2022-04-01'
    
UNION ALL
    
SELECT f.sales_date, f.product_id, CAST(NULL AS SIGNED) as user_id, f.sales_amount
FROM offline_sale f
WHERE f.sales_date >= '2022-03-01' and f.sales_date < '2022-04-01'

ORDER BY sales_date, product_id, user_id
