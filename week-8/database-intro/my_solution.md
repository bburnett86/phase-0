1) SELECT * FROM states;

2)SELECT * FROM regions;

3)SELECT state_name,  population FROM states;

4)SELECT state_name,  population FROM states ORDER BY population DESC;

5)SELECT state_name FROM states WHERE region_id = 7;

6)state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

7)SELECT state_name FROM states WHERE population > 1000000 AND population < 1500000;

8)SELECT state_name, region_id FROM states ORDER BY region_id ASC;

9)SELECT region_name FROM regions WHERE region_name LIKE "%central%";

10)SELECT region_name, state_name FROM states JOIN regions ON states.region_id = regions.id ORDER BY region_id ASC;

https://github.com/bburnett86/phase-0/blob/master/week-8/database-intro/screen_shot.png

Reflection:

What are databases for?
  Databases are created to make it easier for programmers to access and organize information based on tables. Because a large part of programming involves drawing information from and adding information to tables databases are crucial in being able to create large programs with many values and run them effectively.
What is a one-to-many relationship?
  A one to many relationship would be something where two things have a value in common, but one is specific and one is general. For example DBC cohorts would be the many, and the specific in our example would be squirrels.
What is a primary key? What is a foreign key? How can you determine which is which?
  A primary key and foreign key are attributes of tables in SQL. Your primary keys would be the columns in your tables, they're primary they're inside that table and we can see them at all times. The foreign keys on the other hand are primaries keys that are used to connect tables. With our earlier example id and region_id were primary keys in their respective tables, but they were used as foreign keys to access the corresponding table.
How can you select information out of a SQL database? What are some general guidelines for that?
  For starters, all of your clauses in your select statement are to be capitalized. If you would like to query all of the columns associated with whatever is being selected you will use SELECT * FROM. My best advice when selecting code from an SQL database is it should read similar to english where all of your verbs are capitalized.