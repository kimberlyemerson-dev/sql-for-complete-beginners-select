USE AdventureWorks2022
GO

SELECT
	[First Name] = p.FirstName,
	[Last Name] = p.LastName,
	[Department] = d.Name
FROM
	Person.Person p
	INNER JOIN HumanResources.EmployeeDepartmentHistory edh
		ON p.BusinessEntityID = edh.BusinessEntityID
	INNER JOIN HumanResources.Department d
		ON edh.DepartmentID = d.DepartmentID
WHERE
	d.Name = 'Sales'