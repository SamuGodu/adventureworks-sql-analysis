/*==================================================
Exercise 06
==================================================*/

SELECT ed.BusinessEntityID, d.Name
FROM HumanResources.EmployeeDepartmentHistory as ed
JOIN HumanResources.Department as d
	ON ed.DepartmentID = d.DepartmentID
	ORDER BY ed.BusinessEntityID;

/*==================================================
Exercise 07
==================================================*/