use sakila;

# selects first and last name from the actor table
select first_name, last_name
from actor;

# selects all columns from the film table
select *
from film;

select email
from customer;

select rental_id, return_date
from rental;

select staff_id, last_name, username
from staff;