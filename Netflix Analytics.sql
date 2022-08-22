-- 1) How many movie titles are there in the database? (movies only, not tv shows)

SELECT COUNT(titles.type)
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" titles
WHERE titles.type = 'Movie';

-- 2) When was the most recent batch of tv shows and/or movies added to the database?

SELECT titles.title, titles.type, max(date(titles.date_added))
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" titles
WHERE titles.type = 'TV Show';

-- 3) List all the movies and tv shows in alphabetical order.

SELECT titles.title, titles.type
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" titles
ORDER BY titles.title asc;

-- 4) Who was the Director for the movie Bright Star?

SELECT title, director
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" titles
LEFT JOIN "CharlotteChaze/BreakIntoTech"."netflix_people" people
ON titles.show_id = people.show_id
WHERE titles.title = 'Bright Star';

-- 5) What is the oldest movie in the database and what year was it made?

SELECT title, date_added, release_year
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie'
ORDER BY date_added asc
LIMIT 1;
