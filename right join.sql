select 
  c.id,
  c.first_name,
  o.sales,
  o.order_id
from orders as o
right join customers as c
on c.id = o.customer_id