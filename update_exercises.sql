use codeup_test_db;

select name as '-------All Albums-------'
from albums;

select name as '-------Albums Released Prior to 1980-------'
from albums
where release_date < 1980;

select name as '-------Michael Jackson Albums-------'
from albums
where artist = 'Michael Jackson';