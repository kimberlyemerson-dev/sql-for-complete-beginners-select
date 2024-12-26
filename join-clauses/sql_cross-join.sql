USE AdventureWorks2022
GO

SELECT 
   d.Name as DepartmentName,
   s.Name as ShiftName,
   d.GroupName,
   s.StartTime,
   s.EndTime
FROM 
	HumanResources.Department d
	CROSS JOIN HumanResources.Shift s
ORDER BY	
	d.Name, 
	s.Name;