/*
Today's Topic CTEs
*/

WITH CTE_Employee as
(SELECT FirstName, LastName ,Gender, Salary
,COUNT (gender) OVER (PARTITION BY Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM [SQL Tutorial].dbo.EmployeeDemographics emp
JOIN [SQL Tutorial].dbo.EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)

Select FirstName, AvgSalary
FROM CTE_Employee

SELECT *
FROM CTE_Employee