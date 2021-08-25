USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Names Starting and Ending with E'
FROM employees.employees e
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';