USE employees;

# Find all employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Names Starting and Ending with E'
FROM employees.employees e
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

# Find all employees born on Christmas — 842 rows.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Name, e.birth_date AS Birthday
FROM employees.employees e
WHERE MONTH(e.birth_date) = 12
  AND DAY(e.birth_date) = 25;