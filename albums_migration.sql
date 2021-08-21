use codeup_test_db;

drop table if exists albums;

create table albums (
    id int unsigned not null auto_increment,
    artist varchar(100),
    name varchar(100) not null,
    release_date int,
    sales float,
    genre varchar(255),
    primary key (id)
);