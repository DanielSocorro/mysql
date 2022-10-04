-- WHAT NATIONALITIES ARE THEY?

SELECT nationality FROM authors;
+-------------+
| nationality |
+-------------+
| USA         |
| COL         |
| GBR         |
| USA         |
| MEX         |
| SWE         |
| USA         |
| USA         |
| USA         |
| USA         |
| USA         |
| RUS         |
| IND         |
| USA         |
| JAP         |
| RUS         |
| ESP         |
| USA         |
| FRA         |
| USA         |
| IND         |
| AUT         |
| USA         |
| USA         |
| ENG         |
| DEU         |
| NULL        |
| AUS         |
| USA         |
| USA         |
| USA         |
| USA         |
| IND         |
| FRA         |
| ENG         |
| ENG         |
| AUT         |
| USA         |
| USA         |
| ENG         |
| ENG         |
| USA         |
| RUS         |
| USA         |
| USA         |
| USA         |
| NULL        |
| NULL        |
| USA         |
| NULL        |
| NULL        |
| NULL        |
| USA         |
| IND         |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| RUS         |
| USA         |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| IND         |
| NULL        |
| ENG         |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| FRA         |
| NULL        |
| NULL        |
| USA         |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| ENG         |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| USA         |
| NULL        |
| NULL        |
| IND         |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| NULL        |
| ENG         |
| ENG         |
| SWE         |
| NULL        |
| ENG         |
+-------------+
132 rows in set (0.00 sec)



SELECT DISTINCT nationality FROM authors;
+-------------+
| nationality |
+-------------+
| USA         |
| COL         |
| GBR         |
| MEX         |
| SWE         |
| RUS         |
| IND         |
| JAP         |
| ESP         |
| FRA         |
| AUT         |
| ENG         |
| DEU         |
| NULL        |
| AUS         |
+-------------+
15 rows in set (0.00 sec)



SELECT DISTINCT nationality FROM authors
ORDER BY nationality;
+-------------+
| nationality |
+-------------+
| NULL        |
| AUS         |
| AUT         |
| COL         |
| DEU         |
| ENG         |
| ESP         |
| FRA         |
| GBR         |
| IND         |
| JAP         |
| MEX         |
| RUS         |
| SWE         |
| USA         |
+-------------+
15 rows in set (0.01 sec)


-- HOW MANY WRITERS ARE THERE OF EACH NATIONALITY?

SELECT nationality, COUNT(author_id) AS qty_authors 
FROM authors 
GROUP BY nationality;
+-------------+-------------+
| nationality | qty_authors |
+-------------+-------------+
| NULL        |          71 |
| AUS         |           1 |
| AUT         |           2 |
| COL         |           1 |
| DEU         |           1 |
| ENG         |          10 |
| ESP         |           1 |
| FRA         |           3 |
| GBR         |           1 |
| IND         |           6 |
| JAP         |           1 |
| MEX         |           1 |
| RUS         |           4 |
| SWE         |           2 |
| USA         |          27 |
+-------------+-------------+
15 rows in set (0.01 sec)




SELECT nationality, COUNT(author_id) AS qty_authors 
FROM authors 
GROUP BY nationality
ORDER BY qty_authors DESC;
+-------------+-------------+
| nationality | qty_authors |
+-------------+-------------+
| NULL        |          71 |
| USA         |          27 |
| ENG         |          10 |
| IND         |           6 |
| RUS         |           4 |
| FRA         |           3 |
| SWE         |           2 |
| AUT         |           2 |
| ESP         |           1 |
| DEU         |           1 |
| COL         |           1 |
| GBR         |           1 |
| AUS         |           1 |
| MEX         |           1 |
| JAP         |           1 |
+-------------+-------------+
15 rows in set (0.00 sec)




SELECT nationality, COUNT(author_id) AS qty_authors 
FROM authors 
GROUP BY nationality
ORDER BY qty_authors DESC, nationality ASC;
+-------------+-------------+
| nationality | qty_authors |
+-------------+-------------+
| NULL        |          71 |
| USA         |          27 |
| ENG         |          10 |
| IND         |           6 |
| RUS         |           4 |
| FRA         |           3 |
| AUT         |           2 |
| SWE         |           2 |
| AUS         |           1 |
| COL         |           1 |
| DEU         |           1 |
| ESP         |           1 |
| GBR         |           1 |
| JAP         |           1 |
| MEX         |           1 |
+-------------+-------------+
15 rows in set (0.00 sec)





