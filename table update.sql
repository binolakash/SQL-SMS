insert into persons (id,person_name,birth_date,phone)
select 
  id,
  first_name,
  null,
  'unknown'
from customers

select * from persons

--  update  --

update customers
set score = 0
where id = 6

update customers
set score = 0,
    country = 'UK'
where id = 10


