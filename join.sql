select *
from customers
where score between 100 and 500

select *
from customers
where country in ('Germany','USA')

select *
from customers
where first_name like '%e%'

select *
from customers
where first_name like '__r%'

select *
from customers
inner join orders
on id = customer_id

select 
  customers.id,
  first_name,
  id,
  order_id,
  sales
from customers
inner join orders
on id = customer_id
