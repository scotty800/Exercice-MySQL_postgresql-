
CREATE DATABASE ecole;

use ecole;

CREATE TABLE eleves (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

INSERT INTO eleves (nom, prenom, age) VALUES
('Dupont', 'Jean', 15),
('Martin', 'Sophie', 16),
('Bernard', 'Luc', 14),
('Drant', 'Alice', 15),
('Leclerc', 'Bob', 15);

SELECT * FROM eleves;