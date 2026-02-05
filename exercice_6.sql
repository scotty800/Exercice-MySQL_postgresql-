
use ecole;

SELECT cours.nom_cours, COUNT(inscriptions.eleve_id) AS nb_eleves
FROM cours
LEFT JOIN inscriptions ON cours.id = inscriptions.cours_id
GROUP BY cours.id, cours.nom_cours;

SELECT cours.nom_cours, COUNT(inscriptions.eleve_id) AS nb_eleves
FROM cours
LEFT JOIN inscriptions ON cours.id = incriptions.cours_id
GROUP BY cours.id, cours.nom_cours
HAVING COUNT(inscription.eleve_id) > 1;

SELECT nom, prenom 
FROM eleves
WHERE id IN (
    SELECT eleve_id
    FROM inscriptions
    GROUP BY eleve_id
    HAVING COUNT(cours_id) > 1
);

SELECT nom, prenom, age
FROM eleves
WHERE age > (
    SELECT AVG(age) FROM eleves
);