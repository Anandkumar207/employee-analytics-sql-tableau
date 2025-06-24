SELECT YEAR(from_date) AS Year, 
       ROUND(SUM(salary), 2) AS Total_salary_paid
FROM salaries
GROUP BY YEAR(from_date)
ORDER BY year;

















