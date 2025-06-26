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

RENAME TABLE travel_package TO travel_packages;

SELECT * FROM travel_packages;

INSERT INTO travel_packages (name, photo, price, description, type) VALUES 
("Évasion Caraïbe", "https://images.unsplash.com/photo-1651421479936-e24edc3e3143", 1299.99, "Découvrez les plages de sable blanc de Cartagena et son centre historique classé à l’UNESCO. Idéal de décembre à avril.", "Plages & Détente"),
("Printemps Éternel", "https://images.unsplash.com/photo-1599543359278-76676745f1e9", 1149.50, "Explorez Medellín, la ville de l’éternel printemps, avec ses jardins, son métro aérien et ses quartiers vibrants.", "Villes & Culture"),
("Rythmes d'Or", "https://images.unsplash.com/photo-1610551102204-7ce3859e2e6b", 1190.00, "Voyagez à Cali durant le Festival Petronio Álvarez en août et vibrez au rythme de la musique du Pacifique colombien.", "Traditions & Festivals"),
("Andes Mystiques", "https://plus.unsplash.com/premium_photo-1697729999190-4cd4ae78be26", 1075.25, "Découvrez Bogotá, capitale culturelle perchée dans les Andes. Parfait pour les amateurs de musées et gastronomie.", "Villes & Culture"),
("Jungle Authentique", "https://plus.unsplash.com/premium_photo-1724654643848-ab19f6ec1c79", 1345.00, "Aventurez-vous à Leticia en Amazonie pour une immersion dans la biodiversité colombienne. Saison idéale : juin à novembre.", "Nature & Aventure"),
("Café Douceur", "https://images.unsplash.com/photo-1611653758839-a0a158d219b7", 1225.75, "Visitez la région du café autour d'Armenia, avec ses fincas typiques, ses montagnes verdoyantes et ses villages colorés.", "Traditions & Festivals");
