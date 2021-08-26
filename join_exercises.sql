# Create a database named join_test_db and run the SQL provided in the Join Example DB section above
# to create the same setup used for this lesson.
create database join_test_db;

use join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
insert into users (name, email, role_id)
values ('kristina', 'kristina@example.com', 2),
       ('olivia', 'olivia@example.com', 2),
       ('peter', 'peter@example.com', 2),
       ('tim', 'tim@example.com', null);

# Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson.
# Before you run each query, guess the expected number of results.
select users.name user_name, roles.name role_name
from users
join roles on users.role_id = roles.id;

select users.name user_name, roles.name role_name
from users
         left join roles on users.role_id = roles.id;

select users.name user_name, roles.name role_name
from users
         right join roles on users.role_id = roles.id;

# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries.
# Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role.
# Hint: You will also need to use GROUP BY in the query.
select count(users.name) as user_count, roles.name as role_name
from users
         right join roles on users.role_id = roles.id
group by role_name;

# employees database
use employees;

# Write a query that shows each department along with the name of the current manager for that department.
select d.dept_name 'Department Name', concat(e.first_name, ' ', e.last_name) 'Department Manager'
from employees.employees e
         join dept_manager dm
              on dm.emp_no = e.emp_no
         right join departments d
              on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
select d.dept_name 'Department Name', concat(e.first_name, ' ', e.last_name) 'Department Manager'
from employees.employees e
         join dept_manager dm
              on dm.emp_no = e.emp_no
         right join departments d
                    on d.dept_no = dm.dept_no
where dm.to_date = '9999-01-01'
  and e.gender = 'F';