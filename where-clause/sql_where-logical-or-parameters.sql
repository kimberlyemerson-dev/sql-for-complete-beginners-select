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
  (Department = 'Marketing' OR Department = 'Sales')
  AND AnnualSalary > 60000;