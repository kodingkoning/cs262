-- Queries for lab 8

-- 8.1a: Retrieve a list of all the games, ordered by date with the most recent game coming first
-- SELECT ID, time, completed
-- FROM Game
-- ORDER BY time DESC;

-- 8.1b: Retrieve all the games that occurred in the past week.
-- SELECT *
-- FROM Game
-- WHERE time > (NOW() - interval '7 days');

-- 8.1c: Retrieve a list of players who have (non-NULL) names.
-- SELECT name
-- FROM Player
-- WHERE name is not NULL;

-- 8.1d: Retrieve a list of IDs for players who have some game score larger than 2000.
-- SELECT DISTINCT playerID
-- FROM PlayerGame
-- WHERE score > 2000;

-- 8.1e: Retrieve a list of players who have GMail accounts.
-- SELECT *
-- FROM Player
-- WHERE emailAddress LIKE '%gmail%';
