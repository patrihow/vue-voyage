CREATE DATABASE travel_db_vue;
USE travel_db_vue;

CREATE TABLE travel_package (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT NOT NULL,
    type VARCHAR(100) NOT NULL
);

INSERT INTO travel_package (name, photo, price, description, type) VALUES 
('Séjour à Rome', 'https://i.imgur.com/04muY7O.jpeg', 499.99, 'Un séjour inoubliable dans la ville éternelle.', 'Culture'),
('Aventure en Amazonie', 'https://i.imgur.com/6egN0kr.jpeg', 799.99, 'Explorez la jungle amazonienne et sa biodiversité.', 'Aventure'),
('Plage à Cancun', 'https://i.imgur.com/BKccbhw.jpeg', 599.99, 'Détendez-vous sur les plages de sable blanc de Cancun.', 'Plage'),
('Gastronomie à Paris', 'https://i.imgur.com/p5Tw7w0.jpeg', 399.99, 'Découvrez la cuisine française à travers des cours de cuisine.', 'Gastronomie'),
('Safari en Afrique', 'https://i.imgur.com/CR5ooMN.jpeg', 1299.99, 'Vivez une expérience unique en observant la faune sauvage.', 'Aventure'),
('Croisière en Méditerranée', 'https://i.imgur.com/TFOr5QW.jpeg', 899.99, 'Explorez les plus belles îles de la Méditerranée.', 'Plage'),
('Culture à Kyoto', 'https://i.imgur.com/JphzM3o.jpeg', 699.99, 'Plongez dans la culture japonaise à Kyoto.', 'Culture'),
('Randonnée dans les Alpes', 'https://i.imgur.com/A13ozD9.jpeg', 499.99, 'Profitez de la nature et des paysages alpins.', 'Aventure'),
('Séjour à Barcelone', 'https://i.imgur.com/fnFsGdq.jpeg', 549.99, 'Découvrez l\'architecture et la culture de Barcelone.', 'Culture'),
('Détente à Bali', 'https://i.imgur.com/dKsBgOc.jpeg', 799.99, 'Un séjour relaxant sur l\'île de Bali.', 'Plage'),
('Aventure en Islande', 'https://i.imgur.com/JP6YN8h.jpeg', 1099.99, 'Explorez les paysages uniques d\'Islande.', 'Aventure'),
('Visite de New York', 'https://i.imgur.com/oFhu4dT.jpeg', 599.99, 'Découvrez la ville qui ne dort jamais.', 'Culture'),
('Séjour à Santorin', 'https://i.imgur.com/R8zM4IE.jpeg', 799.99, 'Profitez des magnifiques couchers de soleil à Santorin.', 'Plage');

SELECT * FROM travel_package;