--  ISNULL (Only replace when only if 1st one is null (For two values)) --

select 
isnull(ShipAddress,'n/a'),
isnull(BillAddress, 'n/a')
from Sales.Orders

--  COALESCE (For unlimited multiples) --

select
coalesce(shipaddress,billaddress,'n/a') --(If no any value in ship... then take value of bill... else n/a)
from Sales.Orders

--  Find the avg scores of the customers  --

select 
CustomerID,
score,
avg(score) over() AvgScores,
avg(coalesce(score,0)) over() AvgScores2
from Sales.Customers

select
CustomerID,
firstname,
lastname,
coalesce(lastname, ' ') lastname2,
firstname + ' ' +coalesce(lastname, ' ') as Fullname,
score,
coalesce(score,0) +10 as WithBonus
from Sales.Customers

--  sort the customers lowest to highest with nulls appearing first  --

select
CustomerID,
score,
case when score is null then 1 else 0 end flag
from Sales.Customers
order by case when score is null then 1 else 0 end,score

--  Find the sales price for each order by dividing sales by quantity  --

select
OrderID,
Sales,
Quantity,
Sales/nullif(Quantity,0) as Price
from Sales.Orders

--  Is null (return true or false)  --

--  Identify the customers who have no scores  --

select 
*
from Sales.Customers
where Score is null

--  Identify the customers who have scores  --

select 
*
from Sales.Customers
where Score is not null

--  Datalength  --

/*select 
ProductID, 
datalength(ShipDate) cat1,
datalength(trim (ShipDate)) cat2 
from Sales.Orders */


