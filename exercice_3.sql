
use ecole;

SELECT * FROM eleves
ORDER BY age DESC;

SELECT * FROM eleves
ORDER BY age ASC
LIMIT 2;

SELECT ROUND(AVG(age), 2) as age_moyen FROM eleves;

SELECT MIN(age) FROM eleves;
SELECT MAX(age) FROM eleves;

SELECT COUNT(*) FROM eleves;