SELECT 
    MIN(salary) AS Min_salary,
    MAX(salary) AS Max_salary
FROM salaries
WHERE to_date = '9999-01-01';
