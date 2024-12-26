USE AdventureWorks2022
GO

SELECT 
  ProductCategory,
  [UniqueCustomers] = COUNT(DISTINCT CustomerID),
  [TotalPurchases] = COUNT(*),
  [AveragePurchasePerCustomer] = COUNT(*) / COUNT(DISTINCT CustomerID)
FROM 
	Sales.CustomerOrders
GROUP BY 
	ProductCategory;