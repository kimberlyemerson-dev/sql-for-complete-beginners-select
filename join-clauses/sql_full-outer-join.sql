USE AdventureWorks2022
GO

SELECT
	e.FirstName,
	e.LastName,
	jc.Resume,
	e.Department,
	e.HireDate
FROM
	HumanResources.EmployeeList e
	FULL OUTER JOIN HumanResources.JobCandidate jc
		ON e.BusinessEntityID = jc.BusinessEntityID;