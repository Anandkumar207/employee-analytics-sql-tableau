SELECT 
    dept_name as Department_Name,
    emp_no as Emp_id,
    first_name as First_name ,
    last_name as Last_name,
    salary
FROM (
    SELECT 
        d.dept_name,
        e.emp_no,
        e.first_name,
        e.last_name,
        s.salary,
        RANK() OVER (PARTITION BY d.dept_name ORDER BY s.salary DESC) AS salary_rank
    FROM employees e
    JOIN salaries s ON e.emp_no = s.emp_no
    JOIN dept_emp de ON e.emp_no = de.emp_no
    JOIN departments d ON de.dept_no = d.dept_no
    WHERE s.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
) AS ranked_salaries
WHERE salary_rank <= 3;