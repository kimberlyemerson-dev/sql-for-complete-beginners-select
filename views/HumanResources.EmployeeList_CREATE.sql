USE AdventureWorks2022
GO

CREATE VIEW HumanResources.EmployeeList
AS

SELECT
	Department = d.Name,
	p.FirstName,
	p.LastName,
	e.JobTitle,
	e.HireDate,
	AnnualSalary = (eph.Rate * 40) * 52
FROM
	HumanResources.Employee e
	INNER JOIN Person.Person p
		ON e.BusinessEntityID = p.BusinessEntityID
	INNER JOIN HumanResources.EmployeeDepartmentHistory edh
		ON e.BusinessEntityID = edh.BusinessEntityID
	INNER JOIN HumanResources.Department d
		ON edh.DepartmentID = d.DepartmentID
	INNER JOIN (SELECT
	BusinessEntityID, 
	Rate, 
	[Row] = ROW_NUMBER() OVER(PARTITION BY BusinessEntityID ORDER BY RateChangeDate DESC)
FROM 
	HumanResources.EmployeePayHistory) eph
		ON e.BusinessEntityID = eph.BusinessEntityID AND eph.Row = 1