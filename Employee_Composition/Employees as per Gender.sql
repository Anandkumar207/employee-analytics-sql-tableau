SELECT gender as Gender, COUNT(*) AS Total_employees
FROM employees
GROUP BY gender;
