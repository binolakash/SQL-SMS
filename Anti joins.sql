--  left anti join --

select *
from customers as c
left join orders as o
on c.id = o.customer_id
where o.customer_id is null

--  right anti join  --

select *
from orders as o
right join customers as c
on c.id = o.customer_id
where c.id is null

--  full anti join  --

select *
from customers as c            --The order of tables does not matter
full join orders as o
on c.id = o.customer_id
where o.customer_id is null    
