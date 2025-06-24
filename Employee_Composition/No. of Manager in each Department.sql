SELECT d.dept_name, COUNT(*) AS total_managers
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
GROUP BY d.dept_name;
