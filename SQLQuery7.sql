--Select * 
--FROM [SQL Tutorial].dbo.EmployeeDemographics

--Select *
--FROM [SQL Tutorial].dbo.EmployeeSalary

SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics
Inner JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle ='Salesman'
GROUP BY JobTitle