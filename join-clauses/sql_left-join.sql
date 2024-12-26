USE AdventureWorks2022
GO

SELECT 
	p.FirstName,
	p.LastName,
	e.JobTitle,
	e.HireDate
FROM
	Person.Person p
	LEFT JOIN HumanResources.Employee e
		ON p.BusinessEntityID = e.BusinessEntityID;