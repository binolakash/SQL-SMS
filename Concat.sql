--concat--
select
first_name,
country,
concat(first_name,country) as name_country,
lower(first_name) as low_name,
upper(country) as upper_country,
trim()as trim
from customers
