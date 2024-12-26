USE AdventureWorks2022
GO

SELECT 
  [FirstName] = p.FirstName,
	[LastName] = p.LastName,
	[Phone] = pp.PhoneNumber,
	[PhoneType] = pnt.Name
FROM
	Person.Person p
	INNER JOIN Person.PersonPhone pp
		ON p.BusinessEntityID = pp.BusinessEntityID
	INNER JOIN Person.PhoneNumberType pnt
		ON pp.PhoneNumberTypeID = pnt.PhoneNumberTypeID