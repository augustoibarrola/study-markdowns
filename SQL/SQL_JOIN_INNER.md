### Country Table
```markdown
| country_id |      name |     continent | government |      capital | population |
|------------|-----------|---------------|------------|--------------|------------|
|          1 | Argentina | South America |     (null) | Buenos Aires |     (null) |
|          2 |    Mexico | North America |     (null) |  Mexico City |     (null) |
|          3 |    Russia |   Europe/Asia |     (null) |       Moscow |     (null) |
|          4 |   Uruguay | South America |     (null) |   Montevideo |     (null) |
|          5 |    Canada | North America |     (null) |       Ottawa |     (null) |
```
### City Table

```markdown
| city_id |         name |   country | population |
|---------|--------------|-----------|------------|
|       1 | Buenos Aires | Argentina |   15594428 |
|       2 |  Mexico City |    Mexico |    8855000 |
|       3 |       Moscow |    Russia |   11920000 |
|       4 |   Montevideo |   Uruguay |    1381000 |
|       5 |       Ottawa |    Canada |     994837 |
```

Show the population of each country's capital, as well as the continent that the country is in.  
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