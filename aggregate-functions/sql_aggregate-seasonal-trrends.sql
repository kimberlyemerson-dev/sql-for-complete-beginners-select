USE AdventureWorks2022
GO

SELECT 
  [CategoryName] = pc.Name,
  [Units] = SUM(sod.OrderQty),
  [TotalRevenue] = SUM(sod.LineTotal),
  [AverageUnitPrice] = SUM(sod.LineTotal) / SUM(sod.OrderQty)
FROM 
  Production.ProductCategory pc
  JOIN Production.ProductSubcategory ps 
    ON pc.ProductCategoryID = ps.ProductCategoryID
  JOIN Production.Product p 
    ON ps.ProductSubcategoryID = p.ProductSubcategoryID
  JOIN Sales.SalesOrderDetail sod 
    ON p.ProductID = sod.ProductID
GROUP BY 
  pc.Name, 
  ps.Name
ORDER BY 
  TotalRevenue DESC;