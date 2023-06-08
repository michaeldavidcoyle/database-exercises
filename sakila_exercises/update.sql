# update table_name set col_name = value where primary_key = 42;
use sakila;

update payment
set amount = 5.99
where payment_id = 5; -- without where clause all rows will be affected