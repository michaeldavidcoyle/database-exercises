# inner join syntax
# select *
# from table_name
#     inner join other_table
#         on table_name.table_id = other_table.table_id;

use sakila;

# example inner join
select city, country
from city
inner join country
    on city.country_id = country.country_id;

# example of joining multiple tables
select address, district, city, postal_code, country
from address
    inner join city
    on city.city_id = address.city_id
    inner join country
    on city.country_id = country.country_id;
