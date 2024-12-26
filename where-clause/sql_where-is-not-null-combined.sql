USE AdventureWorks2022
GO

SELECT 
	Department,
	FirstName,
	LastName,
	JobTitle,
	HireDate,
  pp.PhoneNumber
FROM 
  HumanResources.EmployeeList e
  INNER JOIN Person.PersonPhone pp
    ON e.BusinessEntityID = pp.BusinessEntityID
WHERE
  Department = 'Production'
  AND pp.PhoneNumber IS NOT NULL;