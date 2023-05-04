
/*
Today's Topic: Aliasing
*/

SELECT FirstName + ' ' + LastName As FullName
FROM [SQL Tutorial].dbo.EmployeeDemographics


SELECT Avg(Age) As Age
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics AS Demo
JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
	ON Demo.Age = Sal.EmployeeID