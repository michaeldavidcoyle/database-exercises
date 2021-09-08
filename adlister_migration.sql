use adlister_db;

drop table if exists users;
drop table if exists ads;

create table users (
    id int unsigned not null auto_increment,
    username varchar(100) not null,
    email varchar(100),
    password varchar(255) not null,
    primary key (id)
);

create table ads (
    id int unsigned not null auto_increment,
    user_id int unsigned not null,
    title varchar(128) not null,
    description text,
    primary key (id),
    foreign key (user_id) references users(id)
);