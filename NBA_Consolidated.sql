CREATE DATABASE nba_players;
USE nba_players;

DROP TABLE player_week;
create table player_week(	
	id INT,
	player_name varchar(30) not null,
    age int,
    height varchar(30) not null,
    team varchar(30) not null,
    real_value int,
	PRIMARY KEY (id)
    );

-- Create and use customer_db

DROP TABLE player_birth_date;
-- Create tables for raw data to be loaded into
CREATE TABLE player_birth_date(
id INTEGER PRIMARY KEY,
player_name TEXT,
birth_date DATETIME, 
height TEXT,
name_height TEXT,
zodiac TEXT
);


SELECT  name_height, count(player_name)
FROM player_birth_date
GROUP BY name_height 
having count(player_name) > 1;

drop view Zodiac_Player_of_the_Week;
CREATE VIEW Zodiac_Player_of_the_Week AS
SELECT player_birth_date.zodiac, sum(player_week.real_value) as '# of Player of the Week Award'
FROM player_week
INNER JOIN player_birth_date ON player_birth_date.player_name=player_week.player_name
GROUP BY zodiac
ORDER BY sum(player_week.real_value) desc;


select * from Zodiac_Player_of_the_Week;


select player_name, sum(real_value) as '# of Player of the Week Award'
FROM player_week
GROUP BY player_name