SELECT nationality, COUNT(author_id) AS qty_authors 
FROM authors 
WHERE nationality IS NOT NULL
GROUP BY nationality
ORDER BY qty_authors DESC, nationality ASC;
+-------------+-------------+
| nationality | qty_authors |
+-------------+-------------+
| USA         |          27 |
| ENG         |          10 |
| IND         |           6 |
| RUS         |           4 |
| FRA         |           3 |
| AUT         |           2 |
| SWE         |           2 |
| AUS         |           1 |
| COL         |           1 |
| DEU         |           1 |
| ESP         |           1 |
| GBR         |           1 |
| JAP         |           1 |
| MEX         |           1 |
+-------------+-------------+
14 rows in set (0.00 sec)



SELECT nationality, COUNT(author_id) AS qty_authors 
FROM authors 
WHERE nationality IS NOT NULL
    AND nationality NOT IN('RUS')
GROUP BY nationality
ORDER BY qty_authors DESC, nationality ASC;
+-------------+-------------+
| nationality | qty_authors |
+-------------+-------------+
| USA         |          27 |
| ENG         |          10 |
| IND         |           6 |
| FRA         |           3 |
| AUT         |           2 |
| SWE         |           2 |
| AUS         |           1 |
| COL         |           1 |
| DEU         |           1 |
| ESP         |           1 |
| GBR         |           1 |
| JAP         |           1 |
| MEX         |           1 |
+-------------+-------------+
13 rows in set (0.00 sec)




SELECT nationality, COUNT(author_id) AS qty_authors 
FROM authors 
WHERE nationality IS NOT NULL
    AND nationality NOT IN('RUS', 'AUT')
GROUP BY nationality
ORDER BY qty_authors DESC, nationality ASC;
+-------------+-------------+
| nationality | qty_authors |
+-------------+-------------+
| USA         |          27 |
| ENG         |          10 |
| IND         |           6 |
| FRA         |           3 |
| SWE         |           2 |
| AUS         |           1 |
| COL         |           1 |
| DEU         |           1 |
| ESP         |           1 |
| GBR         |           1 |
| JAP         |           1 |
| MEX         |           1 |
+-------------+-------------+
12 rows in set (0.01 sec)




SELECT nationality, COUNT(author_id) AS qty_authors 
FROM authors 
WHERE nationality IS NOT NULL
    AND nationality IN('RUS', 'AUT')
GROUP BY nationality
ORDER BY qty_authors DESC, nationality ASC;
+-------------+-------------+
| nationality | qty_authors |
+-------------+-------------+
| RUS         |           4 |
| AUT         |           2 |
+-------------+-------------+
2 rows in set (0.00 sec)






