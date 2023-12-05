/*
Case Statement
*/

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	WHEN Age > 30 THEN 'Old'
--	ELSE 'Baby'
--END
--FROM SQLProject.dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM SQLProject.dbo.EmployeeDemographics
JOIN SQLProject.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID