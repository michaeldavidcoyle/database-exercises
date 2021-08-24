use codeup_test_db;

select name as '----Pink Floyd Albums----'
from albums
where artist = 'Pink Floyd';

select release_date as '----Year of Sgt. Pepper''s Lonely Hearts Club Band----'
from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre as '----Nevermind genre----'
from albums
where name = 'Nevermind';

select name as '----90s Albums----'
from albums
where release_date between 1990 and 1999;

select name as '----Albums with < 20 million in sales----'
from albums
where sales < 20;

select name as '----Rock Albums----'
from albums
where genre = 'rock';