-- Explore cleaned dataset
SELECT * FROM netflix_stag1;

-- Total number of movies vs TV shows
SELECT `type`, COUNT(*) AS count
FROM netflix_stag1
GROUP BY `type`;

-- Top 5 most common genres
SELECT listed_in, COUNT(*) AS count
FROM netflix_stag1
GROUP BY listed_in
ORDER BY count DESC
LIMIT 5;

-- All countries by content volume
SELECT country, COUNT(*) AS count
FROM netflix_stag1
GROUP BY country;

-- Top 5 countries producing content
SELECT country, COUNT(*) AS count
FROM netflix_stag1
GROUP BY country
ORDER BY count DESC
LIMIT 5;
