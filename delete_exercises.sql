use codeup_test_db;

select name as '-------Albums Released After 1991-------'
from albums
where release_date > 1991;

select name as '-------Disco Albums-------'
from albums
where genre = 'disco';

select name as '-------Whitney Houston Albums-------'
from albums
where artist = 'Whitney Houston';