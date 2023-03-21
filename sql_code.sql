-- How many olympics games have been held?
SELECT COUNT(DISTINCT(Games)) AS olympics_games_held
FROM athlete_events;

-- List down all Olympics games held so far
SELECT DISTINCT(Year), Season, City
FROM athlete_events
ORDER BY Year DESC;

-- Mention the total no of nations who participated in each olympics game?
SELECT Games, (COUNT(DISTINCT(athlete_events.NOC))) AS total_countries
FROM athlete_events
JOIN noc_regions ON athlete_events.NOC = noc_regions.NOC
GROUP BY Games
ORDER BY total_countries;

-- Which year saw the highest and lowest no of countries participating in olympics
SELECT Games, (COUNT(DISTINCT(athlete_events.NOC))) AS total_countries
FROM athlete_events
JOIN noc_regions ON athlete_events.NOC = noc_regions.NOC
GROUP BY Games
HAVING MAX(total_countries);

SELECT *
FROM athlete_events
LIMIT 10;
