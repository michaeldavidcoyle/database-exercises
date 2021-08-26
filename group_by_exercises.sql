use employees;

select distinct title from titles;

select e.last_name
from employees.employees e
where e.last_name like 'e%e'
group by e.last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends
# with 'E'. You should get 846 rows.
select concat(e.last_name, ', ', e.first_name) full_name
from employees.employees e
where e.last_name like 'e%e'
group by e.last_name, e.first_name;

# Find the unique last names with a 'q' but not 'qu'.
select e.last_name
from employees.employees e
where e.last_name like '%q%'
  and e.last_name not like '%qu%'
group by e.last_name;