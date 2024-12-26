USE AdventureWorks2022
GO

SELECT 
  [SalesPerson] = CONCAT(p.FirstName,' ',p.LastName),
  [TotalSales] = COUNT(soh.SalesOrderID),
  [TotalRevenue] = SUM(soh.SubTotal),
  [AverageOrderValue] = AVG(soh.SubTotal),
  [UniqueCustomers] = COUNT(DISTINCT soh.CustomerID),
  [RevenuePerCustomer] = SUM(soh.SubTotal) / COUNT(DISTINCT soh.CustomerID)
FROM 
  Sales.SalesOrderHeader soh
  JOIN Sales.SalesPerson sp ON soh.SalesPersonID = sp.BusinessEntityID
  JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID
WHERE
  YEAR(soh.OrderDate) = 2014
GROUP BY 
  p.FirstName, 
  p.LastName
ORDER BY
  TotalRevenue DESC;