use employees;

# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
select concat(e.last_name, ', ', e.first_name) as full_name
from employees.employees e
limit 10;