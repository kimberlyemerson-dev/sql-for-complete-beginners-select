USE AdventureWorks2022
GO

SELECT
	[First Name] = p.FirstName,
	[Last Name] = p.LastName,
	[Hire Date] = e.HireDate,
	[YearsOfEmployment] = DATEDIFF(year,e.HireDate,GETDATE()) 
FROM
	HumanResources.Employee e
	INNER JOIN Person.Person p
		ON e.BusinessEntityID = p.BusinessEntityID;