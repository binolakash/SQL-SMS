select
  c.id,
  c.first_name,
  o.order_id,
  o.sales
from orders as o
full join customers as c
on c.id = o.customer_id