USE AdventureWorks2022
GO

SELECT 
	FirstName,
	LastName,
	psp.StateProvinceCode,
  psp.CountryRegionCode
FROM 
  Person.Person p
  INNER JOIN Person.BusinessEntityAddress bea
    ON p.BusinessEntityID = bea.BusinessEntityID
  INNER JOIN Person.Address pa
    ON bea.AddressID = pa.AddressID
  INNER JOIN Person.StateProvince psp
    ON pa.StateProvinceID = psp.StateProvinceID
WHERE
  psp.StateProvinceCode = 'WA'
  OR  psp.CountryRegionCode = 'CA'
ORDER BY
  psp.CountryRegionCode
