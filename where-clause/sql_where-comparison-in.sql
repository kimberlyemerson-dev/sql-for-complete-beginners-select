USE AdventureWorks2022
GO

SELECT
	Department,
	FirstName,
	LastName,
	JobTitle,
	HireDate
FROM
	HumanResources.EmployeeList
WHERE 
	Department IN('Marketing','Sales')