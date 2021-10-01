## Cross Join 

```SQL
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
```

```SQL
SELECT 
  * 
FROM 
  Country, 
  City;
```

```markdown
| country_id |      name |     continent | government |      capital | population | city_id |         name |   country | population |
|------------|-----------|---------------|------------|--------------|------------|---------|--------------|-----------|------------|
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       5 |       Ottawa |    Canada |     994837 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       5 |       Ottawa |    Canada |     994837 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       5 |       Ottawa |    Canada |     994837 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       5 |       Ottawa |    Canada |     994837 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       5 |       Ottawa |    Canada |     994837 |
```

The same query can be rewritten with an explicit `CROSS JOIN` clause
```SQL
SELECT 
  * 
FROM 
  Country CROSS JOIN City;
```

```markdown
| country_id |      name |     continent | government |      capital | population | city_id |         name |   country | population |
|------------|-----------|---------------|------------|--------------|------------|---------|--------------|-----------|------------|
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |       5 |       Ottawa |    Canada |     994837 |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |       5 |       Ottawa |    Canada |     994837 |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |       5 |       Ottawa |    Canada |     994837 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       1 | Buenos Aires | Argentina |   15594428 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       2 |  Mexico City |    Mexico |    8855000 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       3 |       Moscow |    Russia |   11920000 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       4 |   Montevideo |   Uruguay |    1381000 |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |       5 |       Ottawa |    Canada |     994837 |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |       5 |       Ottawa |    Canada |     994837 |
```


```SQL
SELECT 
   Country.continent continent,
   Country.name AS country_name, 
   City.name capital, 
   City.population AS capital_population
FROM 
  Country INNER JOIN City 
ON 
  Country.capital = City.name
```
```markdown
|     continent | country_name |      capital | capital_population |
|---------------|--------------|--------------|--------------------|
| South America |    Argentina | Buenos Aires |           15594428 |
| North America |       Mexico |  Mexico City |            8855000 |
|   Europe/Asia |       Russia |       Moscow |           11920000 |
| South America |      Uruguay |   Montevideo |            1381000 |
| North America |       Canada |       Ottawa |             994837 |
```  
Reversing `ON` clause to City.name = Country.capital will return the same resuls.  

To order the results by continent in ascending order, we can use the `ORDER BY` clause:  
```SQL
SELECT 
   Country.continent continent,
   Country.name AS country_name, 
   City.name capital, 
   City.population AS capital_population
FROM 
  Country INNER JOIN City 
ON 
  Country.capital = City.name
ORDER BY 
  continent
```
```markdown
|     continent | country_name |      capital | capital_population |
|---------------|--------------|--------------|--------------------|
|   Europe/Asia |       Russia |       Moscow |           11920000 |
| North America |       Mexico |  Mexico City |            8855000 |
| North America |       Canada |       Ottawa |             994837 |
| South America |    Argentina | Buenos Aires |           15594428 |
| South America |      Uruguay |   Montevideo |            1381000 |
```  
Alternativley, we can specify a descending order with the `DESC` keyword:  
```SQL
-- ...
ORDER BY 
  continent DESC
```
```markdown
|     continent | country_name |      capital | capital_population |
|---------------|--------------|--------------|--------------------|
| South America |    Argentina | Buenos Aires |           15594428 |
| South America |      Uruguay |   Montevideo |            1381000 |
| North America |       Mexico |  Mexico City |            8855000 |
| North America |       Canada |       Ottawa |             994837 |
|   Europe/Asia |       Russia |       Moscow |           11920000 |
```  