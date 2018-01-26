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