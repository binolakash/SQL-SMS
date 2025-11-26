--left(value,length)--
--right(value,length)--

select
  first_name,
  left(first_name, 2) as first_2_char,
  right(first_name, 2) as last_2_char
from customers