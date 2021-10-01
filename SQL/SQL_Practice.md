```SQL
CREATE TABLE Philosopher(		
	philosopher_id INTEGER PRIMARY KEY, 
    first_name VARCHAR(10) NOT NULL,
    last_name VARCHAR(10),
    middle_initial CHAR(1),
    notable_work TEXT,
    dob DATE, 
    dod DATE
);
INSERT INTO 
  Philosopher
  (philosopher_id, first_name, last_name, notable_work, dob, dod)
VALUES
  (1, 'Rene', 'Descartes', 'Discourse on the Method', '1596-03-31', '1650-02-11'),
  (2, 'Thomas', 'More', 'Utopia', '1478-02-07', '1535-07-06'), 
  (3, 'Nicolaus', 'Copernicus', 'On the Revolutions of the Celestial Spheres', '1473-02-19', '1543-05-24'),
  (4, 'Baruch', 'Spinoza', 'Ethics', '1632-11-24', '1677-02-21'),  
  (5, 'Gottfried', 'Leibniz', 'Discourse on Metaphysics', '1646-07-01', '1716-11-14'),
  (6, 'Thomas', 'Hobbes', 'Leviathan', '1588-04-05', '1679-12-04'),
  (7, 'David', 'Hume', 'A Treatise of Human Nature', '1711-04-26', '1776-08-25'),
  (8, 'Isaac', 'Newton', 'Mathematical Principles of Natural Philosophy', '1642-12-25', '1726-03-20'),
  (9, 'Immanuel', 'Kant', 'Critique of Pure Reason', '1724-04-22', '1804-02-12'),
  (10, 'Charles', 'Darwin', 'On the Origin of Species', '1809-02-12', '1882-04-19'),
  (11, 'Adam', 'Smith', 'An Inquiry into the Nature and Causes of the Wealth of Nations', '1723-06-05', '1790-07-17'),
  (12, 'Edmund', 'Husserl', 'Logical Investigations ', '1859-04-08', '1938-04-27'),
  (13, 'Bertrand', 'Russell', 'A History of Western Philosophy ', '1872-05-18', '1970-02-02');

SELECT
    *
FROM
  Philosopher
```

```Markdown
| philosopher_id  | first_name  |  last_name  | middle_initial   |                                                   notable_work |       dob |        dod |
|----------------|------------|------------|----------------|----------------------------------------------------------------|------------|------------|
|              1 |       Rene |  Descartes |         (null) |                                        Discourse on the Method | 1596-03-31 | 1650-02-11 |
|              2 |     Thomas |       More |         (null) |                                                         Utopia | 1478-02-07 | 1535-07-06 |
|              3 |   Nicolaus | Copernicus |         (null) |                    On the Revolutions of the Celestial Spheres | 1473-02-19 | 1543-05-24 |
|              4 |     Baruch |    Spinoza |         (null) |                                                         Ethics | 1632-11-24 | 1677-02-21 |
|              5 |  Gottfried |    Leibniz |         (null) |                                       Discourse on Metaphysics | 1646-07-01 | 1716-11-14 |
|              6 |     Thomas |     Hobbes |         (null) |                                                      Leviathan | 1588-04-05 | 1679-12-04 |
|              7 |      David |       Hume |         (null) |                                     A Treatise of Human Nature | 1711-04-26 | 1776-08-25 |
|              8 |      Isaac |     Newton |         (null) |                  Mathematical Principles of Natural Philosophy | 1642-12-25 | 1726-03-20 |
|              9 |   Immanuel |       Kant |         (null) |                                        Critique of Pure Reason | 1724-04-22 | 1804-02-12 |
|             10 |    Charles |     Darwin |         (null) |                                       On the Origin of Species | 1809-02-12 | 1882-04-19 |
|             11 |       Adam |      Smith |         (null) | An Inquiry into the Nature and Causes of the Wealth of Nations | 1723-06-05 | 1790-07-17 |
|             12 |     Edmund |    Husserl |         (null) |                                        Logical Investigations  | 1859-04-08 | 1938-04-27 |
|             13 |   Bertrand |    Russell |         (null) |                               A History of Western Philosophy  | 1872-05-18 | 1970-02-02 |    
```
## Aliasing Table Columns with and without 'AS' keyword
```SQL
SELECT
  philosopher_id AS ID, 
  first_name AS Name, 
  last_name AS Surname, 
  dob Born
FROM
  Philosopher
WHERE
  dob > '1600'
ORDER BY 
  dob ASC, 
  first_name
```
```Markdown
| ID |      Name | Surname |       Born |
|----|-----------|---------|------------|
|  4 |    Baruch | Spinoza | 1632-11-24 |
|  8 |     Isaac |  Newton | 1642-12-25 |
|  5 | Gottfried | Leibniz | 1646-07-01 |
|  7 |     David |    Hume | 1711-04-26 |
| 11 |      Adam |   Smith | 1723-06-05 |
|  9 |  Immanuel |    Kant | 1724-04-22 |
| 10 |   Charles |  Darwin | 1809-02-12 |
| 12 |    Edmund | Husserl | 1859-04-08 |
| 13 |  Bertrand | Russell | 1872-05-18 |
```


```SQL
SELECT 
  first_name AS Name, 
  last_name AS Surname,
  YEAR(dod)-YEAR(dob) AS Age, 
  YEAR(dob) AS BirthYear
FROM 
 Philosopher
ORDER BY 
  BirthYear ASC, 
  Age DESC
```
```Markdown
|      Name |    Surname | Age | BirthYear |
|-----------|------------|-----|-----------|
|  Nicolaus | Copernicus |  70 |      1473 |
|    Thomas |       More |  57 |      1478 |
|    Thomas |     Hobbes |  91 |      1588 |
|      Rene |  Descartes |  54 |      1596 |
|    Baruch |    Spinoza |  45 |      1632 |
|     Isaac |     Newton |  84 |      1642 |
| Gottfried |    Leibniz |  70 |      1646 |
|     David |       Hume |  65 |      1711 |
|      Adam |      Smith |  67 |      1723 |
|  Immanuel |       Kant |  80 |      1724 |
|   Charles |     Darwin |  73 |      1809 |
|    Edmund |    Husserl |  79 |      1859 |
|  Bertrand |    Russell |  98 |      1872 |
```