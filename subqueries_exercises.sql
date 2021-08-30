use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery. 69 Rows
select *
from employees.employees e
where e.hire_date in (
    select e.hire_date
    from employees.employees e
    where e.emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
select t.title Title
from titles t
where emp_no in (
    select emp_no
    from employees.employees e
    where e.first_name = 'Aamod'
);

# Find all the current department managers that are female.
select e.first_name, e.last_name
from employees.employees e
where e.emp_no in (
    select e.emp_no
    from employees.employees e
             inner join dept_manager dm on e.emp_no = dm.emp_no
    where e.gender = 'F'
      and year(dm.to_date) = 9999
);

# Bonus
# Find all the department names that currently have female managers.
select d.dept_name
from departments d
where d.dept_no in (
    select dm.dept_no
    from dept_manager dm
             inner join employees.employees e on dm.emp_no = e.emp_no
    where e.gender = 'F'
      and year(dm.to_date) = 9999
)
group by d.dept_name;

# Find the first and last name of the employee with the highest salary.
select e.first_name, e.last_name
from employees.employees e
    inner join salaries s on e.emp_no = s.emp_no
where salary = (select max(salary) from salaries);