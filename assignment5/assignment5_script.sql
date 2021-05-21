Alex Marine
CSCI 466
Assignment 5
3/2/20

assignment5_script.sql

1) USE BabyName;

2) SHOW TABLES;

3) DESC BabyName;

4) SELECT DISTINCT name, year FROM BabyName WHERE name = 'Alex' LIMIT 50;

5) SELECT DISTINCT name, year FROM BabyName WHERE year = '1998' LIMIT 50;

6) SELECT DISTINCT(name), year, gender, count FROM BabyName WHERE year = '1998' GROUP BY count DESC LIMIT 50;

7) SELECT name, count, year FROM BabyName WHERE name LIKE 'Al%' ORDER BY name, count, year LIMIT 50;

8) SELECT COUNT(*) from BabyName;

9) SELECT year, COUNT(name) FROM BabyName WHERE year = '1963';

10) SELECT year, COUNT(name) FROM BabyName WHERE year = '1953' GROUP BY gender;

11) SELECT place, COUNT(DISTINCT name) FROM BabyName GROUP BY place;