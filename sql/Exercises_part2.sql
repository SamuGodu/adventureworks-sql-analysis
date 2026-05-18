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

SELECT e.BusinessEntityID as Employee_ID, e.JobTitle, ed.StartDate
FROM HumanResources.Employee as e
JOIN HumanResources.EmployeeDepartmentHistory as ed
	ON e.BusinessEntityID = ed.BusinessEntityID
WHERE e.Gender = 'F';

/*==================================================
Exercise 08
==================================================*/

SELECT Distinct(e.JobTitle), COUNT(*) as Number_positions, d.Name as DepartmentName
FROM HumanResources.Employee as e
JOIN HumanResources.EmployeeDepartmentHistory as ed
ON e.BusinessEntityID = ed.BusinessEntityID
JOIN HumanResources.Department as d
on ed.DepartmentID = d.DepartmentID
GROUP BY
	e.JobTitle,
	d.Name;

/*==================================================
Exercise 09
==================================================*/

SELECT DISTINCT d.Name as DepartmentName, s.Name as ShiftName
FROM HumanResources.Employee as e
JOIN HumanResources.EmployeeDepartmentHistory as ed
	ON e.BusinessEntityID = ed.BusinessEntityID
JOIN HumanResources.[Shift] as s
	ON ed.ShiftID = s.ShiftID
JOIN HumanResources.Department as d
	ON ed.DepartmentID = d.DepartmentID

/*==================================================
Exercise 10
==================================================*/

SELECT e.BusinessEntityID, d.Name as DepartmentName, d.GroupName as DepatmentGroup, s.Name as ShiftName
FROM HumanResources.Employee as e
JOIN HumanResources.EmployeeDepartmentHistory as ed
	ON e.BusinessEntityID = ed.BusinessEntityID
JOIN HumanResources.[Shift] as s
	ON ed.ShiftID = s.ShiftID
JOIN HumanResources.Department as d
	ON ed.DepartmentID = d.DepartmentID
WHERE e.HireDate > '2010-01-01' 
AND
d.GroupName IN ('Manufacturing', 'Quality Assurance');

/*==================================================
Exercise 11
==================================================*/

