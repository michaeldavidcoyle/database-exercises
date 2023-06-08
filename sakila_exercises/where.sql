use sakila;

select *
from country
where country_id = 100; -- Ukraine

select *
from country
where country = 'Ukraine'; -- Ukraine

select country
from country
where country_id <= 10; -- Afghanistan, Algeria, American Samoa, Angola...

select title
from film
where release_year between 2000 and 2009;

select *
from film
where length > 180; -- 39 rows