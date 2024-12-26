USE AdventureWorks2022
GO

SELECT 
    SalesTerritory.Name as Territory,
    MIN(TotalDue) as SmallestOrder,
    MAX(TotalDue) as LargestOrder,
    AVG(TotalDue) as AverageOrder
FROM 
    Sales.SalesOrderHeader
    JOIN Sales.SalesTerritory 
        ON SalesOrderHeader.TerritoryID = SalesTerritory.TerritoryID
GROUP BY 
    SalesTerritory.Name
ORDER BY 
    MAX(TotalDue) DESC;