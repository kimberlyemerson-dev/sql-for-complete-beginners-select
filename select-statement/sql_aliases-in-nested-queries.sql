USE AdventureWorks2022
GO

SELECT
	[First Name] = p.FirstName,
	[Last Name] = p.LastName
FROM
	Person.Person p
WHERE
  (SELECT [DateOfHire] = HireDate  
   FROM HumanResources.Employee 
   WHERE BusinessEntityID = p.BusinessEntityID) >= '2010-01-01'