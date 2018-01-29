# COL362-Assignment-1


## Notes for running JDBC

1. Download [JDBC](https://jdbc.postgresql.org/download/postgresql-42.2.0.jre6.jar) driver.
2. Copy the jar file in `/lib/` folder on your system(*root access required*).
3. Change to appropriate folder: `cd Part2/JDBC`
4. Change the global parameters as per your system.
5. For compiling, type in Unix Shell: `javac jdbc_populate.java `
6. For executing, type : `java -cp .:/lib/postgresql-42.2.0.jre6.jar jdbc_populate`


## Notes for running Bulk Load

1. Open postgres and make the database using `psql -d <database_name> -f design.sql`
2. Change directory to `bulk_load` and run `./fill.sh` , this will create 3 files :
```
student.csv
course.csv
registers.csv
```
3. Put the command `copy student from   '<absolute path to student.csv>'   csv header;` in `student.sql`
4. Put the command `copy course from   '<absolute path to course.csv>'   csv header;` in `course.sql`
5. Put the command `copy registers from   '<absolute path to registers.csv>'   csv header;` in `registers.sql`
6. Now run the following commands for insert and get the time
```
time psql -d <database_name> -f student.sql
time psql -d <database_name> -f course.sql
time psql -d <database_name> -f registers.sql
```

## Notes for running Insert Statements

1. Change directory to `insert_tuples` and run `./fill.sh` , this will create 3 files :
```
student.sql
course.sql
registers.sql
```
2. Now run the following commands for insert and get the time
```
time psql -d <database_name> -f student.sql
time psql -d <database_name> -f course.sql
time psql -d <database_name> -f registers.sql
```
