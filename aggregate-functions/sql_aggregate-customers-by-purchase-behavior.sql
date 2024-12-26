USE AdventureWorks2022
GO

SELECT 
  c.CustomerID,
  p.PersonType,
  [TotalOrders] = COUNT(soh.SalesOrderID),
  [TotalSpent] = SUM(soh.SubTotal),
  [AverageOrderValue] = AVG(soh.SubTotal),
  [LastOrderDate] = MAX(soh.OrderDate),
  [DaysSinceLastOrder] = DATEDIFF(day, MAX(soh.OrderDate), GETDATE())
FROM 
  Sales.Customer c
  JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
  JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
GROUP BY 
  c.CustomerID, 
  p.PersonType
HAVING 
  COUNT(soh.SalesOrderID) > 1
ORDER BY 
  TotalSpent DESC;