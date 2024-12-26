USE AdventureWorks2022
GO

SELECT 
	p.FirstName, 
	p.LastName, 
	e.JobTitle,
	e.HireDate
FROM 
	HumanResources.Employee AS e
  INNER JOIN Person.Person p
    ON e.BusinessEntityID = p.BusinessEntityID;