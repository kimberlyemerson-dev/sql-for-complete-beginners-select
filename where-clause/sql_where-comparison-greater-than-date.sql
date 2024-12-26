USE AdventureWorks2022
GO

SELECT
	Department
	FirstName,
	LastName,
	JobTitle,
	HireDate
FROM
	HumanResources.EmployeeList
WHERE
	HireDate > '2010-12-31';