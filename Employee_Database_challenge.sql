-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

----Create retirement_titles TABLE
SELECT
emp.emp_no,
emp.first_name,
emp.last_name,
ti.title,
ti.from_date,
ti.to_date

INTO retirement_titles

FROM employees AS emp
LEFT JOIN titles AS ti ON emp.emp_no = ti.emp_no

WHERE emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31'

ORDER BY emp.emp_no;

----Verify retirement_titles TABLE
SELECT * FROM retirement_titles;

----Create unique_titles TABLE with duplicates removed
SELECT 
DISTINCT ON (emp_no)
emp_no,
first_name,
last_name,
title

INTO unique_titles

FROM retirement_titles

WHERE to_date = '9999-01-01'

ORDER BY emp_no, to_date DESC;

----Verify unique_titles TABLE
SELECT * FROM unique_titles;

----Create retiring_titles TABLE with counts
SELECT 
COUNT(emp_no),
title

INTO retiring_titles

FROM unique_titles

GROUP BY title

ORDER BY COUNT(title) DESC;

----Verify retiring_titles TABLE
SELECT * FROM retiring_titles;
