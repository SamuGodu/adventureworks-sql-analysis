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