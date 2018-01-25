#!/bin/bash

student='student.sql'
course='course.sql'
registers='registers.sql'
rm -rf $student
rm -rf $course
rm -rf $registers
touch $student
touch $course
touch $registers

for (( p=1; p <= 500000; p++ ))
do
    echo "insert into student(student_id,name) values('$p',' ');" >> $student;
done;
for (( p=1; p <= 500000; p++ ))
do
    echo "insert into course(course_id,name) values('$p',' ');" >> $course;
done;
for (( p=1; p <= 500000; p++ ))
do
    echo "insert into student(student_id,course_id) values('$p','$p');" >> $registers;
done;
