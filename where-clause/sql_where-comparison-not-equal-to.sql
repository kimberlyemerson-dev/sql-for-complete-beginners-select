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
	Department <> 'Production'
  AND Department != 'Production Control';