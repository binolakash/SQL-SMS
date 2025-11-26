use SalesDB

select 
 OrderID,
 OrderDate,
 ShipDate,
 CreationTime
from Sales.Orders

select
  OrderID,
  CreationTime,
  '2025-08-20' HardCoded
from Sales.Orders

--  GETDATE()  --

select
  OrderID,
  CreationTime,
  '2025-08-20' HardCoded,
  getdate() Today
from Sales.Orders


select
  OrderID,
  CreationTime,
  '2025-08-20' HardCoded,
  getdate() Today,
  year(getdate()) Year,
  month(getdate()) Month,
  day(getdate()) Date
from Sales.Orders

--  DATEPART  --
--  DATENAME  --
--  DATETRUNC (Chnage the day of a month to the first day of that month) --
--  EOMONTH  (Chnage the day of a month to the last day of that month)--

select
  OrderID,
  creationTime,
  datetrunc(month, CreationTime) startofmonth,
  eomonth(CreationTime) endofmonth,
  datename(month, CreationTime) month_dn,
  datename(weekday, CreationTime) weekday_dn,
  datename(day, CreationTime) day_dn,
  datepart(year, CreationTime) year_dp,
  datetrunc(minute, CreationTime) trunc,
  datetrunc(second, CreationTime) trunc1,
  datepart(month, CreationTime) month_dp,
  datepart(day, CreationTime) day_dp,
  datepart(hour, CreationTime) hour_dp,
  datepart(quarter, CreationTime) quarter_dp,
  datepart(week, CreationTime) week_dp
from Sales.Orders

select
  datename(month, OrderDate) as OrderDate,
  count(*) nooforders
from Sales.Orders
group by datename(month,OrderDate)
