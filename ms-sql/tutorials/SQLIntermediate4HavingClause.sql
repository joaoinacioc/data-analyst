/*
Having Clause
*/

SELECT JobTitle, AVG(Salary)
FROM SQLProject.dbo.EmployeeDemographics
JOIN SQLProject.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)