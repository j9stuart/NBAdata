# NBAdata

ETL Project


Project Title: 
NBA Zodiac Sign vs. Player of the Week

Team Members

Names:
Cephra Stuart
Mauricio Bergamaschi


Project Week Timeline

Date
Subject
S 12/1
Project/ ETL Intro; project, its goals, and requirements, identify feasible projects, submit a project proposal (Timeline & Work Agreement)
T 12/4
Project Work - (i) define dataset to be used, (ii) identify common information to be correlated between datasets, (iii) clean up data
TH 12/6
Complete Project Work, Prepare Report - (i) create SQL datatables (ii) join SQL DBs, (iii) identify possible insights.

 Project Report

The project consisted in analysing NBA players awarded player of the week and their zodiac signs from 1985 to 2018. The goal was to see whether or not there is  any correlation between these 2 variables: (i) player of the week award and (ii) zodiac sign.
To conduct the above mentioned analysis, we gathered data from Kaggle, more specifically, two .csv files.
While one file had NBA players since 1950 and their birthdates, the other had player of the week awards, but no birth dates.
 There was some cleanup and transformation needed required to conduct this comparison. The NBA player file with birthdates needed to have the birth date  converted into datetime. Additionally, we needed to add a new column that would convert these datetimes into a zodiac sign. We accomplished this by using a the zodiac-sign PyPI library. Lastly, we needed to create a new primary key to identify each player, so we combined each player’s name with their height to create a unique ID for each player make duplication checks.
Once the data had been cleaned, we created an nba_data database and two player tables in mySQL workbench and in Jupyter notebook established a connection with SQL in order to append .csv data into mySQL database for future analysis.
Conclusion:, since 1985 NBA player pertaining to Leo zodiac sign has almost 3 times more player of the week award than Scorpio NBA players.
By conducting a Z-Test we could infer that the null hypothesis has been rejected, thus there is a greater chance of a Leo NBA player to be a awarded player of the week in comparison to a Scorpio NBA player.



Description
URL or Resource Link
1
NBA players since 1950
https://www.kaggle.com/drgilermo/nba-players-stats


2
NBA players of the week
https://www.kaggle.com/jacobbaruch/nba-player-of-the-week


Repo Link

Repo URL
https://github.com/j9stuart/NBAdata