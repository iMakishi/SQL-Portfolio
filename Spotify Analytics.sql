/*Based on Spotify data downloaded from Kaggle*/

CREATE TABLE BIT_DB.Spotifydata (
id integer PRIMARY KEY,
artist_name varchar NOT NULL,
track_name varchar NOT NULL,
track_id varchar NOT NULL,
popularity integer NOT NULL,
danceability decimal(4,3) NOT NULL,
energy decimal(4,3) NOT NULL,
key integer NOT NULL,
loudness decimal(5,3) NOT NULL,
mode integer NOT NULL,
speechiness decimal(5,4) NOT NULL,
acousticness decimal(6,5) NOT NULL,
instrumentalness text NOT NULL,
liveness decimal(5,4) NOT NULL,
valence decimal(4,3) NOT NULL,
tempo decimal(6,3) NOT NULL,
duration_ms integer NOT NULL,
time_signature integer NOT NULL 
)

SELECT * FROM BIT_DB.Spotifydata

/*TOP 10 Popular songs*/

SELECT track_name, artist_name
FROM BIT_DB.Spotifydata
ORDER BY popularity desc
LIMIT 10;

/*All tracks by Olivia Rodrigo*/

SELECT *
FROM BIT_DB.Spotifydata
WHERE artist_name = 'Olivia Rodrigo';

/*Loudest track*/

SELECT track_name, artist_name, loudness
FROM BIT_DB.Spotifydata
ORDER BY loudness asc
LIMIT 1;

/*Top artists based on popularity*/

WITH CTE_PopularityAVG AS (
    SELECT artist_name, AVG(popularity) AS avg_popularity
    FROM Spotifydata
    GROUP BY artist_name
)
SELECT artist_name, avg_popularity, 'Top Star' AS tag
FROM CTE_PopularityAVG
WHERE avg_popularity >= 90
ORDER BY avg_popularity desc;
