
drop table sightings;

CREATE TABLE sightings (
    id serial PRIMARY KEY,
    nickname TEXT,
    location TEXT
);

insert into sightings(nickname, location) values ('flaffie', 'back yard');
insert into sightings(nickname, location) values ('giant', 'forrest');
insert into sightings(nickname, location) values ('tiny', 'by the river');

select * from sightings;