---- WHAT IS THE AVERAGE/STANDARD DEVIATION OF THE PRICE OF THE BOOKS
SELECT price from books;
+-------+
| price |
+-------+
| 30.00 |
| 12.00 |
| 13.00 |
| 19.00 |
| 19.00 |
| 29.00 |
| 28.00 |
| 18.00 |
| 21.00 |
| 17.00 |
| 10.00 |
| 19.00 |
| 27.00 |
| 18.00 |
| 25.00 |
| 35.00 |
| 13.00 |
| 27.00 |
| 11.00 |
| 17.00 |
| 14.00 |
| 34.00 |
| 18.00 |
| 31.00 |
| 11.00 |
| 31.00 |
| 35.00 |
| 18.00 |
| 31.00 |
| 13.00 |
| 14.00 |
| 23.00 |
| 10.00 |
| 24.00 |
| 27.00 |
| 28.00 |
| 24.00 |
| 25.00 |
| 19.00 |
| 35.00 |
| 31.00 |
| 14.00 |
| 20.00 |
| 23.00 |
| 18.00 |
| 12.00 |
| 23.00 |
| 19.00 |
| 14.00 |
| 31.00 |
| 27.00 |
| 29.00 |
| 32.00 |
| 10.00 |
| 23.00 |
| 21.00 |
| 29.00 |
| 21.00 |
| 32.00 |
| 10.00 |
| 21.00 |
| 17.00 |
| 10.00 |
| 17.00 |
| 18.00 |
| 31.00 |
| 13.00 |
| 17.00 |
| 33.00 |
| 27.00 |
| 26.00 |
| 14.00 |
| 11.00 |
| 26.00 |
| 12.00 |
| 23.00 |
| 19.00 |
| 14.00 |
| 29.00 |
| 18.00 |
| 20.00 |
| 34.00 |
| 22.00 |
| 25.00 |
| 25.00 |
| 14.00 |
| 10.00 |
| 23.00 |
| 27.00 |
| 28.00 |
| 24.00 |
| 29.00 |
| 34.00 |
| 25.00 |
| 10.00 |
| 19.00 |
| 31.00 |
| 35.00 |
| 22.00 |
| 22.00 |
| 34.00 |
| 15.00 |
| 17.00 |
| 32.00 |
| 20.00 |
| 22.00 |
| 12.00 |
| 35.00 |
| 29.00 |
| 31.00 |
| 31.00 |
| 26.00 |
| 28.00 |
| 26.00 |
| 11.00 |
| 19.00 |
| 28.00 |
| 20.00 |
| 34.00 |
| 23.00 |
| 30.00 |
| 20.00 |
| 24.00 |
| 24.00 |
| 13.00 |
| 11.00 |
| 31.00 |
| 34.00 |
| 17.00 |
| 23.00 |
| 30.00 |
| 21.00 |
| 32.00 |
| 35.00 |
| 15.00 |
| 14.00 |
| 16.00 |
| 27.00 |
| 25.00 |
| 34.00 |
| 35.00 |
| 12.00 |
| 21.00 |
| 35.00 |
| 22.00 |
| 25.00 |
| 21.00 |
| 20.00 |
| 29.00 |
| 25.00 |
| 26.00 |
| 20.00 |
| 12.00 |
| 15.00 |
| 30.00 |
| 19.00 |
| 23.00 |
| 19.00 |
| 19.00 |
| 30.00 |
| 29.00 |
| 18.00 |
| 21.00 |
| 17.00 |
| 10.00 |
| 15.00 |
| 10.00 |
| 20.00 |
| 10.00 |
| 32.00 |
| 16.00 |
| 26.00 |
| 21.00 |
| 16.00 |
| 33.00 |
| 31.00 |
| 19.00 |
| 21.00 |
| 13.00 |
| 17.00 |
| 11.00 |
| 20.00 |
| 31.00 |
| 10.00 |
| 24.00 |
| 29.00 |
| 10.00 |
| 31.00 |
| 12.00 |
| 34.00 |
| 21.00 |
| 19.00 |
| 23.00 |
| 21.00 |
| 29.00 |
| 18.00 |
| 20.00 |
+-------+
197 rows in set (0.01 sec)



SELECT title, price FROM books LIMIT 19;
+-------------------------------------------+-------+
| title                                     | price |
+-------------------------------------------+-------+
| The Startup Playbook                      | 30.00 |
| The Startup Playbook                      | 12.00 |
| Estudio en escarlata                      | 13.00 |
| Wallander: Asesinos sin rostro            | 19.00 |
| Wallander: Los perros de Riga             | 19.00 |
| Wallander: La leona blanca                | 29.00 |
| Wallander: El hombre sonriente            | 28.00 |
| Wallander: La falsa pista                 | 18.00 |
| Wallander: La quinta mujer                | 21.00 |
| Wallander: Pisando los talones            | 17.00 |
| Wallander: Cortafuegos                    | 10.00 |
| El llano en llamas                        | 19.00 |
| Fundamentals of Wavelets                  | 27.00 |
| Data Smart                                | 18.00 |
| God Created the Integers                  | 25.00 |
| Superfreakonomics                         | 35.00 |
| Orientalism                               | 13.00 |
| The Nature of Statistical Learning Theory | 27.00 |
| Integration of the Indian States          | 11.00 |
+-------------------------------------------+-------+
19 rows in set (0.00 sec)






