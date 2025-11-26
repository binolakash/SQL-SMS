use SalesDB

select 
FirstName,
LastName
from Sales.Customers
except
select 
FirstName,
LastName
from Sales.Employees