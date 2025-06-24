SELECT d.dept_name as Department_Name , COUNT(*) AS Total_employees
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
GROUP BY d.dept_name;