-- Overall attrition count
SELECT Attrition, COUNT(*) AS total_employees
FROM hr_data
GROUP BY Attrition;

-- Attrition by department
SELECT Department, Attrition, COUNT(*) AS total
FROM hr_data
GROUP BY Department, Attrition
ORDER BY Department;

-- Attrition by job role
SELECT JobRole, Attrition, COUNT(*) AS total
FROM hr_data
GROUP BY JobRole, Attrition
ORDER BY total DESC;

-- Attrition by overtime
SELECT OverTime, Attrition, COUNT(*) AS total
FROM hr_data
GROUP BY OverTime, Attrition;

-- Average monthly income by attrition
SELECT Attrition, AVG(MonthlyIncome) AS avg_income
FROM hr_data
GROUP BY Attrition;
