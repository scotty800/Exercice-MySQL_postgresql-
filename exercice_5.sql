
use ecole;

CREATE TABLE cours(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_cours VARCHAR(50)
);

INSERT INTO cours (nom_cours) VALUES
('Maths'),
('Physique'),
('Sport');

SELECT * FROM cours;

CREATE TABLE inscriptions(
    id INT AUTO_INCREMENT PRIMARY KEY,
    eleve_id INT,
    cours_id INT,
    FOREIGN KEY (eleve_id) REFERENCES eleves(id),
    FOREIGN KEY (cours_id) REFERENCES cours(id)
);

INSERT INTO inscriptions (eleve_id, cours_id) VALUES
(1, 1),
(2, 2),
(4, 3);

SELECT eleves.nom, eleves.prenom, cours.nom_cours
FROM inscriptions
INNER JOIN eleves ON inscriptions.eleve_id = eleves.id
INNER JOIN cours ON inscriptions.cours_id = cours.id;

SELECT eleves.nom, eleves.prenom, cours.nom_cours
FROM eleves
LEFT JOIN inscriptions ON eleves.id = inscriptions.eleve_id
LEFT JOIN cours ON inscriptions.cours_id = cours.id