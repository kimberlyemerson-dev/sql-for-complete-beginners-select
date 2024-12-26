USE AdventureWorks2022
GO

SELECT 
  p.ProductID,
  [ProductName] = p.Name,
  p.SafetyStockLevel,
  [Units] = SUM(sod.OrderQty),
  [UniqueBuyers] = COUNT(DISTINCT soh.CustomerID),
  p.ReorderPoint,
  p.StandardCost,
  [TotalRevenue] = SUM(sod.LineTotal)
FROM 
  Production.Product p
  JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
  JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE 
  p.FinishedGoodsFlag = 1
GROUP BY 
  p.ProductID, 
  p.Name, 
  p.SafetyStockLevel, 
  p.ReorderPoint, 
  p.StandardCost
HAVING 
  SUM(sod.OrderQty) > p.SafetyStockLevel
ORDER BY 
  Units DESC;