select USER_ID, product_id
from online_sale
group by USER_ID, product_id
having count(*) >= 2 
order by USER_ID, PRODUCT_ID desc
