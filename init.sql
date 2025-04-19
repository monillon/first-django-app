-- Création du schéma
CREATE SCHEMA IF NOT EXISTS mon_stock;

-- Création de la table dans le schéma
CREATE TABLE IF NOT EXISTS mon_stock.objet (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom TEXT NOT NULL,
    stock INTEGER NOT NULL DEFAULT 0
);

-- peupler la base
INSERT INTO mon_stock.objet (nom, stock)
VALUES 
    ('Chaise', 10),
    ('Table', 6),
    ('Canape', 3);