# DML - data manipulation language
# insert into table_name(column_name1, column_name2) values(value1, value2)

use sakila;

insert
into actor(first_name, last_name) -- actor_id is auto-generated, as is last_update
values('Chuck', 'Lee');

insert
into actor(first_name, last_name)
values('Bruce', 'Norris');

insert
into city(city, country_id)
values('San Antonio', 103);

insert
into city(city, country_id)
# multiple entries separated by a comma
values('Austin', 103),
      ('Houston', 103);