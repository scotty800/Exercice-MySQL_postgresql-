CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE produits (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prix DECIMAL(10, 2)
);

CREATE TABLE commands (
    id SERIAL PRIMARY KEY,
    client_id INTEGER,
    produit_id INTEGER,
    quantite INTEGER,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (produit_id) REFERENCES produits(id)
);

INSERT INTO clients (nom, email) VALUES
('scotty', 'scottyndanga02400@gmail.com'),
('naruto', 'narutuzumaki@gmail.com');

INSERT INTO produits (nom, prix) VALUES
('Clavier mécanique', 49.99),
('Tapis de souris', 8.50),
('Ecran 24 pouces', 129.90);

INSERT INTO commands (client_id, produit_id, quantite) VALUES
(1, 1, 2),
(2, 3, 1),
(1, 2, 3);

SELECT 
    clients.nom AS nom_client,
    produits.nom AS nom_produit,
    commands.quantite
FROM commands
JOIN clients ON commands.client_id = clients.id
JOIN produits ON commands.produit_id = produits.id;

SELECT 
    clients.nom AS nom_client,
    produits.nom AS nom_produit,
    commands.quantite
FROM commands
JOIN clients ON commands.client_id = clients.id
JOIN produits ON commands.produit_id = produits.id
WHERE commands.quantite > 1;

SELECT
    produits.nom AS nom_produit,
    SUM(commands.quantite) AS total_vendu
FROM commands
JOIN produits ON commands.produit_id = produits.id
GROUP BY produits.nom
ORDER BY total_vendu DESC

SELECT
    produits.nom AS nom_produit,
    SUM(commands.quantite) AS total_vendu
    SUM(produits.prix * commands.quantite) AS ca_total
FROM commands
JOIN produits ON commands.produit_id = produits.id
GROUP BY produits.nom
ORDER BY ca_total DESC

SELECT
    clients.nom AS nom_client,
    COUNT(commands.id) AS nb_commande
FROM commands
JOIN clients ON commands.client_id = clients.id
GROUP BY client.nom
ORDER BY nb_commande DESC

SELECT
    clients.nom AS nom_client,
    SUM(commands.quantite * produits.prix) AS total_depense
FROM commands
JOIN clients ON commands.client_id = clients.id
JOIN produits ON commands.produit_id = produits.id
GROUP BY client.nom
ORDER BY total_depense DESC