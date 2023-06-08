# left joins get all the rows from the left table and only those matching results
# from the right table, left rows w/ no match will have <NULL> in the other column/s
# right joins do the same but other way around

use sakila;

# create a new customer who has never had a rental
insert into customer (first_name, last_name, email, store_id, address_id, create_date)
values ('Michael', 'Coyle', 'mdc@example.com', 1, 1, now());


select *
from customer
left join rental
    on customer.customer_id = rental.customer_id
where customer.last_name = 'coyle';