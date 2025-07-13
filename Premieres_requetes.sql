CREATE TABLE produits (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prix DECIMAL(10, 2)
)

INSERT INTO produits (nom, prix) VALUES
('Clavier mécanique', 49.99),
('Tapis de souris', 8.50),
('Écran 24 pouces', 129.90);

SELECT * FROM pdoduits

SELECT * FROM pdoduits
WHERE prix > 10