SELECT title, price 
FROM books 
ORDER BY price 
DESC LIMIT 12;
+-----------------------------------+-------+
| title                             | price |
+-----------------------------------+-------+
| From Beirut to Jerusalem          | 35.00 |
| Rosy is My Relative               | 35.00 |
| Superfreakonomics                 | 35.00 |
| The Age of Wrath                  | 35.00 |
| The Winter of Our Discontent      | 35.00 |
| The Age of Discontuinity          | 35.00 |
| The Outsider                      | 35.00 |
| The Numbers Behind Numb3rs        | 35.00 |
| The Discovery of India            | 34.00 |
| We the Living                     | 34.00 |
| How to Think Like Sherlock Holmes | 34.00 |
| India from Midnight to Milennium  | 34.00 |
+-----------------------------------+-------+
12 rows in set (0.01 sec)



SELECT AVG(price)
FROM books;
+------------+
| AVG(price) |
+------------+
|  22.192893 |
+------------+
1 row in set (0.00 sec)




SELECT AVG(price), STDDEV(price) AS std
FROM books;
+------------+-------------------+
| AVG(price) | std               |
+------------+-------------------+
|  22.192893 | 7.353534338177006 |
+------------+-------------------+
1 row in set (0.00 sec)



SELECT AVG(price) AS prom, STDDEV(price) AS std
FROM books;
+-----------+-------------------+
| prom      | std               |
+-----------+-------------------+
| 22.192893 | 7.353534338177006 |
+-----------+-------------------+
1 row in set (0.00 sec)





SELECT nationality, 
AVG(price) AS prom, 
STDDEV(price) AS std
FROM books as b
JOIN authors as a 
    ON a.author_id = b.author_id
GROUP BY nationality;
+-------------+-----------+--------------------+
| nationality | prom      | std                |
+-------------+-----------+--------------------+
| NULL        | 22.040000 |  7.348360361332316 |
| AUS         | 23.500000 |                0.5 |
| AUT         | 20.250000 |   2.48746859276655 |
| DEU         | 23.000000 |                  0 |
| ENG         | 20.500000 |  6.373774391990981 |
| ESP         | 18.000000 |                  0 |
| FRA         | 22.666667 |  9.809292646374775 |
| GBR         | 19.333333 |  8.259674462242577 |
| IND         | 25.250000 |  9.175374651751286 |
| JAP         | 14.000000 |                  0 |
| MEX         | 19.000000 |                  0 |
| RUS         | 24.777778 |   7.61253028131584 |
| SWE         | 21.363636 |  6.314092856067396 |
| USA         | 23.277778 | 7.4744420494520725 |
+-------------+-----------+--------------------+
14 rows in set (0.00 sec)




SELECT nationality, 
AVG(price) AS prom, 
STDDEV(price) AS std
FROM books as b
JOIN authors as a 
    ON a.author_id = b.author_id
GROUP BY nationality
ORDER BY prom DESC;
+-------------+-----------+--------------------+
| nationality | prom      | std                |
+-------------+-----------+--------------------+
| IND         | 25.250000 |  9.175374651751286 |
| RUS         | 24.777778 |   7.61253028131584 |
| AUS         | 23.500000 |                0.5 |
| USA         | 23.277778 | 7.4744420494520725 |
| DEU         | 23.000000 |                  0 |
| FRA         | 22.666667 |  9.809292646374775 |
| NULL        | 22.040000 |  7.348360361332316 |
| SWE         | 21.363636 |  6.314092856067396 |
| ENG         | 20.500000 |  6.373774391990981 |
| AUT         | 20.250000 |   2.48746859276655 |
| GBR         | 19.333333 |  8.259674462242577 |
| MEX         | 19.000000 |                  0 |
| ESP         | 18.000000 |                  0 |
| JAP         | 14.000000 |                  0 |
+-------------+-----------+--------------------+
14 rows in set (0.01 sec)




SELECT nationality, 
    COUNT(book_id) AS books,
    AVG(price) AS prom, 
    STDDEV(price) AS std
FROM books as b
JOIN authors as a 
    ON a.author_id = b.author_id
