USE AdventureWorks2022
GO

SELECT 
  Department
  FirstName,
  LastName,
  JobTitle,
  AnnualSalary
FROM 
  HumanResources.EmployeeList
ORDER BY
  Department,
  AnnualSalary DESC;