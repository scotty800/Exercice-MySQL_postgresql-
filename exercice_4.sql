
use ecole;

SELECT * FROM eleves;

UPDATE eleves
SET age = 18
WHERE id = 7;

SELECT * FROM eleves  WHERE id = 8;

UPDATE eleves
SET nom = 'Bernard'
WHERE id = 8;

SELECT * FROM eleves;

DELETE FROM eleves
WHERE id = 3;

SELECT * FROM eleves;

