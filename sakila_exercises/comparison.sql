# Comparison Operators

use sakila;

select *
from film
where rental_rate < 1.00; -- less than

select *
from film
where rental_rate > 1.00; -- greater than

select film_id, title, replacement_cost
from film
where replacement_cost <= 12.99; -- less than or equal to

select film_id, title, replacement_cost
from film
where replacement_cost >= 28.99; -- greater than or equal to

select title
from film
where rating = 'R'; -- equal to

select title, rating
from film
where rating != 'G'; -- NOT equal to