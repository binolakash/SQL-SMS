--  FORMAT(Anytype to only Stringv- date & time/numbers)  --

select
  OrderID,
  CreationTime,
format (CreationTime, 'MM-dd-yyyy') USA_Format,
format (CreationTime, 'dd-MM-yyyy') EURO_Format,
format (CreationTime,'dd') dd,
format (CreationTime,'ddd') ddd,
format (CreationTime,'dddd') dddd,
format(CreationTime, 'MM') MM,
format (CreationTime, 'MMM') MMM,
format (CreationTime, 'MMMM') MMMM,
'Day ' + format(CreationTime, 'ddd MMM') +
' Q' + DATENAME(quarter, CreationTime) + ' ' +
format(CreationTime, 'yyyy hh:mm:ss tt') as CustomFormat
from Sales.Orders