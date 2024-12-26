USE AdventureWorks2022
GO

SELECT 
  p.FirstName,
  p.LastName,
  e.JobTitle,
  e.HireDate
FROM 
  HumanResources.Employee e
  RIGHT JOIN Person.Person p 
    ON e.BusinessEntityID = p.BusinessEntityID
ORDER BY 
  p.LastName, 
  p.FirstName;