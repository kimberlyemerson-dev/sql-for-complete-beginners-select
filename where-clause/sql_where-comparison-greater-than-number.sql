USE AdventureWorks2022
GO

SELECT
	Department,
	FirstName,
	LastName,
	JobTitle,
	AnnualSalary
FROM
	HumanResources.EmployeeList
WHERE
	AnnualSalary > 50000;