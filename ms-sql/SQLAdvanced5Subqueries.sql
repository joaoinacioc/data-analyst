/*
Subqueries (in the select, from, and where statement)
*/

SELECT *
FROM EmployeeSalary

-- Subquery in SELECT

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary

-- How to d it with Partition By

SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
FROM EmployeeSalary

-- Why GROUP BY doesn't work

SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2

-- Subquery in Where

SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
		FROM EmployeeSalary) a

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
		SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30)