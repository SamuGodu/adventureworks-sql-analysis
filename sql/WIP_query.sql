/*==================================================
Exercise 01
==================================================*/

SELECT TOP 10 [JobTitle] 
FROM HumanResources.Employee
WHERE Gender = 'M' 
AND
MaritalStatus != 'M';

/*==================================================
Exercise 02
==================================================*/

SELECT BusinessEntityID, Rate, RateChangeDate 
FROM HumanResources.EmployeePayHistory
WHERE Rate >= '50';

/*==================================================
Exercise 03
==================================================*/

SELECT BusinessEntityID, DepartmentID, StartDate
FROM HumanResources.EmployeeDepartmentHistory
WHERE StartDate BETWEEN '2008-01-01' AND '2008-12-31' 
ORDER BY StartDate;

/*==================================================
Exercise 04
==================================================*/

SELECT DepartmentID, [Name], GroupName
FROM HumanResources.Department
WHERE [Name] LIKE 'Prod%'
OR GroupName LIKE '%ring';

/*==================================================
Exercise 05
==================================================*/

SELECT [Name]
FROM HumanResources.Department
WHERE GroupName = 'Research and Development'
OR GroupName = 'Manufacturing';

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

SELECT MIN(e.SickLeaveHours) as MinimumSickLeavesHr, MAX(e.SickLeaveHours) as MaximumSickLeaveHr
FROM HumanResources.Employee as e;

/*==================================================
Exercise 12
==================================================*/

SELECT e.JobTitle, AVG(e.VacationHours) as AverageVacHrs
FROM HumanResources.Employee as e
GROUP BY e.JobTitle;

/*==================================================
Exercise 13
==================================================*/

SELECT Gender, COUNT(*) as NumberofEmployees
FROM HumanResources.Employee
GROUP BY Gender;

/*==================================================
Exercise 14
==================================================*/

SELECT d.GroupName, COUNT(*) as Count
FROM HumanResources.Department as d
GROUP BY d.GroupName
HAVING COUNT(*) > 2;

/*==================================================
Exercise 15
==================================================*/

SELECT d.Name, SUM(e.SickLeaveHours) AS SumSickLeaveHours
FROM HumanResources.Employee AS e
JOIN HumanResources.EmployeeDepartmentHistory AS edh
ON e.BusinessEntityID = edh.BusinessEntityID
JOIN HumanResources.Department AS d
ON edh.DepartmentID = d.DepartmentID
WHERE edh.EndDate IS NULL
GROUP BY d.Name;