GROUP BY nationality
ORDER BY books DESC;
+-------------+-------+-----------+--------------------+
| nationality | books | prom      | std                |
+-------------+-------+-----------+--------------------+
| NULL        |   100 | 22.040000 |  7.348360361332316 |
| USA         |    36 | 23.277778 | 7.4744420494520725 |
| ENG         |    16 | 20.500000 |  6.373774391990981 |
| SWE         |    11 | 21.363636 |  6.314092856067396 |
| RUS         |     9 | 24.777778 |   7.61253028131584 |
| IND         |     8 | 25.250000 |  9.175374651751286 |
| AUT         |     4 | 20.250000 |   2.48746859276655 |
| FRA         |     3 | 22.666667 |  9.809292646374775 |
| GBR         |     3 | 19.333333 |  8.259674462242577 |
| AUS         |     2 | 23.500000 |                0.5 |
| MEX         |     1 | 19.000000 |                  0 |
| JAP         |     1 | 14.000000 |                  0 |
| DEU         |     1 | 23.000000 |                  0 |
| ESP         |     1 | 18.000000 |                  0 |
+-------------+-------+-----------+--------------------+
14 rows in set (0.00 sec)




--- WHAT IS THE MAX/MIN PRICE OF A BOOK
SELECT MAX(price), MIN(price)
FROM books;
+------------+------------+
| MAX(price) | MIN(price) |
+------------+------------+
|      35.00 |      10.00 |
+------------+------------+
1 row in set (0.01 sec)





SELECT nationality, MAX(price), MIN(price)
FROM books AS b
JOIN authors AS a 
    ON a.author_id = b.author_id  
GROUP BY nationality;
+-------------+------------+------------+
| nationality | MAX(price) | MIN(price) |
+-------------+------------+------------+
| NULL        |      35.00 |      10.00 |
| AUS         |      24.00 |      23.00 |
| AUT         |      24.00 |      18.00 |
| DEU         |      23.00 |      23.00 |
| ENG         |      31.00 |      11.00 |
| ESP         |      18.00 |      18.00 |
| FRA         |      35.00 |      11.00 |
| GBR         |      31.00 |      13.00 |
| IND         |      35.00 |      11.00 |
| JAP         |      14.00 |      14.00 |
| MEX         |      19.00 |      19.00 |
| RUS         |      34.00 |      12.00 |
| SWE         |      34.00 |      10.00 |
| USA         |      35.00 |      10.00 |
+-------------+------------+------------+
14 rows in set (0.00 sec)



SELECT c.name, t.type, b.title, a.name, a.nationality
FROM transactions AS t
LEFT JOIN clients AS c 
    ON c.client_id = t.client_id 
LEFT JOIN books AS b
    ON b.book_id = t.book_id
LEFT JOIN authors AS a
    ON b.author_id = a.author_id;
    +-----------------------+------+--------------------------------------+--------------------+-------------+
| name                  | type | title                                | name               | nationality |
+-----------------------+------+--------------------------------------+--------------------+-------------+
| Maria Teresa Castillo | sell | El llano en llamas                   | Juan Rulfo         | MEX         |
| Luis Saez             | lend | Tales of Mystery and Imagination     | Edgar Allen Poe    | USA         |
| Jose Maria Bermudez   | sell | Estudio en escarlata                 | Arthur Conan Doyle | GBR         |
| Rafael Galvez         | sell | The Startup Playbook                 | Sam Altman         | USA         |
| Antonia Giron         | lend | El llano en llamas                   | Juan Rulfo         | MEX         |
| Antonia Giron         | sell | El llano en llamas                   | Juan Rulfo         | MEX         |
| Juana Maria Lopez     | sell | Vol 39 No. 1 Social Choice & Welfare | Various            | NULL        |
+-----------------------+------+--------------------------------------+--------------------+-------------+
7 rows in set (0.01 sec)




SELECT c.name, t.type, b.title, a.name, 
CONCAT(a.name, " (", a.nationality, ")") AS authors
FROM transactions AS t
LEFT JOIN clients AS c 
    ON c.client_id = t.client_id 
LEFT JOIN books AS b
    ON b.book_id = t.book_id
