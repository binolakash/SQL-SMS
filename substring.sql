--substring(value,start,length)--

select
  first_name,
  substring(first_name,3, 2) as sub
from customers

select
  first_name,
  substring(trim(first_name),2,len(first_name)) as sub
from customers


