
use ecole;

SELECT nom, prenom FROM eleves;

SELECT * FROM eleves
WHERE age > 15;

SELECT * FROM eleves
WHERE prenom = 'Alice' OR prenom = 'Bob';

SELECT * FROM eleves
WHERE prenom <> 'Martin';
