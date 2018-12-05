-- Create and use customer_db
CREATE DATABASE nba_players;
USE nba_players;

DROP TABLE player_birth_date;
-- Create tables for raw data to be loaded into
CREATE TABLE player_birth_date(
id INTEGER PRIMARY KEY,
player_name TEXT,
birth_date DATETIME, 
height TEXT,
name_height TEXT
);

SELECT  name_height, count(player_name)
FROM player_birth_date
GROUP BY name_height 
having count(player_name) > 1;