LEFT JOIN authors AS a
    ON b.author_id = a.author_id;
+-----------------------+------+--------------------------------------+--------------------+--------------------------+
| name                  | type | title                                | name               | authors                  |
+-----------------------+------+--------------------------------------+--------------------+--------------------------+
| Maria Teresa Castillo | sell | El llano en llamas                   | Juan Rulfo         | Juan Rulfo (MEX)         |
| Luis Saez             | lend | Tales of Mystery and Imagination     | Edgar Allen Poe    | Edgar Allen Poe (USA)    |
| Jose Maria Bermudez   | sell | Estudio en escarlata                 | Arthur Conan Doyle | Arthur Conan Doyle (GBR) |
| Rafael Galvez         | sell | The Startup Playbook                 | Sam Altman         | Sam Altman (USA)         |
| Antonia Giron         | lend | El llano en llamas                   | Juan Rulfo         | Juan Rulfo (MEX)         |
| Antonia Giron         | sell | El llano en llamas                   | Juan Rulfo         | Juan Rulfo (MEX)         |
| Juana Maria Lopez     | sell | Vol 39 No. 1 Social Choice & Welfare | Various            | NULL                     |
+-----------------------+------+--------------------------------------+--------------------+--------------------------+
7 rows in set (0.00 sec)




SELECT TO_DAYS(NOW());
+----------------+
| TO_DAYS(NOW()) |
+----------------+
|         738797 |
+----------------+
1 row in set (0.00 sec)




SELECT TO_DAYS('0000-01-01');
+-----------------------+
| TO_DAYS('0000-01-01') |
+-----------------------+
|                     1 |
+-----------------------+
1 row in set (0.00 sec)






SELECT name, TO_DAYS(birthdate) FROM clients;
+-------------------------+--------------------+
| name                    | TO_DAYS(birthdate) |
+-------------------------+--------------------+
| Maria Dolores Gomez     |             720049 |
| Adrian Fernandez        |             719626 |
| Maria Luisa Marin       |             714990 |
| Pedro Sanchez           |             727593 |
| Pablo Saavedra          |             716077 |
| Marta Carrillo          |             723711 |
| Javier Barrio           |             720006 |
| Milagros Garcia         |             717675 |
| Carlos Quiros           |             713923 |
| Carmen De la Torre      |             718200 |
| Laura Moron             |             713744 |
| Maria Dolores Larrea    |             727079 |
| Maria Dolores Sanz      |             731092 |
| Jose Maria Bermudez     |             729897 |
| Carlos Blanco           |             713172 |
| Juan Carlos Jurado      |             727178 |
| David Gonzalez          |             721842 |
| Antonia Aranda          |             723112 |
| Maria Moreno            |             729401 |
| David Casals            |             730313 |
| Mario Romero            |             725094 |
| Maria angeles Alba      |             715766 |
| Rafael Espinola         |             730038 |
| Montserrat alvarez      |             728603 |
| Maria Carmen Gomez      |             718978 |
| Maria Cruz Morillas     |             722751 |
| Josefa Roldan           |             728149 |
| Monica Pla              |             720417 |
| Juana Maria Lopez       |             727028 |
| Maria Carmen Ponce      |             724848 |
| Juan Carlos Rios        |             718555 |
| Isabel Alfaro           |             723386 |
| Maria Isabel Armas      |             712547 |
| Maria Teresa Castillo   |             731527 |
| Andres Planells         |             727733 |
| Silvia Perez            |             719208 |
| Pablo Gonzalez          |             730769 |
| Maria Antonia Jimenez   |             729928 |
| Jesus Rodriguez         |             716257 |
| Carmen Rodriguez        |             720671 |
| Maria Dolores Rodriguez |             716831 |
| Jordi Campos            |             714680 |
| Carlos Caceres          |             728064 |
| Carmen Robles           |             714218 |
| Sara Rodriguez          |             731008 |
| Maria Carmen Rivera     |             730632 |
| Alberto Cabanas         |             727497 |
| Jose Sanchez            |             722059 |
| Isabel Martinez         |             716787 |
| David Sanchez           |             721491 |
| Sergio Sebastian        |             715751 |
| Manuel Cabrera          |             728163 |
| Marina Gabaldon         |             715593 |
| Rafael Galvez           |             726347 |
| Francisco Villar        |             713068 |
| Francisco Garcia        |             726489 |
| Esther Pina             |             722395 |
| Maria Jesus Noya        |             729243 |
| Paula Ropero            |             730001 |
| Maria Carmen Iglesias   |             722247 |
| Albert Galvez           |             720029 |
| Carmen Lopez            |             725802 |
| Francisco Jose Leon     |             718046 |
| Francisca Gonzalez      |             715136 |
| Daniel Garcia           |             722963 |
| Ana Maria Martinez      |             723437 |
| Maria Aguilar           |             730697 |
| oscar Penas             |             723820 |
| Adrian Vela             |             722793 |
| Francisco Alcalde       |             718501 |
| Maria Dolores Perez     |             731894 |
| Juan Jose Tejada        |             726998 |
| Cristobal Nogues        |             731854 |
| Maria Luisa Sanchez     |             730518 |
| Adrian Orta             |             713032 |
| Maria Pilar Martin      |             729265 |
| Jesus Perez             |             713835 |
| Jesus Perez             |             714655 |
| Esther Capdevila        |             719812 |
| David Nieves            |             717793 |
| Antonia Giron           |             724297 |
| Juan Casero             |             721168 |
| Manuel De Pablo         |             720705 |
| angel Palomo            |             727382 |
| Laura Herrera           |             718412 |
| Maria Josefa Benitez    |             725843 |
| Luis Saez               |             724362 |
| Susana Nevado           |             716600 |
| Miguel Gomez            |             717837 |
| Julio Mayordomo         |             718953 |
| Sonia Mari              |             728579 |
| Antonia Beltran         |             718752 |
| Mercedes Perez          |             715453 |
| Concepcion Velez        |             717431 |
| Diego Correa            |             730377 |
| Juan Antonio Galan      |             724234 |
| Manuel Cerezo           |             727268 |
| Rosa Maria Singh        |             714779 |
| angeles Mena            |             726001 |
| Jose Hidalgo            |             720848 |
+-------------------------+--------------------+
100 rows in set (0.00 sec)




