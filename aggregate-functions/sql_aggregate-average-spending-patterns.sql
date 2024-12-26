USE AdventureWorks2022
GO

SELECT 
  ProductCategory,
  [AverageOrderValue] = AVG(OrderAmount)
FROM 
	Sales.CustomerOrders
GROUP BY 
	ProductCategory
HAVING 
	AVG(OrderAmount) > 50
ORDER BY 
	AverageOrderValue DESC;