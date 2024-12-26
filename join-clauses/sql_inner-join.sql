USE AdventureWorks2022
GO

SELECT 
	e.Department,
	e.FirstName,
	e.LastName,
	pp.PhoneNumber,
	[PhoneType] = pt.Name
FROM
	HumanResources.EmployeeList e
	INNER JOIN Person.PersonPhone pp
		ON e.BusinessEntityID = pp.BusinessEntityID
	INNER JOIN Person.PhoneNumberType pt 
		ON pp.PhoneNumberTypeID = pt.PhoneNumberTypeID
WHERE
	Department = 'Marketing';