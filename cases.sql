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



