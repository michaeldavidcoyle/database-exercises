use codeup_test_db;

select name as '-------All Albums-------'
from albums;

update albums
set sales = sales * 10;

select name as '**** All Albums 10 Times More Popular ****'
from albums;

select name as '-------Albums Released Prior to 1980-------'
from albums
where release_date < 1980;

update albums
set release_date = release_date - 100
where release_date < 1980;

select name as '****Albums Released Prior to 1880****'
from albums
where release_date < 1980;

select name as '-------Michael Jackson Albums-------'
from albums
where artist = 'Michael Jackson';

update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select name as '****Peter Jackson Albums****'
from albums
where artist = 'Peter Jackson';