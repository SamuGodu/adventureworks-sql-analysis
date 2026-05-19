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
