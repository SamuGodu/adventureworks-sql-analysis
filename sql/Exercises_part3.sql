/*==================================================
Exercise 11
==================================================*/

SELECT MIN(e.SickLeaveHours) as MinimumSickLeavesHr, MAX(e.SickLeaveHours) as MaximumSickLeaveHr
FROM HumanResources.Employee as e