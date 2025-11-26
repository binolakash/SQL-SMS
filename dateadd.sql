--  DATEADD(increase/decrease days)  --

select 
OrderID,
OrderDate,
dateadd(year, 5, OrderDate) as Twoyearslater,
dateadd( month, 5, OrderDate) as fivemonthslater
from Sales.Orders

--  DATEDIFF(no of days between 2 days)  --

select 
EmployeeID,
BirthDate,
datediff(year, BirthDate, GETDATE()) age,
datediff(day, BirthDate, GETDATE())ageindays
from Sales.Employees


--find the avg number of days for shipping for each month--

select
month(OrderDate) as orderdate,
avg(DATEDIFF(day, OrderDate, ShipDate)) Daysforship
from Sales.Orders
group by month(OrderDate)

--  LAG()  --

select
orderid,
orderdate currentorderdate,
lag(orderdate) over (order by orderdate) previousorderdate,
datediff(day,lag(orderdate) over (order by orderdate),orderdate ) betdays
from Sales.Orders 

--  ISDATE()  --

select
isdate('123') datecheck1,
isdate('2025-08-20')datecheck2

select
  orderdate,
  isdate(orderdate),
  case when isdate(orderdate) = 1 then cast(orderdate as date)
      else '9999-01-01' 
  end neworderdate
from
(
   select '2025-08-20' as orderdate union
   select '2025-08-21' union
   select '2025-08-23' union
   select '2025-08'
)t




