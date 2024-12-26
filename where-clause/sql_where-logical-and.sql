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
  Department = 'Marketing'
  AND AnnualSalary > 60000;