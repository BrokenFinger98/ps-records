select USER_ID, PRODUCT_ID
from online_sale
group by USER_ID, PRODUCT_ID
order by USER_ID, PRODUCT_ID desc
