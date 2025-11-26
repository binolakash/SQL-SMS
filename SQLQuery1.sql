select top 3
  id,
  score
from customers
order by score desc

select top 2 *
from orders
order by order_date desc

select 123 as static_number
select 'Hello' as statics_string

select 
  id,
  first_name,
  'New customer' as customer_type
from customers

select *
from customers
