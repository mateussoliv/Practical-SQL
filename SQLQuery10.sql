/*
Today's Topic: Updating / Deleting Data
*/

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET EmployeeID = 1014
WHERE FirstName = 'João' AND LastName = 'Fortes'

DELETE FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1005

