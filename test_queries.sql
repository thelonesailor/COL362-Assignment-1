INSERT INTO student(student_id,name) VALUES ('cs1150667', 'Prakhar Kumar');
INSERT INTO student(student_id,name) VALUES ('me1150668', 'Pranjal Singh');
INSERT INTO course(course_id,name) VALUES ('col380','parallel');
INSERT INTO registers(course_id,student_id) VALUES ('col380','cs1150667');
INSERT INTO registers(course_id,student_id) VALUES ('col331','cs1150667'); --Error : Course not found
INSERT INTO registers(course_id,student_id) VALUES ('col331','os'); --Error: 
INSERT INTO registers(course_id,student_id) VALUES ('col380',NULL); --Error: NULL not allowed

SELECT * FROM student;
