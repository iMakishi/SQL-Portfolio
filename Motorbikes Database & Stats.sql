--Create a motorbikes database

CREATE TABLE motorbikes (id INTEGER PRIMARY KEY, manufacturer TEXT, model TEXT, brand_type TEXT, price NUMERIC);

INSERT INTO motorbikes VALUES (1, "BMW", "M1000 RR", "Sport", 50000);
INSERT INTO motorbikes VALUES (2, "BMW", "S1000 RR", "Sport", 55000);
INSERT INTO motorbikes VALUES (3, "BMW", "R1250 RT", "Tour", 40000);
INSERT INTO motorbikes VALUES (4, "BMW", "S1000 R", "Roadster", 35000);
INSERT INTO motorbikes VALUES (5, "BMW", "R1250 GS", "Adventure", 45000);

INSERT INTO motorbikes VALUES (6, "KTM", "1290 Super Duke R Evo", "Naked", 48000);
INSERT INTO motorbikes VALUES (7, "KTM", "1290 Super Duke R", "Naked", 48000);
INSERT INTO motorbikes VALUES (8, "KTM", "1290 Super Adventure S", "Travel", 45000);
INSERT INTO motorbikes VALUES (9, "KTM", "1290 Super Duke GT", "Sport Tourer", 40000);
INSERT INTO motorbikes VALUES (10, "KTM", "RC 8C", "Supersport", 55000);

INSERT INTO motorbikes VALUES (11, "Ducati", "Streetfighter V2", "Naked", 17000);
INSERT INTO motorbikes VALUES (12, "Ducati", "Streetfighter V4 SP", "Naked", 33000);
INSERT INTO motorbikes VALUES (13, "Ducati", "XDiavel S", "Naked", 25000);
INSERT INTO motorbikes VALUES (14, "Ducati", "Panigale V2", "Supersport", 19000);
INSERT INTO motorbikes VALUES (15, "Ducati", "Superleggera V2", "Supersport", 100000);
INSERT INTO motorbikes VALUES (16, "Ducati", "Panigale V4 SP2", "Supersport", 39000);

--Display the database order by price(descending)
SELECT * FROM motorbikes
ORDER BY price desc;

--Display the average price on the database
SELECT AVG(price) from motorbikes;

--Display the maximum price on the database
SELECT MAX(price) FROM motorbikes;
