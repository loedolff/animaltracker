
DROP TABLE species;
DROP TABLE sightings;

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    common_name TEXT,
    scientific_name TEXT,
    estimated_living INTEGER,
    conservation_status char(2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);  

INSERT INTO species (
    common_name,
    scientific_name, 
    estimated_living, 
    conservation_status) 
VALUES (
    'Giant Panda', 
    'Ailuropoda melanoleuca', 
    1864, 
    'EN'
);

select * from species;

CREATE TABLE sightings (
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    location TEXT
);

insert into sightings(nickname, location) values ('flaffie', 'back yard');
insert into sightings(nickname, location) values ('giant', 'forrest');
insert into sightings(nickname, location) values ('tiny', 'by the river');

select * from sightings;

