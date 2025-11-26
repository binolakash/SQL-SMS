select
FirstName,
Lastname
from Sales.Customers
intersect
Select
FirstName,
LastName 
from Sales.Employees