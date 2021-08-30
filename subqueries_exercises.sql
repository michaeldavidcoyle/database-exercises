use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery. 69 Rows
select *
from employees.employees e
where e.hire_date in (
    select e.hire_date
    from employees.employees e
    where e.emp_no = 101010
);