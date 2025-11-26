select
  customerID,
  Score,
case 
  when Score >550 then 'High'
  when Score >450 then 'average'
  else 'low'
end
from Sales.Customers

select 
Category,
sum(sales) as TotalSales
from(
  select 
  orderID,
  sales,
  case
    when sales > 50 then 'High'
    when sales >20 then 'Medium'
    else 'Low'
  end Category
  from Sales.Orders
)t
group by category
order by TotalSales desc

select
EmployeeID,
FirstName,
LastName,
Gender,
case Gender
  when 'F' then 'Female'
  when 'M' then 'Male'
  else 'Not Available'
end GenderFullText
from Sales.Employees

select 
CustomerID,
LastName,
Score,
case
  when score is null then 0
  else Score
end ScoreClean,
avg(
  case
    when Score is null then 0
    else Score
  end) over() AvgCustomerClean,
avg(Score) over() AvgCustomer
from Sales.Customers

select
  customerID,
  sum(case
        when Sales > 30 then 1
        else 0
      end) TotalOrdersHighSales,
      count(*) TotalOrders
from Sales.Orders
group by CustomerID



