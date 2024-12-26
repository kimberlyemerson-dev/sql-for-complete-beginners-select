USE AdventureWorks2022
GO

SELECT 
	Department,
	FirstName,
	LastName,
	JobTitle,
	HireDate,
	AnnualSalary
FROM 
	HumanResources.EmployeeList 
WHERE 
	NOT Department IN ('Production','Production Control');