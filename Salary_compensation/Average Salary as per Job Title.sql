SELECT t.title AS Job_Title, ROUND(AVG(s.salary), 2) AS Avg_salary
FROM titles t
JOIN salaries s ON t.emp_no = s.emp_no
WHERE t.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
GROUP BY t.title;