SELECT c.name, t.type, b.title, a.name, 
CONCAT(a.name, " (", a.nationality, ")") AS author,
TO_DAYS(NOW()) - TO_DAYS(t.created_at) AS ago
FROM transactions AS t
LEFT JOIN clients AS c 
    ON c.client_id = t.client_id 
LEFT JOIN books AS b
    ON b.book_id = t.book_id
LEFT JOIN authors AS a
    ON b.author_id = a.author_id;
    +-----------------------+------+--------------------------------------+--------------------+--------------------------+------+
| name                  | type | title                                | name               | author                   | ago  |
+-----------------------+------+--------------------------------------+--------------------+--------------------------+------+
| Maria Teresa Castillo | sell | El llano en llamas                   | Juan Rulfo         | Juan Rulfo (MEX)         |    0 |
| Luis Saez             | lend | Tales of Mystery and Imagination     | Edgar Allen Poe    | Edgar Allen Poe (USA)    |    0 |
| Jose Maria Bermudez   | sell | Estudio en escarlata                 | Arthur Conan Doyle | Arthur Conan Doyle (GBR) |    0 |
| Rafael Galvez         | sell | The Startup Playbook                 | Sam Altman         | Sam Altman (USA)         |    0 |
| Antonia Giron         | lend | El llano en llamas                   | Juan Rulfo         | Juan Rulfo (MEX)         |    0 |
| Antonia Giron         | sell | El llano en llamas                   | Juan Rulfo         | Juan Rulfo (MEX)         |    0 |
| Juana Maria Lopez     | sell | Vol 39 No. 1 Social Choice & Welfare | Various            | NULL                     |    0 |
+-----------------------+------+--------------------------------------+--------------------+--------------------------+------+
7 rows in set (0.00 sec)



