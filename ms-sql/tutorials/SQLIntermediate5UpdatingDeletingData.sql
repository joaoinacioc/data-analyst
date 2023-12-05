/*
Updating/Deleting Data
*/

SELECT *
FROM SQLProject.dbo.EmployeeDemographics

UPDATE SQLProject.dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'


DELETE FROM SQLProject.dbo.EmployeeDemographics
WHERE EmployeeID = 1005