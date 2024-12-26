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
	HireDate BETWEEN '2011-01-01' AND '2011-12-31';