DESC transactions;
+----------------+---------------------+------+-----+-------------------+-----------------------------+
| Field          | Type                | Null | Key | Default           | Extra                       |
+----------------+---------------------+------+-----+-------------------+-----------------------------+
| transaction_id | int(10) unsigned    | NO   | PRI | NULL              | auto_increment              |
| book_id        | int(10) unsigned    | NO   |     | NULL              |                             |
| client_id      | int(10) unsigned    | NO   |     | NULL              |                             |
| type           | enum('lend','sell') | NO   |     | NULL              |                             |
| created_at     | timestamp           | NO   |     | CURRENT_TIMESTAMP |                             |
| modified_at    | timestamp           | NO   |     | CURRENT_TIMESTAMP | on update CURRENT_TIMESTAMP |
| finished       | tinyint(1)          | NO   |     | 0                 |                             |
+----------------+---------------------+------+-----+-------------------+-----------------------------+
7 rows in set (0.01 sec)



INSERT INTO transactions(book_id, client_id, type, created_at) VALUES(6, 76, 'sell', '2018-01-01');



SELECT * FROM transactions;
+----------------+---------+-----------+------+---------------------+---------------------+----------+
| transaction_id | book_id | client_id | type | created_at          | modified_at         | finished |
+----------------+---------+-----------+------+---------------------+---------------------+----------+
|              1 |      12 |        34 | sell | 2022-10-04 14:20:09 | 2022-10-04 14:20:09 |        1 |
|              2 |      54 |        87 | lend | 2022-10-04 14:20:09 | 2022-10-04 14:20:09 |        0 |
|              3 |       3 |        14 | sell | 2022-10-04 14:20:09 | 2022-10-04 14:20:09 |        1 |
|              4 |       1 |        54 | sell | 2022-10-04 14:20:09 | 2022-10-04 14:20:09 |        1 |
|              5 |      12 |        81 | lend | 2022-10-04 14:20:09 | 2022-10-04 14:20:09 |        1 |
|              6 |      12 |        81 | sell | 2022-10-04 14:20:09 | 2022-10-04 14:20:09 |        1 |
|              7 |      87 |        29 | sell | 2022-10-04 14:20:09 | 2022-10-04 14:20:09 |        1 |
|              8 |       6 |        76 | sell | 2018-01-01 00:00:00 | 2022-10-04 20:42:23 |        0 |
+----------------+---------+-----------+------+---------------------+---------------------+----------+
8 rows in set (0.00 sec)




SELECT c.name, t.type, b.title, a.name, 
CONCAT(a.name, " (", a.nationality, ")") AS author,
TO_DAYS(NOW()) - TO_DAYS(t.created_at) AS ago
FROM transactions AS t
LEFT JOIN clients AS c 
    ON c.client_id = t.client_id 
LEFT JOIN books AS b
    ON b.book_id = t.book_id
LEFT JOIN authors AS a
    ON b.author_id = a.author_id;
    +-----------------------+------+--------------------------------------+--------------------+--------------------------+------+
| name                  | type | title                                | name               | author                   | ago  |
+-----------------------+------+--------------------------------------+--------------------+--------------------------+------+
| Maria Teresa Castillo | sell | El llano en llamas                   | Juan Rulfo         | Juan Rulfo (MEX)         |    0 |
| Luis Saez             | lend | Tales of Mystery and Imagination     | Edgar Allen Poe    | Edgar Allen Poe (USA)    |    0 |
| Jose Maria Bermudez   | sell | Estudio en escarlata                 | Arthur Conan Doyle | Arthur Conan Doyle (GBR) |    0 |
| Rafael Galvez         | sell | The Startup Playbook                 | Sam Altman         | Sam Altman (USA)         |    0 |
| Antonia Giron         | lend | El llano en llamas                   | Juan Rulfo         | Juan Rulfo (MEX)         |    0 |
| Antonia Giron         | sell | El llano en llamas                   | Juan Rulfo         | Juan Rulfo (MEX)         |    0 |
| Juana Maria Lopez     | sell | Vol 39 No. 1 Social Choice & Welfare | Various            | NULL                     |    0 |
| Maria Pilar Martin    | sell | Wallander: La leona blanca           | Henning Mankel     | Henning Mankel (SWE)     | 1737 |
+-----------------------+------+--------------------------------------+--------------------+--------------------------+------+
8 rows in set (0.00 sec)

