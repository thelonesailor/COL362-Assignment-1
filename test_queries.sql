INSERT INTO student(student_id,name) VALUES ('cs1150667', 'Prakhar Kumar');
INSERT INTO student(student_id,name) VALUES ('me1150668', 'Pranjal Singh');
INSERT INTO course(course_id,name) VALUES ('col380','parallel');
INSERT INTO course(course_id,name) VALUES ('col331','os');

INSERT INTO registers(course_id,student_id) VALUES ('col380','me1150668');
INSERT INTO registers(course_id,student_id) VALUES ('col331','cs1150667'); --Error : Course not found
-- INSERT INTO registers(course_id,student_id) VALUES ('col331','os'); --Error:
INSERT INTO registers(course_id,student_id) VALUES ('col380',NULL); --Error: NULL not allowed

DELETE FROM student
WHERE student_id='cs1150667';

SELECT * FROM registers;

--test for registers relation

-- INSERT INTO student(student_id,name) VALUES ('cs1150667', ' ');
-- INSERT INTO student(student_id,name) VALUES ('cs1150668', ' ');
--
-- INSERT INTO course(course_id,name) VALUES ('c1', ' ');
-- INSERT INTO course(course_id,name) VALUES ('c2', ' ');
--
-- INSERT INTO registers(student_id,course_id) VALUES ('6', 'c1');--should fail
-- INSERT INTO registers(student_id,course_id) VALUES ('cs1150667', 'c1');
-- INSERT INTO registers(student_id,course_id) VALUES ('cs1150667', 'c2');
--
--
-- INSERT INTO registers(student_id,course_id) VALUES ('cs1150667', 'c1');--should fail
-- INSERT INTO registers(student_id,course_id) VALUES ('cs1150667', null);--should fail
-- INSERT INTO registers(student_id,course_id) VALUES (null, 'c1');--should fail
--
--
-- truncate table course;
-- truncate table student;

--test for teaches relation

-- INSERT INTO teacher(teacher_id,name) VALUES ('t1', ' ');
-- INSERT INTO teacher(teacher_id,name) VALUES ('t2', ' ');
--
-- INSERT INTO course(course_id,name) VALUES ('c1', ' ');
-- INSERT INTO course(course_id,name) VALUES ('c2', ' ');
--
-- INSERT INTO teaches(teacher_id,course_id) VALUES ('t1', 'c3');
-- INSERT INTO teaches(teacher_id) VALUES ('t1');--should fail
--

--test for section relation
INSERT INTO course(course_id,name) VALUES ('c1', ' ');
INSERT INTO course(course_id,name) VALUES ('c2', ' ');

INSERT INTO section(section_number,course_id) VALUES ('A', 'c1');
INSERT INTO section(section_number,course_id) VALUES ('A', 'c2');--should fail
    --should give error because every section should have exaclty one course
