# Board_games_database

The database stores information about board games, their categories, authors and publishers. Moreover there are also tables that contain user's information, their board games rating and the games that they own. 

Exemplary queries:

Select board games and their authors:
SELECT
board_games.title AS "Tytuł",
creators.creator_name AS "Twórca"
FROM
board_games
INNER JOIN
creators
ON
board_games.creator_id = creators.creator_id;

Sort board games by category:
SELECT
board_games.title AS "Tytuł",
creators.creator_name AS "Twórca",
publishers.publisher_name AS "Wydawca",
board_games.year_published AS "Data wydania",
GROUP_CONCAT(categories.category_name) AS "Kategoria"
FROM
board_games
INNER JOIN
creators ON board_games.creator_id = creators.creator_id
INNER JOIN
publishers ON board_games.publisher_id = publishers.publisher_id
INNER JOIN
game_categories ON board_games.board_game_id =
game_categories.board_game_id
INNER JOIN
categories ON game_categories.category_id = categories.category_id
GROUP BY
board_games.title
ORDER BY
categories.category_name;

Count board games that belongs to particular category:
SET @requested_category_id = 6;
SELECT
COUNT(DISTINCT board_games.title) AS "Ilosc gier podanej kategorii"
FROM
board_games
INNER JOIN
game_categories ON board_games.board_game_id =
game_categories.board_game_id
INNER JOIN
categories ON game_categories.category_id = categories.category_id
WHERE
categories.category_id = @requested_category_id;

Select board games that are available for partcicular 
SET @requested_player_count = 5;
SELECT
bg.title AS "Tytuł",
c.creator_name AS "Twórca",
p.publisher_name AS "Wydawca",
CONCAT(bg.average_min_play_time, "-", bg.average_max_play_time) AS " ́Sredni
czas gry",
CONCAT(bg.min_player_count, "-", bg.max_player_count) AS "Ilo ́s ́c graczy",
bg.recommended_age AS "Rekomendowany wiek",
bg.year_published AS "Data wydania"
FROM
games_owned go
JOIN
board_games bg ON go.board_game_id = bg.board_game_id
JOIN
creators c ON bg.creator_id = c.creator_id
JOIN
publishers p ON bg.publisher_id = p.publisher_id
WHERE
bg.min_player_count <= @requested_player_count
AND @requested_player_count <= bg.max_player_count
GROUP BY
go.board_game_id
ORDER BY bg.title ASC;

SET @EMAIL = "user_2@user.com";
SET @new_email = "new_email@user.com";
UPDATE
users
SET
users.email = @new_email
WHERE
users.email = @EMAIL;


