SELECT e.gender, ROUND(AVG(s.salary), 2) AS avg_salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01'
GROUP BY e.gender;