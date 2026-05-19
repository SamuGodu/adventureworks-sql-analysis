/*==================================================
Exercise 11
==================================================*/

SELECT MIN(e.SickLeaveHours) as MinimumSickLeavesHr, MAX(e.SickLeaveHours) as MaximumSickLeaveHr
FROM HumanResources.Employee as e

/*==================================================
Exercise 12
==================================================*/

SELECT e.JobTitle, AVG(e.VacationHours) as AverageVacHrs
FROM HumanResources.Employee as e
GROUP BY e.JobTitle

/*==================================================
Exercise 13
==================================================*/

SELECT Gender, COUNT(*) as NumberofEmployees
FROM HumanResources.Employee
GROUP BY Gender

/*==================================================
Exercise 14
==================================================*/

SELECT d.GroupName, COUNT(*) as Count
FROM HumanResources.Department as d
GROUP BY d.GroupName
HAVING COUNT(*) > 2;