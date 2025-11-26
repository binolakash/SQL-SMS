--  CONVERT(Anytype to anytype - only date and time )  --

select
convert(int, '123') as [String to int convert],
convert (date, '2025-08-20') as [String to date convert],
CreationTime,
convert (date, CreationTime) as [Datetime to date convert],
convert (varchar, CreationTime, 32) as [USA Std. Style:32],
convert (varchar, CreationTime,34) as [EURO Std. Style:34] 
from Sales.Orders

--  CAST(Anytype to Anytype)  -- 

select 
cast('123' as int) as [String to int],
cast(123 as varchar) as [int to String],
cast('2025-08-20' as date) as [String to Date],
cast('2025-08-20' as datetime) as [String to DateTime],
CreationTime
from Sales.Orders 

