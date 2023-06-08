# Cartesian product
# select * from table_name cross join other_table_name;
# also:
# select * from table_name, other_table_name;
use sakila;

select film_id, film.title, actor_id, actor.last_name
from film
    cross join actor;

select count(*)
from film; -- 1000

select count(*)
from actor; -- 202

select count(*)
from film, actor; -- 202000 (cartesian product)