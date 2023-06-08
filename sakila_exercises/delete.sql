# delete from table_name where primary_key = 42;
use sakila;

delete
from rental
where rental_id = 1; -- without where clause all rows will be deleted

# rollback keyword can undo changes
rollback;
# commit keyword finalizes changes