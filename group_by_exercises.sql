use employees;

select distinct title from titles;

select e.last_name
from employees.employees e
where e.last_name like 'e%e'
group by e.last_name;