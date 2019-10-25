-- Queries for lab 8

-- 8.2a: Retrieve all “The King”’s game scores in decreasing order.
-- SELECT PlayerGame.score
-- FROM Player, PlayerGame
-- WHERE Player.ID = PlayerGame.playerID
-- AND Player.name = 'The King'
-- ORDER BY PlayerGame.score DESC;

-- 8.2b: Retrieve the name of the winner of the game played on 2006-06-28 13:20:00.
-- SELECT Player.name AS winner
-- FROM Game, Player, PlayerGame
-- WHERE Game.ID = PlayerGame.gameID
-- AND Player.ID = PlayerGame.playerID
-- AND PlayerGame.score = (
--   SELECT MAX(PlayerGame.score)
--   FROM PlayerGame, Game
--   WHERE Game.completed = TRUE
--   AND PlayerGame.gameID = Game.ID
--   AND Game.time = '2006-06-28 13:20:00'
-- );

-- 8.2c: So what does that P1.ID < P2.ID clause do in the last example query?
-- Comparing the two IDs makes sure that we are getting unique players. If you don't check that the ids are different, then it will give you all the pairs that are actually the same player (with the same id). If you don't check that one is less than the other, it will give each of the duplicate names twice (ex. once when id 0 is P1.ID and id 1 is P2.ID and again when id 0 is P2.ID and P1.ID).

-- 8.3d: The query that joined the Player table to itself seems rather contrived. Can you think of a realistic situation in which you’d want to join a table to itself?
-- If you're looking for duplicate information, if a table is related to itself (like if a Part has a sub-Part), if you're creating a social networking database and people have connections, so you want to look for who is the mother of who (assuming people can only have one mother and we store this in the Person table rather than a join table).
