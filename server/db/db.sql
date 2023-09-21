
DROP TABLE species;
DROP TABLE individuals;
DROP TABLE sightings;

-- SPECIES ----------------------------------------


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

INSERT INTO species (
    common_name,
    scientific_name,
    estimated_living,
    conservation_status
) VALUES (
    'Golden Lion Tamarin',
    'Leontopithecus rosalia',
    250,
    'EN'
);

INSERT INTO species (
    common_name,
    scientific_name,
    estimated_living,
    conservation_status
) VALUES (
    'African Wild Dog',
    'Lycaon pictus',
    1100,
    'EN'
);

select * from species;

-- INDIVIDUALS ----------------------------------------

CREATE TABLE individuals (
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    species_id INTEGER REFERENCES species(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO individuals (nickname, species_id)
VALUES ('Oreo', 1);

INSERT INTO individuals (nickname, species_id)
VALUES ('Sam', 1);

INSERT INTO individuals (nickname, species_id)
VALUES ('Stripes', 2);

INSERT INTO individuals (nickname, species_id)
VALUES ('Spot', 3);

select * from individuals;


-- SIGHTINGS ----------------------------------------

CREATE TABLE sightings (
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    location TEXT
);

insert into sightings(nickname, location) values ('flaffie', 'back yard');
insert into sightings(nickname, location) values ('giant', 'forrest');
insert into sightings(nickname, location) values ('tiny', 'by the river');

select * from sightings;


-- JOIN queries ----------------------------------------

select *
from species, individuals
where species.id = individuals.species_id;

select nickname, common_name, scientific_name
from species, individuals
where species.id = individuals.species_id;




