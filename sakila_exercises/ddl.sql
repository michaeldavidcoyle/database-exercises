# DDL - Data Definition Language

use sakila;

# create a new table
create table hero( -- "if not exists" is an optional clause to avoid
    hero_id int auto_increment,
    # not null forces a value to be entered and unique makes sure it has not been used before
    hero_name varchar(50) not null unique,
    hit_points smallint,
    attack smallint,
    defense smallint,
    # unsigned mean it cannot be negative
    customer_id smallint unsigned,
    primary key (hero_id),
    foreign key (customer_id) references customer(customer_id)
);

# alter hero table
alter table hero
add column magic_points smallint;

# rename column
alter table hero
rename column magic_points to magic_rank;

insert into hero(hero_name, hit_points, attack, defense, magic_rank)
values ('Batman', 10000, 750, 1500, 1);

select * from hero;

# drop command
drop table hero; -- "if exists" is an optional clause