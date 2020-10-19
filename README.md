# Hive-Sqoop-Movie-Data-Analysis-in-IBM

# Objective
Use Sqoop to collect data from MySQL DB and to store the data to HDFS. Process various insights while analyzing the data using Hive

# Prerequisites
Sign up IBM account for IBM Cloud (Bluemix) and Launch an Analytics Engines
You must have chosen “AEx Spark and Hive” when you create your Analytics Engines
You have to select Number of compute nodes as 1 for your Analytics Engine
At Analytics Engine, add service credential as Manager

# Sqoop Imports
We use the MySQL database movielens, derived from the MovieLens project at University of Minnesota.

The database consists of several related tables, but we will import only two of these: movie,
which contains about 3,900 movies; and movierating, which has about 1,000,000 ratings of
those movies.

# Test Sqoop of Analytics Engines
You have to remotely access to your Analytics Engines account in the IBM cloud using ssh.
