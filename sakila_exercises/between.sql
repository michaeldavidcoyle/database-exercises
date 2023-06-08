# Between operator
# specifies range of values, inclusive

use sakila;

select *
from payment
where amount between 0.99 and 2.99;

select *
from payment
where payment_date between '2005-02-22' and '2005-05-31';

select *
from payment
where payment_date between '2006-02-12' and '2006-02-15';