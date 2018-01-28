INSERT INTO student(student_id,name) VALUES ('cs1150667', 'Prakhar Kumar');
INSERT INTO student(student_id,name) VALUES ('me1150668', 'Pranjal Singh');
INSERT INTO student(student_id,name) VALUES ('cs1150226', 'Divgian Singh Sidhu'), ('cs1150435','Ankesh Guptaa');
SELECT * FROM student;
UPDATE student SET name = 'Ankesh Gupta' WHERE student_id = 'cs1150435';
SELECT * FROM student;

SELECT * FROM student WHERE student_id LIKE 'cs%';
SELECT * FROM student ORDER BY name ASC;

INSERT INTO course(course_id,name) VALUES ('col380','parallel');
INSERT INTO course(course_id,name) VALUES ('col331','os');

INSERT INTO registers(course_id,student_id) VALUES ('col380','me1150668');
INSERT INTO registers(course_id,student_id) VALUES ('col331','cs1150667'); --Error : Course not found
-- INSERT INTO registers(course_id,student_id) VALUES ('col331','os'); --Error:
INSERT INTO registers(course_id,student_id) VALUES ('col380',NULL); --Error: NULL not allowed

DELETE FROM student WHERE student_id='cs1150667';

SELECT * FROM registers;
SELECT * FROM teaches;
SELECT * FROM section;

CREATE VIEW stu_ids AS SELECT student_id FROM student;
SELECT * FROM stu_ids;



test for registers relation

INSERT INTO student(student_id,name) VALUES ('cs1150667', ' ');
INSERT INTO student(student_id,name) VALUES ('cs1150668', ' ');

INSERT INTO course(course_id,name) VALUES ('c1', ' ');
INSERT INTO course(course_id,name) VALUES ('c2', ' ');

INSERT INTO registers(student_id,course_id) VALUES ('6', 'c1');--should fail
INSERT INTO registers(student_id,course_id) VALUES ('cs1150667', 'c1');
INSERT INTO registers(student_id,course_id) VALUES ('cs1150667', 'c2');


INSERT INTO registers(student_id,course_id) VALUES ('cs1150667', 'c1');--should fail
INSERT INTO registers(student_id,course_id) VALUES ('cs1150667', null);--should fail
INSERT INTO registers(student_id,course_id) VALUES (null, 'c1');--should fail


truncate table course; -- Error: Table "section" references "course" so cannot truncate a table referenced in a foreign key constraint.
truncate table course cascade;
truncate table student cascade;

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
