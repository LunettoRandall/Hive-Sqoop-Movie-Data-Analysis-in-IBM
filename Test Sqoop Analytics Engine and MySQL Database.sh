# Connect to MySQL DB (ClearDB) and review database tables to be loaded into Hadoop

mysql -h bdaicdb.xxx.com -P 3306 -u hadoop -pcisbigdata

# In MySQL shell

show databases;

use movielens;

show tables;

# Review the structure and contents of the movie table with SQL

DESCRIBE movie;

SELECT * FROM movie LIMIT 5;
 

