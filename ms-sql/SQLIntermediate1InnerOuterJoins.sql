/*
Inner Joins, Full/Left/Right Outer Joins
*/

--SELECT *
--FROM SQLProject.dbo.EmployeeDemographics

--SELECT *
--FROM SQLProject.dbo.EmployeeSalary

--SELECT *
--FROM SQLProject.dbo.EmployeeDemographics
--Inner Join SQLProject.dbo.EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM SQLProject.dbo.EmployeeDemographics
--Full Outer Join SQLProject.dbo.EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM SQLProject.dbo.EmployeeDemographics
--Left Outer Join SQLProject.dbo.EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM SQLProject.dbo.EmployeeDemographics
--Right Outer Join SQLProject.dbo.EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT JobTitle, AVG(Salary)
FROM SQLProject.dbo.EmployeeDemographics
Inner Join SQLProject.dbo.EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle