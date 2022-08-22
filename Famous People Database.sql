CREATE TABLE movies(
    id INTEGER PRIMARY KEY,
    name TEXT,
    duration_min NUMERIC,
    rating NUMERIC,
    lead_role TEXT,
    support_role TEXT);
    
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("End of Watch", 109, 7.6, "Jake Gyllenhaal", "Anna Kendrick");
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("Lucy", 90, 6.4, "Scarlett Johansson", "Morgan Freeman");
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("Drive", 100, 7.8, "Ryan Gosling", "Carey Mulligan");
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("The Circle", 110, 5.3, "Emma Watson", "Tom Hanks");
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("Noah", 138, 5.8, "Russel Crowe", "Jennifer Connelly");
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("Black Swan", 107, 8.0, "Natalie Portman", "Mila Kunis");
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("The Place Beyond the Pines", 140, 7.3, "Ryan Gosling", "Eva Mendes");
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("Blonde", 165, NULL, "Ana de Armas", "Adrien Brody");
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("Green Latern", 123, 5.5, "Ryan Reynolds", "Blake Lively");
INSERT INTO movies(name, duration_min, rating, lead_role, support_role) VALUES("Bumblebee", 114, 6.7, "Hailee Steinfeld", "John Cena");

CREATE TABLE movie_stars(
    id INTEGER PRIMARY KEY,
    full_name TEXT,
    birthday TEXT,
    spouse_name TEXT
);

INSERT INTO movie_stars(full_name, birthday, spouse_name) VALUES("Morgan Freeman", "June 1, 1937", NULL);
INSERT INTO movie_stars(full_name, birthday, spouse_name) VALUES("Blake Lively","August 25, 1987", "Ryan Reynolds");
INSERT INTO movie_stars(full_name, birthday, spouse_name) VALUES("Tom Hanks", "July 9, 1956", "Rita Wilson");
INSERT INTO movie_stars(full_name, birthday, spouse_name) VALUES("Hailee Steinfeld", "December 11, 1996", NULL);
INSERT INTO movie_stars(full_name, birthday, spouse_name) VALUES("Ryan Gosling", "November 12, 1980", "Eva Mendes");
INSERT INTO movie_stars(full_name, birthday, spouse_name) VALUES("Mila Kunis", "August 14, 1983", "Ashton Kutcher");

SELECT * FROM movies;

SELECT * FROM movie_stars;

/*Inner join*/

SELECT movies.name, movies.support_role, movie_stars.spouse_name
FROM movies
INNER JOIN movie_stars
ON movie_stars.full_name = movies.support_role;

/*Left join*/

SELECT *
FROM movies
LEFT JOIN movie_stars
ON movie_stars.spouse_name = movies.lead_role
OR movie_stars.spouse_name = movies.support_role;

/*Cross join*/

SELECT *
FROM movies
CROSS JOIN movie_stars
ON movie_stars.spouse_name = movies.support_role
OR movie_stars.spouse_name = movies.lead_role
