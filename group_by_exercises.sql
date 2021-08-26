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
# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
select e.last_name, count(e.last_name) name_count
from employees.employees e
where e.last_name like '%q%'
  and e.last_name not like '%qu%'
group by e.last_name
order by name_count desc;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
select count(*) 'Count of names Irena, Vidya or Maya', e.gender
from employees.employees e
where first_name in ('Irena', 'Vidya', 'Maya')
group by e.gender;