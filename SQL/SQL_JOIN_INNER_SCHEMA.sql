CREATE TABLE Country(		
    country_id INTEGER PRIMARY KEY,
    name VARCHAR(20),
    continent VARCHAR(20), 
    government VARCHAR(20), 
    capital VARCHAR(20), 
    population INTEGER
);

CREATE TABLE City(
    city_id INTEGER PRIMARY KEY, 
    name VARCHAR(20),
    country VARCHAR(20), 
    population INTEGER
);

INSERT INTO 
  Country
  (country_id, name, continent, capital)
VALUES
  (1, 'Argentina', 'South America', 'Buenos Aires' ),
  (2,'Mexico', 'North America', 'Mexico City'),
  (3, 'Russia', 'Europe/Asia', 'Moscow'),
  (4, 'Uruguay', 'South America', 'Montevideo'),
  (5, 'Canada', 'North America', 'Ottawa');

INSERT INTO 
    City 
    (city_id, name, country, population)
VALUES
  (1,'Buenos Aires', 'Argentina', 15594428),
  (2,'Mexico City', 'Mexico', 8855000),
  (3,'Moscow', 'Russia', 11920000),
  (4,'Montevideo', 'Uruguay', 1381000),
  (5,'Ottawa', 'Canada', 994837);