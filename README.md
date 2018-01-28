# COL362-Assignment-1

./insert_tuples/student.sql took 105 minutes
./insert_tuples/course.sql took 103 minutes
./insert_tuples/registersk .sql took 103 minutes


## Notes for running JDBC

1. Download [JDBC](https://jdbc.postgresql.org/download/postgresql-42.2.0.jre6.jar) driver.
2. Copy the jar file in `/lib/` folder on your system(*root access required*).
3. Change to appropriate folder: `cd Part2/JDBC`
4. Change the global parameters as per your system.
5. For compiling, type in Unix Shell: `javac jdbc_populate.java ` 
6. For executing, type : `java -cp .:/lib/postgresql-42.2.0.jre6.jar jdbc_populate`



## Report for Part 1

# 	design.sql

In this part, We had to make a database using Postgres SQL Language which had three main tables(entities) :-
1. Student - The names and the unique identifiers of the students.
2. Course - The names and unique identifiers of the courses.
3. Teacher - The names and unique identifiers of the teachers.

These can have any string identifier and these identifiers are the primary keys for these tables. 

There is another table for section which is a weak entity and its existence depends on the course. It can only have the values - 'A', 'B', 'C', 'D' for each course. Deleting a course deletes all the sections associated to it too.

There are three tables corresponding to the relations :-
1. registers - Every student registers for courses defined by the student_id and course_id
2. teaches - Every course is taught by a teacher defined by the teacher_id and course_id
3. has - Every course can have upto 4 sections defined by the course_id and section_id

Any updations or deletions in the main tables have to be transmitted to all the other tables, hence, the use of "on update cascade on delete cascade".

"not null" function has been used to specify that some of these cant have null values.
"references" function creates the link between the main tables and the tables corresponding to relations.

"unique" has been used to mantain unique entries to the table wherever needed and a check statement keeps the sections limited to the four values.  

# test_queries.sql

This part demonstrates the use of the design of the database made by us in the design.sql file.

It includes the following queries :-
1. Insert entries into the tables.
2. Select entries from the tables (Also used for viewing the tables).
3. Updating an entry in the table.
4. Deleting an entry from the table.
5. truncate the table - it empties the tables in the database.


## Data for Part 2 Report 

Use COPY to load all the rows in one command, instead of using a series of INSERT commands. The COPY command is optimized for loading large numbers of rows; it is less flexible than INSERT, but incurs significantly less overhead for large data loads. Since COPY is a single command, there is no need to disable autocommit if you use this method to populate a table.