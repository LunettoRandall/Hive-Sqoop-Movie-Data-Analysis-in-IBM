# 3 HiveQL commands to see if the tables are imported to Hive from MySQL DB

show tables;

select * from movie limit 3;
select * from users limit 3;
select * from genre limit 3;
select * from moviegenre limit 3;
select * from movierating limit 3;
select * from occupation limit 3;


# Select userid who rated movies, the number of movies rated by the user, and their average

rating by the user from movierating table using group by
SELECT userid, COUNT(userid),AVG(rating) FROM movierating GROUP BY userid LIMIT 5;


# Create an external table named user_rating

CREATE EXTERNAL TABLE USER_RATING (userid INT, numratings INT, avgrating FLOAT);


# Insert the data selected from movierating to user_rating table.

INSERT OVERWRITE TABLE user_rating SELECT userid,COUNT(userid),AVG(rating) FROM movierating GROUP BY userid;


# Select some data from user_rating table.

SELECT * from user_rating LIMIT 5; 


# List the latest known movie in the database.

SELECT * FROM movie SORT BY year DESC LIMIT 1; 


# List the name and year of all movies rated greater than 4 (movies with movierating data).

SELECT DISTINCT name, year, rating FROM movie LEFT OUTER JOIN movierating ON movie.id = movierating.movieid WHERE rating > 4 LIMIT 10;


# Create newmovie table by referring to the movie table with the following two new fields. 
# Join movie and movierating table and then its data should be inserted to newmovie table
# numratings --- the number Of ratings for the movie , avgrating --- The average rating for the movie

CREATE TABLE newmovie (id INT, name STRING, year INT, numratings INT, avgrating FLOAT);


# Insert data from movie and movierating tables into newmovie table. Don't need to add any movies with no rating.

INSERT OVERWRITE TABLE newmovie SELECT m.id, m.name, m.year, COUNT(1), AVG(mr.rating) FROM movie m, movierating mr WHERE m.id = mr.movieid GROUP BY m.id, m.name, m.year;


# 10 highest rated movies by referring to the newmovie

SELECT * FROM newmovie ORDER BY avgrating DESC LIMIT 10;

















