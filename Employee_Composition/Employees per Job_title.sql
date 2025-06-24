SELECT title as Job_Title, COUNT(*) AS Total_employees
FROM titles
WHERE to_date = '9999-01-01'
GROUP BY title;