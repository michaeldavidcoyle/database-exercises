# like operator

use sakila;

# select customers whose last names start with letter 'A'
select *
from customer
where last_name
like 'A%'; -- % symbol represents a wildcard

# select customers whose first names have any letter 'z' in them
select *
from customer
where first_name
like '%z%';

select first_name
from customer
where first_name
like 'mar_'; -- _ represents any single character