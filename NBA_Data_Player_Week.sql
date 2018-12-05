CREATE DATABASE NBA_ETL_Project_db;
-- using tables --
use NBA_ETL_Project_db;


create table player_week(	
	id INT,
	Player varchar(30) not null,
    Age int,
    Height varchar(30) not null,
    Real_value int,
	PRIMARY KEY (id)
    );

create table player_data(	
	id INT AUTO_INCREMENT NOT NULL,
	Player varchar(30) not null,
    Age int,
    Real_value int,
    PRIMARY KEY (id)
    );

select * from player_week