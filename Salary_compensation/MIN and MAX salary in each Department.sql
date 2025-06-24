SELECT t.title, 
       MIN(s.salary) AS min_salary, 
       MAX(s.salary) AS max_salary
FROM titles t
JOIN salaries s ON t.emp_no = s.emp_no
WHERE t.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
GROUP BY t.title;
