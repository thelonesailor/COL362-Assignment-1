#!/bin/bash

student='student.csv'
course='course.csv'
registers='registers.csv'
rm -rf $student
rm -rf $course
rm -rf $registers
touch $student
touch $course
touch $registers

for (( p=1; p <= 500000; p++ ))
do
    echo "$p,sss" >> $student;
done;
for (( p=1; p <= 500000; p++ ))
do
    echo "$p,ccc" >> $course;
done;
for (( p=1; p <= 500000; p++ ))
do
    echo "$p,$p" >> $registers;
done;
