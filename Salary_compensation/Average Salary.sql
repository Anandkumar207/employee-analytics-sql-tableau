SELECT ROUND(AVG(salary), 2) AS avg_salary
FROM salaries
WHERE to_date = '9999-01-01';